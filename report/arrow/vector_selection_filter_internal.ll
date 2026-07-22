inline.NumInlined: 4369
inline.NumDeleted: 1949
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN5arrow7compute8FunctionD2Ev:bb.a
  %i.ah = add i64 %i.ag, 1
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #30
  br label %_ZN5arrow7compute11FunctionDocD2Ev.exit

_ZN5arrow7compute11FunctionDocD2Ev.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !330 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow7compute11FunctionDocD2Ev.exit
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !67
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow7compute11FunctionDocD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_118FilterMetaFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN5arrow7compute8FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5arrow7compute12MetaFunction11num_kernelsEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 0
}

declare void @_ZNK5arrow7compute8Function13DispatchExactERKSt6vectorINS_10TypeHolderESaIS3_EE() unnamed_addr

declare void @_ZNK5arrow7compute8Function12DispatchBestEPSt6vectorINS_10TypeHolderESaIS3_EE() unnamed_addr

declare void @_ZNK5arrow7compute8Function15GetBestExecutorESt6vectorINS_10TypeHolderESaIS3_EE() unnamed_addr

declare void @_ZNK5arrow7compute12MetaFunction7ExecuteERKSt6vectorINS_5DatumESaIS3_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.208") align 8, ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZNK5arrow7compute12MetaFunction7ExecuteERKNS0_9ExecBatchEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.208") align 8, ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZNK5arrow7compute8Function8ValidateEv(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(192)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5arrow7compute8Function7is_pureEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK5arrow7compute8internal12_GLOBAL__N_118FilterMetaFunction11ExecuteImplERKSt6vectorINS_5DatumESaIS5_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.208") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.214, align 1            ; 3 uses
  %6 = alloca %class.anon.214, align 1            ; 3 uses
  %7 = alloca %class.anon.214, align 1            ; 3 uses
  %8 = alloca %class.anon.214, align 1            ; 3 uses
  %9 = alloca %class.anon.214, align 1            ; 3 uses
  %10 = alloca %"class.std::vector.344", align 8  ; 6 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %12 = alloca %"class.std::shared_ptr.195", align 16 ; 7 uses
  %13 = alloca %"class.std::shared_ptr.298", align 16 ; 6 uses
  %14 = alloca %"class.std::vector.339", align 8  ; 10 uses
  %15 = alloca %"class.std::vector.344", align 8  ; 16 uses
  %16 = alloca %"class.std::shared_ptr.183", align 8 ; 7 uses
  %17 = alloca %"class.std::shared_ptr.161", align 16 ; 10 uses
  %18 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %19 = alloca %"class.std::vector.344", align 8  ; 9 uses
  %20 = alloca %"class.std::vector.344", align 8  ; 11 uses
  %21 = alloca %"class.arrow::Result.234", align 8 ; 12 uses
  %22 = alloca %"struct.arrow::ArraySpan", align 8 ; 12 uses
  %23 = alloca %"class.std::shared_ptr", align 8  ; 7 uses
  %24 = alloca %"struct.arrow::Datum", align 8    ; 9 uses
  %25 = alloca %"class.arrow::Result.208", align 8 ; 13 uses
  %26 = alloca %"struct.arrow::Datum", align 8    ; 7 uses
  %27 = alloca %"class.arrow::compute::TakeOptions", align 8 ; 5 uses
  %28 = alloca %"struct.arrow::Datum", align 16   ; 8 uses
  %29 = alloca %"class.std::shared_ptr.161", align 16 ; 9 uses
  %30 = alloca %"class.std::vector.339", align 8  ; 15 uses
  %31 = alloca %"class.std::shared_ptr.183", align 8 ; 7 uses
  %32 = alloca %"class.std::shared_ptr.195", align 16 ; 7 uses
  %33 = alloca %"class.std::shared_ptr.298", align 16 ; 6 uses
  %34 = alloca %"class.std::vector.339", align 8  ; 9 uses
  %35 = alloca %class.anon.214, align 1           ; 3 uses
  %36 = alloca %class.anon.214, align 1           ; 3 uses
  %37 = alloca %class.anon.214, align 1           ; 3 uses
  %38 = alloca %class.anon.214, align 1           ; 3 uses
  %39 = alloca %class.anon.214, align 1           ; 3 uses
  %40 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %41 = alloca %"struct.arrow::ArrayData", align 8 ; 9 uses
  %42 = alloca %"class.arrow::Result.315", align 8 ; 13 uses
  %43 = alloca %"class.std::shared_ptr.161", align 8 ; 6 uses
  %44 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %45 = alloca %"class.arrow::Result.234", align 8 ; 13 uses
  %46 = alloca %"struct.arrow::ArraySpan", align 8 ; 13 uses
  %47 = alloca %"class.std::shared_ptr", align 16 ; 8 uses
  %48 = alloca %"class.std::vector.319", align 16 ; 13 uses
  %49 = alloca %"class.arrow::Result.208", align 8 ; 13 uses
  %50 = alloca %"struct.arrow::Datum", align 8    ; 9 uses
  %51 = alloca %"class.std::shared_ptr", align 8  ; 7 uses
  %52 = alloca %"class.std::shared_ptr.161", align 8 ; 7 uses
  %53 = alloca %"struct.arrow::Datum", align 8    ; 9 uses
  %54 = alloca %"class.std::shared_ptr", align 8  ; 7 uses
  %55 = alloca %"class.arrow::compute::TakeOptions", align 8 ; 5 uses
  %56 = alloca %"struct.arrow::Datum", align 16   ; 8 uses
  %57 = alloca %"class.std::shared_ptr.161", align 16 ; 7 uses
  %58 = alloca %"class.std::shared_ptr.189", align 16 ; 7 uses
  %59 = alloca %"class.std::shared_ptr.298", align 16 ; 6 uses
  %60 = alloca %"class.std::vector.319", align 16 ; 9 uses
  %61 = alloca %"class.std::shared_ptr.331", align 8 ; 6 uses
  %62 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %63 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %64 = alloca %"class.arrow::Result.294", align 8 ; 19 uses
  %65 = alloca %"class.std::shared_ptr.189", align 8 ; 6 uses
  %66 = alloca %"struct.arrow::Datum", align 16   ; 9 uses
  %67 = alloca %"class.std::shared_ptr.189", align 8 ; 4 uses
  %68 = alloca %"class.arrow::Result.301", align 8 ; 20 uses
  %69 = alloca %"class.std::shared_ptr.195", align 8 ; 6 uses
  %70 = alloca %"struct.arrow::Datum", align 16   ; 9 uses
  %71 = alloca %"class.std::shared_ptr.195", align 8 ; 4 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !834    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i8, ptr %i.b, align 8, !tbaa !508
  %i.d = and i8 %i.c, -2
  %switch = icmp eq i8 %i.d, 2
  br i1 %switch, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #26
  call void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %62, i8 noundef signext 3, ptr noundef nonnull align 1 dereferenceable(28) @.str.11)
  call void @_ZN5arrow6ResultINS_5DatumEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %62) #26
  %i.e = load ptr, ptr %62, align 8, !tbaa !106   ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c, !prof !132

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !402, !range !130, !noundef !131
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %62) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #26
  br label %bb.oi

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.j = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.i)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !356  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !42
  switch i32 %i.m, label %bb.g [
    i32 38, label %bb.f
    i32 1, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !837
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !838
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !356
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !42
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #26
  call void @_ZN5arrow6Status8FromArgsIJRA37_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %63, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(37) @.str.12)
  call void @_ZN5arrow6ResultINS_5DatumEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %63) #26
  %i.w = load ptr, ptr %63, align 8, !tbaa !106   ; 2 uses
  %.not.i44 = icmp eq ptr %i.w, null
  br i1 %.not.i44, label %_ZN5arrow6StatusD2Ev.exit45, label %bb.h, !prof !132

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !402, !range !130, !noundef !131
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_ZN5arrow6StatusD2Ev.exit45, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %63) #26
  br label %_ZN5arrow6StatusD2Ev.exit45

