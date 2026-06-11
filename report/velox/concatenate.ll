inline.NumInlined: 2763
inline.NumDeleted: 1091
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_115ConcatenateImplC2ERKSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS5_EEPNS_10MemoryPoolE:bb.a
  %i.do = load ptr, ptr %i.da, align 8, !tbaa !29 ; 2 uses
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = ashr exact i64 %i.dr, 4                 ; 3 uses
  %i.dt = icmp ugt i64 %i.dl, %i.ds
  br i1 %i.dt, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit
  %i.du = sub nuw nsw i64 %i.dl, %i.ds
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.da, i64 noundef %i.du)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit unwind label %bb.ad

bb.v:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit
  %i.dv = icmp ult i64 %i.dl, %i.ds
  br i1 %i.dv, label %bb.w, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit

bb.w:                                             ; preds = %bb.v
  %i.dw = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dk ; 3 uses
  %.not.i.i15 = icmp eq ptr %i.dn, %i.dw
  br i1 %.not.i.i15, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit, label %.lr.ph.i.i.i.i16

.lr.ph.i.i.i.i16:                                 ; preds = %bb.w, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i17 = phi ptr [ %i.eo, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i ], [ %i.dw, %bb.w ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i17, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !10 ; 8 uses
  %.not.i.i.i.i.i.i.i18 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i.i.i.i.i18, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 4 uses
  %i.ea = load atomic i64, ptr %i.dz acquire, align 8 ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 4294967297
  %i.ec = trunc i64 %i.ea to i32                  ; 2 uses
  br i1 %i.eb, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.dz, align 8, !tbaa !13
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  store i32 0, ptr %i.ed, align 4, !tbaa !15
  %i.ee = load ptr, ptr %i.dy, align 8, !tbaa !16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8
  tail call void %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %i.dy) #20, !inline_history !106
  %i.eh = load ptr, ptr %i.dy, align 8, !tbaa !16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8
  tail call void %i.ej(ptr noundef nonnull align 8 dereferenceable(16) %i.dy) #20, !inline_history !106
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.ek = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i.i19 = icmp eq i8 %i.ek, 0
  br i1 %.not.i.i.i.i.i.i.i.i19, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.el = add nsw i32 %i.ec, -1
  store i32 %i.el, ptr %i.dz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i20

