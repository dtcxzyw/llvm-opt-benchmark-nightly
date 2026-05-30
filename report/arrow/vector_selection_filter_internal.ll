inline.NumInlined: 4369
inline.NumDeleted: 1949
begin_hunk_0_@_ZN5arrow7compute12MetaFunctionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ArityENS0_11FunctionDocEPKNS0_15FunctionOptionsE:bb.a
  store ptr %i.aj, ptr %i.cf, align 8, !tbaa !330
  %i.ck = load i64, ptr %i.aa, align 8, !tbaa !67
  store i64 %i.ck, ptr %i.cg, align 8, !tbaa !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i, %bb.h
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.ak, ptr %i.cl, align 8, !tbaa !332
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.ap, ptr %i.cm, align 8, !tbaa !333
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.as, ptr %i.cn, align 8, !tbaa !335
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.av, ptr %i.co, align 8, !tbaa !337
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  store ptr %i.cq, ptr %i.cp, align 8, !tbaa !328
  %i.cr = icmp eq ptr %i.bh, %i.ay
  br i1 %i.cr, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i
  %i.cs = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.cs)
  %i.ct = add nuw nsw i64 %i.bi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cq, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.ct, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i
  store ptr %i.bh, ptr %i.cp, align 8, !tbaa !330
  %i.cu = load i64, ptr %i.ay, align 8, !tbaa !67
  store i64 %i.cu, ptr %i.cq, align 8, !tbaa !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.bi, ptr %i.cv, align 8, !tbaa !332
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 %i.bn, ptr %i.cw, align 8, !tbaa !823
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %4, ptr %i.cx, align 8, !tbaa !833
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5arrow7compute12MetaFunctionE, i64 16), ptr %0, align 8, !tbaa !96
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute8FunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow7compute8FunctionE, i64 16), ptr %0, align 8, !tbaa !96
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !330  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !67
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !333  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !335  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %i.l = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !330 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !67
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !336

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.h, align 8, !tbaa !333
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.r = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !337
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !330  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !67
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !330 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN5arrow7compute11FunctionDocD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !67
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
define internal void @_ZNK5arrow7compute8internal12_GLOBAL__N_118FilterMetaFunction11ExecuteImplERKSt6vectorINS_5DatumESaIS5_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.208") align 8 %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
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
  %23 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %24 = alloca %"struct.arrow::Datum", align 16   ; 8 uses
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
end_hunk_0
begin_hunk_1_@_ZNK5arrow7compute8internal12_GLOBAL__N_118FilterMetaFunction11ExecuteImplERKSt6vectorINS_5DatumESaIS5_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE:bb.a
  %i.yd = load atomic i64, ptr %i.yc acquire, align 8 ; 2 uses
  %i.ye = icmp eq i64 %i.yd, 4294967297
  %i.yf = trunc i64 %i.yd to i32                  ; 2 uses
  br i1 %i.ye, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  store i32 0, ptr %i.yc, align 8, !tbaa !357
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yb, i64 12
  store i32 0, ptr %i.yg, align 4, !tbaa !359
  %i.yh = load ptr, ptr %i.yb, align 8, !tbaa !96
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 16
  %i.yj = load ptr, ptr %i.yi, align 8
  call void %i.yj(ptr noundef nonnull align 8 dereferenceable(16) %i.yb) #26, !inline_history !925
  %i.yk = load ptr, ptr %i.yb, align 8, !tbaa !96
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 24
  %i.ym = load ptr, ptr %i.yl, align 8
  call void %i.ym(ptr noundef nonnull align 8 dereferenceable(16) %i.yb) #26, !inline_history !925
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i112

bb.ih:                                            ; preds = %bb.if
  %i.yn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67, !noalias !901
  %.not.i.i.i141.i = icmp eq i8 %i.yn, 0
  br i1 %.not.i.i.i141.i, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.yo = add nsw i32 %i.yf, -1
  store i32 %i.yo, ptr %i.yc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142.i

bb.ij:                                            ; preds = %bb.ih
  %i.yp = atomicrmw volatile add ptr %i.yc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142.i: ; preds = %bb.ij, %bb.ii
  %.0.i.i.i.i143.i = phi i32 [ %i.yf, %bb.ii ], [ %i.yp, %bb.ij ]
  %i.yq = icmp eq i32 %.0.i.i.i.i143.i, 1
  br i1 %i.yq, label %bb.ik, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i112, !prof !66

bb.ik:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.yb) #26
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i112

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i112: ; preds = %bb.ik, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142.i, %bb.ig, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26, !noalias !901
  br label %bb.iv

bb.il:                                            ; preds = %bb.ib
  %i.yr = landingpad { ptr, i32 }
          cleanup
  br label %bb.in

bb.im:                                            ; preds = %bb.ie
  %i.ys = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #26
  br label %bb.in

bb.in:                                            ; preds = %bb.im, %bb.il
  %.pn.i = phi { ptr, i32 } [ %i.ys, %bb.im ], [ %i.yr, %bb.il ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26, !noalias !901
  br label %bb.nb

bb.io:                                            ; preds = %._crit_edge.i
  %.not.i.i.i144.i = icmp eq i8 %i.wn, 3
  br i1 %.not.i.i.i144.i, label %_ZNK5arrow5Datum13chunked_arrayEv.exit.i84, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.yt = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.yt, align 8, !tbaa !96
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 8
  store ptr @.str.6, ptr %i.yu, align 8, !tbaa !98
  invoke void @__cxa_throw(ptr nonnull %i.yt, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #28
          to label %.noexc145.i unwind label %bb.iq

.noexc145.i:                                      ; preds = %bb.ip
  unreachable

_ZNK5arrow5Datum13chunked_arrayEv.exit.i84:       ; preds = %bb.io
  %i.yv = load ptr, ptr %i.se, align 8, !tbaa !719, !noalias !901
  %i.yw = load ptr, ptr %i.wl, align 8, !tbaa !924, !noalias !901
  %i.yx = getelementptr inbounds i8, ptr %i.yw, i64 -24
  %i.yy = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.yx, ptr noundef nonnull align 8 dereferenceable(24) %i.yv)
          to label %bb.iv unwind label %bb.iq     ; 0 uses

bb.iq:                                            ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit.i84, %bb.ip
  %i.yz = landingpad { ptr, i32 }
          cleanup
  br label %bb.nb

bb.ir:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26, !noalias !901
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %18, i8 noundef signext 3, ptr noundef nonnull align 1 dereferenceable(28) @.str.11)
          to label %_ZN5arrow6Status9TypeErrorIJRA28_KcEEES0_DpOT_.exit.i113 unwind label %bb.iu

