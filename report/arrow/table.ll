inline.NumInlined: 2891
inline.NumDeleted: 1224
begin_hunk_0_@_ZN5arrow18PrettyPrintOptionsD2Ev:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i3
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !153 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN5arrow21PrettyPrintDelimitersD2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i4
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !61
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #26
  br label %_ZN5arrow21PrettyPrintDelimitersD2Ev.exit9

_ZN5arrow21PrettyPrintDelimitersD2Ev.exit9:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i5
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !153 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow21PrettyPrintDelimitersD2Ev.exit9
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !61
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow21PrettyPrintDelimitersD2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA24_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %1, i64 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA19_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(19) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %1, i64 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA27_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(27) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %1, i64 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA2_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(2) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %1, i64 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA11_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(11) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %1, i64 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA3_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(3) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %1, i64 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = load ptr, ptr %1, align 8, !tbaa !153
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !235
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.i, i64 noundef %i.k) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

declare void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow17ConcatenateTablesERKSt6vectorISt10shared_ptrINS_5TableEESaIS3_EENS_24ConcatenateTablesOptionsEPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %6 = alloca %"class.std::vector.85", align 8    ; 17 uses
  %7 = alloca %"class.std::vector.90", align 8    ; 14 uses
  %8 = alloca %"class.arrow::Result.96", align 8  ; 13 uses
  %9 = alloca %"struct.arrow::Field::MergeOptions", align 1 ; 2 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %11 = alloca %"class.arrow::Result", align 8    ; 10 uses
  %12 = alloca %"class.std::shared_ptr", align 16 ; 8 uses
  %i.a = alloca i64, align 8                      ; 9 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::shared_ptr", align 8  ; 10 uses
  %17 = alloca %"class.std::vector.13", align 8   ; 10 uses
  %18 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %19 = alloca %"class.std::shared_ptr.49", align 8 ; 6 uses
  %20 = alloca %"class.std::shared_ptr", align 8  ; 4 uses
  %21 = alloca %"class.std::vector.13", align 8   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !307  ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !310    ; 6 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 5 uses
  %i.h = icmp eq ptr %i.c, %i.d
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(29) @.str.18)
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #27
  %i.i = load ptr, ptr %5, align 8, !tbaa !118    ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c, !prof !121

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !130, !range !140, !noundef !141
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #27
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.ey

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.m = load i8, ptr %2, align 1, !tbaa !311, !range !140, !noundef !141
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.f, label %bb.bq

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.o = icmp ugt i64 %i.g, 9223372036854775792
  br i1 %i.o, label %bb.g, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6SchemaEESaIS3_EE11_M_allocateEm.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #24
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6SchemaEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #25
          to label %.lr.ph277 unwind label %bb.h  ; 3 uses

.lr.ph277:                                        ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6SchemaEESaIS3_EE11_M_allocateEm.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.q, ptr %7, align 8, !tbaa !314
  store ptr %i.q, ptr %i.r, align 8, !tbaa !317
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.g
  store ptr %i.s, ptr %i.p, align 8, !tbaa !318
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EE9push_backERKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %9, ptr noundef nonnull align 1 dereferenceable(12) %i.u, i64 12, i1 false)
  invoke void @_ZN5arrow12UnifySchemasERKSt6vectorISt10shared_ptrINS_6SchemaEESaIS3_EENS_5Field12MergeOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.96") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull %9)
          to label %bb.p unwind label %bb.r

bb.h:                                             ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6SchemaEESaIS3_EE11_M_allocateEm.exit.i, %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.i:                                             ; preds = %.lr.ph277, %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EE9push_backERKS3_.exit
  %.sroa.0267.0276 = phi ptr [ %i.d, %.lr.ph277 ], [ %i.ak, %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EE9push_backERKS3_.exit ] ; 2 uses
  %i.w = load ptr, ptr %.sroa.0267.0276, align 8, !tbaa !106 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !317  ; 5 uses
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !318
  %.not.i95 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i95, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !52 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %i.x, align 8, !tbaa !51
  store <2 x ptr> %i.ac, ptr %i.y, align 8, !tbaa !51
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN5arrow6SchemaEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow6SchemaEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ah = atomicrmw volatile add ptr %i.ad, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.t, align 8, !tbaa !317
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow6SchemaEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

_ZSt12construct_atISt10shared_ptrIN5arrow6SchemaEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i: ; preds = %bb.m, %bb.l, %bb.j
  %i.ai = phi ptr [ %i.y, %bb.j ], [ %i.y, %bb.l ], [ %.pre.i, %bb.m ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.aj, ptr %i.t, align 8, !tbaa !317
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EE9push_backERKS3_.exit

bb.n:                                             ; preds = %bb.i
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.x)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EE9push_backERKS3_.exit unwind label %bb.o

_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZSt12construct_atISt10shared_ptrIN5arrow6SchemaEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0267.0276, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.c
  br i1 %i.al, label %._crit_edge, label %bb.i

bb.o:                                             ; preds = %bb.n
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.p:                                             ; preds = %._crit_edge
  %i.an = load ptr, ptr %8, align 8, !tbaa !118
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.s, label %bb.q, !prof !121

bb.q:                                             ; preds = %bb.p
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #27
  br label %bb.ay

bb.r:                                             ; preds = %._crit_edge
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !319)
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !52, !noalias !325
  %i.au = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !51, !noalias !325
  store ptr null, ptr %i.as, align 8, !tbaa !52, !noalias !325
  store <2 x ptr> %i.au, ptr %10, align 16, !tbaa !51, !alias.scope !325
  store ptr null, ptr %i.aq, align 8, !tbaa !35, !noalias !325
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !307 ; 2 uses
  %i.aw = load ptr, ptr %1, align 8, !tbaa !310   ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 4 uses
  %i.ba = icmp ugt i64 %i.az, 9223372036854775792
  br i1 %i.ba, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #24
          to label %.noexc103 unwind label %bb.w

.noexc103:                                        ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !326
  %i.bd = load ptr, ptr %6, align 8, !tbaa !310   ; 5 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.az
  br i1 %i.bh, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5TableEESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5TableEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.u
  %22 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bi = load ptr, ptr %22, align 8, !tbaa !307  ; 3 uses
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.bf
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #25
          to label %.noexc104 unwind label %bb.w  ; 4 uses

.noexc104:                                        ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5TableEESaIS3_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i97 = icmp eq ptr %i.bd, %i.bi
  br i1 %.not10.i.i.i.i97, label %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i98

.lr.ph.i.i.i.i98:                                 ; preds = %.noexc104, %.lr.ph.i.i.i.i98
  %.012.i.i.i.i99 = phi ptr [ %i.bp, %.lr.ph.i.i.i.i98 ], [ %i.bl, %.noexc104 ] ; 2 uses
  %.0911.i.i.i.i100 = phi ptr [ %i.bo, %.lr.ph.i.i.i.i98 ], [ %i.bd, %.noexc104 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i100, i64 8
  %i.bn = load <2 x ptr>, ptr %.0911.i.i.i.i100, align 8, !tbaa !51, !alias.scope !330, !noalias !327
  store ptr null, ptr %i.bm, align 8, !tbaa !52, !alias.scope !330, !noalias !327
  store <2 x ptr> %i.bn, ptr %.012.i.i.i.i99, align 8, !tbaa !51, !alias.scope !327, !noalias !330
  store ptr null, ptr %.0911.i.i.i.i100, align 8, !tbaa !106, !alias.scope !330, !noalias !327
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i100, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i99, i64 16
  %.not.i.i.i.i101 = icmp eq ptr %i.bo, %i.bi
  br i1 %.not.i.i.i.i101, label %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i98, !llvm.loop !332

_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i98, %.noexc104
  %.not.i8.i102 = icmp eq ptr %i.bd, null
  br i1 %.not.i8.i102, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5TableEESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bg) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5TableEESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5TableEESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.v, %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.bl, ptr %6, align 8, !tbaa !310
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store ptr %i.bq, ptr %22, align 8, !tbaa !307
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.az
  store ptr %i.br, ptr %i.bb, align 8, !tbaa !326
  %.pre301 = load ptr, ptr %1, align 8, !tbaa !333
  %.pre302.a = load ptr, ptr %i.b, align 8, !tbaa !333
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE7reserveEm.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5TableEESaIS3_EE13_M_deallocateEPS3_m.exit.i, %bb.u
  %i.bs = phi ptr [ %.pre302.a, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5TableEESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %i.av, %bb.u ] ; 2 uses
  %i.bt = phi ptr [ %.pre301, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5TableEESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %i.aw, %bb.u ] ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.bs
  br i1 %i.bu, label %._crit_edge280, label %.lr.ph279

