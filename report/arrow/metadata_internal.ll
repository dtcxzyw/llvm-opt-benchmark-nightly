inline.NumInlined: 4742
inline.NumDeleted: 2176
begin_hunk_0_@_ZN5arrow3ipc8internal12_GLOBAL__N_119FieldFromFlatbufferEPKN3org6apache5arrow7flatbuf5FieldENS1_13FieldPositionEPNS0_14DictionaryMemoEPSt10shared_ptrINS_5FieldEE:bb.a
  %i.wr = icmp eq i32 %.0.i.i.i.i393, 1
  br i1 %i.wr, label %bb.fl, label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !21

bb.fl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i392
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.wc) #22
  br label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.critedge, %bb.fh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i392, %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.ws = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !13 ; 8 uses
  %.not.i.i394 = icmp eq ptr %i.wt, null
  br i1 %.not.i.i394, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit398, label %bb.fm

bb.fm:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 8 ; 4 uses
  %i.wv = load atomic i64, ptr %i.wu acquire, align 8 ; 2 uses
  %i.ww = icmp eq i64 %i.wv, 4294967297
  %i.wx = trunc i64 %i.wv to i32                  ; 2 uses
  br i1 %i.ww, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  store i32 0, ptr %i.wu, align 8, !tbaa !15
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wt, i64 12
  store i32 0, ptr %i.wy, align 4, !tbaa !17
  %i.wz = load ptr, ptr %i.wt, align 8, !tbaa !18
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 16
  %i.xb = load ptr, ptr %i.xa, align 8
  call void %i.xb(ptr noundef nonnull align 8 dereferenceable(16) %i.wt) #22, !inline_history !105
  %i.xc = load ptr, ptr %i.wt, align 8, !tbaa !18
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 24
  %i.xe = load ptr, ptr %i.xd, align 8
  call void %i.xe(ptr noundef nonnull align 8 dereferenceable(16) %i.wt) #22, !inline_history !105
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit398

bb.fo:                                            ; preds = %bb.fm
  %i.xf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i395 = icmp eq i8 %i.xf, 0
  br i1 %.not.i.i.i395, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.xg = add nsw i32 %i.wx, -1
  store i32 %i.xg, ptr %i.wu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i396

bb.fq:                                            ; preds = %bb.fo
  %i.xh = atomicrmw volatile add ptr %i.wu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i396

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i396: ; preds = %bb.fq, %bb.fp
  %.0.i.i.i.i397 = phi i32 [ %i.wx, %bb.fp ], [ %i.xh, %bb.fq ]
  %i.xi = icmp eq i32 %.0.i.i.i.i397, 1
  br i1 %i.xi, label %bb.fr, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit398, !prof !21

bb.fr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i396
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.wt) #22
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit398

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit398: ; preds = %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.fn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i396, %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  ret void

bb.fs:                                            ; preds = %.body, %bb.c
  %.pn193.pn.pn.pn = phi { ptr, i32 } [ %.pn193.pn.pn, %.body ], [ %i.r, %bb.c ]
  call void @_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  resume { ptr, i32 } %.pn193.pn.pn.pn
}