_ZN5arrow6Status9TypeErrorIJRA28_KcEEES0_DpOT_.exit.i113: ; preds = %bb.ir
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(8) %18) #26
  %i.za = load ptr, ptr %18, align 8, !tbaa !106, !noalias !901 ; 2 uses
  %.not.i147.i = icmp eq ptr %i.za, null
  br i1 %.not.i147.i, label %_ZN5arrow6StatusD2Ev.exit148.i, label %bb.is, !prof !132

bb.is:                                            ; preds = %_ZN5arrow6Status9TypeErrorIJRA28_KcEEES0_DpOT_.exit.i113
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 1
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !402, !range !130, !noundef !131
  %i.zd = trunc nuw i8 %i.zc to i1
  br i1 %i.zd, label %_ZN5arrow6StatusD2Ev.exit148.i, label %bb.it

bb.it:                                            ; preds = %bb.is
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #26
  br label %_ZN5arrow6StatusD2Ev.exit148.i

_ZN5arrow6StatusD2Ev.exit148.i:                   ; preds = %bb.it, %bb.is, %_ZN5arrow6Status9TypeErrorIJRA28_KcEEES0_DpOT_.exit.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26, !noalias !901
  br label %bb.na

bb.iu:                                            ; preds = %bb.ir
  %i.ze = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26, !noalias !901
  br label %bb.nb

bb.iv:                                            ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit.i84, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i112
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26, !noalias !901
  invoke void @_ZN5arrow8internal25RechunkArraysConsistentlyERKSt6vectorIS1_ISt10shared_ptrINS_5ArrayEESaIS4_EESaIS6_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.344") align 8 %19, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.iw unwind label %bb.iz

bb.iw:                                            ; preds = %bb.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26, !noalias !901
  %i.zf = load ptr, ptr %15, align 8, !tbaa !917, !noalias !901
  %i.zg = load ptr, ptr %i.wl, align 8, !tbaa !921, !noalias !901
  %i.zh = load ptr, ptr %i.wk, align 8, !tbaa !920, !noalias !901
  %i.zi = load ptr, ptr %19, align 8, !tbaa !917, !noalias !901
  store ptr %i.zi, ptr %15, align 8, !tbaa !917, !noalias !901
  %i.zj = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !921, !noalias !901
  store ptr %i.zk, ptr %i.wl, align 8, !tbaa !921, !noalias !901
  %i.zl = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !920, !noalias !901
  store ptr %i.zm, ptr %i.wk, align 8, !tbaa !920, !noalias !901
  %i.zn = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.zo = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.zf, ptr %10, align 8, !tbaa !917, !noalias !901
  store ptr %i.zg, ptr %i.zn, align 8, !tbaa !921, !noalias !901
  store ptr %i.zh, ptr %i.zo, align 8, !tbaa !920, !noalias !901
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false), !noalias !901
  call void @_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26, !noalias !901
  call void @_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26, !noalias !901
  %i.zp = load ptr, ptr %i.wl, align 8, !tbaa !924, !noalias !901 ; 2 uses
  %i.zq = getelementptr inbounds i8, ptr %i.zp, i64 -24
  %i.zr = getelementptr inbounds i8, ptr %i.zp, i64 -16
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !874
  %i.zt = load ptr, ptr %i.zq, align 8, !tbaa !870
  %i.zu = ptrtoint ptr %i.zs to i64
  %i.zv = ptrtoint ptr %i.zt to i64
  %i.zw = sub i64 %i.zu, %i.zv
  %i.zx = ashr exact i64 %i.zw, 4                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26, !noalias !901
  %i.zy = sext i32 %i.vy to i64                   ; 4 uses
  %i.zz = icmp slt i32 %i.vy, 0
  br i1 %i.zz, label %bb.ix, label %_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i149.i

bb.ix:                                            ; preds = %bb.iw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #28
          to label %.noexc156.i unwind label %bb.ja

.noexc156.i:                                      ; preds = %bb.ix
  unreachable

_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i149.i: ; preds = %bb.iw
  store i64 0, ptr %20, align 8, !noalias !901
  %.not.i.i.i.i150.i = icmp eq i32 %i.vy, 0       ; 3 uses
  br i1 %.not.i.i.i.i150.i, label %_ZNSt12_Vector_baseISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EESaIS6_EEC2EmRKS7_.exit.thread.i155.i, label %.lr.ph.preheader.i.i.i.i.i151.i

.lr.ph.preheader.i.i.i.i.i151.i:                  ; preds = %_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i149.i
  %i.aaa = mul nuw nsw i64 %i.zy, 24              ; 3 uses
  %i.aab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aaa) #29
          to label %.noexc157.i unwind label %bb.ja ; 4 uses

.noexc157.i:                                      ; preds = %.lr.ph.preheader.i.i.i.i.i151.i
  store ptr %i.aab, ptr %20, align 8, !tbaa !917, !noalias !901
  %i.aac = getelementptr inbounds nuw [24 x i8], ptr %i.aab, i64 %i.zy
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aab, i8 0, i64 %i.aaa, i1 false)
  %scevgep.i.i.i.i.i152.i = getelementptr i8, ptr %i.aab, i64 %i.aaa
  br label %_ZNSt12_Vector_baseISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EESaIS6_EEC2EmRKS7_.exit.thread.i155.i

_ZNSt12_Vector_baseISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EESaIS6_EEC2EmRKS7_.exit.thread.i155.i: ; preds = %.noexc157.i, %_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i149.i
  %.sink.i153.i = phi ptr [ %i.aac, %.noexc157.i ], [ null, %_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i149.i ]
  %.0.lcssa.i.i.i.i.i154.i = phi ptr [ %scevgep.i.i.i.i.i152.i, %.noexc157.i ], [ null, %_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i149.i ]
  %i.aad = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.aae = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %.sink.i153.i, ptr %i.aae, align 8, !tbaa !920, !noalias !901
  store ptr %.0.lcssa.i.i.i.i.i154.i, ptr %i.aad, align 8, !tbaa !921, !noalias !901
  %.not106288.i = icmp sgt i64 %i.zx, 0
  br i1 %.not106288.i, label %.lr.ph295.i, label %.thread.i