.lr.ph279:                                        ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE7reserveEm.exit
  %23 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %bb.x

24:                                               ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEED2Ev.exit
  %25 = getelementptr inbounds nuw i8, ptr %.sroa.0263.0278, i64 16 ; 2 uses
  %26 = icmp eq ptr %25, %i.bs
  br i1 %26, label %._crit_edge280.loopexit, label %bb.x

bb.w:                                             ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5TableEESaIS3_EE11_M_allocateEm.exit.i, %bb.t
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.x:                                             ; preds = %.lr.ph279, %24
  %.sroa.0263.0278 = phi ptr [ %i.bt, %.lr.ph279 ], [ %25, %24 ] ; 2 uses
  %i.by = load ptr, ptr %23, align 8, !tbaa !307  ; 3 uses
  %i.bz = load ptr, ptr %i.bb, align 8, !tbaa !326
  %.not.i105 = icmp eq ptr %i.by, %i.bz
  br i1 %.not.i105, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i8 0, i64 16, i1 false)
  %i.ca = load ptr, ptr %23, align 8, !tbaa !307
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store ptr %i.cb, ptr %23, align 8, !tbaa !307
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit

bb.z:                                             ; preds = %bb.x
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.by)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit unwind label %bb.ac

_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit: ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  invoke void @_ZN5arrow20PromoteTableToSchemaERKSt10shared_ptrINS_5TableEERKS0_INS_6SchemaEEPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0263.0278, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %3)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit
  %i.cc = load ptr, ptr %11, align 8, !tbaa !118
  %i.cd = icmp eq ptr %i.cc, null                 ; 3 uses
  br i1 %i.cd, label %bb.ae, label %bb.ab, !prof !121

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %11) #27
  br label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ac:                                            ; preds = %bb.z
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.ad:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.ae:                                            ; preds = %bb.aa
  %i.cg = load <2 x ptr>, ptr %i.bv, align 8, !tbaa !51, !noalias !334
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false)
  %i.ch = load ptr, ptr %23, align 8, !tbaa !333  ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -16
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 -8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !52 ; 8 uses
  store <2 x ptr> %i.cg, ptr %i.ci, align 8, !tbaa !51
  %.not.i.i.i.i108 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i108, label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 4 uses
  %i.cm = load atomic i64, ptr %i.cl acquire, align 8 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 4294967297
  %i.co = trunc i64 %i.cm to i32                  ; 2 uses
  br i1 %i.cn, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.cl, align 8, !tbaa !62
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store i32 0, ptr %i.cp, align 4, !tbaa !64
  %i.cq = load ptr, ptr %i.ck, align 8, !tbaa !33
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #27, !inline_history !339
  %i.ct = load ptr, ptr %i.ck, align 8, !tbaa !33
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #27, !inline_history !339
  br label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ah:                                            ; preds = %bb.af
  %i.cw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i109 = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i.i.i.i109, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cx = add nsw i32 %i.co, -1
  store i32 %i.cx, ptr %i.cl, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.cy = atomicrmw volatile add ptr %i.cl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i = phi i32 [ %i.co, %bb.ai ], [ %i.cy, %bb.aj ]
  %i.cz = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cz, label %bb.ak, label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #27
  br label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ae, %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ak, %bb.ab
  %i.da = load ptr, ptr %11, align 8, !tbaa !118  ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.al, label %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.thread.i, !prof !121

bb.al:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dc = load ptr, ptr %i.bw, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i110 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i.i110, label %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 4 uses
  %i.de = load atomic i64, ptr %i.dd acquire, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, 4294967297
  %i.dg = trunc i64 %i.de to i32                  ; 2 uses
  br i1 %i.df, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.dd, align 8, !tbaa !62
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 0, ptr %i.dh, align 4, !tbaa !64
  %i.di = load ptr, ptr %i.dc, align 8, !tbaa !33
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #27, !inline_history !340
  %i.dl = load ptr, ptr %i.dc, align 8, !tbaa !33
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #27, !inline_history !340
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.do = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i111 = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i.i.i.i111, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dp = add nsw i32 %i.dg, -1
  store i32 %i.dp, ptr %i.dd, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.dq = atomicrmw volatile add ptr %i.dd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dg, %bb.ap ], [ %i.dq, %bb.aq ]
  %i.dr = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dr, label %bb.ar, label %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.i, !prof !66

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.i: ; preds = %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.an
  %.pr.i.pr = load ptr, ptr %11, align 8, !tbaa !118 ; 2 uses
  %.not.i.i112 = icmp eq ptr %.pr.i.pr, null
  br i1 %.not.i.i112, label %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.thread.i, !prof !129

_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.i, %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ds = phi ptr [ %.pr.i.pr, %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.i ], [ %i.da, %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !130, !range !140, !noundef !141
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5TableEEED2Ev.exit: ; preds = %bb.al, %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.thread.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br i1 %i.cd, label %24, label %._crit_edge280.loopexit

._crit_edge280.loopexit:                          ; preds = %24, %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEED2Ev.exit
  %spec.select.ph = phi ptr [ %6, %24 ], [ %1, %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEED2Ev.exit ]
  %.pre303.a = load ptr, ptr %i.ar, align 8, !tbaa !52
  br label %._crit_edge280

._crit_edge280:                                   ; preds = %._crit_edge280.loopexit, %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE7reserveEm.exit
  %i.dw = phi ptr [ %i.at, %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE7reserveEm.exit ], [ %.pre303.a, %._crit_edge280.loopexit ] ; 8 uses
  %.lcssa271 = phi i1 [ true, %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE7reserveEm.exit ], [ %i.cd, %._crit_edge280.loopexit ]
  %spec.select = phi ptr [ %6, %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE7reserveEm.exit ], [ %spec.select.ph, %._crit_edge280.loopexit ]
  %.not.i.i113 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i113, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.a, label %bb.at

bb.at:                                            ; preds = %._crit_edge280
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 4 uses
  %i.dy = load atomic i64, ptr %i.dx acquire, align 8 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 4294967297
  %i.ea = trunc i64 %i.dy to i32                  ; 2 uses
  br i1 %i.dz, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.dx, align 8, !tbaa !62
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  store i32 0, ptr %i.eb, align 4, !tbaa !64
  %i.ec = load ptr, ptr %i.dw, align 8, !tbaa !33
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(16) %i.dw) #27, !inline_history !152
  %i.ef = load ptr, ptr %i.dw, align 8, !tbaa !33
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.dw) #27, !inline_history !152
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.a

bb.av:                                            ; preds = %bb.at
  %i.ei = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i114 = icmp eq i8 %i.ei, 0
  br i1 %.not.i.i.i114, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ej = add nsw i32 %i.ea, -1
  store i32 %i.ej, ptr %i.dx, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i115

bb.ax:                                            ; preds = %bb.av
  %i.ek = atomicrmw volatile add ptr %i.dx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i115

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i115: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i116 = phi i32 [ %i.ea, %bb.aw ], [ %i.ek, %bb.ax ]
  %i.el = icmp eq i32 %.0.i.i.i.i116, 1
  br i1 %i.el, label %27, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.a, !prof !66