_ZN5arrow6StatusD2Ev.exit45:                      ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #26
  br label %bb.oi

bb.j:                                             ; preds = %bb.e, %bb.f
  %i.aa = load ptr, ptr %2, align 8, !tbaa !834   ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !508 ; 3 uses
  %switch.tableidx.i46 = add i8 %i.ac, -1         ; 2 uses
  %i.ad = icmp ult i8 %switch.tableidx.i46, 5
  %switch.idx.cast.i47 = zext i8 %switch.tableidx.i46 to i32
  %switch.offset.i48 = add nuw nsw i32 %switch.idx.cast.i47, 1
  %.0.i49 = select i1 %i.ad, i32 %switch.offset.i48, i32 0
  switch i32 %.0.i49, label %._crit_edge.i.i [
    i32 4, label %bb.k
    i32 5, label %bb.gg
  ]

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #26
  %.not.i.i.i = icmp eq i8 %i.ac, 4
  br i1 %.not.i.i.i, label %_ZNK5arrow5Datum12record_batchEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ae, align 8, !tbaa !96
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @.str.6, ptr %i.af, align 8, !tbaa !98
  tail call void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #28
  unreachable

_ZNK5arrow5Datum12record_batchEv.exit:            ; preds = %bb.k
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !723 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !841)
  call void @llvm.lifetime.start.p0(ptr nonnull %51)
  call void @llvm.lifetime.start.p0(ptr nonnull %54)
  call void @llvm.lifetime.start.p0(ptr nonnull %59)
  call void @llvm.lifetime.start.p0(ptr nonnull %60)
  call void @llvm.lifetime.start.p0(ptr nonnull %61)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !844, !noalias !841
  %i.ak = tail call noundef i64 @_ZNK5arrow5Datum6lengthEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ah), !noalias !841
  %.not.i50 = icmp eq i64 %i.aj, %i.ak
  br i1 %.not.i50, label %bb.p, label %bb.m