declare void @_ZN5arrow6schemaESt6vectorISt10shared_ptrINS_5FieldEESaIS3_EENS_10EndiannessES1_IKNS_16KeyValueMetadataEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.116") align 8, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !124    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !121  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !17
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !757
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !757
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i, !prof !21

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !210

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !124
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !203
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #24
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc8internal17GetTensorMetadataERKNS_6BufferEPSt10shared_ptrINS_8DataTypeEEPSt6vectorIlSaIlEESC_PS9_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 initializes((0, 8)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noundef %2, ptr noundef captures(none) %3, ptr noundef captures(none) %4, ptr noundef %5) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.arrow_vendored_private::flatbuffers::Verifier", align 8 ; 13 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::vector", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !399, !range !72, !noundef !73
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = select i1 %i.c, ptr %i.e, ptr null, !prof !58 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !605  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22, !noalias !758
  %.tr.i.i = trunc i64 %i.h to i32
  %i.i = shl i32 %.tr.i.i, 3
  store ptr %i.f, ptr %6, align 8, !tbaa !761, !noalias !758
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.h, ptr %i.j, align 8, !tbaa !765, !noalias !758
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 128, ptr %i.k, align 8, !tbaa !3, !noalias !758
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 %i.i, ptr %.sroa.43.0..sroa_idx.i.i.i, align 4, !tbaa !3, !noalias !758
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !172, !noalias !758
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 25
  store i8 1, ptr %.sroa.64.0..sroa_idx.i.i.i, align 1, !tbaa !172, !noalias !758
  %.sroa.75.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 2147483647, ptr %.sroa.75.0..sroa_idx.i.i.i, align 8, !tbaa !440, !noalias !758
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !tbaa !172, !noalias !758
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false), !noalias !758
  %i.m = icmp ugt i64 %i.h, 11
  br i1 %i.m, label %bb.b, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr %i.e, align 4, !tbaa !3, !noalias !758
  %.fr2.i.i = freeze i32 %i.n                     ; 2 uses
  %or.cond.i.i.i.i.i = icmp sgt i32 %.fr2.i.i, 0
  br i1 %or.cond.i.i.i.i.i, label %bb.c, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.o = zext nneg i32 %.fr2.i.i to i64           ; 2 uses
  %i.p = add i64 %i.h, -1
  %.not.i.i.i.i.i = icmp ult i64 %i.p, %i.o
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i: ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !758
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.o
  %i.r = call noundef zeroext i1 @_ZNK3org6apache5arrow7flatbuf7Message6VerifyERN22arrow_vendored_private11flatbuffers8VerifierE(ptr noundef nonnull align 1 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(72) %6), !noalias !758
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !758
  br i1 %i.r, label %_ZN5arrow6StatusD2Ev.exit.thread, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i
  %i.s = load i32, ptr %i.e, align 4, !tbaa !3, !noalias !758
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.t
  store ptr null, ptr %0, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %_ZN5arrow6StatusD2Ev.exit45

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i, %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i
  call void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(29) @.str.50)
  %.pr = load ptr, ptr %7, align 8, !tbaa !22     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.v = icmp eq ptr %.pr, null
  br i1 %i.v, label %_ZN5arrow6StatusD2Ev.exit45, label %.critedge

_ZN5arrow6StatusD2Ev.exit45:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %.087 = phi ptr [ %i.u, %_ZN5arrow6StatusD2Ev.exit.thread ], [ null, %_ZN5arrow6StatusD2Ev.exit ] ; 4 uses
  %i.w = load i32, ptr %.087, align 4, !tbaa !3
  %i.x = sext i32 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds i8, ptr %.087, i64 %i.y ; 3 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !31  ; 2 uses
  %i.ab = icmp ugt i16 %i.aa, 6
  br i1 %i.ab, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit.thread

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit45
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 6
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit.thread, label %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i

_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.ae = zext i16 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.087, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !14
  %i.ah = icmp eq i8 %i.ag, 4
  %i.ai = icmp ugt i16 %i.aa, 8
  %or.cond.i = and i1 %i.ai, %i.ah
  br i1 %or.cond.i, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit.thread

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i: ; preds = %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not.i.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit.thread, label %_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit

_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i
  %i.al = zext i16 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %.087, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ao ; 16 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = sext i32 %i.aq to i64
  %i.as = sub nsw i64 0, %i.ar                    ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.ap, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i16, ptr %i.au, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i47 = icmp ne i16 %i.av, 0
  call void @llvm.assume(i1 %.not.i.i.i47)
  %i.aw = zext i16 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !766 ; 4 uses
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 13 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %wide.trip.count = zext i32 %i.bb to i64
  br label %bb.d

_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit.thread: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i, %_ZN5arrow6StatusD2Ev.exit45
  call void @_ZN5arrow6Status8FromArgsIJRA57_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(57) @.str.25)
  br label %.critedge

._crit_edge.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pre100 = load i32, ptr %i.ap, align 4, !tbaa !3
  %.pre104 = sext i32 %.pre100 to i64
  %.pre105 = sub nsw i64 0, %.pre104
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit
  %.pre-phi106 = phi i64 [ %.pre105, %._crit_edge.loopexit ], [ %i.as, %_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit ] ; 4 uses
  %i.bi = getelementptr inbounds i8, ptr %i.ap, i64 %.pre-phi106 ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !31
  %i.bk = icmp ugt i16 %i.bj, 10
  br i1 %i.bk, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i48, label %_ZNK3org6apache5arrow7flatbuf6Tensor7stridesEv.exit.thread

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i48: ; preds = %._crit_edge
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 10
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i49 = icmp eq i16 %i.bm, 0
  br i1 %.not.i.i.i49, label %_ZNK3org6apache5arrow7flatbuf6Tensor7stridesEv.exit.thread, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i61

