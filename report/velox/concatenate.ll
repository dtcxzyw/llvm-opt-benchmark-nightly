inline.NumInlined: 2763
inline.NumDeleted: 1091
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_115ConcatenateImplC2ERKSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS5_EEPNS_10MemoryPoolE:bb.a

.lr.ph.i.i.i.i16:                                 ; preds = %bb.w, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i17 = phi ptr [ %i.eo, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i ], [ %i.dw, %bb.w ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i17, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !11 ; 8 uses
  %.not.i.i.i.i.i.i.i18 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i.i.i.i.i18, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 4 uses
  %i.ea = load atomic i64, ptr %i.dz acquire, align 8 ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 4294967297
  %i.ec = trunc i64 %i.ea to i32                  ; 2 uses
  br i1 %i.eb, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.dz, align 8, !tbaa !14
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  store i32 0, ptr %i.ed, align 4, !tbaa !16
  %i.ee = load ptr, ptr %i.dy, align 8, !tbaa !17
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8
  tail call void %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %i.dy) #20, !inline_history !108
  %i.eh = load ptr, ptr %i.dy, align 8, !tbaa !17
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8
  tail call void %i.ej(ptr noundef nonnull align 8 dereferenceable(16) %i.dy) #20, !inline_history !108
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.ek = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i.i.i.i19 = icmp eq i8 %i.ek, 0
  br i1 %.not.i.i.i.i.i.i.i.i19, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.el = add nsw i32 %i.ec, -1
  store i32 %i.el, ptr %i.dz, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i20

bb.ab:                                            ; preds = %bb.z
  %i.em = atomicrmw volatile add ptr %i.dz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i20

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i20: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i.i.i.i.i21 = phi i32 [ %i.ec, %bb.aa ], [ %i.em, %bb.ab ]
  %i.en = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i21, 1
  br i1 %i.en, label %bb.ac, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i, !prof !22

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i20
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dy) #20
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i: ; preds = %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i20, %bb.y, %.lr.ph.i.i.i.i16
  %i.eo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i17, i64 16 ; 2 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.eo, %i.dn
  br i1 %.not.i.i.i.i22, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i16, !llvm.loop !63

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i
  store ptr %i.dw, ptr %i.dm, align 8, !tbaa !35
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.w, %bb.v, %bb.u
  %i.ep = load ptr, ptr %i.b, align 8, !tbaa !39  ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !86 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 72
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !86 ; 2 uses
  %.not3740 = icmp eq ptr %i.er, %i.et
  br i1 %.not3740, label %._crit_edge43, label %.lr.ph42

._crit_edge43:                                    ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit
  ret void

bb.ad:                                            ; preds = %bb.u, %bb.i
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.lr.ph42:                                         ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sroa.030.041 = phi ptr [ %i.fq, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.er, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit ] ; 3 uses
  %i.ev = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #22
          to label %bb.ae unwind label %bb.al     ; 5 uses

bb.ae:                                            ; preds = %.lr.ph42
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i32 1, ptr %i.ew, align 8, !tbaa !14, !noalias !109
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  store i32 1, ptr %i.ex, align 4, !tbaa !16, !noalias !109
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ev, align 8, !tbaa !17, !noalias !109
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ey, i8 0, i64 120, i1 false), !noalias !109
  store ptr %i.ey, ptr %.sroa.030.041, align 8, !tbaa !83
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.030.041, i64 8 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !11 ; 8 uses
  store ptr %i.ev, ptr %i.ez, align 8, !tbaa !11
  %.not.i.i.i.i25 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i25, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 4 uses
  %i.fc = load atomic i64, ptr %i.fb acquire, align 8 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 4294967297
  %i.fe = trunc i64 %i.fc to i32                  ; 2 uses
  br i1 %i.fd, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.fb, align 8, !tbaa !14
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  store i32 0, ptr %i.ff, align 4, !tbaa !16
  %i.fg = load ptr, ptr %i.fa, align 8, !tbaa !17
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  tail call void %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %i.fa) #20, !inline_history !112
  %i.fj = load ptr, ptr %i.fa, align 8, !tbaa !17
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8
  tail call void %i.fl(ptr noundef nonnull align 8 dereferenceable(16) %i.fa) #20, !inline_history !112
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ah:                                            ; preds = %bb.af
  %i.fm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i = icmp eq i8 %i.fm, 0
  br i1 %.not.i.i.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fn = add nsw i32 %i.fe, -1
  store i32 %i.fn, ptr %i.fb, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.fo = atomicrmw volatile add ptr %i.fb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i = phi i32 [ %i.fe, %bb.ai ], [ %i.fo, %bb.aj ]
  %i.fp = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.fp, label %bb.ak, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !22

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fa) #20
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ag, %bb.ae
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.030.041, i64 16 ; 2 uses
  %.not37 = icmp eq ptr %i.fq, %i.et
  br i1 %.not37, label %._crit_edge43, label %.lr.ph42

