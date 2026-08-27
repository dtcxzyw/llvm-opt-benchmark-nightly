Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PublicsStream?download=true
inline.NumInlined: 1503
inline.NumDeleted: 525
begin_hunk_0_@_ZN4llvm18BinaryStreamReader9readArrayINS_3pdb13SectionOffsetEEENS_5ErrorERNS_16FixedStreamArrayIT_EEj:bb.a
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !14 ; 8 uses
  %.not.i.i.i33 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i33, label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit37, label %bb.aj

bb.aj:                                            ; preds = %.critedge
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 4 uses
  %i.cv = load atomic i64, ptr %i.cu acquire, align 8 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 4294967297
  %i.cx = trunc i64 %i.cv to i32                  ; 2 uses
  br i1 %i.cw, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.cu, align 8, !tbaa !17
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  store i32 0, ptr %i.cy, align 4, !tbaa !19
  %i.cz = load ptr, ptr %i.ct, align 8, !tbaa !20
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #16, !inline_history !117
  %i.dc = load ptr, ptr %i.ct, align 8, !tbaa !20
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #16, !inline_history !117
  br label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit37

bb.al:                                            ; preds = %bb.aj
  %i.df = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i34 = icmp eq i8 %i.df, 0
  br i1 %.not.i.i.i.i34, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dg = add nsw i32 %i.cx, -1
  store i32 %i.dg, ptr %i.cu, align 8, !tbaa !24
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i35

bb.an:                                            ; preds = %bb.al
  %i.dh = atomicrmw volatile add ptr %i.cu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i35

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i35: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i36 = phi i32 [ %i.cx, %bb.am ], [ %i.dh, %bb.an ]
  %i.di = icmp eq i32 %.0.i.i.i.i.i36, 1
  br i1 %i.di, label %bb.ao, label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit37, !prof !25

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i35
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #16
  br label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit37

_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit37: ; preds = %.critedge, %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i35, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit37, %bb.j, %_ZN4llvm5ErrorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm10make_errorINS_3pdb8RawErrorEJNS1_14raw_error_codeERA30_KcEEENS_5ErrorEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(30) %2) local_unnamed_addr #1 comdat {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17, !noalias !125 ; 3 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !105, !noalias !125
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm3pdb14RawErrCategoryEv() #16, !noalias !125
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !noalias !125
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.d, align 1, !tbaa !67, !noalias !125
  %i.e = load i8, ptr %2, align 1, !tbaa !23, !noalias !125
  %.not.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4llvm3pdb8RawErrorESt14default_deleteIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %2, ptr %3, align 8, !tbaa !23, !noalias !125
  br label %_ZNSt10unique_ptrIN4llvm3pdb8RawErrorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm3pdb8RawErrorESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %storemerge.i.i = phi i8 [ 3, %bb.b ], [ 1, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 %storemerge.i.i, ptr %i.f, align 8, !tbaa !70, !noalias !125
  call void @_ZN4llvm11StringErrorC2ESt10error_codeRKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(57) %i.a, i32 %i.b, ptr nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(34) %3) #16, !noalias !125
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm3pdb8RawErrorE, i64 16), ptr %i.a, align 8, !tbaa !20, !noalias !125
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !125
  store ptr %i.a, ptr %0, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm10make_errorINS_3pdb8RawErrorEJNS1_14raw_error_codeERA26_KcEEENS_5ErrorEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(26) %2) local_unnamed_addr #1 comdat {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17, !noalias !128 ; 3 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !105, !noalias !128
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm3pdb14RawErrCategoryEv() #16, !noalias !128
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !noalias !128
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.d, align 1, !tbaa !67, !noalias !128
  %i.e = load i8, ptr %2, align 1, !tbaa !23, !noalias !128
  %.not.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4llvm3pdb8RawErrorESt14default_deleteIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %2, ptr %3, align 8, !tbaa !23, !noalias !128
  br label %_ZNSt10unique_ptrIN4llvm3pdb8RawErrorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm3pdb8RawErrorESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %storemerge.i.i = phi i8 [ 3, %bb.b ], [ 1, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 %storemerge.i.i, ptr %i.f, align 8, !tbaa !70, !noalias !128
  call void @_ZN4llvm11StringErrorC2ESt10error_codeRKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(57) %i.a, i32 %i.b, ptr nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(34) %3) #16, !noalias !128
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm3pdb8RawErrorE, i64 16), ptr %i.a, align 8, !tbaa !20, !noalias !128
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !128
  store ptr %i.a, ptr %0, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm18BinaryStreamReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm18BinaryStreamReaderE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !19
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !117
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !117
  br label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !24
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit, !prof !25

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16
  br label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit

_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm3pdb13PublicsStream13findByAddressERKNS0_12SymbolStreamEtj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional.6") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16704) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, i16 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %6 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %7 = alloca %class.anon.52, align 1             ; 3 uses
  %8 = alloca %"class.llvm::codeview::PublicSym32", align 8 ; 11 uses
  %9 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %10 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %11 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %12 = alloca %class.anon.52, align 1            ; 3 uses
  %13 = alloca %"class.llvm::ArrayRef", align 8   ; 5 uses
  %14 = alloca %"class.llvm::Error", align 8      ; 6 uses
  %15 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %16 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %17 = alloca %class.anon.52, align 1            ; 3 uses
  %18 = alloca %"class.llvm::codeview::PublicSym32", align 8 ; 9 uses
  %19 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %20 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %21 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %22 = alloca %class.anon.52, align 1            ; 3 uses
  %23 = alloca %"class.llvm::ArrayRef", align 8   ; 5 uses
  %24 = alloca %"class.llvm::Error", align 8      ; 6 uses
  %.sroa.9.i.i.i = alloca { ptr, i64, %"class.std::optional" }, align 8 ; 7 uses
  %25 = alloca %"class.llvm::FixedStreamArrayIterator", align 8 ; 9 uses
  %.sroa.12.i.i = alloca { ptr, i64, %"class.std::optional" }, align 8 ; 8 uses
  %.sroa.517.i = alloca { ptr, i64, %"class.std::optional" }, align 8 ; 4 uses
  %26 = alloca %"class.llvm::FixedStreamArrayIterator", align 8 ; 10 uses
  %.sroa.639 = alloca <{ [2 x i8], %"class.llvm::StringRef", i32, [4 x i8] }>, align 2 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16552
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.517.i)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109, !noalias !134 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16560 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14, !noalias !134 ; 44 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null ; 11 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm9adl_beginIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23, !noalias !134
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !24, !noalias !134
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !24, !noalias !134
  br label %_ZN4llvm9adl_beginIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4, !noalias !134 ; 0 uses
  br label %_ZN4llvm9adl_beginIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i

_ZN4llvm9adl_beginIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16568 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.517.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !131
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16592 ; 3 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !11, !range !53, !noalias !141, !noundef !54
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm9adl_beginIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16584
  %i.o = load i64, ptr %i.n, align 8, !tbaa !55, !noalias !141
  br label %_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE4sizeEv.exit.i.i.i.i

bb.f:                                             ; preds = %_ZN4llvm9adl_beginIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !56, !noalias !141 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE4sizeEv.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20, !noalias !141
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !noalias !141
  %i.t = tail call noundef i64 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p) #16, !noalias !141, !inline_history !148
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16576
  %i.v = load i64, ptr %i.u, align 8, !tbaa !58, !noalias !141
  %i.w = sub i64 %i.t, %i.v
  br label %_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE4sizeEv.exit.i.i.i.i

