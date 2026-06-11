inline.NumInlined: 2834
inline.NumDeleted: 1091
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_115ConcatenateImplC2ERKSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS5_EEPNS_10MemoryPoolE:bb.a
  %i.dq = load ptr, ptr %i.dc, align 8, !tbaa !67 ; 2 uses
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = ashr exact i64 %i.dt, 4                 ; 3 uses
  %i.dv = icmp ugt i64 %i.dn, %i.du
  br i1 %i.dv, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit
  %i.dw = sub nuw nsw i64 %i.dn, %i.du
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i64 noundef %i.dw)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit unwind label %bb.ad

bb.v:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit
  %i.dx = icmp ult i64 %i.dn, %i.du
  br i1 %i.dx, label %bb.w, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit

bb.w:                                             ; preds = %bb.v
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dm ; 3 uses
  %.not.i.i15 = icmp eq ptr %i.dp, %i.dy
  br i1 %.not.i.i15, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE6resizeEm.exit, label %.lr.ph.i.i.i.i16

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
  %21 = alloca %"class.arrow::internal::BitRunReader", align 8 ; 11 uses
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
  %42 = alloca %"class.std::vector.35", align 16  ; 9 uses
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
  %.lcssa1176.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN5arrow12_GLOBAL__N_16BitmapESaIS2_EEC2EmRKS3_.exit.i.i ], [ %i.x, %.lr.ph.i.i.i.i.i.i.prol ]
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
  %.lcssa1176 = phi ptr [ %.lcssa1176.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.al, %.lr.ph.i.i.i.i.i.i ]
end_hunk_0
begin_hunk_1_@_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE:bb.a
  %i.dag = load ptr, ptr %1, align 8, !tbaa !111, !noalias !576, !nonnull !66, !align !132 ; 2 uses
  %i.dah = load ptr, ptr %i.dag, align 8, !tbaa !112, !noalias !572 ; 2 uses
  %i.dai = getelementptr inbounds nuw i8, ptr %i.dag, i64 8
  %i.daj = load ptr, ptr %i.dai, align 8, !tbaa !112, !noalias !572 ; 2 uses
  %i.dak = icmp eq ptr %i.dah, %i.daj
  br i1 %i.dak, label %._crit_edge.i.i, label %.lr.ph.i65.i

.lr.ph.i65.i:                                     ; preds = %.noexc73.i, %.lr.ph.i65.i
  %.0143.i.i = phi i64 [ %i.dao, %.lr.ph.i65.i ], [ 0, %.noexc73.i ]
  %.sroa.0122.0142.i.i = phi ptr [ %i.dap, %.lr.ph.i65.i ], [ %i.dah, %.noexc73.i ] ; 2 uses
  %i.dal = load ptr, ptr %.sroa.0122.0142.i.i, align 8, !tbaa !75, !noalias !572
  %i.dam = getelementptr inbounds nuw i8, ptr %i.dal, i64 16
  %i.dan = load i64, ptr %i.dam, align 8, !tbaa !119, !noalias !572
  %i.dao = add nsw i64 %i.dan, %.0143.i.i         ; 2 uses
  %i.dap = getelementptr inbounds nuw i8, ptr %.sroa.0122.0142.i.i, i64 16 ; 2 uses
  %i.daq = icmp eq ptr %i.dap, %i.daj
  br i1 %i.daq, label %._crit_edge.i.i, label %.lr.ph.i65.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i65.i, %.noexc73.i
  %.0.lcssa.i.i = phi i64 [ 0, %.noexc73.i ], [ %i.dao, %.lr.ph.i65.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20, !noalias !576
  %i.dar = sext i32 %i.daf to i64                 ; 4 uses
  %i.das = mul nsw i64 %.0.lcssa.i.i, %i.dar
  %i.dat = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dau = load ptr, ptr %i.dat, align 8, !tbaa !98, !noalias !576
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.116") align 8 %17, i64 noundef %i.das, ptr noundef %i.dau)
          to label %.noexc74.i unwind label %bb.ahq

.noexc74.i:                                       ; preds = %._crit_edge.i.i
  %i.dav = load ptr, ptr %17, align 8, !tbaa !51, !noalias !576
  %i.daw = icmp eq ptr %i.dav, null
  br i1 %i.daw, label %bb.agk, label %bb.agj, !prof !54

bb.agj:                                           ; preds = %.noexc74.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(8) %17) #20
  br label %bb.ahl