bb.ab:                                            ; preds = %bb.z
  %i.em = atomicrmw volatile add ptr %i.dz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i20

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i20: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i.i.i.i.i21 = phi i32 [ %i.ec, %bb.aa ], [ %i.em, %bb.ab ]
  %i.en = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i21, 1
  br i1 %i.en, label %bb.ac, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i, !prof !20

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i20
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dy) #20
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i: ; preds = %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i20, %bb.y, %.lr.ph.i.i.i.i16
  %i.eo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i17, i64 16 ; 2 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.eo, %i.dn
  br i1 %.not.i.i.i.i22, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i16, !llvm.loop !61

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i
  store ptr %i.dw, ptr %i.dm, align 8, !tbaa !33
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.w, %bb.v, %bb.u
  %i.ep = load ptr, ptr %i.b, align 8, !tbaa !37  ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !84 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 72
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !84 ; 2 uses
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
  store i32 1, ptr %i.ew, align 8, !tbaa !13, !noalias !107
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  store i32 1, ptr %i.ex, align 4, !tbaa !15, !noalias !107
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ev, align 8, !tbaa !16, !noalias !107
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ey, i8 0, i64 120, i1 false), !noalias !107
  store ptr %i.ey, ptr %.sroa.030.041, align 8, !tbaa !81
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.030.041, i64 8 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !10 ; 8 uses
  store ptr %i.ev, ptr %i.ez, align 8, !tbaa !10
  %.not.i.i.i.i25 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i25, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 4 uses
  %i.fc = load atomic i64, ptr %i.fb acquire, align 8 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 4294967297
  %i.fe = trunc i64 %i.fc to i32                  ; 2 uses
  br i1 %i.fd, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.fb, align 8, !tbaa !13
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  store i32 0, ptr %i.ff, align 4, !tbaa !15
  %i.fg = load ptr, ptr %i.fa, align 8, !tbaa !16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  tail call void %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %i.fa) #20, !inline_history !110
  %i.fj = load ptr, ptr %i.fa, align 8, !tbaa !16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8
  tail call void %i.fl(ptr noundef nonnull align 8 dereferenceable(16) %i.fa) #20, !inline_history !110
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ah:                                            ; preds = %bb.af
  %i.fm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i = icmp eq i8 %i.fm, 0
  br i1 %.not.i.i.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fn = add nsw i32 %i.fe, -1
  store i32 %i.fn, ptr %i.fb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.fo = atomicrmw volatile add ptr %i.fb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i = phi i32 [ %i.fe, %bb.ai ], [ %i.fo, %bb.aj ]
  %i.fp = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.fp, label %bb.ak, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !20

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
  tail call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #20
  tail call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load atomic i64, ptr %i.e seq_cst, align 8
  %.not = icmp eq i64 %i.f, 0
  %.pre30 = load ptr, ptr %i.c, align 8, !tbaa !37 ; 7 uses
  br i1 %.not, label %_ZN5arrow8internal24may_have_validity_bitmapENS_4Type4typeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %.pre30, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !111
  switch i32 %i.i, label %bb.c [
    i32 0, label %_ZN5arrow8internal24may_have_validity_bitmapENS_4Type4typeE.exit
    i32 28, label %_ZN5arrow8internal24may_have_validity_bitmapENS_4Type4typeE.exit
    i32 27, label %_ZN5arrow8internal24may_have_validity_bitmapENS_4Type4typeE.exit
    i32 38, label %_ZN5arrow8internal24may_have_validity_bitmapENS_4Type4typeE.exit
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #20
  %i.j = load ptr, ptr %1, align 8, !tbaa !83, !noalias !127, !nonnull !104, !align !105 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33, !noalias !127 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !29, !noalias !127 ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 4                   ; 8 uses
  %i.r = icmp ugt i64 %i.q, 384307168202282325
  br i1 %i.r, label %.noexc.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_16BitmapESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i

.noexc.i:                                         ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #21, !noalias !127
  unreachable

_ZNSt6vectorIN5arrow12_GLOBAL__N_16BitmapESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i: ; preds = %bb.c
  %.not.i.i.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_115ConcatenateImpl7BitmapsEm.exit, label %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_16BitmapESaIS2_EEC2EmRKS3_.exit.i.i

_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_16BitmapESaIS2_EEC2EmRKS3_.exit.i.i: ; preds = %_ZNSt6vectorIN5arrow12_GLOBAL__N_16BitmapESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i
  %i.s = mul nuw nsw i64 %i.q, 24
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #22, !noalias !127 ; 5 uses
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_16BitmapESaIS2_EEC2EmRKS3_.exit.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.prol = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.t, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_16BitmapESaIS2_EEC2EmRKS3_.exit.i.i ] ; 4 uses
  %.057.i.i.i.i.i.i.prol = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.q, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_16BitmapESaIS2_EEC2EmRKS3_.exit.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_16BitmapESaIS2_EEC2EmRKS3_.exit.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %.08.i.i.i.i.i.i.prol, align 8, !noalias !127
  store i64 -1, ptr %i.u, align 8, !tbaa !130, !noalias !127
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 16
  store i64 0, ptr %i.v, align 8, !tbaa !132, !noalias !127
  %i.w = add i64 %.057.i.i.i.i.i.i.prol, -1       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !133

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_16BitmapESaIS2_EEC2EmRKS3_.exit.i.i
  %.lcssa1152.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_16BitmapESaIS2_EEC2EmRKS3_.exit.i.i ], [ %i.x, %.lr.ph.i.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.i.unr = phi ptr [ %i.t, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_16BitmapESaIS2_EEC2EmRKS3_.exit.i.i ], [ %i.x, %.lr.ph.i.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.i.unr = phi i64 [ %i.q, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_16BitmapESaIS2_EEC2EmRKS3_.exit.i.i ], [ %i.w, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.y = icmp ult i64 %i.q, 4
  br i1 %i.y, label %.lr.ph.i.preheader, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i.i ], [ %.057.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8
  store i64 0, ptr %.08.i.i.i.i.i.i, align 8, !noalias !127
  store i64 -1, ptr %i.z, align 8, !tbaa !130, !noalias !127
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16
  store i64 0, ptr %i.aa, align 8, !tbaa !132, !noalias !127
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 32
  store i64 0, ptr %i.ab, align 8, !noalias !127
  store i64 -1, ptr %i.ac, align 8, !tbaa !130, !noalias !127
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 40
  store i64 0, ptr %i.ad, align 8, !tbaa !132, !noalias !127
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 56
  store i64 0, ptr %i.ae, align 8, !noalias !127
  store i64 -1, ptr %i.af, align 8, !tbaa !130, !noalias !127
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 64
  store i64 0, ptr %i.ag, align 8, !tbaa !132, !noalias !127
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 80
  store i64 0, ptr %i.ah, align 8, !noalias !127
  store i64 -1, ptr %i.ai, align 8, !tbaa !130, !noalias !127
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 88
  store i64 0, ptr %i.aj, align 8, !tbaa !132, !noalias !127
  %i.ak = add i64 %.057.i.i.i.i.i.i, -4           ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i.3, label %.lr.ph.i.preheader, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !135

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %.lcssa1152 = phi ptr [ %.lcssa1152.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.al, %.lr.ph.i.i.i.i.i.i ]
end_hunk_0
begin_hunk_1_@_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE:bb.a
  %i.ctq = invoke noundef i32 %i.ctp(ptr noundef nonnull align 8 dereferenceable(72) %i.ceh)
          to label %.noexc65.i unwind label %bb.afx, !inline_history !543 ; 2 uses

.noexc65.i:                                       ; preds = %bb.aes
  %i.ctr = sdiv i32 %i.ctq, 8
  %i.cts = load ptr, ptr %1, align 8, !tbaa !83, !noalias !544, !nonnull !104, !align !105 ; 2 uses
  %i.ctt = load ptr, ptr %i.cts, align 8, !tbaa !84, !noalias !540 ; 2 uses
  %i.ctu = getelementptr inbounds nuw i8, ptr %i.cts, i64 8
  %i.ctv = load ptr, ptr %i.ctu, align 8, !tbaa !84, !noalias !540 ; 2 uses
  %.not139143.i.i = icmp eq ptr %i.ctt, %i.ctv
  br i1 %.not139143.i.i, label %._crit_edge.i.i, label %.lr.ph.i57.i

.lr.ph.i57.i:                                     ; preds = %.noexc65.i, %.lr.ph.i57.i
  %.0145.i.i = phi i64 [ %i.ctz, %.lr.ph.i57.i ], [ 0, %.noexc65.i ]
  %.sroa.0122.0144.i.i = phi ptr [ %i.cua, %.lr.ph.i57.i ], [ %i.ctt, %.noexc65.i ] ; 2 uses
  %i.ctw = load ptr, ptr %.sroa.0122.0144.i.i, align 8, !tbaa !37, !noalias !540
  %i.ctx = getelementptr inbounds nuw i8, ptr %i.ctw, i64 16
  %i.cty = load i64, ptr %i.ctx, align 8, !tbaa !91, !noalias !540
  %i.ctz = add nsw i64 %i.cty, %.0145.i.i         ; 2 uses
  %i.cua = getelementptr inbounds nuw i8, ptr %.sroa.0122.0144.i.i, i64 16 ; 2 uses
  %.not139.i.i = icmp eq ptr %i.cua, %i.ctv
  br i1 %.not139.i.i, label %._crit_edge.i.i, label %.lr.ph.i57.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i57.i, %.noexc65.i
  %.0.lcssa.i.i = phi i64 [ 0, %.noexc65.i ], [ %i.ctz, %.lr.ph.i57.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20, !noalias !544
  %i.cub = sext i32 %i.ctr to i64                 ; 4 uses
  %i.cuc = mul nsw i64 %.0.lcssa.i.i, %i.cub
  %i.cud = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cue = load ptr, ptr %i.cud, align 8, !tbaa !73, !noalias !544
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.113") align 8 %17, i64 noundef %i.cuc, ptr noundef %i.cue)
          to label %.noexc66.i unwind label %bb.afx

.noexc66.i:                                       ; preds = %._crit_edge.i.i
  %i.cuf = load ptr, ptr %17, align 8, !tbaa !25, !noalias !544
  %i.cug = icmp eq ptr %i.cuf, null
  br i1 %i.cug, label %bb.aeu, label %bb.aet, !prof !28

bb.aet:                                           ; preds = %.noexc66.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(8) %17) #20
  br label %bb.aft

bb.aeu:                                           ; preds = %.noexc66.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20, !noalias !544
  call void @llvm.experimental.noalias.scope.decl(metadata !545)
  call void @llvm.experimental.noalias.scope.decl(metadata !548)
  %i.cuh = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.cui = load i64, ptr %i.cuh, align 8, !tbaa !281, !noalias !551 ; 2 uses
  store i64 %i.cui, ptr %18, align 8, !tbaa !281, !alias.scope !552, !noalias !544
  store ptr null, ptr %i.cuh, align 8, !tbaa !281, !noalias !551
  %i.cuj = load ptr, ptr %1, align 8, !tbaa !83, !noalias !544, !nonnull !104, !align !105 ; 2 uses
  %i.cuk = getelementptr inbounds nuw i8, ptr %i.cuj, i64 8
  %i.cul = load ptr, ptr %i.cuk, align 8, !tbaa !33, !noalias !540
  %i.cum = load ptr, ptr %i.cuj, align 8, !tbaa !29, !noalias !540 ; 2 uses
  %.not150.not.i.i = icmp eq ptr %i.cul, %i.cum
  %i.cun = inttoptr i64 %i.cui to ptr             ; 7 uses
  br i1 %.not150.not.i.i, label %.critedge90.i.i, label %.lr.ph155.i.i

.lr.ph155.i.i:                                    ; preds = %bb.aeu
  %i.cuo = getelementptr inbounds nuw i8, ptr %i.cun, i64 9
  %i.cup = load i8, ptr %i.cuo, align 1, !tbaa !140, !range !148, !noalias !540, !noundef !104
  %i.cuq = trunc nuw i8 %i.cup to i1
  %i.cur = getelementptr inbounds nuw i8, ptr %i.cun, i64 8
  %i.cus = load i8, ptr %i.cur, align 8, !range !148, !noalias !540
  %i.cut = trunc nuw i8 %i.cus to i1
  %i.cuu = select i1 %i.cuq, i1 %i.cut, i1 false, !prof !28
  %i.cuv = getelementptr inbounds nuw i8, ptr %i.cun, i64 16
  %i.cuw = load ptr, ptr %i.cuv, align 8, !noalias !540
  %i.cux = select i1 %i.cuu, ptr %i.cuw, ptr null, !prof !28
  %i.cuy = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 5 uses
  %i.cuz = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  %i.cva = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 3 uses
  %i.cvb = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 9 uses
  %.off.i.i = add i32 %i.ctq, 7
  %.not5.i.i.i.i.i = icmp ult i32 %.off.i.i, 15
  br label %bb.aev

bb.aev:                                           ; preds = %bb.afq, %.lr.ph155.i.i
  %i.cvc = phi ptr [ %i.cum, %.lr.ph155.i.i ], [ %i.czx, %bb.afq ]
  %.075152.i.i = phi ptr [ %i.cux, %.lr.ph155.i.i ], [ %i.czs, %bb.afq ] ; 4 uses
  %.077151.i.i = phi i64 [ 0, %.lr.ph155.i.i ], [ %i.czt, %bb.afq ] ; 3 uses
  %i.cvd = getelementptr inbounds nuw [16 x i8], ptr %i.cvc, i64 %.077151.i.i ; 3 uses
  %i.cve = getelementptr inbounds nuw [16 x i8], ptr %i.ctj, i64 %.077151.i.i
  %i.cvf = load ptr, ptr %i.cve, align 8, !tbaa !137, !noalias !540 ; 2 uses
  %i.cvg = getelementptr inbounds nuw i8, ptr %i.cvf, i64 9
  %i.cvh = load i8, ptr %i.cvg, align 1, !tbaa !140, !range !148, !noalias !540, !noundef !104
  %i.cvi = trunc nuw i8 %i.cvh to i1
  %i.cvj = getelementptr inbounds nuw i8, ptr %i.cvf, i64 16
  %i.cvk = load ptr, ptr %i.cvj, align 8, !noalias !540
  %i.cvl = select i1 %i.cvi, ptr %i.cvk, ptr null, !prof !28 ; 2 uses
  %i.cvm = load ptr, ptr %i.cvd, align 8, !tbaa !37, !noalias !540 ; 5 uses
  %i.cvn = getelementptr inbounds nuw i8, ptr %i.cvm, i64 40
  %i.cvo = load ptr, ptr %i.cvn, align 8, !tbaa !88, !noalias !540 ; 3 uses
  %i.cvp = getelementptr inbounds nuw i8, ptr %i.cvo, i64 16
  %i.cvq = load ptr, ptr %i.cvp, align 8, !tbaa !137, !noalias !540 ; 3 uses
  %.not.i.i60.i = icmp eq ptr %i.cvq, null
  br i1 %.not.i.i60.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.i: ; preds = %bb.aev
  %i.cvr = load ptr, ptr %i.cvo, align 8, !tbaa !137, !noalias !540 ; 2 uses
  %.not140.i.i = icmp eq ptr %i.cvr, null
  br i1 %.not140.i.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit93.i.i, label %bb.aez

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i: ; preds = %bb.aev
  %i.cvs = getelementptr inbounds nuw i8, ptr %i.cvq, i64 9
  %i.cvt = load i8, ptr %i.cvs, align 1, !tbaa !140, !range !148, !noalias !540, !noundef !104
  %i.cvu = trunc nuw i8 %i.cvt to i1
  %i.cvv = getelementptr inbounds nuw i8, ptr %i.cvq, i64 16
  %i.cvw = load ptr, ptr %i.cvv, align 8, !noalias !540
  %i.cvx = select i1 %i.cvu, ptr %i.cvw, ptr null, !prof !28 ; 2 uses
  %i.cvy = load ptr, ptr %i.cvo, align 8, !tbaa !137, !noalias !540 ; 2 uses
  %.not140179.i.i = icmp eq ptr %i.cvy, null
  br i1 %.not140179.i.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit93.i.i, label %bb.aez

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit93.i.i: ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.i
  %.0.i92.i.i = phi ptr [ null, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.i ], [ %i.cvx, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20, !noalias !544
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20, !noalias !544
  %i.cvz = getelementptr inbounds nuw i8, ptr %i.cvm, i64 32
  %i.cwa = load i64, ptr %i.cvz, align 8, !tbaa !136, !noalias !540
  %i.cwb = getelementptr inbounds nuw i8, ptr %i.cvm, i64 16
  %i.cwc = load i64, ptr %i.cwb, align 8, !tbaa !91, !noalias !540
  invoke void @_ZN5arrow8internal13TransposeIntsERKNS_8DataTypeES3_PKhPhlllPKi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %20, ptr noundef nonnull align 8 dereferenceable(72) %i.ceh, ptr noundef nonnull align 8 dereferenceable(72) %i.ceh, ptr noundef %.0.i92.i.i, ptr noundef %.075152.i.i, i64 noundef %i.cwa, i64 noundef 0, i64 noundef %i.cwc, ptr noundef %i.cvl)
          to label %_ZN5arrow6StatusD2Ev.exit.i64.i unwind label %bb.aey, !noalias !540

_ZN5arrow6StatusD2Ev.exit.i64.i:                  ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit93.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !553)
  %i.cwd = load ptr, ptr %20, align 8, !tbaa !25, !noalias !556 ; 2 uses
  store ptr %i.cwd, ptr %19, align 8, !tbaa !25, !alias.scope !553, !noalias !544
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20, !noalias !544
  %i.cwe = icmp eq ptr %i.cwd, null
  br i1 %i.cwe, label %_ZN5arrow6StatusD2Ev.exit105.i.i, label %bb.aew, !prof !28

bb.aew:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit.i64.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(8) %19) #20
  %i.cwf = load ptr, ptr %19, align 8, !tbaa !25, !noalias !544
  %.not.i95.i.i = icmp eq ptr %i.cwf, null
  br i1 %.not.i95.i.i, label %_ZN5arrow6StatusD2Ev.exit96.i.i, label %bb.aex, !prof !28

bb.aex:                                           ; preds = %bb.aew
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %19)
  br label %_ZN5arrow6StatusD2Ev.exit96.i.i

