Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PublicsStream?download=true
inline.NumInlined: 1503
inline.NumDeleted: 525
begin_hunk_0_@_ZN4llvm18BinaryStreamReader9readArrayINS_3pdb13SectionOffsetEEENS_5ErrorERNS_16FixedStreamArrayIT_EEj:bb.a
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !24 ; 8 uses
  %.not.i.i.i33 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i33, label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit37, label %bb.aj

bb.aj:                                            ; preds = %.critedge
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 4 uses
  %i.cv = load atomic i64, ptr %i.cu acquire, align 8 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 4294967297
  %i.cx = trunc i64 %i.cv to i32                  ; 2 uses
  br i1 %i.cw, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.cu, align 8, !tbaa !26
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  store i32 0, ptr %i.cy, align 4, !tbaa !27
  %i.cz = load ptr, ptr %i.ct, align 8, !tbaa !29
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #16, !inline_history !4
  %i.dc = load ptr, ptr %i.ct, align 8, !tbaa !29
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #16, !inline_history !4
  br label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit37

bb.al:                                            ; preds = %bb.aj
  %i.df = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i34 = icmp eq i8 %i.df, 0
  br i1 %.not.i.i.i.i34, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dg = add nsw i32 %i.cx, -1
  store i32 %i.dg, ptr %i.cu, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i35

bb.an:                                            ; preds = %bb.al
  %i.dh = atomicrmw volatile add ptr %i.cu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i35

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i35: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i36 = phi i32 [ %i.cx, %bb.am ], [ %i.dh, %bb.an ]
  %i.di = icmp eq i32 %.0.i.i.i.i.i36, 1
  br i1 %i.di, label %bb.ao, label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit37, !prof !32

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
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17, !noalias !195 ; 3 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !75, !noalias !195
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm3pdb14RawErrCategoryEv() #16, !noalias !195
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !noalias !195
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.d, align 1, !tbaa !66, !noalias !195
  %i.e = load i8, ptr %2, align 1, !tbaa !30, !noalias !195
  %.not.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4llvm3pdb8RawErrorESt14default_deleteIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %2, ptr %3, align 8, !tbaa !30, !noalias !195
  br label %_ZNSt10unique_ptrIN4llvm3pdb8RawErrorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm3pdb8RawErrorESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %storemerge.i.i = phi i8 [ 3, %bb.b ], [ 1, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 %storemerge.i.i, ptr %i.f, align 8, !tbaa !67, !noalias !195
  call void @_ZN4llvm11StringErrorC2ESt10error_codeRKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(57) %i.a, i32 %i.b, ptr nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(34) %3) #16, !noalias !195
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm3pdb8RawErrorE, i64 16), ptr %i.a, align 8, !tbaa !29, !noalias !195
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !195
  store ptr %i.a, ptr %0, align 8, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm10make_errorINS_3pdb8RawErrorEJNS1_14raw_error_codeERA26_KcEEENS_5ErrorEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(26) %2) local_unnamed_addr #1 comdat {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17, !noalias !198 ; 3 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !75, !noalias !198
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm3pdb14RawErrCategoryEv() #16, !noalias !198
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !noalias !198
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.d, align 1, !tbaa !66, !noalias !198
  %i.e = load i8, ptr %2, align 1, !tbaa !30, !noalias !198
  %.not.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4llvm3pdb8RawErrorESt14default_deleteIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %2, ptr %3, align 8, !tbaa !30, !noalias !198
  br label %_ZNSt10unique_ptrIN4llvm3pdb8RawErrorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm3pdb8RawErrorESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %storemerge.i.i = phi i8 [ 3, %bb.b ], [ 1, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 %storemerge.i.i, ptr %i.f, align 8, !tbaa !67, !noalias !198
  call void @_ZN4llvm11StringErrorC2ESt10error_codeRKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(57) %i.a, i32 %i.b, ptr nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(34) %3) #16, !noalias !198
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm3pdb8RawErrorE, i64 16), ptr %i.a, align 8, !tbaa !29, !noalias !198
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !198
  store ptr %i.a, ptr %0, align 8, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm18BinaryStreamReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm18BinaryStreamReaderE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !27
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !4
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !4
  br label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit, !prof !32

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.517.i)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77, !noalias !239 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16560 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24, !noalias !239 ; 44 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null ; 11 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm9adl_beginIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30, !noalias !239
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !31, !noalias !239
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !31, !noalias !239
  br label %_ZN4llvm9adl_beginIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4, !noalias !239 ; 0 uses
  br label %_ZN4llvm9adl_beginIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i

_ZN4llvm9adl_beginIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16568 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.517.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !238
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16592 ; 3 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !21, !range !57, !noalias !240, !noundef !58
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm9adl_beginIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16584
  %i.o = load i64, ptr %i.n, align 8, !tbaa !59, !noalias !240
  br label %_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE4sizeEv.exit.i.i.i.i

bb.f:                                             ; preds = %_ZN4llvm9adl_beginIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !60, !noalias !240 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE4sizeEv.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !29, !noalias !240
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !noalias !240
  %i.t = tail call noundef i64 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p) #16, !noalias !240, !inline_history !213
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16576
  %i.v = load i64, ptr %i.u, align 8, !tbaa !61, !noalias !240
  %i.w = sub i64 %i.t, %i.v
  br label %_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE4sizeEv.exit.i.i.i.i

_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE4sizeEv.exit.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i64 [ %i.o, %bb.e ], [ %i.w, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !24, !noalias !240 ; 32 uses
  %.not.i.i.i.i.i.i.i.i.i.i4.i = icmp eq ptr %i.x, null ; 7 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i4.i, label %_ZN4llvm7adl_endIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEDTclsr10adl_detailE8end_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE4sizeEv.exit.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30, !noalias !240
  %.not.i.i.i.i.i.i.i.i.i.i.i5.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i5.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !31, !noalias !240
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !31, !noalias !240
  br label %_ZN4llvm7adl_endIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEDTclsr10adl_detailE8end_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ac = atomicrmw volatile add ptr %i.y, i32 1 acq_rel, align 4, !noalias !240 ; 0 uses
  br label %_ZN4llvm7adl_endIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEDTclsr10adl_detailE8end_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i

_ZN4llvm7adl_endIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEDTclsr10adl_detailE8end_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i: ; preds = %bb.j, %bb.i, %_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE4sizeEv.exit.i.i.i.i
  %i.ad = lshr i64 %.0.i.i.i.i.i.i, 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm7adl_endIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEDTclsr10adl_detailE8end_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30, !noalias !242
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !31, !noalias !242
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.ae, align 4, !tbaa !31, !noalias !242
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.ai = atomicrmw volatile add ptr %i.ae, i32 1 acq_rel, align 4, !noalias !242 ; 0 uses
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit.i.i

_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit.i.i: ; preds = %bb.m, %bb.l, %_ZN4llvm7adl_endIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEDTclsr10adl_detailE8end_implclsr3stdE7forwardIT_Efp_EEEOSA_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.517.i, i64 32, i1 false), !noalias !242
  br i1 %.not.i.i.i.i.i.i.i.i.i.i4.i, label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit5.i.i, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30, !noalias !242
  %.not.i.i.i.i.i.i.i.i4.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i.i.i4.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !31, !noalias !242
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.aj, align 4, !tbaa !31, !noalias !242
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit5.i.i

bb.p:                                             ; preds = %bb.n
  %i.an = atomicrmw volatile add ptr %i.aj, i32 1 acq_rel, align 4, !noalias !242 ; 0 uses
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit5.i.i

_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit5.i.i: ; preds = %bb.p, %bb.o, %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  call void @llvm.lifetime.start.p0(ptr nonnull %25), !noalias !242
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit5.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30, !noalias !244
  %.not.i.i.i.i.i.i.i.i.i.i6.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i6.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !31, !noalias !244
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ao, align 4, !tbaa !31, !noalias !244
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.as = atomicrmw volatile add ptr %i.ao, i32 1 acq_rel, align 4, !noalias !244 ; 0 uses
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit.i.i.i

_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit.i.i.i: ; preds = %bb.s, %bb.r, %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit5.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i4.i, label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit8.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30, !noalias !244
  %.not.i.i.i.i.i.i.i.i7.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i.i.i.i.i.i7.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = load i32, ptr %i.at, align 4, !tbaa !31, !noalias !244
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.at, align 4, !tbaa !31, !noalias !244
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit8.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.ax = atomicrmw volatile add ptr %i.at, i32 1 acq_rel, align 4, !noalias !244 ; 0 uses
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit8.i.i.i

_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit8.i.i.i: ; preds = %bb.v, %bb.u, %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit11.i.i.i, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit8.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.az = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30, !noalias !244
  %.not.i.i.i.i.i.i.i.i10.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not.i.i.i.i.i.i.i.i10.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !31, !noalias !244
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %i.ay, align 4, !tbaa !31, !noalias !244
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit11.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.bc = atomicrmw volatile add ptr %i.ay, i32 1 acq_rel, align 4, !noalias !244 ; 0 uses
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit11.i.i.i

_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit11.i.i.i: ; preds = %bb.y, %bb.x, %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit8.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i4.i, label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEC2ERKS6_.exit11.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 7 uses
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30, !noalias !244
  %.not.i.i.i.i.i.i.i.i13.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i.i.i.i.i.i13.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !31, !noalias !244
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.bd, align 4, !tbaa !31, !noalias !244
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.bh = atomicrmw volatile add ptr %i.bd, i32 1 acq_rel, align 4, !noalias !244 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bi = load atomic i64, ptr %i.bd acquire, align 8, !noalias !244 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 4294967297
  %i.bk = trunc i64 %i.bi to i32                  ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK4llvm3pdb13PublicsStream13findByAddressERKNS0_12SymbolStreamEtj:bb.a