bb.d:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.bn = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.bo = sext i32 %i.bn to i64
  %i.bp = sub nsw i64 0, %i.bo
  %i.bq = getelementptr inbounds i8, ptr %i.ap, i64 %i.bp ; 2 uses
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !31
  %i.bs = icmp ugt i16 %i.br, 8
  br i1 %i.bs, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i50, label %_ZNK3org6apache5arrow7flatbuf6Tensor5shapeEv.exit52

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i50: ; preds = %bb.d
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i51 = icmp eq i16 %i.bu, 0
  br i1 %.not.i.i.i51, label %_ZNK3org6apache5arrow7flatbuf6Tensor5shapeEv.exit52, label %bb.e

bb.e:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i50
  %i.bv = zext i16 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.by
  br label %_ZNK3org6apache5arrow7flatbuf6Tensor5shapeEv.exit52

_ZNK3org6apache5arrow7flatbuf6Tensor5shapeEv.exit52: ; preds = %bb.d, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i50, %bb.e
  %i.ca = phi ptr [ %i.bz, %bb.e ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i50 ], [ null, %bb.d ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = shl i64 %indvars.iv, 2
  %i.cd = and i64 %i.cc, 4294967292
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cg ; 6 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3
  %i.cj = sext i32 %i.ci to i64
  %i.ck = sub nsw i64 0, %i.cj                    ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ch, i64 %i.ck ; 2 uses
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !31
  %i.cn = icmp ugt i16 %i.cm, 4
  br i1 %i.cn, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, label %_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i: ; preds = %_ZNK3org6apache5arrow7flatbuf6Tensor5shapeEv.exit52
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !31 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cp, 0
  br i1 %.not.i.i, label %_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i
  %i.cq = zext i16 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !440
  br label %_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit

_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit: ; preds = %_ZNK3org6apache5arrow7flatbuf6Tensor5shapeEv.exit52, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, %bb.f
  %i.ct = phi i64 [ %i.cs, %bb.f ], [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i ], [ 0, %_ZNK3org6apache5arrow7flatbuf6Tensor5shapeEv.exit52 ] ; 2 uses
  %i.cu = load ptr, ptr %i.bc, align 8, !tbaa !488 ; 4 uses
  %i.cv = load ptr, ptr %i.bd, align 8, !tbaa !736
  %.not.i.i53 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not.i.i53, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !440
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.cw, ptr %i.bc, align 8, !tbaa !488
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

bb.h:                                             ; preds = %_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit
  %i.cx = load ptr, ptr %3, align 8, !tbaa !490   ; 4 uses
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz                    ; 6 uses
  %i.db = icmp eq i64 %i.da, 9223372036854775800
  br i1 %i.db, label %bb.i, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #25
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.dc = ashr exact i64 %i.da, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dc, i64 1)
  %i.dd = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dc ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.dc
end_hunk_0
begin_hunk_1_@_ZN5arrow3ipc8internal25GetSparseCSFIndexMetadataEPKN3org6apache5arrow7flatbuf20SparseTensorIndexCSFEPSt6vectorIlSaIlEESC_PSt10shared_ptrINS_8DataTypeEESG_:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i41 = icmp ne i16 %i.bc, 0
  call void @llvm.assume(i1 %.not.i.i.i41)
  %i.bd = zext i16 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %i.bd ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  %i.bm = load ptr, ptr %i.at, align 8, !tbaa !488 ; 4 uses
  %i.bn = load ptr, ptr %i.au, align 8, !tbaa !736
  %.not.i.i = icmp eq ptr %i.bm, %i.bn
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i40
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !440
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.bo, ptr %i.at, align 8, !tbaa !488
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