27:                                               ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i115
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dw) #27
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.a

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.a: ; preds = %._crit_edge280, %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i115, %27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.a, %bb.q
  %.373 = phi i1 [ false, %bb.q ], [ %.lcssa271, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.a ]
  %.1 = phi ptr [ %1, %bb.q ], [ %spec.select, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.a ]
  %i.em = load ptr, ptr %8, align 8, !tbaa !118   ; 2 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %bb.az, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i, !prof !121

bb.az:                                            ; preds = %bb.ay
  %28 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.eo = load ptr, ptr %28, align 8, !tbaa !52   ; 8 uses
  %.not.i.i.i.i.i117 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i.i117, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 4 uses
  %i.eq = load atomic i64, ptr %i.ep acquire, align 8 ; 2 uses
  %i.er = icmp eq i64 %i.eq, 4294967297
  %i.es = trunc i64 %i.eq to i32                  ; 2 uses
  br i1 %i.er, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.ep, align 8, !tbaa !62
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  store i32 0, ptr %i.et, align 4, !tbaa !64
  %i.eu = load ptr, ptr %i.eo, align 8, !tbaa !33
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.eo) #27, !inline_history !341
  %i.ex = load ptr, ptr %i.eo, align 8, !tbaa !33
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(16) %i.eo) #27, !inline_history !341
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i

bb.bc:                                            ; preds = %bb.ba
  %i.fa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i118 = icmp eq i8 %i.fa, 0
  br i1 %.not.i.i.i.i.i.i118, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fb = add nsw i32 %i.es, -1
  store i32 %i.fb, ptr %i.ep, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i119

bb.be:                                            ; preds = %bb.bc
  %i.fc = atomicrmw volatile add ptr %i.ep, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i119

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i119: ; preds = %bb.be, %bb.bd
  %.0.i.i.i.i.i.i.i120 = phi i32 [ %i.es, %bb.bd ], [ %i.fc, %bb.be ]
  %i.fd = icmp eq i32 %.0.i.i.i.i.i.i.i120, 1
  br i1 %i.fd, label %bb.bf, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i, !prof !66

bb.bf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i119
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eo) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i: ; preds = %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i119, %bb.bb, %bb.az
  %.pr.i121 = load ptr, ptr %8, align 8, !tbaa !118 ; 2 uses
  %.not.i.i122 = icmp eq ptr %.pr.i121, null
  br i1 %.not.i.i122, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i, !prof !129

_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i, %bb.ay
  %i.fe = phi ptr [ %.pr.i121, %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i ], [ %i.em, %bb.ay ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 1
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !130, !range !140, !noundef !141
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.fi = load ptr, ptr %7, align 8, !tbaa !314   ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !317 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fi, %i.fk
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow6SchemaEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gc, %_ZSt8_DestroyISt10shared_ptrIN5arrow6SchemaEEEvPT_.exit.i.i.i ], [ %i.fi, %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6SchemaEEEvPT_.exit.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 4 uses
  %i.fo = load atomic i64, ptr %i.fn acquire, align 8 ; 2 uses
  %i.fp = icmp eq i64 %i.fo, 4294967297
  %i.fq = trunc i64 %i.fo to i32                  ; 2 uses
  br i1 %i.fp, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.fn, align 8, !tbaa !62
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  store i32 0, ptr %i.fr, align 4, !tbaa !64
  %i.fs = load ptr, ptr %i.fm, align 8, !tbaa !33
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(16) %i.fm) #27, !inline_history !342
  %i.fv = load ptr, ptr %i.fm, align 8, !tbaa !33
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(16) %i.fm) #27, !inline_history !342
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6SchemaEEEvPT_.exit.i.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.fy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.fy, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fz = add nsw i32 %i.fq, -1
  store i32 %i.fz, ptr %i.fn, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.ga = atomicrmw volatile add ptr %i.fn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.fq, %bb.bk ], [ %i.ga, %bb.bl ]
  %i.gb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.gb, label %bb.bm, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6SchemaEEEvPT_.exit.i.i.i, !prof !66

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fm) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6SchemaEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow6SchemaEEEvPT_.exit.i.i.i: ; preds = %bb.bm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.bi, %.lr.ph.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i123 = icmp eq ptr %i.gc, %i.fk
  br i1 %.not.i.i.i123, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !343

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6SchemaEEEvPT_.exit.i.i.i
  %.pr.i124 = load ptr, ptr %7, align 8, !tbaa !314
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit
  %i.gd = phi ptr [ %.pr.i124, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.fi, %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gd, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exit.i
  %i.ge = load ptr, ptr %i.p, align 8, !tbaa !318
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = ptrtoint ptr %i.gd to i64
  %i.gh = sub i64 %i.gf, %i.gg
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gh) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exit.i, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br i1 %.373, label %bb.cu, label %bb.ep

bb.bo:                                            ; preds = %bb.ac, %bb.ad, %bb.w
  %.pn79.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.w ], [ %i.ce, %bb.ac ], [ %i.cf, %bb.ad ]
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.bp

bb.bp:                                            ; preds = %bb.r, %bb.bo, %bb.o, %bb.h
  %.pn91 = phi { ptr, i32 } [ %i.am, %bb.o ], [ %i.v, %bb.h ], [ %.pn79.pn.pn, %bb.bo ], [ %i.ap, %bb.r ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.ex

bb.bq:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.gi = load ptr, ptr %i.d, align 8, !tbaa !106 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !52 ; 2 uses
  %i.gn = load <2 x ptr>, ptr %i.gj, align 8, !tbaa !51
  store <2 x ptr> %i.gn, ptr %12, align 16, !tbaa !51
  %.not.i.i.i125 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.i125, label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 3 uses
  %i.gp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i126 = icmp eq i8 %i.gp, 0
  br i1 %.not.i.i.i.i126, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gq = load i32, ptr %i.go, align 4, !tbaa !3
  %i.gr = add nsw i32 %i.gq, 1
  store i32 %i.gr, ptr %i.go, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

bb.bt:                                            ; preds = %bb.br
  %i.gs = atomicrmw volatile add ptr %i.go, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !307
  %.pre299 = load ptr, ptr %1, align 8, !tbaa !310 ; 2 uses
  %.pre310.a = ptrtoint ptr %.pre to i64
  %.pre311.a = ptrtoint ptr %.pre299 to i64
  %.pre313 = sub i64 %.pre310.a, %.pre311.a
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit:  ; preds = %bb.bq, %bb.bs, %bb.bt
  %.pre-phi314 = phi i64 [ %i.g, %bb.bq ], [ %i.g, %bb.bs ], [ %.pre313, %bb.bt ]
  %i.gt = phi ptr [ %i.d, %bb.bq ], [ %i.d, %bb.bs ], [ %.pre299, %bb.bt ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 1, ptr %i.a, align 8, !tbaa !109
  %.not274 = icmp ugt i64 %.pre-phi314, 16
  br i1 %.not274, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit
  %.pre300 = load ptr, ptr %12, align 16, !tbaa !35 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.cm
  %i.gu = phi ptr [ %i.jm, %bb.cm ], [ %i.gt, %.lr.ph.preheader ]
  %storemerge275 = phi i64 [ %i.jk, %bb.cm ], [ 1, %.lr.ph.preheader ]
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %i.gu, i64 %storemerge275
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !106
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !35
  %i.gz = invoke noundef zeroext i1 @_ZNK5arrow6Schema6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(32) %i.gy, ptr noundef nonnull align 8 dereferenceable(32) %.pre300, i1 noundef zeroext false)
          to label %bb.bu unwind label %bb.ci

bb.bu:                                            ; preds = %.lr.ph
  br i1 %i.gz, label %bb.cm, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  invoke void @_ZNK5arrow6Schema8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %.pre300, i1 noundef zeroext false)
          to label %bb.bw unwind label %bb.cj

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.ha = load i64, ptr %i.a, align 8, !tbaa !109
  %i.hb = load ptr, ptr %1, align 8, !tbaa !310
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %i.hb, i64 %i.ha
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !106
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !35
  invoke void @_ZNK5arrow6Schema8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %i.hf, i1 noundef zeroext false)
          to label %bb.bx unwind label %bb.ck

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !344
  invoke void @_ZN5arrow8internal12JoinToStringIJRA17_KcRmRA18_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(17) @.str, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(18) @.str.1, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %.noexc127 unwind label %bb.cl