bb.al:                                            ; preds = %.lr.ph42
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.fr, %bb.al ], [ %i.eu, %bb.ad ]
  tail call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.h) #20
  tail call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef captures(address_is_null) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.2", align 8     ; 15 uses
  %5 = alloca %"class.std::shared_ptr.10", align 8 ; 11 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.arrow::(anonymous namespace)::ConcatenateImpl", align 8 ; 8 uses
  %8 = alloca %"class.std::unique_ptr.241", align 8 ; 9 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %11 = alloca %"struct.arrow::ArraySpan", align 8 ; 12 uses
  %12 = alloca %"class.arrow::Result.237", align 8 ; 14 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %15 = alloca %"struct.arrow::ArraySpan", align 8 ; 12 uses
  %16 = alloca %"class.arrow::Result", align 8    ; 13 uses
  %17 = alloca %"class.arrow::Result.113", align 8 ; 12 uses
  %18 = alloca %"class.std::unique_ptr.118", align 8 ; 7 uses
  %19 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %20 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %21 = alloca %"class.arrow::internal::BitRunReader", align 8 ; 12 uses
  %22 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %23 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %24 = alloca %"class.std::shared_ptr.42", align 16 ; 5 uses
  %25 = alloca %"class.std::vector.28", align 16  ; 17 uses
  %26 = alloca %"class.arrow::Result.223", align 8 ; 12 uses
  %27 = alloca %"class.std::shared_ptr", align 16 ; 6 uses
  %28 = alloca %"class.std::shared_ptr.10", align 8 ; 9 uses
  %29 = alloca %"class.std::shared_ptr.7", align 8 ; 9 uses
  %30 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %31 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %32 = alloca %"class.std::shared_ptr.7", align 8 ; 8 uses
  %33 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %34 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %35 = alloca %"class.std::shared_ptr.7", align 8 ; 7 uses
  %36 = alloca %"class.std::shared_ptr.7", align 8 ; 7 uses
  %37 = alloca %"class.arrow::EqualOptions", align 8 ; 7 uses
  %38 = alloca %"class.arrow::Result.96", align 8 ; 10 uses
  %39 = alloca %"class.std::vector.28", align 16  ; 10 uses
  %40 = alloca %"class.arrow::Result.51", align 8 ; 10 uses
  %41 = alloca %"class.arrow::Result.96", align 8 ; 15 uses
  %42 = alloca %"class.std::vector.28", align 16  ; 9 uses
  %43 = alloca %"class.arrow::Result.51", align 8 ; 16 uses
  %44 = alloca %"class.arrow::Result.139", align 8 ; 14 uses
  %45 = alloca %"class.std::vector.2", align 16   ; 12 uses
  %46 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %47 = alloca %"class.arrow::(anonymous namespace)::ConcatenateImpl", align 8 ; 8 uses
  %48 = alloca %"class.std::vector.2", align 16   ; 11 uses
  %49 = alloca %"class.arrow::Result.151", align 8 ; 10 uses
  %50 = alloca %"class.arrow::Result.139", align 8 ; 13 uses
  %51 = alloca %"class.std::vector.2", align 16   ; 10 uses
  %52 = alloca %"struct.arrow::(anonymous namespace)::ErrorHints", align 8 ; 10 uses
  %53 = alloca %"class.arrow::(anonymous namespace)::ConcatenateImpl", align 8 ; 8 uses
  %54 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %55 = alloca %"class.std::shared_ptr", align 8  ; 6 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  %56 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %57 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %58 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 10 uses
  %59 = alloca %"class.std::__shared_ptr.43", align 16 ; 5 uses
  %60 = alloca %"class.arrow::Result.113", align 8 ; 12 uses
  %61 = alloca %"class.std::unique_ptr.118", align 8 ; 7 uses
  %62 = alloca %"class.arrow::Result.108", align 8 ; 10 uses
  %63 = alloca %"class.std::allocator.37", align 1 ; 3 uses
  %64 = alloca %"class.std::vector.103", align 8  ; 18 uses
  %65 = alloca %"struct.arrow::ArraySpan", align 8 ; 12 uses
  %66 = alloca %"class.arrow::Result.160", align 8 ; 12 uses
  %67 = alloca %"struct.arrow::(anonymous namespace)::ErrorHints", align 8 ; 9 uses
  %68 = alloca %"class.arrow::Result.139", align 8 ; 10 uses
  %69 = alloca %"class.std::vector.2", align 16   ; 10 uses
  %70 = alloca %"class.arrow::Status", align 8    ; 10 uses
  %71 = alloca %"class.arrow::(anonymous namespace)::ConcatenateImpl", align 8 ; 8 uses
  %72 = alloca %"class.std::shared_ptr.190", align 16 ; 7 uses
  %73 = alloca %"class.arrow::Result.96", align 8 ; 10 uses
  %74 = alloca %"class.std::vector.28", align 16  ; 10 uses
  %75 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %76 = alloca %"class.arrow::Result.51", align 8 ; 10 uses
  %77 = alloca %"class.arrow::Result.96", align 8 ; 10 uses
  %78 = alloca %"class.std::vector.28", align 8   ; 9 uses
  %79 = alloca %"class.arrow::Result.108", align 8 ; 16 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %80 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %81 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %82 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 10 uses
  %83 = alloca %"class.std::__shared_ptr.43", align 16 ; 5 uses
  %84 = alloca %"class.arrow::Result.113", align 8 ; 12 uses
  %85 = alloca %"class.std::unique_ptr.118", align 8 ; 7 uses
  %86 = alloca %"class.arrow::Result.108", align 8 ; 10 uses
  %87 = alloca %"class.std::allocator.37", align 1 ; 3 uses
  %88 = alloca %"class.std::vector.103", align 8  ; 18 uses
  %89 = alloca %"struct.arrow::ArraySpan", align 8 ; 12 uses
  %90 = alloca %"class.arrow::Result.160", align 8 ; 12 uses
  %91 = alloca %"struct.arrow::(anonymous namespace)::ErrorHints", align 8 ; 9 uses
  %92 = alloca %"class.arrow::Result.139", align 8 ; 10 uses
  %93 = alloca %"class.std::vector.2", align 16   ; 10 uses
  %94 = alloca %"class.arrow::Status", align 8    ; 10 uses
  %95 = alloca %"class.arrow::(anonymous namespace)::ConcatenateImpl", align 8 ; 8 uses
  %96 = alloca %"class.std::shared_ptr.169", align 16 ; 7 uses
  %97 = alloca %"class.arrow::Result.96", align 8 ; 10 uses
  %98 = alloca %"class.std::vector.28", align 16  ; 10 uses
  %99 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %100 = alloca %"class.arrow::Result.51", align 8 ; 10 uses
  %101 = alloca %"class.arrow::Result.96", align 8 ; 10 uses
  %102 = alloca %"class.std::vector.28", align 8  ; 10 uses
  %103 = alloca %"class.arrow::Result.108", align 8 ; 16 uses
  %104 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %105 = alloca %"class.std::shared_ptr", align 16 ; 6 uses
  %106 = alloca %"class.std::vector.103", align 8 ; 10 uses
  %107 = alloca %"class.arrow::Result.96", align 8 ; 14 uses
  %108 = alloca %"class.std::vector.28", align 16 ; 10 uses
  %109 = alloca %"class.arrow::Result.108", align 8 ; 11 uses
  %110 = alloca %"class.arrow::Result.139", align 8 ; 10 uses
  %111 = alloca %"class.std::vector.2", align 16  ; 10 uses
  %112 = alloca %"struct.arrow::(anonymous namespace)::ErrorHints", align 8 ; 10 uses
  %113 = alloca %"class.arrow::(anonymous namespace)::ConcatenateImpl", align 8 ; 8 uses
  %114 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %115 = alloca %"class.std::shared_ptr", align 8 ; 6 uses
  %116 = alloca %"class.arrow::Status", align 8   ; 6 uses
  %117 = alloca %"class.arrow::Status", align 8   ; 93 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 25 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load atomic i64, ptr %i.e seq_cst, align 8
  %.not = icmp eq i64 %i.f, 0
  %.pre30 = load ptr, ptr %i.c, align 8, !tbaa !39 ; 7 uses
  br i1 %.not, label %_ZN5arrow8internal24may_have_validity_bitmapENS_4Type4typeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %.pre30, align 8, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !113
  switch i32 %i.i, label %bb.c [
    i32 0, label %_ZN5arrow8internal24may_have_validity_bitmapENS_4Type4typeE.exit
    i32 28, label %_ZN5arrow8internal24may_have_validity_bitmapENS_4Type4typeE.exit
    i32 27, label %_ZN5arrow8internal24may_have_validity_bitmapENS_4Type4typeE.exit
    i32 38, label %_ZN5arrow8internal24may_have_validity_bitmapENS_4Type4typeE.exit
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #20
  %i.j = load ptr, ptr %1, align 8, !tbaa !85, !noalias !129, !nonnull !106, !align !107 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !35, !noalias !129 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !31, !noalias !129 ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 4                   ; 8 uses
  %i.r = icmp ugt i64 %i.q, 384307168202282325
  br i1 %i.r, label %.noexc.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_16BitmapESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i

.noexc.i:                                         ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #21, !noalias !129
  unreachable

_ZNSt6vectorIN5arrow12_GLOBAL__N_16BitmapESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i: ; preds = %bb.c
  %.not.i.i.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_115ConcatenateImpl7BitmapsEm.exit, label %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_16BitmapESaIS2_EEC2EmRKS3_.exit.i.i

_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_16BitmapESaIS2_EEC2EmRKS3_.exit.i.i: ; preds = %_ZNSt6vectorIN5arrow12_GLOBAL__N_16BitmapESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i
  %i.s = mul nuw nsw i64 %i.q, 24
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #22, !noalias !129 ; 5 uses
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_16BitmapESaIS2_EEC2EmRKS3_.exit.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.prol = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.t, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_16BitmapESaIS2_EEC2EmRKS3_.exit.i.i ] ; 4 uses
  %.057.i.i.i.i.i.i.prol = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.q, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_16BitmapESaIS2_EEC2EmRKS3_.exit.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_16BitmapESaIS2_EEC2EmRKS3_.exit.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %.08.i.i.i.i.i.i.prol, align 8, !noalias !129
  store i64 -1, ptr %i.u, align 8, !tbaa !132, !noalias !129
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 16
  store i64 0, ptr %i.v, align 8, !tbaa !134, !noalias !129
  %i.w = add i64 %.057.i.i.i.i.i.i.prol, -1       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !135

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_16BitmapESaIS2_EEC2EmRKS3_.exit.i.i
  %.lcssa1145.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_16BitmapESaIS2_EEC2EmRKS3_.exit.i.i ], [ %i.x, %.lr.ph.i.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.i.unr = phi ptr [ %i.t, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_16BitmapESaIS2_EEC2EmRKS3_.exit.i.i ], [ %i.x, %.lr.ph.i.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.i.unr = phi i64 [ %i.q, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_16BitmapESaIS2_EEC2EmRKS3_.exit.i.i ], [ %i.w, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.y = icmp ult i64 %i.q, 4
  br i1 %i.y, label %.lr.ph.i.preheader, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i.i ], [ %.057.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8
  store i64 0, ptr %.08.i.i.i.i.i.i, align 8, !noalias !129
  store i64 -1, ptr %i.z, align 8, !tbaa !132, !noalias !129
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16
  store i64 0, ptr %i.aa, align 8, !tbaa !134, !noalias !129
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 32
  store i64 0, ptr %i.ab, align 8, !noalias !129
  store i64 -1, ptr %i.ac, align 8, !tbaa !132, !noalias !129
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 40
  store i64 0, ptr %i.ad, align 8, !tbaa !134, !noalias !129
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 56
  store i64 0, ptr %i.ae, align 8, !noalias !129
  store i64 -1, ptr %i.af, align 8, !tbaa !132, !noalias !129
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 64
  store i64 0, ptr %i.ag, align 8, !tbaa !134, !noalias !129
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 80
  store i64 0, ptr %i.ah, align 8, !noalias !129
  store i64 -1, ptr %i.ai, align 8, !tbaa !132, !noalias !129
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 88
  store i64 0, ptr %i.aj, align 8, !tbaa !134, !noalias !129
  %i.ak = add i64 %.057.i.i.i.i.i.i, -4           ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i.3, label %.lr.ph.i.preheader, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !137

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %.lcssa1145 = phi ptr [ %.lcssa1145.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.al, %.lr.ph.i.i.i.i.i.i ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN5arrow12_GLOBAL__N_16BitmapC2ERKSt10shared_ptrINS_6BufferEENS0_5RangeE.exit.i
  %.01021.i = phi i64 [ %i.bc, %_ZN5arrow12_GLOBAL__N_16BitmapC2ERKSt10shared_ptrINS_6BufferEENS0_5RangeE.exit.i ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.01021.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !39, !noalias !129 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !138, !noalias !129
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !93, !noalias !129
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !90, !noalias !129
  %.val.i = load ptr, ptr %i.at, align 8, !tbaa !139, !noalias !129 ; 3 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %_ZN5arrow12_GLOBAL__N_16BitmapC2ERKSt10shared_ptrINS_6BufferEENS0_5RangeE.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i, i64 9
  %i.av = load i8, ptr %i.au, align 1, !tbaa !142, !range !150, !noalias !129, !noundef !106
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
end_hunk_0
begin_hunk_1_@_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE:bb.a

bb.adz:                                           ; preds = %bb.ady
  store i32 0, ptr %i.crm, align 8, !tbaa !14
  %i.crq = getelementptr inbounds nuw i8, ptr %i.crl, i64 12
  store i32 0, ptr %i.crq, align 4, !tbaa !16
  %i.crr = load ptr, ptr %i.crl, align 8, !tbaa !17
  %i.crs = getelementptr inbounds nuw i8, ptr %i.crr, i64 16
  %i.crt = load ptr, ptr %i.crs, align 8
  call void %i.crt(ptr noundef nonnull align 8 dereferenceable(16) %i.crl) #20, !inline_history !523
  %i.cru = load ptr, ptr %i.crl, align 8, !tbaa !17
  %i.crv = getelementptr inbounds nuw i8, ptr %i.cru, i64 24
  %i.crw = load ptr, ptr %i.crv, align 8
  call void %i.crw(ptr noundef nonnull align 8 dereferenceable(16) %i.crl) #20, !inline_history !523
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66.i.i

bb.aea:                                           ; preds = %bb.ady
  %i.crx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20, !noalias !501
  %.not.i.i.i63.i.i = icmp eq i8 %i.crx, 0
  br i1 %.not.i.i.i63.i.i, label %bb.aec, label %bb.aeb

bb.aeb:                                           ; preds = %bb.aea
  %i.cry = add nsw i32 %i.crp, -1
  store i32 %i.cry, ptr %i.crm, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64.i.i

bb.aec:                                           ; preds = %bb.aea
  %i.crz = atomicrmw volatile add ptr %i.crm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64.i.i: ; preds = %bb.aec, %bb.aeb
  %.0.i.i.i.i65.i.i = phi i32 [ %i.crp, %bb.aeb ], [ %i.crz, %bb.aec ]
  %i.csa = icmp eq i32 %.0.i.i.i.i65.i.i, 1
  br i1 %i.csa, label %bb.aed, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66.i.i, !prof !22

bb.aed:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.crl) #20
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66.i.i

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66.i.i: ; preds = %bb.aed, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64.i.i, %bb.adz, %bb.adx
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20, !noalias !501
  br label %_ZNSt10unique_ptrIN5arrow17DictionaryUnifierESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN5arrow17DictionaryUnifierESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66.i.i, %_ZN5arrow6StatusD2Ev.exit43.i.i
  %i.csb = load ptr, ptr %i.ckr, align 8, !tbaa !17
  %i.csc = getelementptr inbounds nuw i8, ptr %i.csb, i64 8
  %i.csd = load ptr, ptr %i.csc, align 8
  call void %i.csd(ptr noundef nonnull align 8 dereferenceable(8) %i.ckr) #20, !inline_history !531
  br label %bb.aef

bb.aee:                                           ; preds = %bb.adk, %bb.aco
  %.pn28.i.i = phi { ptr, i32 } [ %i.cng, %bb.aco ], [ %.pn.i.i, %bb.adk ] ; 2 uses
  %.not.i68.i.i = icmp eq i64 %i.ckq, 0
  br i1 %.not.i68.i.i, label %_ZNSt10unique_ptrIN5arrow17DictionaryUnifierESt14default_deleteIS1_EED2Ev.exit70.i.i, label %_ZNKSt14default_deleteIN5arrow17DictionaryUnifierEEclEPS1_.exit.i69.i.i

_ZNKSt14default_deleteIN5arrow17DictionaryUnifierEEclEPS1_.exit.i69.i.i: ; preds = %bb.aee, %.thread.i.i409
  %.pn2884.i.i = phi { ptr, i32 } [ %i.cqa, %.thread.i.i409 ], [ %.pn28.i.i, %bb.aee ]
  %i.cse = load ptr, ptr %i.ckr, align 8, !tbaa !17, !noalias !498
  %i.csf = getelementptr inbounds nuw i8, ptr %i.cse, i64 8
  %i.csg = load ptr, ptr %i.csf, align 8, !noalias !498
  call void %i.csg(ptr noundef nonnull align 8 dereferenceable(8) %i.ckr) #20, !noalias !498, !inline_history !531
  br label %_ZNSt10unique_ptrIN5arrow17DictionaryUnifierESt14default_deleteIS1_EED2Ev.exit70.i.i

bb.aef:                                           ; preds = %_ZNSt10unique_ptrIN5arrow17DictionaryUnifierESt14default_deleteIS1_EED2Ev.exit.i.i, %bb.abz
  %i.csh = load ptr, ptr %26, align 8, !tbaa !27, !noalias !501
  %i.csi = icmp eq ptr %i.csh, null
  br i1 %i.csi, label %bb.aeg, label %_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i, !prof !30

bb.aeg:                                           ; preds = %bb.aef
  %i.csj = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.csk = load ptr, ptr %i.csj, align 8, !tbaa !503, !noalias !501 ; 3 uses
  %.not.i.i.i.i71.i.i = icmp eq ptr %i.csk, null
  br i1 %.not.i.i.i.i71.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEED2Ev.exit.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i

_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i: ; preds = %bb.aeg
  %i.csl = load ptr, ptr %i.csk, align 8, !tbaa !17
  %i.csm = getelementptr inbounds nuw i8, ptr %i.csl, i64 8
  %i.csn = load ptr, ptr %i.csm, align 8
  call void %i.csn(ptr noundef nonnull align 8 dereferenceable(8) %i.csk) #20, !inline_history !532
  %.pr.pre.i.i.i405 = load ptr, ptr %26, align 8, !tbaa !27, !noalias !501
  %i.cso = icmp eq ptr %.pr.pre.i.i.i405, null
  br i1 %i.cso, label %_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEED2Ev.exit.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i, !prof !263

_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i, %bb.aef
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %26)
  br label %_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEED2Ev.exit.i.i

_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEED2Ev.exit.i.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i, %_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i, %bb.aeg
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20, !noalias !501
  %i.csp = load ptr, ptr %25, align 16, !tbaa !90, !noalias !501 ; 3 uses
  %i.csq = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.csr = load ptr, ptr %i.csq, align 8, !tbaa !87, !noalias !501 ; 2 uses
  %.not4.i.i.i.i.i380 = icmp eq ptr %i.csp, %i.csr
  br i1 %.not4.i.i.i.i.i380, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i.i388, label %.lr.ph.i.i.i.i.i381

.lr.ph.i.i.i.i.i381:                              ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEED2Ev.exit.i.i, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i.i386
  %.05.i.i.i.i.i382 = phi ptr [ %i.ctj, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i.i386 ], [ %i.csp, %_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEED2Ev.exit.i.i ] ; 2 uses
  %i.css = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i382, i64 8
  %i.cst = load ptr, ptr %i.css, align 8, !tbaa !11 ; 8 uses
  %.not.i.i.i.i.i.i.i.i383 = icmp eq ptr %i.cst, null
  br i1 %.not.i.i.i.i.i.i.i.i383, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i.i386, label %bb.aeh

bb.aeh:                                           ; preds = %.lr.ph.i.i.i.i.i381
  %i.csu = getelementptr inbounds nuw i8, ptr %i.cst, i64 8 ; 4 uses
  %i.csv = load atomic i64, ptr %i.csu acquire, align 8 ; 2 uses
  %i.csw = icmp eq i64 %i.csv, 4294967297
  %i.csx = trunc i64 %i.csv to i32                ; 2 uses
  br i1 %i.csw, label %bb.aei, label %bb.aej

bb.aei:                                           ; preds = %bb.aeh
  store i32 0, ptr %i.csu, align 8, !tbaa !14
  %i.csy = getelementptr inbounds nuw i8, ptr %i.cst, i64 12
  store i32 0, ptr %i.csy, align 4, !tbaa !16
  %i.csz = load ptr, ptr %i.cst, align 8, !tbaa !17
  %i.cta = getelementptr inbounds nuw i8, ptr %i.csz, i64 16
  %i.ctb = load ptr, ptr %i.cta, align 8
  call void %i.ctb(ptr noundef nonnull align 8 dereferenceable(16) %i.cst) #20, !inline_history !533
  %i.ctc = load ptr, ptr %i.cst, align 8, !tbaa !17
  %i.ctd = getelementptr inbounds nuw i8, ptr %i.ctc, i64 24
  %i.cte = load ptr, ptr %i.ctd, align 8
  call void %i.cte(ptr noundef nonnull align 8 dereferenceable(16) %i.cst) #20, !inline_history !533
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i.i386

bb.aej:                                           ; preds = %bb.aeh
  %i.ctf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20, !noalias !501
  %.not.i.i.i.i.i.i.i72.i.i = icmp eq i8 %i.ctf, 0
  br i1 %.not.i.i.i.i.i.i.i72.i.i, label %bb.ael, label %bb.aek

bb.aek:                                           ; preds = %bb.aej
  %i.ctg = add nsw i32 %i.csx, -1
  store i32 %i.ctg, ptr %i.csu, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i384

bb.ael:                                           ; preds = %bb.aej
  %i.cth = atomicrmw volatile add ptr %i.csu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i384

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i384: ; preds = %bb.ael, %bb.aek
  %.0.i.i.i.i.i.i.i.i.i.i385 = phi i32 [ %i.csx, %bb.aek ], [ %i.cth, %bb.ael ]
  %i.cti = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i385, 1
  br i1 %i.cti, label %bb.aem, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i.i386, !prof !22

bb.aem:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i384
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cst) #20
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i.i386

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i.i386: ; preds = %bb.aem, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i384, %bb.aei, %.lr.ph.i.i.i.i.i381
  %i.ctj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i382, i64 16 ; 2 uses
  %.not.i.i.i73.i.i = icmp eq ptr %i.ctj, %i.csr
  br i1 %.not.i.i.i73.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i381, !llvm.loop !92

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i.i386
  %.pr.i.i.i387 = load ptr, ptr %25, align 16, !tbaa !90, !noalias !501
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i.i388

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i.i388: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEED2Ev.exit.i.i
  %i.ctk = phi ptr [ %.pr.i.i.i387, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.csp, %_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEED2Ev.exit.i.i ] ; 3 uses
  %.not.i.i1.i.i.i389 = icmp eq ptr %i.ctk, null
  br i1 %.not.i.i1.i.i.i389, label %bb.aep, label %bb.aen

bb.aen:                                           ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i.i388
  %i.ctl = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.ctm = load ptr, ptr %i.ctl, align 16, !tbaa !185, !noalias !501
  %i.ctn = ptrtoint ptr %i.ctm to i64
  %i.cto = ptrtoint ptr %i.ctk to i64
  %i.ctp = sub i64 %i.ctn, %i.cto
  call void @_ZdlPvm(ptr noundef nonnull %i.ctk, i64 noundef %i.ctp) #23
  br label %bb.aep

_ZNSt10unique_ptrIN5arrow17DictionaryUnifierESt14default_deleteIS1_EED2Ev.exit70.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow17DictionaryUnifierEEclEPS1_.exit.i69.i.i, %bb.aee
  %.pn28.pn.pn.i.i = phi { ptr, i32 } [ %.pn2884.i.i, %_ZNKSt14default_deleteIN5arrow17DictionaryUnifierEEclEPS1_.exit.i69.i.i ], [ %.pn28.i.i, %bb.aee ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %26) #20, !noalias !498
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20, !noalias !501
  br label %bb.aeo

bb.aeo:                                           ; preds = %_ZNSt10unique_ptrIN5arrow17DictionaryUnifierESt14default_deleteIS1_EED2Ev.exit70.i.i, %bb.aca
  %.pn28.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn28.pn.pn.i.i, %_ZNSt10unique_ptrIN5arrow17DictionaryUnifierESt14default_deleteIS1_EED2Ev.exit70.i.i ], [ %i.cko, %bb.aca ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %25) #20, !noalias !498
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20, !noalias !501
  br label %.body.i369

bb.aep:                                           ; preds = %bb.aen, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i.i388
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20, !noalias !501
  call void @llvm.lifetime.end.p0(ptr nonnull %27), !noalias !471
  %i.ctq = load ptr, ptr %41, align 8, !tbaa !27, !noalias !471
  %i.ctr = icmp eq ptr %i.ctq, null
  br i1 %i.ctr, label %bb.aes, label %bb.aeq, !prof !30

bb.aeq:                                           ; preds = %bb.aep
  invoke void @_ZN5arrow6StatusC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull align 8 dereferenceable(8) %41)
          to label %bb.agy unwind label %bb.aer