bb.agk:                                           ; preds = %.noexc74.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20, !noalias !576
  call void @llvm.experimental.noalias.scope.decl(metadata !577)
  call void @llvm.experimental.noalias.scope.decl(metadata !580)
  %i.dax = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.day = load i64, ptr %i.dax, align 8, !tbaa !314, !noalias !583 ; 2 uses
  store i64 %i.day, ptr %18, align 8, !tbaa !314, !alias.scope !584, !noalias !576
  store ptr null, ptr %i.dax, align 8, !tbaa !314, !noalias !583
  %i.daz = load ptr, ptr %1, align 8, !tbaa !111, !noalias !576, !nonnull !66, !align !132 ; 2 uses
  %i.dba = getelementptr inbounds nuw i8, ptr %i.daz, i64 8
  %i.dbb = load ptr, ptr %i.dba, align 8, !tbaa !71, !noalias !572
  %i.dbc = load ptr, ptr %i.daz, align 8, !tbaa !67, !noalias !572 ; 2 uses
  %.not148.not.i.i = icmp eq ptr %i.dbb, %i.dbc
  %i.dbd = inttoptr i64 %i.day to ptr             ; 7 uses
  br i1 %.not148.not.i.i, label %.critedge95.i.i, label %.lr.ph153.i.i

.lr.ph153.i.i:                                    ; preds = %bb.agk
  %i.dbe = getelementptr inbounds nuw i8, ptr %i.dbd, i64 9
  %i.dbf = load i8, ptr %i.dbe, align 1, !tbaa !167, !range !65, !noalias !572, !noundef !66
  %i.dbg = trunc nuw i8 %i.dbf to i1
  %i.dbh = getelementptr inbounds nuw i8, ptr %i.dbd, i64 8
  %i.dbi = load i8, ptr %i.dbh, align 8, !range !65, !noalias !572
  %i.dbj = trunc nuw i8 %i.dbi to i1
  %i.dbk = select i1 %i.dbg, i1 %i.dbj, i1 false, !prof !54
  %i.dbl = getelementptr inbounds nuw i8, ptr %i.dbd, i64 16
  %i.dbm = load ptr, ptr %i.dbl, align 8, !noalias !572
  %i.dbn = select i1 %i.dbk, ptr %i.dbm, ptr null, !prof !54
  %i.dbo = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 5 uses
  %i.dbp = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  %i.dbq = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 3 uses
  %i.dbr = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 9 uses
  %.off.i.i = add i32 %i.dae, 7
  %.not5.i.i.i.i.i = icmp ult i32 %.off.i.i, 15
  br label %bb.agl