.lr.ph295.i:                                      ; preds = %_ZNSt12_Vector_baseISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EESaIS6_EEC2EmRKS7_.exit.thread.i155.i
  %i.aaf = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.aag = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.aah = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aai = getelementptr inbounds nuw i8, ptr %22, i64 104 ; 3 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %22, i64 112
  %i.aak = getelementptr inbounds nuw i8, ptr %22, i64 120
  %i.aal = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.aan = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.aap = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.aaq = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.aas = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.aat = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.aau = call i32 @llvm.umax.i32(i32 %i.vy, i32 1)
  %wide.trip.count309.i = zext nneg i32 %i.aau to i64
  br label %bb.jb

bb.iy:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit.i97
  %i.aav = add nuw nsw i64 %.087290.i, 1          ; 2 uses
  %exitcond311.not.i = icmp eq i64 %i.aav, %i.zx
  br i1 %exitcond311.not.i, label %.thread.i, label %bb.jb, !llvm.loop !926

bb.iz:                                            ; preds = %bb.iv
  %i.aaw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26, !noalias !901
  br label %bb.nb

bb.ja:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i151.i, %bb.ix
  %i.aax = landingpad { ptr, i32 }
          cleanup
  br label %bb.mz

bb.jb:                                            ; preds = %bb.iy, %.lr.ph295.i
  %.087290.i = phi i64 [ 0, %.lr.ph295.i ], [ %i.aav, %bb.iy ] ; 3 uses
  %.088289.i = phi i64 [ 0, %.lr.ph295.i ], [ %.492.i, %bb.iy ] ; 4 uses
  %i.aay = load ptr, ptr %i.wl, align 8, !tbaa !924, !noalias !901
  %i.aaz = getelementptr inbounds i8, ptr %i.aay, i64 -24
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !870
  %i.abb = getelementptr inbounds nuw [16 x i8], ptr %i.aba, i64 %.087290.i
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !855
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 8
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26, !noalias !901
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26, !noalias !901
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %22, i8 0, i64 16, i1 false), !noalias !901
  store i64 -1, ptr %i.aaf, align 8, !tbaa !59, !noalias !901
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.aag, i8 0, i64 104, i1 false), !noalias !901
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %22, ptr noundef nonnull align 8 dereferenceable(120) %i.abe)
          to label %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i88 unwind label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.abf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.aai) #26
  br label %.body.i87

_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i88:  ; preds = %bb.jb
  %i.abg = load i32, ptr %i.aah, align 8, !tbaa !88, !noalias !901
  %i.abh = load ptr, ptr %4, align 8, !tbaa !366, !noalias !901
  invoke void @_ZN5arrow7compute8internal14GetTakeIndicesERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.234") align 8 %21, ptr noundef nonnull align 8 dereferenceable(128) %22, i32 noundef %i.abg, ptr noundef %i.abh)
          to label %bb.jd unwind label %bb.jg

bb.jd:                                            ; preds = %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i88
  %i.abi = load ptr, ptr %i.aai, align 8, !tbaa !105, !noalias !901 ; 3 uses
  %i.abj = load ptr, ptr %i.aaj, align 8, !tbaa !698, !noalias !901 ; 2 uses
  %.not.i1.i.i.i89 = icmp eq ptr %i.abi, %i.abj
  br i1 %.not.i1.i.i.i89, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i94, label %.lr.ph.i.i.i90

.lr.ph.i.i.i90:                                   ; preds = %bb.jd, %.lr.ph.i.i.i90
  %.0.i2.i.i.i91 = phi ptr [ %i.abk, %.lr.ph.i.i.i90 ], [ %i.abi, %bb.jd ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i.i91), !inline_history !758
  %i.abk = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i91, i64 128 ; 2 uses
  %.not.i.i.i159.i = icmp eq ptr %i.abk, %i.abj
  br i1 %.not.i.i.i159.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i92, label %.lr.ph.i.i.i90, !llvm.loop !700

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i92: ; preds = %.lr.ph.i.i.i90
  %.pre.i.i.i93 = load ptr, ptr %i.aai, align 8, !tbaa !105, !noalias !901
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i94

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i94: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i92, %bb.jd
  %i.abl = phi ptr [ %.pre.i.i.i93, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i92 ], [ %i.abi, %bb.jd ] ; 3 uses
  %.not.i.i.i.i160.i = icmp eq ptr %i.abl, null
  br i1 %.not.i.i.i.i160.i, label %_ZN5arrow9ArraySpanD2Ev.exit.i95, label %bb.je

bb.je:                                            ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i94
  %i.abm = load ptr, ptr %i.aak, align 8, !tbaa !701, !noalias !901
  %i.abn = ptrtoint ptr %i.abm to i64
  %i.abo = ptrtoint ptr %i.abl to i64
  %i.abp = sub i64 %i.abn, %i.abo
  call void @_ZdlPvm(ptr noundef nonnull %i.abl, i64 noundef %i.abp) #30, !inline_history !759
  br label %_ZN5arrow9ArraySpanD2Ev.exit.i95

_ZN5arrow9ArraySpanD2Ev.exit.i95:                 ; preds = %bb.je, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26, !noalias !901
  %i.abq = load ptr, ptr %21, align 8, !tbaa !106, !noalias !901
  %i.abr = icmp eq ptr %i.abq, null
  br i1 %i.abr, label %bb.jh, label %bb.jf, !prof !132

bb.jf:                                            ; preds = %_ZN5arrow9ArraySpanD2Ev.exit.i95
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(8) %21) #26
  br label %bb.kx

bb.jg:                                            ; preds = %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i88
  %i.abs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow9ArraySpanD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %22) #26
  br label %.body.i87