bb.aer:                                           ; preds = %bb.aeq
  %i.cts = landingpad { ptr, i32 }
          cleanup
  br label %bb.agz

bb.aes:                                           ; preds = %bb.aep
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #20, !noalias !471
  call void @llvm.experimental.noalias.scope.decl(metadata !534)
  call void @llvm.experimental.noalias.scope.decl(metadata !537)
  %118 = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 3 uses
  %i.ctt = getelementptr inbounds nuw i8, ptr %42, i64 8
  %119 = load <2 x ptr>, ptr %118, align 8, !tbaa !182, !noalias !540
  %120 = load ptr, ptr %118, align 8, !tbaa !90, !noalias !540
  store <2 x ptr> %119, ptr %42, align 16, !tbaa !182, !alias.scope !541, !noalias !471
  %i.ctu = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.ctv = getelementptr inbounds nuw i8, ptr %41, i64 24
  %121 = load ptr, ptr %i.ctv, align 8, !tbaa !185, !noalias !540
  store ptr %121, ptr %i.ctu, align 16, !tbaa !185, !alias.scope !541, !noalias !471
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %118, i8 0, i64 24, i1 false), !noalias !540
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #20, !noalias !471
  call void @llvm.experimental.noalias.scope.decl(metadata !542)
  %i.ctw = load ptr, ptr %i.ces, align 8, !tbaa !17, !noalias !542
  %i.ctx = getelementptr inbounds nuw i8, ptr %i.ctw, i64 72
  %i.cty = load ptr, ptr %i.ctx, align 8, !noalias !542
  %i.ctz = invoke noundef i32 %i.cty(ptr noundef nonnull align 8 dereferenceable(72) %i.ces)
          to label %.noexc65.i unwind label %bb.aga, !inline_history !545 ; 2 uses

