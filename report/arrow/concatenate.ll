inline.NumInlined: 2834
inline.NumDeleted: 1091
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_115ConcatenateImplC2ERKSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS5_EEPNS_10MemoryPoolE:bb.a

.lr.ph.i.i.i.i16:                                 ; preds = %bb.w, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i17 = phi ptr [ %i.eq, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i ], [ %i.dy, %bb.w ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i17, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i.i.i.i.i.i18 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i.i.i.i.i18, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 4 uses
  %i.ec = load atomic i64, ptr %i.eb acquire, align 8 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 4294967297
  %i.ee = trunc i64 %i.ec to i32                  ; 2 uses
  br i1 %i.ed, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.eb, align 8, !tbaa !39
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  store i32 0, ptr %i.ef, align 4, !tbaa !41
  %i.eg = load ptr, ptr %i.ea, align 8, !tbaa !42
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  tail call void %i.ei(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #20, !inline_history !133
  %i.ej = load ptr, ptr %i.ea, align 8, !tbaa !42
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8
  tail call void %i.el(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #20, !inline_history !133
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.em = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i.i.i.i.i.i.i19 = icmp eq i8 %i.em, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i19, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.en = add nsw i32 %i.ee, -1
  store i32 %i.en, ptr %i.eb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i20

bb.ab:                                            ; preds = %bb.z
  %i.eo = atomicrmw volatile add ptr %i.eb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i20

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i20: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i.i.i.i.i.i21 = phi i32 [ %i.ee, %bb.aa ], [ %i.eo, %bb.ab ]
  %i.ep = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i21, 1
  br i1 %i.ep, label %bb.ac, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i, !prof !46

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i20
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #20
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i: ; preds = %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i20, %bb.y, %.lr.ph.i.i.i.i16
  %i.eq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i17, i64 16 ; 2 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.eq, %i.dp
  br i1 %.not.i.i.i.i22, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i16, !llvm.loop !95

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i
  store ptr %i.dy, ptr %i.do, align 8, !tbaa !71
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.w, %bb.v, %bb.u
  %i.er = load ptr, ptr %i.b, align 8, !tbaa !75  ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 64
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !112 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 72
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !112 ; 2 uses
  %i.ew = icmp eq ptr %i.et, %i.ev
  br i1 %i.ew, label %._crit_edge40, label %.lr.ph39

._crit_edge40:                                    ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit
  ret void

bb.ad:                                            ; preds = %bb.u, %bb.i
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.lr.ph39:                                         ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sroa.030.038 = phi ptr [ %i.ft, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.et, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit ] ; 3 uses
  %i.ey = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #22
          to label %bb.ae unwind label %bb.al     ; 5 uses

bb.ae:                                            ; preds = %.lr.ph39
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i32 1, ptr %i.ez, align 8, !tbaa !39, !noalias !134
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  store i32 1, ptr %i.fa, align 4, !tbaa !41, !noalias !134
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ey, align 8, !tbaa !42, !noalias !134
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.fb, i8 0, i64 120, i1 false), !noalias !134
  store ptr %i.fb, ptr %.sroa.030.038, align 8, !tbaa !109
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.030.038, i64 8 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !36 ; 8 uses
  store ptr %i.ey, ptr %i.fc, align 8, !tbaa !36
  %.not.i.i.i.i25 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i.i25, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 4 uses
  %i.ff = load atomic i64, ptr %i.fe acquire, align 8 ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 4294967297
  %i.fh = trunc i64 %i.ff to i32                  ; 2 uses
  br i1 %i.fg, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.fe, align 8, !tbaa !39
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  store i32 0, ptr %i.fi, align 4, !tbaa !41
  %i.fj = load ptr, ptr %i.fd, align 8, !tbaa !42
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8
  tail call void %i.fl(ptr noundef nonnull align 8 dereferenceable(16) %i.fd) #20, !inline_history !137
  %i.fm = load ptr, ptr %i.fd, align 8, !tbaa !42
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8
  tail call void %i.fo(ptr noundef nonnull align 8 dereferenceable(16) %i.fd) #20, !inline_history !137
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ah:                                            ; preds = %bb.af
  %i.fp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i.i.i = icmp eq i8 %i.fp, 0
  br i1 %.not.i.i.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fq = add nsw i32 %i.fh, -1
  store i32 %i.fq, ptr %i.fe, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.fr = atomicrmw volatile add ptr %i.fe, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i = phi i32 [ %i.fh, %bb.ai ], [ %i.fr, %bb.aj ]
  %i.fs = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.fs, label %bb.ak, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !46

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fd) #20
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ag, %bb.ae
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.030.038, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.ev
  br i1 %i.fu, label %._crit_edge40, label %.lr.ph39

bb.al:                                            ; preds = %.lr.ph39
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.fv, %bb.al ], [ %i.ex, %bb.ad ]
  tail call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #20
  tail call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef captures(address_is_null) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.9", align 8     ; 15 uses
  %5 = alloca %"class.std::shared_ptr.17", align 8 ; 11 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.arrow::(anonymous namespace)::ConcatenateImpl", align 8 ; 8 uses
  %8 = alloca %"class.std::unique_ptr.256", align 8 ; 9 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %11 = alloca %"struct.arrow::ArraySpan", align 8 ; 12 uses
  %12 = alloca %"class.arrow::Result.252", align 8 ; 14 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %15 = alloca %"struct.arrow::ArraySpan", align 8 ; 12 uses
  %16 = alloca %"class.arrow::Result", align 8    ; 13 uses
  %17 = alloca %"class.arrow::Result.116", align 8 ; 12 uses
  %18 = alloca %"class.std::unique_ptr.120", align 8 ; 7 uses
  %19 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %20 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %21 = alloca %"class.arrow::internal::BitRunReader", align 8 ; 12 uses
  %22 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %23 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %24 = alloca %"class.std::shared_ptr.48", align 16 ; 5 uses
  %25 = alloca %"class.std::vector.35", align 16  ; 17 uses
  %26 = alloca %"class.arrow::Result.238", align 8 ; 12 uses
  %27 = alloca %"class.std::shared_ptr", align 16 ; 6 uses
  %28 = alloca %"class.std::shared_ptr.17", align 8 ; 9 uses
  %29 = alloca %"class.std::shared_ptr.14", align 8 ; 9 uses
  %30 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %31 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %32 = alloca %"class.std::shared_ptr.14", align 8 ; 8 uses
  %33 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %34 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %35 = alloca %"class.std::shared_ptr.14", align 8 ; 7 uses
  %36 = alloca %"class.std::shared_ptr.14", align 8 ; 7 uses
  %37 = alloca %"class.arrow::EqualOptions", align 8 ; 7 uses
  %38 = alloca %"class.arrow::Result.102", align 8 ; 10 uses
  %39 = alloca %"class.std::vector.35", align 16  ; 10 uses
  %40 = alloca %"class.arrow::Result.57", align 8 ; 13 uses
  %41 = alloca %"class.arrow::Result.102", align 8 ; 15 uses
  %42 = alloca %"class.std::vector.35", align 8   ; 9 uses
  %43 = alloca %"class.arrow::Result.57", align 8 ; 16 uses
  %44 = alloca %"class.arrow::Result.144", align 8 ; 14 uses
  %45 = alloca %"class.std::vector.9", align 16   ; 12 uses
  %46 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %47 = alloca %"class.arrow::(anonymous namespace)::ConcatenateImpl", align 8 ; 8 uses
  %48 = alloca %"class.std::vector.9", align 16   ; 11 uses
  %49 = alloca %"class.arrow::Result.156", align 8 ; 10 uses
  %50 = alloca %"class.arrow::Result.144", align 8 ; 13 uses
  %51 = alloca %"class.std::vector.9", align 16   ; 10 uses
  %52 = alloca %"struct.arrow::(anonymous namespace)::ErrorHints", align 8 ; 10 uses
  %53 = alloca %"class.arrow::(anonymous namespace)::ConcatenateImpl", align 8 ; 8 uses
  %54 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %55 = alloca %"class.std::shared_ptr", align 8  ; 6 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  %56 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %57 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %58 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 10 uses
  %59 = alloca %"class.std::__shared_ptr.49", align 16 ; 5 uses
  %60 = alloca %"class.arrow::Result.116", align 8 ; 12 uses
  %61 = alloca %"class.std::unique_ptr.120", align 8 ; 7 uses
  %62 = alloca %"class.arrow::Result.112", align 8 ; 10 uses
  %63 = alloca %"class.std::allocator.44", align 1 ; 3 uses
  %64 = alloca %"class.std::vector.107", align 8  ; 18 uses
  %65 = alloca %"struct.arrow::ArraySpan", align 8 ; 12 uses
  %66 = alloca %"class.arrow::Result.165", align 8 ; 12 uses
  %67 = alloca %"struct.arrow::(anonymous namespace)::ErrorHints", align 8 ; 9 uses
  %68 = alloca %"class.arrow::Result.144", align 8 ; 10 uses
  %69 = alloca %"class.std::vector.9", align 16   ; 10 uses
  %70 = alloca %"class.arrow::Status", align 8    ; 10 uses
  %71 = alloca %"class.arrow::(anonymous namespace)::ConcatenateImpl", align 8 ; 8 uses
  %72 = alloca %"class.std::shared_ptr.204", align 16 ; 7 uses
  %73 = alloca %"class.arrow::Result.102", align 8 ; 10 uses
  %74 = alloca %"class.std::vector.35", align 16  ; 10 uses
  %75 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %76 = alloca %"class.arrow::Result.57", align 8 ; 13 uses
  %77 = alloca %"class.arrow::Result.102", align 8 ; 10 uses
  %78 = alloca %"class.std::vector.35", align 8   ; 9 uses
  %79 = alloca %"class.arrow::Result.112", align 8 ; 16 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %80 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %81 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %82 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 10 uses
  %83 = alloca %"class.std::__shared_ptr.49", align 16 ; 5 uses
  %84 = alloca %"class.arrow::Result.116", align 8 ; 12 uses
  %85 = alloca %"class.std::unique_ptr.120", align 8 ; 7 uses
  %86 = alloca %"class.arrow::Result.112", align 8 ; 10 uses
  %87 = alloca %"class.std::allocator.44", align 1 ; 3 uses
  %88 = alloca %"class.std::vector.107", align 8  ; 18 uses
  %89 = alloca %"struct.arrow::ArraySpan", align 8 ; 12 uses
  %90 = alloca %"class.arrow::Result.165", align 8 ; 12 uses
  %91 = alloca %"struct.arrow::(anonymous namespace)::ErrorHints", align 8 ; 9 uses
  %92 = alloca %"class.arrow::Result.144", align 8 ; 10 uses
  %93 = alloca %"class.std::vector.9", align 16   ; 10 uses
  %94 = alloca %"class.arrow::Status", align 8    ; 10 uses
  %95 = alloca %"class.arrow::(anonymous namespace)::ConcatenateImpl", align 8 ; 8 uses
  %96 = alloca %"class.std::shared_ptr.174", align 16 ; 7 uses
  %97 = alloca %"class.arrow::Result.102", align 8 ; 10 uses
  %98 = alloca %"class.std::vector.35", align 16  ; 10 uses
  %99 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %100 = alloca %"class.arrow::Result.57", align 8 ; 13 uses
  %101 = alloca %"class.arrow::Result.102", align 8 ; 10 uses
  %102 = alloca %"class.std::vector.35", align 8  ; 10 uses
  %103 = alloca %"class.arrow::Result.112", align 8 ; 16 uses
  %104 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %105 = alloca %"class.std::shared_ptr", align 16 ; 6 uses
  %106 = alloca %"class.std::vector.107", align 8 ; 10 uses
  %107 = alloca %"class.arrow::Result.102", align 8 ; 14 uses
  %108 = alloca %"class.std::vector.35", align 16 ; 10 uses
  %109 = alloca %"class.arrow::Result.112", align 8 ; 11 uses
  %110 = alloca %"class.arrow::Result.144", align 8 ; 10 uses
  %111 = alloca %"class.std::vector.9", align 16  ; 10 uses
  %112 = alloca %"struct.arrow::(anonymous namespace)::ErrorHints", align 8 ; 10 uses
  %113 = alloca %"class.arrow::(anonymous namespace)::ConcatenateImpl", align 8 ; 8 uses
  %114 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %115 = alloca %"class.std::shared_ptr", align 8 ; 6 uses
  %116 = alloca %"class.arrow::Status", align 8   ; 6 uses
  %117 = alloca %"class.arrow::Status", align 8   ; 115 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 25 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load atomic i64, ptr %i.e seq_cst, align 8
  %.not = icmp eq i64 %i.f, 0
  %.pre35 = load ptr, ptr %i.c, align 8, !tbaa !75 ; 7 uses
  br i1 %.not, label %_ZN5arrow8internal24may_have_validity_bitmapENS_4Type4typeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %.pre35, align 8, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !138
  switch i32 %i.i, label %bb.c [
    i32 0, label %_ZN5arrow8internal24may_have_validity_bitmapENS_4Type4typeE.exit
    i32 28, label %_ZN5arrow8internal24may_have_validity_bitmapENS_4Type4typeE.exit
    i32 27, label %_ZN5arrow8internal24may_have_validity_bitmapENS_4Type4typeE.exit
    i32 38, label %_ZN5arrow8internal24may_have_validity_bitmapENS_4Type4typeE.exit
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #20
  %i.j = load ptr, ptr %1, align 8, !tbaa !111, !noalias !154, !nonnull !66, !align !132 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !71, !noalias !154 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !67, !noalias !154 ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 4                   ; 8 uses
  %i.r = icmp ugt i64 %i.q, 384307168202282325
  br i1 %i.r, label %.noexc.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_16BitmapESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i

.noexc.i:                                         ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21, !noalias !154
  unreachable

_ZNSt6vectorIN5arrow12_GLOBAL__N_16BitmapESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i: ; preds = %bb.c
  %.not.i.i.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_115ConcatenateImpl7BitmapsEm.exit, label %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_16BitmapESaIS2_EEC2EmRKS3_.exit.i.i

_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_16BitmapESaIS2_EEC2EmRKS3_.exit.i.i: ; preds = %_ZNSt6vectorIN5arrow12_GLOBAL__N_16BitmapESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i
  %i.s = mul nuw nsw i64 %i.q, 24
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #22, !noalias !154 ; 5 uses
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_16BitmapESaIS2_EEC2EmRKS3_.exit.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.prol = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.t, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_16BitmapESaIS2_EEC2EmRKS3_.exit.i.i ] ; 4 uses
  %.057.i.i.i.i.i.i.prol = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.q, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_16BitmapESaIS2_EEC2EmRKS3_.exit.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_16BitmapESaIS2_EEC2EmRKS3_.exit.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %.08.i.i.i.i.i.i.prol, align 8, !noalias !154
  store i64 -1, ptr %i.u, align 8, !tbaa !157, !noalias !154
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 16
  store i64 0, ptr %i.v, align 8, !tbaa !159, !noalias !154
  %i.w = add i64 %.057.i.i.i.i.i.i.prol, -1       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !160

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_16BitmapESaIS2_EEC2EmRKS3_.exit.i.i
  %.lcssa1168.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_16BitmapESaIS2_EEC2EmRKS3_.exit.i.i ], [ %i.x, %.lr.ph.i.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.i.unr = phi ptr [ %i.t, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_16BitmapESaIS2_EEC2EmRKS3_.exit.i.i ], [ %i.x, %.lr.ph.i.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.i.unr = phi i64 [ %i.q, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_16BitmapESaIS2_EEC2EmRKS3_.exit.i.i ], [ %i.w, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.y = icmp ult i64 %i.q, 4
  br i1 %i.y, label %.lr.ph.i.preheader, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i.i ], [ %.057.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8
  store i64 0, ptr %.08.i.i.i.i.i.i, align 8, !noalias !154
  store i64 -1, ptr %i.z, align 8, !tbaa !157, !noalias !154
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16
  store i64 0, ptr %i.aa, align 8, !tbaa !159, !noalias !154
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 32
  store i64 0, ptr %i.ab, align 8, !noalias !154
  store i64 -1, ptr %i.ac, align 8, !tbaa !157, !noalias !154
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 40
  store i64 0, ptr %i.ad, align 8, !tbaa !159, !noalias !154
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 56
  store i64 0, ptr %i.ae, align 8, !noalias !154
  store i64 -1, ptr %i.af, align 8, !tbaa !157, !noalias !154
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 64
  store i64 0, ptr %i.ag, align 8, !tbaa !159, !noalias !154
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 80
  store i64 0, ptr %i.ah, align 8, !noalias !154
  store i64 -1, ptr %i.ai, align 8, !tbaa !157, !noalias !154
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 88
  store i64 0, ptr %i.aj, align 8, !tbaa !159, !noalias !154
  %i.ak = add i64 %.057.i.i.i.i.i.i, -4           ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i.3, label %.lr.ph.i.preheader, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !162

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %.lcssa1168 = phi ptr [ %.lcssa1168.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.al, %.lr.ph.i.i.i.i.i.i ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN5arrow12_GLOBAL__N_16BitmapC2ERKSt10shared_ptrINS_6BufferEENS0_5RangeE.exit.i
  %.01021.i = phi i64 [ %i.bc, %_ZN5arrow12_GLOBAL__N_16BitmapC2ERKSt10shared_ptrINS_6BufferEENS0_5RangeE.exit.i ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.01021.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !75, !noalias !154 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !163, !noalias !154
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !119, !noalias !154
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !116, !noalias !154
  %.val.i = load ptr, ptr %i.at, align 8, !tbaa !164, !noalias !154 ; 3 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %_ZN5arrow12_GLOBAL__N_16BitmapC2ERKSt10shared_ptrINS_6BufferEENS0_5RangeE.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i, i64 9
  %i.av = load i8, ptr %i.au, align 1, !tbaa !167, !range !65, !noalias !154, !noundef !66
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
end_hunk_0
begin_hunk_1_@_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE:bb.a
  call void %i.cye(ptr noundef nonnull align 8 dereferenceable(16) %i.cxw) #20, !inline_history !557
  %i.cyf = load ptr, ptr %i.cxw, align 8, !tbaa !42
  %i.cyg = getelementptr inbounds nuw i8, ptr %i.cyf, i64 24
  %i.cyh = load ptr, ptr %i.cyg, align 8
  call void %i.cyh(ptr noundef nonnull align 8 dereferenceable(16) %i.cxw) #20, !inline_history !557
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74.i.i

bb.afp:                                           ; preds = %bb.afn
  %i.cyi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45, !noalias !541
  %.not.i.i.i71.i.i = icmp eq i8 %i.cyi, 0
  br i1 %.not.i.i.i71.i.i, label %bb.afr, label %bb.afq

bb.afq:                                           ; preds = %bb.afp
  %i.cyj = add nsw i32 %i.cya, -1
  store i32 %i.cyj, ptr %i.cxx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i72.i.i

bb.afr:                                           ; preds = %bb.afp
  %i.cyk = atomicrmw volatile add ptr %i.cxx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i72.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i72.i.i: ; preds = %bb.afr, %bb.afq
  %.0.i.i.i.i73.i.i = phi i32 [ %i.cya, %bb.afq ], [ %i.cyk, %bb.afr ]
  %i.cyl = icmp eq i32 %.0.i.i.i.i73.i.i, 1
  br i1 %i.cyl, label %bb.afs, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74.i.i, !prof !46

bb.afs:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i72.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cxw) #20
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74.i.i

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74.i.i: ; preds = %bb.afs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i72.i.i, %bb.afo, %bb.afm
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20, !noalias !541
  br label %_ZNSt10unique_ptrIN5arrow17DictionaryUnifierESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN5arrow17DictionaryUnifierESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74.i.i, %_ZN5arrow6StatusD2Ev.exit47.i.i
  %i.cym = load ptr, ptr %i.cqw, align 8, !tbaa !42
  %i.cyn = getelementptr inbounds nuw i8, ptr %i.cym, i64 8
  %i.cyo = load ptr, ptr %i.cyn, align 8
  call void %i.cyo(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cqw) #20, !inline_history !561
  br label %bb.afu

bb.aft:                                           ; preds = %bb.aey, %bb.aeb
  %.pn31.pn.i.i = phi { ptr, i32 } [ %i.ctl, %bb.aeb ], [ %.pn.pn.i.i, %bb.aey ] ; 2 uses
  %.not.i76.i.i419 = icmp eq i64 %i.cqv, 0
  br i1 %.not.i76.i.i419, label %_ZNSt10unique_ptrIN5arrow17DictionaryUnifierESt14default_deleteIS1_EED2Ev.exit78.i.i, label %_ZNKSt14default_deleteIN5arrow17DictionaryUnifierEEclEPS1_.exit.i77.i.i

_ZNKSt14default_deleteIN5arrow17DictionaryUnifierEEclEPS1_.exit.i77.i.i: ; preds = %bb.aft, %.thread.i.i422
  %.pn31.pn93.i.i = phi { ptr, i32 } [ %i.cwl, %.thread.i.i422 ], [ %.pn31.pn.i.i, %bb.aft ]
  %i.cyp = load ptr, ptr %i.cqw, align 8, !tbaa !42
  %i.cyq = getelementptr inbounds nuw i8, ptr %i.cyp, i64 8
  %i.cyr = load ptr, ptr %i.cyq, align 8
  call void %i.cyr(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cqw) #20, !inline_history !561
  br label %_ZNSt10unique_ptrIN5arrow17DictionaryUnifierESt14default_deleteIS1_EED2Ev.exit78.i.i

bb.afu:                                           ; preds = %_ZNSt10unique_ptrIN5arrow17DictionaryUnifierESt14default_deleteIS1_EED2Ev.exit.i.i, %bb.adm
  %i.cys = load ptr, ptr %26, align 8, !tbaa !51, !noalias !541 ; 2 uses
  %i.cyt = icmp eq ptr %i.cys, null
  br i1 %i.cyt, label %bb.afv, label %_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i, !prof !54

bb.afv:                                           ; preds = %bb.afu
  %i.cyu = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.cyv = load ptr, ptr %i.cyu, align 8, !tbaa !543, !noalias !541 ; 3 uses
  %.not.i.i.i.i79.i.i = icmp eq ptr %i.cyv, null
  br i1 %.not.i.i.i.i79.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEED2Ev.exit.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i

_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i: ; preds = %bb.afv
  %i.cyw = load ptr, ptr %i.cyv, align 8, !tbaa !42
  %i.cyx = getelementptr inbounds nuw i8, ptr %i.cyw, i64 8
  %i.cyy = load ptr, ptr %i.cyx, align 8
  call void %i.cyy(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cyv) #20, !inline_history !562
  %.pr.pre.i.i.i417 = load ptr, ptr %26, align 8, !tbaa !51, !noalias !541 ; 2 uses
  %.not.i.i80.i.i = icmp eq ptr %.pr.pre.i.i.i417, null
  br i1 %.not.i.i80.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEED2Ev.exit.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i, !prof !294

_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i, %bb.afu
  %i.cyz = phi ptr [ %.pr.pre.i.i.i417, %_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i ], [ %i.cys, %bb.afu ]
  %i.cza = getelementptr inbounds nuw i8, ptr %i.cyz, i64 1
  %i.czb = load i8, ptr %i.cza, align 1, !tbaa !55, !range !65, !noundef !66
  %i.czc = trunc nuw i8 %i.czb to i1
  br i1 %i.czc, label %_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEED2Ev.exit.i.i, label %bb.afw

bb.afw:                                           ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %26) #20
  br label %_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEED2Ev.exit.i.i

_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEED2Ev.exit.i.i: ; preds = %bb.afw, %_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i, %_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i, %bb.afv
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20, !noalias !541
  %i.czd = load ptr, ptr %25, align 16, !tbaa !116, !noalias !541 ; 3 uses
  %i.cze = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.czf = load ptr, ptr %i.cze, align 8, !tbaa !113, !noalias !541 ; 2 uses
  %.not4.i.i.i.i.i391 = icmp eq ptr %i.czd, %i.czf
  br i1 %.not4.i.i.i.i.i391, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i.i399, label %.lr.ph.i.i.i.i.i392

.lr.ph.i.i.i.i.i392:                              ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEED2Ev.exit.i.i, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i.i397
  %.05.i.i.i.i.i393 = phi ptr [ %i.czx, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i.i397 ], [ %i.czd, %_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEED2Ev.exit.i.i ] ; 2 uses
  %i.czg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i393, i64 8
  %i.czh = load ptr, ptr %i.czg, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i394 = icmp eq ptr %i.czh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i394, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i.i397, label %bb.afx

bb.afx:                                           ; preds = %.lr.ph.i.i.i.i.i392
  %i.czi = getelementptr inbounds nuw i8, ptr %i.czh, i64 8 ; 4 uses
  %i.czj = load atomic i64, ptr %i.czi acquire, align 8 ; 2 uses
  %i.czk = icmp eq i64 %i.czj, 4294967297
  %i.czl = trunc i64 %i.czj to i32                ; 2 uses
  br i1 %i.czk, label %bb.afy, label %bb.afz

bb.afy:                                           ; preds = %bb.afx
  store i32 0, ptr %i.czi, align 8, !tbaa !39
  %i.czm = getelementptr inbounds nuw i8, ptr %i.czh, i64 12
  store i32 0, ptr %i.czm, align 4, !tbaa !41
  %i.czn = load ptr, ptr %i.czh, align 8, !tbaa !42
  %i.czo = getelementptr inbounds nuw i8, ptr %i.czn, i64 16
  %i.czp = load ptr, ptr %i.czo, align 8
  call void %i.czp(ptr noundef nonnull align 8 dereferenceable(16) %i.czh) #20, !inline_history !563
  %i.czq = load ptr, ptr %i.czh, align 8, !tbaa !42
  %i.czr = getelementptr inbounds nuw i8, ptr %i.czq, i64 24
  %i.czs = load ptr, ptr %i.czr, align 8
  call void %i.czs(ptr noundef nonnull align 8 dereferenceable(16) %i.czh) #20, !inline_history !563
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i.i397

bb.afz:                                           ; preds = %bb.afx
  %i.czt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45, !noalias !541
  %.not.i.i.i.i.i.i.i.i81.i.i = icmp eq i8 %i.czt, 0
  br i1 %.not.i.i.i.i.i.i.i.i81.i.i, label %bb.agb, label %bb.aga

bb.aga:                                           ; preds = %bb.afz
  %i.czu = add nsw i32 %i.czl, -1
  store i32 %i.czu, ptr %i.czi, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i395

bb.agb:                                           ; preds = %bb.afz
  %i.czv = atomicrmw volatile add ptr %i.czi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i395

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i395: ; preds = %bb.agb, %bb.aga
  %.0.i.i.i.i.i.i.i.i.i.i.i396 = phi i32 [ %i.czl, %bb.aga ], [ %i.czv, %bb.agb ]
  %i.czw = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i396, 1
  br i1 %i.czw, label %bb.agc, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i.i397, !prof !46

bb.agc:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i395
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.czh) #20
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i.i397

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i.i397: ; preds = %bb.agc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i395, %bb.afy, %.lr.ph.i.i.i.i.i392
  %i.czx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i393, i64 16 ; 2 uses
  %.not.i.i.i82.i.i = icmp eq ptr %i.czx, %i.czf
  br i1 %.not.i.i.i82.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i392, !llvm.loop !118

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i.i397
  %.pr.i.i.i398 = load ptr, ptr %25, align 16, !tbaa !116, !noalias !541
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i.i399

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i.i399: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEED2Ev.exit.i.i
  %i.czy = phi ptr [ %.pr.i.i.i398, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.czd, %_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEED2Ev.exit.i.i ] ; 3 uses
  %.not.i.i1.i.i.i400 = icmp eq ptr %i.czy, null
  br i1 %.not.i.i1.i.i.i400, label %bb.agf, label %bb.agd

bb.agd:                                           ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i.i399
  %i.czz = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.daa = load ptr, ptr %i.czz, align 16, !tbaa !206, !noalias !541
  %i.dab = ptrtoint ptr %i.daa to i64
  %i.dac = ptrtoint ptr %i.czy to i64
  %i.dad = sub i64 %i.dab, %i.dac
  call void @_ZdlPvm(ptr noundef nonnull %i.czy, i64 noundef %i.dad) #23
  br label %bb.agf

_ZNSt10unique_ptrIN5arrow17DictionaryUnifierESt14default_deleteIS1_EED2Ev.exit78.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow17DictionaryUnifierEEclEPS1_.exit.i77.i.i, %bb.aft
  %.pn31.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn31.pn93.i.i, %_ZNKSt14default_deleteIN5arrow17DictionaryUnifierEEclEPS1_.exit.i77.i.i ], [ %.pn31.pn.i.i, %bb.aft ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %26) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20, !noalias !541
  br label %bb.age

bb.age:                                           ; preds = %_ZNSt10unique_ptrIN5arrow17DictionaryUnifierESt14default_deleteIS1_EED2Ev.exit78.i.i, %bb.adn
  %.pn31.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn31.pn.pn.pn.i.i, %_ZNSt10unique_ptrIN5arrow17DictionaryUnifierESt14default_deleteIS1_EED2Ev.exit78.i.i ], [ %i.cqt, %bb.adn ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20, !noalias !541
  br label %.body.i377

bb.agf:                                           ; preds = %bb.agd, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i.i399
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20, !noalias !541
  call void @llvm.lifetime.end.p0(ptr nonnull %27), !noalias !499
  %i.dae = load ptr, ptr %41, align 8, !tbaa !51, !noalias !499
  %i.daf = icmp eq ptr %i.dae, null
  br i1 %i.daf, label %bb.agi, label %bb.agg, !prof !54

bb.agg:                                           ; preds = %bb.agf
  store ptr null, ptr %117, align 8, !tbaa !51, !alias.scope !499
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull align 8 dereferenceable(8) %41)
          to label %_ZN5arrow6StatusC2ERKS0_.exit64.i unwind label %bb.agh