_ZN5arrow6StatusD2Ev.exit96.i.i:                  ; preds = %bb.aex, %bb.aew
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20, !noalias !544
  br label %.critedge89.i.i

bb.aey:                                           ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit93.i.i
  %i.cwg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20, !noalias !544
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20, !noalias !544
  br label %bb.afs

bb.aez:                                           ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.i
  %i.cwh = phi ptr [ %i.cvy, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i ], [ %i.cvr, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.i ] ; 2 uses
  %.0.i180.i.i = phi ptr [ %i.cvx, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i ], [ null, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20, !noalias !544
  %i.cwi = getelementptr inbounds nuw i8, ptr %i.cwh, i64 9
  %i.cwj = load i8, ptr %i.cwi, align 1, !tbaa !140, !range !148, !noalias !540, !noundef !104
  %i.cwk = trunc nuw i8 %i.cwj to i1
  %i.cwl = getelementptr inbounds nuw i8, ptr %i.cwh, i64 16
  %i.cwm = load ptr, ptr %i.cwl, align 8, !noalias !540
  %i.cwn = select i1 %i.cwk, ptr %i.cwm, ptr null, !prof !28
  %i.cwo = getelementptr inbounds nuw i8, ptr %i.cvm, i64 32
  %i.cwp = load i64, ptr %i.cwo, align 8, !tbaa !136, !noalias !540
  %i.cwq = getelementptr inbounds nuw i8, ptr %i.cvm, i64 16
  %i.cwr = load i64, ptr %i.cwq, align 8, !tbaa !91, !noalias !540
  invoke void @_ZN5arrow8internal12BitRunReaderC1EPKhll(ptr noundef nonnull align 8 dereferenceable(33) %21, ptr noundef %i.cwn, i64 noundef %i.cwp, i64 noundef %i.cwr)
          to label %.preheader141.i.i unwind label %bb.afg, !noalias !540

.preheader141.i.i:                                ; preds = %bb.aez
  %i.cws = load i64, ptr %i.cuy, align 8, !tbaa !557, !noalias !544 ; 2 uses
  %i.cwt = load i64, ptr %i.cuz, align 8, !tbaa !559, !noalias !544 ; 2 uses
  %.not.i97146.i.i = icmp slt i64 %i.cws, %i.cwt
  br i1 %.not.i97146.i.i, label %.lr.ph148.i.i, label %.thread136.i.i, !prof !560

.lr.ph148.i.i:                                    ; preds = %.preheader141.i.i, %bb.afn
  %i.cwu = phi i64 [ %i.czn, %bb.afn ], [ %i.cwt, %.preheader141.i.i ] ; 2 uses
  %i.cwv = phi i64 [ %i.czm, %bb.afn ], [ %i.cws, %.preheader141.i.i ] ; 4 uses
  %.067147.i.i = phi i64 [ %i.czl, %bb.afn ], [ 0, %.preheader141.i.i ] ; 4 uses
  %i.cww = load i8, ptr %i.cva, align 8, !tbaa !561, !range !148, !noalias !544, !noundef !104
  %i.cwx = xor i8 %i.cww, 1                       ; 4 uses
  store i8 %i.cwx, ptr %i.cva, align 8, !tbaa !561, !noalias !544
  %i.cwy = and i64 %i.cwv, 63                     ; 2 uses
  %i.cwz = load i64, ptr %i.cvb, align 8, !tbaa !562, !noalias !544
  %notmask.i.i.i.i = shl nsw i64 -1, %i.cwy
  %.not5.i.i.i = xor i64 %i.cwz, -1
  %i.cxa = and i64 %notmask.i.i.i.i, %.not5.i.i.i ; 2 uses
  store i64 %i.cxa, ptr %i.cvb, align 8, !tbaa !562, !noalias !544
  %i.cxb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cxa, i1 false)
  %i.cxc = sub nsw i64 %i.cxb, %i.cwy
  %i.cxd = add nsw i64 %i.cxc, %i.cwv             ; 6 uses
  store i64 %i.cxd, ptr %i.cuy, align 8, !tbaa !557, !noalias !544
  %i.cxe = and i64 %i.cxd, 63
  %i.cxf = icmp eq i64 %i.cxe, 0
  br i1 %i.cxf, label %bb.afa, label %.loopexit.i.i405, !prof !20