.noexc65.i:                                       ; preds = %bb.aes
  %i.cua = sdiv i32 %i.ctz, 8
  %i.cub = load ptr, ptr %1, align 8, !tbaa !85, !noalias !546, !nonnull !106, !align !107 ; 2 uses
  %i.cuc = load ptr, ptr %i.cub, align 8, !tbaa !86, !noalias !542 ; 2 uses
  %i.cud = getelementptr inbounds nuw i8, ptr %i.cub, i64 8
  %i.cue = load ptr, ptr %i.cud, align 8, !tbaa !86, !noalias !542 ; 2 uses
  %.not139143.i.i = icmp eq ptr %i.cuc, %i.cue
  br i1 %.not139143.i.i, label %._crit_edge.i.i, label %.lr.ph.i57.i

.lr.ph.i57.i:                                     ; preds = %.noexc65.i, %.lr.ph.i57.i
  %.077145.i.i = phi i64 [ %i.cui, %.lr.ph.i57.i ], [ 0, %.noexc65.i ]
  %.sroa.0122.0144.i.i = phi ptr [ %i.cuj, %.lr.ph.i57.i ], [ %i.cuc, %.noexc65.i ] ; 2 uses
  %i.cuf = load ptr, ptr %.sroa.0122.0144.i.i, align 8, !tbaa !39, !noalias !542
  %i.cug = getelementptr inbounds nuw i8, ptr %i.cuf, i64 16
  %i.cuh = load i64, ptr %i.cug, align 8, !tbaa !93, !noalias !542
  %i.cui = add nsw i64 %i.cuh, %.077145.i.i       ; 2 uses
  %i.cuj = getelementptr inbounds nuw i8, ptr %.sroa.0122.0144.i.i, i64 16 ; 2 uses
  %.not139.i.i = icmp eq ptr %i.cuj, %i.cue
  br i1 %.not139.i.i, label %._crit_edge.i.i, label %.lr.ph.i57.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i57.i, %.noexc65.i
  %.077.lcssa.i.i = phi i64 [ 0, %.noexc65.i ], [ %i.cui, %.lr.ph.i57.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20, !noalias !546
  %i.cuk = sext i32 %i.cua to i64                 ; 4 uses
  %i.cul = mul nsw i64 %.077.lcssa.i.i, %i.cuk
  %i.cum = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cun = load ptr, ptr %i.cum, align 8, !tbaa !75, !noalias !546
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.113") align 8 %17, i64 noundef %i.cul, ptr noundef %i.cun)
          to label %.noexc66.i unwind label %bb.aga

.noexc66.i:                                       ; preds = %._crit_edge.i.i
  %i.cuo = load ptr, ptr %17, align 8, !tbaa !27, !noalias !546
  %i.cup = icmp eq ptr %i.cuo, null
  br i1 %i.cup, label %bb.aeu, label %bb.aet, !prof !30

bb.aet:                                           ; preds = %.noexc66.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(8) %17) #20
  br label %bb.afw

bb.aeu:                                           ; preds = %.noexc66.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20, !noalias !546
  call void @llvm.experimental.noalias.scope.decl(metadata !547)
  call void @llvm.experimental.noalias.scope.decl(metadata !550)
  %i.cuq = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.cur = load i64, ptr %i.cuq, align 8, !tbaa !283, !noalias !553 ; 2 uses
  store i64 %i.cur, ptr %18, align 8, !tbaa !283, !alias.scope !554, !noalias !546
  store ptr null, ptr %i.cuq, align 8, !tbaa !283, !noalias !553
  %i.cus = load ptr, ptr %1, align 8, !tbaa !85, !noalias !546, !nonnull !106, !align !107 ; 2 uses
  %i.cut = getelementptr inbounds nuw i8, ptr %i.cus, i64 8
  %i.cuu = load ptr, ptr %i.cut, align 8, !tbaa !35, !noalias !542
  %i.cuv = load ptr, ptr %i.cus, align 8, !tbaa !31, !noalias !542 ; 2 uses
  %.not150.not.i.i = icmp eq ptr %i.cuu, %i.cuv
  %i.cuw = inttoptr i64 %i.cur to ptr             ; 7 uses
  br i1 %.not150.not.i.i, label %.critedge90.i.i, label %.lr.ph155.i.i

.lr.ph155.i.i:                                    ; preds = %bb.aeu
  %i.cux = getelementptr inbounds nuw i8, ptr %i.cuw, i64 9
  %i.cuy = load i8, ptr %i.cux, align 1, !tbaa !142, !range !150, !noalias !542, !noundef !106
  %i.cuz = trunc nuw i8 %i.cuy to i1
  %i.cva = getelementptr inbounds nuw i8, ptr %i.cuw, i64 8
  %i.cvb = load i8, ptr %i.cva, align 8, !range !150, !noalias !542
  %i.cvc = trunc nuw i8 %i.cvb to i1
  %i.cvd = select i1 %i.cuz, i1 %i.cvc, i1 false, !prof !30
  %i.cve = getelementptr inbounds nuw i8, ptr %i.cuw, i64 16
  %i.cvf = load ptr, ptr %i.cve, align 8, !noalias !542
  %i.cvg = select i1 %i.cvd, ptr %i.cvf, ptr null, !prof !30
  %i.cvh = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 5 uses
  %i.cvi = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  %i.cvj = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 3 uses
  %i.cvk = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 9 uses
  %.off.i.i = add i32 %i.ctz, 7
  %.not5.i.i.i.i.i = icmp ult i32 %.off.i.i, 15
  br label %bb.aev

bb.aev:                                           ; preds = %bb.aft, %.lr.ph155.i.i
  %i.cvl = phi ptr [ %i.cuv, %.lr.ph155.i.i ], [ %i.daw, %bb.aft ]
  %.060153.i.i = phi i64 [ 0, %.lr.ph155.i.i ], [ %i.das, %bb.aft ] ; 3 uses
  %.061151.i.i = phi ptr [ %i.cvg, %.lr.ph155.i.i ], [ %i.dar, %bb.aft ] ; 4 uses
  %i.cvm = getelementptr inbounds nuw [16 x i8], ptr %i.cvl, i64 %.060153.i.i ; 5 uses
  %i.cvn = getelementptr inbounds nuw [16 x i8], ptr %120, i64 %.060153.i.i
  %i.cvo = load ptr, ptr %i.cvn, align 8, !tbaa !139, !noalias !542 ; 2 uses
  %i.cvp = getelementptr inbounds nuw i8, ptr %i.cvo, i64 9
  %i.cvq = load i8, ptr %i.cvp, align 1, !tbaa !142, !range !150, !noalias !542, !noundef !106
  %i.cvr = trunc nuw i8 %i.cvq to i1
  %i.cvs = getelementptr inbounds nuw i8, ptr %i.cvo, i64 16
  %i.cvt = load ptr, ptr %i.cvs, align 8, !noalias !542
  %i.cvu = select i1 %i.cvr, ptr %i.cvt, ptr null, !prof !30 ; 2 uses
  %i.cvv = load ptr, ptr %i.cvm, align 8, !tbaa !39, !noalias !542
  %i.cvw = getelementptr inbounds nuw i8, ptr %i.cvv, i64 40
  %i.cvx = load ptr, ptr %i.cvw, align 8, !tbaa !90, !noalias !542 ; 2 uses
  %i.cvy = getelementptr inbounds nuw i8, ptr %i.cvx, i64 16
  %i.cvz = load ptr, ptr %i.cvy, align 8, !tbaa !139, !noalias !542 ; 3 uses
  %.not.i.i60.i = icmp eq ptr %i.cvz, null
  br i1 %.not.i.i60.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.i, label %bb.aew

bb.aew:                                           ; preds = %bb.aev
  %i.cwa = getelementptr inbounds nuw i8, ptr %i.cvz, i64 9
  %i.cwb = load i8, ptr %i.cwa, align 1, !tbaa !142, !range !150, !noalias !542, !noundef !106
  %i.cwc = trunc nuw i8 %i.cwb to i1
  %i.cwd = getelementptr inbounds nuw i8, ptr %i.cvz, i64 16
  %i.cwe = load ptr, ptr %i.cwd, align 8, !noalias !542
  %i.cwf = select i1 %i.cwc, ptr %i.cwe, ptr null, !prof !30
  br label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.i

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.i: ; preds = %bb.aew, %bb.aev
  %.0.i.i.i = phi ptr [ %i.cwf, %bb.aew ], [ null, %bb.aev ]
  %i.cwg = load ptr, ptr %i.cvx, align 8, !tbaa !139, !noalias !542
  %.not140.i.i = icmp eq ptr %i.cwg, null
  br i1 %.not140.i.i, label %bb.aex, label %bb.afc