bb.m:                                             ; preds = %_ZNK5arrow5Datum12record_batchEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #26, !noalias !841
  call void @_ZN5arrow6Status8FromArgsIJRA42_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %40, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(42) @.str.19)
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %64, ptr noundef nonnull align 8 dereferenceable(8) %40) #26
  %i.al = load ptr, ptr %40, align 8, !tbaa !106, !noalias !841 ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.n, !prof !132

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !402, !range !130, !noundef !131
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %40) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.o, %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #26, !noalias !841
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117FilterRecordBatchERKNS_11RecordBatchERKNS_5DatumEPKNS0_15FunctionOptionsEPNS0_11ExecContextE.exit

bb.p:                                             ; preds = %_ZNK5arrow5Datum12record_batchEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #26, !noalias !841
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %41, i8 0, i64 120, i1 false), !noalias !841
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !508, !noalias !841 ; 3 uses
  %switch.tableidx.i.i = add i8 %i.aq, -1         ; 2 uses
  %i.ar = icmp ult i8 %switch.tableidx.i.i, 5
  %switch.idx.cast.i.i = zext i8 %switch.tableidx.i.i to i32
  %switch.offset.i.i = add nuw nsw i32 %switch.idx.cast.i.i, 1
  %.0.i.i = select i1 %i.ar, i32 %switch.offset.i.i, i32 0
  switch i32 %.0.i.i, label %bb.ar [
    i32 2, label %bb.q
    i32 3, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p
  %.not.i.i.i.i = icmp eq i8 %i.aq, 2
  br i1 %.not.i.i.i.i, label %_ZNK5arrow5Datum5arrayEv.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.as, align 8, !tbaa !96
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr @.str.6, ptr %i.at, align 8, !tbaa !98
  invoke void @__cxa_throw(ptr nonnull %i.as, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #28
          to label %.noexc.i unwind label %bb.s

.noexc.i:                                         ; preds = %bb.r
  unreachable

_ZNK5arrow5Datum5arrayEv.exit.i:                  ; preds = %bb.q
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !101, !noalias !841
  %i.av = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZN5arrow9ArrayDataaSERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %41, ptr noundef nonnull align 8 dereferenceable(120) %i.au)
          to label %bb.av unwind label %bb.s      ; 0 uses

bb.s:                                             ; preds = %_ZNK5arrow5Datum5arrayEv.exit.i, %bb.r
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #26, !noalias !841
  %.not.i.i.i64.i = icmp eq i8 %i.aq, 3
  br i1 %.not.i.i.i64.i, label %_ZNK5arrow5Datum13chunked_arrayEv.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ax = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ax, align 8, !tbaa !96
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr @.str.6, ptr %i.ay, align 8, !tbaa !98
  invoke void @__cxa_throw(ptr nonnull %i.ax, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #28
          to label %.noexc65.i unwind label %bb.y

.noexc65.i:                                       ; preds = %bb.u
  unreachable

_ZNK5arrow5Datum13chunked_arrayEv.exit.i:         ; preds = %bb.t
  %i.az = load ptr, ptr %i.ah, align 8, !tbaa !719, !noalias !841
  %i.ba = invoke noundef ptr @_ZN5arrow19default_memory_poolEv()
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit.i
  invoke void @_ZN5arrow11ConcatenateERKSt6vectorISt10shared_ptrINS_5ArrayEESaIS3_EEPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.315") align 8 %42, ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef %i.ba)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bb = load ptr, ptr %42, align 8, !tbaa !106, !noalias !841
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  br i1 %i.bc, label %bb.z, label %bb.x, !prof !132

bb.x:                                             ; preds = %bb.w
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %64, ptr noundef nonnull align 8 dereferenceable(8) %42) #26
  br label %bb.ai

bb.y:                                             ; preds = %bb.v, %_ZNK5arrow5Datum13chunked_arrayEv.exit.i, %bb.u
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #26, !noalias !841
  call void @llvm.experimental.noalias.scope.decl(metadata !849)
  call void @llvm.experimental.noalias.scope.decl(metadata !852)
  %i.be = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !855, !noalias !858 ; 2 uses
  store ptr %i.bf, ptr %43, align 8, !tbaa !855, !alias.scope !859, !noalias !841
  %i.bg = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !352, !noalias !858 ; 9 uses
  store ptr null, ptr %i.bh, align 8, !tbaa !352, !noalias !858
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !352, !alias.scope !859, !noalias !841
  store ptr null, ptr %i.be, align 8, !tbaa !855, !noalias !858
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !101
  %i.bl = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZN5arrow9ArrayDataaSERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %41, ptr noundef nonnull align 8 dereferenceable(120) %i.bk)
          to label %bb.aa unwind label %bb.ah     ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %.not.i.i.i51 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i51, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.bm, align 8, !tbaa !357
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !359
  %i.br = load ptr, ptr %i.bi, align 8, !tbaa !96
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #26, !inline_history !860
  %i.bu = load ptr, ptr %i.bi, align 8, !tbaa !96
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #26, !inline_history !860
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67, !noalias !841
  %.not.i.i.i66.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i66.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i = phi i32 [ %i.bp, %bb.ae ], [ %i.bz, %bb.af ]
  %i.ca = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ca, label %bb.ag, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !66

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #26
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ac, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #26, !noalias !841
  br label %bb.ai

