Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/XCOFFObjectFile?download=true
inline.NumInlined: 2488
inline.NumDeleted: 926
begin_hunk_0_@_ZN4llvm6object27getLoaderSecSymNameInStrTblINS0_21LoaderSectionHeader32EEENS_8ExpectedINS_9StringRefEEEPKT_m:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.o = inttoptr i64 %2 to ptr
  store ptr @.str.5, ptr %6, align 8, !alias.scope !253
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.o, ptr %i.p, align 8, !alias.scope !253
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 3, ptr %i.q, align 8, !tbaa !56, !alias.scope !253
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 15, ptr %i.r, align 1, !tbaa !59, !alias.scope !253
  store ptr %6, ptr %5, align 8, !alias.scope !258
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.79, ptr %i.s, align 8, !alias.scope !258
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 2, ptr %i.t, align 8, !tbaa !56, !alias.scope !258
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 3, ptr %i.u, align 1, !tbaa !59, !alias.scope !258
  %i.v = inttoptr i64 %i.c to ptr
  store ptr %5, ptr %4, align 8, !alias.scope !263
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.v, ptr %i.w, align 8, !alias.scope !263
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.x, align 8, !tbaa !56, !alias.scope !263
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 15, ptr %i.y, align 1, !tbaa !59, !alias.scope !263
  store ptr %4, ptr %3, align 8, !alias.scope !268
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @.str.7, ptr %i.z, align 8, !alias.scope !268
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 2, ptr %i.aa, align 8, !tbaa !56, !alias.scope !268
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 3, ptr %i.ab, align 1, !tbaa !59, !alias.scope !268
  %i.ac = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23, !noalias !273 ; 2 uses
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #21, !noalias !273
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.ac, ptr noundef nonnull align 8 dereferenceable(34) %3, i32 3, ptr nonnull %i.ad) #21, !noalias !273
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8
  %i.ag = or i8 %i.af, 1
  store i8 %i.ag, ptr %i.ae, align 8
  store ptr %i.ac, ptr %0, align 8, !tbaa !14, !alias.scope !280
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZN4llvm8ExpectedINS_9StringRefEEC2IPKcEEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS6_S1_EEvE4typeE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm6object26LoaderSectionSymbolEntry6413getSymbolNameEPKNS0_21LoaderSectionHeader64E(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected.42") align 8 %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i.i.i = load i32, ptr %i.a, align 1
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i)
  %i.c = zext i32 %i.b to i64
  tail call void @_ZN4llvm6object27getLoaderSecSymNameInStrTblINS0_21LoaderSectionHeader64EEENS_8ExpectedINS_9StringRefEEEPKT_m(ptr dead_on_unwind writable sret(%"class.llvm::Expected.42") align 8 %0, ptr noundef %2, i64 noundef %i.c)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm6object27getLoaderSecSymNameInStrTblINS0_21LoaderSectionHeader64EEENS_8ExpectedINS_9StringRefEEEPKT_m(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected.42") align 8 %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.0.copyload.i.i.i = load i32, ptr %i.a, align 1
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i)
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = icmp ult i64 %2, %i.c
  br i1 %i.d, label %_ZN4llvm8ExpectedINS_9StringRefEEC2IPKcEEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS6_S1_EEvE4typeE.exit, label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm8ExpectedINS_9StringRefEEC2IPKcEEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS6_S1_EEvE4typeE.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.0.copyload.i.i.i6 = load i64, ptr %i.e, align 1
  %i.f = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i6)
  %i.g = getelementptr inbounds i8, ptr %1, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %2 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8
  %i.k = and i8 %i.j, -2
  store i8 %i.k, ptr %i.i, align 8
  %i.l = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #21
  store ptr %i.h, ptr %0, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !252
  br label %bb.b

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.n = inttoptr i64 %2 to ptr
  store ptr @.str.5, ptr %6, align 8, !alias.scope !283
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.n, ptr %i.o, align 8, !alias.scope !283
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 3, ptr %i.p, align 8, !tbaa !56, !alias.scope !283
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 15, ptr %i.q, align 1, !tbaa !59, !alias.scope !283
  store ptr %6, ptr %5, align 8, !alias.scope !288
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.79, ptr %i.r, align 8, !alias.scope !288
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 2, ptr %i.s, align 8, !tbaa !56, !alias.scope !288
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 3, ptr %i.t, align 1, !tbaa !59, !alias.scope !288
  %i.u = inttoptr i64 %i.c to ptr
  store ptr %5, ptr %4, align 8, !alias.scope !293
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.u, ptr %i.v, align 8, !alias.scope !293
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.w, align 8, !tbaa !56, !alias.scope !293
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 15, ptr %i.x, align 1, !tbaa !59, !alias.scope !293
  store ptr %4, ptr %3, align 8, !alias.scope !298
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @.str.7, ptr %i.y, align 8, !alias.scope !298
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 2, ptr %i.z, align 8, !tbaa !56, !alias.scope !298
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 3, ptr %i.aa, align 1, !tbaa !59, !alias.scope !298
  %i.ab = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23, !noalias !303 ; 2 uses
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #21, !noalias !303
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.ab, ptr noundef nonnull align 8 dereferenceable(34) %3, i32 3, ptr nonnull %i.ac) #21, !noalias !303
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8
  %i.af = or i8 %i.ae, 1
  store i8 %i.af, ptr %i.ad, align 8
  store ptr %i.ab, ptr %0, align 8, !tbaa !14, !alias.scope !310
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZN4llvm8ExpectedINS_9StringRefEEC2IPKcEEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS6_S1_EEvE4typeE.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4llvm6object15XCOFFObjectFile29getAdvancedSymbolEntryAddressEmj(i64 noundef %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = mul nuw nsw i64 %i.a, 18
  %i.c = add i64 %i.b, %0
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK4llvm6object15XCOFFObjectFile16getSymbolAuxTypeEm(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = add i64 %1, 17
  %i.b = inttoptr i64 %i.a to ptr
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm6object15XCOFFObjectFile19checkSectionAddressEmm(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i64 %1, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.3, i1 noundef zeroext true) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = sub nuw i64 %1, %2                       ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(96) %0) #21, !inline_history !313
  %i.g = select i1 %i.f, i64 72, i64 40
  %i.h = load ptr, ptr %0, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(96) %0) #21, !inline_history !314 ; 0 uses
  %.pn.in.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pn.i = load ptr, ptr %.pn.in.i, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %.pn.i, i64 2
  %.0.copyload.i.i.i.i = load i16, ptr %i.l, align 1
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i)
  %i.n = zext i16 %i.m to i64
  %i.o = mul nuw nsw i64 %i.g, %i.n
  %.not = icmp ult i64 %i.b, %i.o
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.3, i1 noundef zeroext true) #22
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %0, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(96) %0) #21, !inline_history !313
  %.lhs.trunc = trunc nuw nsw i64 %i.b to i32
  %.rhs.trunc = select i1 %i.s, i32 72, i32 40
  %i.t = urem i32 %.lhs.trunc, %.rhs.trunc
  %.not8 = icmp eq i32 %i.t, 0
  br i1 %.not8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.4, i1 noundef zeroext true) #22
  unreachable