bb.afa:                                           ; preds = %.lr.ph148.i.i
  %i.cxg = icmp slt i64 %i.cxd, %i.cwu
  br i1 %i.cxg, label %.preheader.preheader.i.i, label %.loopexit.i.i405, !prof !28

.preheader.preheader.i.i:                         ; preds = %bb.afa
  %.pre158.i.i = load ptr, ptr %21, align 8, !tbaa !563, !noalias !544
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.aff, %.preheader.preheader.i.i
  %i.cxh = phi i8 [ %i.cyj, %bb.aff ], [ %i.cwx, %.preheader.preheader.i.i ]
  %118 = phi ptr [ %120, %bb.aff ], [ %.pre158.i.i, %.preheader.preheader.i.i ]
  %i.cxi = phi i64 [ %i.cyp, %bb.aff ], [ %i.cxd, %.preheader.preheader.i.i ]
  %119 = phi i64 [ %i.cys, %bb.aff ], [ %i.cwu, %.preheader.preheader.i.i ]
  %i.cxj = getelementptr inbounds nuw i8, ptr %118, i64 8 ; 4 uses
  store ptr %i.cxj, ptr %21, align 8, !tbaa !563, !noalias !544
  %i.cxk = sub nsw i64 %119, %i.cxi               ; 6 uses
  store i64 0, ptr %i.cvb, align 8, !tbaa !562, !noalias !544
  %i.cxl = icmp sgt i64 %i.cxk, 63
  br i1 %i.cxl, label %bb.afb, label %bb.afc, !prof !28