bb.agh:                                           ; preds = %bb.agg
  %i.dag = landingpad { ptr, i32 }
          cleanup
  br label %bb.air

bb.agi:                                           ; preds = %bb.agf
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #20, !noalias !499
  call void @llvm.experimental.noalias.scope.decl(metadata !564)
  call void @llvm.experimental.noalias.scope.decl(metadata !567)
  %i.dah = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %118 = load ptr, ptr %i.dah, align 8, !tbaa !116, !noalias !570 ; 2 uses
  store ptr %118, ptr %42, align 8, !tbaa !116, !alias.scope !571, !noalias !499
  %119 = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.dai = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.daj = getelementptr inbounds nuw i8, ptr %42, i64 16
  %120 = load <2 x ptr>, ptr %i.dai, align 8, !tbaa !203, !noalias !570
  store <2 x ptr> %120, ptr %119, align 8, !tbaa !203, !alias.scope !571, !noalias !499
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dah, i8 0, i64 24, i1 false), !noalias !570
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #20, !noalias !499
  call void @llvm.experimental.noalias.scope.decl(metadata !572)
  %i.dak = load ptr, ptr %i.cjw, align 8, !tbaa !42, !noalias !572
  %i.dal = getelementptr inbounds nuw i8, ptr %i.dak, i64 72
  %i.dam = load ptr, ptr %i.dal, align 8, !noalias !572
  %i.dan = invoke noundef i32 %i.dam(ptr noundef nonnull align 8 dereferenceable(72) %i.cjw)
          to label %.noexc73.i unwind label %bb.aht, !inline_history !575 ; 2 uses