.noexc127:                                        ; preds = %bb.bx
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %13, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %.noexc127
  %i.hg = load ptr, ptr %4, align 8, !tbaa !153, !noalias !344 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.hi = icmp eq ptr %i.hg, %i.hh
  br i1 %i.hi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.by
  %i.hj = load i64, ptr %i.hh, align 8, !tbaa !61, !noalias !344
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hk) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.bz:                                            ; preds = %.noexc127
  %i.hl = landingpad { ptr, i32 }
          cleanup
  %i.hm = load ptr, ptr %4, align 8, !tbaa !153, !noalias !344 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ho = icmp eq ptr %i.hm, %i.hn
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i: ; preds = %bb.bz
  %i.hp = load i64, ptr %i.hn, align 8, !tbaa !61, !noalias !344
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !344
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !344
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %13) #27
  %i.hr = load ptr, ptr %13, align 8, !tbaa !118  ; 2 uses
  %.not.i128 = icmp eq ptr %i.hr, null
  br i1 %.not.i128, label %_ZN5arrow6StatusD2Ev.exit129, label %bb.ca, !prof !121

bb.ca:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 1
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !130, !range !140, !noundef !141
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %_ZN5arrow6StatusD2Ev.exit129, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #27
  br label %_ZN5arrow6StatusD2Ev.exit129

_ZN5arrow6StatusD2Ev.exit129:                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.ca, %bb.cb
  %i.hv = load ptr, ptr %15, align 8, !tbaa !153  ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit129
  %i.hy = load i64, ptr %i.hw, align 8, !tbaa !61
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  %i.ia = load ptr, ptr %14, align 8, !tbaa !153  ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ic = icmp eq ptr %i.ia, %i.ib
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.id = load i64, ptr %i.ib, align 8, !tbaa !61
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.ie) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.if = load ptr, ptr %i.gk, align 8, !tbaa !52 ; 8 uses
  %.not.i.i133 = icmp eq ptr %i.if, null
  br i1 %.not.i.i133, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit137, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8 ; 4 uses
  %i.ih = load atomic i64, ptr %i.ig acquire, align 8 ; 2 uses
  %i.ii = icmp eq i64 %i.ih, 4294967297
  %i.ij = trunc i64 %i.ih to i32                  ; 2 uses
  br i1 %i.ii, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  store i32 0, ptr %i.ig, align 8, !tbaa !62
  %i.ik = getelementptr inbounds nuw i8, ptr %i.if, i64 12
  store i32 0, ptr %i.ik, align 4, !tbaa !64
  %i.il = load ptr, ptr %i.if, align 8, !tbaa !33
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(16) %i.if) #27, !inline_history !152
  %i.io = load ptr, ptr %i.if, align 8, !tbaa !33
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  %i.iq = load ptr, ptr %i.ip, align 8
  call void %i.iq(ptr noundef nonnull align 8 dereferenceable(16) %i.if) #27, !inline_history !152
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit137

bb.ce:                                            ; preds = %bb.cc
  %i.ir = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i134 = icmp eq i8 %i.ir, 0
  br i1 %.not.i.i.i134, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.is = add nsw i32 %i.ij, -1
  store i32 %i.is, ptr %i.ig, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i135

bb.cg:                                            ; preds = %bb.ce
  %i.it = atomicrmw volatile add ptr %i.ig, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i135

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i135: ; preds = %bb.cg, %bb.cf
  %.0.i.i.i.i136 = phi i32 [ %i.ij, %bb.cf ], [ %i.it, %bb.cg ]
  %i.iu = icmp eq i32 %.0.i.i.i.i136, 1
  br i1 %i.iu, label %bb.ch, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit137, !prof !66

bb.ch:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i135
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.if) #27
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit137

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit137: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %bb.cd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i135, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.ep

bb.ci:                                            ; preds = %.lr.ph
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cj:                                            ; preds = %bb.bv
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

bb.ck:                                            ; preds = %bb.bw
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