bb.afb:                                           ; preds = %.preheader.i.i
  %i.cxm = load i64, ptr %i.cxj, align 1, !noalias !540 ; 2 uses
  store i64 %i.cxm, ptr %i.cvb, align 8, !noalias !544
  br label %bb.afd

bb.afc:                                           ; preds = %.preheader.i.i
  %i.cxn = ashr i64 %i.cxk, 3
  %i.cxo = and i64 %i.cxk, 7
  %i.cxp = icmp ne i64 %i.cxo, 0
  %i.cxq = zext i1 %i.cxp to i64
  %i.cxr = add nsw i64 %i.cxn, %i.cxq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cvb, ptr nonnull align 1 %i.cxj, i64 %i.cxr, i1 false), !noalias !540
  %i.cxs = add nsw i64 %i.cxk, -1                 ; 2 uses
  %i.cxt = lshr i64 %i.cxs, 3
  %i.cxu = getelementptr inbounds nuw i8, ptr %i.cvb, i64 %i.cxt
  %i.cxv = load i8, ptr %i.cxu, align 1, !tbaa !19, !noalias !544
  %i.cxw = trunc i64 %i.cxs to i8
  %i.cxx = and i8 %i.cxw, 7
  %i.cxy = lshr i8 %i.cxv, %i.cxx
  %i.cxz = or i8 %i.cxy, -2
  %.neg.i.i.i.i.i = add nsw i8 %i.cxz, 1
  %i.cya = sdiv i64 %i.cxk, 8
  %i.cyb = getelementptr inbounds i8, ptr %i.cvb, i64 %i.cya ; 2 uses
  %i.cyc = load i8, ptr %i.cyb, align 1, !tbaa !19, !noalias !544 ; 2 uses
  %i.cyd = xor i8 %.neg.i.i.i.i.i, %i.cyc
  %i.cye = srem i64 %i.cxk, 8
  %i.cyf = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.cye
  %i.cyg = load i8, ptr %i.cyf, align 1, !tbaa !19, !noalias !544
  %i.cyh = and i8 %i.cyd, %i.cyg
  %i.cyi = xor i8 %i.cyh, %i.cyc
  store i8 %i.cyi, ptr %i.cyb, align 1, !tbaa !19, !noalias !544
  %.pre4.pre.i.i.i = load i64, ptr %i.cvb, align 8, !tbaa !562, !noalias !544
  %.pre.i63.i = load ptr, ptr %21, align 8, !tbaa !563, !noalias !544
  %.pre.i63.i.a = load i8, ptr %i.cva, align 8, !tbaa !561, !range !148, !noalias !544
  br label %bb.afd