bb.ah:                                            ; preds = %bb.z
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %43) #26
end_hunk_0
begin_hunk_1_@_ZNK5arrow7compute8internal12_GLOBAL__N_118FilterMetaFunction11ExecuteImplERKSt6vectorINS_5DatumESaIS5_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE:bb.a

bb.fj:                                            ; preds = %_ZN5arrow6ResultINS_5DatumEEC2EOS1_.exit
  %i.pv = landingpad { ptr, i32 }
          catch ptr null
  %i.pw = extractvalue { ptr, i32 } %i.pv, 0
  call void @__clang_call_terminate(ptr %i.pw) #27
  unreachable

_ZN5arrow5DatumD2Ev.exit:                         ; preds = %_ZN5arrow6ResultINS_5DatumEEC2EOS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  %i.px = load ptr, ptr %i.pi, align 8, !tbaa !352 ; 8 uses
  %.not.i.i55 = icmp eq ptr %i.px, null
  br i1 %.not.i.i55, label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.fk

bb.fk:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 8 ; 4 uses
  %i.pz = load atomic i64, ptr %i.py acquire, align 8 ; 2 uses
  %i.qa = icmp eq i64 %i.pz, 4294967297
  %i.qb = trunc i64 %i.pz to i32                  ; 2 uses
  br i1 %i.qa, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  store i32 0, ptr %i.py, align 8, !tbaa !357
  %i.qc = getelementptr inbounds nuw i8, ptr %i.px, i64 12
  store i32 0, ptr %i.qc, align 4, !tbaa !359
  %i.qd = load ptr, ptr %i.px, align 8, !tbaa !96
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %i.qf = load ptr, ptr %i.qe, align 8
  call void %i.qf(ptr noundef nonnull align 8 dereferenceable(16) %i.px) #26, !inline_history !899
  %i.qg = load ptr, ptr %i.px, align 8, !tbaa !96
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 24
  %i.qi = load ptr, ptr %i.qh, align 8
  call void %i.qi(ptr noundef nonnull align 8 dereferenceable(16) %i.px) #26, !inline_history !899
  br label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.fm:                                            ; preds = %bb.fk
  %i.qj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i56 = icmp eq i8 %i.qj, 0
  br i1 %.not.i.i.i56, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.qk = add nsw i32 %i.qb, -1
  store i32 %i.qk, ptr %i.py, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.fo:                                            ; preds = %bb.fm
  %i.ql = atomicrmw volatile add ptr %i.py, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.fo, %bb.fn
  %.0.i.i.i.i = phi i32 [ %i.qb, %bb.fn ], [ %i.ql, %bb.fo ]
  %i.qm = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.qm, label %bb.fp, label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.fp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.px) #26
  br label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow5DatumD2Ev.exit, %bb.fl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #26
  %i.qn = load ptr, ptr %i.pf, align 8, !tbaa !352 ; 8 uses
  %.not.i.i57 = icmp eq ptr %i.qn, null
  br i1 %.not.i.i57, label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61, label %bb.fq