.noexc73.i:                                       ; preds = %bb.agi
  %i.dao = sdiv i32 %i.dan, 8
  %i.dap = load ptr, ptr %1, align 8, !tbaa !111, !noalias !576, !nonnull !66, !align !132 ; 2 uses
  %i.daq = load ptr, ptr %i.dap, align 8, !tbaa !112, !noalias !572 ; 2 uses
  %i.dar = getelementptr inbounds nuw i8, ptr %i.dap, i64 8
  %i.das = load ptr, ptr %i.dar, align 8, !tbaa !112, !noalias !572 ; 2 uses
  %i.dat = icmp eq ptr %i.daq, %i.das
  br i1 %i.dat, label %._crit_edge.i.i, label %.lr.ph.i65.i

.lr.ph.i65.i:                                     ; preds = %.noexc73.i, %.lr.ph.i65.i
  %.0143.i.i = phi i64 [ %i.dax, %.lr.ph.i65.i ], [ 0, %.noexc73.i ]
  %.sroa.0122.0142.i.i = phi ptr [ %i.day, %.lr.ph.i65.i ], [ %i.daq, %.noexc73.i ] ; 2 uses
  %i.dau = load ptr, ptr %.sroa.0122.0142.i.i, align 8, !tbaa !75, !noalias !572
  %i.dav = getelementptr inbounds nuw i8, ptr %i.dau, i64 16
  %i.daw = load i64, ptr %i.dav, align 8, !tbaa !119, !noalias !572
  %i.dax = add nsw i64 %i.daw, %.0143.i.i         ; 2 uses
  %i.day = getelementptr inbounds nuw i8, ptr %.sroa.0122.0142.i.i, i64 16 ; 2 uses
  %i.daz = icmp eq ptr %i.day, %i.das
  br i1 %i.daz, label %._crit_edge.i.i, label %.lr.ph.i65.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i65.i, %.noexc73.i
  %.0.lcssa.i.i = phi i64 [ 0, %.noexc73.i ], [ %i.dax, %.lr.ph.i65.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20, !noalias !576
  %i.dba = sext i32 %i.dao to i64                 ; 4 uses
  %i.dbb = mul nsw i64 %.0.lcssa.i.i, %i.dba
  %i.dbc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dbd = load ptr, ptr %i.dbc, align 8, !tbaa !98, !noalias !576
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.116") align 8 %17, i64 noundef %i.dbb, ptr noundef %i.dbd)
          to label %.noexc74.i unwind label %bb.aht

.noexc74.i:                                       ; preds = %._crit_edge.i.i
  %i.dbe = load ptr, ptr %17, align 8, !tbaa !51, !noalias !576
  %i.dbf = icmp eq ptr %i.dbe, null
  br i1 %i.dbf, label %bb.agk, label %bb.agj, !prof !54

bb.agj:                                           ; preds = %.noexc74.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(8) %17) #20
  br label %bb.aho

bb.agk:                                           ; preds = %.noexc74.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20, !noalias !576
  call void @llvm.experimental.noalias.scope.decl(metadata !577)
  call void @llvm.experimental.noalias.scope.decl(metadata !580)
  %i.dbg = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.dbh = load i64, ptr %i.dbg, align 8, !tbaa !314, !noalias !583 ; 2 uses
  store i64 %i.dbh, ptr %18, align 8, !tbaa !314, !alias.scope !584, !noalias !576
  store ptr null, ptr %i.dbg, align 8, !tbaa !314, !noalias !583
  %i.dbi = load ptr, ptr %1, align 8, !tbaa !111, !noalias !576, !nonnull !66, !align !132 ; 2 uses
  %i.dbj = getelementptr inbounds nuw i8, ptr %i.dbi, i64 8
  %i.dbk = load ptr, ptr %i.dbj, align 8, !tbaa !71, !noalias !572
  %i.dbl = load ptr, ptr %i.dbi, align 8, !tbaa !67, !noalias !572 ; 2 uses
  %.not148.not.i.i = icmp eq ptr %i.dbk, %i.dbl
  %i.dbm = inttoptr i64 %i.dbh to ptr             ; 7 uses
  br i1 %.not148.not.i.i, label %.critedge95.i.i, label %.lr.ph153.i.i

.lr.ph153.i.i:                                    ; preds = %bb.agk
  %i.dbn = getelementptr inbounds nuw i8, ptr %i.dbm, i64 9
  %i.dbo = load i8, ptr %i.dbn, align 1, !tbaa !167, !range !65, !noalias !572, !noundef !66
  %i.dbp = trunc nuw i8 %i.dbo to i1
  %i.dbq = getelementptr inbounds nuw i8, ptr %i.dbm, i64 8
  %i.dbr = load i8, ptr %i.dbq, align 8, !range !65, !noalias !572
  %i.dbs = trunc nuw i8 %i.dbr to i1
  %i.dbt = select i1 %i.dbp, i1 %i.dbs, i1 false, !prof !54
  %i.dbu = getelementptr inbounds nuw i8, ptr %i.dbm, i64 16
  %i.dbv = load ptr, ptr %i.dbu, align 8, !noalias !572
  %i.dbw = select i1 %i.dbt, ptr %i.dbv, ptr null, !prof !54
  %i.dbx = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 5 uses
  %i.dby = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  %i.dbz = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 3 uses
  %i.dca = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 9 uses
  %.off.i.i = add i32 %i.dan, 7
  %.not5.i.i.i.i.i = icmp ult i32 %.off.i.i, 15
  br label %bb.agl

bb.agl:                                           ; preds = %bb.ahl, %.lr.ph153.i.i
  %i.dcb = phi ptr [ %i.dbl, %.lr.ph153.i.i ], [ %i.dhs, %bb.ahl ]
  %.060151.i.i = phi i64 [ 0, %.lr.ph153.i.i ], [ %i.dho, %bb.ahl ] ; 3 uses
  %.061149.i.i = phi ptr [ %i.dbw, %.lr.ph153.i.i ], [ %i.dhn, %bb.ahl ] ; 4 uses
  %i.dcc = getelementptr inbounds nuw [16 x i8], ptr %i.dcb, i64 %.060151.i.i ; 5 uses
  %i.dcd = getelementptr inbounds nuw [16 x i8], ptr %118, i64 %.060151.i.i
  %i.dce = load ptr, ptr %i.dcd, align 8, !tbaa !164, !noalias !572 ; 2 uses
  %i.dcf = getelementptr inbounds nuw i8, ptr %i.dce, i64 9
  %i.dcg = load i8, ptr %i.dcf, align 1, !tbaa !167, !range !65, !noalias !572, !noundef !66
  %i.dch = trunc nuw i8 %i.dcg to i1
  %i.dci = getelementptr inbounds nuw i8, ptr %i.dce, i64 16
  %i.dcj = load ptr, ptr %i.dci, align 8, !noalias !572
  %i.dck = select i1 %i.dch, ptr %i.dcj, ptr null, !prof !54 ; 2 uses
  %i.dcl = load ptr, ptr %i.dcc, align 8, !tbaa !75, !noalias !572
  %i.dcm = getelementptr inbounds nuw i8, ptr %i.dcl, i64 40
  %i.dcn = load ptr, ptr %i.dcm, align 8, !tbaa !116, !noalias !572 ; 2 uses
  %i.dco = getelementptr inbounds nuw i8, ptr %i.dcn, i64 16
  %i.dcp = load ptr, ptr %i.dco, align 8, !tbaa !164, !noalias !572 ; 3 uses
  %.not.i.i68.i = icmp eq ptr %i.dcp, null
  br i1 %.not.i.i68.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.i, label %bb.agm

bb.agm:                                           ; preds = %bb.agl
  %i.dcq = getelementptr inbounds nuw i8, ptr %i.dcp, i64 9
  %i.dcr = load i8, ptr %i.dcq, align 1, !tbaa !167, !range !65, !noalias !572, !noundef !66
  %i.dcs = trunc nuw i8 %i.dcr to i1
  %i.dct = getelementptr inbounds nuw i8, ptr %i.dcp, i64 16
  %i.dcu = load ptr, ptr %i.dct, align 8, !noalias !572
  %i.dcv = select i1 %i.dcs, ptr %i.dcu, ptr null, !prof !54
  br label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.i

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.i: ; preds = %bb.agm, %bb.agl
  %.0.i.i.i = phi ptr [ %i.dcv, %bb.agm ], [ null, %bb.agl ]
  %i.dcw = load ptr, ptr %i.dcn, align 8, !tbaa !164, !noalias !572
  %.not139.i.i = icmp eq ptr %i.dcw, null
  br i1 %.not139.i.i, label %bb.agn, label %bb.agt

bb.agn:                                           ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20, !noalias !576
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20, !noalias !576
  %i.dcx = load ptr, ptr %i.dcc, align 8, !tbaa !75, !noalias !572 ; 3 uses
  %i.dcy = getelementptr inbounds nuw i8, ptr %i.dcx, i64 40
  %i.dcz = load ptr, ptr %i.dcy, align 8, !tbaa !116, !noalias !572
  %i.dda = getelementptr inbounds nuw i8, ptr %i.dcz, i64 16
  %i.ddb = load ptr, ptr %i.dda, align 8, !tbaa !164, !noalias !572 ; 3 uses
  %.not.i96.i.i = icmp eq ptr %i.ddb, null
  br i1 %.not.i96.i.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit98.i.i, label %bb.ago

bb.ago:                                           ; preds = %bb.agn
  %i.ddc = getelementptr inbounds nuw i8, ptr %i.ddb, i64 9
  %i.ddd = load i8, ptr %i.ddc, align 1, !tbaa !167, !range !65, !noalias !572, !noundef !66
  %i.dde = trunc nuw i8 %i.ddd to i1
  %i.ddf = getelementptr inbounds nuw i8, ptr %i.ddb, i64 16
  %i.ddg = load ptr, ptr %i.ddf, align 8, !noalias !572
  %i.ddh = select i1 %i.dde, ptr %i.ddg, ptr null, !prof !54
  br label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit98.i.i

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit98.i.i: ; preds = %bb.ago, %bb.agn
  %.0.i97.i.i = phi ptr [ %i.ddh, %bb.ago ], [ null, %bb.agn ]
  %i.ddi = getelementptr inbounds nuw i8, ptr %i.dcx, i64 32
  %i.ddj = load i64, ptr %i.ddi, align 8, !tbaa !163, !noalias !572
  %i.ddk = getelementptr inbounds nuw i8, ptr %i.dcx, i64 16
  %i.ddl = load i64, ptr %i.ddk, align 8, !tbaa !119, !noalias !572
  invoke void @_ZN5arrow8internal13TransposeIntsERKNS_8DataTypeES3_PKhPhlllPKi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %20, ptr noundef nonnull align 8 dereferenceable(72) %i.cjw, ptr noundef nonnull align 8 dereferenceable(72) %i.cjw, ptr noundef %.0.i97.i.i, ptr noundef %.061149.i.i, i64 noundef %i.ddj, i64 noundef 0, i64 noundef %i.ddl, ptr noundef %i.dck)
          to label %_ZN5arrow6StatusD2Ev.exit.i72.i unwind label %bb.ags, !noalias !572