bb.afd:                                           ; preds = %bb.afc, %bb.afb
  %i.cyj = phi i8 [ %.pre.i63.i.a, %bb.afc ], [ %i.cxh, %bb.afb ] ; 4 uses
  %120 = phi ptr [ %.pre.i63.i, %bb.afc ], [ %i.cxj, %bb.afb ]
  %.pre4.i.i.i = phi i64 [ %.pre4.pre.i.i.i, %bb.afc ], [ %i.cxm, %bb.afb ] ; 2 uses
  %i.cyk = trunc nuw i8 %i.cyj to i1
  br i1 %i.cyk, label %bb.afe, label %_ZN5arrow8internal12BitRunReader12LoadNextWordEv.exit.i.i.i

bb.afe:                                           ; preds = %bb.afd
  %i.cyl = xor i64 %.pre4.i.i.i, -1               ; 2 uses
  store i64 %i.cyl, ptr %i.cvb, align 8, !tbaa !562, !noalias !544
  br label %_ZN5arrow8internal12BitRunReader12LoadNextWordEv.exit.i.i.i

_ZN5arrow8internal12BitRunReader12LoadNextWordEv.exit.i.i.i: ; preds = %bb.afe, %bb.afd
  %i.cym = phi i64 [ %.pre4.i.i.i, %bb.afd ], [ %i.cyl, %bb.afe ]
  %i.cyn = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cym, i1 false) ; 2 uses
  %i.cyo = load i64, ptr %i.cuy, align 8, !tbaa !557, !noalias !544
  %i.cyp = add nsw i64 %i.cyo, %i.cyn             ; 6 uses
  store i64 %i.cyp, ptr %i.cuy, align 8, !tbaa !557, !noalias !544
  %i.cyq = and i64 %i.cyp, 63
  %i.cyr = icmp eq i64 %i.cyq, 0
  br i1 %i.cyr, label %bb.aff, label %.loopexit.i.i405, !prof !20

bb.aff:                                           ; preds = %_ZN5arrow8internal12BitRunReader12LoadNextWordEv.exit.i.i.i
  %i.cys = load i64, ptr %i.cuz, align 8, !tbaa !559, !noalias !544 ; 2 uses
  %i.cyt = icmp slt i64 %i.cyp, %i.cys
  %i.cyu = icmp ne i64 %i.cyn, 0
  %or.cond.i.i.i = and i1 %i.cyu, %i.cyt
  br i1 %or.cond.i.i.i, label %.preheader.i.i, label %.loopexit.i.i405, !prof !564, !llvm.loop !565