bb.cl:                                            ; preds = %bb.bx
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, %bb.cl
  %eh.lpad-body = phi { ptr, i32 } [ %i.iy, %bb.cl ], [ %i.hl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i ] ; 2 uses
  %i.iz = load ptr, ptr %15, align 8, !tbaa !153  ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.jb = icmp eq ptr %i.iz, %i.ja
  br i1 %i.jb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %.body
  %i.jc = load i64, ptr %i.ja, align 8, !tbaa !61
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.jd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138, %bb.ck
  %.pn = phi { ptr, i32 } [ %i.ix, %bb.ck ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138 ], [ %eh.lpad-body, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  %i.je = load ptr, ptr %14, align 8, !tbaa !153  ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.jg = icmp eq ptr %i.je, %i.jf
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %i.jh = load i64, ptr %i.jf, align 8, !tbaa !61
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.ji) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141, %bb.cj
  %.pn.pn = phi { ptr, i32 } [ %i.iw, %bb.cj ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.cn

bb.cm:                                            ; preds = %bb.bu
  %i.jj = load i64, ptr %i.a, align 8, !tbaa !109
  %i.jk = add i64 %i.jj, 1                        ; 3 uses
  store i64 %i.jk, ptr %i.a, align 8, !tbaa !109
  %i.jl = load ptr, ptr %i.b, align 8, !tbaa !307
  %i.jm = load ptr, ptr %1, align 8, !tbaa !310   ; 2 uses
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = ptrtoint ptr %i.jm to i64
  %i.jp = sub i64 %i.jn, %i.jo
  %i.jq = ashr exact i64 %i.jp, 4
  %.not = icmp ult i64 %i.jk, %i.jq
  br i1 %.not, label %.lr.ph, label %.critedge, !llvm.loop !349

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %bb.ci
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ], [ %i.iv, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.ex

.critedge:                                        ; preds = %bb.cm, %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.jr = load ptr, ptr %i.gk, align 8, !tbaa !52 ; 8 uses
  %.not.i.i144 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i144, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit148, label %bb.co

bb.co:                                            ; preds = %.critedge
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8 ; 4 uses
  %i.jt = load atomic i64, ptr %i.js acquire, align 8 ; 2 uses
  %i.ju = icmp eq i64 %i.jt, 4294967297
  %i.jv = trunc i64 %i.jt to i32                  ; 2 uses
  br i1 %i.ju, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  store i32 0, ptr %i.js, align 8, !tbaa !62
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jr, i64 12
  store i32 0, ptr %i.jw, align 4, !tbaa !64
  %i.jx = load ptr, ptr %i.jr, align 8, !tbaa !33
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.jz = load ptr, ptr %i.jy, align 8
  tail call void %i.jz(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #27, !inline_history !152
  %i.ka = load ptr, ptr %i.jr, align 8, !tbaa !33
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8
  tail call void %i.kc(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #27, !inline_history !152
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit148

bb.cq:                                            ; preds = %bb.co
  %i.kd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i145 = icmp eq i8 %i.kd, 0
  br i1 %.not.i.i.i145, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ke = add nsw i32 %i.jv, -1
  store i32 %i.ke, ptr %i.js, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i146

bb.cs:                                            ; preds = %bb.cq
  %i.kf = atomicrmw volatile add ptr %i.js, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i146

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i146: ; preds = %bb.cs, %bb.cr
  %.0.i.i.i.i147 = phi i32 [ %i.jv, %bb.cr ], [ %i.kf, %bb.cs ]
  %i.kg = icmp eq i32 %.0.i.i.i.i147, 1
  br i1 %i.kg, label %bb.ct, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit148, !prof !66

bb.ct:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i146
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #27
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit148

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit148: ; preds = %.critedge, %bb.cp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i146, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.cu

bb.cu:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit148, %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev.exit
  %.2 = phi ptr [ %.1, %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev.exit ], [ %1, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit148 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %i.kh = load ptr, ptr %.2, align 8, !tbaa !333
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !106 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !35 ; 3 uses
  store ptr %i.kk, ptr %16, align 8, !tbaa !35
  %i.kl = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !52 ; 3 uses
  store ptr %i.kn, ptr %i.kl, align 8, !tbaa !52
  %.not.i.i.i149 = icmp eq ptr %i.kn, null
  br i1 %.not.i.i.i149, label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit151, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8 ; 3 uses
  %i.kp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i150 = icmp eq i8 %i.kp, 0
  br i1 %.not.i.i.i.i150, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.kq = load i32, ptr %i.ko, align 4, !tbaa !3
  %i.kr = add nsw i32 %i.kq, 1
  store i32 %i.kr, ptr %i.ko, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit151

bb.cx:                                            ; preds = %bb.cv
  %i.ks = atomicrmw volatile add ptr %i.ko, i32 1 acq_rel, align 4 ; 0 uses
  %.pre304 = load ptr, ptr %16, align 8, !tbaa !35
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit151

_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit151: ; preds = %bb.cu, %bb.cw, %bb.cx
  %i.kt = phi ptr [ %i.kk, %bb.cu ], [ %i.kk, %bb.cw ], [ %.pre304, %bb.cx ] ; 2 uses
  %i.ku = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.kt)
          to label %bb.cy unwind label %bb.db     ; 4 uses

bb.cy:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit151
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  %i.kv = sext i32 %i.ku to i64                   ; 2 uses
  %i.kw = icmp slt i32 %i.ku, 0
  br i1 %i.kw, label %bb.cz, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #24
          to label %.noexc153 unwind label %bb.dc

.noexc153:                                        ; preds = %bb.cz
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.cy
  %.not.i.i.i.i152 = icmp eq i32 %i.ku, 0
  br i1 %.not.i.i.i.i152, label %._crit_edge294, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.kx = shl nuw nsw i64 %i.kv, 4                ; 3 uses
  %i.ky = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kx) #25
          to label %.lr.ph293 unwind label %bb.dc ; 4 uses

.lr.ph293:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.ky, ptr %17, align 8, !tbaa !77
  %i.kz = getelementptr inbounds nuw [16 x i8], ptr %i.ky, i64 %i.kv
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ky, i8 0, i64 %i.kx, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ky, i64 %i.kx
  %i.la = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %i.kz, ptr %i.lb, align 8, !tbaa !116
  store ptr %scevgep.i.i.i.i.i, ptr %i.la, align 8, !tbaa !81
  %29 = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.lc = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ld = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 5 uses
  %i.le = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %wide.trip.count = zext nneg i32 %i.ku to i64
  br label %bb.dd

._crit_edge294.loopexit:                          ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit
  %.pre306 = load ptr, ptr %16, align 8, !tbaa !35
  %.pre307 = load ptr, ptr %17, align 8, !tbaa !77
  %.pre308.a = load ptr, ptr %i.la, align 8, !tbaa !81
  %.pre309 = load ptr, ptr %i.lb, align 8, !tbaa !116
  br label %._crit_edge294

._crit_edge294:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i, %._crit_edge294.loopexit
  %i.lf = phi ptr [ %.pre309, %._crit_edge294.loopexit ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ] ; 2 uses
  %i.lg = phi ptr [ %.pre308.a, %._crit_edge294.loopexit ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ] ; 3 uses
  %i.lh = phi ptr [ %.pre307, %._crit_edge294.loopexit ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ] ; 4 uses
  %i.li = phi ptr [ %.pre306, %._crit_edge294.loopexit ], [ %i.kt, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ] ; 2 uses
  store ptr %i.li, ptr %20, align 8, !tbaa !35
  %i.lj = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.lk = load ptr, ptr %i.kl, align 8, !tbaa !52 ; 2 uses
  store ptr null, ptr %i.kl, align 8, !tbaa !52
  store ptr %i.lk, ptr %i.lj, align 8, !tbaa !52
  store ptr null, ptr %16, align 8, !tbaa !35
  store ptr %i.lh, ptr %21, align 8, !tbaa !77
  %i.ll = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %i.lg, ptr %i.ll, align 8, !tbaa !81
  %i.lm = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %i.lf, ptr %i.lm, align 8, !tbaa !116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.ln = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25
          to label %.noexc155 unwind label %bb.el, !inline_history !144 ; 11 uses

.noexc155:                                        ; preds = %._crit_edge294
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  store i32 1, ptr %i.lo, align 8, !tbaa !62, !noalias !350
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 12
  store i32 1, ptr %i.lp, align 4, !tbaa !64, !noalias !350
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow11SimpleTableESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ln, align 8, !tbaa !33, !noalias !350
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ln, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false), !noalias !350
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false), !noalias !350
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ln, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5arrow11SimpleTableE, i64 16), ptr %i.lq, align 8, !tbaa !33, !noalias !350
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ln, i64 48
  store ptr %i.lh, ptr %i.ls, align 8, !tbaa !77, !noalias !350
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ln, i64 56
  store ptr %i.lg, ptr %i.lt, align 8, !tbaa !81, !noalias !350
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ln, i64 64
  store ptr %i.lf, ptr %i.lu, align 8, !tbaa !116, !noalias !350
  store ptr %i.li, ptr %i.lr, align 8, !tbaa !178, !noalias !350
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ln, i64 32
  store ptr %i.lk, ptr %i.lv, align 8, !tbaa !52, !noalias !350
  %i.lw = icmp eq ptr %i.lg, %i.lh
  br i1 %i.lw, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit225, label %bb.da

bb.da:                                            ; preds = %.noexc155
  %i.lx = load ptr, ptr %i.lh, align 8, !tbaa !82, !noalias !350
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 40
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !85, !noalias !350
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit225

bb.db:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit151
  %i.ma = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.dc:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.cz
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.dd:                                            ; preds = %.lr.ph293, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph293 ], [ %indvars.iv.next, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.mc = load ptr, ptr %.2, align 8, !tbaa !333  ; 2 uses
  %i.md = load ptr, ptr %29, align 8, !tbaa !333  ; 2 uses
  %i.me = icmp eq ptr %i.mc, %i.md
  %.pre315 = trunc nuw nsw i64 %indvars.iv to i32 ; 2 uses
  br i1 %i.me, label %._crit_edge290, label %.lr.ph289

._crit_edge290:                                   ; preds = %._crit_edge286, %bb.dd
  %i.mf = load ptr, ptr %16, align 8, !tbaa !35
  %i.mg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.mf, i32 noundef %.pre315)
          to label %bb.dw unwind label %bb.ek