bb.cr:                                            ; preds = %bb.cp
  %i.io = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30, !noalias !238
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.io, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ip = add nsw i32 %i.ig, -1
  store i32 %i.ip, ptr %i.id, align 8, !tbaa !31, !noalias !238
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ct:                                            ; preds = %bb.cr
  %i.iq = atomicrmw volatile add ptr %i.id, i32 -1 acq_rel, align 4, !noalias !238
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ct, %bb.cs
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ig, %bb.cs ], [ %i.iq, %bb.ct ]
  %i.ir = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ir, label %bb.cu, label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit.i, !prof !32

bb.cu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #16, !noalias !238
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit.i

_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit.i: ; preds = %bb.cu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.cq, %"_ZSt11lower_boundIN4llvm24FixedStreamArrayIteratorINS0_7support6detail31packed_endian_specific_integralIjLNS0_10endiannessE1ELm1ELm1EEEEESt5tupleIJtjEEZNKS0_3pdb13PublicsStream13findByAddressERKNSA_12SymbolStreamEtjE3$_0ET_SG_SG_RKT0_T1_.exit.i"
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4llvm11lower_boundIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEESt5tupleIJtjEEZNKS_3pdb13PublicsStream13findByAddressERKNSC_12SymbolStreamEtjE3$_0EEDaOT_OT0_T1_.exit", label %bb.cv

bb.cv:                                            ; preds = %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit.i
  %i.is = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.it = load atomic i64, ptr %i.is acquire, align 8, !noalias !238 ; 2 uses
  %i.iu = icmp eq i64 %i.it, 4294967297
  %i.iv = trunc i64 %i.it to i32                  ; 2 uses
  br i1 %i.iu, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  store i32 0, ptr %i.is, align 8, !tbaa !26, !noalias !238
  %i.iw = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.iw, align 4, !tbaa !27, !noalias !238
  %i.ix = load ptr, ptr %i.d, align 8, !tbaa !29, !noalias !238
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.iz = load ptr, ptr %i.iy, align 8, !noalias !238
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #16, !noalias !238, !inline_history !226
  %i.ja = load ptr, ptr %i.d, align 8, !tbaa !29, !noalias !238
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8, !noalias !238
  call void %i.jc(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #16, !noalias !238, !inline_history !226
  br label %"_ZN4llvm11lower_boundIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEESt5tupleIJtjEEZNKS_3pdb13PublicsStream13findByAddressERKNSC_12SymbolStreamEtjE3$_0EEDaOT_OT0_T1_.exit"

bb.cx:                                            ; preds = %bb.cv
  %i.jd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30, !noalias !238
  %.not.i.i.i.i.i.i10.i = icmp eq i8 %i.jd, 0
  br i1 %.not.i.i.i.i.i.i10.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.je = add nsw i32 %i.iv, -1
  store i32 %i.je, ptr %i.is, align 8, !tbaa !31, !noalias !238
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i11.i

bb.cz:                                            ; preds = %bb.cx
  %i.jf = atomicrmw volatile add ptr %i.is, i32 -1 acq_rel, align 4, !noalias !238
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i11.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i11.i: ; preds = %bb.cz, %bb.cy
  %.0.i.i.i.i.i.i.i12.i = phi i32 [ %i.iv, %bb.cy ], [ %i.jf, %bb.cz ]
  %i.jg = icmp eq i32 %.0.i.i.i.i.i.i.i12.i, 1
  br i1 %i.jg, label %bb.da, label %"_ZN4llvm11lower_boundIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEESt5tupleIJtjEEZNKS_3pdb13PublicsStream13findByAddressERKNSC_12SymbolStreamEtjE3$_0EEDaOT_OT0_T1_.exit", !prof !32

bb.da:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i11.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #16, !noalias !238
  br label %"_ZN4llvm11lower_boundIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEESt5tupleIJtjEEZNKS_3pdb13PublicsStream13findByAddressERKNSC_12SymbolStreamEtjE3$_0EEDaOT_OT0_T1_.exit"

"_ZN4llvm11lower_boundIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEESt5tupleIJtjEEZNKS_3pdb13PublicsStream13findByAddressERKNSC_12SymbolStreamEtjE3$_0EEDaOT_OT0_T1_.exit": ; preds = %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit.i, %bb.cw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i11.i, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517.i)
  %i.jh = load i8, ptr %i.k, align 8, !tbaa !21, !range !57, !noalias !252, !noundef !58
  %i.ji = trunc nuw i8 %i.jh to i1
  br i1 %i.ji, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %"_ZN4llvm11lower_boundIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEESt5tupleIJtjEEZNKS_3pdb13PublicsStream13findByAddressERKNSC_12SymbolStreamEtjE3$_0EEDaOT_OT0_T1_.exit"
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 16584
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !59, !noalias !252
  br label %_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE4sizeEv.exit.i

bb.dc:                                            ; preds = %"_ZN4llvm11lower_boundIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEESt5tupleIJtjEEZNKS_3pdb13PublicsStream13findByAddressERKNSC_12SymbolStreamEtjE3$_0EEDaOT_OT0_T1_.exit"
  %i.jl = load ptr, ptr %i.j, align 8, !tbaa !60, !noalias !252 ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.jl, null
  br i1 %.not.i.i.i4, label %_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE4sizeEv.exit.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !29, !noalias !252
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 40
  %i.jo = load ptr, ptr %i.jn, align 8, !noalias !252
  %i.jp = call noundef i64 %i.jo(ptr noundef nonnull align 8 dereferenceable(8) %i.jl) #16, !noalias !252, !inline_history !229
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 16576
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !61, !noalias !252
  %i.js = sub i64 %i.jp, %i.jr
  br label %_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE4sizeEv.exit.i

_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE4sizeEv.exit.i: ; preds = %bb.dd, %bb.dc, %bb.db
  %.0.i.i.i = phi i64 [ %i.jk, %bb.db ], [ %i.js, %bb.dd ], [ 0, %bb.dc ]
  %i.jt = load ptr, ptr %i.c, align 8, !tbaa !24, !noalias !252 ; 9 uses
  %.not.i.i.i.i.i.i.i.i5 = icmp eq ptr %i.jt, null ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i5, label %_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE3endEv.exit, label %bb.de

bb.de:                                            ; preds = %_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE4sizeEv.exit.i
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8 ; 3 uses
  %i.jv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30, !noalias !252
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.jv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.jw = load i32, ptr %i.ju, align 4, !tbaa !31, !noalias !252
  %i.jx = add nsw i32 %i.jw, 1
  store i32 %i.jx, ptr %i.ju, align 4, !tbaa !31, !noalias !252
  br label %_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE3endEv.exit

bb.dg:                                            ; preds = %bb.de
  %i.jy = atomicrmw volatile add ptr %i.ju, i32 1 acq_rel, align 4, !noalias !252 ; 0 uses
  br label %_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE3endEv.exit

_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE3endEv.exit: ; preds = %_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE4sizeEv.exit.i, %bb.df, %bb.dg
  %i.jz = lshr i64 %.0.i.i.i, 2
  %i.ka = trunc i64 %i.jz to i32
  %.sroa.555.16.copyload = load ptr, ptr %i.j, align 8
  %.sroa.7.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16576
  %.sroa.7.16.copyload = load i64, ptr %.sroa.7.16..sroa_idx, align 8
  %i.kb = load i32, ptr %i.gy, align 8, !tbaa !246
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
  %i.ki = load i8, ptr %i.kh, align 8, !tbaa !21, !range !57, !noundef !58 ; 2 uses
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
  store i32 0, ptr %i.kq, align 8, !tbaa !26
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jt, i64 12
  store i32 0, ptr %i.ku, align 4, !tbaa !27
  %i.kv = load ptr, ptr %i.jt, align 8, !tbaa !29
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.kx = load ptr, ptr %i.kw, align 8
  call void %i.kx(ptr noundef nonnull align 8 dereferenceable(16) %i.jt) #16, !inline_history !230
  %i.ky = load ptr, ptr %i.jt, align 8, !tbaa !29
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 24
  %i.la = load ptr, ptr %i.kz, align 8
  call void %i.la(ptr noundef nonnull align 8 dereferenceable(16) %i.jt) #16, !inline_history !230
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit

bb.dk:                                            ; preds = %bb.di
  %i.lb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i.i.i8 = icmp eq i8 %i.lb, 0
  br i1 %.not.i.i.i.i.i.i8, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.lc = add nsw i32 %i.kt, -1
  store i32 %i.lc, ptr %i.kq, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.dm:                                            ; preds = %bb.dk
  %i.ld = atomicrmw volatile add ptr %i.kq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.dm, %bb.dl
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.kt, %bb.dl ], [ %i.ld, %bb.dm ]
  %i.le = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.le, label %bb.dn, label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit, !prof !32

bb.dn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jt) #16
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit

_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit: ; preds = %_ZNK4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEeqERKS6_.exit, %bb.dj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.dn
  br i1 %i.kp, label %27, label %bb.do

27:                                               ; preds = %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %28, align 8, !tbaa !254
  br label %_ZN4llvm8ExpectedINS_8codeview11PublicSym32EED2Ev.exit