.loopexit.i.i405:                                 ; preds = %bb.aff, %_ZN5arrow8internal12BitRunReader12LoadNextWordEv.exit.i.i.i, %bb.afa, %.lr.ph148.i.i
  %i.cyv = phi i8 [ %i.cwx, %.lr.ph148.i.i ], [ %i.cwx, %bb.afa ], [ %i.cyj, %_ZN5arrow8internal12BitRunReader12LoadNextWordEv.exit.i.i.i ], [ %i.cyj, %bb.aff ]
  %i.cyw = phi i64 [ %i.cxd, %.lr.ph148.i.i ], [ %i.cxd, %bb.afa ], [ %i.cyp, %_ZN5arrow8internal12BitRunReader12LoadNextWordEv.exit.i.i.i ], [ %i.cyp, %bb.aff ] ; 2 uses
  %i.cyx = sub nsw i64 %i.cyw, %i.cwv             ; 3 uses
  %i.cyy = icmp eq i64 %i.cyw, %i.cwv
  br i1 %i.cyy, label %.thread136.i.i, label %bb.afh

bb.afg:                                           ; preds = %bb.aez
  %i.cyz = landingpad { ptr, i32 }
          cleanup
  br label %bb.afp

bb.afh:                                           ; preds = %.loopexit.i.i405
  %i.cza = trunc nuw i8 %i.cyv to i1
  br i1 %i.cza, label %bb.afi, label %bb.afm

bb.afi:                                           ; preds = %bb.afh
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20, !noalias !544
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20, !noalias !544
  %i.czb = load ptr, ptr %i.cvd, align 8, !tbaa !37, !noalias !540
  %i.czc = getelementptr inbounds nuw i8, ptr %i.czb, i64 32
  %i.czd = load i64, ptr %i.czc, align 8, !tbaa !136, !noalias !540
  %i.cze = add nsw i64 %i.czd, %.067147.i.i
  invoke void @_ZN5arrow8internal13TransposeIntsERKNS_8DataTypeES3_PKhPhlllPKi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %23, ptr noundef nonnull align 8 dereferenceable(72) %i.ceh, ptr noundef nonnull align 8 dereferenceable(72) %i.ceh, ptr noundef %.0.i180.i.i, ptr noundef %.075152.i.i, i64 noundef %i.cze, i64 noundef %.067147.i.i, i64 noundef %i.cyx, ptr noundef %i.cvl)
          to label %_ZN5arrow6StatusD2Ev.exit99.i.i unwind label %bb.afl, !noalias !540

_ZN5arrow6StatusD2Ev.exit99.i.i:                  ; preds = %bb.afi
  call void @llvm.experimental.noalias.scope.decl(metadata !566)
  %i.czf = load ptr, ptr %23, align 8, !tbaa !25, !noalias !569 ; 2 uses
  store ptr %i.czf, ptr %22, align 8, !tbaa !25, !alias.scope !566, !noalias !544
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20, !noalias !544
  %i.czg = icmp eq ptr %i.czf, null
  br i1 %i.czg, label %_ZN5arrow6StatusD2Ev.exit103.i.i, label %bb.afj, !prof !28

bb.afj:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit99.i.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(8) %22) #20
  %i.czh = load ptr, ptr %22, align 8, !tbaa !25, !noalias !544
  %.not.i100.i.i = icmp eq ptr %i.czh, null
  br i1 %.not.i100.i.i, label %bb.afo, label %bb.afk, !prof !28

bb.afk:                                           ; preds = %bb.afj
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %22)
  br label %bb.afo

bb.afl:                                           ; preds = %bb.afi
  %i.czi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20, !noalias !544
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20, !noalias !544
  br label %bb.afp

bb.afm:                                           ; preds = %bb.afh
  br i1 %.not5.i.i.i.i.i, label %bb.afn, label %.lr.ph.i.i.i.i62.i

.lr.ph.i.i.i.i62.i:                               ; preds = %bb.afm
  %i.czj = mul nsw i64 %.067147.i.i, %i.cub
  %i.czk = getelementptr inbounds i8, ptr %.075152.i.i, i64 %i.czj
  %gepdiff.i.i = mul i64 %i.cyx, %i.cub
  call void @llvm.memset.p0.i64(ptr align 1 %i.czk, i8 0, i64 %gepdiff.i.i, i1 false), !tbaa !19, !noalias !540
  br label %bb.afn

_ZN5arrow6StatusD2Ev.exit103.i.i:                 ; preds = %_ZN5arrow6StatusD2Ev.exit99.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20, !noalias !544
  br label %bb.afn

bb.afn:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit103.i.i, %.lr.ph.i.i.i.i62.i, %bb.afm
  %i.czl = add nsw i64 %i.cyx, %.067147.i.i
  %i.czm = load i64, ptr %i.cuy, align 8, !tbaa !557, !noalias !544 ; 2 uses
  %i.czn = load i64, ptr %i.cuz, align 8, !tbaa !559, !noalias !544 ; 2 uses
  %.not.i97.i.i = icmp slt i64 %i.czm, %i.czn
  br i1 %.not.i97.i.i, label %.lr.ph148.i.i, label %.thread136.i.i, !prof !570

.thread136.i.i:                                   ; preds = %bb.afn, %.loopexit.i.i405, %.preheader141.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20, !noalias !544
  br label %bb.afq

bb.afo:                                           ; preds = %bb.afk, %bb.afj
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20, !noalias !544
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20, !noalias !544
  br label %.critedge89.i.i