_ZN5arrow6StatusD2Ev.exit.i72.i:                  ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit98.i.i
  %i.ddm = load ptr, ptr %20, align 8, !tbaa !51, !noalias !576 ; 2 uses
  store ptr %i.ddm, ptr %19, align 8, !tbaa !51, !noalias !576
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20, !noalias !576
  %i.ddn = icmp eq ptr %i.ddm, null
  br i1 %i.ddn, label %_ZN5arrow6StatusD2Ev.exit114.i.i, label %bb.agp, !prof !54

bb.agp:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit.i72.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(8) %19) #20
  %i.ddo = load ptr, ptr %19, align 8, !tbaa !51, !noalias !576 ; 2 uses
  %.not.i100.i.i = icmp eq ptr %i.ddo, null
  br i1 %.not.i100.i.i, label %_ZN5arrow6StatusD2Ev.exit101.i.i, label %bb.agq, !prof !54

bb.agq:                                           ; preds = %bb.agp
  %i.ddp = getelementptr inbounds nuw i8, ptr %i.ddo, i64 1
  %i.ddq = load i8, ptr %i.ddp, align 1, !tbaa !55, !range !65, !noundef !66
  %i.ddr = trunc nuw i8 %i.ddq to i1
  br i1 %i.ddr, label %_ZN5arrow6StatusD2Ev.exit101.i.i, label %bb.agr

bb.agr:                                           ; preds = %bb.agq
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #20
  br label %_ZN5arrow6StatusD2Ev.exit101.i.i

_ZN5arrow6StatusD2Ev.exit101.i.i:                 ; preds = %bb.agr, %bb.agq, %bb.agp
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20, !noalias !576
  br label %.critedge94.i.i

bb.ags:                                           ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit98.i.i
  %i.dds = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20, !noalias !576
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20, !noalias !576
  br label %bb.ahn

bb.agt:                                           ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20, !noalias !576
  %i.ddt = load ptr, ptr %i.dcc, align 8, !tbaa !75, !noalias !572 ; 3 uses
  %i.ddu = getelementptr inbounds nuw i8, ptr %i.ddt, i64 40
  %i.ddv = load ptr, ptr %i.ddu, align 8, !tbaa !116, !noalias !572
  %i.ddw = load ptr, ptr %i.ddv, align 8, !tbaa !164, !noalias !572 ; 2 uses
  %i.ddx = getelementptr inbounds nuw i8, ptr %i.ddw, i64 9
  %i.ddy = load i8, ptr %i.ddx, align 1, !tbaa !167, !range !65, !noalias !572, !noundef !66
  %i.ddz = trunc nuw i8 %i.ddy to i1
  %i.dea = getelementptr inbounds nuw i8, ptr %i.ddw, i64 16
  %i.deb = load ptr, ptr %i.dea, align 8, !noalias !572
  %i.dec = select i1 %i.ddz, ptr %i.deb, ptr null, !prof !54
  %i.ded = getelementptr inbounds nuw i8, ptr %i.ddt, i64 32
  %i.dee = load i64, ptr %i.ded, align 8, !tbaa !163, !noalias !572
  %i.def = getelementptr inbounds nuw i8, ptr %i.ddt, i64 16
  %i.deg = load i64, ptr %i.def, align 8, !tbaa !119, !noalias !572
  invoke void @_ZN5arrow8internal12BitRunReaderC1EPKhll(ptr noundef nonnull align 8 dereferenceable(33) %21, ptr noundef %i.dec, i64 noundef %i.dee, i64 noundef %i.deg)
          to label %.preheader140.i.i unwind label %bb.aha, !noalias !572

.preheader140.i.i:                                ; preds = %bb.agt
  %i.deh = load i64, ptr %i.dbx, align 8, !tbaa !585, !noalias !576 ; 2 uses
  %i.dei = load i64, ptr %i.dby, align 8, !tbaa !587, !noalias !576 ; 2 uses
  %.not.i104144.i.i = icmp slt i64 %i.deh, %i.dei
  br i1 %.not.i104144.i.i, label %.lr.ph146.i.i, label %.thread136.i.i, !prof !588

.lr.ph146.i.i:                                    ; preds = %.preheader140.i.i, %bb.ahi
  %i.dej = phi i64 [ %i.dhi, %bb.ahi ], [ %i.dei, %.preheader140.i.i ] ; 2 uses
  %i.dek = phi i64 [ %i.dhh, %bb.ahi ], [ %i.deh, %.preheader140.i.i ] ; 4 uses
  %.069145.i.i = phi i64 [ %i.dhg, %bb.ahi ], [ 0, %.preheader140.i.i ] ; 4 uses
  %i.del = load i8, ptr %i.dbz, align 8, !tbaa !589, !range !65, !noalias !576, !noundef !66
  %i.dem = xor i8 %i.del, 1                       ; 4 uses
  store i8 %i.dem, ptr %i.dbz, align 8, !tbaa !589, !noalias !576
  %i.den = and i64 %i.dek, 63                     ; 2 uses
  %i.deo = load i64, ptr %i.dca, align 8, !tbaa !590, !noalias !576
  %notmask.i.i.i.i = shl nsw i64 -1, %i.den
  %.not5.i.i.i = xor i64 %i.deo, -1
  %i.dep = and i64 %notmask.i.i.i.i, %.not5.i.i.i ; 2 uses
  store i64 %i.dep, ptr %i.dca, align 8, !tbaa !590, !noalias !576
  %i.deq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.dep, i1 false)
  %i.der = sub nsw i64 %i.deq, %i.den
  %i.des = add nsw i64 %i.der, %i.dek             ; 6 uses
  store i64 %i.des, ptr %i.dbx, align 8, !tbaa !585, !noalias !576
  %i.det = and i64 %i.des, 63
  %i.deu = icmp eq i64 %i.det, 0
  br i1 %i.deu, label %bb.agu, label %.loopexit.i.i416, !prof !46

bb.agu:                                           ; preds = %.lr.ph146.i.i
  %i.dev = icmp slt i64 %i.des, %i.dej
  br i1 %i.dev, label %.preheader.preheader.i.i, label %.loopexit.i.i416, !prof !54

.preheader.preheader.i.i:                         ; preds = %bb.agu
  %.pre156.i.i = load ptr, ptr %21, align 8, !tbaa !591, !noalias !576
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.agz, %.preheader.preheader.i.i
  %i.dew = phi i8 [ %i.dga, %bb.agz ], [ %i.dem, %.preheader.preheader.i.i ]
  %i.dex = phi ptr [ %i.dgb, %bb.agz ], [ %.pre156.i.i, %.preheader.preheader.i.i ]
  %i.dey = phi i64 [ %i.dgh, %bb.agz ], [ %i.des, %.preheader.preheader.i.i ]
  %i.dez = phi i64 [ %i.dgk, %bb.agz ], [ %i.dej, %.preheader.preheader.i.i ]
  %i.dfa = getelementptr inbounds nuw i8, ptr %i.dex, i64 8 ; 4 uses
  store ptr %i.dfa, ptr %21, align 8, !tbaa !591, !noalias !576
  %i.dfb = sub nsw i64 %i.dez, %i.dey             ; 6 uses
  store i64 0, ptr %i.dca, align 8, !tbaa !590, !noalias !576
  %i.dfc = icmp sgt i64 %i.dfb, 63
  br i1 %i.dfc, label %bb.agv, label %bb.agw, !prof !54

bb.agv:                                           ; preds = %.preheader.i.i
  %i.dfd = load i64, ptr %i.dfa, align 1, !noalias !572 ; 2 uses
  store i64 %i.dfd, ptr %i.dca, align 8, !noalias !576
  br label %bb.agx

bb.agw:                                           ; preds = %.preheader.i.i
  %i.dfe = ashr i64 %i.dfb, 3
  %i.dff = and i64 %i.dfb, 7
  %i.dfg = icmp ne i64 %i.dff, 0
  %i.dfh = zext i1 %i.dfg to i64
  %i.dfi = add nsw i64 %i.dfe, %i.dfh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dca, ptr nonnull align 1 %i.dfa, i64 %i.dfi, i1 false), !noalias !572
  %i.dfj = add nsw i64 %i.dfb, -1                 ; 2 uses
  %i.dfk = lshr i64 %i.dfj, 3
  %i.dfl = getelementptr inbounds nuw i8, ptr %i.dca, i64 %i.dfk
  %i.dfm = load i8, ptr %i.dfl, align 1, !tbaa !45, !noalias !576
  %i.dfn = trunc i64 %i.dfj to i8
  %i.dfo = and i8 %i.dfn, 7
  %i.dfp = lshr i8 %i.dfm, %i.dfo
  %i.dfq = or i8 %i.dfp, -2
  %.neg.i.i.i.i.i = add nsw i8 %i.dfq, 1
  %i.dfr = sdiv i64 %i.dfb, 8
  %i.dfs = getelementptr inbounds i8, ptr %i.dca, i64 %i.dfr ; 2 uses
  %i.dft = load i8, ptr %i.dfs, align 1, !tbaa !45, !noalias !576 ; 2 uses
  %i.dfu = xor i8 %.neg.i.i.i.i.i, %i.dft
  %i.dfv = srem i64 %i.dfb, 8
  %i.dfw = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.dfv
  %i.dfx = load i8, ptr %i.dfw, align 1, !tbaa !45, !noalias !576
  %i.dfy = and i8 %i.dfu, %i.dfx
  %i.dfz = xor i8 %i.dfy, %i.dft
  store i8 %i.dfz, ptr %i.dfs, align 1, !tbaa !45, !noalias !576
  %.pre4.pre.i.i.i = load i64, ptr %i.dca, align 8, !tbaa !590, !noalias !576
  %.pre.i71.i = load ptr, ptr %21, align 8, !tbaa !591, !noalias !576
  %.pre157.i.i = load i8, ptr %i.dbz, align 8, !tbaa !589, !range !65, !noalias !576
  br label %bb.agx

bb.agx:                                           ; preds = %bb.agw, %bb.agv
  %i.dga = phi i8 [ %.pre157.i.i, %bb.agw ], [ %i.dew, %bb.agv ] ; 4 uses
  %i.dgb = phi ptr [ %.pre.i71.i, %bb.agw ], [ %i.dfa, %bb.agv ]
  %.pre4.i.i.i = phi i64 [ %.pre4.pre.i.i.i, %bb.agw ], [ %i.dfd, %bb.agv ] ; 2 uses
  %i.dgc = trunc nuw i8 %i.dga to i1
  br i1 %i.dgc, label %bb.agy, label %_ZN5arrow8internal12BitRunReader12LoadNextWordEv.exit.i.i.i

bb.agy:                                           ; preds = %bb.agx
  %i.dgd = xor i64 %.pre4.i.i.i, -1               ; 2 uses
  store i64 %i.dgd, ptr %i.dca, align 8, !tbaa !590, !noalias !576
  br label %_ZN5arrow8internal12BitRunReader12LoadNextWordEv.exit.i.i.i

_ZN5arrow8internal12BitRunReader12LoadNextWordEv.exit.i.i.i: ; preds = %bb.agy, %bb.agx
  %i.dge = phi i64 [ %.pre4.i.i.i, %bb.agx ], [ %i.dgd, %bb.agy ]
  %i.dgf = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.dge, i1 false) ; 2 uses
  %i.dgg = load i64, ptr %i.dbx, align 8, !tbaa !585, !noalias !576
  %i.dgh = add nsw i64 %i.dgg, %i.dgf             ; 6 uses
  store i64 %i.dgh, ptr %i.dbx, align 8, !tbaa !585, !noalias !576
  %i.dgi = and i64 %i.dgh, 63
  %i.dgj = icmp eq i64 %i.dgi, 0
  br i1 %i.dgj, label %bb.agz, label %.loopexit.i.i416, !prof !46

bb.agz:                                           ; preds = %_ZN5arrow8internal12BitRunReader12LoadNextWordEv.exit.i.i.i
  %i.dgk = load i64, ptr %i.dby, align 8, !tbaa !587, !noalias !576 ; 2 uses
  %i.dgl = icmp slt i64 %i.dgh, %i.dgk
  %i.dgm = icmp ne i64 %i.dgf, 0
  %or.cond.i.i.i = and i1 %i.dgm, %i.dgl
  br i1 %or.cond.i.i.i, label %.preheader.i.i, label %.loopexit.i.i416, !prof !592, !llvm.loop !593

.loopexit.i.i416:                                 ; preds = %bb.agz, %_ZN5arrow8internal12BitRunReader12LoadNextWordEv.exit.i.i.i, %bb.agu, %.lr.ph146.i.i
  %i.dgn = phi i8 [ %i.dem, %.lr.ph146.i.i ], [ %i.dem, %bb.agu ], [ %i.dga, %_ZN5arrow8internal12BitRunReader12LoadNextWordEv.exit.i.i.i ], [ %i.dga, %bb.agz ]
  %i.dgo = phi i64 [ %i.des, %.lr.ph146.i.i ], [ %i.des, %bb.agu ], [ %i.dgh, %_ZN5arrow8internal12BitRunReader12LoadNextWordEv.exit.i.i.i ], [ %i.dgh, %bb.agz ] ; 2 uses
  %i.dgp = sub nsw i64 %i.dgo, %i.dek             ; 3 uses
  %i.dgq = icmp eq i64 %i.dgo, %i.dek
  br i1 %i.dgq, label %.thread136.i.i, label %bb.ahb

bb.aha:                                           ; preds = %bb.agt
  %i.dgr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ahk

bb.ahb:                                           ; preds = %.loopexit.i.i416
  %i.dgs = trunc nuw i8 %i.dgn to i1
  br i1 %i.dgs, label %bb.ahc, label %bb.ahh

bb.ahc:                                           ; preds = %bb.ahb
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20, !noalias !576
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20, !noalias !576
  %i.dgt = load ptr, ptr %i.dcc, align 8, !tbaa !75, !noalias !572
  %i.dgu = getelementptr inbounds nuw i8, ptr %i.dgt, i64 32
  %i.dgv = load i64, ptr %i.dgu, align 8, !tbaa !163, !noalias !572
  %i.dgw = add nsw i64 %i.dgv, %.069145.i.i
  invoke void @_ZN5arrow8internal13TransposeIntsERKNS_8DataTypeES3_PKhPhlllPKi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %23, ptr noundef nonnull align 8 dereferenceable(72) %i.cjw, ptr noundef nonnull align 8 dereferenceable(72) %i.cjw, ptr noundef %.0.i.i.i, ptr noundef %.061149.i.i, i64 noundef %i.dgw, i64 noundef %.069145.i.i, i64 noundef %i.dgp, ptr noundef %i.dck)
          to label %_ZN5arrow6StatusD2Ev.exit106.i.i unwind label %bb.ahg, !noalias !572