.lr.ph289:                                        ; preds = %bb.dd, %._crit_edge286
  %.sroa.0255.0287 = phi ptr [ %i.ng, %._crit_edge286 ], [ %i.mc, %bb.dd ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  %i.mh = load ptr, ptr %.sroa.0255.0287, align 8, !tbaa !106 ; 2 uses
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !33
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  %i.mk = load ptr, ptr %i.mj, align 8
  invoke void %i.mk(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.49") align 8 %19, ptr noundef nonnull align 8 dereferenceable(32) %i.mh, i32 noundef %.pre315)
          to label %bb.de unwind label %bb.dl

bb.de:                                            ; preds = %.lr.ph289
  %i.ml = load ptr, ptr %19, align 8, !tbaa !82   ; 2 uses
  %i.mm = load ptr, ptr %i.lc, align 8, !tbaa !52 ; 8 uses
  %.not.i.i156 = icmp eq ptr %i.mm, null
  br i1 %.not.i.i156, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8 ; 4 uses
  %i.mo = load atomic i64, ptr %i.mn acquire, align 8 ; 2 uses
  %i.mp = icmp eq i64 %i.mo, 4294967297
  %i.mq = trunc i64 %i.mo to i32                  ; 2 uses
  br i1 %i.mp, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  store i32 0, ptr %i.mn, align 8, !tbaa !62
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mm, i64 12
  store i32 0, ptr %i.mr, align 4, !tbaa !64
  %i.ms = load ptr, ptr %i.mm, align 8, !tbaa !33
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %i.mu = load ptr, ptr %i.mt, align 8
  call void %i.mu(ptr noundef nonnull align 8 dereferenceable(16) %i.mm) #27, !inline_history !250
  %i.mv = load ptr, ptr %i.mm, align 8, !tbaa !33
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 24
  %i.mx = load ptr, ptr %i.mw, align 8
  call void %i.mx(ptr noundef nonnull align 8 dereferenceable(16) %i.mm) #27, !inline_history !250
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.dh:                                            ; preds = %bb.df
  %i.my = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i157 = icmp eq i8 %i.my, 0
  br i1 %.not.i.i.i157, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.mz = add nsw i32 %i.mq, -1
  store i32 %i.mz, ptr %i.mn, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i158

bb.dj:                                            ; preds = %bb.dh
  %i.na = atomicrmw volatile add ptr %i.mn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i158

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i158: ; preds = %bb.dj, %bb.di
  %.0.i.i.i.i159 = phi i32 [ %i.mq, %bb.di ], [ %i.na, %bb.dj ]
  %i.nb = icmp eq i32 %.0.i.i.i.i159, 1
  br i1 %i.nb, label %bb.dk, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.dk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i158
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mm) #27
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.de, %bb.dg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i158, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  %i.nc = load ptr, ptr %i.ml, align 8, !tbaa !212 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !212 ; 2 uses
  %i.nf = icmp eq ptr %i.nc, %i.ne
  br i1 %i.nf, label %._crit_edge286, label %.lr.ph285.preheader

.lr.ph285.preheader:                              ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.pre305 = load ptr, ptr %i.ld, align 8, !tbaa !172
  br label %.lr.ph285

._crit_edge286:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backERKS3_.exit, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.0255.0287, i64 16 ; 2 uses
  %i.nh = icmp eq ptr %i.ng, %i.md
  br i1 %i.nh, label %._crit_edge290, label %.lr.ph289

bb.dl:                                            ; preds = %.lr.ph289
  %i.ni = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %.body166

.lr.ph285:                                        ; preds = %.lr.ph285.preheader, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backERKS3_.exit
  %i.nj = phi ptr [ %i.oz, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backERKS3_.exit ], [ %.pre305, %.lr.ph285.preheader ] ; 7 uses
  %.sroa.0251.0284 = phi ptr [ %i.pa, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backERKS3_.exit ], [ %i.nc, %.lr.ph285.preheader ] ; 5 uses
  %i.nk = load ptr, ptr %i.le, align 8, !tbaa !171
  %.not.i160 = icmp eq ptr %i.nj, %i.nk
  br i1 %.not.i160, label %bb.dq, label %bb.dm

bb.dm:                                            ; preds = %.lr.ph285
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.0251.0284, i64 8
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !52 ; 2 uses
  %i.nn = load <2 x ptr>, ptr %.sroa.0251.0284, align 8, !tbaa !51
  store <2 x ptr> %i.nn, ptr %i.nj, align 8, !tbaa !51
  %.not.i.i.i.i.i161 = icmp eq ptr %i.nm, null
  br i1 %.not.i.i.i.i.i161, label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.no = getelementptr inbounds nuw i8, ptr %i.nm, i64 8 ; 3 uses
  %i.np = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i162 = icmp eq i8 %i.np, 0
  br i1 %.not.i.i.i.i.i.i162, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.nq = load i32, ptr %i.no, align 4, !tbaa !3
  %i.nr = add nsw i32 %i.nq, 1
  store i32 %i.nr, ptr %i.no, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

bb.dp:                                            ; preds = %bb.dn
  %i.ns = atomicrmw volatile add ptr %i.no, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i163 = load ptr, ptr %i.ld, align 8, !tbaa !172
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i: ; preds = %bb.dp, %bb.do, %bb.dm
  %i.nt = phi ptr [ %i.nj, %bb.dm ], [ %i.nj, %bb.do ], [ %.pre.i163, %bb.dp ]
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 16 ; 2 uses
  store ptr %i.nu, ptr %i.ld, align 8, !tbaa !172
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backERKS3_.exit

bb.dq:                                            ; preds = %.lr.ph285
  %i.nv = load ptr, ptr %18, align 8, !tbaa !170  ; 5 uses
  %i.nw = ptrtoint ptr %i.nj to i64
  %i.nx = ptrtoint ptr %i.nv to i64               ; 2 uses
  %i.ny = sub i64 %i.nw, %i.nx                    ; 3 uses
  %i.nz = icmp eq i64 %i.ny, 9223372036854775792
  br i1 %i.nz, label %bb.dr, label %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.dr:                                            ; preds = %bb.dq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #24
          to label %.noexc245 unwind label %.loopexit.split-lp

.noexc245:                                        ; preds = %bb.dr
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.dq
  %i.oa = ashr exact i64 %i.ny, 4                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.oa, i64 1)
  %i.ob = add nsw i64 %.sroa.speculated.i.i, %i.oa ; 2 uses
  %i.oc = icmp ult i64 %i.ob, %i.oa
  %i.od = call i64 @llvm.umin.i64(i64 %i.ob, i64 576460752303423487)
  %i.oe = select i1 %i.oc, i64 576460752303423487, i64 %i.od ; 3 uses
  %.not.i.i236 = icmp ne i64 %i.oe, 0
  call void @llvm.assume(i1 %.not.i.i236)
  %i.of = shl nuw nsw i64 %i.oe, 4
  %i.og = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.of) #25
          to label %.noexc246 unwind label %.loopexit ; 5 uses

.noexc246:                                        ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.ny
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.0251.0284, i64 8
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !52 ; 2 uses
  %i.ok = load <2 x ptr>, ptr %.sroa.0251.0284, align 8, !tbaa !51
  store <2 x ptr> %i.ok, ptr %i.oh, align 8, !tbaa !51
  %.not.i.i.i.i.i237 = icmp eq ptr %i.oj, null
  br i1 %.not.i.i.i.i.i237, label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i239, label %bb.ds

bb.ds:                                            ; preds = %.noexc246
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 8 ; 3 uses
  %i.om = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i238 = icmp eq i8 %i.om, 0
  br i1 %.not.i.i.i.i.i.i238, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.on = load i32, ptr %i.ol, align 4, !tbaa !3
  %i.oo = add nsw i32 %i.on, 1
  store i32 %i.oo, ptr %i.ol, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i239

bb.du:                                            ; preds = %bb.ds
  %i.op = atomicrmw volatile add ptr %i.ol, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i239

_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i239: ; preds = %bb.du, %bb.dt, %.noexc246
  %.not10.i.i.i.i240 = icmp eq ptr %i.nv, %i.nj
  br i1 %.not10.i.i.i.i240, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i241

.lr.ph.i.i.i.i241:                                ; preds = %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i239, %.lr.ph.i.i.i.i241
  %.012.i.i.i.i242 = phi ptr [ %i.ot, %.lr.ph.i.i.i.i241 ], [ %i.og, %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i239 ] ; 2 uses
  %.0911.i.i.i.i243 = phi ptr [ %i.os, %.lr.ph.i.i.i.i241 ], [ %i.nv, %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i239 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !355)
  call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.oq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i243, i64 8
  %i.or = load <2 x ptr>, ptr %.0911.i.i.i.i243, align 8, !tbaa !51, !alias.scope !358, !noalias !355
  store ptr null, ptr %i.oq, align 8, !tbaa !52, !alias.scope !358, !noalias !355
  store <2 x ptr> %i.or, ptr %.012.i.i.i.i242, align 8, !tbaa !51, !alias.scope !355, !noalias !358
  store ptr null, ptr %.0911.i.i.i.i243, align 8, !tbaa !213, !alias.scope !358, !noalias !355
  %i.os = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i243, i64 16 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i242, i64 16 ; 2 uses
  %.not.i.i.i.i244 = icmp eq ptr %i.os, %i.nj