bb.aex:                                           ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20, !noalias !546
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20, !noalias !546
  %i.cwh = load ptr, ptr %i.cvm, align 8, !tbaa !39, !noalias !542 ; 3 uses
  %i.cwi = getelementptr inbounds nuw i8, ptr %i.cwh, i64 40
  %i.cwj = load ptr, ptr %i.cwi, align 8, !tbaa !90, !noalias !542
  %i.cwk = getelementptr inbounds nuw i8, ptr %i.cwj, i64 16
  %i.cwl = load ptr, ptr %i.cwk, align 8, !tbaa !139, !noalias !542 ; 3 uses
  %.not.i91.i.i = icmp eq ptr %i.cwl, null
  br i1 %.not.i91.i.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit93.i.i, label %bb.aey

bb.aey:                                           ; preds = %bb.aex
  %i.cwm = getelementptr inbounds nuw i8, ptr %i.cwl, i64 9
  %i.cwn = load i8, ptr %i.cwm, align 1, !tbaa !142, !range !150, !noalias !542, !noundef !106
  %i.cwo = trunc nuw i8 %i.cwn to i1
  %i.cwp = getelementptr inbounds nuw i8, ptr %i.cwl, i64 16
  %i.cwq = load ptr, ptr %i.cwp, align 8, !noalias !542
  %i.cwr = select i1 %i.cwo, ptr %i.cwq, ptr null, !prof !30
  br label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit93.i.i

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit93.i.i: ; preds = %bb.aey, %bb.aex
  %.0.i92.i.i = phi ptr [ %i.cwr, %bb.aey ], [ null, %bb.aex ]
  %i.cws = getelementptr inbounds nuw i8, ptr %i.cwh, i64 32
  %i.cwt = load i64, ptr %i.cws, align 8, !tbaa !138, !noalias !542
  %i.cwu = getelementptr inbounds nuw i8, ptr %i.cwh, i64 16
  %i.cwv = load i64, ptr %i.cwu, align 8, !tbaa !93, !noalias !542
  invoke void @_ZN5arrow8internal13TransposeIntsERKNS_8DataTypeES3_PKhPhlllPKi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %20, ptr noundef nonnull align 8 dereferenceable(72) %i.ces, ptr noundef nonnull align 8 dereferenceable(72) %i.ces, ptr noundef %.0.i92.i.i, ptr noundef %.061151.i.i, i64 noundef %i.cwt, i64 noundef 0, i64 noundef %i.cwv, ptr noundef %i.cvu)
          to label %_ZN5arrow6StatusD2Ev.exit.i64.i unwind label %bb.afb, !noalias !542

_ZN5arrow6StatusD2Ev.exit.i64.i:                  ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit93.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !555)
  %i.cww = load ptr, ptr %20, align 8, !tbaa !27, !noalias !558 ; 2 uses
  store ptr %i.cww, ptr %19, align 8, !tbaa !27, !alias.scope !555, !noalias !546
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20, !noalias !546
  %i.cwx = icmp eq ptr %i.cww, null
  br i1 %i.cwx, label %_ZN5arrow6StatusD2Ev.exit105.i.i, label %bb.aez, !prof !30

bb.aez:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit.i64.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(8) %19) #20
  %i.cwy = load ptr, ptr %19, align 8, !tbaa !27, !noalias !546
  %.not.i95.i.i = icmp eq ptr %i.cwy, null
  br i1 %.not.i95.i.i, label %_ZN5arrow6StatusD2Ev.exit96.i.i, label %bb.afa, !prof !30

bb.afa:                                           ; preds = %bb.aez
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %19)
  br label %_ZN5arrow6StatusD2Ev.exit96.i.i

_ZN5arrow6StatusD2Ev.exit96.i.i:                  ; preds = %bb.afa, %bb.aez
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20, !noalias !546
  br label %.critedge89.i.i

bb.afb:                                           ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit93.i.i
  %i.cwz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20, !noalias !546
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20, !noalias !546
  br label %bb.afv

bb.afc:                                           ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20, !noalias !546
  %i.cxa = load ptr, ptr %i.cvm, align 8, !tbaa !39, !noalias !542 ; 3 uses
  %i.cxb = getelementptr inbounds nuw i8, ptr %i.cxa, i64 40
  %i.cxc = load ptr, ptr %i.cxb, align 8, !tbaa !90, !noalias !542
  %i.cxd = load ptr, ptr %i.cxc, align 8, !tbaa !139, !noalias !542 ; 2 uses
  %i.cxe = getelementptr inbounds nuw i8, ptr %i.cxd, i64 9
  %i.cxf = load i8, ptr %i.cxe, align 1, !tbaa !142, !range !150, !noalias !542, !noundef !106
  %i.cxg = trunc nuw i8 %i.cxf to i1
  %i.cxh = getelementptr inbounds nuw i8, ptr %i.cxd, i64 16
  %i.cxi = load ptr, ptr %i.cxh, align 8, !noalias !542
  %i.cxj = select i1 %i.cxg, ptr %i.cxi, ptr null, !prof !30
  %i.cxk = getelementptr inbounds nuw i8, ptr %i.cxa, i64 32
  %i.cxl = load i64, ptr %i.cxk, align 8, !tbaa !138, !noalias !542
  %i.cxm = getelementptr inbounds nuw i8, ptr %i.cxa, i64 16
  %i.cxn = load i64, ptr %i.cxm, align 8, !tbaa !93, !noalias !542
  invoke void @_ZN5arrow8internal12BitRunReaderC1EPKhll(ptr noundef nonnull align 8 dereferenceable(33) %21, ptr noundef %i.cxj, i64 noundef %i.cxl, i64 noundef %i.cxn)
          to label %.preheader141.i.i unwind label %bb.afj, !noalias !542

.preheader141.i.i:                                ; preds = %bb.afc
  %i.cxo = load i64, ptr %i.cvh, align 8, !tbaa !559, !noalias !546 ; 2 uses
  %i.cxp = load i64, ptr %i.cvi, align 8, !tbaa !561, !noalias !546 ; 2 uses
  %.not.i97146.i.i = icmp slt i64 %i.cxo, %i.cxp
  br i1 %.not.i97146.i.i, label %.lr.ph148.i.i, label %.thread136.i.i, !prof !562

.lr.ph148.i.i:                                    ; preds = %.preheader141.i.i, %bb.afq
  %i.cxq = phi i64 [ %i.dam, %bb.afq ], [ %i.cxp, %.preheader141.i.i ] ; 2 uses
  %i.cxr = phi i64 [ %i.dal, %bb.afq ], [ %i.cxo, %.preheader141.i.i ] ; 4 uses
  %.0147.i.i = phi i64 [ %i.dak, %bb.afq ], [ 0, %.preheader141.i.i ] ; 4 uses
  %i.cxs = load i8, ptr %i.cvj, align 8, !tbaa !563, !range !150, !noalias !546, !noundef !106
  %i.cxt = xor i8 %i.cxs, 1                       ; 4 uses
  store i8 %i.cxt, ptr %i.cvj, align 8, !tbaa !563, !noalias !546
  %i.cxu = and i64 %i.cxr, 63                     ; 2 uses
  %i.cxv = load i64, ptr %i.cvk, align 8, !tbaa !564, !noalias !546
  %notmask.i.i.i.i = shl nsw i64 -1, %i.cxu
  %.not5.i.i.i = xor i64 %i.cxv, -1
  %i.cxw = and i64 %notmask.i.i.i.i, %.not5.i.i.i ; 2 uses
  store i64 %i.cxw, ptr %i.cvk, align 8, !tbaa !564, !noalias !546
  %i.cxx = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cxw, i1 false)
  %i.cxy = sub nsw i64 %i.cxx, %i.cxu
  %i.cxz = add nsw i64 %i.cxy, %i.cxr             ; 6 uses
  store i64 %i.cxz, ptr %i.cvh, align 8, !tbaa !559, !noalias !546
  %i.cya = and i64 %i.cxz, 63
  %i.cyb = icmp eq i64 %i.cya, 0
  br i1 %i.cyb, label %bb.afd, label %.loopexit.i.i404, !prof !22

bb.afd:                                           ; preds = %.lr.ph148.i.i
  %i.cyc = icmp slt i64 %i.cxz, %i.cxq
  br i1 %i.cyc, label %.preheader.preheader.i.i, label %.loopexit.i.i404, !prof !30

.preheader.preheader.i.i:                         ; preds = %bb.afd
  %.pre158.i.i = load ptr, ptr %21, align 8, !tbaa !565, !noalias !546
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.afi, %.preheader.preheader.i.i
  %i.cyd = phi i8 [ %i.czh, %bb.afi ], [ %i.cxt, %.preheader.preheader.i.i ]
  %i.cye = phi ptr [ %i.czi, %bb.afi ], [ %.pre158.i.i, %.preheader.preheader.i.i ]
  %i.cyf = phi i64 [ %i.czo, %bb.afi ], [ %i.cxz, %.preheader.preheader.i.i ]
  %i.cyg = phi i64 [ %i.czr, %bb.afi ], [ %i.cxq, %.preheader.preheader.i.i ]
  %i.cyh = getelementptr inbounds nuw i8, ptr %i.cye, i64 8 ; 4 uses
  store ptr %i.cyh, ptr %21, align 8, !tbaa !565, !noalias !546
  %i.cyi = sub nsw i64 %i.cyg, %i.cyf             ; 6 uses
  store i64 0, ptr %i.cvk, align 8, !tbaa !564, !noalias !546
  %i.cyj = icmp sgt i64 %i.cyi, 63
  br i1 %i.cyj, label %bb.afe, label %bb.aff, !prof !30

bb.afe:                                           ; preds = %.preheader.i.i
  %i.cyk = load i64, ptr %i.cyh, align 1, !noalias !542 ; 2 uses
  store i64 %i.cyk, ptr %i.cvk, align 8, !noalias !546
  br label %bb.afg