.body.i87:                                        ; preds = %bb.jg, %bb.jc
  %.pn96.i = phi { ptr, i32 } [ %i.abs, %bb.jg ], [ %i.abf, %bb.jc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26, !noalias !901
  br label %bb.my

bb.jh:                                            ; preds = %_ZN5arrow9ArraySpanD2Ev.exit.i95
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26, !noalias !901
  call void @llvm.experimental.noalias.scope.decl(metadata !927)
  call void @llvm.experimental.noalias.scope.decl(metadata !930)
  %73 = load <2 x ptr>, ptr %i.aal, align 8, !tbaa !351, !noalias !933 ; 4 uses
  store ptr null, ptr %i.aan, align 8, !tbaa !352, !noalias !933
  store <2 x ptr> %73, ptr %23, align 16, !tbaa !351, !alias.scope !934, !noalias !901
  store ptr null, ptr %i.aal, align 8, !tbaa !101, !noalias !933
  %74 = extractelement <2 x ptr> %73, i64 0
  %i.abt = getelementptr inbounds nuw i8, ptr %74, i64 16
  %i.abu = load i64, ptr %i.abt, align 8, !tbaa !134
  %i.abv = icmp sgt i64 %i.abu, 0
  %75 = extractelement <2 x ptr> %73, i64 1       ; 3 uses
  br i1 %i.abv, label %bb.ji, label %bb.kq

bb.ji:                                            ; preds = %bb.jh
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26, !noalias !901
  %.not.i.i.i161.i = icmp eq ptr %75, null
  br i1 %.not.i.i.i161.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i103, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.abw = getelementptr inbounds nuw i8, ptr %75, i64 8 ; 3 uses
  %i.abx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67, !noalias !901
  %.not.i.i.i.i162.i = icmp eq i8 %i.abx, 0
  br i1 %.not.i.i.i.i162.i, label %bb.jl, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.aby = load i32, ptr %i.abw, align 4, !tbaa !3
  %i.abz = add nsw i32 %i.aby, 1
  store i32 %i.abz, ptr %i.abw, align 4, !tbaa !3
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i103

bb.jl:                                            ; preds = %bb.jj
  %i.aca = atomicrmw volatile add ptr %i.abw, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i103

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i103: ; preds = %bb.jl, %bb.jk, %bb.ji
  store <2 x ptr> %73, ptr %24, align 16, !tbaa !351, !noalias !901
  store i8 2, ptr %i.aao, align 16, !tbaa !508, !noalias !901
  br i1 %.not.i.i.i.i150.i, label %.critedge.i108, label %.lr.ph287.i

bb.jm:                                            ; preds = %_ZN5arrow6ResultINS_5DatumEED2Ev.exit.i106
  %indvars.iv.next307.i = add nuw nsw i64 %indvars.iv306.i, 1 ; 2 uses
  %exitcond310.not.i = icmp eq i64 %indvars.iv.next307.i, %wide.trip.count309.i
  br i1 %exitcond310.not.i, label %.critedge.i108, label %.lr.ph287.i, !llvm.loop !935

.lr.ph287.i:                                      ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i103, %bb.jm
  %indvars.iv306.i = phi i64 [ %indvars.iv.next307.i, %bb.jm ], [ 0, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i103 ] ; 3 uses
  %i.acb = load ptr, ptr %15, align 8, !tbaa !917, !noalias !901
  %i.acc = getelementptr inbounds nuw [24 x i8], ptr %i.acb, i64 %indvars.iv306.i
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !870
  %i.ace = getelementptr inbounds nuw [16 x i8], ptr %i.acd, i64 %.087290.i
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26, !noalias !901
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26, !noalias !901
  invoke void @_ZN5arrow5DatumC1ERKSt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(16) %i.ace)
          to label %bb.jn unwind label %bb.jr

bb.jn:                                            ; preds = %.lr.ph287.i
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26, !noalias !901
  invoke void @_ZN5arrow7compute11TakeOptionsC1Eb(ptr noundef nonnull align 8 dereferenceable(17) %27, i1 noundef zeroext false)
          to label %_ZN5arrow7compute11TakeOptions13NoBoundsCheckEv.exit.i104 unwind label %bb.js

_ZN5arrow7compute11TakeOptions13NoBoundsCheckEv.exit.i104: ; preds = %bb.jn
  invoke void @_ZN5arrow7compute4TakeERKNS_5DatumES3_RKNS0_11TakeOptionsEPNS0_11ExecContextE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.208") align 8 %25, ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(17) %27, ptr noundef nonnull %4)
          to label %bb.jo unwind label %bb.jt

bb.jo:                                            ; preds = %_ZN5arrow7compute11TakeOptions13NoBoundsCheckEv.exit.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26, !noalias !901
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26, !noalias !901
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(24) %26)
          to label %_ZN5arrow5DatumD2Ev.exit.i unwind label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.acf = landingpad { ptr, i32 }
          catch ptr null
  %i.acg = extractvalue { ptr, i32 } %i.acf, 0
  call void @__clang_call_terminate(ptr %i.acg) #27
  unreachable

_ZN5arrow5DatumD2Ev.exit.i:                       ; preds = %bb.jo
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26, !noalias !901
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26, !noalias !901
  %i.ach = load ptr, ptr %25, align 8, !tbaa !106, !noalias !901
  %i.aci = icmp eq ptr %i.ach, null               ; 2 uses
  br i1 %i.aci, label %bb.jw, label %bb.jq, !prof !132

bb.jq:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(8) %25) #26
  br label %bb.kh

bb.jr:                                            ; preds = %.lr.ph287.i
  %i.acj = landingpad { ptr, i32 }
          cleanup
  br label %bb.jv

bb.js:                                            ; preds = %bb.jn
  %i.ack = landingpad { ptr, i32 }
          cleanup
  br label %bb.ju