bb.f:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i40
  %i.bp = load ptr, ptr %2, align 8, !tbaa !490   ; 4 uses
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 6 uses
  %i.bt = icmp eq i64 %i.bs, 9223372036854775800
  br i1 %i.bt, label %bb.g, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #25
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.bu = ashr exact i64 %i.bs, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bu, i64 1)
  %i.bv = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bu ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bu
  %i.bx = call i64 @llvm.umin.i64(i64 %i.bv, i64 1152921504606846975)
  %i.by = select i1 %i.bw, i64 1152921504606846975, i64 %i.bx ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.by, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bz = shl nuw nsw i64 %i.by, 3
  %i.ca = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #23 ; 4 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bs ; 2 uses
  store i64 %i.bl, ptr %i.cb, align 8, !tbaa !440
  %i.cc = icmp sgt i64 %i.bs, 0
  br i1 %i.cc, label %bb.h, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ca, ptr align 8 %i.bp, i64 %i.bs, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bs) #24
  %.pre.pre = load i32, ptr %1, align 4, !tbaa !3
  %.pre62 = sext i32 %.pre.pre to i64
  %.pre63 = sub nsw i64 0, %.pre62
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i
  %.pre60.pre-phi = phi i64 [ %.pre63, %bb.i ], [ %i.az, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i ]
  store ptr %i.ca, ptr %2, align 8, !tbaa !490
  store ptr %i.cd, ptr %i.at, align 8, !tbaa !488
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.by
  store ptr %i.ce, ptr %i.au, align 8, !tbaa !736
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

_ZNSt6vectorIlSaIlEE9push_backEOl.exit:           ; preds = %bb.e, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i
  %.pre-phi61 = phi i64 [ %i.az, %bb.e ], [ %.pre60.pre-phi, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i ]
  %i.cf = getelementptr inbounds i8, ptr %1, i64 %.pre-phi61
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 10
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i44 = icmp ne i16 %i.ch, 0
  call void @llvm.assume(i1 %.not.i.i.i44)
  %i.ci = zext i16 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ci ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !3
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cl
  %i.cn = shl nuw nsw i64 %indvars.iv, 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !505 ; 2 uses
  %i.cr = load ptr, ptr %i.av, align 8, !tbaa !488 ; 4 uses
  %i.cs = load ptr, ptr %i.aw, align 8, !tbaa !736
  %.not.i.i45 = icmp eq ptr %i.cr, %i.cs
  br i1 %.not.i.i45, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !440
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store ptr %i.ct, ptr %i.av, align 8, !tbaa !488
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit52

bb.k:                                             ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit
  %i.cu = load ptr, ptr %3, align 8, !tbaa !490   ; 4 uses
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw                    ; 6 uses
  %i.cy = icmp eq i64 %i.cx, 9223372036854775800
  br i1 %i.cy, label %bb.l, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i46

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #25
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i46: ; preds = %bb.k
  %i.cz = ashr exact i64 %i.cx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i47 = call i64 @llvm.umax.i64(i64 %i.cz, i64 1)
  %i.da = add nsw i64 %.sroa.speculated.i.i.i.i47, %i.cz ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cz
  %i.dc = call i64 @llvm.umin.i64(i64 %i.da, i64 1152921504606846975)
  %i.dd = select i1 %i.db, i64 1152921504606846975, i64 %i.dc ; 3 uses
  %.not.i.i.i.i48 = icmp ne i64 %i.dd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i48)
  %i.de = shl nuw nsw i64 %i.dd, 3
  %i.df = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #23 ; 4 uses
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 %i.cx ; 2 uses
  store i64 %i.cq, ptr %i.dg, align 8, !tbaa !440
  %i.dh = icmp sgt i64 %i.cx, 0
  br i1 %i.dh, label %bb.m, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i49

bb.m:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i46
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.df, ptr align 8 %i.cu, i64 %i.cx, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i49

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i49: ; preds = %bb.m, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i46
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.not.i17.i.i.i50 = icmp eq ptr %i.cu, null
  br i1 %.not.i17.i.i.i50, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i51, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i49
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cx) #24
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i51

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i51: ; preds = %bb.n, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i49
  store ptr %i.df, ptr %3, align 8, !tbaa !490
  store ptr %i.di, ptr %i.av, align 8, !tbaa !488
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dd
  store ptr %i.dj, ptr %i.aw, align 8, !tbaa !736
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit52

_ZNSt6vectorIlSaIlEE9push_backEOl.exit52:         ; preds = %bb.j, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i51
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i40, !llvm.loop !788