bb.fq:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 8 ; 4 uses
  %i.qp = load atomic i64, ptr %i.qo acquire, align 8 ; 2 uses
  %i.qq = icmp eq i64 %i.qp, 4294967297
  %i.qr = trunc i64 %i.qp to i32                  ; 2 uses
  br i1 %i.qq, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  store i32 0, ptr %i.qo, align 8, !tbaa !357
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qn, i64 12
  store i32 0, ptr %i.qs, align 4, !tbaa !359
  %i.qt = load ptr, ptr %i.qn, align 8, !tbaa !96
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 16
  %i.qv = load ptr, ptr %i.qu, align 8
  call void %i.qv(ptr noundef nonnull align 8 dereferenceable(16) %i.qn) #26, !inline_history !899
  %i.qw = load ptr, ptr %i.qn, align 8, !tbaa !96
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 24
  %i.qy = load ptr, ptr %i.qx, align 8
  call void %i.qy(ptr noundef nonnull align 8 dereferenceable(16) %i.qn) #26, !inline_history !899
  br label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61

bb.fs:                                            ; preds = %bb.fq
  %i.qz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i58 = icmp eq i8 %i.qz, 0
  br i1 %.not.i.i.i58, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.ra = add nsw i32 %i.qr, -1
  store i32 %i.ra, ptr %i.qo, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59

bb.fu:                                            ; preds = %bb.fs
  %i.rb = atomicrmw volatile add ptr %i.qo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59: ; preds = %bb.fu, %bb.ft
  %.0.i.i.i.i60 = phi i32 [ %i.qr, %bb.ft ], [ %i.rb, %bb.fu ]
  %i.rc = icmp eq i32 %.0.i.i.i.i60, 1
  br i1 %i.rc, label %bb.fv, label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61, !prof !66

bb.fv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qn) #26
  br label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61

_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61: ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.fr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59, %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #26
  br label %bb.fx

bb.fw:                                            ; preds = %_ZNSt10shared_ptrIN5arrow11RecordBatchEEC2ERKS2_.exit
  %i.rd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %67) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #26
  call void @_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %65) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #26
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %64) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #26
  br label %common.resume

bb.fx:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61, %bb.fd
  %i.re = load ptr, ptr %64, align 8, !tbaa !106  ; 2 uses
  %i.rf = icmp eq ptr %i.re, null
  br i1 %i.rf, label %bb.fy, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i, !prof !132