bb.jt:                                            ; preds = %_ZN5arrow7compute11TakeOptions13NoBoundsCheckEv.exit.i104
  %i.acl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %bb.js
  %.pn98.i = phi { ptr, i32 } [ %i.acl, %bb.jt ], [ %i.ack, %bb.js ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26, !noalias !901
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %26) #26
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.jr
  %.pn98.pn.i = phi { ptr, i32 } [ %.pn98.i, %bb.ju ], [ %i.acj, %bb.jr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26, !noalias !901
  br label %bb.ko

bb.jw:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #26, !noalias !901
  call void @llvm.experimental.noalias.scope.decl(metadata !936)
  call void @llvm.experimental.noalias.scope.decl(metadata !939)
  %i.acm = load i8, ptr %i.aap, align 8, !tbaa !508, !noalias !942 ; 2 uses
  %i.acn = icmp eq i8 %i.acm, 0
  br i1 %i.acn, label %_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv.exit.i111, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i110

.sink.split.i.i.i.i.i.i.i.i.i.i.i110:             ; preds = %bb.jw
  %i.aco = load <2 x ptr>, ptr %i.aaq, align 8, !tbaa !351, !noalias !942
  store ptr null, ptr %i.aar, align 8, !tbaa !352, !noalias !942
  store <2 x ptr> %i.aco, ptr %28, align 16, !tbaa !351, !alias.scope !943, !noalias !901
  store ptr null, ptr %i.aaq, align 8, !tbaa !351, !noalias !942
  br label %_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv.exit.i111

_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv.exit.i111: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i110, %bb.jw
  store i8 %i.acm, ptr %i.aas, align 16, !tbaa !508, !alias.scope !943, !noalias !901
  %i.acp = load ptr, ptr %20, align 8, !tbaa !917, !noalias !901
  %i.acq = getelementptr inbounds nuw [24 x i8], ptr %i.acp, i64 %indvars.iv306.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26, !noalias !901
  invoke void @_ZNK5arrow5Datum10make_arrayEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.161") align 8 %29, ptr noundef nonnull align 8 dereferenceable(24) %28)
          to label %bb.jx unwind label %bb.kl

bb.jx:                                            ; preds = %_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv.exit.i111
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 8 ; 2 uses
  %i.acs = load ptr, ptr %i.acr, align 8, !tbaa !874 ; 5 uses
  %i.act = getelementptr inbounds nuw i8, ptr %i.acq, i64 16
  %i.acu = load ptr, ptr %i.act, align 8, !tbaa !873
  %.not.i.i168.i = icmp eq ptr %i.acs, %i.acu
  br i1 %.not.i.i168.i, label %bb.jz, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acs, i64 8
  store ptr null, ptr %i.acv, align 8, !tbaa !352
  %i.acw = load <2 x ptr>, ptr %29, align 16, !tbaa !351, !noalias !901
  store ptr null, ptr %i.aat, align 8, !tbaa !352, !noalias !901
  store <2 x ptr> %i.acw, ptr %i.acs, align 8, !tbaa !351
  store ptr null, ptr %29, align 16, !tbaa !855, !noalias !901
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acs, i64 16
  store ptr %i.acx, ptr %i.acr, align 8, !tbaa !874
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit170.i

bb.jz:                                            ; preds = %bb.jx
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.acq, ptr %i.acs, ptr noundef nonnull align 8 dereferenceable(16) %29)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit170.i unwind label %bb.km

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit170.i: ; preds = %bb.jz, %bb.jy
  %i.acy = load ptr, ptr %i.aat, align 8, !tbaa !352, !noalias !901 ; 8 uses
  %.not.i.i171.i = icmp eq ptr %i.acy, null
  br i1 %.not.i.i171.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit175.i, label %bb.ka

bb.ka:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit170.i
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 8 ; 4 uses
  %i.ada = load atomic i64, ptr %i.acz acquire, align 8 ; 2 uses
  %i.adb = icmp eq i64 %i.ada, 4294967297
  %i.adc = trunc i64 %i.ada to i32                ; 2 uses
  br i1 %i.adb, label %bb.kb, label %bb.kc

bb.kb:                                            ; preds = %bb.ka
  store i32 0, ptr %i.acz, align 8, !tbaa !357
  %i.add = getelementptr inbounds nuw i8, ptr %i.acy, i64 12
  store i32 0, ptr %i.add, align 4, !tbaa !359
  %i.ade = load ptr, ptr %i.acy, align 8, !tbaa !96
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 16
  %i.adg = load ptr, ptr %i.adf, align 8
  call void %i.adg(ptr noundef nonnull align 8 dereferenceable(16) %i.acy) #26, !inline_history !925
  %i.adh = load ptr, ptr %i.acy, align 8, !tbaa !96
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 24
  %i.adj = load ptr, ptr %i.adi, align 8
  call void %i.adj(ptr noundef nonnull align 8 dereferenceable(16) %i.acy) #26, !inline_history !925
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit175.i

bb.kc:                                            ; preds = %bb.ka
  %i.adk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67, !noalias !901
  %.not.i.i.i172.i = icmp eq i8 %i.adk, 0
  br i1 %.not.i.i.i172.i, label %bb.ke, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.adl = add nsw i32 %i.adc, -1
  store i32 %i.adl, ptr %i.acz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i173.i

bb.ke:                                            ; preds = %bb.kc
  %i.adm = atomicrmw volatile add ptr %i.acz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i173.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i173.i: ; preds = %bb.ke, %bb.kd
  %.0.i.i.i.i174.i = phi i32 [ %i.adc, %bb.kd ], [ %i.adm, %bb.ke ]
  %i.adn = icmp eq i32 %.0.i.i.i.i174.i, 1
  br i1 %i.adn, label %bb.kf, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit175.i, !prof !66

bb.kf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i173.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.acy) #26
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit175.i

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit175.i: ; preds = %bb.kf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i173.i, %bb.kb, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit170.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26, !noalias !901
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !901
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(24) %28)
          to label %_ZN5arrow5DatumD2Ev.exit176.i unwind label %bb.kg

bb.kg:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit175.i
  %i.ado = landingpad { ptr, i32 }
          catch ptr null
  %i.adp = extractvalue { ptr, i32 } %i.ado, 0
  call void @__clang_call_terminate(ptr %i.adp) #27
  unreachable

_ZN5arrow5DatumD2Ev.exit176.i:                    ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit175.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !901
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26, !noalias !901
  br label %bb.kh

bb.kh:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit176.i, %bb.jq
  %i.adq = load ptr, ptr %25, align 8, !tbaa !106, !noalias !901 ; 2 uses
  %i.adr = icmp eq ptr %i.adq, null
  br i1 %i.adr, label %bb.ki, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i.i105, !prof !132