_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE4sizeEv.exit.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i64 [ %i.o, %bb.e ], [ %i.w, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !14, !noalias !141 ; 32 uses
  %.not.i.i.i.i.i.i.i.i.i.i4.i = icmp eq ptr %i.x, null ; 7 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i4.i, label %_ZN4llvm7adl_endIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEDTclsr10adl_detailE8end_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE4sizeEv.exit.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23, !noalias !141
  %.not.i.i.i.i.i.i.i.i.i.i.i5.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i5.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !24, !noalias !141
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !24, !noalias !141
  br label %_ZN4llvm7adl_endIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEDTclsr10adl_detailE8end_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ac = atomicrmw volatile add ptr %i.y, i32 1 acq_rel, align 4, !noalias !141 ; 0 uses
  br label %_ZN4llvm7adl_endIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEDTclsr10adl_detailE8end_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i

_ZN4llvm7adl_endIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEDTclsr10adl_detailE8end_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i: ; preds = %bb.j, %bb.i, %_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE4sizeEv.exit.i.i.i.i
  %i.ad = lshr i64 %.0.i.i.i.i.i.i, 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm7adl_endIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEDTclsr10adl_detailE8end_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23, !noalias !152
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !24, !noalias !152
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.ae, align 4, !tbaa !24, !noalias !152
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.ai = atomicrmw volatile add ptr %i.ae, i32 1 acq_rel, align 4, !noalias !152 ; 0 uses
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit.i.i

_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit.i.i: ; preds = %bb.m, %bb.l, %_ZN4llvm7adl_endIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEDTclsr10adl_detailE8end_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.517.i, i64 32, i1 false), !noalias !152
  br i1 %.not.i.i.i.i.i.i.i.i.i.i4.i, label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit5.i.i, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23, !noalias !152
  %.not.i.i.i.i.i.i.i.i4.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i.i.i4.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !24, !noalias !152
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.aj, align 4, !tbaa !24, !noalias !152
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit5.i.i

bb.p:                                             ; preds = %bb.n
  %i.an = atomicrmw volatile add ptr %i.aj, i32 1 acq_rel, align 4, !noalias !152 ; 0 uses
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit5.i.i

_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit5.i.i: ; preds = %bb.p, %bb.o, %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  call void @llvm.lifetime.start.p0(ptr nonnull %25), !noalias !152
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit5.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23, !noalias !156
  %.not.i.i.i.i.i.i.i.i.i.i6.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i6.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !24, !noalias !156
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ao, align 4, !tbaa !24, !noalias !156
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.as = atomicrmw volatile add ptr %i.ao, i32 1 acq_rel, align 4, !noalias !156 ; 0 uses
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit.i.i.i

_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit.i.i.i: ; preds = %bb.s, %bb.r, %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit5.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i4.i, label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit8.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23, !noalias !156
  %.not.i.i.i.i.i.i.i.i7.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i.i.i.i.i.i7.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = load i32, ptr %i.at, align 4, !tbaa !24, !noalias !156
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.at, align 4, !tbaa !24, !noalias !156
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit8.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.ax = atomicrmw volatile add ptr %i.at, i32 1 acq_rel, align 4, !noalias !156 ; 0 uses
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit8.i.i.i

_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit8.i.i.i: ; preds = %bb.v, %bb.u, %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit11.i.i.i, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit8.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.az = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23, !noalias !156
  %.not.i.i.i.i.i.i.i.i10.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not.i.i.i.i.i.i.i.i10.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !24, !noalias !156
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %i.ay, align 4, !tbaa !24, !noalias !156
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit11.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.bc = atomicrmw volatile add ptr %i.ay, i32 1 acq_rel, align 4, !noalias !156 ; 0 uses
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit11.i.i.i

_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit11.i.i.i: ; preds = %bb.y, %bb.x, %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit8.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i4.i, label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit11.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 7 uses
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23, !noalias !156
  %.not.i.i.i.i.i.i.i.i13.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i.i.i.i.i.i13.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !24, !noalias !156
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.bd, align 4, !tbaa !24, !noalias !156
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.bh = atomicrmw volatile add ptr %i.bd, i32 1 acq_rel, align 4, !noalias !156 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bi = load atomic i64, ptr %i.bd acquire, align 8, !noalias !156 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 4294967297
  %i.bk = trunc i64 %i.bi to i32                  ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK4llvm3pdb13PublicsStream13findByAddressERKNS0_12SymbolStreamEtj:bb.a
  %i.jy = atomicrmw volatile add ptr %i.ju, i32 1 acq_rel, align 4, !noalias !180 ; 0 uses
  br label %_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE3endEv.exit