_ZN5arrow6StatusD2Ev.exit106.i.i:                 ; preds = %bb.ahc
  %i.dgx = load ptr, ptr %23, align 8, !tbaa !51, !noalias !576 ; 2 uses
  store ptr %i.dgx, ptr %22, align 8, !tbaa !51, !noalias !576
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20, !noalias !576
  %i.dgy = icmp eq ptr %i.dgx, null
  br i1 %i.dgy, label %_ZN5arrow6StatusD2Ev.exit112.i.i, label %bb.ahd, !prof !54

bb.ahd:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit106.i.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(8) %22) #20
  %i.dgz = load ptr, ptr %22, align 8, !tbaa !51, !noalias !576 ; 2 uses
  %.not.i107.i.i = icmp eq ptr %i.dgz, null
  br i1 %.not.i107.i.i, label %bb.ahj, label %bb.ahe, !prof !54

bb.ahe:                                           ; preds = %bb.ahd
  %i.dha = getelementptr inbounds nuw i8, ptr %i.dgz, i64 1
  %i.dhb = load i8, ptr %i.dha, align 1, !tbaa !55, !range !65, !noundef !66
  %i.dhc = trunc nuw i8 %i.dhb to i1
  br i1 %i.dhc, label %bb.ahj, label %bb.ahf

bb.ahf:                                           ; preds = %bb.ahe
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #20
  br label %bb.ahj

bb.ahg:                                           ; preds = %bb.ahc
  %i.dhd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20, !noalias !576
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20, !noalias !576
  br label %bb.ahk

bb.ahh:                                           ; preds = %bb.ahb
  br i1 %.not5.i.i.i.i.i, label %bb.ahi, label %.lr.ph.i.i.i.i70.i

.lr.ph.i.i.i.i70.i:                               ; preds = %bb.ahh
  %i.dhe = mul nsw i64 %.069145.i.i, %i.dba
  %i.dhf = getelementptr inbounds i8, ptr %.061149.i.i, i64 %i.dhe
  %gepdiff.i.i = mul i64 %i.dgp, %i.dba
  call void @llvm.memset.p0.i64(ptr align 1 %i.dhf, i8 0, i64 %gepdiff.i.i, i1 false), !tbaa !45, !noalias !572
  br label %bb.ahi

_ZN5arrow6StatusD2Ev.exit112.i.i:                 ; preds = %_ZN5arrow6StatusD2Ev.exit106.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20, !noalias !576
  br label %bb.ahi

bb.ahi:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit112.i.i, %.lr.ph.i.i.i.i70.i, %bb.ahh
  %i.dhg = add nsw i64 %i.dgp, %.069145.i.i
  %i.dhh = load i64, ptr %i.dbx, align 8, !tbaa !585, !noalias !576 ; 2 uses
  %i.dhi = load i64, ptr %i.dby, align 8, !tbaa !587, !noalias !576 ; 2 uses
  %.not.i104.i.i = icmp slt i64 %i.dhh, %i.dhi
  br i1 %.not.i104.i.i, label %.lr.ph146.i.i, label %.thread136.i.i, !prof !594

.thread136.i.i:                                   ; preds = %bb.ahi, %.loopexit.i.i416, %.preheader140.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20, !noalias !576
  br label %bb.ahl

bb.ahj:                                           ; preds = %bb.ahf, %bb.ahe, %bb.ahd
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20, !noalias !576
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20, !noalias !576
  br label %.critedge94.i.i

bb.ahk:                                           ; preds = %bb.ahg, %bb.aha
  %.pn82.pn.pn.i.i = phi { ptr, i32 } [ %i.dgr, %bb.aha ], [ %i.dhd, %bb.ahg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20, !noalias !576
  br label %bb.ahn

_ZN5arrow6StatusD2Ev.exit114.i.i:                 ; preds = %_ZN5arrow6StatusD2Ev.exit.i72.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20, !noalias !576
  br label %bb.ahl

bb.ahl:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit114.i.i, %.thread136.i.i
  %i.dhj = load ptr, ptr %i.dcc, align 8, !tbaa !75, !noalias !572
  %i.dhk = getelementptr inbounds nuw i8, ptr %i.dhj, i64 16
  %i.dhl = load i64, ptr %i.dhk, align 8, !tbaa !119, !noalias !572
  %i.dhm = mul nsw i64 %i.dhl, %i.dba
  %i.dhn = getelementptr inbounds i8, ptr %.061149.i.i, i64 %i.dhm
  %i.dho = add nuw i64 %.060151.i.i, 1            ; 2 uses
  %i.dhp = load ptr, ptr %1, align 8, !tbaa !111, !noalias !576, !nonnull !66, !align !132 ; 2 uses
  %i.dhq = getelementptr inbounds nuw i8, ptr %i.dhp, i64 8
  %i.dhr = load ptr, ptr %i.dhq, align 8, !tbaa !71, !noalias !572
  %i.dhs = load ptr, ptr %i.dhp, align 8, !tbaa !67, !noalias !572 ; 2 uses
  %i.dht = ptrtoint ptr %i.dhr to i64
  %i.dhu = ptrtoint ptr %i.dhs to i64
  %i.dhv = sub i64 %i.dht, %i.dhu
  %i.dhw = ashr exact i64 %i.dhv, 4
  %.not.i69.i = icmp ult i64 %i.dho, %i.dhw
  br i1 %.not.i69.i, label %bb.agl, label %.critedge95.i.i, !llvm.loop !595

.critedge95.i.i:                                  ; preds = %bb.ahl, %bb.agk
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20, !noalias !576
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i unwind label %bb.ahm, !noalias !572

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %.critedge95.i.i
  store ptr null, ptr %43, align 8, !tbaa !51, !alias.scope !572, !noalias !499
  %i.dhx = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.dhy = load <2 x ptr>, ptr %24, align 16, !tbaa !91, !noalias !576
  store <2 x ptr> %i.dhy, ptr %i.dhx, align 8, !tbaa !91, !alias.scope !572, !noalias !499
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20, !noalias !576
  %.pre159.i.i = load ptr, ptr %18, align 8, !tbaa !314, !noalias !576
  br label %.critedge94.i.i

bb.ahm:                                           ; preds = %.critedge95.i.i
  %i.dhz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20, !noalias !576
  %.pre158.i.i = load ptr, ptr %18, align 8, !tbaa !314, !noalias !576
  br label %bb.ahn

.critedge94.i.i:                                  ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %bb.ahj, %_ZN5arrow6StatusD2Ev.exit101.i.i
  %i.dia = phi ptr [ %i.dbm, %_ZN5arrow6StatusD2Ev.exit101.i.i ], [ %i.dbm, %bb.ahj ], [ %.pre159.i.i, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i ] ; 3 uses
  %.not.i116.i.i = icmp eq ptr %i.dia, null
  br i1 %.not.i116.i.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i415, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i414

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i414: ; preds = %.critedge94.i.i
  %i.dib = load ptr, ptr %i.dia, align 8, !tbaa !42
  %i.dic = getelementptr inbounds nuw i8, ptr %i.dib, i64 8
  %i.did = load ptr, ptr %i.dic, align 8
  call void %i.did(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dia) #20, !inline_history !596
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i415

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i415: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i414, %.critedge94.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20, !noalias !576
  br label %bb.aho

bb.ahn:                                           ; preds = %bb.ahm, %bb.ahk, %bb.ags
  %i.die = phi ptr [ %.pre158.i.i, %bb.ahm ], [ %i.dbm, %bb.ahk ], [ %i.dbm, %bb.ags ] ; 3 uses
  %.pn87.i.i = phi { ptr, i32 } [ %i.dhz, %bb.ahm ], [ %.pn82.pn.pn.i.i, %bb.ahk ], [ %i.dds, %bb.ags ]
  %.not.i117.i.i = icmp eq ptr %i.die, null
  br i1 %.not.i117.i.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit119.i.i, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i118.i.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i118.i.i: ; preds = %bb.ahn
  %i.dif = load ptr, ptr %i.die, align 8, !tbaa !42, !noalias !572
  %i.dig = getelementptr inbounds nuw i8, ptr %i.dif, i64 8
  %i.dih = load ptr, ptr %i.dig, align 8, !noalias !572
  call void %i.dih(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.die) #20, !noalias !572, !inline_history !596
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit119.i.i

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit119.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i118.i.i, %bb.ahn
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20, !noalias !576
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #20, !noalias !572
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20, !noalias !576
  br label %.body75.i

bb.aho:                                           ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i415, %bb.agj
  %i.dii = load ptr, ptr %17, align 8, !tbaa !51, !noalias !576 ; 2 uses
  %i.dij = icmp eq ptr %i.dii, null
  br i1 %i.dij, label %bb.ahp, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i401, !prof !54

bb.ahp:                                           ; preds = %bb.aho
  %i.dik = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dil = load ptr, ptr %i.dik, align 8, !tbaa !314, !noalias !576 ; 3 uses
  %.not.i.i.i.i.i66.i = icmp eq ptr %i.dil, null
  br i1 %.not.i.i.i.i.i66.i, label %bb.ahr, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i413

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i413: ; preds = %bb.ahp
  %i.dim = load ptr, ptr %i.dil, align 8, !tbaa !42
  %i.din = getelementptr inbounds nuw i8, ptr %i.dim, i64 8
  %i.dio = load ptr, ptr %i.din, align 8
  call void %i.dio(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dil) #20, !inline_history !597
  %.pr.pre.i.i67.i = load ptr, ptr %17, align 8, !tbaa !51, !noalias !576 ; 2 uses
  %.not.i.i120.i.i = icmp eq ptr %.pr.pre.i.i67.i, null
  br i1 %.not.i.i120.i.i, label %bb.ahr, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i401, !prof !294

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i401: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i413, %bb.aho
  %i.dip = phi ptr [ %.pr.pre.i.i67.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i413 ], [ %i.dii, %bb.aho ]
  %i.diq = getelementptr inbounds nuw i8, ptr %i.dip, i64 1
  %i.dir = load i8, ptr %i.diq, align 1, !tbaa !55, !range !65, !noundef !66
  %i.dis = trunc nuw i8 %i.dir to i1
  br i1 %i.dis, label %bb.ahr, label %bb.ahq

bb.ahq:                                           ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i401
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %17) #20
  br label %bb.ahr

bb.ahr:                                           ; preds = %bb.ahq, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i401, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i413, %bb.ahp
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20, !noalias !576
  %i.dit = load ptr, ptr %43, align 8, !tbaa !51, !noalias !499
  %i.diu = icmp eq ptr %i.dit, null
  br i1 %i.diu, label %bb.ahv, label %bb.ahs, !prof !54

bb.ahs:                                           ; preds = %bb.ahr
  store ptr null, ptr %117, align 8, !tbaa !51, !alias.scope !499
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull align 8 dereferenceable(8) %43)
          to label %_ZN5arrow6StatusC2ERKS0_.exit78.i unwind label %bb.ahu

bb.aht:                                           ; preds = %._crit_edge.i.i, %bb.agi
  %i.div = landingpad { ptr, i32 }
          cleanup
  br label %.body75.i

bb.ahu:                                           ; preds = %bb.ahs
  %i.diw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %43) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #20, !noalias !499
  br label %.body75.i

bb.ahv:                                           ; preds = %bb.ahr
  %i.dix = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 2 uses
  %i.diy = load <2 x ptr>, ptr %i.dix, align 8, !tbaa !91, !noalias !598
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dix, i8 0, i64 16, i1 false), !noalias !499
  %i.diz = load ptr, ptr %i.c, align 8, !tbaa !75, !noalias !499
  %i.dja = getelementptr inbounds nuw i8, ptr %i.diz, i64 40
  %i.djb = load ptr, ptr %i.dja, align 8, !tbaa !116 ; 2 uses
  %i.djc = getelementptr inbounds nuw i8, ptr %i.djb, i64 16
  %i.djd = getelementptr inbounds nuw i8, ptr %i.djb, i64 24
  %i.dje = load ptr, ptr %i.djd, align 8, !tbaa !36 ; 8 uses
  store <2 x ptr> %i.diy, ptr %i.djc, align 8, !tbaa !91
  %.not.i.i.i.i79.i = icmp eq ptr %i.dje, null
  br i1 %.not.i.i.i.i79.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ahw

bb.ahw:                                           ; preds = %bb.ahv
  %i.djf = getelementptr inbounds nuw i8, ptr %i.dje, i64 8 ; 4 uses
  %i.djg = load atomic i64, ptr %i.djf acquire, align 8 ; 2 uses
  %i.djh = icmp eq i64 %i.djg, 4294967297
  %i.dji = trunc i64 %i.djg to i32                ; 2 uses
  br i1 %i.djh, label %bb.ahx, label %bb.ahy

bb.ahx:                                           ; preds = %bb.ahw
  store i32 0, ptr %i.djf, align 8, !tbaa !39
  %i.djj = getelementptr inbounds nuw i8, ptr %i.dje, i64 12
  store i32 0, ptr %i.djj, align 4, !tbaa !41
  %i.djk = load ptr, ptr %i.dje, align 8, !tbaa !42
  %i.djl = getelementptr inbounds nuw i8, ptr %i.djk, i64 16
  %i.djm = load ptr, ptr %i.djl, align 8
  call void %i.djm(ptr noundef nonnull align 8 dereferenceable(16) %i.dje) #20, !inline_history !603
  %i.djn = load ptr, ptr %i.dje, align 8, !tbaa !42
  %i.djo = getelementptr inbounds nuw i8, ptr %i.djn, i64 24
  %i.djp = load ptr, ptr %i.djo, align 8
  call void %i.djp(ptr noundef nonnull align 8 dereferenceable(16) %i.dje) #20, !inline_history !603
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ahy:                                           ; preds = %bb.ahw
  %i.djq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45, !noalias !499
  %.not.i.i.i.i.i80.i = icmp eq i8 %i.djq, 0
  br i1 %.not.i.i.i.i.i80.i, label %bb.aia, label %bb.ahz

bb.ahz:                                           ; preds = %bb.ahy
  %i.djr = add nsw i32 %i.dji, -1
  store i32 %i.djr, ptr %i.djf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i81.i