bb.do:                                            ; preds = %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit
  %i.lf = load i32, ptr %i.gy, align 8, !tbaa !246
  %i.lg = shl i32 %i.lf, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  %i.lh = zext i32 %i.lg to i64
  call void @_ZNK4llvm15BinaryStreamRef9readBytesEmmRNS_8ArrayRefIhEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %14, ptr noundef nonnull align 8 dereferenceable(52) %26, i64 noundef %i.lh, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(16) %13) #16
  %i.li = load ptr, ptr %14, align 8, !tbaa !70   ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %i.li, null
  br i1 %.not.i.i.i9, label %_ZNK4llvm20iterator_facade_baseINS_24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEESt26random_access_iterator_tagKS6_lPS9_RS9_EptEv.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  store ptr null, ptr %14, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr %i.li, ptr %11, align 8, !tbaa !70
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %10, ptr nofree noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 1 dereferenceable(1) %12)
  %i.lj = load ptr, ptr %11, align 8, !tbaa !70   ; 3 uses
  %i.lk = icmp eq ptr %i.lj, null
  br i1 %i.lk, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ll = load ptr, ptr %i.lj, align 8, !tbaa !29
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.ln = load ptr, ptr %i.lm, align 8
  call void %i.ln(ptr noundef nonnull align 8 dereferenceable(8) %i.lj) #16, !inline_history !231
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  %.pr.i.i.i = load ptr, ptr %14, align 8, !tbaa !70 ; 3 uses
  %i.lo = icmp eq ptr %.pr.i.i.i, null
  br i1 %i.lo, label %_ZNK4llvm20iterator_facade_baseINS_24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEESt26random_access_iterator_tagKS6_lPS9_RS9_EptEv.exit, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.lp = load ptr, ptr %.pr.i.i.i, align 8, !tbaa !29
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.lr = load ptr, ptr %i.lq, align 8
  call void %i.lr(ptr noundef nonnull align 8 dereferenceable(8) %.pr.i.i.i) #16, !inline_history !232
  br label %_ZNK4llvm20iterator_facade_baseINS_24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEESt26random_access_iterator_tagKS6_lPS9_RS9_EptEv.exit

_ZNK4llvm20iterator_facade_baseINS_24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEESt26random_access_iterator_tagKS6_lPS9_RS9_EptEv.exit: ; preds = %bb.do, %bb.dr, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  %i.ls = load ptr, ptr %13, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  %.0.copyload.i.i = load i32, ptr %i.ls, align 1
  %i.lt = call { ptr, i64 } @_ZNK4llvm3pdb12SymbolStream10readRecordEj(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %.0.copyload.i.i) #16 ; 2 uses
  %i.lu = extractvalue { ptr, i64 } %i.lt, 0      ; 2 uses
  %i.lv = extractvalue { ptr, i64 } %i.lt, 1      ; 2 uses
  %i.lw = icmp ult i64 %i.lv, 4
  br i1 %i.lw, label %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit.thread, label %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit

_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit: ; preds = %_ZNK4llvm20iterator_facade_baseINS_24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEESt26random_access_iterator_tagKS6_lPS9_RS9_EptEv.exit
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 2
  %.0.copyload.i.i.i.i = load i16, ptr %i.lx, align 1
  %.not = icmp eq i16 %.0.copyload.i.i.i.i, 4366
  br i1 %.not, label %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit.i, label %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit.thread

_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit.thread: ; preds = %_ZNK4llvm20iterator_facade_baseINS_24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEESt26random_access_iterator_tagKS6_lPS9_RS9_EptEv.exit, %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %29, align 8, !tbaa !254
  br label %_ZN4llvm8ExpectedINS_8codeview11PublicSym32EED2Ev.exit

_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit.i: ; preds = %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16, !noalias !255
  store i16 4366, ptr %8, align 8, !tbaa !248, !noalias !255
  %i.ly = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 0, ptr %i.ly, align 4, !tbaa !249, !noalias !255
  %i.lz = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 0, ptr %i.lz, align 8, !tbaa !250, !noalias !255
  %i.ma = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  store i16 0, ptr %i.ma, align 4, !tbaa !251, !noalias !255
  %i.mb = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.mb, i8 0, i64 20, i1 false), !noalias !255
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16, !noalias !255
  call void @_ZN4llvm8codeview18SymbolDeserializer13deserializeAsINS0_11PublicSym32EEENS_5ErrorENS0_8CVRecordINS0_10SymbolKindEEERT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %9, ptr nonnull %i.lu, i64 %i.lv, ptr noundef nonnull align 8 dereferenceable(36) %8), !noalias !255
  %i.mc = load ptr, ptr %9, align 8, !tbaa !70, !noalias !255 ; 2 uses
  %.not.i = icmp eq ptr %i.mc, null
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16, !noalias !255
  br i1 %.not.i, label %bb.du, label %_ZN4llvm8ExpectedINS_8codeview11PublicSym32EE9takeErrorEv.exit

_ZN4llvm8ExpectedINS_8codeview11PublicSym32EE9takeErrorEv.exit: ; preds = %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16, !noalias !255
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.mc, ptr %6, align 8, !tbaa !70
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %5, ptr nofree noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  %i.md = load ptr, ptr %6, align 8, !tbaa !70    ; 3 uses
  %i.me = icmp eq ptr %i.md, null
  br i1 %i.me, label %bb.eg, label %bb.dt

bb.dt:                                            ; preds = %_ZN4llvm8ExpectedINS_8codeview11PublicSym32EE9takeErrorEv.exit
  %i.mf = load ptr, ptr %i.md, align 8, !tbaa !29
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mh = load ptr, ptr %i.mg, align 8
  call void %i.mh(ptr noundef nonnull align 8 dereferenceable(8) %i.md) #16, !inline_history !235
  br label %bb.eg

bb.du:                                            ; preds = %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit.i
  %.sroa.041.0.copyload = load ptr, ptr %8, align 8
  %.sroa.844.0.copyload = load i32, ptr %i.lz, align 8
  %.sroa.9.0.copyload = load i16, ptr %i.ma, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 14
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.639)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.sroa.639, ptr noundef nonnull align 2 dereferenceable(26) %.sroa.10.0..sroa_idx, i64 26, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16, !noalias !255
  %i.mi = icmp ne i16 %3, %.sroa.9.0.copyload
  %i.mj = icmp ne i32 %4, %.sroa.844.0.copyload
  %.not3.i = select i1 %i.mi, i1 true, i1 %i.mj
  br i1 %.not3.i, label %bb.ef, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.mk = load ptr, ptr %i.c, align 8, !tbaa !24, !noalias !256 ; 8 uses
  %.not.i.i.i.i.i.i.i.i14 = icmp eq ptr %i.mk, null
  br i1 %.not.i.i.i.i.i.i.i.i14, label %_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE5beginEv.exit, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8 ; 7 uses
  %i.mm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30, !noalias !256
  %.not.i.i.i.i.i.i.i.i.i15 = icmp eq i8 %i.mm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i15, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.mn = load i32, ptr %i.ml, align 4, !tbaa !31, !noalias !256
  %i.mo = add nsw i32 %i.mn, 1
  store i32 %i.mo, ptr %i.ml, align 4, !tbaa !31, !noalias !256
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dw
  %i.mp = atomicrmw volatile add ptr %i.ml, i32 1 acq_rel, align 4, !noalias !256 ; 0 uses
  br label %bb.dz

_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE5beginEv.exit: ; preds = %bb.dv
  %i.mq = load i32, ptr %i.gy, align 8, !tbaa !246
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit20

bb.dz:                                            ; preds = %bb.dx, %bb.dy
  %i.mr = load i32, ptr %i.gy, align 8, !tbaa !246 ; 3 uses
  %i.ms = load atomic i64, ptr %i.ml acquire, align 8 ; 2 uses
  %i.mt = icmp eq i64 %i.ms, 4294967297
  %i.mu = trunc i64 %i.ms to i32                  ; 2 uses
  br i1 %i.mt, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  store i32 0, ptr %i.ml, align 8, !tbaa !26
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mk, i64 12
  store i32 0, ptr %i.mv, align 4, !tbaa !27
  %i.mw = load ptr, ptr %i.mk, align 8, !tbaa !29
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %i.my = load ptr, ptr %i.mx, align 8
  call void %i.my(ptr noundef nonnull align 8 dereferenceable(16) %i.mk) #16, !inline_history !230
  %i.mz = load ptr, ptr %i.mk, align 8, !tbaa !29
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  %i.nb = load ptr, ptr %i.na, align 8
  call void %i.nb(ptr noundef nonnull align 8 dereferenceable(16) %i.mk) #16, !inline_history !230
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit20

bb.eb:                                            ; preds = %bb.dz
  %i.nc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i.i.i17 = icmp eq i8 %i.nc, 0
  br i1 %.not.i.i.i.i.i.i17, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.nd = add nsw i32 %i.mu, -1
  store i32 %i.nd, ptr %i.ml, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i18

bb.ed:                                            ; preds = %bb.eb
  %i.ne = atomicrmw volatile add ptr %i.ml, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i18

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i18: ; preds = %bb.ed, %bb.ec
  %.0.i.i.i.i.i.i.i19 = phi i32 [ %i.mu, %bb.ec ], [ %i.ne, %bb.ed ]
  %i.nf = icmp eq i32 %.0.i.i.i.i.i.i.i19, 1
  br i1 %i.nf, label %bb.ee, label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit20, !prof !32

bb.ee:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i18
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mk) #16
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit20

_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit20: ; preds = %_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE5beginEv.exit, %bb.ea, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i18, %bb.ee
  %.in = phi i32 [ %i.mq, %_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE5beginEv.exit ], [ %i.mr, %bb.ea ], [ %i.mr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i18 ], [ %i.mr, %bb.ee ]
  %i.ng = zext i32 %.in to i64
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.sroa.0.sroa.6.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(26) %.sroa.639, i64 26, i1 false)
  store ptr %.sroa.041.0.copyload, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %4, ptr %.sroa.0.sroa.4.0..sroa_idx.a, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %3, ptr %.sroa.0.sroa.5.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ng, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.ef