bb.aff:                                           ; preds = %.preheader.i.i
  %i.cyl = ashr i64 %i.cyi, 3
  %i.cym = and i64 %i.cyi, 7
  %i.cyn = icmp ne i64 %i.cym, 0
  %i.cyo = zext i1 %i.cyn to i64
  %i.cyp = add nsw i64 %i.cyl, %i.cyo
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cvk, ptr nonnull align 1 %i.cyh, i64 %i.cyp, i1 false), !noalias !542
  %i.cyq = add nsw i64 %i.cyi, -1                 ; 2 uses
  %i.cyr = lshr i64 %i.cyq, 3
  %i.cys = getelementptr inbounds nuw i8, ptr %i.cvk, i64 %i.cyr
  %i.cyt = load i8, ptr %i.cys, align 1, !tbaa !20, !noalias !546
  %i.cyu = trunc i64 %i.cyq to i8
  %i.cyv = and i8 %i.cyu, 7
  %i.cyw = lshr i8 %i.cyt, %i.cyv
  %i.cyx = or i8 %i.cyw, -2
  %.neg.i.i.i.i.i = add nsw i8 %i.cyx, 1
  %i.cyy = sdiv i64 %i.cyi, 8
  %i.cyz = getelementptr inbounds i8, ptr %i.cvk, i64 %i.cyy ; 2 uses
  %i.cza = load i8, ptr %i.cyz, align 1, !tbaa !20, !noalias !546 ; 2 uses
  %i.czb = xor i8 %.neg.i.i.i.i.i, %i.cza
  %i.czc = srem i64 %i.cyi, 8
  %i.czd = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.czc
  %i.cze = load i8, ptr %i.czd, align 1, !tbaa !20, !noalias !546
  %i.czf = and i8 %i.czb, %i.cze
  %i.czg = xor i8 %i.czf, %i.cza
  store i8 %i.czg, ptr %i.cyz, align 1, !tbaa !20, !noalias !546
  %.pre4.pre.i.i.i = load i64, ptr %i.cvk, align 8, !tbaa !564, !noalias !546
  %.pre.i63.i = load ptr, ptr %21, align 8, !tbaa !565, !noalias !546
  %.pre159.i.i = load i8, ptr %i.cvj, align 8, !tbaa !563, !range !150, !noalias !546
  br label %bb.afg

bb.afg:                                           ; preds = %bb.aff, %bb.afe
  %i.czh = phi i8 [ %.pre159.i.i, %bb.aff ], [ %i.cyd, %bb.afe ] ; 4 uses
  %i.czi = phi ptr [ %.pre.i63.i, %bb.aff ], [ %i.cyh, %bb.afe ]
  %.pre4.i.i.i = phi i64 [ %.pre4.pre.i.i.i, %bb.aff ], [ %i.cyk, %bb.afe ] ; 2 uses
  %i.czj = trunc nuw i8 %i.czh to i1
  br i1 %i.czj, label %bb.afh, label %_ZN5arrow8internal12BitRunReader12LoadNextWordEv.exit.i.i.i

bb.afh:                                           ; preds = %bb.afg
  %i.czk = xor i64 %.pre4.i.i.i, -1               ; 2 uses
  store i64 %i.czk, ptr %i.cvk, align 8, !tbaa !564, !noalias !546
end_hunk_1
begin_hunk_2_@_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE:bb.a
  call void %i.dbh(ptr noundef nonnull align 8 dereferenceable(80) %i.dbe) #20, !inline_history !574
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i403

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i403: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i402, %.critedge89.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20, !noalias !546
  br label %bb.afw

bb.afv:                                           ; preds = %bb.afu, %bb.afs, %bb.afb
  %i.dbi = phi ptr [ %.pre160.i.i, %bb.afu ], [ %i.cuw, %bb.afs ], [ %i.cuw, %bb.afb ] ; 3 uses
  %.pn82.i.i = phi { ptr, i32 } [ %i.dbd, %bb.afu ], [ %.pn.pn.i.i, %bb.afs ], [ %i.cwz, %bb.afb ]
  %.not.i108.i.i = icmp eq ptr %i.dbi, null
  br i1 %.not.i108.i.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit110.i.i, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i109.i.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i109.i.i: ; preds = %bb.afv
  %i.dbj = load ptr, ptr %i.dbi, align 8, !tbaa !17, !noalias !542
  %i.dbk = getelementptr inbounds nuw i8, ptr %i.dbj, i64 8
  %i.dbl = load ptr, ptr %i.dbk, align 8, !noalias !542
  call void %i.dbl(ptr noundef nonnull align 8 dereferenceable(80) %i.dbi) #20, !noalias !542, !inline_history !574
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit110.i.i

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit110.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i109.i.i, %bb.afv
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20, !noalias !546
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #20, !noalias !542
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20, !noalias !546
  br label %.body67.i

bb.afw:                                           ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i403, %bb.aet
  %i.dbm = load ptr, ptr %17, align 8, !tbaa !27, !noalias !546
  %i.dbn = icmp eq ptr %i.dbm, null
  br i1 %i.dbn, label %bb.afx, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i390, !prof !30

bb.afx:                                           ; preds = %bb.afw
  %i.dbo = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dbp = load ptr, ptr %i.dbo, align 8, !tbaa !283, !noalias !546 ; 3 uses
  %.not.i.i.i.i.i58.i = icmp eq ptr %i.dbp, null
  br i1 %.not.i.i.i.i.i58.i, label %bb.afy, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i401

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i401: ; preds = %bb.afx
  %i.dbq = load ptr, ptr %i.dbp, align 8, !tbaa !17
  %i.dbr = getelementptr inbounds nuw i8, ptr %i.dbq, i64 8
  %i.dbs = load ptr, ptr %i.dbr, align 8
  call void %i.dbs(ptr noundef nonnull align 8 dereferenceable(80) %i.dbp) #20, !inline_history !575
  %.pr.pre.i.i59.i = load ptr, ptr %17, align 8, !tbaa !27, !noalias !546
  %i.dbt = icmp eq ptr %.pr.pre.i.i59.i, null
  br i1 %i.dbt, label %bb.afy, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i390, !prof !263

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i390: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i401, %bb.afw
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %17)
  br label %bb.afy

bb.afy:                                           ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i390, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i401, %bb.afx
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20, !noalias !546
  %i.dbu = load ptr, ptr %43, align 8, !tbaa !27, !noalias !471
  %i.dbv = icmp eq ptr %i.dbu, null
  br i1 %i.dbv, label %bb.agc, label %bb.afz, !prof !30

bb.afz:                                           ; preds = %bb.afy
  invoke void @_ZN5arrow6StatusC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull align 8 dereferenceable(8) %43)
          to label %bb.agj unwind label %bb.agb

bb.aga:                                           ; preds = %._crit_edge.i.i, %bb.aes
  %i.dbw = landingpad { ptr, i32 }
          cleanup
  br label %.body67.i

bb.agb:                                           ; preds = %bb.afz
  %i.dbx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %43) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #20, !noalias !471
  br label %.body67.i

bb.agc:                                           ; preds = %bb.afy
  %i.dby = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 2 uses
  %i.dbz = load <2 x ptr>, ptr %i.dby, align 8, !tbaa !59, !noalias !576
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dby, i8 0, i64 16, i1 false), !noalias !471
  %i.dca = load ptr, ptr %i.c, align 8, !tbaa !39, !noalias !471
  %i.dcb = getelementptr inbounds nuw i8, ptr %i.dca, i64 40
  %i.dcc = load ptr, ptr %i.dcb, align 8, !tbaa !90 ; 2 uses
  %i.dcd = getelementptr inbounds nuw i8, ptr %i.dcc, i64 16
  %i.dce = getelementptr inbounds nuw i8, ptr %i.dcc, i64 24
  %i.dcf = load ptr, ptr %i.dce, align 8, !tbaa !11 ; 8 uses
  store <2 x ptr> %i.dbz, ptr %i.dcd, align 8, !tbaa !59
  %.not.i.i.i.i69.i = icmp eq ptr %i.dcf, null
  br i1 %.not.i.i.i.i69.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.agd

bb.agd:                                           ; preds = %bb.agc
  %i.dcg = getelementptr inbounds nuw i8, ptr %i.dcf, i64 8 ; 4 uses
  %i.dch = load atomic i64, ptr %i.dcg acquire, align 8 ; 2 uses
  %i.dci = icmp eq i64 %i.dch, 4294967297
  %i.dcj = trunc i64 %i.dch to i32                ; 2 uses
  br i1 %i.dci, label %bb.age, label %bb.agf

bb.age:                                           ; preds = %bb.agd
  store i32 0, ptr %i.dcg, align 8, !tbaa !14
  %i.dck = getelementptr inbounds nuw i8, ptr %i.dcf, i64 12
  store i32 0, ptr %i.dck, align 4, !tbaa !16
  %i.dcl = load ptr, ptr %i.dcf, align 8, !tbaa !17
  %i.dcm = getelementptr inbounds nuw i8, ptr %i.dcl, i64 16
  %i.dcn = load ptr, ptr %i.dcm, align 8
  call void %i.dcn(ptr noundef nonnull align 8 dereferenceable(16) %i.dcf) #20, !inline_history !581
  %i.dco = load ptr, ptr %i.dcf, align 8, !tbaa !17
  %i.dcp = getelementptr inbounds nuw i8, ptr %i.dco, i64 24
  %i.dcq = load ptr, ptr %i.dcp, align 8
  call void %i.dcq(ptr noundef nonnull align 8 dereferenceable(16) %i.dcf) #20, !inline_history !581
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.agf:                                           ; preds = %bb.agd
  %i.dcr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20, !noalias !471
  %.not.i.i.i.i.i70.i = icmp eq i8 %i.dcr, 0
  br i1 %.not.i.i.i.i.i70.i, label %bb.agh, label %bb.agg

bb.agg:                                           ; preds = %bb.agf
  %i.dcs = add nsw i32 %i.dcj, -1
  store i32 %i.dcs, ptr %i.dcg, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i71.i

bb.agh:                                           ; preds = %bb.agf
  %i.dct = atomicrmw volatile add ptr %i.dcg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i71.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i71.i: ; preds = %bb.agh, %bb.agg
  %.0.i.i.i.i.i.i72.i = phi i32 [ %i.dcj, %bb.agg ], [ %i.dct, %bb.agh ]
  %i.dcu = icmp eq i32 %.0.i.i.i.i.i.i72.i, 1
  br i1 %i.dcu, label %bb.agi, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !22

bb.agi:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i71.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dcf) #20
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.agi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i71.i, %bb.age, %bb.agc
  store ptr null, ptr %117, align 8, !tbaa !27, !alias.scope !582
  br label %bb.agj