_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE3endEv.exit: ; preds = %_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE4sizeEv.exit.i, %bb.df, %bb.dg
  %i.jz = lshr i64 %.0.i.i.i, 2
  %i.ka = trunc i64 %i.jz to i32
  %.sroa.555.16.copyload = load ptr, ptr %i.j, align 8
  %.sroa.7.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16576
  %.sroa.7.16.copyload = load i64, ptr %.sroa.7.16..sroa_idx, align 8
  %i.kb = load i32, ptr %i.gy, align 8, !tbaa !158
  %i.kc = icmp eq i32 %i.kb, %i.ka
  %i.kd = load ptr, ptr %i.gx, align 8
  %.not.i.i.i6 = icmp eq ptr %i.kd, %.sroa.555.16.copyload
  %or.cond = select i1 %i.kc, i1 %.not.i.i.i6, i1 false
  %i.ke = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.kf = load i64, ptr %i.ke, align 8
  %.not7.i.i.i = icmp eq i64 %i.kf, %.sroa.7.16.copyload
  %or.cond79 = select i1 %or.cond, i1 %.not7.i.i.i, i1 false
  br i1 %or.cond79, label %bb.dh, label %_ZNK4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEeqERKS6_.exit

bb.dh:                                            ; preds = %_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE3endEv.exit
  %.sroa.957.16.copyload = load i8, ptr %i.k, align 8
  %.sroa.856.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16584
  %.sroa.856.16.copyload = load i64, ptr %.sroa.856.16..sroa_idx, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.kh = getelementptr inbounds nuw i8, ptr %26, i64 40
  %i.ki = load i8, ptr %i.kh, align 8, !tbaa !11, !range !53, !noundef !54 ; 2 uses
  %i.kj = trunc nuw i8 %i.ki to i1
  %i.kk = icmp ne i8 %i.ki, %.sroa.957.16.copyload
  %i.kl = load i64, ptr %i.kg, align 8
  %i.km = icmp ne i64 %i.kl, %.sroa.856.16.copyload
  %i.kn = select i1 %i.kj, i1 %i.km, i1 false
  %i.ko = select i1 %i.kk, i1 true, i1 %i.kn
  %not..i.i.i = xor i1 %i.ko, true
  br label %_ZNK4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEeqERKS6_.exit

_ZNK4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEeqERKS6_.exit: ; preds = %_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE3endEv.exit, %bb.dh
  %i.kp = phi i1 [ false, %_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE3endEv.exit ], [ %not..i.i.i, %bb.dh ]
  br i1 %.not.i.i.i.i.i.i.i.i5, label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit, label %bb.di

bb.di:                                            ; preds = %_ZNK4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEeqERKS6_.exit
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jt, i64 8 ; 4 uses
  %i.kr = load atomic i64, ptr %i.kq acquire, align 8 ; 2 uses
  %i.ks = icmp eq i64 %i.kr, 4294967297
  %i.kt = trunc i64 %i.kr to i32                  ; 2 uses
  br i1 %i.ks, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  store i32 0, ptr %i.kq, align 8, !tbaa !17
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jt, i64 12
  store i32 0, ptr %i.ku, align 4, !tbaa !19
  %i.kv = load ptr, ptr %i.jt, align 8, !tbaa !20
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.kx = load ptr, ptr %i.kw, align 8
  call void %i.kx(ptr noundef nonnull align 8 dereferenceable(16) %i.jt) #16, !inline_history !184
  %i.ky = load ptr, ptr %i.jt, align 8, !tbaa !20
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 24
  %i.la = load ptr, ptr %i.kz, align 8
  call void %i.la(ptr noundef nonnull align 8 dereferenceable(16) %i.jt) #16, !inline_history !184
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit

bb.dk:                                            ; preds = %bb.di
  %i.lb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i8 = icmp eq i8 %i.lb, 0
  br i1 %.not.i.i.i.i.i.i8, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.lc = add nsw i32 %i.kt, -1
  store i32 %i.lc, ptr %i.kq, align 8, !tbaa !24
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.dm:                                            ; preds = %bb.dk
  %i.ld = atomicrmw volatile add ptr %i.kq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.dm, %bb.dl
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.kt, %bb.dl ], [ %i.ld, %bb.dm ]
  %i.le = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.le, label %bb.dn, label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit, !prof !25

bb.dn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jt) #16
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit

_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit: ; preds = %_ZNK4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEeqERKS6_.exit, %bb.dj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.dn
  br i1 %i.kp, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.lf, align 8, !tbaa !185
  br label %_ZN4llvm8ExpectedINS_8codeview11PublicSym32EED2Ev.exit