bb.ef:                                            ; preds = %bb.du, %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit20
  %.sink = phi i8 [ 1, %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit20 ], [ 0, %bb.du ]
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink, ptr %30, align 8, !tbaa !254
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.639)
  br label %_ZN4llvm8ExpectedINS_8codeview11PublicSym32EED2Ev.exit

bb.eg:                                            ; preds = %_ZN4llvm8ExpectedINS_8codeview11PublicSym32EE9takeErrorEv.exit, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %31, align 8, !tbaa !254
  br label %_ZN4llvm8ExpectedINS_8codeview11PublicSym32EED2Ev.exit

_ZN4llvm8ExpectedINS_8codeview11PublicSym32EED2Ev.exit: ; preds = %bb.ef, %bb.eg, %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit.thread, %27
  %32 = load ptr, ptr %i.gr, align 8, !tbaa !24   ; 8 uses
  %.not.i.i.i.i.i22 = icmp eq ptr %32, null
  br i1 %.not.i.i.i.i.i22, label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit26, label %bb.eh

bb.eh:                                            ; preds = %_ZN4llvm8ExpectedINS_8codeview11PublicSym32EED2Ev.exit
  %i.nh = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 4 uses
  %i.ni = load atomic i64, ptr %i.nh acquire, align 8 ; 2 uses
  %i.nj = icmp eq i64 %i.ni, 4294967297
  %i.nk = trunc i64 %i.ni to i32                  ; 2 uses
  br i1 %i.nj, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  store i32 0, ptr %i.nh, align 8, !tbaa !26
  %i.nl = getelementptr inbounds nuw i8, ptr %32, i64 12
  store i32 0, ptr %i.nl, align 4, !tbaa !27
  %i.nm = load ptr, ptr %32, align 8, !tbaa !29
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  %i.no = load ptr, ptr %i.nn, align 8
  call void %i.no(ptr noundef nonnull align 8 dereferenceable(16) %32) #16, !inline_history !230
  %i.np = load ptr, ptr %32, align 8, !tbaa !29
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 24
  %i.nr = load ptr, ptr %i.nq, align 8
  call void %i.nr(ptr noundef nonnull align 8 dereferenceable(16) %32) #16, !inline_history !230
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit26

bb.ej:                                            ; preds = %bb.eh
  %i.ns = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i.i.i23 = icmp eq i8 %i.ns, 0
  br i1 %.not.i.i.i.i.i.i23, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.nt = add nsw i32 %i.nk, -1
  store i32 %i.nt, ptr %i.nh, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i24

bb.el:                                            ; preds = %bb.ej
  %i.nu = atomicrmw volatile add ptr %i.nh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i24

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i24: ; preds = %bb.el, %bb.ek
  %.0.i.i.i.i.i.i.i25 = phi i32 [ %i.nk, %bb.ek ], [ %i.nu, %bb.el ]
  %i.nv = icmp eq i32 %.0.i.i.i.i.i.i.i25, 1
  br i1 %i.nv, label %bb.em, label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit26, !prof !32

bb.em:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i24
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %32) #16
  br label %_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit26

_ZN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEED2Ev.exit26: ; preds = %_ZN4llvm8ExpectedINS_8codeview11PublicSym32EED2Ev.exit, %bb.ei, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i24, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #16
  ret void
}

declare { ptr, i64 } @_ZNK4llvm3pdb12SymbolStream10readRecordEj(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #16, !inline_history !257
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !31   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #16, !inline_history !257
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9ErrorList4joinENS_5ErrorES1_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr nofree noundef align 8 dereferenceable(8) %1, ptr nofree noundef align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !70     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = load ptr, ptr %2, align 8, !tbaa !70     ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !70
  store ptr null, ptr %2, align 8, !tbaa !70
  br label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit31

bb.c:                                             ; preds = %bb.a
  %.not109 = icmp eq ptr %i.b, null
  br i1 %.not109, label %bb.d, label %_ZNK4llvm5Error3isAINS_9ErrorListEEEbv.exit

bb.d:                                             ; preds = %bb.c
  store ptr %i.a, ptr %0, align 8, !tbaa !70
  store ptr null, ptr %1, align 8, !tbaa !70
  br label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit31

_ZNK4llvm5Error3isAINS_9ErrorListEEEbv.exit:      ; preds = %bb.c
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @_ZN4llvm9ErrorList2IDE) #16, !inline_history !258
  br i1 %i.f, label %bb.e, label %bb.n

bb.e:                                             ; preds = %_ZNK4llvm5Error3isAINS_9ErrorListEEEbv.exit
  %i.g = load ptr, ptr %1, align 8, !tbaa !70     ; 6 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !70     ; 3 uses
  %.not.i8 = icmp eq ptr %i.h, null
  br i1 %.not.i8, label %_ZNK4llvm5Error3isAINS_9ErrorListEEEbv.exit9.thread, label %_ZNK4llvm5Error3isAINS_9ErrorListEEEbv.exit9

_ZNK4llvm5Error3isAINS_9ErrorListEEEbv.exit9:     ; preds = %bb.e
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @_ZN4llvm9ErrorList2IDE) #16, !inline_history !258
  %.pre = load ptr, ptr %2, align 8, !tbaa !70, !noalias !58 ; 6 uses
  br i1 %i.l, label %bb.f, label %_ZNK4llvm5Error3isAINS_9ErrorListEEEbv.exit9.thread

bb.f:                                             ; preds = %_ZNK4llvm5Error3isAINS_9ErrorListEEEbv.exit9
  store ptr null, ptr %2, align 8, !tbaa !70, !noalias !291
  %i.m = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !86   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !86   ; 2 uses
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
  %i.t = load ptr, ptr %.pre, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %.pre) #16, !inline_history !5
  br label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %.sroa.0104.0114 = phi ptr [ %i.n, %.lr.ph ], [ %i.aa, %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit ] ; 4 uses
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !88   ; 4 uses
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !89
  %.not.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load i64, ptr %.sroa.0104.0114, align 8, !tbaa !90
  store i64 %i.y, ptr %i.w, align 8, !tbaa !90
  store ptr null, ptr %.sroa.0104.0114, align 8, !tbaa !90
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.z, ptr %i.q, align 8, !tbaa !88
  br label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.i:                                             ; preds = %bb.g
  tail call void @_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr %i.w, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0104.0114)
  br label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.h, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0104.0114, i64 8 ; 2 uses
  %.not110 = icmp eq ptr %i.aa, %i.p
  br i1 %.not110, label %._crit_edge, label %bb.g

_ZNK4llvm5Error3isAINS_9ErrorListEEEbv.exit9.thread: ; preds = %bb.e, %_ZNK4llvm5Error3isAINS_9ErrorListEEEbv.exit9
  %i.ab = phi ptr [ null, %bb.e ], [ %.pre, %_ZNK4llvm5Error3isAINS_9ErrorListEEEbv.exit9 ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr null, ptr %2, align 8, !tbaa !70, !noalias !292
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !88 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !89
  %.not.i.i11 = icmp eq ptr %i.ae, %i.ag
  br i1 %.not.i.i11, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm5Error3isAINS_9ErrorListEEEbv.exit9.thread
  %i.ah = ptrtoint ptr %i.ab to i64
  store i64 %i.ah, ptr %i.ae, align 8, !tbaa !90
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !88
  br label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit

bb.k:                                             ; preds = %_ZNK4llvm5Error3isAINS_9ErrorListEEEbv.exit9.thread
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !91 ; 10 uses
  %i.ak = ptrtoint ptr %i.ae to i64               ; 3 uses
  %i.al = ptrtoint ptr %i.aj to i64               ; 4 uses
  %i.am = sub i64 %i.ak, %i.al                    ; 3 uses
  %i.an = icmp eq i64 %i.am, 9223372036854775800
  br i1 %i.an, label %bb.l, label %_ZNKSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.k
  %i.ao = ashr exact i64 %i.am, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 1)
  %i.ap = add nsw i64 %.sroa.speculated.i.i, %i.ao ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  %i.ar = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 1152921504606846975)
  %i.as = select i1 %i.aq, i64 1152921504606846975, i64 %i.ar ; 3 uses
  %.not.i.i32 = icmp ne i64 %i.as, 0
  tail call void @llvm.assume(i1 %.not.i.i32)
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #17 ; 10 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.am
  %i.aw = ptrtoint ptr %i.ab to i64
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !90
  %.not10.i.i.i.i = icmp eq ptr %i.aj, %i.ae
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.ax = add i64 %i.ak, -8
  %i.ay = sub i64 %i.ax, %i.al                    ; 2 uses
  %i.az = lshr i64 %i.ay, 3
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check149 = icmp ult i64 %i.ay, 136
  br i1 %min.iters.check149, label %.lr.ph.i.i.i.i.preheader163, label %vector.memcheck142