bb.fy:                                            ; preds = %bb.fx
  %i.rg = getelementptr inbounds nuw i8, ptr %64, i64 16
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !352 ; 8 uses
  %.not.i.i.i.i.i63 = icmp eq ptr %i.rh, null
  br i1 %.not.i.i.i.i.i63, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8 ; 4 uses
  %i.rj = load atomic i64, ptr %i.ri acquire, align 8 ; 2 uses
  %i.rk = icmp eq i64 %i.rj, 4294967297
  %i.rl = trunc i64 %i.rj to i32                  ; 2 uses
  br i1 %i.rk, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  store i32 0, ptr %i.ri, align 8, !tbaa !357
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rh, i64 12
  store i32 0, ptr %i.rm, align 4, !tbaa !359
  %i.rn = load ptr, ptr %i.rh, align 8, !tbaa !96
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  %i.rp = load ptr, ptr %i.ro, align 8
  call void %i.rp(ptr noundef nonnull align 8 dereferenceable(16) %i.rh) #26, !inline_history !900
  %i.rq = load ptr, ptr %i.rh, align 8, !tbaa !96
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 24
  %i.rs = load ptr, ptr %i.rr, align 8
  call void %i.rs(ptr noundef nonnull align 8 dereferenceable(16) %i.rh) #26, !inline_history !900
  br label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i

bb.gb:                                            ; preds = %bb.fz
  %i.rt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i.i.i64 = icmp eq i8 %i.rt, 0
  br i1 %.not.i.i.i.i.i.i64, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.ru = add nsw i32 %i.rl, -1
  store i32 %i.ru, ptr %i.ri, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i65

bb.gd:                                            ; preds = %bb.gb
  %i.rv = atomicrmw volatile add ptr %i.ri, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i65

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i65: ; preds = %bb.gd, %bb.gc
  %.0.i.i.i.i.i.i.i66 = phi i32 [ %i.rl, %bb.gc ], [ %i.rv, %bb.gd ]
  %i.rw = icmp eq i32 %.0.i.i.i.i.i.i.i66, 1
  br i1 %i.rw, label %bb.ge, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i, !prof !66

bb.ge:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i65
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rh) #26
  br label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i: ; preds = %bb.ge, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i65, %bb.ga, %bb.fy
  %.pr.i = load ptr, ptr %64, align 8, !tbaa !106 ; 2 uses
  %.not.i.i67 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i67, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i, !prof !456

_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i, %bb.fx
  %i.rx = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i ], [ %i.re, %bb.fx ]
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 1
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !402, !range !130, !noundef !131
  %i.sa = trunc nuw i8 %i.rz to i1
  br i1 %i.sa, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit, label %bb.gf

bb.gf:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %64) #26
  br label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i, %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #26
  br label %bb.oi

bb.gg:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #26
  %.not.i.i.i72 = icmp eq i8 %i.ac, 5
  br i1 %.not.i.i.i72, label %_ZNK5arrow5Datum5tableEv.exit, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.sb = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.sb, align 8, !tbaa !96
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  store ptr @.str.6, ptr %i.sc, align 8, !tbaa !98
  tail call void @__cxa_throw(ptr nonnull %i.sb, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #28
  unreachable

_ZNK5arrow5Datum5tableEv.exit:                    ; preds = %bb.gg
  %i.sd = load ptr, ptr %i.aa, align 8, !tbaa !727 ; 11 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !901)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  call void @llvm.lifetime.start.p0(ptr nonnull %34)
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sd, i64 24 ; 2 uses
  %i.sg = load i64, ptr %i.sf, align 8, !tbaa !904, !noalias !901
  %i.sh = tail call noundef i64 @_ZNK5arrow5Datum6lengthEv(ptr noundef nonnull align 8 dereferenceable(24) %i.se), !noalias !901
  %.not.i73 = icmp eq i64 %i.sg, %i.sh
  br i1 %.not.i73, label %bb.gl, label %bb.gi

bb.gi:                                            ; preds = %_ZNK5arrow5Datum5tableEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26, !noalias !901
  call void @_ZN5arrow6Status8FromArgsIJRA42_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %11, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(42) @.str.19)
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(8) %11) #26
  %i.si = load ptr, ptr %11, align 8, !tbaa !106, !noalias !901 ; 2 uses
  %.not.i.i74 = icmp eq ptr %i.si, null
  br i1 %.not.i.i74, label %_ZN5arrow6StatusD2Ev.exit.i75, label %bb.gj, !prof !132