bb.ki:                                            ; preds = %bb.kh
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !901
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.aaq)
          to label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i.i109 unwind label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.ads = landingpad { ptr, i32 }
          catch ptr null
  %i.adt = extractvalue { ptr, i32 } %i.ads, 0
  call void @__clang_call_terminate(ptr %i.adt) #27
  unreachable

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i.i109: ; preds = %bb.ki
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !901
  %.pr.i177.i = load ptr, ptr %25, align 8, !tbaa !106, !noalias !901 ; 2 uses
  %.not.i.i178.i = icmp eq ptr %.pr.i177.i, null
  br i1 %.not.i.i178.i, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit.i106, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i.i105, !prof !456

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i.i105: ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i.i109, %bb.kh
  %i.adu = phi ptr [ %.pr.i177.i, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i.i109 ], [ %i.adq, %bb.kh ]
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 1
  %i.adw = load i8, ptr %i.adv, align 1, !tbaa !402, !range !130, !noundef !131
  %i.adx = trunc nuw i8 %i.adw to i1
  br i1 %i.adx, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit.i106, label %bb.kk

bb.kk:                                            ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i.i105
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %25) #26
  br label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit.i106

_ZN5arrow6ResultINS_5DatumEED2Ev.exit.i106:       ; preds = %bb.kk, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i.i105, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26, !noalias !901
  br i1 %i.aci, label %bb.jm, label %.loopexit258.i

bb.kl:                                            ; preds = %_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv.exit.i111
  %i.ady = landingpad { ptr, i32 }
          cleanup
  br label %bb.kn

bb.km:                                            ; preds = %bb.jz
  %i.adz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %29) #26
  br label %bb.kn

bb.kn:                                            ; preds = %bb.km, %bb.kl
  %.pn101.i = phi { ptr, i32 } [ %i.adz, %bb.km ], [ %i.ady, %bb.kl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26, !noalias !901
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %28) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26, !noalias !901
  call void @_ZN5arrow6ResultINS_5DatumEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %25) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26, !noalias !901
  br label %bb.ko

bb.ko:                                            ; preds = %bb.kn, %bb.jv
  %.pn101.pn.i = phi { ptr, i32 } [ %.pn101.i, %bb.kn ], [ %.pn98.pn.i, %bb.jv ]
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26, !noalias !901
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26, !noalias !901
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26, !noalias !901
  br label %bb.my

.critedge.i108:                                   ; preds = %bb.jm, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i103
  %i.aea = load ptr, ptr %23, align 16, !tbaa !101, !noalias !901
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 16
  %i.aec = load i64, ptr %i.aeb, align 8, !tbaa !134
  %i.aed = add nsw i64 %i.aec, %.088289.i
  br label %.loopexit258.i

.loopexit258.i:                                   ; preds = %_ZN5arrow6ResultINS_5DatumEED2Ev.exit.i106, %.critedge.i108
  %.not105.not270.i = phi i1 [ true, %.critedge.i108 ], [ false, %_ZN5arrow6ResultINS_5DatumEED2Ev.exit.i106 ]
  %.189.i = phi i64 [ %i.aed, %.critedge.i108 ], [ %.088289.i, %_ZN5arrow6ResultINS_5DatumEED2Ev.exit.i106 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !901
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %24)
          to label %_ZN5arrow5DatumD2Ev.exit179.i unwind label %bb.kp

bb.kp:                                            ; preds = %.loopexit258.i
  %i.aee = landingpad { ptr, i32 }
          catch ptr null
  %i.aef = extractvalue { ptr, i32 } %i.aee, 0
  call void @__clang_call_terminate(ptr %i.aef) #27
  unreachable

_ZN5arrow5DatumD2Ev.exit179.i:                    ; preds = %.loopexit258.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !901
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26, !noalias !901
  %.pr.i107 = load ptr, ptr %i.aam, align 8, !tbaa !352, !noalias !901
  br label %bb.kq

bb.kq:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit179.i, %bb.jh
  %i.aeg = phi ptr [ %.pr.i107, %_ZN5arrow5DatumD2Ev.exit179.i ], [ %75, %bb.jh ] ; 8 uses
  %.391.i = phi i64 [ %.189.i, %_ZN5arrow5DatumD2Ev.exit179.i ], [ %.088289.i, %bb.jh ]
  %.384.i = phi i1 [ %.not105.not270.i, %_ZN5arrow5DatumD2Ev.exit179.i ], [ true, %bb.jh ]
  %.not.i.i180.i = icmp eq ptr %i.aeg, null
  br i1 %.not.i.i180.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit184.i, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 8 ; 4 uses
  %i.aei = load atomic i64, ptr %i.aeh acquire, align 8 ; 2 uses
  %i.aej = icmp eq i64 %i.aei, 4294967297
  %i.aek = trunc i64 %i.aei to i32                ; 2 uses
  br i1 %i.aej, label %bb.ks, label %bb.kt

bb.ks:                                            ; preds = %bb.kr
  store i32 0, ptr %i.aeh, align 8, !tbaa !357
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aeg, i64 12
  store i32 0, ptr %i.ael, align 4, !tbaa !359
  %i.aem = load ptr, ptr %i.aeg, align 8, !tbaa !96
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 16
  %i.aeo = load ptr, ptr %i.aen, align 8
  call void %i.aeo(ptr noundef nonnull align 8 dereferenceable(16) %i.aeg) #26, !inline_history !944
  %i.aep = load ptr, ptr %i.aeg, align 8, !tbaa !96
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 24
  %i.aer = load ptr, ptr %i.aeq, align 8
  call void %i.aer(ptr noundef nonnull align 8 dereferenceable(16) %i.aeg) #26, !inline_history !944
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit184.i

bb.kt:                                            ; preds = %bb.kr
  %i.aes = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67, !noalias !901
  %.not.i.i.i181.i = icmp eq i8 %i.aes, 0
  br i1 %.not.i.i.i181.i, label %bb.kv, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.aet = add nsw i32 %i.aek, -1
  store i32 %i.aet, ptr %i.aeh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i182.i

bb.kv:                                            ; preds = %bb.kt
  %i.aeu = atomicrmw volatile add ptr %i.aeh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i182.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i182.i: ; preds = %bb.kv, %bb.ku
  %.0.i.i.i.i183.i = phi i32 [ %i.aek, %bb.ku ], [ %i.aeu, %bb.kv ]
  %i.aev = icmp eq i32 %.0.i.i.i.i183.i, 1
  br i1 %i.aev, label %bb.kw, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit184.i, !prof !66

bb.kw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i182.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aeg) #26
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit184.i

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit184.i: ; preds = %bb.kw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i182.i, %bb.ks, %bb.kq
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26, !noalias !901
  br label %bb.kx