bb.aia:                                           ; preds = %bb.ahy
  %i.djs = atomicrmw volatile add ptr %i.djf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i81.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i81.i: ; preds = %bb.aia, %bb.ahz
  %.0.i.i.i.i.i.i82.i = phi i32 [ %i.dji, %bb.ahz ], [ %i.djs, %bb.aia ]
  %i.djt = icmp eq i32 %.0.i.i.i.i.i.i82.i, 1
  br i1 %i.djt, label %bb.aib, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !46

bb.aib:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i81.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dje) #20
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.aib, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i81.i, %bb.ahx, %bb.ahv
  store ptr null, ptr %117, align 8, !tbaa !51, !alias.scope !604
  br label %_ZN5arrow6StatusC2ERKS0_.exit78.i

_ZN5arrow6StatusC2ERKS0_.exit78.i:                ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.ahs
  %i.dju = load ptr, ptr %43, align 8, !tbaa !51, !noalias !499 ; 2 uses
  %i.djv = icmp eq ptr %i.dju, null
  br i1 %i.djv, label %bb.aic, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i87.i, !prof !54

bb.aic:                                           ; preds = %_ZN5arrow6StatusC2ERKS0_.exit78.i
  %i.djw = getelementptr inbounds nuw i8, ptr %43, i64 16
  %i.djx = load ptr, ptr %i.djw, align 8, !tbaa !36, !noalias !499 ; 8 uses
  %.not.i.i.i.i.i89.i = icmp eq ptr %i.djx, null
  br i1 %.not.i.i.i.i.i89.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i93.i, label %bb.aid

bb.aid:                                           ; preds = %bb.aic
  %i.djy = getelementptr inbounds nuw i8, ptr %i.djx, i64 8 ; 4 uses
  %i.djz = load atomic i64, ptr %i.djy acquire, align 8 ; 2 uses
  %i.dka = icmp eq i64 %i.djz, 4294967297
  %i.dkb = trunc i64 %i.djz to i32                ; 2 uses
  br i1 %i.dka, label %bb.aie, label %bb.aif

bb.aie:                                           ; preds = %bb.aid
  store i32 0, ptr %i.djy, align 8, !tbaa !39
  %i.dkc = getelementptr inbounds nuw i8, ptr %i.djx, i64 12
  store i32 0, ptr %i.dkc, align 4, !tbaa !41
  %i.dkd = load ptr, ptr %i.djx, align 8, !tbaa !42
  %i.dke = getelementptr inbounds nuw i8, ptr %i.dkd, i64 16
  %i.dkf = load ptr, ptr %i.dke, align 8
  call void %i.dkf(ptr noundef nonnull align 8 dereferenceable(16) %i.djx) #20, !inline_history !537
  %i.dkg = load ptr, ptr %i.djx, align 8, !tbaa !42
  %i.dkh = getelementptr inbounds nuw i8, ptr %i.dkg, i64 24
  %i.dki = load ptr, ptr %i.dkh, align 8
  call void %i.dki(ptr noundef nonnull align 8 dereferenceable(16) %i.djx) #20, !inline_history !537
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i93.i

bb.aif:                                           ; preds = %bb.aid
  %i.dkj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45, !noalias !499
  %.not.i.i.i.i.i.i90.i = icmp eq i8 %i.dkj, 0
  br i1 %.not.i.i.i.i.i.i90.i, label %bb.aih, label %bb.aig

bb.aig:                                           ; preds = %bb.aif
  %i.dkk = add nsw i32 %i.dkb, -1
  store i32 %i.dkk, ptr %i.djy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i91.i

bb.aih:                                           ; preds = %bb.aif
  %i.dkl = atomicrmw volatile add ptr %i.djy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i91.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i91.i: ; preds = %bb.aih, %bb.aig
  %.0.i.i.i.i.i.i.i92.i = phi i32 [ %i.dkb, %bb.aig ], [ %i.dkl, %bb.aih ]
  %i.dkm = icmp eq i32 %.0.i.i.i.i.i.i.i92.i, 1
  br i1 %i.dkm, label %bb.aii, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i93.i, !prof !46

bb.aii:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i91.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.djx) #20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i93.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i93.i: ; preds = %bb.aii, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i91.i, %bb.aie, %bb.aic
  %.pr.i94.i = load ptr, ptr %43, align 8, !tbaa !51, !noalias !499 ; 2 uses
  %.not.i.i95.i = icmp eq ptr %.pr.i94.i, null
  br i1 %.not.i.i95.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit96.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i87.i, !prof !294

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i87.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i93.i, %_ZN5arrow6StatusC2ERKS0_.exit78.i
  %i.dkn = phi ptr [ %.pr.i94.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i93.i ], [ %i.dju, %_ZN5arrow6StatusC2ERKS0_.exit78.i ]
  %i.dko = getelementptr inbounds nuw i8, ptr %i.dkn, i64 1
  %i.dkp = load i8, ptr %i.dko, align 1, !tbaa !55, !range !65, !noundef !66
  %i.dkq = trunc nuw i8 %i.dkp to i1
  br i1 %i.dkq, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit96.i, label %bb.aij

bb.aij:                                           ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i87.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %43) #20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit96.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit96.i: ; preds = %bb.aij, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i87.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i93.i
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #20, !noalias !499
  %i.dkr = load ptr, ptr %42, align 8, !tbaa !116, !noalias !499 ; 3 uses
  %i.dks = load ptr, ptr %119, align 8, !tbaa !113, !noalias !499 ; 2 uses
  %.not4.i.i.i.i402 = icmp eq ptr %i.dkr, %i.dks
  br i1 %.not4.i.i.i.i402, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i410, label %.lr.ph.i.i.i.i403

.lr.ph.i.i.i.i403:                                ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit96.i, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i408
  %.05.i.i.i.i404 = phi ptr [ %i.dlk, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i408 ], [ %i.dkr, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit96.i ] ; 2 uses
  %i.dkt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i404, i64 8
  %i.dku = load ptr, ptr %i.dkt, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i.i.i.i.i.i405 = icmp eq ptr %i.dku, null
  br i1 %.not.i.i.i.i.i.i.i.i405, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i408, label %bb.aik

bb.aik:                                           ; preds = %.lr.ph.i.i.i.i403
  %i.dkv = getelementptr inbounds nuw i8, ptr %i.dku, i64 8 ; 4 uses
  %i.dkw = load atomic i64, ptr %i.dkv acquire, align 8 ; 2 uses
  %i.dkx = icmp eq i64 %i.dkw, 4294967297
  %i.dky = trunc i64 %i.dkw to i32                ; 2 uses
  br i1 %i.dkx, label %bb.ail, label %bb.aim

bb.ail:                                           ; preds = %bb.aik
  store i32 0, ptr %i.dkv, align 8, !tbaa !39
  %i.dkz = getelementptr inbounds nuw i8, ptr %i.dku, i64 12
  store i32 0, ptr %i.dkz, align 4, !tbaa !41
  %i.dla = load ptr, ptr %i.dku, align 8, !tbaa !42
  %i.dlb = getelementptr inbounds nuw i8, ptr %i.dla, i64 16
  %i.dlc = load ptr, ptr %i.dlb, align 8
  call void %i.dlc(ptr noundef nonnull align 8 dereferenceable(16) %i.dku) #20, !inline_history !607
  %i.dld = load ptr, ptr %i.dku, align 8, !tbaa !42
  %i.dle = getelementptr inbounds nuw i8, ptr %i.dld, i64 24
  %i.dlf = load ptr, ptr %i.dle, align 8
  call void %i.dlf(ptr noundef nonnull align 8 dereferenceable(16) %i.dku) #20, !inline_history !607
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i408

bb.aim:                                           ; preds = %bb.aik
  %i.dlg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45, !noalias !499
  %.not.i.i.i.i.i.i.i.i97.i = icmp eq i8 %i.dlg, 0
  br i1 %.not.i.i.i.i.i.i.i.i97.i, label %bb.aio, label %bb.ain

bb.ain:                                           ; preds = %bb.aim
  %i.dlh = add nsw i32 %i.dky, -1
  store i32 %i.dlh, ptr %i.dkv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i406

bb.aio:                                           ; preds = %bb.aim
  %i.dli = atomicrmw volatile add ptr %i.dkv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i406

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i406: ; preds = %bb.aio, %bb.ain
  %.0.i.i.i.i.i.i.i.i.i.i407 = phi i32 [ %i.dky, %bb.ain ], [ %i.dli, %bb.aio ]
  %i.dlj = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i407, 1
  br i1 %i.dlj, label %bb.aip, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i408, !prof !46

bb.aip:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i406
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dku) #20
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i408

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i408: ; preds = %bb.aip, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i406, %bb.ail, %.lr.ph.i.i.i.i403
  %i.dlk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i404, i64 16 ; 2 uses
  %.not.i.i.i98.i = icmp eq ptr %i.dlk, %i.dks
  br i1 %.not.i.i.i98.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i409, label %.lr.ph.i.i.i.i403, !llvm.loop !118

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i409: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i408
  %.pr.i99.i = load ptr, ptr %42, align 8, !tbaa !116, !noalias !499
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i410

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i410: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i409, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit96.i
  %i.dll = phi ptr [ %.pr.i99.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i409 ], [ %i.dkr, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit96.i ] ; 3 uses
  %.not.i.i1.i.i411 = icmp eq ptr %i.dll, null
  br i1 %.not.i.i1.i.i411, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit.i412, label %bb.aiq

bb.aiq:                                           ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i410
  %i.dlm = load ptr, ptr %i.daj, align 8, !tbaa !206, !noalias !499
  %i.dln = ptrtoint ptr %i.dlm to i64
  %i.dlo = ptrtoint ptr %i.dll to i64
  %i.dlp = sub i64 %i.dln, %i.dlo
  call void @_ZdlPvm(ptr noundef nonnull %i.dll, i64 noundef %i.dlp) #23
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit.i412

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit.i412: ; preds = %bb.aiq, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i410
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #20, !noalias !499
  br label %_ZN5arrow6StatusC2ERKS0_.exit64.i

.body75.i:                                        ; preds = %bb.ahu, %bb.aht, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit119.i.i
  %.pn34.pn.i = phi { ptr, i32 } [ %i.diw, %bb.ahu ], [ %i.div, %bb.aht ], [ %.pn87.i.i, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit119.i.i ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %42) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #20, !noalias !499
  br label %bb.air

_ZN5arrow6StatusC2ERKS0_.exit64.i:                ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit.i412, %bb.agg
  call void @_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_6BufferEESaIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %41) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #20, !noalias !499
  br label %bb.ais

bb.air:                                           ; preds = %.body75.i, %bb.agh
  %.pn38.i = phi { ptr, i32 } [ %i.dag, %bb.agh ], [ %.pn34.pn.i, %.body75.i ]
  call void @_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_6BufferEESaIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %41) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #20, !noalias !499
  br label %.body.i377

bb.ais:                                           ; preds = %_ZN5arrow6StatusC2ERKS0_.exit64.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.i381
  %i.dlq = load ptr, ptr %39, align 16, !tbaa !116, !noalias !499 ; 3 uses
  %i.dlr = load ptr, ptr %i.cmd, align 8, !tbaa !113, !noalias !499 ; 2 uses
  %.not4.i.i.i100.i = icmp eq ptr %i.dlq, %i.dlr
  br i1 %.not4.i.i.i100.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i111.i, label %.lr.ph.i.i.i101.i

.lr.ph.i.i.i101.i:                                ; preds = %bb.ais, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i107.i
  %.05.i.i.i102.i = phi ptr [ %i.dmj, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i107.i ], [ %i.dlq, %bb.ais ] ; 2 uses
  %i.dls = getelementptr inbounds nuw i8, ptr %.05.i.i.i102.i, i64 8
  %i.dlt = load ptr, ptr %i.dls, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i.i.i.i.i103.i = icmp eq ptr %i.dlt, null
  br i1 %.not.i.i.i.i.i.i.i103.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i107.i, label %bb.ait

bb.ait:                                           ; preds = %.lr.ph.i.i.i101.i
  %i.dlu = getelementptr inbounds nuw i8, ptr %i.dlt, i64 8 ; 4 uses
  %i.dlv = load atomic i64, ptr %i.dlu acquire, align 8 ; 2 uses
  %i.dlw = icmp eq i64 %i.dlv, 4294967297
  %i.dlx = trunc i64 %i.dlv to i32                ; 2 uses
  br i1 %i.dlw, label %bb.aiu, label %bb.aiv

bb.aiu:                                           ; preds = %bb.ait
  store i32 0, ptr %i.dlu, align 8, !tbaa !39
  %i.dly = getelementptr inbounds nuw i8, ptr %i.dlt, i64 12
  store i32 0, ptr %i.dly, align 4, !tbaa !41
  %i.dlz = load ptr, ptr %i.dlt, align 8, !tbaa !42
  %i.dma = getelementptr inbounds nuw i8, ptr %i.dlz, i64 16
  %i.dmb = load ptr, ptr %i.dma, align 8
  call void %i.dmb(ptr noundef nonnull align 8 dereferenceable(16) %i.dlt) #20, !inline_history !607
  %i.dmc = load ptr, ptr %i.dlt, align 8, !tbaa !42
  %i.dmd = getelementptr inbounds nuw i8, ptr %i.dmc, i64 24
  %i.dme = load ptr, ptr %i.dmd, align 8
  call void %i.dme(ptr noundef nonnull align 8 dereferenceable(16) %i.dlt) #20, !inline_history !607
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i107.i

bb.aiv:                                           ; preds = %bb.ait
  %i.dmf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45, !noalias !499
  %.not.i.i.i.i.i.i.i.i104.i = icmp eq i8 %i.dmf, 0
  br i1 %.not.i.i.i.i.i.i.i.i104.i, label %bb.aix, label %bb.aiw

bb.aiw:                                           ; preds = %bb.aiv
  %i.dmg = add nsw i32 %i.dlx, -1
  store i32 %i.dmg, ptr %i.dlu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i105.i

bb.aix:                                           ; preds = %bb.aiv
  %i.dmh = atomicrmw volatile add ptr %i.dlu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i105.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i105.i: ; preds = %bb.aix, %bb.aiw
  %.0.i.i.i.i.i.i.i.i.i106.i = phi i32 [ %i.dlx, %bb.aiw ], [ %i.dmh, %bb.aix ]
  %i.dmi = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i106.i, 1
  br i1 %i.dmi, label %bb.aiy, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i107.i, !prof !46