bb.agl:                                           ; preds = %bb.ahi, %.lr.ph153.i.i
  %i.dbs = phi ptr [ %i.dbc, %.lr.ph153.i.i ], [ %i.dgt, %bb.ahi ]
  %.077150.i.i = phi ptr [ %i.dbn, %.lr.ph153.i.i ], [ %i.dgo, %bb.ahi ] ; 4 uses
  %.079149.i.i = phi i64 [ 0, %.lr.ph153.i.i ], [ %i.dgp, %bb.ahi ] ; 3 uses
  %i.dbt = getelementptr inbounds nuw [16 x i8], ptr %i.dbs, i64 %.079149.i.i ; 3 uses
  %i.dbu = getelementptr inbounds nuw [16 x i8], ptr %i.czx, i64 %.079149.i.i
  %i.dbv = load ptr, ptr %i.dbu, align 8, !tbaa !164, !noalias !572 ; 2 uses
  %i.dbw = getelementptr inbounds nuw i8, ptr %i.dbv, i64 9
  %i.dbx = load i8, ptr %i.dbw, align 1, !tbaa !167, !range !65, !noalias !572, !noundef !66
  %i.dby = trunc nuw i8 %i.dbx to i1
  %i.dbz = getelementptr inbounds nuw i8, ptr %i.dbv, i64 16
  %i.dca = load ptr, ptr %i.dbz, align 8, !noalias !572
  %i.dcb = select i1 %i.dby, ptr %i.dca, ptr null, !prof !54 ; 2 uses
  %i.dcc = load ptr, ptr %i.dbt, align 8, !tbaa !75, !noalias !572 ; 5 uses
  %i.dcd = getelementptr inbounds nuw i8, ptr %i.dcc, i64 40
  %i.dce = load ptr, ptr %i.dcd, align 8, !tbaa !116, !noalias !572 ; 3 uses
  %i.dcf = getelementptr inbounds nuw i8, ptr %i.dce, i64 16
  %i.dcg = load ptr, ptr %i.dcf, align 8, !tbaa !164, !noalias !572 ; 3 uses
  %.not.i.i68.i = icmp eq ptr %i.dcg, null
  br i1 %.not.i.i68.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.i: ; preds = %bb.agl
  %i.dch = load ptr, ptr %i.dce, align 8, !tbaa !164, !noalias !572 ; 2 uses
  %.not139.i.i = icmp eq ptr %i.dch, null
  br i1 %.not139.i.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit98.i.i, label %bb.agq

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i: ; preds = %bb.agl
  %i.dci = getelementptr inbounds nuw i8, ptr %i.dcg, i64 9
  %i.dcj = load i8, ptr %i.dci, align 1, !tbaa !167, !range !65, !noalias !572, !noundef !66
  %i.dck = trunc nuw i8 %i.dcj to i1
  %i.dcl = getelementptr inbounds nuw i8, ptr %i.dcg, i64 16
  %i.dcm = load ptr, ptr %i.dcl, align 8, !noalias !572
  %i.dcn = select i1 %i.dck, ptr %i.dcm, ptr null, !prof !54 ; 2 uses
  %i.dco = load ptr, ptr %i.dce, align 8, !tbaa !164, !noalias !572 ; 2 uses
  %.not139180.i.i = icmp eq ptr %i.dco, null
  br i1 %.not139180.i.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit98.i.i, label %bb.agq

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit98.i.i: ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.i
  %.0.i97.i.i = phi ptr [ null, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.i ], [ %i.dcn, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20, !noalias !576
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20, !noalias !576
  %i.dcp = getelementptr inbounds nuw i8, ptr %i.dcc, i64 32
  %i.dcq = load i64, ptr %i.dcp, align 8, !tbaa !163, !noalias !572
  %i.dcr = getelementptr inbounds nuw i8, ptr %i.dcc, i64 16
  %i.dcs = load i64, ptr %i.dcr, align 8, !tbaa !119, !noalias !572
  invoke void @_ZN5arrow8internal13TransposeIntsERKNS_8DataTypeES3_PKhPhlllPKi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %20, ptr noundef nonnull align 8 dereferenceable(72) %i.cjl, ptr noundef nonnull align 8 dereferenceable(72) %i.cjl, ptr noundef %.0.i97.i.i, ptr noundef %.077150.i.i, i64 noundef %i.dcq, i64 noundef 0, i64 noundef %i.dcs, ptr noundef %i.dcb)
          to label %_ZN5arrow6StatusD2Ev.exit.i72.i unwind label %bb.agp, !noalias !572

_ZN5arrow6StatusD2Ev.exit.i72.i:                  ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit98.i.i
  %i.dct = load ptr, ptr %20, align 8, !tbaa !51, !noalias !576 ; 2 uses
  store ptr %i.dct, ptr %19, align 8, !tbaa !51, !noalias !576
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20, !noalias !576
  %i.dcu = icmp eq ptr %i.dct, null
  br i1 %i.dcu, label %_ZN5arrow6StatusD2Ev.exit114.i.i, label %bb.agm, !prof !54

bb.agm:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit.i72.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(8) %19) #20
  %i.dcv = load ptr, ptr %19, align 8, !tbaa !51, !noalias !576 ; 2 uses
  %.not.i100.i.i = icmp eq ptr %i.dcv, null
  br i1 %.not.i100.i.i, label %_ZN5arrow6StatusD2Ev.exit101.i.i, label %bb.agn, !prof !54

bb.agn:                                           ; preds = %bb.agm
  %i.dcw = getelementptr inbounds nuw i8, ptr %i.dcv, i64 1
  %i.dcx = load i8, ptr %i.dcw, align 1, !tbaa !55, !range !65, !noundef !66
  %i.dcy = trunc nuw i8 %i.dcx to i1
  br i1 %i.dcy, label %_ZN5arrow6StatusD2Ev.exit101.i.i, label %bb.ago

bb.ago:                                           ; preds = %bb.agn
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #20
  br label %_ZN5arrow6StatusD2Ev.exit101.i.i