bb.g:                                             ; preds = %bb.e
  ret void
}

; Function Attrs: noreturn
declare void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i64 40, 73) i64 @_ZNK4llvm6object15XCOFFObjectFile20getSectionHeaderSizeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0) #21
  %i.e = select i1 %i.d, i64 72, i64 40
  ret i64 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i16 @_ZNK4llvm6object15XCOFFObjectFile19getNumberOfSectionsEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0) #21 ; 0 uses
  %.pn.in = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pn = load ptr, ptr %.pn.in, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %.pn, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.e, align 1
  %i.f = tail call noundef i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i)
  ret i16 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK4llvm6object15XCOFFObjectFile11toSection32ENS0_11DataRefImplE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(96) %0, i64 %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK4llvm6object15XCOFFObjectFile11toSection64ENS0_11DataRefImplE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(96) %0, i64 %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, ptr } @_ZNK4llvm6object15XCOFFObjectFile11toSymbolRefENS0_11DataRefImplE(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 %1) local_unnamed_addr #5 align 2 {
bb.a:
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %1, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %0, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK4llvm6object15XCOFFObjectFile12fileHeader32Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK4llvm6object15XCOFFObjectFile12fileHeader64Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK4llvm6object15XCOFFObjectFile17auxiliaryHeader32Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !315
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK4llvm6object15XCOFFObjectFile17auxiliaryHeader64Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !315
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK4llvm6object15XCOFFObjectFile20sectionHeaderTable32Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK4llvm6object15XCOFFObjectFile20sectionHeaderTable64Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm6object15XCOFFObjectFile14moveSymbolNextERNS0_11DataRefImplE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !74     ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(96) %0) #21, !inline_history !316 ; 0 uses
  %.pn.i = inttoptr i64 %i.a to ptr
  %.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 17
  %i.f = load i8, ptr %.in.i, align 1, !tbaa !74
  %i.g = zext i8 %i.f to i64
  %i.h = mul nuw nsw i64 %i.g, 18
  %i.i = add i64 %i.a, 18
  %i.j = add i64 %i.i, %i.h
  store i64 %i.j, ptr %1, align 8, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm6object15XCOFFObjectFile19getStringTableEntryEj(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.42") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %i.a = icmp ult i32 %2, 4
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8
  %i.d = and i8 %i.c, -2
  store i8 %i.d, ptr %i.b, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !317  ; 2 uses
  %.not = icmp ne ptr %i.g, null
  %i.h = load i32, ptr %i.e, align 8              ; 2 uses
  %i.i = icmp ugt i32 %i.h, %2
  %or.cond = select i1 %.not, i1 %i.i, i1 false
  br i1 %or.cond, label %_ZN4llvm8ExpectedINS_9StringRefEEC2IPKcEEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS6_S1_EEvE4typeE.exit, label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm8ExpectedINS_9StringRefEEC2IPKcEEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS6_S1_EEvE4typeE.exit: ; preds = %bb.c
  %i.j = zext i32 %2 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8
  %i.n = and i8 %i.m, -2
  store i8 %i.n, ptr %i.l, align 8
  %i.o = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #21
  store ptr %i.k, ptr %0, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !252
  br label %bb.d

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.q = zext i32 %2 to i64
  %i.r = inttoptr i64 %i.q to ptr
  store ptr @.str.5, ptr %6, align 8, !alias.scope !318
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.r, ptr %i.s, align 8, !alias.scope !318
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 3, ptr %i.t, align 8, !tbaa !56, !alias.scope !318
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 15, ptr %i.u, align 1, !tbaa !59, !alias.scope !318
  store ptr %6, ptr %5, align 8, !alias.scope !323
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.6, ptr %i.v, align 8, !alias.scope !323
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 2, ptr %i.w, align 8, !tbaa !56, !alias.scope !323
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 3, ptr %i.x, align 1, !tbaa !59, !alias.scope !323
  %i.y = zext i32 %i.h to i64
  %i.z = inttoptr i64 %i.y to ptr
  store ptr %5, ptr %4, align 8, !alias.scope !328
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.z, ptr %i.aa, align 8, !alias.scope !328
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.ab, align 8, !tbaa !56, !alias.scope !328
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 15, ptr %i.ac, align 1, !tbaa !59, !alias.scope !328
  store ptr %4, ptr %3, align 8, !alias.scope !333
end_hunk_0