bb.kx:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit184.i, %bb.jf
  %.492.i = phi i64 [ %.088289.i, %bb.jf ], [ %.391.i, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit184.i ] ; 2 uses
  %.485.i = phi i1 [ false, %bb.jf ], [ %.384.i, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit184.i ]
  %i.aew = load ptr, ptr %21, align 8, !tbaa !106, !noalias !901 ; 2 uses
  %i.aex = icmp eq ptr %i.aew, null
  br i1 %i.aex, label %bb.ky, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i.i96, !prof !132

bb.ky:                                            ; preds = %bb.kx
  %i.aey = load ptr, ptr %i.aan, align 8, !tbaa !352, !noalias !901 ; 8 uses
  %.not.i.i.i.i.i.i98 = icmp eq ptr %i.aey, null
  br i1 %.not.i.i.i.i.i.i98, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit.i97, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 8 ; 4 uses
  %i.afa = load atomic i64, ptr %i.aez acquire, align 8 ; 2 uses
  %i.afb = icmp eq i64 %i.afa, 4294967297
  %i.afc = trunc i64 %i.afa to i32                ; 2 uses
  br i1 %i.afb, label %bb.la, label %bb.lb

bb.la:                                            ; preds = %bb.kz
  store i32 0, ptr %i.aez, align 8, !tbaa !357
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aey, i64 12
  store i32 0, ptr %i.afd, align 4, !tbaa !359
  %i.afe = load ptr, ptr %i.aey, align 8, !tbaa !96
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 16
  %i.afg = load ptr, ptr %i.aff, align 8
  call void %i.afg(ptr noundef nonnull align 8 dereferenceable(16) %i.aey) #26, !inline_history !945
  %i.afh = load ptr, ptr %i.aey, align 8, !tbaa !96
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 24
  %i.afj = load ptr, ptr %i.afi, align 8
  call void %i.afj(ptr noundef nonnull align 8 dereferenceable(16) %i.aey) #26, !inline_history !945
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i.i102

bb.lb:                                            ; preds = %bb.kz
  %i.afk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67, !noalias !901
  %.not.i.i.i.i.i.i.i99 = icmp eq i8 %i.afk, 0
  br i1 %.not.i.i.i.i.i.i.i99, label %bb.ld, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.afl = add nsw i32 %i.afc, -1
  store i32 %i.afl, ptr %i.aez, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i100

bb.ld:                                            ; preds = %bb.lb
  %i.afm = atomicrmw volatile add ptr %i.aez, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i100

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i100: ; preds = %bb.ld, %bb.lc
  %.0.i.i.i.i.i.i.i.i101 = phi i32 [ %i.afc, %bb.lc ], [ %i.afm, %bb.ld ]
  %i.afn = icmp eq i32 %.0.i.i.i.i.i.i.i.i101, 1
  br i1 %i.afn, label %bb.le, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i.i102, !prof !66

bb.le:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i100
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aey) #26
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i.i102

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i.i102: ; preds = %bb.le, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i100, %bb.la
  %.pr.i185.pr.i = load ptr, ptr %21, align 8, !tbaa !106, !noalias !901 ; 2 uses
  %.not.i.i186.i = icmp eq ptr %.pr.i185.pr.i, null
  br i1 %.not.i.i186.i, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit.i97, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i.i96, !prof !456

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i.i96: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i.i102, %bb.kx
  %i.afo = phi ptr [ %.pr.i185.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i.i102 ], [ %i.aew, %bb.kx ]
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 1
  %i.afq = load i8, ptr %i.afp, align 1, !tbaa !402, !range !130, !noundef !131
  %i.afr = trunc nuw i8 %i.afq to i1
  br i1 %i.afr, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit.i97, label %bb.lf

bb.lf:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i.i96
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %21) #26
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit.i97

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit.i97: ; preds = %bb.lf, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i.i96, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i.i102, %bb.ky
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26, !noalias !901
  br i1 %.485.i, label %bb.iy, label %.loopexit259.i

.thread.i:                                        ; preds = %bb.iy, %_ZNSt12_Vector_baseISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EESaIS6_EEC2EmRKS7_.exit.thread.i155.i
  %.088.lcssa.i = phi i64 [ 0, %_ZNSt12_Vector_baseISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EESaIS6_EEC2EmRKS7_.exit.thread.i155.i ], [ %.492.i, %bb.iy ]
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26, !noalias !901
  br i1 %.not.i.i.i.i150.i, label %.thread374.i, label %.lr.ph.preheader.i.i.i.i.i188.i

.thread374.i:                                     ; preds = %.thread.i
  %i.afs = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.aft = getelementptr inbounds nuw i8, ptr %30, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, i8 0, i64 24, i1 false), !noalias !901
  br label %._crit_edge300.i

.lr.ph.preheader.i.i.i.i.i188.i:                  ; preds = %.thread.i
  %i.afu = shl nuw nsw i64 %i.zy, 4               ; 3 uses
  %i.afv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.afu) #29
          to label %.lr.ph299.i unwind label %bb.lj ; 4 uses

.lr.ph299.i:                                      ; preds = %.lr.ph.preheader.i.i.i.i.i188.i
  store ptr %i.afv, ptr %30, align 8, !tbaa !909, !noalias !901
  %i.afw = getelementptr inbounds nuw [16 x i8], ptr %i.afv, i64 %i.zy
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.afv, i8 0, i64 %i.afu, i1 false)
  %scevgep.i.i.i.i.i189.i = getelementptr i8, ptr %i.afv, i64 %i.afu
  %i.afx = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  store ptr %i.afw, ptr %i.afy, align 8, !tbaa !911, !noalias !901
  store ptr %scevgep.i.i.i.i.i189.i, ptr %i.afx, align 8, !tbaa !906, !noalias !901
  %i.afz = getelementptr inbounds nuw i8, ptr %31, i64 8
  %wide.trip.count316.i = zext nneg i32 %i.vy to i64
  br label %bb.lk