vector.memcheck142:                               ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bb = add i64 %i.ak, -8
end_hunk_1
begin_hunk_2_@llvm.umin.i64
!53 = !{!"_ZTSN4llvm16FixedStreamArrayINS_3pdb13SectionOffsetEEE", !48, i64 0}
!54 = !{!"p1 _ZTSN4llvm3pdb19PublicsStreamHeaderE", !16, i64 0}
!55 = !{!"_ZTSN4llvm3pdb13PublicsStreamE", !38, i64 0, !52, i64 8, !50, i64 16552, !50, i64 16600, !53, i64 16648, !54, i64 16696}
!56 = !{!55, !54, i64 16696}
!57 = !{i8 0, i8 2}
!58 = !{}
!59 = !{!43, !43, i64 0}
!60 = !{!47, !40, i64 16}
!61 = !{!47, !43, i64 24}
!62 = !{!"_ZTSN4llvm18BinaryStreamReaderE", !48, i64 8, !43, i64 56}
!63 = !{!62, !43, i64 56}
!64 = !{!"_ZTSN4llvm5Twine8NodeKindE", !12, i64 0}
!65 = !{!"_ZTSN4llvm5TwineE", !12, i64 0, !12, i64 16, !64, i64 32, !64, i64 33}
!66 = !{!65, !64, i64 33}
!67 = !{!65, !64, i64 32}
!68 = !{!"p1 _ZTSN4llvm13ErrorInfoBaseE", !16, i64 0}
!69 = !{!"_ZTSN4llvm5ErrorE", !68, i64 0}
!70 = !{!69, !68, i64 0}
!71 = !{!"p1 omnipotent char", !16, i64 0}
!72 = !{!"_ZTSN4llvm8ArrayRefIhEE", !71, i64 0, !43, i64 8}
!73 = !{!72, !71, i64 0}
!74 = !{!"_ZTSN4llvm3pdb14raw_error_codeE", !12, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{ptr @_ZN4llvm18BinaryStreamReaderD2Ev}
!77 = !{!41, !40, i64 0}
!78 = !{!"_ZTSN4llvm8codeview16SymbolRecordKindE", !12, i64 0}
!79 = !{!"_ZTSN4llvm8codeview12SymbolRecordE", !78, i64 0}
!80 = !{!"_ZTSN4llvm8codeview14PublicSymFlagsE", !12, i64 0}
!81 = !{!"short", !12, i64 0}
!82 = !{!"_ZTSN4llvm9StringRefE", !71, i64 0, !43, i64 8}
!83 = !{!"_ZTSN4llvm8codeview11PublicSym32E", !79, i64 0, !80, i64 4, !13, i64 8, !81, i64 12, !82, i64 16, !13, i64 32}
!84 = !{!"llvm.loop.mustprogress"}
!85 = !{!"p1 _ZTSSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EE", !16, i64 0}
!86 = !{!85, !85, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!88 = !{!87, !85, i64 8}
!89 = !{!87, !85, i64 16}
!90 = !{!68, !68, i64 0}
!91 = !{!87, !85, i64 0}
!92 = !{!"llvm.loop.isvectorized", i32 1}
!93 = !{!"llvm.loop.unroll.runtime.disable"}
!94 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !71, i64 0}
!95 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !94, i64 0, !43, i64 8, !12, i64 16}
!96 = !{!95, !71, i64 0}
!97 = !{!"_ZTSN4llvm8codeview22SymbolVisitorCallbacksE"}
!98 = !{!"p1 _ZTSN4llvm8codeview21SymbolVisitorDelegateE", !16, i64 0}
!99 = !{!"_ZTSN4llvm8codeview17CodeViewContainerE", !12, i64 0}
!100 = !{!"p1 _ZTSN4llvm8codeview18SymbolDeserializer11MappingInfoE", !16, i64 0}
!101 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm8codeview18SymbolDeserializer11MappingInfoELb0EE", !100, i64 0}
!102 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm8codeview18SymbolDeserializer11MappingInfoESt14default_deleteIS3_EEE", !101, i64 0}
!103 = !{!"_ZTSSt5tupleIJPN4llvm8codeview18SymbolDeserializer11MappingInfoESt14default_deleteIS3_EEE", !102, i64 0}
!104 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm8codeview18SymbolDeserializer11MappingInfoESt14default_deleteIS3_EE", !103, i64 0}
!105 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm8codeview18SymbolDeserializer11MappingInfoESt14default_deleteIS3_ELb1ELb1EE", !104, i64 0}
!106 = !{!"_ZTSSt10unique_ptrIN4llvm8codeview18SymbolDeserializer11MappingInfoESt14default_deleteIS3_EE", !105, i64 0}
!107 = !{!"_ZTSN4llvm8codeview18SymbolDeserializerE", !97, i64 0, !98, i64 8, !99, i64 16, !106, i64 24}
!108 = !{!107, !98, i64 8}
!109 = !{!100, !100, i64 0}
!110 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !16, i64 0, !13, i64 8, !13, i64 12}
!111 = !{!110, !16, i64 0}
!112 = !{ptr @_ZN4llvm8codeview18SymbolDeserializerD2Ev}
!113 = !{ptr @_ZN4llvm8codeview18SymbolDeserializerD2Ev, ptr @_ZN4llvm18BinaryStreamReaderD2Ev}
!114 = !{!72, !43, i64 8}
!115 = !{!"_ZTSN4llvm12BinaryStreamE"}
!116 = !{!"_ZTSN4llvm10endiannessE", !12, i64 0}
!117 = !{!"_ZTSN4llvm16BinaryByteStreamE", !115, i64 0, !116, i64 8, !72, i64 16}
!118 = !{!117, !116, i64 8}
!119 = !{!71, !71, i64 0}
!120 = !{!16, !16, i64 0}
!121 = !{!"_ZTSN4llvm7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEUt_E", !12, i64 0}
!122 = !{!"_ZTSN4llvm7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEE", !121, i64 0}
!123 = !{!"_ZTSN4llvm8codeview9TypeIndexE", !122, i64 0}
!124 = !{!"_ZTSN4llvm8codeview10RegisterIdE", !12, i64 0}
!125 = !{!"_ZTSN4llvm8codeview12ProcSymFlagsE", !12, i64 0}
!126 = !{!"p1 _ZTSN4llvm9StringRefE", !16, i64 0}
!127 = !{!"_ZTSNSt12_Vector_baseIN4llvm9StringRefESaIS1_EE17_Vector_impl_dataE", !126, i64 0, !126, i64 8, !126, i64 16}
!128 = !{!"_ZTSNSt12_Vector_baseIN4llvm9StringRefESaIS1_EE12_Vector_implE", !127, i64 0}
!129 = !{!"_ZTSSt12_Vector_baseIN4llvm9StringRefESaIS1_EE", !128, i64 0}
!130 = !{!"_ZTSSt6vectorIN4llvm9StringRefESaIS1_EE", !129, i64 0}
!131 = !{!"_ZTSN4llvm8codeview13LocalSymFlagsE", !12, i64 0}
!132 = !{!"_ZTSN4llvm8codeview22LocalVariableAddrRangeE", !13, i64 0, !81, i64 4, !81, i64 6}
!133 = !{!"p1 _ZTSN4llvm8codeview20LocalVariableAddrGapE", !16, i64 0}
!134 = !{!"_ZTSNSt12_Vector_baseIN4llvm8codeview20LocalVariableAddrGapESaIS2_EE17_Vector_impl_dataE", !133, i64 0, !133, i64 8, !133, i64 16}
!135 = !{!"_ZTSNSt12_Vector_baseIN4llvm8codeview20LocalVariableAddrGapESaIS2_EE12_Vector_implE", !134, i64 0}
!136 = !{!"_ZTSSt12_Vector_baseIN4llvm8codeview20LocalVariableAddrGapESaIS2_EE", !135, i64 0}
!137 = !{!"_ZTSSt6vectorIN4llvm8codeview20LocalVariableAddrGapESaIS2_EE", !136, i64 0}
!138 = !{!"_ZTSN4llvm7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEUt_E", !12, i64 0}
!139 = !{!"_ZTSN4llvm7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEE", !138, i64 0}
!140 = !{!"_ZTSN4llvm7support6detail31packed_endian_specific_integralIiLNS_10endiannessE1ELm1ELm1EEUt_E", !12, i64 0}
!141 = !{!"_ZTSN4llvm7support6detail31packed_endian_specific_integralIiLNS_10endiannessE1ELm1ELm1EEE", !140, i64 0}
!142 = !{!"_ZTSN4llvm8codeview7CPUTypeE", !12, i64 0}
!143 = distinct !{null, null}
!144 = distinct !{null, null, null, null, null}
!145 = distinct !{null, null, null}
!146 = distinct !{!146, !"_ZN4llvm10make_errorINS_3pdb8RawErrorEJNS1_14raw_error_codeERA42_KcEEENS_5ErrorEDpOT0_"}
!147 = distinct !{!147, !146, !"_ZN4llvm10make_errorINS_3pdb8RawErrorEJNS1_14raw_error_codeERA42_KcEEENS_5ErrorEDpOT0_: argument 0"}
!148 = distinct !{!148, !"_ZSt11make_uniqueIN4llvm3pdb8RawErrorEJNS1_14raw_error_codeERA42_KcEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!149 = distinct !{!149, !148, !"_ZSt11make_uniqueIN4llvm3pdb8RawErrorEJNS1_14raw_error_codeERA42_KcEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!150 = distinct !{!150, !"_ZN4llvm18BinaryStreamReader10readObjectINS_3pdb19PublicsStreamHeaderEEENS_5ErrorERPKT_"}
!151 = distinct !{!151, !150, !"_ZN4llvm18BinaryStreamReader10readObjectINS_3pdb19PublicsStreamHeaderEEENS_5ErrorERPKT_: argument 0"}
!152 = distinct !{!152, !"_ZN4llvm10make_errorINS_3pdb8RawErrorEJNS1_14raw_error_codeERA42_KcEEENS_5ErrorEDpOT0_"}
!153 = distinct !{!153, !152, !"_ZN4llvm10make_errorINS_3pdb8RawErrorEJNS1_14raw_error_codeERA42_KcEEENS_5ErrorEDpOT0_: argument 0"}
!154 = distinct !{!154, !"_ZSt11make_uniqueIN4llvm3pdb8RawErrorEJNS1_14raw_error_codeERA42_KcEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!155 = distinct !{!155, !154, !"_ZSt11make_uniqueIN4llvm3pdb8RawErrorEJNS1_14raw_error_codeERA42_KcEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!156 = distinct !{!156, !"_ZN4llvm10make_errorINS_3pdb8RawErrorEJNS1_14raw_error_codeERA31_KcEEENS_5ErrorEDpOT0_"}
!157 = distinct !{!157, !156, !"_ZN4llvm10make_errorINS_3pdb8RawErrorEJNS1_14raw_error_codeERA31_KcEEENS_5ErrorEDpOT0_: argument 0"}
!158 = distinct !{!158, !"_ZSt11make_uniqueIN4llvm3pdb8RawErrorEJNS1_14raw_error_codeERA31_KcEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!159 = distinct !{!159, !158, !"_ZSt11make_uniqueIN4llvm3pdb8RawErrorEJNS1_14raw_error_codeERA31_KcEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!160 = distinct !{!160, !"_ZN4llvm10joinErrorsENS_5ErrorES0_"}
!161 = distinct !{!161, !160, !"_ZN4llvm10joinErrorsENS_5ErrorES0_: argument 0"}
!162 = distinct !{ptr @_ZN4llvm10joinErrorsENS_5ErrorES0_, null}
!163 = distinct !{!163, !"_ZN4llvm10make_errorINS_3pdb8RawErrorEJNS1_14raw_error_codeERA28_KcEEENS_5ErrorEDpOT0_"}
!164 = distinct !{!164, !163, !"_ZN4llvm10make_errorINS_3pdb8RawErrorEJNS1_14raw_error_codeERA28_KcEEENS_5ErrorEDpOT0_: argument 0"}
!165 = distinct !{!165, !"_ZSt11make_uniqueIN4llvm3pdb8RawErrorEJNS1_14raw_error_codeERA28_KcEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!166 = distinct !{!166, !165, !"_ZSt11make_uniqueIN4llvm3pdb8RawErrorEJNS1_14raw_error_codeERA28_KcEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!167 = distinct !{!167, !"_ZN4llvm10joinErrorsENS_5ErrorES0_"}
!168 = distinct !{!168, !167, !"_ZN4llvm10joinErrorsENS_5ErrorES0_: argument 0"}
!169 = !{!147}
!170 = !{!149, !147}
!171 = !{!151}
!172 = !{!153}
!173 = !{!155, !153}
!174 = !{!54, !54, i64 0}
!175 = !{!159, !157}
!176 = !{!161}
!177 = !{!166, !164}
!178 = !{!168}
!179 = distinct !{null, null, null, null, null, null, null}
!180 = distinct !{!180, !"_ZN4llvm10make_errorINS_17BinaryStreamErrorEJNS_17stream_error_codeEEEENS_5ErrorEDpOT0_"}
!181 = distinct !{!181, !180, !"_ZN4llvm10make_errorINS_17BinaryStreamErrorEJNS_17stream_error_codeEEEENS_5ErrorEDpOT0_: argument 0"}
!182 = distinct !{!182, !"_ZSt11make_uniqueIN4llvm17BinaryStreamErrorEJNS0_17stream_error_codeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!183 = distinct !{!183, !182, !"_ZSt11make_uniqueIN4llvm17BinaryStreamErrorEJNS0_17stream_error_codeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!184 = !{!181}
!185 = !{!183, !181}
!186 = distinct !{null, null, null, null, null, null, null}
!187 = distinct !{!187, !"_ZN4llvm10make_errorINS_17BinaryStreamErrorEJNS_17stream_error_codeEEEENS_5ErrorEDpOT0_"}
!188 = distinct !{!188, !187, !"_ZN4llvm10make_errorINS_17BinaryStreamErrorEJNS_17stream_error_codeEEEENS_5ErrorEDpOT0_: argument 0"}
!189 = distinct !{!189, !"_ZSt11make_uniqueIN4llvm17BinaryStreamErrorEJNS0_17stream_error_codeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!190 = distinct !{!190, !189, !"_ZSt11make_uniqueIN4llvm17BinaryStreamErrorEJNS0_17stream_error_codeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!191 = !{!188}
!192 = !{!190, !188}
!193 = distinct !{!193, !"_ZSt11make_uniqueIN4llvm3pdb8RawErrorEJNS1_14raw_error_codeERA30_KcEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!194 = distinct !{!194, !193, !"_ZSt11make_uniqueIN4llvm3pdb8RawErrorEJNS1_14raw_error_codeERA30_KcEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!195 = !{!194}
!196 = distinct !{!196, !"_ZSt11make_uniqueIN4llvm3pdb8RawErrorEJNS1_14raw_error_codeERA26_KcEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!197 = distinct !{!197, !196, !"_ZSt11make_uniqueIN4llvm3pdb8RawErrorEJNS1_14raw_error_codeERA26_KcEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!198 = !{!197}
!199 = distinct !{!199, !"_ZN4llvm11lower_boundIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEESt5tupleIJtjEEZNKS_3pdb13PublicsStream13findByAddressERKNSC_12SymbolStreamEtjE3$_0EEDaOT_OT0_T1_"}
!200 = distinct !{!200, !199, !"_ZN4llvm11lower_boundIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEESt5tupleIJtjEEZNKS_3pdb13PublicsStream13findByAddressERKNSC_12SymbolStreamEtjE3$_0EEDaOT_OT0_T1_: argument 0"}
!201 = distinct !{!201, !"_ZN4llvm9adl_beginIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSA_"}
!202 = distinct !{!202, !201, !"_ZN4llvm9adl_beginIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSA_: argument 0"}
!203 = distinct !{!203, !"_ZN4llvm10adl_detail10begin_implIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEDTcl5beginclsr3stdE7forwardIT_Efp_EEEOSB_"}
!204 = distinct !{!204, !203, !"_ZN4llvm10adl_detail10begin_implIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEDTcl5beginclsr3stdE7forwardIT_Efp_EEEOSB_: argument 0"}
!205 = distinct !{!205, !"_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE5beginEv"}
!206 = distinct !{!206, !205, !"_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE5beginEv: argument 0"}
!207 = distinct !{!207, !"_ZN4llvm7adl_endIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEDTclsr10adl_detailE8end_implclsr3stdE7forwardIT_Efp_EEEOSA_"}
!208 = distinct !{!208, !207, !"_ZN4llvm7adl_endIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEDTclsr10adl_detailE8end_implclsr3stdE7forwardIT_Efp_EEEOSA_: argument 0"}
!209 = distinct !{!209, !"_ZN4llvm10adl_detail8end_implIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEDTcl3endclsr3stdE7forwardIT_Efp_EEEOSB_"}
!210 = distinct !{!210, !209, !"_ZN4llvm10adl_detail8end_implIRKNS_16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEEEDTcl3endclsr3stdE7forwardIT_Efp_EEEOSB_: argument 0"}
!211 = distinct !{!211, !"_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE3endEv"}
!212 = distinct !{!212, !211, !"_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE3endEv: argument 0"}
!213 = distinct !{null, null, null, null, null, null}
!214 = distinct !{!214, !"_ZSt11lower_boundIN4llvm24FixedStreamArrayIteratorINS0_7support6detail31packed_endian_specific_integralIjLNS0_10endiannessE1ELm1ELm1EEEEESt5tupleIJtjEEZNKS0_3pdb13PublicsStream13findByAddressERKNSA_12SymbolStreamEtjE3$_0ET_SG_SG_RKT0_T1_"}
!215 = distinct !{!215, !214, !"_ZSt11lower_boundIN4llvm24FixedStreamArrayIteratorINS0_7support6detail31packed_endian_specific_integralIjLNS0_10endiannessE1ELm1ELm1EEEEESt5tupleIJtjEEZNKS0_3pdb13PublicsStream13findByAddressERKNSA_12SymbolStreamEtjE3$_0ET_SG_SG_RKT0_T1_: argument 0"}
!216 = distinct !{!216, !"_ZSt13__lower_boundIN4llvm24FixedStreamArrayIteratorINS0_7support6detail31packed_endian_specific_integralIjLNS0_10endiannessE1ELm1ELm1EEEEESt5tupleIJtjEEN9__gnu_cxx5__ops14_Iter_comp_valIZNKS0_3pdb13PublicsStream13findByAddressERKNSD_12SymbolStreamEtjE3$_0EEET_SK_SK_RKT0_T1_"}
!217 = distinct !{!217, !216, !"_ZSt13__lower_boundIN4llvm24FixedStreamArrayIteratorINS0_7support6detail31packed_endian_specific_integralIjLNS0_10endiannessE1ELm1ELm1EEEEESt5tupleIJtjEEN9__gnu_cxx5__ops14_Iter_comp_valIZNKS0_3pdb13PublicsStream13findByAddressERKNSD_12SymbolStreamEtjE3$_0EEET_SK_SK_RKT0_T1_: argument 0"}
!218 = distinct !{null, null, null, null, null, null, null, null, null}
!219 = distinct !{null, null, null, null, null, null, null, null, null}
!220 = distinct !{null, null, null, null, null, null, null}
!221 = distinct !{!221, !"_ZN4llvm8codeview18SymbolDeserializer13deserializeAsINS0_11PublicSym32EEENS_8ExpectedIT_EENS0_8CVRecordINS0_10SymbolKindEEE"}
!222 = distinct !{!222, !221, !"_ZN4llvm8codeview18SymbolDeserializer13deserializeAsINS0_11PublicSym32EEENS_8ExpectedIT_EENS0_8CVRecordINS0_10SymbolKindEEE: argument 0"}
!223 = distinct !{null, null, null, null, null, null, null, null}
!224 = distinct !{!224, !84}
!225 = distinct !{null, null, null, null, null, null, null, null}
!226 = distinct !{null, null, null, null, null, null, null}
!227 = distinct !{!227, !"_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE3endEv"}
!228 = distinct !{!228, !227, !"_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE3endEv: argument 0"}
!229 = distinct !{null, null, null}
!230 = distinct !{null, null, null, null, null, null}
!231 = distinct !{null, null, null, null, null, null}
!232 = distinct !{null, null, null, null}
!233 = distinct !{!233, !"_ZN4llvm8codeview18SymbolDeserializer13deserializeAsINS0_11PublicSym32EEENS_8ExpectedIT_EENS0_8CVRecordINS0_10SymbolKindEEE"}
!234 = distinct !{!234, !233, !"_ZN4llvm8codeview18SymbolDeserializer13deserializeAsINS0_11PublicSym32EEENS_8ExpectedIT_EENS0_8CVRecordINS0_10SymbolKindEEE: argument 0"}
!235 = distinct !{null, null, null}
!236 = distinct !{!236, !"_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE5beginEv"}
!237 = distinct !{!237, !236, !"_ZNK4llvm16FixedStreamArrayINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEE5beginEv: argument 0"}
!238 = !{!200}
!239 = !{!206, !204, !202, !200}
!240 = !{!212, !210, !208, !200}
!241 = !{!215}
!242 = !{!215, !200}
!243 = !{!217}
!244 = !{!217, !215, !200}
!245 = !{!"_ZTSN4llvm24FixedStreamArrayIteratorINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEE", !50, i64 0, !13, i64 48}
!246 = !{!245, !13, i64 48}
!247 = !{!222, !217, !215, !200}
!248 = !{!79, !78, i64 0}
!249 = !{!83, !80, i64 4}
!250 = !{!83, !13, i64 8}
!251 = !{!83, !81, i64 12}
!252 = !{!228}
!253 = !{!"_ZTSSt22_Optional_payload_baseISt4pairIN4llvm8codeview11PublicSym32EmEE", !12, i64 0, !19, i64 48}
!254 = !{!253, !19, i64 48}
!255 = !{!234}
!256 = !{!237}
!257 = distinct !{null}
!258 = distinct !{null}
!259 = distinct !{!259, !"_ZN4llvm5Error11takePayloadEv"}
!260 = distinct !{!260, !259, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!261 = distinct !{!261, !"_ZN4llvm5Error11takePayloadEv"}
!262 = distinct !{!262, !261, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!263 = distinct !{!263, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!264 = distinct !{!264, !263, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!265 = distinct !{!265, !263, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!266 = distinct !{!266, !"LVerDomain"}
!267 = distinct !{!267, !266}
!268 = distinct !{!268, !266}
!269 = distinct !{!269, !84, !92, !93}
!270 = distinct !{!270, !84, !92}
!271 = distinct !{!271, !"_ZN4llvm5Error11takePayloadEv"}
!272 = distinct !{!272, !271, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!273 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null, null}
!274 = distinct !{!274, !84}
!275 = distinct !{null, null, null, null, null, null, null, null}
!276 = distinct !{!276, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!277 = distinct !{!277, !276, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!278 = distinct !{!278, !276, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!279 = distinct !{!279, !"LVerDomain"}
!280 = distinct !{!280, !279}
!281 = distinct !{!281, !279}
!282 = distinct !{!282, !84, !92, !93}
!283 = distinct !{!283, !84, !92}
!284 = distinct !{!284, !"_ZN4llvm5Error11takePayloadEv"}
!285 = distinct !{!285, !284, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!286 = distinct !{!286, !"_ZN4llvm5Error11takePayloadEv"}
!287 = distinct !{!287, !286, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!288 = distinct !{!288, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!289 = distinct !{!289, !288, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!290 = distinct !{!290, !288, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!291 = !{!260}
!292 = !{!262}
!293 = !{!264}
!294 = !{!265}
!295 = !{!265, !267}
!296 = !{!264, !268}
!297 = !{!272}
!298 = !{!277}
!299 = !{!278}
!300 = !{!278, !280}
!301 = !{!277, !281}
!302 = !{!285}
!303 = !{!287}
!304 = !{!289}
!305 = !{!290}
!306 = distinct !{!306, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!307 = distinct !{!307, !306, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!308 = distinct !{!308, !306, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!309 = distinct !{!309, !"LVerDomain"}
!310 = distinct !{!310, !309}
!311 = distinct !{!311, !309}
!312 = distinct !{!312, !84, !92, !93}
!313 = distinct !{!313, !84, !92}
!314 = distinct !{!314, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!315 = distinct !{!315, !314, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!316 = distinct !{!316, !314, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!317 = distinct !{!317, !"LVerDomain"}
!318 = distinct !{!318, !317}
!319 = distinct !{!319, !317}
!320 = distinct !{!320, !84, !92, !93}
!321 = distinct !{!321, !84, !92}
!322 = !{!307}
!323 = !{!308}
!324 = !{!308, !310}
!325 = !{!307, !311}
!326 = !{!315}
!327 = !{!316}
!328 = !{!316, !318}
!329 = !{!315, !319}
!330 = !{!94, !71, i64 0}
!331 = !{!95, !43, i64 8}
!332 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !12, i64 0}
!333 = !{!"_ZTSN4llvm11raw_ostream10BufferKindE", !12, i64 0}
!334 = !{!"_ZTSN4llvm11raw_ostreamE", !332, i64 8, !71, i64 16, !71, i64 24, !71, i64 32, !19, i64 40, !333, i64 44}
!335 = !{!334, !332, i64 8}
!336 = !{!334, !19, i64 40}
!337 = !{!334, !333, i64 44}
!338 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0}
!339 = !{!338, !338, i64 0}
!340 = distinct !{!340, !"_ZN4llvm5Error11takePayloadEv"}
!341 = distinct !{!341, !340, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!342 = distinct !{null}
!343 = distinct !{!343, !"_ZN4llvm15handleErrorImplIZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_JEEES1_St10unique_ptrIS2_St14default_deleteIS2_EEOT_DpOT0_"}
!344 = distinct !{!344, !343, !"_ZN4llvm15handleErrorImplIZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_JEEES1_St10unique_ptrIS2_St14default_deleteIS2_EEOT_DpOT0_: argument 0"}
!345 = distinct !{null, null, null}
!346 = distinct !{!346, !"_ZN4llvm18ErrorHandlerTraitsIRFvRNS_13ErrorInfoBaseEEE5applyIZNS_12consumeErrorENS_5ErrorEEUlRKS1_E_EES7_OT_St10unique_ptrIS1_St14default_deleteIS1_EE"}
!347 = distinct !{!347, !346, !"_ZN4llvm18ErrorHandlerTraitsIRFvRNS_13ErrorInfoBaseEEE5applyIZNS_12consumeErrorENS_5ErrorEEUlRKS1_E_EES7_OT_St10unique_ptrIS1_St14default_deleteIS1_EE: argument 0"}
!348 = distinct !{null, null, null}
!349 = distinct !{!349, !"_ZN4llvm15handleErrorImplESt10unique_ptrINS_13ErrorInfoBaseESt14default_deleteIS1_EE"}
!350 = distinct !{!350, !349, !"_ZN4llvm15handleErrorImplESt10unique_ptrINS_13ErrorInfoBaseESt14default_deleteIS1_EE: argument 0"}
!351 = distinct !{!351, !"_ZN4llvm15handleErrorImplIZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_JEEES1_St10unique_ptrIS2_St14default_deleteIS2_EEOT_DpOT0_"}
!352 = distinct !{!352, !351, !"_ZN4llvm15handleErrorImplIZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_JEEES1_St10unique_ptrIS2_St14default_deleteIS2_EEOT_DpOT0_: argument 0"}
!353 = distinct !{!353, !"_ZN4llvm18ErrorHandlerTraitsIRFvRNS_13ErrorInfoBaseEEE5applyIZNS_12consumeErrorENS_5ErrorEEUlRKS1_E_EES7_OT_St10unique_ptrIS1_St14default_deleteIS1_EE"}
!354 = distinct !{!354, !353, !"_ZN4llvm18ErrorHandlerTraitsIRFvRNS_13ErrorInfoBaseEEE5applyIZNS_12consumeErrorENS_5ErrorEEUlRKS1_E_EES7_OT_St10unique_ptrIS1_St14default_deleteIS1_EE: argument 0"}
!355 = distinct !{!355, !"_ZN4llvm15handleErrorImplESt10unique_ptrINS_13ErrorInfoBaseESt14default_deleteIS1_EE"}
!356 = distinct !{!356, !355, !"_ZN4llvm15handleErrorImplESt10unique_ptrINS_13ErrorInfoBaseESt14default_deleteIS1_EE: argument 0"}
!357 = !{!341}
!358 = !{!344}
!359 = !{!347, !344}
!360 = !{!350, !344}
!361 = !{!352}
!362 = !{!354, !352}
!363 = !{!356, !352}
!364 = !{!107, !99, i64 16}
!365 = !{!101, !100, i64 0}
!366 = distinct !{!366, !"_ZSt11make_uniqueIN4llvm8codeview18SymbolDeserializer11MappingInfoEJNS0_8ArrayRefIhEERNS1_17CodeViewContainerEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!367 = distinct !{!367, !366, !"_ZSt11make_uniqueIN4llvm8codeview18SymbolDeserializer11MappingInfoEJNS0_8ArrayRefIhEERNS1_17CodeViewContainerEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!368 = distinct !{null, null, null, null, null, null, ptr @_ZN4llvm18BinaryStreamReaderD2Ev, null, null, null, null}
!369 = !{!367}
!370 = !{!99, !99, i64 0}
!371 = !{!"_ZTSSt22_Optional_payload_baseIN4llvm8codeview10SymbolKindEE", !12, i64 0, !19, i64 2}
!372 = !{!371, !19, i64 2}
!373 = !{!110, !13, i64 8}
!374 = !{!110, !13, i64 12}
!375 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_8codeview16CodeViewRecordIO11RecordLimitEvEE", !110, i64 0}
!376 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_8codeview16CodeViewRecordIO11RecordLimitELb1EEE", !375, i64 0}
!377 = !{!"_ZTSN4llvm15SmallVectorImplINS_8codeview16CodeViewRecordIO11RecordLimitEEE", !376, i64 0}
!378 = !{!"_ZTSN4llvm18SmallVectorStorageINS_8codeview16CodeViewRecordIO11RecordLimitELj2EEE", !12, i64 0}
!379 = !{!"_ZTSN4llvm11SmallVectorINS_8codeview16CodeViewRecordIO11RecordLimitELj2EEE", !377, i64 0, !378, i64 16}
!380 = !{!"p1 _ZTSN4llvm18BinaryStreamReaderE", !16, i64 0}
!381 = !{!"p1 _ZTSN4llvm18BinaryStreamWriterE", !16, i64 0}
!382 = !{!"p1 _ZTSN4llvm8codeview22CodeViewRecordStreamerE", !16, i64 0}
!383 = !{!"_ZTSN4llvm8codeview16CodeViewRecordIOE", !379, i64 0, !380, i64 40, !381, i64 48, !382, i64 56, !43, i64 64}
!384 = !{!383, !380, i64 40}
!385 = !{!"_ZTSSt17_Optional_payloadIN4llvm8codeview10SymbolKindELb1ELb1ELb1EE", !371, i64 0}
!386 = !{!"_ZTSSt14_Optional_baseIN4llvm8codeview10SymbolKindELb1ELb1EE", !385, i64 0}
!387 = !{!"_ZTSSt8optionalIN4llvm8codeview10SymbolKindEE", !386, i64 0}
!388 = !{!"_ZTSN4llvm8codeview19SymbolRecordMappingE", !97, i64 0, !387, i64 8, !383, i64 16, !99, i64 88}
!389 = !{!388, !99, i64 88}
!390 = distinct !{null, null, null, null, ptr @_ZN4llvm18BinaryStreamReaderD2Ev, null, null, null, null}
!391 = distinct !{null, null, null, ptr @_ZN4llvm18BinaryStreamReaderD2Ev, null, null, null, null}
!392 = !{!"_ZTSN4llvm8codeview19RegRelativeIndirSymE", !79, i64 0, !13, i64 4, !123, i64 8, !13, i64 12, !124, i64 16, !82, i64 24, !13, i64 40}
!393 = !{!392, !13, i64 40}
!394 = !{!"_ZTSN4llvm8codeview11ScopeEndSymE", !79, i64 0, !13, i64 4}
!395 = !{!394, !13, i64 4}
!396 = !{!"_ZTSN4llvm8codeview12ThunkOrdinalE", !12, i64 0}
!397 = !{!"_ZTSN4llvm8codeview10Thunk32SymE", !79, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !81, i64 20, !81, i64 22, !396, i64 24, !82, i64 32, !72, i64 48, !13, i64 64}
!398 = !{!397, !13, i64 64}
!399 = !{!"_ZTSN4llvm8codeview14TrampolineTypeE", !12, i64 0}
!400 = !{!"_ZTSN4llvm8codeview13TrampolineSymE", !79, i64 0, !399, i64 2, !81, i64 4, !13, i64 8, !13, i64 12, !81, i64 16, !81, i64 18, !13, i64 20}
!401 = !{!400, !13, i64 20}
!402 = !{!"_ZTSN4llvm8codeview10SectionSymE", !79, i64 0, !81, i64 2, !12, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !82, i64 24, !13, i64 40}
!403 = !{!402, !13, i64 40}
!404 = !{!"_ZTSN4llvm8codeview12CoffGroupSymE", !79, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !81, i64 16, !82, i64 24, !13, i64 40}
!405 = !{!404, !13, i64 40}
!406 = !{!"_ZTSN4llvm8codeview11ExportFlagsE", !12, i64 0}
!407 = !{!"_ZTSN4llvm8codeview9ExportSymE", !79, i64 0, !81, i64 2, !406, i64 4, !82, i64 8, !13, i64 24}
!408 = !{!407, !13, i64 24}
!409 = !{!"_ZTSN4llvm8codeview7ProcSymE", !79, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !123, i64 28, !13, i64 32, !81, i64 36, !125, i64 38, !82, i64 40, !13, i64 56}
!410 = !{!409, !13, i64 56}
!411 = !{!"_ZTSN4llvm8codeview11RegisterSymE", !79, i64 0, !123, i64 2, !124, i64 6, !82, i64 8, !13, i64 24}
!412 = !{!411, !13, i64 24}
!413 = !{!"_ZTSN4llvm8codeview10ProcRefSymE", !79, i64 0, !13, i64 4, !13, i64 8, !81, i64 12, !82, i64 16, !13, i64 32}
!414 = !{!413, !13, i64 32}
!415 = !{!"_ZTSN4llvm8codeview11EnvBlockSymE", !79, i64 0, !130, i64 8, !13, i64 32}
!416 = !{!415, !13, i64 32}
!417 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!418 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !417, i64 0}
!419 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !418, i64 0}
!420 = !{!"_ZTSSt6vectorIhSaIhEE", !419, i64 0}
!421 = !{!"_ZTSN4llvm8codeview13InlineSiteSymE", !79, i64 0, !13, i64 4, !13, i64 8, !123, i64 12, !420, i64 16, !13, i64 40}
!422 = !{!421, !13, i64 40}
!423 = !{!"_ZTSN4llvm8codeview8LocalSymE", !79, i64 0, !123, i64 2, !131, i64 6, !82, i64 8, !13, i64 24}
!424 = !{!423, !13, i64 24}
!425 = !{!"_ZTSN4llvm8codeview11DefRangeSymE", !79, i64 0, !13, i64 4, !132, i64 8, !137, i64 16, !13, i64 40}
!426 = !{!425, !13, i64 40}
!427 = !{!"_ZTSN4llvm8codeview19DefRangeSubfieldSymE", !79, i64 0, !13, i64 4, !81, i64 8, !132, i64 12, !137, i64 24, !13, i64 48}
!428 = !{!427, !13, i64 48}
!429 = !{!"_ZTSN4llvm8codeview22DefRangeRegisterHeaderE", !139, i64 0, !139, i64 2}
!430 = !{!"_ZTSN4llvm8codeview19DefRangeRegisterSymE", !79, i64 0, !429, i64 2, !132, i64 8, !137, i64 16, !13, i64 40}
!431 = !{!430, !13, i64 40}
!432 = !{!"_ZTSN4llvm8codeview29DefRangeFramePointerRelHeaderE", !141, i64 0}
!433 = !{!"_ZTSN4llvm8codeview26DefRangeFramePointerRelSymE", !79, i64 0, !432, i64 2, !132, i64 8, !137, i64 16, !13, i64 40}
!434 = !{!433, !13, i64 40}
!435 = !{!"_ZTSN4llvm8codeview30DefRangeSubfieldRegisterHeaderE", !139, i64 0, !139, i64 2, !122, i64 4}
!436 = !{!"_ZTSN4llvm8codeview27DefRangeSubfieldRegisterSymE", !79, i64 0, !435, i64 2, !132, i64 12, !137, i64 24, !13, i64 48}
!437 = !{!436, !13, i64 48}
!438 = !{!"_ZTSN4llvm8codeview35DefRangeFramePointerRelFullScopeSymE", !79, i64 0, !13, i64 4, !13, i64 8}
!439 = !{!438, !13, i64 8}
!440 = !{!"_ZTSN4llvm8codeview25DefRangeRegisterRelHeaderE", !139, i64 0, !139, i64 2, !141, i64 4}
!441 = !{!"_ZTSN4llvm8codeview22DefRangeRegisterRelSymE", !79, i64 0, !440, i64 2, !132, i64 12, !137, i64 24, !13, i64 48}
!442 = !{!441, !13, i64 48}
!443 = !{!"_ZTSN4llvm8codeview30DefRangeRegisterRelIndirHeaderE", !139, i64 0, !139, i64 2, !141, i64 4, !141, i64 8}
!444 = !{!"_ZTSN4llvm8codeview27DefRangeRegisterRelIndirSymE", !79, i64 0, !443, i64 2, !132, i64 16, !137, i64 24, !13, i64 48}
!445 = !{!444, !13, i64 48}
!446 = !{!"_ZTSN4llvm8codeview8BlockSymE", !79, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !81, i64 20, !82, i64 24, !13, i64 40}
!447 = !{!446, !13, i64 40}
!448 = !{!"_ZTSN4llvm8codeview8LabelSymE", !79, i64 0, !13, i64 4, !81, i64 8, !125, i64 10, !82, i64 16, !13, i64 32}
!449 = !{!448, !13, i64 32}
!450 = !{!"_ZTSN4llvm8codeview10ObjNameSymE", !79, i64 0, !13, i64 4, !82, i64 8, !13, i64 24}
!451 = !{!450, !13, i64 24}
!452 = !{!"_ZTSN4llvm8codeview16CompileSym2FlagsE", !12, i64 0}
!453 = !{!"_ZTSN4llvm8codeview11Compile2SymE", !79, i64 0, !452, i64 4, !142, i64 8, !81, i64 10, !81, i64 12, !81, i64 14, !81, i64 16, !81, i64 18, !81, i64 20, !82, i64 24, !130, i64 40, !13, i64 64}
!454 = !{!453, !13, i64 64}
!455 = !{!"_ZTSN4llvm8codeview16CompileSym3FlagsE", !12, i64 0}
!456 = !{!"_ZTSN4llvm8codeview11Compile3SymE", !79, i64 0, !455, i64 4, !142, i64 8, !81, i64 10, !81, i64 12, !81, i64 14, !81, i64 16, !81, i64 18, !81, i64 20, !81, i64 22, !81, i64 24, !82, i64 32, !13, i64 48}
end_hunk_2