_ZN5arrow6StatusD2Ev.exit101.i.i:                 ; preds = %bb.ago, %bb.agn, %bb.agm
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20, !noalias !576
  br label %.critedge94.i.i

bb.agp:                                           ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit98.i.i
  %i.dcz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20, !noalias !576
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20, !noalias !576
  br label %bb.ahk

bb.agq:                                           ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.i
  %i.dda = phi ptr [ %i.dco, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i ], [ %i.dch, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.i ] ; 2 uses
  %.0.i181.i.i = phi ptr [ %i.dcn, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i ], [ null, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20, !noalias !576
  %i.ddb = getelementptr inbounds nuw i8, ptr %i.dda, i64 9
  %i.ddc = load i8, ptr %i.ddb, align 1, !tbaa !167, !range !65, !noalias !572, !noundef !66
  %i.ddd = trunc nuw i8 %i.ddc to i1
  %i.dde = getelementptr inbounds nuw i8, ptr %i.dda, i64 16
  %i.ddf = load ptr, ptr %i.dde, align 8, !noalias !572
  %i.ddg = select i1 %i.ddd, ptr %i.ddf, ptr null, !prof !54
  %i.ddh = getelementptr inbounds nuw i8, ptr %i.dcc, i64 32
  %i.ddi = load i64, ptr %i.ddh, align 8, !tbaa !163, !noalias !572
  %i.ddj = getelementptr inbounds nuw i8, ptr %i.dcc, i64 16
  %i.ddk = load i64, ptr %i.ddj, align 8, !tbaa !119, !noalias !572
  invoke void @_ZN5arrow8internal12BitRunReaderC1EPKhll(ptr noundef nonnull align 8 dereferenceable(33) %21, ptr noundef %i.ddg, i64 noundef %i.ddi, i64 noundef %i.ddk)
          to label %.preheader140.i.i unwind label %bb.agx, !noalias !572

.preheader140.i.i:                                ; preds = %bb.agq
  %i.ddl = load i64, ptr %i.dbo, align 8, !tbaa !585, !noalias !576 ; 2 uses
  %i.ddm = load i64, ptr %i.dbp, align 8, !tbaa !587, !noalias !576 ; 2 uses
  %.not.i104144.i.i = icmp slt i64 %i.ddl, %i.ddm
  br i1 %.not.i104144.i.i, label %.lr.ph146.i.i, label %.thread136.i.i, !prof !588

.lr.ph146.i.i:                                    ; preds = %.preheader140.i.i, %bb.ahf
  %i.ddn = phi i64 [ %i.dgj, %bb.ahf ], [ %i.ddm, %.preheader140.i.i ] ; 2 uses
  %i.ddo = phi i64 [ %i.dgi, %bb.ahf ], [ %i.ddl, %.preheader140.i.i ] ; 4 uses
  %.069145.i.i = phi i64 [ %i.dgh, %bb.ahf ], [ 0, %.preheader140.i.i ] ; 4 uses
  %i.ddp = load i8, ptr %i.dbq, align 8, !tbaa !589, !range !65, !noalias !576, !noundef !66
  %i.ddq = xor i8 %i.ddp, 1                       ; 4 uses
  store i8 %i.ddq, ptr %i.dbq, align 8, !tbaa !589, !noalias !576
  %i.ddr = and i64 %i.ddo, 63                     ; 2 uses
  %i.dds = load i64, ptr %i.dbr, align 8, !tbaa !590, !noalias !576
  %notmask.i.i.i.i = shl nsw i64 -1, %i.ddr
  %.not5.i.i.i = xor i64 %i.dds, -1
  %i.ddt = and i64 %notmask.i.i.i.i, %.not5.i.i.i ; 2 uses
  store i64 %i.ddt, ptr %i.dbr, align 8, !tbaa !590, !noalias !576
  %i.ddu = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ddt, i1 false)
  %i.ddv = sub nsw i64 %i.ddu, %i.ddr
  %i.ddw = add nsw i64 %i.ddv, %i.ddo             ; 6 uses
  store i64 %i.ddw, ptr %i.dbo, align 8, !tbaa !585, !noalias !576
  %i.ddx = and i64 %i.ddw, 63
  %i.ddy = icmp eq i64 %i.ddx, 0
  br i1 %i.ddy, label %bb.agr, label %.loopexit.i.i418, !prof !46