bb.gj:                                            ; preds = %bb.gi
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 1
  %i.sk = load i8, ptr %i.sj, align 1, !tbaa !402, !range !130, !noundef !131
  %i.sl = trunc nuw i8 %i.sk to i1
  br i1 %i.sl, label %_ZN5arrow6StatusD2Ev.exit.i75, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i75

_ZN5arrow6StatusD2Ev.exit.i75:                    ; preds = %bb.gk, %bb.gj, %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26, !noalias !901
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_111FilterTableERKNS_5TableERKNS_5DatumEPKNS0_15FunctionOptionsEPNS0_11ExecContextE.exit

bb.gl:                                            ; preds = %_ZNK5arrow5Datum5tableEv.exit
  %i.sm = load i64, ptr %i.sf, align 8, !tbaa !904, !noalias !901
  %i.sn = icmp eq i64 %i.sm, 0
  br i1 %i.sn, label %bb.gm, label %bb.hl

bb.gm:                                            ; preds = %bb.gl
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26, !noalias !901
  %i.so = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  %i.sp = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sd, i64 16
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !352, !noalias !901 ; 2 uses
  %i.ss = load <2 x ptr>, ptr %i.so, align 8, !tbaa !351, !noalias !901
  store <2 x ptr> %i.ss, ptr %13, align 16, !tbaa !351, !noalias !901
  %.not.i.i.i.i114 = icmp eq ptr %i.sr, null
  br i1 %.not.i.i.i.i114, label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i116, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.st = getelementptr inbounds nuw i8, ptr %i.sr, i64 8 ; 3 uses
  %i.su = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67, !noalias !901
  %.not.i.i.i.i.i115 = icmp eq i8 %i.su, 0
  br i1 %.not.i.i.i.i.i115, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.sv = load i32, ptr %i.st, align 4, !tbaa !3
  %i.sw = add nsw i32 %i.sv, 1
  store i32 %i.sw, ptr %i.st, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i116

bb.gp:                                            ; preds = %bb.gn
  %i.sx = atomicrmw volatile add ptr %i.st, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i116

_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i116: ; preds = %bb.gp, %bb.go, %bb.gm
  %i.sy = load ptr, ptr %i.sd, align 8, !tbaa !96, !noalias !901
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 24
  %i.ta = load ptr, ptr %i.sz, align 8
  %i.tb = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.ta(ptr noundef nonnull align 8 dereferenceable(32) %i.sd)
          to label %bb.gq unwind label %bb.hi     ; 3 uses

bb.gq:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i116
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 8 ; 2 uses
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !906 ; 3 uses
  %i.te = load ptr, ptr %i.tb, align 8, !tbaa !909 ; 3 uses
  %i.tf = ptrtoint ptr %i.td to i64
  %i.tg = ptrtoint ptr %i.te to i64
  %i.th = sub i64 %i.tf, %i.tg                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false), !noalias !901
  %.not.i.i.i.i122.i = icmp eq ptr %i.td, %i.te
  br i1 %.not.i.i.i.i122.i, label %.noexc123.i, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.ti = icmp ugt i64 %i.th, 9223372036854775792
  br i1 %i.ti, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !66

.noexc.i.i.i:                                     ; preds = %bb.gr
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #28
          to label %.noexc.i130 unwind label %bb.hi

.noexc.i130:                                      ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.gr
  %i.tj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.th) #29
          to label %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i..noexc123_crit_edge.i unwind label %bb.hi

_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i..noexc123_crit_edge.i: ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre.i117 = load ptr, ptr %i.tb, align 8, !tbaa !910
  %.pre318.i = load ptr, ptr %i.tc, align 8, !tbaa !910
  br label %.noexc123.i