end_hunk_0
begin_hunk_1_@_ZN5arrow17ConcatenateTablesERKSt6vectorISt10shared_ptrINS_5TableEESaIS3_EENS_24ConcatenateTablesOptionsEPNS_10MemoryPoolE:bb.a
  store i32 1, ptr %i.pf, align 8, !tbaa !62, !noalias !361
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pd, i64 12
  store i32 1, ptr %i.pg, align 4, !tbaa !64, !noalias !361
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.pd, align 8, !tbaa !33, !noalias !361
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pd, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow12ChunkedArrayEJRSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEEvPT_DpOT0_(ptr noundef nonnull %i.ph, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(16) %i.pe)
          to label %_ZSt11make_sharedIN5arrow12ChunkedArrayEJRSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEES3_IT_EDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !361

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc165
  %i.pi = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.pd, i64 noundef 104) #26, !noalias !361
  br label %.body166

_ZSt11make_sharedIN5arrow12ChunkedArrayEJRSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEES3_IT_EDpOT0_.exit: ; preds = %.noexc165
  %i.pj = load ptr, ptr %17, align 8, !tbaa !77
  %i.pk = getelementptr inbounds nuw [16 x i8], ptr %i.pj, i64 %indvars.iv ; 2 uses
  store ptr %i.ph, ptr %i.pk, align 8, !tbaa !185
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8 ; 2 uses
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !52 ; 8 uses
  store ptr %i.pd, ptr %i.pl, align 8, !tbaa !52
  %.not.i.i.i.i168 = icmp eq ptr %i.pm, null
  br i1 %.not.i.i.i.i168, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit176, label %bb.dx

bb.dx:                                            ; preds = %_ZSt11make_sharedIN5arrow12ChunkedArrayEJRSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEES3_IT_EDpOT0_.exit
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 8 ; 4 uses
  %i.po = load atomic i64, ptr %i.pn acquire, align 8 ; 2 uses
  %i.pp = icmp eq i64 %i.po, 4294967297
  %i.pq = trunc i64 %i.po to i32                  ; 2 uses
  br i1 %i.pp, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  store i32 0, ptr %i.pn, align 8, !tbaa !62
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pm, i64 12
  store i32 0, ptr %i.pr, align 4, !tbaa !64
  %i.ps = load ptr, ptr %i.pm, align 8, !tbaa !33
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  %i.pu = load ptr, ptr %i.pt, align 8
  call void %i.pu(ptr noundef nonnull align 8 dereferenceable(16) %i.pm) #27, !inline_history !127
  %i.pv = load ptr, ptr %i.pm, align 8, !tbaa !33
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 24
  %i.px = load ptr, ptr %i.pw, align 8
  call void %i.px(ptr noundef nonnull align 8 dereferenceable(16) %i.pm) #27, !inline_history !127
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit176

bb.dz:                                            ; preds = %bb.dx
  %i.py = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i169 = icmp eq i8 %i.py, 0
  br i1 %.not.i.i.i.i.i169, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.pz = add nsw i32 %i.pq, -1
  store i32 %i.pz, ptr %i.pn, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i170

bb.eb:                                            ; preds = %bb.dz
  %i.qa = atomicrmw volatile add ptr %i.pn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i170

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i170: ; preds = %bb.eb, %bb.ea
  %.0.i.i.i.i.i.i171 = phi i32 [ %i.pq, %bb.ea ], [ %i.qa, %bb.eb ]
  %i.qb = icmp eq i32 %.0.i.i.i.i.i.i171, 1
  br i1 %i.qb, label %bb.ec, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit176, !prof !66

bb.ec:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i170
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pm) #27
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit176

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit176: ; preds = %bb.ec, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i170, %bb.dy, %_ZSt11make_sharedIN5arrow12ChunkedArrayEJRSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEES3_IT_EDpOT0_.exit
  %i.qc = load ptr, ptr %18, align 8, !tbaa !170  ; 3 uses
  %i.qd = load ptr, ptr %i.ld, align 8, !tbaa !172 ; 2 uses
  %.not4.i.i.i177 = icmp eq ptr %i.qc, %i.qd
  br i1 %.not4.i.i.i177, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i178

.lr.ph.i.i.i178:                                  ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit176, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.05.i.i.i179 = phi ptr [ %i.qv, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i ], [ %i.qc, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit176 ] ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %.05.i.i.i179, i64 8
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i.i180 = icmp eq ptr %i.qf, null
  br i1 %.not.i.i.i.i.i.i.i180, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, label %bb.ed

bb.ed:                                            ; preds = %.lr.ph.i.i.i178
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 8 ; 4 uses
  %i.qh = load atomic i64, ptr %i.qg acquire, align 8 ; 2 uses
  %i.qi = icmp eq i64 %i.qh, 4294967297
  %i.qj = trunc i64 %i.qh to i32                  ; 2 uses
  br i1 %i.qi, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  store i32 0, ptr %i.qg, align 8, !tbaa !62
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qf, i64 12
  store i32 0, ptr %i.qk, align 4, !tbaa !64
  %i.ql = load ptr, ptr %i.qf, align 8, !tbaa !33
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 16
  %i.qn = load ptr, ptr %i.qm, align 8
  call void %i.qn(ptr noundef nonnull align 8 dereferenceable(16) %i.qf) #27, !inline_history !187
  %i.qo = load ptr, ptr %i.qf, align 8, !tbaa !33
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 24
  %i.qq = load ptr, ptr %i.qp, align 8
  call void %i.qq(ptr noundef nonnull align 8 dereferenceable(16) %i.qf) #27, !inline_history !187
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

bb.ef:                                            ; preds = %bb.ed
  %i.qr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i181 = icmp eq i8 %i.qr, 0
  br i1 %.not.i.i.i.i.i.i.i.i181, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.qs = add nsw i32 %i.qj, -1
  store i32 %i.qs, ptr %i.qg, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i182

bb.eh:                                            ; preds = %bb.ef
  %i.qt = atomicrmw volatile add ptr %i.qg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i182

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i182: ; preds = %bb.eh, %bb.eg
  %.0.i.i.i.i.i.i.i.i.i183 = phi i32 [ %i.qj, %bb.eg ], [ %i.qt, %bb.eh ]
  %i.qu = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i183, 1
  br i1 %i.qu, label %bb.ei, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, !prof !66

bb.ei:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i182
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qf) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i: ; preds = %bb.ei, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i182, %bb.ee, %.lr.ph.i.i.i178
  %i.qv = getelementptr inbounds nuw i8, ptr %.05.i.i.i179, i64 16 ; 2 uses
  %.not.i.i.i184 = icmp eq ptr %i.qv, %i.qd
  br i1 %.not.i.i.i184, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i178, !llvm.loop !188

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.pr.i185 = load ptr, ptr %18, align 8, !tbaa !170
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit176
  %i.qw = phi ptr [ %.pr.i185, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.qc, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit176 ] ; 3 uses
  %.not.i.i1.i186 = icmp eq ptr %i.qw, null
  br i1 %.not.i.i1.i186, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, label %bb.ej

bb.ej:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i
  %i.qx = load ptr, ptr %i.le, align 8, !tbaa !171
  %i.qy = ptrtoint ptr %i.qx to i64
  %i.qz = ptrtoint ptr %i.qw to i64
  %i.ra = sub i64 %i.qy, %i.qz
  call void @_ZdlPvm(ptr noundef nonnull %i.qw, i64 noundef %i.ra) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge294.loopexit, label %bb.dd, !llvm.loop !364