bb.agr:                                           ; preds = %.lr.ph146.i.i
  %i.ddz = icmp slt i64 %i.ddw, %i.ddn
  br i1 %i.ddz, label %.preheader.i.i, label %.loopexit.i.i418, !prof !54

.preheader.i.i:                                   ; preds = %bb.agr, %bb.agw
  %i.dea = phi i8 [ %i.dfc, %bb.agw ], [ %i.ddq, %bb.agr ]
  %118 = phi i64 [ %i.dfi, %bb.agw ], [ %i.ddw, %bb.agr ]
  %i.deb = phi i64 [ %i.dfl, %bb.agw ], [ %i.ddn, %bb.agr ]
  %119 = load ptr, ptr %21, align 8, !tbaa !591, !noalias !576
  %i.dec = getelementptr inbounds nuw i8, ptr %119, i64 8 ; 3 uses
  store ptr %i.dec, ptr %21, align 8, !tbaa !591, !noalias !576
  %i.ded = sub nsw i64 %i.deb, %118               ; 6 uses
  store i64 0, ptr %i.dbr, align 8, !tbaa !590, !noalias !576
  %i.dee = icmp sgt i64 %i.ded, 63
  br i1 %i.dee, label %bb.ags, label %bb.agt, !prof !54

bb.ags:                                           ; preds = %.preheader.i.i
  %i.def = load i64, ptr %i.dec, align 1, !noalias !572 ; 2 uses
  store i64 %i.def, ptr %i.dbr, align 8, !noalias !576
  br label %bb.agu

bb.agt:                                           ; preds = %.preheader.i.i
  %i.deg = ashr i64 %i.ded, 3
  %i.deh = and i64 %i.ded, 7
  %i.dei = icmp ne i64 %i.deh, 0
  %i.dej = zext i1 %i.dei to i64
  %i.dek = add nsw i64 %i.deg, %i.dej
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dbr, ptr nonnull align 1 %i.dec, i64 %i.dek, i1 false), !noalias !572
  %i.del = add nsw i64 %i.ded, -1                 ; 2 uses
  %i.dem = lshr i64 %i.del, 3
  %i.den = getelementptr inbounds nuw i8, ptr %i.dbr, i64 %i.dem
  %i.deo = load i8, ptr %i.den, align 1, !tbaa !45, !noalias !576
  %i.dep = trunc i64 %i.del to i8
  %i.deq = and i8 %i.dep, 7
  %i.der = lshr i8 %i.deo, %i.deq
  %i.des = or i8 %i.der, -2
  %.neg.i.i.i.i.i = add nsw i8 %i.des, 1
  %i.det = sdiv i64 %i.ded, 8
  %i.deu = getelementptr inbounds i8, ptr %i.dbr, i64 %i.det ; 2 uses
  %i.dev = load i8, ptr %i.deu, align 1, !tbaa !45, !noalias !576 ; 2 uses
  %i.dew = xor i8 %.neg.i.i.i.i.i, %i.dev
  %i.dex = srem i64 %i.ded, 8
  %i.dey = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.dex
  %i.dez = load i8, ptr %i.dey, align 1, !tbaa !45, !noalias !576
  %i.dfa = and i8 %i.dew, %i.dez
  %i.dfb = xor i8 %i.dfa, %i.dev
  store i8 %i.dfb, ptr %i.deu, align 1, !tbaa !45, !noalias !576
  %.pre4.pre.i.i.i = load i64, ptr %i.dbr, align 8, !tbaa !590, !noalias !576
  %.pre.i71.i.a = load i8, ptr %i.dbq, align 8, !tbaa !589, !range !65, !noalias !576
  br label %bb.agu

bb.agu:                                           ; preds = %bb.agt, %bb.ags
  %i.dfc = phi i8 [ %.pre.i71.i.a, %bb.agt ], [ %i.dea, %bb.ags ] ; 4 uses
  %.pre4.i.i.i = phi i64 [ %.pre4.pre.i.i.i, %bb.agt ], [ %i.def, %bb.ags ] ; 2 uses
  %i.dfd = trunc nuw i8 %i.dfc to i1
  br i1 %i.dfd, label %bb.agv, label %_ZN5arrow8internal12BitRunReader12LoadNextWordEv.exit.i.i.i