bb.agj:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.afz
  %i.dcv = load ptr, ptr %43, align 8, !tbaa !27, !noalias !471
  %i.dcw = icmp eq ptr %i.dcv, null
  br i1 %i.dcw, label %bb.agk, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i77.i, !prof !30

bb.agk:                                           ; preds = %bb.agj
  %i.dcx = getelementptr inbounds nuw i8, ptr %43, i64 16
  %i.dcy = load ptr, ptr %i.dcx, align 8, !tbaa !11, !noalias !471 ; 8 uses
  %.not.i.i.i.i.i79.i = icmp eq ptr %i.dcy, null
  br i1 %.not.i.i.i.i.i79.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i83.i, label %bb.agl

bb.agl:                                           ; preds = %bb.agk
  %i.dcz = getelementptr inbounds nuw i8, ptr %i.dcy, i64 8 ; 4 uses
  %i.dda = load atomic i64, ptr %i.dcz acquire, align 8 ; 2 uses
  %i.ddb = icmp eq i64 %i.dda, 4294967297
  %i.ddc = trunc i64 %i.dda to i32                ; 2 uses
  br i1 %i.ddb, label %bb.agm, label %bb.agn

bb.agm:                                           ; preds = %bb.agl
  store i32 0, ptr %i.dcz, align 8, !tbaa !14
  %i.ddd = getelementptr inbounds nuw i8, ptr %i.dcy, i64 12
  store i32 0, ptr %i.ddd, align 4, !tbaa !16
  %i.dde = load ptr, ptr %i.dcy, align 8, !tbaa !17
  %i.ddf = getelementptr inbounds nuw i8, ptr %i.dde, i64 16
  %i.ddg = load ptr, ptr %i.ddf, align 8
  call void %i.ddg(ptr noundef nonnull align 8 dereferenceable(16) %i.dcy) #20, !inline_history !497
  %i.ddh = load ptr, ptr %i.dcy, align 8, !tbaa !17
  %i.ddi = getelementptr inbounds nuw i8, ptr %i.ddh, i64 24
  %i.ddj = load ptr, ptr %i.ddi, align 8
  call void %i.ddj(ptr noundef nonnull align 8 dereferenceable(16) %i.dcy) #20, !inline_history !497
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i83.i

bb.agn:                                           ; preds = %bb.agl
  %i.ddk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20, !noalias !471
  %.not.i.i.i.i.i.i80.i = icmp eq i8 %i.ddk, 0
  br i1 %.not.i.i.i.i.i.i80.i, label %bb.agp, label %bb.ago

bb.ago:                                           ; preds = %bb.agn
  %i.ddl = add nsw i32 %i.ddc, -1
  store i32 %i.ddl, ptr %i.dcz, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i81.i

bb.agp:                                           ; preds = %bb.agn
  %i.ddm = atomicrmw volatile add ptr %i.dcz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i81.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i81.i: ; preds = %bb.agp, %bb.ago
  %.0.i.i.i.i.i.i.i82.i = phi i32 [ %i.ddc, %bb.ago ], [ %i.ddm, %bb.agp ]
  %i.ddn = icmp eq i32 %.0.i.i.i.i.i.i.i82.i, 1
  br i1 %i.ddn, label %bb.agq, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i83.i, !prof !22

bb.agq:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i81.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dcy) #20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i83.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i83.i: ; preds = %bb.agq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i81.i, %bb.agm, %bb.agk
  %.pr.i84.i = load ptr, ptr %43, align 8, !tbaa !27, !noalias !471
  %.not.i.i85.i = icmp eq ptr %.pr.i84.i, null
  br i1 %.not.i.i85.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit86.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i77.i, !prof !263

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i77.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i83.i, %bb.agj
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %43)
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit86.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit86.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i77.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i83.i
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #20, !noalias !471
  %i.ddo = load ptr, ptr %42, align 16, !tbaa !90, !noalias !471 ; 3 uses
  %i.ddp = load ptr, ptr %i.ctt, align 8, !tbaa !87, !noalias !471 ; 2 uses
  %.not4.i.i.i.i391 = icmp eq ptr %i.ddo, %i.ddp
  br i1 %.not4.i.i.i.i391, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i398, label %.lr.ph.i.i.i.i392

.lr.ph.i.i.i.i392:                                ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit86.i, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i396
  %.05.i.i.i.i393 = phi ptr [ %i.deh, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i396 ], [ %i.ddo, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit86.i ] ; 2 uses
  %i.ddq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i393, i64 8
  %i.ddr = load ptr, ptr %i.ddq, align 8, !tbaa !11 ; 8 uses
  %.not.i.i.i.i.i.i87.i = icmp eq ptr %i.ddr, null
  br i1 %.not.i.i.i.i.i.i87.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i396, label %bb.agr

bb.agr:                                           ; preds = %.lr.ph.i.i.i.i392
  %i.dds = getelementptr inbounds nuw i8, ptr %i.ddr, i64 8 ; 4 uses
  %i.ddt = load atomic i64, ptr %i.dds acquire, align 8 ; 2 uses
  %i.ddu = icmp eq i64 %i.ddt, 4294967297
  %i.ddv = trunc i64 %i.ddt to i32                ; 2 uses
  br i1 %i.ddu, label %bb.ags, label %bb.agt

bb.ags:                                           ; preds = %bb.agr
  store i32 0, ptr %i.dds, align 8, !tbaa !14
  %i.ddw = getelementptr inbounds nuw i8, ptr %i.ddr, i64 12
  store i32 0, ptr %i.ddw, align 4, !tbaa !16
  %i.ddx = load ptr, ptr %i.ddr, align 8, !tbaa !17
  %i.ddy = getelementptr inbounds nuw i8, ptr %i.ddx, i64 16
  %i.ddz = load ptr, ptr %i.ddy, align 8
  call void %i.ddz(ptr noundef nonnull align 8 dereferenceable(16) %i.ddr) #20, !inline_history !585
  %i.dea = load ptr, ptr %i.ddr, align 8, !tbaa !17
  %i.deb = getelementptr inbounds nuw i8, ptr %i.dea, i64 24
  %i.dec = load ptr, ptr %i.deb, align 8
  call void %i.dec(ptr noundef nonnull align 8 dereferenceable(16) %i.ddr) #20, !inline_history !585
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i396

bb.agt:                                           ; preds = %bb.agr
  %i.ded = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20, !noalias !471
  %.not.i.i.i.i.i.i.i88.i = icmp eq i8 %i.ded, 0
  br i1 %.not.i.i.i.i.i.i.i88.i, label %bb.agv, label %bb.agu

bb.agu:                                           ; preds = %bb.agt
  %i.dee = add nsw i32 %i.ddv, -1
  store i32 %i.dee, ptr %i.dds, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i394

bb.agv:                                           ; preds = %bb.agt
  %i.def = atomicrmw volatile add ptr %i.dds, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i394

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i394: ; preds = %bb.agv, %bb.agu
  %.0.i.i.i.i.i.i.i.i.i395 = phi i32 [ %i.ddv, %bb.agu ], [ %i.def, %bb.agv ]
  %i.deg = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i395, 1
  br i1 %i.deg, label %bb.agw, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i396, !prof !22

bb.agw:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i394
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ddr) #20
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i396

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i396: ; preds = %bb.agw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i394, %bb.ags, %.lr.ph.i.i.i.i392
  %i.deh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i393, i64 16 ; 2 uses
  %.not.i.i.i89.i = icmp eq ptr %i.deh, %i.ddp
  br i1 %.not.i.i.i89.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i397, label %.lr.ph.i.i.i.i392, !llvm.loop !92

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i397: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i396
  %.pr.i90.i = load ptr, ptr %42, align 16, !tbaa !90, !noalias !471
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i398

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i398: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i397, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit86.i
  %i.dei = phi ptr [ %.pr.i90.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i397 ], [ %i.ddo, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit86.i ] ; 3 uses
  %.not.i.i1.i.i399 = icmp eq ptr %i.dei, null
  br i1 %.not.i.i1.i.i399, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit.i400, label %bb.agx

bb.agx:                                           ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i398
  %i.dej = load ptr, ptr %i.ctu, align 16, !tbaa !185, !noalias !471
  %i.dek = ptrtoint ptr %i.dej to i64
  %i.del = ptrtoint ptr %i.dei to i64
  %i.dem = sub i64 %i.dek, %i.del
  call void @_ZdlPvm(ptr noundef nonnull %i.dei, i64 noundef %i.dem) #23
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit.i400

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit.i400: ; preds = %bb.agx, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i398
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #20, !noalias !471
  br label %bb.agy

.body67.i:                                        ; preds = %bb.agb, %bb.aga, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit110.i.i
  %.pn34.pn.i = phi { ptr, i32 } [ %i.dbx, %bb.agb ], [ %i.dbw, %bb.aga ], [ %.pn82.i.i, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit110.i.i ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %42) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #20, !noalias !471
  br label %bb.agz

bb.agy:                                           ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit.i400, %bb.aeq
  call void @_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_6BufferEESaIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %41) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #20, !noalias !471
  br label %bb.aha

bb.agz:                                           ; preds = %.body67.i, %bb.aer
  %.pn38.i = phi { ptr, i32 } [ %i.cts, %bb.aer ], [ %.pn34.pn.i, %.body67.i ]
  call void @_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_6BufferEESaIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %41) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #20, !noalias !471
  br label %.body.i369

bb.aha:                                           ; preds = %bb.agy, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.i371
  %i.den = load ptr, ptr %39, align 16, !tbaa !90, !noalias !471 ; 3 uses
  %i.deo = load ptr, ptr %i.cgz, align 8, !tbaa !87, !noalias !471 ; 2 uses
  %.not4.i.i.i91.i = icmp eq ptr %i.den, %i.deo
  br i1 %.not4.i.i.i91.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i102.i, label %.lr.ph.i.i.i92.i

.lr.ph.i.i.i92.i:                                 ; preds = %bb.aha, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i98.i
  %.05.i.i.i93.i = phi ptr [ %i.dfg, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i98.i ], [ %i.den, %bb.aha ] ; 2 uses
  %i.dep = getelementptr inbounds nuw i8, ptr %.05.i.i.i93.i, i64 8
  %i.deq = load ptr, ptr %i.dep, align 8, !tbaa !11 ; 8 uses
  %.not.i.i.i.i.i.i94.i = icmp eq ptr %i.deq, null
  br i1 %.not.i.i.i.i.i.i94.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i98.i, label %bb.ahb