bb.o:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit33, %_ZN5arrow6StatusD2Ev.exit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc8internal23GetSparseTensorMetadataERKNS_6BufferEPSt10shared_ptrINS_8DataTypeEEPSt6vectorIlSaIlEEPS9_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEPlPNS_18SparseTensorFormat4typeE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 initializes((0, 8)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noundef %2, ptr noundef captures(address_is_null) %3, ptr noundef %4, ptr noundef writeonly captures(address_is_null) %5, ptr noundef writeonly captures(address_is_null) %6) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.arrow_vendored_private::flatbuffers::Verifier", align 8 ; 13 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !399, !range !72, !noundef !73
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = select i1 %i.c, ptr %i.e, ptr null, !prof !58 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !605  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !789
  %.tr.i.i = trunc i64 %i.h to i32
  %i.i = shl i32 %.tr.i.i, 3
  store ptr %i.f, ptr %7, align 8, !tbaa !761, !noalias !789
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.h, ptr %i.j, align 8, !tbaa !765, !noalias !789
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 128, ptr %i.k, align 8, !tbaa !3, !noalias !789
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %i.i, ptr %.sroa.43.0..sroa_idx.i.i.i, align 4, !tbaa !3, !noalias !789
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !172, !noalias !789
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 25
  store i8 1, ptr %.sroa.64.0..sroa_idx.i.i.i, align 1, !tbaa !172, !noalias !789
  %.sroa.75.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 2147483647, ptr %.sroa.75.0..sroa_idx.i.i.i, align 8, !tbaa !440, !noalias !789
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !tbaa !172, !noalias !789
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false), !noalias !789
  %i.m = icmp ugt i64 %i.h, 11
  br i1 %i.m, label %bb.b, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr %i.e, align 4, !tbaa !3, !noalias !789
  %.fr2.i.i = freeze i32 %i.n                     ; 2 uses
  %or.cond.i.i.i.i.i = icmp sgt i32 %.fr2.i.i, 0
  br i1 %or.cond.i.i.i.i.i, label %bb.c, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.o = zext nneg i32 %.fr2.i.i to i64           ; 2 uses
  %i.p = add i64 %i.h, -1
  %.not.i.i.i.i.i = icmp ult i64 %i.p, %i.o
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i: ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !789
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.o
  %i.r = call noundef zeroext i1 @_ZNK3org6apache5arrow7flatbuf7Message6VerifyERN22arrow_vendored_private11flatbuffers8VerifierE(ptr noundef nonnull align 1 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(72) %7), !noalias !789
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !789
  br i1 %i.r, label %_ZN5arrow6StatusD2Ev.exit.thread, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i
  %i.s = load i32, ptr %i.e, align 4, !tbaa !3, !noalias !789
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.t
  store ptr null, ptr %0, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %_ZN5arrow6StatusD2Ev.exit60

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i, %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i
  call void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(29) @.str.50)
  %.pr = load ptr, ptr %8, align 8, !tbaa !22     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.v = icmp eq ptr %.pr, null
  br i1 %i.v, label %_ZN5arrow6StatusD2Ev.exit60, label %.critedge

_ZN5arrow6StatusD2Ev.exit60:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %.092 = phi ptr [ %i.u, %_ZN5arrow6StatusD2Ev.exit.thread ], [ null, %_ZN5arrow6StatusD2Ev.exit ] ; 4 uses
  %i.w = load i32, ptr %.092, align 4, !tbaa !3
  %i.x = sext i32 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds i8, ptr %.092, i64 %i.y ; 3 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !31  ; 2 uses
  %i.ab = icmp ugt i16 %i.aa, 6
  br i1 %i.ab, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message22header_as_SparseTensorEv.exit.thread

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit60
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 6
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message22header_as_SparseTensorEv.exit.thread, label %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i

_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.ae = zext i16 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.092, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !14
  %i.ah = icmp eq i8 %i.ag, 5
  %i.ai = icmp ugt i16 %i.aa, 8
  %or.cond.i = and i1 %i.ai, %i.ah
  br i1 %or.cond.i, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message22header_as_SparseTensorEv.exit.thread

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i: ; preds = %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not.i.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message22header_as_SparseTensorEv.exit.thread, label %_ZNK3org6apache5arrow7flatbuf7Message22header_as_SparseTensorEv.exit

_ZNK3org6apache5arrow7flatbuf7Message22header_as_SparseTensorEv.exit: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i
  %i.al = zext i16 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %.092, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ao ; 15 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3  ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = sub nsw i64 0, %i.ar
  %i.at = getelementptr inbounds i8, ptr %i.ap, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i16, ptr %i.au, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i62 = icmp ne i16 %i.av, 0
  call void @llvm.assume(i1 %.not.i.i.i62)
  %i.aw = zext i16 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !766 ; 2 uses
  %i.bc = icmp ne ptr %3, null                    ; 2 uses
  %i.bd = icmp ne ptr %4, null                    ; 2 uses
  %or.cond = or i1 %i.bc, %i.bd
  %i.be = icmp sgt i32 %i.bb, 0
  %or.cond94 = select i1 %or.cond, i1 %i.be, i1 false
  br i1 %or.cond94, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK3org6apache5arrow7flatbuf7Message22header_as_SparseTensorEv.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 13 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %wide.trip.count = zext nneg i32 %i.bb to i64
  br label %bb.d