bb.agv:                                           ; preds = %bb.agu
  %i.dfe = xor i64 %.pre4.i.i.i, -1               ; 2 uses
  store i64 %i.dfe, ptr %i.dbr, align 8, !tbaa !590, !noalias !576
  br label %_ZN5arrow8internal12BitRunReader12LoadNextWordEv.exit.i.i.i

_ZN5arrow8internal12BitRunReader12LoadNextWordEv.exit.i.i.i: ; preds = %bb.agv, %bb.agu
  %i.dff = phi i64 [ %.pre4.i.i.i, %bb.agu ], [ %i.dfe, %bb.agv ]
  %i.dfg = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.dff, i1 false) ; 2 uses
  %i.dfh = load i64, ptr %i.dbo, align 8, !tbaa !585, !noalias !576
  %i.dfi = add nsw i64 %i.dfh, %i.dfg             ; 6 uses
  store i64 %i.dfi, ptr %i.dbo, align 8, !tbaa !585, !noalias !576
  %i.dfj = and i64 %i.dfi, 63
  %i.dfk = icmp eq i64 %i.dfj, 0
  br i1 %i.dfk, label %bb.agw, label %.loopexit.i.i418, !prof !46

bb.agw:                                           ; preds = %_ZN5arrow8internal12BitRunReader12LoadNextWordEv.exit.i.i.i
  %i.dfl = load i64, ptr %i.dbp, align 8, !tbaa !587, !noalias !576 ; 2 uses
  %i.dfm = icmp slt i64 %i.dfi, %i.dfl
  %i.dfn = icmp ne i64 %i.dfg, 0
  %or.cond.i.i.i = and i1 %i.dfn, %i.dfm
  br i1 %or.cond.i.i.i, label %.preheader.i.i, label %.loopexit.i.i418, !prof !592, !llvm.loop !593

.loopexit.i.i418:                                 ; preds = %bb.agw, %_ZN5arrow8internal12BitRunReader12LoadNextWordEv.exit.i.i.i, %bb.agr, %.lr.ph146.i.i
  %i.dfo = phi i8 [ %i.ddq, %.lr.ph146.i.i ], [ %i.ddq, %bb.agr ], [ %i.dfc, %_ZN5arrow8internal12BitRunReader12LoadNextWordEv.exit.i.i.i ], [ %i.dfc, %bb.agw ]
  %i.dfp = phi i64 [ %i.ddw, %.lr.ph146.i.i ], [ %i.ddw, %bb.agr ], [ %i.dfi, %_ZN5arrow8internal12BitRunReader12LoadNextWordEv.exit.i.i.i ], [ %i.dfi, %bb.agw ] ; 2 uses
  %i.dfq = sub nsw i64 %i.dfp, %i.ddo             ; 3 uses
  %i.dfr = icmp eq i64 %i.dfp, %i.ddo
  br i1 %i.dfr, label %.thread136.i.i, label %bb.agy

bb.agx:                                           ; preds = %bb.agq
  %i.dfs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ahh

bb.agy:                                           ; preds = %.loopexit.i.i418
  %i.dft = trunc nuw i8 %i.dfo to i1
  br i1 %i.dft, label %bb.agz, label %bb.ahe

bb.agz:                                           ; preds = %bb.agy
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20, !noalias !576
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20, !noalias !576
  %i.dfu = load ptr, ptr %i.dbt, align 8, !tbaa !75, !noalias !572
  %i.dfv = getelementptr inbounds nuw i8, ptr %i.dfu, i64 32
  %i.dfw = load i64, ptr %i.dfv, align 8, !tbaa !163, !noalias !572
  %i.dfx = add nsw i64 %i.dfw, %.069145.i.i
  invoke void @_ZN5arrow8internal13TransposeIntsERKNS_8DataTypeES3_PKhPhlllPKi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %23, ptr noundef nonnull align 8 dereferenceable(72) %i.cjl, ptr noundef nonnull align 8 dereferenceable(72) %i.cjl, ptr noundef %.0.i181.i.i, ptr noundef %.077150.i.i, i64 noundef %i.dfx, i64 noundef %.069145.i.i, i64 noundef %i.dfq, ptr noundef %i.dcb)
          to label %_ZN5arrow6StatusD2Ev.exit106.i.i unwind label %bb.ahd, !noalias !572