bb.afp:                                           ; preds = %bb.afl, %bb.afg
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.cyz, %bb.afg ], [ %i.czi, %bb.afl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20, !noalias !544
  br label %bb.afs

_ZN5arrow6StatusD2Ev.exit105.i.i:                 ; preds = %_ZN5arrow6StatusD2Ev.exit.i64.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20, !noalias !544
  br label %bb.afq

bb.afq:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit105.i.i, %.thread136.i.i
  %i.czo = load ptr, ptr %i.cvd, align 8, !tbaa !37, !noalias !540
  %i.czp = getelementptr inbounds nuw i8, ptr %i.czo, i64 16
  %i.czq = load i64, ptr %i.czp, align 8, !tbaa !91, !noalias !540
  %i.czr = mul nsw i64 %i.czq, %i.cub
  %i.czs = getelementptr inbounds i8, ptr %.075152.i.i, i64 %i.czr
  %i.czt = add nuw i64 %.077151.i.i, 1            ; 2 uses
  %i.czu = load ptr, ptr %1, align 8, !tbaa !83, !noalias !544, !nonnull !104, !align !105 ; 2 uses
  %i.czv = getelementptr inbounds nuw i8, ptr %i.czu, i64 8
  %i.czw = load ptr, ptr %i.czv, align 8, !tbaa !33, !noalias !540
  %i.czx = load ptr, ptr %i.czu, align 8, !tbaa !29, !noalias !540 ; 2 uses
  %i.czy = ptrtoint ptr %i.czw to i64
  %i.czz = ptrtoint ptr %i.czx to i64
  %i.daa = sub i64 %i.czy, %i.czz
  %i.dab = ashr exact i64 %i.daa, 4
  %.not.i61.i = icmp ult i64 %i.czt, %i.dab
  br i1 %.not.i61.i, label %bb.aev, label %.critedge90.i.i, !llvm.loop !571

.critedge90.i.i:                                  ; preds = %bb.afq, %bb.aeu
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20, !noalias !544
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i unwind label %bb.afr, !noalias !540

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %.critedge90.i.i
  store ptr null, ptr %43, align 8, !tbaa !25, !alias.scope !540, !noalias !469
  %i.dac = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.dad = load <2 x ptr>, ptr %24, align 16, !tbaa !57, !noalias !544
  store <2 x ptr> %i.dad, ptr %i.dac, align 8, !tbaa !57, !alias.scope !540, !noalias !469
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20, !noalias !544
  %.pre159.i.i = load ptr, ptr %18, align 8, !tbaa !281, !noalias !544
  br label %.critedge89.i.i

bb.afr:                                           ; preds = %.critedge90.i.i
  %i.dae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20, !noalias !544
  %.pre158.i.i.a = load ptr, ptr %18, align 8, !tbaa !281, !noalias !544
  br label %bb.afs

.critedge89.i.i:                                  ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %bb.afo, %_ZN5arrow6StatusD2Ev.exit96.i.i
  %i.daf = phi ptr [ %i.cun, %_ZN5arrow6StatusD2Ev.exit96.i.i ], [ %i.cun, %bb.afo ], [ %.pre159.i.i, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i ] ; 3 uses
  %.not.i107.i.i = icmp eq ptr %i.daf, null
  br i1 %.not.i107.i.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i404, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i403

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i403: ; preds = %.critedge89.i.i
  %i.dag = load ptr, ptr %i.daf, align 8, !tbaa !16
  %i.dah = getelementptr inbounds nuw i8, ptr %i.dag, i64 8
  %i.dai = load ptr, ptr %i.dah, align 8
  call void %i.dai(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.daf) #20, !inline_history !572
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i404

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i404: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i403, %.critedge89.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20, !noalias !544
  br label %bb.aft

bb.afs:                                           ; preds = %bb.afr, %bb.afp, %bb.aey
  %i.daj = phi ptr [ %.pre158.i.i.a, %bb.afr ], [ %i.cun, %bb.afp ], [ %i.cun, %bb.aey ] ; 3 uses
  %.pn82.i.i = phi { ptr, i32 } [ %i.dae, %bb.afr ], [ %.pn.pn.i.i, %bb.afp ], [ %i.cwg, %bb.aey ]
  %.not.i108.i.i = icmp eq ptr %i.daj, null
  br i1 %.not.i108.i.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit110.i.i, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i109.i.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i109.i.i: ; preds = %bb.afs
  %i.dak = load ptr, ptr %i.daj, align 8, !tbaa !16, !noalias !540
  %i.dal = getelementptr inbounds nuw i8, ptr %i.dak, i64 8
  %i.dam = load ptr, ptr %i.dal, align 8, !noalias !540
  call void %i.dam(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.daj) #20, !noalias !540, !inline_history !572
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit110.i.i

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit110.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i109.i.i, %bb.afs
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20, !noalias !544
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #20, !noalias !540
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20, !noalias !544
  br label %.body67.i

bb.aft:                                           ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i404, %bb.aet
  %i.dan = load ptr, ptr %17, align 8, !tbaa !25, !noalias !544
  %i.dao = icmp eq ptr %i.dan, null
  br i1 %i.dao, label %bb.afu, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i391, !prof !28

bb.afu:                                           ; preds = %bb.aft
  %i.dap = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.daq = load ptr, ptr %i.dap, align 8, !tbaa !281, !noalias !544 ; 3 uses
  %.not.i.i.i.i.i58.i = icmp eq ptr %i.daq, null
  br i1 %.not.i.i.i.i.i58.i, label %bb.afv, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i402
end_hunk_1