bb.aiy:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i105.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dlt) #20
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i107.i

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i107.i: ; preds = %bb.aiy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i105.i, %bb.aiu, %.lr.ph.i.i.i101.i
  %i.dmj = getelementptr inbounds nuw i8, ptr %.05.i.i.i102.i, i64 16 ; 2 uses
  %.not.i.i.i108.i382 = icmp eq ptr %i.dmj, %i.dlr
  br i1 %.not.i.i.i108.i382, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i109.i, label %.lr.ph.i.i.i101.i, !llvm.loop !118

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i109.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i107.i
  %.pr.i110.i = load ptr, ptr %39, align 16, !tbaa !116, !noalias !499
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i111.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i111.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i109.i, %bb.ais
  %i.dmk = phi ptr [ %.pr.i110.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i109.i ], [ %i.dlq, %bb.ais ] ; 3 uses
  %.not.i.i1.i112.i = icmp eq ptr %i.dmk, null
  br i1 %.not.i.i1.i112.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit113.i, label %bb.aiz

bb.aiz:                                           ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i111.i
  %i.dml = load ptr, ptr %i.cmf, align 16, !tbaa !206, !noalias !499
  %i.dmm = ptrtoint ptr %i.dml to i64
  %i.dmn = ptrtoint ptr %i.dmk to i64
  %i.dmo = sub i64 %i.dmm, %i.dmn
  call void @_ZdlPvm(ptr noundef nonnull %i.dmk, i64 noundef %i.dmo) #23
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit113.i

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit113.i: ; preds = %bb.aiz, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i111.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20, !noalias !499
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i366

.body.i377:                                       ; preds = %bb.air, %bb.age, %bb.acy
  %.pn41.pn.i = phi { ptr, i32 } [ %.pn41.i, %bb.acy ], [ %.pn38.i, %bb.air ], [ %.pn31.pn.pn.pn.pn.i.i, %bb.age ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %39) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20, !noalias !499
  br label %bb.ajg

_ZN5arrow6StatusC2ERKS0_.exit.i366:               ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit113.i, %bb.abq
  call void @_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_6BufferEESaIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %38) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20, !noalias !499
  %i.dmp = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.dmq = load ptr, ptr %i.dmp, align 8, !tbaa !36, !noalias !499 ; 8 uses
  %.not.i.i114.i367 = icmp eq ptr %i.dmq, null
  br i1 %.not.i.i114.i367, label %_ZN5arrow12_GLOBAL__N_115ConcatenateImpl5VisitERKNS_14DictionaryTypeE.exit, label %bb.aja

bb.aja:                                           ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i366
  %i.dmr = getelementptr inbounds nuw i8, ptr %i.dmq, i64 8 ; 4 uses
  %i.dms = load atomic i64, ptr %i.dmr acquire, align 8 ; 2 uses
  %i.dmt = icmp eq i64 %i.dms, 4294967297
  %i.dmu = trunc i64 %i.dms to i32                ; 2 uses
  br i1 %i.dmt, label %bb.ajb, label %bb.ajc

bb.ajb:                                           ; preds = %bb.aja
  store i32 0, ptr %i.dmr, align 8, !tbaa !39
  %i.dmv = getelementptr inbounds nuw i8, ptr %i.dmq, i64 12
  store i32 0, ptr %i.dmv, align 4, !tbaa !41
  %i.dmw = load ptr, ptr %i.dmq, align 8, !tbaa !42
  %i.dmx = getelementptr inbounds nuw i8, ptr %i.dmw, i64 16
  %i.dmy = load ptr, ptr %i.dmx, align 8
  call void %i.dmy(ptr noundef nonnull align 8 dereferenceable(16) %i.dmq) #20, !inline_history !511
  %i.dmz = load ptr, ptr %i.dmq, align 8, !tbaa !42
  %i.dna = getelementptr inbounds nuw i8, ptr %i.dmz, i64 24
  %i.dnb = load ptr, ptr %i.dna, align 8
  call void %i.dnb(ptr noundef nonnull align 8 dereferenceable(16) %i.dmq) #20, !inline_history !511
  br label %_ZN5arrow12_GLOBAL__N_115ConcatenateImpl5VisitERKNS_14DictionaryTypeE.exit

bb.ajc:                                           ; preds = %bb.aja
  %i.dnc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45, !noalias !499
  %.not.i.i.i115.i368 = icmp eq i8 %i.dnc, 0
  br i1 %.not.i.i.i115.i368, label %bb.aje, label %bb.ajd

bb.ajd:                                           ; preds = %bb.ajc
  %i.dnd = add nsw i32 %i.dmu, -1
  store i32 %i.dnd, ptr %i.dmr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i116.i

bb.aje:                                           ; preds = %bb.ajc
  %i.dne = atomicrmw volatile add ptr %i.dmr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i116.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i116.i: ; preds = %bb.aje, %bb.ajd
  %.0.i.i.i.i117.i = phi i32 [ %i.dmu, %bb.ajd ], [ %i.dne, %bb.aje ]
  %i.dnf = icmp eq i32 %.0.i.i.i.i117.i, 1
  br i1 %i.dnf, label %bb.ajf, label %_ZN5arrow12_GLOBAL__N_115ConcatenateImpl5VisitERKNS_14DictionaryTypeE.exit, !prof !46

bb.ajf:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i116.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dmq) #20
  br label %_ZN5arrow12_GLOBAL__N_115ConcatenateImpl5VisitERKNS_14DictionaryTypeE.exit

bb.ajg:                                           ; preds = %.body.i377, %bb.abs
  %.pn45.i = phi { ptr, i32 } [ %i.cmb, %bb.abs ], [ %.pn41.pn.i, %.body.i377 ]
  call void @_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_6BufferEESaIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %38) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20, !noalias !499
  br label %bb.ajh

bb.ajh:                                           ; preds = %bb.ajg, %bb.abr, %bb.abo
  %.pn45.pn.pn.i = phi { ptr, i32 } [ %.pn.i430, %bb.abo ], [ %.pn45.i, %bb.ajg ], [ %i.cma, %bb.abr ]
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %35) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20, !noalias !499
  br label %common.resume

_ZN5arrow12_GLOBAL__N_115ConcatenateImpl5VisitERKNS_14DictionaryTypeE.exit: ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i366, %bb.ajb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i116.i, %bb.ajf
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20, !noalias !499
  br label %_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_115ConcatenateImplEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_.exit

bb.aji:                                           ; preds = %_ZN5arrow8internal24may_have_validity_bitmapENS_4Type4typeE.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !608)
  %i.dng = load ptr, ptr %1, align 8, !tbaa !111, !noalias !608, !nonnull !66, !align !132 ; 3 uses
  %i.dnh = load ptr, ptr %i.dng, align 8, !tbaa !112, !noalias !608 ; 2 uses
  %i.dni = getelementptr inbounds nuw i8, ptr %i.dng, i64 8
  %i.dnj = load ptr, ptr %i.dni, align 8, !tbaa !112, !noalias !608 ; 2 uses
  %i.dnk = icmp eq ptr %i.dnh, %i.dnj
  br i1 %i.dnk, label %.critedge57.i, label %.lr.ph.i436

.lr.ph.i436:                                      ; preds = %bb.aji
  %i.dnl = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.dnm = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.dnn = getelementptr inbounds nuw i8, ptr %11, i64 104 ; 3 uses
  %i.dno = getelementptr inbounds nuw i8, ptr %11, i64 112
  %i.dnp = getelementptr inbounds nuw i8, ptr %11, i64 120
  br label %bb.ajk

bb.ajj:                                           ; preds = %_ZN5arrow9ArraySpanD2Ev.exit.i448
  %i.dnq = getelementptr inbounds nuw i8, ptr %.sroa.011.020.i, i64 16 ; 2 uses
  %i.dnr = icmp eq ptr %i.dnq, %i.dnj
  br i1 %i.dnr, label %.critedge57.loopexit.i, label %bb.ajk

bb.ajk:                                           ; preds = %bb.ajj, %.lr.ph.i436
  %.sroa.011.020.i = phi ptr [ %i.dnh, %.lr.ph.i436 ], [ %i.dnq, %bb.ajj ] ; 2 uses
  %.019.i = phi i64 [ 0, %.lr.ph.i436 ], [ %i.dnx, %bb.ajj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20, !noalias !608
  %i.dns = load ptr, ptr %.sroa.011.020.i, align 8, !tbaa !75, !noalias !608
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %11, i8 0, i64 16, i1 false), !noalias !608
  store i64 -1, ptr %i.dnl, align 8, !tbaa !233, !noalias !608
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.dnm, i8 0, i64 104, i1 false), !noalias !608
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %11, ptr noundef nonnull align 8 dereferenceable(120) %i.dns)
          to label %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i439 unwind label %bb.ajl, !noalias !608

bb.ajl:                                           ; preds = %bb.ajk
  %i.dnt = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.dnn) #20, !noalias !608
  br label %common.resume

_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i439: ; preds = %bb.ajk
  %i.dnu = invoke noundef i64 @_ZN5arrow8ree_util18FindPhysicalLengthERKNS_9ArraySpanE(ptr noundef nonnull align 8 dereferenceable(128) %11)
          to label %bb.ajm unwind label %bb.ajp, !noalias !608

bb.ajm:                                           ; preds = %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i439
  %i.dnv = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.019.i, i64 %i.dnu) ; 2 uses
  %i.dnw = extractvalue { i64, i1 } %i.dnv, 1
  %i.dnx = extractvalue { i64, i1 } %i.dnv, 0     ; 2 uses
  %i.dny = load ptr, ptr %i.dnn, align 8, !tbaa !246, !noalias !608 ; 3 uses
  %i.dnz = load ptr, ptr %i.dno, align 8, !tbaa !247, !noalias !608 ; 2 uses
  %.not.i1.i.i.i440 = icmp eq ptr %i.dny, %i.dnz
  br i1 %.not.i1.i.i.i440, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i446, label %.lr.ph.i.i.i441

.lr.ph.i.i.i441:                                  ; preds = %bb.ajm, %.lr.ph.i.i.i441
  %.0.i2.i.i.i442 = phi ptr [ %i.doa, %.lr.ph.i.i.i441 ], [ %i.dny, %bb.ajm ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i.i442), !noalias !608, !inline_history !611
  %i.doa = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i442, i64 128 ; 2 uses
  %.not.i.i.i.i443 = icmp eq ptr %i.doa, %i.dnz
  br i1 %.not.i.i.i.i443, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i444, label %.lr.ph.i.i.i441, !llvm.loop !249

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i444: ; preds = %.lr.ph.i.i.i441
  %.pre.i.i.i445 = load ptr, ptr %i.dnn, align 8, !tbaa !246, !noalias !608
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i446

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i446: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i444, %bb.ajm
  %i.dob = phi ptr [ %.pre.i.i.i445, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i444 ], [ %i.dny, %bb.ajm ] ; 3 uses
  %.not.i.i.i.i.i447 = icmp eq ptr %i.dob, null
  br i1 %.not.i.i.i.i.i447, label %_ZN5arrow9ArraySpanD2Ev.exit.i448, label %bb.ajn

bb.ajn:                                           ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i446
  %i.doc = load ptr, ptr %i.dnp, align 8, !tbaa !250, !noalias !608
  %i.dod = ptrtoint ptr %i.doc to i64
  %i.doe = ptrtoint ptr %i.dob to i64
  %i.dof = sub i64 %i.dod, %i.doe
  call void @_ZdlPvm(ptr noundef nonnull %i.dob, i64 noundef %i.dof) #23, !noalias !608, !inline_history !612
  br label %_ZN5arrow9ArraySpanD2Ev.exit.i448

_ZN5arrow9ArraySpanD2Ev.exit.i448:                ; preds = %bb.ajn, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i446
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20, !noalias !608
  br i1 %i.dnw, label %bb.ajo, label %bb.ajj

bb.ajo:                                           ; preds = %_ZN5arrow9ArraySpanD2Ev.exit.i448
  call void @_ZN5arrow6Status8FromArgsIJRA42_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %117, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(42) @.str.9)
  br label %_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_115ConcatenateImplEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_.exit

bb.ajp:                                           ; preds = %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i439
  %i.dog = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow9ArraySpanD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %11) #20, !noalias !608
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20, !noalias !608
  br label %common.resume

.critedge57.loopexit.i:                           ; preds = %bb.ajj
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !111, !noalias !608
  br label %.critedge57.i

.critedge57.i:                                    ; preds = %.critedge57.loopexit.i, %bb.aji
  %i.doh = phi ptr [ %i.dng, %bb.aji ], [ %.pre.i, %.critedge57.loopexit.i ]
  %.0.lcssa.i = phi i64 [ 0, %bb.aji ], [ %i.dnx, %.critedge57.loopexit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20, !noalias !608
  %i.doi = load ptr, ptr %i.doh, align 8, !tbaa !67, !noalias !608
  %i.doj = load ptr, ptr %i.doi, align 8, !tbaa !75, !noalias !608
  %i.dok = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dol = load ptr, ptr %i.dok, align 8, !tbaa !98, !noalias !608
  call void @llvm.experimental.noalias.scope.decl(metadata !613)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !616
  store ptr null, ptr %8, align 8, !tbaa !617, !noalias !616
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20, !noalias !616
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20, !noalias !616
  invoke void @_ZN5arrow11MakeBuilderEPNS_10MemoryPoolERKSt10shared_ptrINS_8DataTypeEEPSt10unique_ptrINS_12ArrayBuilderESt14default_deleteIS8_EE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %10, ptr noundef %i.dol, ptr noundef nonnull align 8 dereferenceable(16) %i.doj, ptr noundef nonnull %8)
          to label %_ZN5arrow6StatusD2Ev.exit.i.i449 unwind label %bb.ajt, !noalias !616

_ZN5arrow6StatusD2Ev.exit.i.i449:                 ; preds = %.critedge57.i
  %i.dom = load ptr, ptr %10, align 8, !tbaa !51, !noalias !616 ; 2 uses
  store ptr %i.dom, ptr %9, align 8, !tbaa !51, !noalias !616
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20, !noalias !616
  %i.don = icmp eq ptr %i.dom, null
  br i1 %i.don, label %.thread.i474, label %bb.ajq, !prof !54