_ZN5arrow6StatusD2Ev.exit106.i.i:                 ; preds = %bb.agz
  %i.dfy = load ptr, ptr %23, align 8, !tbaa !51, !noalias !576 ; 2 uses
  store ptr %i.dfy, ptr %22, align 8, !tbaa !51, !noalias !576
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20, !noalias !576
  %i.dfz = icmp eq ptr %i.dfy, null
  br i1 %i.dfz, label %_ZN5arrow6StatusD2Ev.exit112.i.i, label %bb.aha, !prof !54

bb.aha:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit106.i.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(8) %22) #20
  %i.dga = load ptr, ptr %22, align 8, !tbaa !51, !noalias !576 ; 2 uses
  %.not.i107.i.i = icmp eq ptr %i.dga, null
  br i1 %.not.i107.i.i, label %bb.ahg, label %bb.ahb, !prof !54

bb.ahb:                                           ; preds = %bb.aha
  %i.dgb = getelementptr inbounds nuw i8, ptr %i.dga, i64 1
  %i.dgc = load i8, ptr %i.dgb, align 1, !tbaa !55, !range !65, !noundef !66
  %i.dgd = trunc nuw i8 %i.dgc to i1
  br i1 %i.dgd, label %bb.ahg, label %bb.ahc

bb.ahc:                                           ; preds = %bb.ahb
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #20
  br label %bb.ahg

bb.ahd:                                           ; preds = %bb.agz
  %i.dge = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20, !noalias !576
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20, !noalias !576
  br label %bb.ahh

bb.ahe:                                           ; preds = %bb.agy
  br i1 %.not5.i.i.i.i.i, label %bb.ahf, label %.lr.ph.i.i.i.i70.i

.lr.ph.i.i.i.i70.i:                               ; preds = %bb.ahe
  %i.dgf = mul nsw i64 %.069145.i.i, %i.dar
  %i.dgg = getelementptr inbounds i8, ptr %.077150.i.i, i64 %i.dgf
  %gepdiff.i.i = mul i64 %i.dfq, %i.dar
  call void @llvm.memset.p0.i64(ptr align 1 %i.dgg, i8 0, i64 %gepdiff.i.i, i1 false), !tbaa !45, !noalias !572
  br label %bb.ahf

_ZN5arrow6StatusD2Ev.exit112.i.i:                 ; preds = %_ZN5arrow6StatusD2Ev.exit106.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20, !noalias !576
  br label %bb.ahf

bb.ahf:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit112.i.i, %.lr.ph.i.i.i.i70.i, %bb.ahe
  %i.dgh = add nsw i64 %i.dfq, %.069145.i.i
  %i.dgi = load i64, ptr %i.dbo, align 8, !tbaa !585, !noalias !576 ; 2 uses
  %i.dgj = load i64, ptr %i.dbp, align 8, !tbaa !587, !noalias !576 ; 2 uses
  %.not.i104.i.i = icmp slt i64 %i.dgi, %i.dgj
  br i1 %.not.i104.i.i, label %.lr.ph146.i.i, label %.thread136.i.i, !prof !594

.thread136.i.i:                                   ; preds = %bb.ahf, %.loopexit.i.i418, %.preheader140.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20, !noalias !576
  br label %bb.ahi

bb.ahg:                                           ; preds = %bb.ahc, %bb.ahb, %bb.aha
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20, !noalias !576
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20, !noalias !576
  br label %.critedge94.i.i