bb.dp:                                            ; preds = %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit
  %i.lg = load i32, ptr %i.gy, align 8, !tbaa !158
  %i.lh = shl i32 %i.lg, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  %i.li = zext i32 %i.lh to i64
  call void @_ZNK4llvm15BinaryStreamRef9readBytesEmmRNS_8ArrayRefIhEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %14, ptr noundef nonnull align 8 dereferenceable(52) %26, i64 noundef %i.li, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(16) %13) #16
  %i.lj = load ptr, ptr %14, align 8, !tbaa !71   ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %i.lj, null
  br i1 %.not.i.i.i9, label %_ZNK4llvm20iterator_facade_baseINS_24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEESt26random_access_iterator_tagKS6_lPS9_RS9_EptEv.exit, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  store ptr null, ptr %14, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr %i.lj, ptr %11, align 8, !tbaa !71
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %10, ptr nofree noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 1 dereferenceable(1) %12)
  %i.lk = load ptr, ptr %11, align 8, !tbaa !71   ; 3 uses
  %i.ll = icmp eq ptr %i.lk, null
  br i1 %i.ll, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.lm = load ptr, ptr %i.lk, align 8, !tbaa !20
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lo = load ptr, ptr %i.ln, align 8
  call void %i.lo(ptr noundef nonnull align 8 dereferenceable(8) %i.lk) #16, !inline_history !187
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  %.pr.i.i.i = load ptr, ptr %14, align 8, !tbaa !71 ; 3 uses
  %i.lp = icmp eq ptr %.pr.i.i.i, null
  br i1 %i.lp, label %_ZNK4llvm20iterator_facade_baseINS_24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEESt26random_access_iterator_tagKS6_lPS9_RS9_EptEv.exit, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.lq = load ptr, ptr %.pr.i.i.i, align 8, !tbaa !20
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8
  call void %i.ls(ptr noundef nonnull align 8 dereferenceable(8) %.pr.i.i.i) #16, !inline_history !188
  br label %_ZNK4llvm20iterator_facade_baseINS_24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEESt26random_access_iterator_tagKS6_lPS9_RS9_EptEv.exit

_ZNK4llvm20iterator_facade_baseINS_24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEESt26random_access_iterator_tagKS6_lPS9_RS9_EptEv.exit: ; preds = %bb.dp, %bb.ds, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  %i.lt = load ptr, ptr %13, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  %.0.copyload.i.i = load i32, ptr %i.lt, align 1
  %i.lu = call { ptr, i64 } @_ZNK4llvm3pdb12SymbolStream10readRecordEj(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %.0.copyload.i.i) #16 ; 2 uses
  %i.lv = extractvalue { ptr, i64 } %i.lu, 0      ; 2 uses
  %i.lw = extractvalue { ptr, i64 } %i.lu, 1      ; 2 uses
  %i.lx = icmp ult i64 %i.lw, 4
  br i1 %i.lx, label %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit.thread, label %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit

_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit: ; preds = %_ZNK4llvm20iterator_facade_baseINS_24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEESt26random_access_iterator_tagKS6_lPS9_RS9_EptEv.exit
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 2
  %.0.copyload.i.i.i.i = load i16, ptr %i.ly, align 1
  %.not = icmp eq i16 %.0.copyload.i.i.i.i, 4366
  br i1 %.not, label %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit.i, label %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit.thread

_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit.thread: ; preds = %_ZNK4llvm20iterator_facade_baseINS_24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEESt26random_access_iterator_tagKS6_lPS9_RS9_EptEv.exit, %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.lz, align 8, !tbaa !185
  br label %_ZN4llvm8ExpectedINS_8codeview11PublicSym32EED2Ev.exit