bb.ek:                                            ; preds = %bb.dw, %._crit_edge290
  %i.rb = landingpad { ptr, i32 }
          cleanup
  br label %.body166

.body166:                                         ; preds = %.loopexit, %.loopexit.split-lp, %bb.ek, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, %bb.dl
  %.pn85.pn = phi { ptr, i32 } [ %i.ni, %bb.dl ], [ %i.pi, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ], [ %i.rb, %bb.ek ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %18) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %bb.em

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit225: ; preds = %.noexc155, %bb.da
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc155 ], [ %i.lz, %bb.da ]
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ln, i64 40
  store i64 %.sink.i.i.i.i.i.i.i.i, ptr %i.rc, align 8, !tbaa !103, !noalias !350
  store ptr null, ptr %0, align 8, !tbaa !118
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.lq, ptr %i.rd, align 8, !tbaa !106
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ln, ptr %i.re, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %bb.ep

bb.el:                                            ; preds = %._crit_edge294
  %i.rf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %21) #27
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %20) #27
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %.body166
  %.pn85.pn.pn = phi { ptr, i32 } [ %.pn85.pn, %.body166 ], [ %i.rf, %bb.el ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #27
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.dc
  %.pn85.pn.pn.pn = phi { ptr, i32 } [ %.pn85.pn.pn, %bb.em ], [ %i.mb, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.db
  %.pn85.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn85.pn.pn.pn, %bb.en ], [ %i.ma, %bb.db ]
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %bb.ex

bb.ep:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit137, %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev.exit, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit225
  %i.rg = load ptr, ptr %6, align 8, !tbaa !310   ; 3 uses
  %30 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.rh = load ptr, ptr %30, align 8, !tbaa !307  ; 2 uses
  %.not4.i.i.i226 = icmp eq ptr %i.rg, %i.rh
  br i1 %.not4.i.i.i226, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i227

.lr.ph.i.i.i227:                                  ; preds = %bb.ep, %_ZSt8_DestroyISt10shared_ptrIN5arrow5TableEEEvPT_.exit.i.i.i
  %.05.i.i.i228 = phi ptr [ %i.rz, %_ZSt8_DestroyISt10shared_ptrIN5arrow5TableEEEvPT_.exit.i.i.i ], [ %i.rg, %bb.ep ] ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.05.i.i.i228, i64 8
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i.i229 = icmp eq ptr %i.rj, null
  br i1 %.not.i.i.i.i.i.i.i229, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5TableEEEvPT_.exit.i.i.i, label %bb.eq

bb.eq:                                            ; preds = %.lr.ph.i.i.i227
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 8 ; 4 uses
  %i.rl = load atomic i64, ptr %i.rk acquire, align 8 ; 2 uses
  %i.rm = icmp eq i64 %i.rl, 4294967297
  %i.rn = trunc i64 %i.rl to i32                  ; 2 uses
  br i1 %i.rm, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  store i32 0, ptr %i.rk, align 8, !tbaa !62
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rj, i64 12
  store i32 0, ptr %i.ro, align 4, !tbaa !64
  %i.rp = load ptr, ptr %i.rj, align 8, !tbaa !33
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  %i.rr = load ptr, ptr %i.rq, align 8
  call void %i.rr(ptr noundef nonnull align 8 dereferenceable(16) %i.rj) #27, !inline_history !365
  %i.rs = load ptr, ptr %i.rj, align 8, !tbaa !33
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 24
  %i.ru = load ptr, ptr %i.rt, align 8
  call void %i.ru(ptr noundef nonnull align 8 dereferenceable(16) %i.rj) #27, !inline_history !365
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5TableEEEvPT_.exit.i.i.i

bb.es:                                            ; preds = %bb.eq
  %i.rv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i230 = icmp eq i8 %i.rv, 0
  br i1 %.not.i.i.i.i.i.i.i.i230, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.rw = add nsw i32 %i.rn, -1
  store i32 %i.rw, ptr %i.rk, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i231

bb.eu:                                            ; preds = %bb.es
  %i.rx = atomicrmw volatile add ptr %i.rk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i231

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i231: ; preds = %bb.eu, %bb.et
  %.0.i.i.i.i.i.i.i.i.i232 = phi i32 [ %i.rn, %bb.et ], [ %i.rx, %bb.eu ]
  %i.ry = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i232, 1
  br i1 %i.ry, label %bb.ev, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5TableEEEvPT_.exit.i.i.i, !prof !66

bb.ev:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i231
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rj) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5TableEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5TableEEEvPT_.exit.i.i.i: ; preds = %bb.ev, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i231, %bb.er, %.lr.ph.i.i.i227
  %i.rz = getelementptr inbounds nuw i8, ptr %.05.i.i.i228, i64 16 ; 2 uses
  %.not.i.i.i233 = icmp eq ptr %i.rz, %i.rh
  br i1 %.not.i.i.i233, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i227, !llvm.loop !366

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5TableEEEvPT_.exit.i.i.i
  %.pr.i234 = load ptr, ptr %6, align 8, !tbaa !310
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.ep
  %i.sa = phi ptr [ %.pr.i234, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.rg, %bb.ep ] ; 3 uses
  %.not.i.i1.i235 = icmp eq ptr %i.sa, null
  br i1 %.not.i.i1.i235, label %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EED2Ev.exit, label %bb.ew

bb.ew:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exit.i
  %i.sb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !326
  %i.sd = ptrtoint ptr %i.sc to i64
  %i.se = ptrtoint ptr %i.sa to i64
  %i.sf = sub i64 %i.sd, %i.se
  call void @_ZdlPvm(ptr noundef nonnull %i.sa, i64 noundef %i.sf) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exit.i, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.ey

bb.ex:                                            ; preds = %bb.eo, %bb.cn, %bb.bp
  %.pn91.pn = phi { ptr, i32 } [ %.pn91, %bb.bp ], [ %.pn85.pn.pn.pn.pn, %bb.eo ], [ %.pn.pn.pn, %bb.cn ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  resume { ptr, i32 } %.pn91.pn

bb.ey:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

declare void @_ZN5arrow12UnifySchemasERKSt6vectorISt10shared_ptrINS_6SchemaEESaIS3_EENS_5Field12MergeOptionsE(ptr dead_on_unwind writable sret(%"class.arrow::Result.96") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow20PromoteTableToSchemaERKSt10shared_ptrINS_5TableEERKS0_INS_6SchemaEEPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr noundef %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::compute::CastOptions", align 8 ; 10 uses
  %5 = alloca %"struct.arrow::TypeHolder", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN5arrow7compute11CastOptionsC1Eb(ptr noundef nonnull align 8 dereferenceable(46) %4, i1 noundef zeroext true)
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !370, !alias.scope !367
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !noalias !367
  store ptr null, ptr %i.b, align 8, !tbaa !372, !alias.scope !367
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52, !alias.scope !367 ; 8 uses
  store ptr null, ptr %i.e, align 8, !tbaa !52, !alias.scope !367
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !64
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #27, !inline_history !373
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #27, !inline_history !373
  br label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61, !noalias !367
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
  br i1 %i.u, label %bb.g, label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #27
  br label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit

_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.noexc
  invoke void @_ZN5arrow20PromoteTableToSchemaERKSt10shared_ptrINS_5TableEERKS0_INS_6SchemaEERKNS_7compute11CastOptionsEPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(46) %4, ptr noundef %3)
          to label %bb.h unwind label %bb.v

bb.h:                                             ; preds = %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute11CastOptionsE, i64 16), ptr %4, align 8, !tbaa !33
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !52   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow7compute11CastOptionsD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.w, align 8, !tbaa !62
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !64
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #27, !inline_history !374
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #27, !inline_history !374
  br label %_ZN5arrow7compute11CastOptionsD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.l
end_hunk_1