bb.ahh:                                           ; preds = %bb.ahd, %bb.agx
  %.pn82.pn.pn.i.i = phi { ptr, i32 } [ %i.dfs, %bb.agx ], [ %i.dge, %bb.ahd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20, !noalias !576
  br label %bb.ahk

_ZN5arrow6StatusD2Ev.exit114.i.i:                 ; preds = %_ZN5arrow6StatusD2Ev.exit.i72.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20, !noalias !576
  br label %bb.ahi

bb.ahi:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit114.i.i, %.thread136.i.i
  %i.dgk = load ptr, ptr %i.dbt, align 8, !tbaa !75, !noalias !572
  %i.dgl = getelementptr inbounds nuw i8, ptr %i.dgk, i64 16
  %i.dgm = load i64, ptr %i.dgl, align 8, !tbaa !119, !noalias !572
  %i.dgn = mul nsw i64 %i.dgm, %i.dar
  %i.dgo = getelementptr inbounds i8, ptr %.077150.i.i, i64 %i.dgn
  %i.dgp = add nuw i64 %.079149.i.i, 1            ; 2 uses
  %i.dgq = load ptr, ptr %1, align 8, !tbaa !111, !noalias !576, !nonnull !66, !align !132 ; 2 uses
  %i.dgr = getelementptr inbounds nuw i8, ptr %i.dgq, i64 8
  %i.dgs = load ptr, ptr %i.dgr, align 8, !tbaa !71, !noalias !572
  %i.dgt = load ptr, ptr %i.dgq, align 8, !tbaa !67, !noalias !572 ; 2 uses
  %i.dgu = ptrtoint ptr %i.dgs to i64
  %i.dgv = ptrtoint ptr %i.dgt to i64
  %i.dgw = sub i64 %i.dgu, %i.dgv
  %i.dgx = ashr exact i64 %i.dgw, 4
  %.not.i69.i = icmp ult i64 %i.dgp, %i.dgx
  br i1 %.not.i69.i, label %bb.agl, label %.critedge95.i.i, !llvm.loop !595

.critedge95.i.i:                                  ; preds = %bb.ahi, %bb.agk
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20, !noalias !576
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i unwind label %bb.ahj, !noalias !572

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %.critedge95.i.i
  store ptr null, ptr %43, align 8, !tbaa !51, !alias.scope !572, !noalias !499
  %i.dgy = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.dgz = load <2 x ptr>, ptr %24, align 16, !tbaa !91, !noalias !576
  store <2 x ptr> %i.dgz, ptr %i.dgy, align 8, !tbaa !91, !alias.scope !572, !noalias !499
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20, !noalias !576
  %.pre157.i.i = load ptr, ptr %18, align 8, !tbaa !314, !noalias !576
  br label %.critedge94.i.i

bb.ahj:                                           ; preds = %.critedge95.i.i
  %i.dha = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20, !noalias !576
  %.pre156.i.i.a = load ptr, ptr %18, align 8, !tbaa !314, !noalias !576
  br label %bb.ahk

.critedge94.i.i:                                  ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %bb.ahg, %_ZN5arrow6StatusD2Ev.exit101.i.i
  %i.dhb = phi ptr [ %i.dbd, %_ZN5arrow6StatusD2Ev.exit101.i.i ], [ %i.dbd, %bb.ahg ], [ %.pre157.i.i, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i ] ; 3 uses
  %.not.i116.i.i = icmp eq ptr %i.dhb, null
  br i1 %.not.i116.i.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i417, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i416

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i416: ; preds = %.critedge94.i.i
  %i.dhc = load ptr, ptr %i.dhb, align 8, !tbaa !42
  %i.dhd = getelementptr inbounds nuw i8, ptr %i.dhc, i64 8
  %i.dhe = load ptr, ptr %i.dhd, align 8
  call void %i.dhe(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dhb) #20, !inline_history !596
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i417

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i417: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i416, %.critedge94.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20, !noalias !576
  br label %bb.ahl

bb.ahk:                                           ; preds = %bb.ahj, %bb.ahh, %bb.agp
  %i.dhf = phi ptr [ %.pre156.i.i.a, %bb.ahj ], [ %i.dbd, %bb.ahh ], [ %i.dbd, %bb.agp ] ; 3 uses
  %.pn87.i.i = phi { ptr, i32 } [ %i.dha, %bb.ahj ], [ %.pn82.pn.pn.i.i, %bb.ahh ], [ %i.dcz, %bb.agp ]
  %.not.i117.i.i = icmp eq ptr %i.dhf, null
  br i1 %.not.i117.i.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit119.i.i, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i118.i.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i118.i.i: ; preds = %bb.ahk
  %i.dhg = load ptr, ptr %i.dhf, align 8, !tbaa !42, !noalias !572
  %i.dhh = getelementptr inbounds nuw i8, ptr %i.dhg, i64 8
  %i.dhi = load ptr, ptr %i.dhh, align 8, !noalias !572
  call void %i.dhi(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dhf) #20, !noalias !572, !inline_history !596
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit119.i.i

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit119.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i118.i.i, %bb.ahk
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20, !noalias !576
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #20, !noalias !572
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20, !noalias !576
  br label %.body75.i

bb.ahl:                                           ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i417, %bb.agj
  %i.dhj = load ptr, ptr %17, align 8, !tbaa !51, !noalias !576 ; 2 uses
  %i.dhk = icmp eq ptr %i.dhj, null
  br i1 %i.dhk, label %bb.ahm, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i403, !prof !54

end_hunk_1