._crit_edge300.i:                                 ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit211.i, %.thread374.i
  %i.aga = phi ptr [ %i.aft, %.thread374.i ], [ %i.afy, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit211.i ] ; 2 uses
  %i.agb = phi ptr [ %i.afs, %.thread374.i ], [ %i.afx, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit211.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #26, !noalias !901
  %i.agc = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.agd = getelementptr inbounds nuw i8, ptr %i.sd, i64 16
  %i.age = load ptr, ptr %i.agd, align 8, !tbaa !352, !noalias !901 ; 2 uses
  %i.agf = load <2 x ptr>, ptr %i.vw, align 8, !tbaa !351, !noalias !901
  store <2 x ptr> %i.agf, ptr %33, align 16, !tbaa !351, !noalias !901
  %.not.i.i.i194.i = icmp eq ptr %i.age, null
  br i1 %.not.i.i.i194.i, label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit196.i, label %bb.lg

bb.lg:                                            ; preds = %._crit_edge300.i
  %i.agg = getelementptr inbounds nuw i8, ptr %i.age, i64 8 ; 3 uses
  %i.agh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67, !noalias !901
  %.not.i.i.i.i195.i = icmp eq i8 %i.agh, 0
  br i1 %.not.i.i.i.i195.i, label %bb.li, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.agi = load i32, ptr %i.agg, align 4, !tbaa !3
  %i.agj = add nsw i32 %i.agi, 1
  store i32 %i.agj, ptr %i.agg, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit196.i

bb.li:                                            ; preds = %bb.lg
  %i.agk = atomicrmw volatile add ptr %i.agg, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit196.i

_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit196.i: ; preds = %bb.li, %bb.lh, %._crit_edge300.i
  %i.agl = load ptr, ptr %30, align 8, !tbaa !909, !noalias !901
  store ptr %i.agl, ptr %34, align 8, !tbaa !909, !noalias !901
  %i.agm = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.agn = load ptr, ptr %i.agb, align 8, !tbaa !906, !noalias !901
  store ptr %i.agn, ptr %i.agm, align 8, !tbaa !906, !noalias !901
  %i.ago = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.agp = load ptr, ptr %i.aga, align 8, !tbaa !911, !noalias !901
  store ptr %i.agp, ptr %i.ago, align 8, !tbaa !911, !noalias !901
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, i8 0, i64 24, i1 false), !noalias !901
  invoke void @_ZN5arrow5Table4MakeESt10shared_ptrINS_6SchemaEESt6vectorIS1_INS_12ChunkedArrayEESaIS6_EEl(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.195") align 8 %32, ptr noundef nonnull %33, ptr noundef nonnull %34, i64 noundef %.088.lcssa.i)
          to label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit216.i unwind label %bb.mv

bb.lj:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i188.i
  %i.agq = landingpad { ptr, i32 }
          cleanup
  br label %bb.mx

bb.lk:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit211.i, %.lr.ph299.i
  %indvars.iv312.i = phi i64 [ 0, %.lr.ph299.i ], [ %indvars.iv.next313.i, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit211.i ] ; 4 uses
  %i.agr = load ptr, ptr %20, align 8, !tbaa !917, !noalias !901
  %i.ags = getelementptr inbounds nuw [24 x i8], ptr %i.agr, i64 %indvars.iv312.i
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #26, !noalias !901
  %i.agt = load ptr, ptr %i.sd, align 8, !tbaa !96, !noalias !901
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agt, i64 16
  %i.agv = load ptr, ptr %i.agu, align 8
  %i.agw = trunc nuw nsw i64 %indvars.iv312.i to i32
  invoke void %i.agv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.183") align 8 %31, ptr noundef nonnull align 8 dereferenceable(32) %i.sd, i32 noundef %i.agw)
          to label %bb.ll unwind label %bb.ly

bb.ll:                                            ; preds = %bb.lk
  %i.agx = load ptr, ptr %31, align 8, !tbaa !719, !noalias !901
  %i.agy = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #29
          to label %.noexc197.i unwind label %bb.lz ; 6 uses

.noexc197.i:                                      ; preds = %bb.ll
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agx, i64 24
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agy, i64 8
  store i32 1, ptr %i.aha, align 8, !tbaa !357, !noalias !946
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agy, i64 12
  store i32 1, ptr %i.ahb, align 4, !tbaa !359, !noalias !946
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.agy, align 8, !tbaa !96, !noalias !946
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agy, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow12ChunkedArrayEJSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEEvPT_DpOT0_(ptr noundef nonnull %i.ahc, ptr noundef nonnull align 8 dereferenceable(24) %i.ags, ptr noundef nonnull align 8 dereferenceable(16) %i.agz)
          to label %_ZSt11make_sharedIN5arrow12ChunkedArrayEJSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEES3_IT_EDpOT0_.exit.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !946

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %.noexc197.i
  %i.ahd = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.agy, i64 noundef 104) #30, !noalias !946
  br label %.body198.i

_ZSt11make_sharedIN5arrow12ChunkedArrayEJSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEES3_IT_EDpOT0_.exit.i: ; preds = %.noexc197.i
  %i.ahe = load ptr, ptr %30, align 8, !tbaa !909, !noalias !901
  %i.ahf = getelementptr inbounds nuw [16 x i8], ptr %i.ahe, i64 %indvars.iv312.i ; 2 uses
  store ptr %i.ahc, ptr %i.ahf, align 8, !tbaa !949
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 8 ; 2 uses
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !352 ; 8 uses
  store ptr %i.agy, ptr %i.ahg, align 8, !tbaa !352
  %.not.i.i.i.i200.i = icmp eq ptr %i.ahh, null
  br i1 %.not.i.i.i.i200.i, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit206.i, label %bb.lm

bb.lm:                                            ; preds = %_ZSt11make_sharedIN5arrow12ChunkedArrayEJSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEES3_IT_EDpOT0_.exit.i
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 8 ; 4 uses
  %i.ahj = load atomic i64, ptr %i.ahi acquire, align 8 ; 2 uses
  %i.ahk = icmp eq i64 %i.ahj, 4294967297
  %i.ahl = trunc i64 %i.ahj to i32                ; 2 uses
  br i1 %i.ahk, label %bb.ln, label %bb.lo

bb.ln:                                            ; preds = %bb.lm
  store i32 0, ptr %i.ahi, align 8, !tbaa !357
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahh, i64 12
  store i32 0, ptr %i.ahm, align 4, !tbaa !359
  %i.ahn = load ptr, ptr %i.ahh, align 8, !tbaa !96
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 16
  %i.ahp = load ptr, ptr %i.aho, align 8
end_hunk_1