_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit.i: ; preds = %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16, !noalias !189
  store i16 4366, ptr %8, align 8, !tbaa !165, !noalias !189
  %i.ma = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 0, ptr %i.ma, align 4, !tbaa !168, !noalias !189
  %i.mb = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 0, ptr %i.mb, align 8, !tbaa !173, !noalias !189
  %i.mc = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  store i16 0, ptr %i.mc, align 4, !tbaa !174, !noalias !189
  %i.md = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.md, i8 0, i64 20, i1 false), !noalias !189
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16, !noalias !189
  call void @_ZN4llvm8codeview18SymbolDeserializer13deserializeAsINS0_11PublicSym32EEENS_5ErrorENS0_8CVRecordINS0_10SymbolKindEEERT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %9, ptr nonnull %i.lv, i64 %i.lw, ptr noundef nonnull align 8 dereferenceable(36) %8), !noalias !189
  %i.me = load ptr, ptr %9, align 8, !tbaa !71, !noalias !189 ; 2 uses
  %.not.i = icmp eq ptr %i.me, null
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16, !noalias !189
  br i1 %.not.i, label %bb.dv, label %_ZN4llvm8ExpectedINS_8codeview11PublicSym32EE9takeErrorEv.exit

_ZN4llvm8ExpectedINS_8codeview11PublicSym32EE9takeErrorEv.exit: ; preds = %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16, !noalias !189
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.me, ptr %6, align 8, !tbaa !71
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %5, ptr nofree noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  %i.mf = load ptr, ptr %6, align 8, !tbaa !71    ; 3 uses
  %i.mg = icmp eq ptr %i.mf, null
  br i1 %i.mg, label %bb.eh, label %bb.du

bb.du:                                            ; preds = %_ZN4llvm8ExpectedINS_8codeview11PublicSym32EE9takeErrorEv.exit
  %i.mh = load ptr, ptr %i.mf, align 8, !tbaa !20
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %i.mj = load ptr, ptr %i.mi, align 8
  call void %i.mj(ptr noundef nonnull align 8 dereferenceable(8) %i.mf) #16, !inline_history !192
  br label %bb.eh

bb.dv:                                            ; preds = %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit.i
  %.sroa.041.0.copyload = load ptr, ptr %8, align 8
  %.sroa.844.0.copyload = load i32, ptr %i.mb, align 8
  %.sroa.9.0.copyload = load i16, ptr %i.mc, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 14
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.639)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.sroa.639, ptr noundef nonnull align 2 dereferenceable(26) %.sroa.10.0..sroa_idx, i64 26, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16, !noalias !189
  %i.mk = icmp ne i16 %3, %.sroa.9.0.copyload
  %i.ml = icmp ne i32 %4, %.sroa.844.0.copyload
  %.not3.i = select i1 %i.mk, i1 true, i1 %i.ml
  br i1 %.not3.i, label %bb.eg, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.mm = load ptr, ptr %i.c, align 8, !tbaa !14, !noalias !193 ; 8 uses
  %.not.i.i.i.i.i.i.i.i14 = icmp eq ptr %i.mm, null
  br i1 %.not.i.i.i.i.i.i.i.i14, label %_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE5beginEv.exit, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8 ; 7 uses
  %i.mo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23, !noalias !193
  %.not.i.i.i.i.i.i.i.i.i15 = icmp eq i8 %i.mo, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i15, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.mp = load i32, ptr %i.mn, align 4, !tbaa !24, !noalias !193
  %i.mq = add nsw i32 %i.mp, 1
  store i32 %i.mq, ptr %i.mn, align 4, !tbaa !24, !noalias !193
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dx
  %i.mr = atomicrmw volatile add ptr %i.mn, i32 1 acq_rel, align 4, !noalias !193 ; 0 uses
  br label %bb.ea

_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE5beginEv.exit: ; preds = %bb.dw
  %i.ms = load i32, ptr %i.gy, align 8, !tbaa !158
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit20

bb.ea:                                            ; preds = %bb.dy, %bb.dz
  %i.mt = load i32, ptr %i.gy, align 8, !tbaa !158 ; 3 uses
  %i.mu = load atomic i64, ptr %i.mn acquire, align 8 ; 2 uses
  %i.mv = icmp eq i64 %i.mu, 4294967297
  %i.mw = trunc i64 %i.mu to i32                  ; 2 uses
  br i1 %i.mv, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  store i32 0, ptr %i.mn, align 8, !tbaa !17
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mm, i64 12
  store i32 0, ptr %i.mx, align 4, !tbaa !19
  %i.my = load ptr, ptr %i.mm, align 8, !tbaa !20
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  %i.na = load ptr, ptr %i.mz, align 8
  call void %i.na(ptr noundef nonnull align 8 dereferenceable(16) %i.mm) #16, !inline_history !184
  %i.nb = load ptr, ptr %i.mm, align 8, !tbaa !20
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 24
  %i.nd = load ptr, ptr %i.nc, align 8
  call void %i.nd(ptr noundef nonnull align 8 dereferenceable(16) %i.mm) #16, !inline_history !184
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit20