.noexc123.i:                                      ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i..noexc123_crit_edge.i, %bb.gq
  %i.tk = phi ptr [ %i.td, %bb.gq ], [ %.pre318.i, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i..noexc123_crit_edge.i ] ; 2 uses
  %i.tl = phi ptr [ %i.te, %bb.gq ], [ %.pre.i117, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i..noexc123_crit_edge.i ] ; 2 uses
  %i.tm = phi ptr [ null, %bb.gq ], [ %i.tj, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i..noexc123_crit_edge.i ] ; 5 uses
  store ptr %i.tm, ptr %14, align 8, !tbaa !909, !noalias !901
  %i.tn = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  store ptr %i.tm, ptr %i.tn, align 8, !tbaa !906, !noalias !901
  %i.to = getelementptr inbounds nuw i8, ptr %i.tm, i64 %i.th
  %i.tp = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %i.to, ptr %i.tp, align 8, !tbaa !911, !noalias !901
  %i.tq = icmp eq ptr %i.tl, %i.tk
  br i1 %i.tq, label %.loopexit.i118, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc123.i, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.ua, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.tm, %.noexc123.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.tz, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.tl, %.noexc123.i ] ; 3 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 8
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !352 ; 2 uses
  %i.tt = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i.i, align 8, !tbaa !351
  store <2 x ptr> %i.tt, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !351
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ts, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.gs

bb.gs:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ts, i64 8 ; 3 uses
  %i.tv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67, !noalias !901
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.tv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.tw = load i32, ptr %i.tu, align 4, !tbaa !3
  %i.tx = add nsw i32 %i.tw, 1
  store i32 %i.tx, ptr %i.tu, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.gu:                                            ; preds = %bb.gs
  %i.ty = atomicrmw volatile add ptr %i.tu, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.gu, %bb.gt, %.lr.ph.i.i.i.i.i.i
  %i.tz = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ub = icmp eq ptr %i.tz, %i.tk
  br i1 %i.ub, label %.loopexit.i118, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !912

.loopexit.i118:                                   ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %.noexc123.i
  %.0.lcssa.i.i.i.i.i.i119 = phi ptr [ %i.tm, %.noexc123.i ], [ %i.ua, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i119, ptr %i.tn, align 8, !tbaa !906, !noalias !901
  invoke void @_ZN5arrow5Table4MakeESt10shared_ptrINS_6SchemaEESt6vectorIS1_INS_12ChunkedArrayEESaIS6_EEl(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.195") align 8 %12, ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 0)
          to label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i unwind label %bb.hj

_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %.loopexit.i118
  store ptr null, ptr %68, align 8, !tbaa !106, !alias.scope !901
  %i.uc = getelementptr inbounds nuw i8, ptr %68, i64 8
  %i.ud = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ue = load <2 x ptr>, ptr %12, align 16, !tbaa !351, !noalias !901
  store ptr null, ptr %i.ud, align 8, !tbaa !352, !noalias !901
  store <2 x ptr> %i.ue, ptr %i.uc, align 8, !tbaa !351, !alias.scope !901
  store ptr null, ptr %12, align 16, !tbaa !727, !noalias !901
  %i.uf = load ptr, ptr %14, align 8, !tbaa !909, !noalias !901 ; 3 uses
  %i.ug = load ptr, ptr %i.tn, align 8, !tbaa !906, !noalias !901 ; 2 uses
  %.not4.i.i.i.i120 = icmp eq ptr %i.uf, %i.ug
  br i1 %.not4.i.i.i.i120, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i121

.lr.ph.i.i.i.i121:                                ; preds = %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i122 = phi ptr [ %i.uy, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i.i ], [ %i.uf, %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i122, i64 8
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !352 ; 8 uses
  %.not.i.i.i.i.i.i.i.i123 = icmp eq ptr %i.ui, null
  br i1 %.not.i.i.i.i.i.i.i.i123, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i.i, label %bb.gv

bb.gv:                                            ; preds = %.lr.ph.i.i.i.i121
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 8 ; 4 uses
  %i.uk = load atomic i64, ptr %i.uj acquire, align 8 ; 2 uses
  %i.ul = icmp eq i64 %i.uk, 4294967297
  %i.um = trunc i64 %i.uk to i32                  ; 2 uses
  br i1 %i.ul, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  store i32 0, ptr %i.uj, align 8, !tbaa !357
  %i.un = getelementptr inbounds nuw i8, ptr %i.ui, i64 12
  store i32 0, ptr %i.un, align 4, !tbaa !359
  %i.uo = load ptr, ptr %i.ui, align 8, !tbaa !96
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
end_hunk_1