bb.ahb:                                           ; preds = %.lr.ph.i.i.i92.i
  %i.der = getelementptr inbounds nuw i8, ptr %i.deq, i64 8 ; 4 uses
  %i.des = load atomic i64, ptr %i.der acquire, align 8 ; 2 uses
  %i.det = icmp eq i64 %i.des, 4294967297
  %i.deu = trunc i64 %i.des to i32                ; 2 uses
  br i1 %i.det, label %bb.ahc, label %bb.ahd

bb.ahc:                                           ; preds = %bb.ahb
  store i32 0, ptr %i.der, align 8, !tbaa !14
  %i.dev = getelementptr inbounds nuw i8, ptr %i.deq, i64 12
  store i32 0, ptr %i.dev, align 4, !tbaa !16
  %i.dew = load ptr, ptr %i.deq, align 8, !tbaa !17
  %i.dex = getelementptr inbounds nuw i8, ptr %i.dew, i64 16
  %i.dey = load ptr, ptr %i.dex, align 8
  call void %i.dey(ptr noundef nonnull align 8 dereferenceable(16) %i.deq) #20, !inline_history !585
  %i.dez = load ptr, ptr %i.deq, align 8, !tbaa !17
  %i.dfa = getelementptr inbounds nuw i8, ptr %i.dez, i64 24
  %i.dfb = load ptr, ptr %i.dfa, align 8
  call void %i.dfb(ptr noundef nonnull align 8 dereferenceable(16) %i.deq) #20, !inline_history !585
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i98.i

bb.ahd:                                           ; preds = %bb.ahb
  %i.dfc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20, !noalias !471
  %.not.i.i.i.i.i.i.i95.i = icmp eq i8 %i.dfc, 0
  br i1 %.not.i.i.i.i.i.i.i95.i, label %bb.ahf, label %bb.ahe

bb.ahe:                                           ; preds = %bb.ahd
  %i.dfd = add nsw i32 %i.deu, -1
  store i32 %i.dfd, ptr %i.der, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i96.i

bb.ahf:                                           ; preds = %bb.ahd
  %i.dfe = atomicrmw volatile add ptr %i.der, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i96.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i96.i: ; preds = %bb.ahf, %bb.ahe
  %.0.i.i.i.i.i.i.i.i97.i = phi i32 [ %i.deu, %bb.ahe ], [ %i.dfe, %bb.ahf ]
  %i.dff = icmp eq i32 %.0.i.i.i.i.i.i.i.i97.i, 1
  br i1 %i.dff, label %bb.ahg, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i98.i, !prof !22

bb.ahg:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i96.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.deq) #20
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i98.i

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i98.i: ; preds = %bb.ahg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i96.i, %bb.ahc, %.lr.ph.i.i.i92.i
  %i.dfg = getelementptr inbounds nuw i8, ptr %.05.i.i.i93.i, i64 16 ; 2 uses
  %.not.i.i.i99.i = icmp eq ptr %i.dfg, %i.deo
  br i1 %.not.i.i.i99.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i100.i, label %.lr.ph.i.i.i92.i, !llvm.loop !92

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i100.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i98.i
  %.pr.i101.i = load ptr, ptr %39, align 16, !tbaa !90, !noalias !471
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i102.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i102.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i100.i, %bb.aha
  %i.dfh = phi ptr [ %.pr.i101.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i100.i ], [ %i.den, %bb.aha ] ; 3 uses
  %.not.i.i1.i103.i = icmp eq ptr %i.dfh, null
  br i1 %.not.i.i1.i103.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit104.i, label %bb.ahh

bb.ahh:                                           ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i102.i
  %i.dfi = load ptr, ptr %i.chb, align 16, !tbaa !185, !noalias !471
  %i.dfj = ptrtoint ptr %i.dfi to i64
  %i.dfk = ptrtoint ptr %i.dfh to i64
  %i.dfl = sub i64 %i.dfj, %i.dfk
  call void @_ZdlPvm(ptr noundef nonnull %i.dfh, i64 noundef %i.dfl) #23
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit104.i

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit104.i: ; preds = %bb.ahh, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i102.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20, !noalias !471
  br label %bb.ahi

.body.i369:                                       ; preds = %bb.agz, %bb.aeo, %bb.abl
  %.pn41.pn.i = phi { ptr, i32 } [ %.pn41.i, %bb.abl ], [ %.pn38.i, %bb.agz ], [ %.pn28.pn.pn.pn.i.i, %bb.aeo ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %39) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20, !noalias !471
  br label %bb.ahp

bb.ahi:                                           ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit104.i, %bb.aal
  call void @_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_6BufferEESaIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %38) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20, !noalias !471
  %i.dfm = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.dfn = load ptr, ptr %i.dfm, align 8, !tbaa !11, !noalias !471 ; 8 uses
  %.not.i.i105.i = icmp eq ptr %i.dfn, null
  br i1 %.not.i.i105.i, label %_ZN5arrow12_GLOBAL__N_115ConcatenateImpl5VisitERKNS_14DictionaryTypeE.exit, label %bb.ahj

bb.ahj:                                           ; preds = %bb.ahi
  %i.dfo = getelementptr inbounds nuw i8, ptr %i.dfn, i64 8 ; 4 uses
  %i.dfp = load atomic i64, ptr %i.dfo acquire, align 8 ; 2 uses
  %i.dfq = icmp eq i64 %i.dfp, 4294967297
  %i.dfr = trunc i64 %i.dfp to i32                ; 2 uses
  br i1 %i.dfq, label %bb.ahk, label %bb.ahl

bb.ahk:                                           ; preds = %bb.ahj
  store i32 0, ptr %i.dfo, align 8, !tbaa !14
  %i.dfs = getelementptr inbounds nuw i8, ptr %i.dfn, i64 12
  store i32 0, ptr %i.dfs, align 4, !tbaa !16
  %i.dft = load ptr, ptr %i.dfn, align 8, !tbaa !17
  %i.dfu = getelementptr inbounds nuw i8, ptr %i.dft, i64 16
  %i.dfv = load ptr, ptr %i.dfu, align 8
  call void %i.dfv(ptr noundef nonnull align 8 dereferenceable(16) %i.dfn) #20, !inline_history !483
  %i.dfw = load ptr, ptr %i.dfn, align 8, !tbaa !17
  %i.dfx = getelementptr inbounds nuw i8, ptr %i.dfw, i64 24
  %i.dfy = load ptr, ptr %i.dfx, align 8
  call void %i.dfy(ptr noundef nonnull align 8 dereferenceable(16) %i.dfn) #20, !inline_history !483
  br label %_ZN5arrow12_GLOBAL__N_115ConcatenateImpl5VisitERKNS_14DictionaryTypeE.exit

bb.ahl:                                           ; preds = %bb.ahj
  %i.dfz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20, !noalias !471
  %.not.i.i.i106.i = icmp eq i8 %i.dfz, 0
  br i1 %.not.i.i.i106.i, label %bb.ahn, label %bb.ahm

bb.ahm:                                           ; preds = %bb.ahl
  %i.dga = add nsw i32 %i.dfr, -1
  store i32 %i.dga, ptr %i.dfo, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i107.i

bb.ahn:                                           ; preds = %bb.ahl
  %i.dgb = atomicrmw volatile add ptr %i.dfo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i107.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i107.i: ; preds = %bb.ahn, %bb.ahm
  %.0.i.i.i.i108.i = phi i32 [ %i.dfr, %bb.ahm ], [ %i.dgb, %bb.ahn ]
  %i.dgc = icmp eq i32 %.0.i.i.i.i108.i, 1
  br i1 %i.dgc, label %bb.aho, label %_ZN5arrow12_GLOBAL__N_115ConcatenateImpl5VisitERKNS_14DictionaryTypeE.exit, !prof !22

bb.aho:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i107.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dfn) #20
  br label %_ZN5arrow12_GLOBAL__N_115ConcatenateImpl5VisitERKNS_14DictionaryTypeE.exit

bb.ahp:                                           ; preds = %.body.i369, %bb.aan
  %.pn45.i = phi { ptr, i32 } [ %i.cgx, %bb.aan ], [ %.pn41.pn.i, %.body.i369 ]
  call void @_ZN5arrow6ResultISt6vectorISt10shared_ptrINS_6BufferEESaIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %38) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20, !noalias !471
  br label %bb.ahq

bb.ahq:                                           ; preds = %bb.ahp, %bb.aam, %bb.aaj
  %.pn45.pn.pn.i = phi { ptr, i32 } [ %.pn.i417, %bb.aaj ], [ %.pn45.i, %bb.ahp ], [ %i.cgw, %bb.aam ]
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %35) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20, !noalias !471
  br label %common.resume

_ZN5arrow12_GLOBAL__N_115ConcatenateImpl5VisitERKNS_14DictionaryTypeE.exit: ; preds = %bb.ahi, %bb.ahk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i107.i, %bb.aho
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20, !noalias !471
  br label %_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_115ConcatenateImplEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_.exit

bb.ahr:                                           ; preds = %_ZN5arrow8internal24may_have_validity_bitmapENS_4Type4typeE.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !586)
  %i.dgd = load ptr, ptr %1, align 8, !tbaa !85, !noalias !586, !nonnull !106, !align !107 ; 3 uses
  %i.dge = load ptr, ptr %i.dgd, align 8, !tbaa !86, !noalias !586 ; 2 uses
  %i.dgf = getelementptr inbounds nuw i8, ptr %i.dgd, i64 8
  %i.dgg = load ptr, ptr %i.dgf, align 8, !tbaa !86, !noalias !586 ; 2 uses
  %.not21.i = icmp eq ptr %i.dge, %i.dgg
  br i1 %.not21.i, label %.critedge52.i, label %.lr.ph.i423

.lr.ph.i423:                                      ; preds = %bb.ahr
  %i.dgh = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.dgi = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.dgj = getelementptr inbounds nuw i8, ptr %11, i64 104 ; 3 uses
  %i.dgk = getelementptr inbounds nuw i8, ptr %11, i64 112
  %i.dgl = getelementptr inbounds nuw i8, ptr %11, i64 120
  br label %bb.aht
end_hunk_2