bb.ec:                                            ; preds = %bb.ea
  %i.ne = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i17 = icmp eq i8 %i.ne, 0
  br i1 %.not.i.i.i.i.i.i17, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.nf = add nsw i32 %i.mw, -1
  store i32 %i.nf, ptr %i.mn, align 8, !tbaa !24
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i18

bb.ee:                                            ; preds = %bb.ec
  %i.ng = atomicrmw volatile add ptr %i.mn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i18

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i18: ; preds = %bb.ee, %bb.ed
  %.0.i.i.i.i.i.i.i19 = phi i32 [ %i.mw, %bb.ed ], [ %i.ng, %bb.ee ]
  %i.nh = icmp eq i32 %.0.i.i.i.i.i.i.i19, 1
  br i1 %i.nh, label %bb.ef, label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit20, !prof !25

bb.ef:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i18
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mm) #16
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit20

_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit20: ; preds = %_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE5beginEv.exit, %bb.eb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i18, %bb.ef
  %.in = phi i32 [ %i.ms, %_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE5beginEv.exit ], [ %i.mt, %bb.eb ], [ %i.mt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i18 ], [ %i.mt, %bb.ef ]
  %i.ni = zext i32 %.in to i64
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.sroa.0.sroa.6.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(26) %.sroa.639, i64 26, i1 false)
  store ptr %.sroa.041.0.copyload, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %4, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %3, ptr %.sroa.0.sroa.5.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ni, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.eg

bb.eg:                                            ; preds = %bb.dv, %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit20
  %.sink = phi i8 [ 1, %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit20 ], [ 0, %bb.dv ]
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink, ptr %i.nj, align 8, !tbaa !185
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.639)
  br label %_ZN4llvm8ExpectedINS_8codeview11PublicSym32EED2Ev.exit

bb.eh:                                            ; preds = %_ZN4llvm8ExpectedINS_8codeview11PublicSym32EE9takeErrorEv.exit, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.nk, align 8, !tbaa !185
  br label %_ZN4llvm8ExpectedINS_8codeview11PublicSym32EED2Ev.exit

_ZN4llvm8ExpectedINS_8codeview11PublicSym32EED2Ev.exit: ; preds = %bb.eg, %bb.eh, %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit.thread, %bb.do
  %i.nl = load ptr, ptr %i.gr, align 8, !tbaa !14 ; 8 uses
  %.not.i.i.i.i.i22 = icmp eq ptr %i.nl, null
  br i1 %.not.i.i.i.i.i22, label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit26, label %bb.ei

bb.ei:                                            ; preds = %_ZN4llvm8ExpectedINS_8codeview11PublicSym32EED2Ev.exit
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 8 ; 4 uses
  %i.nn = load atomic i64, ptr %i.nm acquire, align 8 ; 2 uses
  %i.no = icmp eq i64 %i.nn, 4294967297
  %i.np = trunc i64 %i.nn to i32                  ; 2 uses
  br i1 %i.no, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  store i32 0, ptr %i.nm, align 8, !tbaa !17
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nl, i64 12
  store i32 0, ptr %i.nq, align 4, !tbaa !19
  %i.nr = load ptr, ptr %i.nl, align 8, !tbaa !20
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.nt = load ptr, ptr %i.ns, align 8
  call void %i.nt(ptr noundef nonnull align 8 dereferenceable(16) %i.nl) #16, !inline_history !184
  %i.nu = load ptr, ptr %i.nl, align 8, !tbaa !20
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 24
  %i.nw = load ptr, ptr %i.nv, align 8
  call void %i.nw(ptr noundef nonnull align 8 dereferenceable(16) %i.nl) #16, !inline_history !184
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit26

bb.ek:                                            ; preds = %bb.ei
  %i.nx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i23 = icmp eq i8 %i.nx, 0
  br i1 %.not.i.i.i.i.i.i23, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.ny = add nsw i32 %i.np, -1
  store i32 %i.ny, ptr %i.nm, align 8, !tbaa !24
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i24