_ZNK3org6apache5arrow7flatbuf7Message22header_as_SparseTensorEv.exit.thread: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i, %_ZN5arrow6StatusD2Ev.exit60
  call void @_ZN5arrow6Status8FromArgsIJRA63_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(63) @.str.27)
  br label %.critedge

bb.d:                                             ; preds = %.lr.ph, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 2 uses
  %i.bl = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.bm = sext i32 %i.bl to i64
  %i.bn = sub nsw i64 0, %i.bm
  %i.bo = getelementptr inbounds i8, ptr %i.ap, i64 %i.bn ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !31
  %i.bq = icmp ugt i16 %i.bp, 8
  br i1 %i.bq, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i63, label %_ZNK3org6apache5arrow7flatbuf12SparseTensor5shapeEv.exit65

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i63: ; preds = %bb.d
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i64 = icmp eq i16 %i.bs, 0
  br i1 %.not.i.i.i64, label %_ZNK3org6apache5arrow7flatbuf12SparseTensor5shapeEv.exit65, label %bb.e

bb.e:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i63
  %i.bt = zext i16 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bw
  br label %_ZNK3org6apache5arrow7flatbuf12SparseTensor5shapeEv.exit65

_ZNK3org6apache5arrow7flatbuf12SparseTensor5shapeEv.exit65: ; preds = %bb.d, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i63, %bb.e
  %i.by = phi ptr [ %i.bx, %bb.e ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i63 ], [ null, %bb.d ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = shl i64 %indvars.iv, 2
  %i.cb = and i64 %i.ca, 4294967292
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cb ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ce ; 6 uses
  br i1 %i.bc, label %bb.f, label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

bb.f:                                             ; preds = %_ZNK3org6apache5arrow7flatbuf12SparseTensor5shapeEv.exit65
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3
  %i.ch = sext i32 %i.cg to i64
  %i.ci = sub nsw i64 0, %i.ch
  %i.cj = getelementptr inbounds i8, ptr %i.cf, i64 %i.ci ; 2 uses
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !31
  %i.cl = icmp ugt i16 %i.ck, 4
  br i1 %i.cl, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, label %_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i: ; preds = %bb.f
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !31 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cn, 0
  br i1 %.not.i.i, label %_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i
  %i.co = zext i16 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !440
  br label %_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit

_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit: ; preds = %bb.f, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, %bb.g
  %i.cr = phi i64 [ %i.cq, %bb.g ], [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.cs = load ptr, ptr %i.bf, align 8, !tbaa !488 ; 4 uses
  %i.ct = load ptr, ptr %i.bg, align 8, !tbaa !736
  %.not.i.i66 = icmp eq ptr %i.cs, %i.ct
  br i1 %.not.i.i66, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !440
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %i.cu, ptr %i.bf, align 8, !tbaa !488
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

bb.i:                                             ; preds = %_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit
  %i.cv = load ptr, ptr %3, align 8, !tbaa !490   ; 4 uses
  %i.cw = ptrtoint ptr %i.cs to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx                    ; 6 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775800
  br i1 %i.cz, label %bb.j, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #25
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.da = ashr exact i64 %i.cy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.da, i64 1)
  %i.db = add nsw i64 %.sroa.speculated.i.i.i.i, %i.da ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.da
  %i.dd = call i64 @llvm.umin.i64(i64 %i.db, i64 1152921504606846975)
  %i.de = select i1 %i.dc, i64 1152921504606846975, i64 %i.dd ; 3 uses
  %.not.i.i.i.i67 = icmp ne i64 %i.de, 0
  call void @llvm.assume(i1 %.not.i.i.i.i67)
  %i.df = shl nuw nsw i64 %i.de, 3
  %i.dg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #23 ; 4 uses
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 %i.cy ; 2 uses
  store i64 %i.cr, ptr %i.dh, align 8, !tbaa !440
  %i.di = icmp sgt i64 %i.cy, 0
  br i1 %i.di, label %bb.k, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
end_hunk_1