bb.ajq:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i449
  call void @_ZN5arrow6ResultISt10unique_ptrINS_12ArrayBuilderESt14default_deleteIS2_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(8) %9) #20, !noalias !608
  %i.doo = load ptr, ptr %9, align 8, !tbaa !51, !noalias !616 ; 2 uses
  %.not.i7.i.i = icmp eq ptr %i.doo, null
  br i1 %.not.i7.i.i, label %bb.aju, label %bb.ajr, !prof !54

bb.ajr:                                           ; preds = %bb.ajq
  %i.dop = getelementptr inbounds nuw i8, ptr %i.doo, i64 1
  %i.doq = load i8, ptr %i.dop, align 1, !tbaa !55, !range !65, !noalias !608, !noundef !66
  %i.dor = trunc nuw i8 %i.doq to i1
  br i1 %i.dor, label %bb.aju, label %bb.ajs

bb.ajs:                                           ; preds = %bb.ajr
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #20, !noalias !608
  br label %bb.aju

bb.ajt:                                           ; preds = %.critedge57.i
  %i.dos = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20, !noalias !616
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20, !noalias !616
  %i.dot = load ptr, ptr %8, align 8, !tbaa !620, !noalias !616 ; 3 uses
  %.not.i11.i.i = icmp eq ptr %i.dot, null
  br i1 %.not.i11.i.i, label %_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i.i.i: ; preds = %bb.ajt
  %i.dou = load ptr, ptr %i.dot, align 8, !tbaa !42, !noalias !616
  %i.dov = getelementptr inbounds nuw i8, ptr %i.dou, i64 8
  %i.dow = load ptr, ptr %i.dov, align 8, !noalias !616
  call void %i.dow(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.dot) #20, !noalias !616, !inline_history !621
  br label %_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i.i.i, %bb.ajt
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !616
  br label %common.resume

.thread.i474:                                     ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i449
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20, !noalias !616
  store ptr null, ptr %12, align 8, !tbaa !51, !alias.scope !613, !noalias !608
  %i.dox = load i64, ptr %8, align 8, !tbaa !620, !noalias !616
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !616
  br label %bb.ajy

bb.aju:                                           ; preds = %bb.ajs, %bb.ajr, %bb.ajq
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20, !noalias !616
  %.pr.i.i450 = load ptr, ptr %8, align 8, !tbaa !620, !noalias !616 ; 3 uses
  %.not.i14.i.i = icmp eq ptr %.pr.i.i450, null
  br i1 %.not.i14.i.i, label %bb.ajv, label %_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i15.i.i

_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i15.i.i: ; preds = %bb.aju
  %i.doy = load ptr, ptr %.pr.i.i450, align 8, !tbaa !42, !noalias !608
  %i.doz = getelementptr inbounds nuw i8, ptr %i.doy, i64 8
  %i.dpa = load ptr, ptr %i.doz, align 8, !noalias !608
  call void %i.dpa(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %.pr.i.i450) #20, !noalias !608, !inline_history !621
  br label %bb.ajv

bb.ajv:                                           ; preds = %_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i15.i.i, %bb.aju
  %.pr.i451 = load ptr, ptr %12, align 8, !tbaa !51, !noalias !608
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !616
  %i.dpb = icmp eq ptr %.pr.i451, null
  br i1 %i.dpb, label %._crit_edge.i453, label %bb.ajw, !prof !340

._crit_edge.i453:                                 ; preds = %bb.ajv
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.pre24.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !620, !noalias !622
  br label %bb.ajy

bb.ajw:                                           ; preds = %bb.ajv
  store ptr null, ptr %117, align 8, !tbaa !51, !alias.scope !608
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i452 unwind label %bb.ajx

bb.ajx:                                           ; preds = %bb.ajw
  %i.dpc = landingpad { ptr, i32 }
          cleanup
  br label %bb.all

bb.ajy:                                           ; preds = %._crit_edge.i453, %.thread.i474
  %i.dpd = phi i64 [ %.pre24.i, %._crit_edge.i453 ], [ %i.dox, %.thread.i474 ]
  %i.dpe = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dpf = inttoptr i64 %i.dpd to ptr             ; 12 uses
  store ptr null, ptr %i.dpe, align 8, !tbaa !620, !noalias !622
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20, !noalias !608
  %i.dpg = getelementptr inbounds nuw i8, ptr %i.dpf, i64 112
  %i.dph = load i64, ptr %i.dpg, align 8, !tbaa !627, !noalias !639 ; 2 uses
  %i.dpi = load ptr, ptr %i.dpf, align 8, !tbaa !42, !noalias !639
  %i.dpj = getelementptr inbounds nuw i8, ptr %i.dpi, i64 16
  %i.dpk = load ptr, ptr %i.dpj, align 8, !noalias !639
  %i.dpl = invoke noundef i64 %i.dpk(ptr noundef nonnull align 8 dereferenceable(176) %i.dpf)
          to label %.noexc.i454 unwind label %bb.aka, !noalias !608, !inline_history !644

.noexc.i454:                                      ; preds = %bb.ajy
  %i.dpm = add nsw i64 %i.dpl, %.0.lcssa.i        ; 2 uses
  %.not.i.i.i455 = icmp sgt i64 %i.dpm, %i.dph
  br i1 %.not.i.i.i455, label %bb.ajz, label %_ZN5arrow6StatusD2Ev.exit.thread.i

_ZN5arrow6StatusD2Ev.exit.thread.i:               ; preds = %.noexc.i454
  store ptr null, ptr %117, align 8, !tbaa !51, !alias.scope !608
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20, !noalias !608
  br label %_ZN5arrow6StatusD2Ev.exit67.i

bb.ajz:                                           ; preds = %.noexc.i454
  %i.dpn = shl nsw i64 %i.dph, 1
  %.sroa.speculated.i.i.i.i472 = call noundef i64 @llvm.smax.i64(i64 %i.dpm, i64 %i.dpn)
  %i.dpo = load ptr, ptr %i.dpf, align 8, !tbaa !42, !noalias !639
  %i.dpp = getelementptr inbounds nuw i8, ptr %i.dpo, i64 24
  %i.dpq = load ptr, ptr %i.dpp, align 8, !noalias !639
  invoke void %i.dpq(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %13, ptr noundef nonnull align 8 dereferenceable(176) %i.dpf, i64 noundef %.sroa.speculated.i.i.i.i472)
          to label %_ZN5arrow6StatusD2Ev.exit.i473 unwind label %bb.aka, !noalias !608, !inline_history !644

_ZN5arrow6StatusD2Ev.exit.i473:                   ; preds = %bb.ajz
  %.pr15.i = load ptr, ptr %13, align 8, !tbaa !51, !noalias !608 ; 2 uses
  store ptr %.pr15.i, ptr %117, align 8, !tbaa !51, !alias.scope !608
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20, !noalias !608
  %i.dpr = icmp eq ptr %.pr15.i, null
  br i1 %i.dpr, label %_ZN5arrow6StatusD2Ev.exit67.i, label %_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit.i

bb.aka:                                           ; preds = %bb.ajz, %bb.ajy
  %i.dps = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20, !noalias !608
  br label %_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit96.i

_ZN5arrow6StatusD2Ev.exit67.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i473, %_ZN5arrow6StatusD2Ev.exit.thread.i
  %i.dpt = load ptr, ptr %1, align 8, !tbaa !111, !noalias !608, !nonnull !66, !align !132 ; 2 uses
  %i.dpu = load ptr, ptr %i.dpt, align 8, !tbaa !112, !noalias !608 ; 2 uses
  %i.dpv = getelementptr inbounds nuw i8, ptr %i.dpt, i64 8
end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev:bb.a
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #23
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !116    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !206
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt10shared_ptrIN5arrow6BufferEEmS3_ET_S5_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt10shared_ptrIN5arrow6BufferEEmS3_ET_S5_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 4                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !113
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #21
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 576460752303423487) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 4
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #22 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !702)
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.y = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !91, !alias.scope !702, !noalias !699
  store ptr null, ptr %i.x, align 8, !tbaa !36, !alias.scope !702, !noalias !699
  store <2 x ptr> %i.y, ptr %.012.i.i.i, align 8, !tbaa !91, !alias.scope !699, !noalias !702
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !164, !alias.scope !702, !noalias !699
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %.not.i.i.i = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !555

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_deallocateEPS3_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.ab = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #23
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_deallocateEPS3_m.exit37

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_deallocateEPS3_m.exit37: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !116
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !113
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !206
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt10shared_ptrIN5arrow6BufferEEmS3_ET_S5_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_deallocateEPS3_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !67     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !70
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt10shared_ptrIN5arrow9ArrayDataEEmS3_ET_S5_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt10shared_ptrIN5arrow9ArrayDataEEmS3_ET_S5_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 4                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !71
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #21
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 576460752303423487) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 4
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #22 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !707)
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.y = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !91, !alias.scope !707, !noalias !704
  store ptr null, ptr %i.x, align 8, !tbaa !36, !alias.scope !707, !noalias !704
  store <2 x ptr> %i.y, ptr %.012.i.i.i, align 8, !tbaa !91, !alias.scope !704, !noalias !707
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !75, !alias.scope !707, !noalias !704
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %.not.i.i.i = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !709

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE13_M_deallocateEPS3_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.ab = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #23
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE13_M_deallocateEPS3_m.exit37

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE13_M_deallocateEPS3_m.exit37: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !67
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !71
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !70
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt10shared_ptrIN5arrow9ArrayDataEEmS3_ET_S5_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE13_M_deallocateEPS3_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_118ConcatenateBitmapsERKSt6vectorINS0_6BitmapESaIS2_EEPNS_10MemoryPoolEPSt10shared_ptrINS_6BufferEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree readonly captures(address) %.0.val, ptr nofree readnone captures(address) %.8.val, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Result.57", align 8  ; 12 uses
  %i.a = icmp eq ptr %.0.val, %.8.val             ; 2 uses
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %.sroa.09.014 = phi ptr [ %i.g, %.critedge ], [ %.0.val, %bb.a ] ; 2 uses
  %.01113 = phi i64 [ %i.f, %.critedge ], [ 0, %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.09.014, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !710
  %i.d = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.01113, i64 %i.c) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZN5arrow6Status8FromArgsIJRA42_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(42) @.str.9)
  br label %bb.y

.critedge:                                        ; preds = %.lr.ph
  %i.f = extractvalue { i64, i1 } %i.d, 0         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.09.014, i64 24 ; 2 uses
  %i.h = icmp eq ptr %i.g, %.8.val
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.f, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZN5arrow14AllocateBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.57") align 8 %3, i64 noundef %.0.lcssa, ptr noundef %1)
  %i.i = load ptr, ptr %3, align 8, !tbaa !51
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.c, !prof !54

bb.c:                                             ; preds = %._crit_edge
  store ptr null, ptr %0, align 8, !tbaa !51
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.e:                                             ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load <2 x ptr>, ptr %i.l, align 8, !tbaa !91, !noalias !712
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !36   ; 8 uses
  store <2 x ptr> %i.n, ptr %2, align 8, !tbaa !91
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.p, align 8, !tbaa !39
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !41
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #20, !inline_history !717
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !42
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #20, !inline_history !717
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.s, %bb.i ], [ %i.ac, %bb.j ]
  %i.ad = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ad, label %bb.k, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !46

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #20
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g, %bb.e
  %i.ae = load ptr, ptr %2, align 8, !tbaa !164   ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !167, !range !65, !noundef !66
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = load i8, ptr %i.ai, align 8, !range !65
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = select i1 %i.ah, i1 %i.ak, i1 false, !prof !54
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = select i1 %i.al, ptr %i.an, ptr null, !prof !54 ; 2 uses
  br i1 %i.a, label %._crit_edge17, label %.lr.ph16

._crit_edge17:                                    ; preds = %bb.o, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !51, !alias.scope !718
  br label %_ZN5arrow6StatusC2ERKS0_.exit

.lr.ph16:                                         ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.o
  %.02215 = phi i64 [ %i.ar, %bb.o ], [ 0, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.sroa.04.014 = phi ptr [ %i.as, %bb.o ], [ %.0.val, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %.sroa.04.014, align 8, !tbaa !174 ; 2 uses
  %.sroa.7.0..val35.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.014, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..val35.sroa_idx, align 8, !tbaa !175 ; 3 uses
  %i.ap = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %i.ap, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph16
  invoke void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %i.ao, i64 noundef %.02215, i64 noundef %.sroa.7.0.copyload, i1 noundef zeroext true)
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.n:                                             ; preds = %.lr.ph16
  %.sroa.6.0..val35.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.014, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..val35.sroa_idx, align 8, !tbaa !175
  invoke void @_ZN5arrow8internal10CopyBitmapEPKhllPhl(ptr noundef nonnull %.sroa.0.0.copyload, i64 noundef %.sroa.6.0.copyload, i64 noundef %.sroa.7.0.copyload, ptr noundef %i.ao, i64 noundef %.02215)
          to label %bb.o unwind label %bb.m

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.ar = add nsw i64 %.sroa.7.0.copyload, %.02215
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.04.014, i64 24 ; 2 uses
  %i.at = icmp eq ptr %i.as, %.8.val
  br i1 %i.at, label %._crit_edge17, label %.lr.ph16

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.c, %._crit_edge17
  %i.au = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.p, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !54

bb.p:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i.i.i38 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i38, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %i.az = load atomic i64, ptr %i.ay acquire, align 8 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 4294967297
  %i.bb = trunc i64 %i.az to i32                  ; 2 uses
  br i1 %i.ba, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.ay, align 8, !tbaa !39
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 0, ptr %i.bc, align 4, !tbaa !41
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !42
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #20, !inline_history !721
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !42
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #20, !inline_history !721
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

bb.s:                                             ; preds = %bb.q
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = add nsw i32 %i.bb, -1
  store i32 %i.bk, ptr %i.ay, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bl = atomicrmw volatile add ptr %i.ay, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bb, %bb.t ], [ %i.bl, %bb.u ]
  %i.bm = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bm, label %bb.v, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, !prof !46

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.r, %bb.p
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !51   ; 2 uses
  %.not.i.i39 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i39, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !294

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.bn = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i ], [ %i.au, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !55, !range !65, !noundef !66
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.y

bb.x:                                             ; preds = %bb.m, %bb.d
  %.pn = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.aq, %bb.m ]
end_hunk_2