bb.em:                                            ; preds = %bb.ek
  %i.nz = atomicrmw volatile add ptr %i.nm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i24

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i24: ; preds = %bb.em, %bb.el
  %.0.i.i.i.i.i.i.i25 = phi i32 [ %i.np, %bb.el ], [ %i.nz, %bb.em ]
  %i.oa = icmp eq i32 %.0.i.i.i.i.i.i.i25, 1
  br i1 %i.oa, label %bb.en, label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit26, !prof !25

bb.en:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i24
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nl) #16
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit26

_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit26: ; preds = %_ZN4llvm8ExpectedINS_8codeview11PublicSym32EED2Ev.exit, %bb.ej, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i24, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #16
  ret void
}

declare { ptr, i64 } @_ZNK4llvm3pdb12SymbolStream10readRecordEj(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #16, !inline_history !196
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !24   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !24
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #16, !inline_history !196
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9ErrorList4joinENS_5ErrorES1_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr nofree noundef align 8 dereferenceable(8) %1, ptr nofree noundef align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !71     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = load ptr, ptr %2, align 8, !tbaa !71     ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !71
  store ptr null, ptr %2, align 8, !tbaa !71
  br label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit31

bb.c:                                             ; preds = %bb.a
  %.not109 = icmp eq ptr %i.b, null
  br i1 %.not109, label %bb.d, label %_ZNK4llvm5Error3isAINS_9ErrorListEEEbv.exit

bb.d:                                             ; preds = %bb.c
  store ptr %i.a, ptr %0, align 8, !tbaa !71
  store ptr null, ptr %1, align 8, !tbaa !71
  br label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit31

_ZNK4llvm5Error3isAINS_9ErrorListEEEbv.exit:      ; preds = %bb.c
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @_ZN4llvm9ErrorList2IDE) #16, !inline_history !197
  br i1 %i.f, label %bb.e, label %bb.n

bb.e:                                             ; preds = %_ZNK4llvm5Error3isAINS_9ErrorListEEEbv.exit
  %i.g = load ptr, ptr %1, align 8, !tbaa !71     ; 6 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !71     ; 3 uses
  %.not.i8 = icmp eq ptr %i.h, null
  br i1 %.not.i8, label %_ZNK4llvm5Error3isAINS_9ErrorListEEEbv.exit9.thread, label %_ZNK4llvm5Error3isAINS_9ErrorListEEEbv.exit9

_ZNK4llvm5Error3isAINS_9ErrorListEEEbv.exit9:     ; preds = %bb.e
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @_ZN4llvm9ErrorList2IDE) #16, !inline_history !197
  %.pre = load ptr, ptr %2, align 8, !tbaa !71, !noalias !54 ; 6 uses
  br i1 %i.l, label %bb.f, label %_ZNK4llvm5Error3isAINS_9ErrorListEEEbv.exit9.thread

bb.f:                                             ; preds = %_ZNK4llvm5Error3isAINS_9ErrorListEEEbv.exit9
  store ptr null, ptr %2, align 8, !tbaa !71, !noalias !198
  %i.m = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !201  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !201  ; 2 uses
  %.not110113 = icmp eq ptr %i.n, %i.p
  br i1 %.not110113, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.g

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %.not.i10 = icmp eq ptr %.pre, null
  br i1 %.not.i10, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i: ; preds = %bb.f, %._crit_edge
  %i.t = load ptr, ptr %.pre, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %.pre) #16, !inline_history !203
  br label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %.sroa.0104.0114 = phi ptr [ %i.n, %.lr.ph ], [ %i.aa, %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit ] ; 4 uses
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !204  ; 4 uses
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !206
  %.not.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load i64, ptr %.sroa.0104.0114, align 8, !tbaa !207
  store i64 %i.y, ptr %i.w, align 8, !tbaa !207
  store ptr null, ptr %.sroa.0104.0114, align 8, !tbaa !207
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.z, ptr %i.q, align 8, !tbaa !204
  br label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.i:                                             ; preds = %bb.g
  tail call void @_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr %i.w, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0104.0114)
  br label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.h, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0104.0114, i64 8 ; 2 uses
end_hunk_1
