inline.NumInlined: 1060
inline.NumDeleted: 577
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN8rawspeed23PanasonicV8DecompressorD2Ev:bb.a
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !call_target !89, !inline_history !88
  br label %_ZN8rawspeed8RawImageD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !51
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN8rawspeed8RawImageD2Ev.exit, !prof !90

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZN8rawspeed8RawImageD2Ev.exit

_ZN8rawspeed8RawImageD2Ev.exit:                   ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed23PanasonicV8Decompressor25DecompressorParamsBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #28
  br label %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EED2Ev.exit

_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !70   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !93
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #28
  br label %_ZNSt6vectorIN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryESaIS2_EED2Ev.exit

_ZNSt6vectorIN8rawspeed23PanasonicV8Decompressor15DecoderLUTEntryESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN8rawspeed12iRectangle2DESaIS1_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN8rawspeed12_GLOBAL__N_120DecompressorV8ParamsD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(162) dereferenceable(162) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #28
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorItSaItEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorItSaItEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #28
  br label %_ZNSt6vectorItSaItEED2Ev.exit2

_ZNSt6vectorItSaItEED2Ev.exit2:                   ; preds = %_ZNSt6vectorItSaItEED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !44   ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorItSaItEED2Ev.exit4, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorItSaItEED2Ev.exit2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !48
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #28
  br label %_ZNSt6vectorItSaItEED2Ev.exit4

_ZNSt6vectorItSaItEED2Ev.exit4:                   ; preds = %_ZNSt6vectorItSaItEED2Ev.exit2, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !42   ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorItSaItEED2Ev.exit4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !49
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #28
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorItSaItEED2Ev.exit4, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i6 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i6, label %_ZNSt6vectorIjSaIjEED2Ev.exit7, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !49
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #28
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit7

_ZNSt6vectorIjSaIjEED2Ev.exit7:                   ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.f
  %i.aj = load ptr, ptr %0, align 8, !tbaa !42    ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIjSaIjEED2Ev.exit9, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit7
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !49
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #28
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit9

_ZNSt6vectorIjSaIjEED2Ev.exit9:                   ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit7, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed10Rw2Decoder17decodeRawInternalEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rawspeed::RawImage") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(104) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rawspeed::UncompressedDecompressor", align 8 ; 7 uses
  %3 = alloca %"class.rawspeed::ByteStream", align 8 ; 4 uses
  %4 = alloca %"class.rawspeed::RawImage", align 16 ; 4 uses
  %5 = alloca %"class.rawspeed::iRectangle2D", align 8 ; 6 uses
  %6 = alloca %"class.rawspeed::UncompressedDecompressor", align 8 ; 7 uses
  %7 = alloca %"class.rawspeed::ByteStream", align 8 ; 4 uses
  %8 = alloca %"class.rawspeed::RawImage", align 16 ; 4 uses
  %9 = alloca %"class.rawspeed::iRectangle2D", align 8 ; 6 uses
  %10 = alloca %"class.rawspeed::PanasonicV4Decompressor", align 8 ; 9 uses
  %11 = alloca %"class.rawspeed::RawImage", align 16 ; 4 uses
  %12 = alloca %"class.rawspeed::ByteStream", align 8 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.rawspeed::PanasonicV4Decompressor", align 8 ; 9 uses
  %15 = alloca %"class.rawspeed::RawImage", align 16 ; 4 uses
  %16 = alloca %"class.rawspeed::ByteStream", align 8 ; 4 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.rawspeed::PanasonicV5Decompressor", align 8 ; 9 uses
  %19 = alloca %"class.rawspeed::RawImage", align 16 ; 4 uses
  %20 = alloca %"class.rawspeed::ByteStream", align 8 ; 4 uses
  %21 = alloca %"class.rawspeed::PanasonicV6Decompressor", align 8 ; 7 uses
  %22 = alloca %"class.rawspeed::RawImage", align 16 ; 4 uses
  %23 = alloca %"class.rawspeed::ByteStream", align 8 ; 4 uses
  %24 = alloca %"class.rawspeed::PanasonicV7Decompressor", align 8 ; 7 uses
  %25 = alloca %"class.rawspeed::RawImage", align 16 ; 4 uses
  %26 = alloca %"class.rawspeed::ByteStream", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 2 uses
  %i.c = tail call noundef ptr @_ZNK8rawspeed7TiffIFD17getEntryRecursiveENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.b, i16 noundef zeroext 280) #31
  %.not366 = icmp eq ptr %i.c, null               ; 2 uses
  %. = select i1 %.not366, i16 273, i16 280
  %i.d = tail call noundef ptr @_ZNK8rawspeed7TiffIFD13getIFDWithTagENS_7TiffTagEj(ptr noundef nonnull align 8 dereferenceable(104) %i.b, i16 noundef zeroext %., i32 noundef 0) ; 9 uses
  %i.e = tail call noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i16 noundef zeroext 3)
  %i.f = tail call noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i32 noundef 0) ; 4 uses
  %i.g = zext i16 %i.f to i32                     ; 2 uses
  %i.h = tail call noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i16 noundef zeroext 2)
  %i.i = tail call noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.h, i32 noundef 0) ; 5 uses
  %i.j = zext i16 %i.i to i32                     ; 5 uses
  br i1 %.not366, label %bb.b, label %bb.ch

bb.b:                                             ; preds = %bb.a
  %i.k = add i16 %i.i, -4331
  %i.l = icmp ult i16 %i.k, -4330
  %i.m = add i16 %i.f, -2752
  %i.n = icmp ult i16 %i.m, -2751
  %or.cond5 = or i1 %i.n, %i.l
  br i1 %or.cond5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10Rw2Decoder17decodeRawInternalEv, i32 noundef %i.j, i32 noundef %i.g) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.o = tail call noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i16 noundef zeroext 273) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  %i.q = load i32, ptr %i.p, align 4, !tbaa !105  ; 2 uses
  %.not128 = icmp eq i32 %i.q, 1
  br i1 %.not128, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10Rw2Decoder17decodeRawInternalEv, i32 noundef %i.q) #20
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.r = tail call noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i32 noundef 0) ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.t = zext i32 %i.r to i64                     ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !111
  %.not367.not = icmp ult i32 %i.r, %i.v
  br i1 %.not367.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10Rw2Decoder17decodeRawInternalEv) #20
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %.sroa.4364.0.insert.ext = zext nneg i16 %i.f to i64
  %.sroa.4364.0.insert.shift = shl nuw nsw i64 %.sroa.4364.0.insert.ext, 32
  %.sroa.0363.0.insert.ext = zext nneg i16 %i.i to i64
  %.sroa.0363.0.insert.insert = or disjoint i64 %.sroa.4364.0.insert.shift, %.sroa.0363.0.insert.ext ; 3 uses
  store i64 %.sroa.0363.0.insert.insert, ptr %i.y, align 8
  %i.z = load i32, ptr %i.u, align 8, !tbaa !111  ; 3 uses
  %i.aa = sub i32 %i.z, %i.r                      ; 5 uses
  %i.ab = mul nuw nsw i32 %i.j, %i.g              ; 3 uses
  %i.ac = shl nuw nsw i32 %i.ab, 1
  %.not129 = icmp ult i32 %i.aa, %i.ac
  br i1 %.not129, label %bb.af, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %.not.i = icmp ugt i32 %i.r, %i.z
  br i1 %.not.i, label %bb.j, label %_ZNK8rawspeed6Buffer10getSubViewEj.exit

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.39, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEj) #20
  unreachable

_ZNK8rawspeed6Buffer10getSubViewEj.exit:          ; preds = %bb.i
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !112
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.t
  %i.af = icmp sgt i32 %i.aa, -1
  tail call void @llvm.assume(i1 %i.af)
  %.sroa.2360.8.insert.ext = zext nneg i32 %i.aa to i64
  %.sroa.2360.8.insert.insert = or disjoint i64 %.sroa.2360.8.insert.ext, 244834610708480
  store ptr %i.ae, ptr %3, align 8
  %.sroa.2.0..0..sroa_idx.i142 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.2360.8.insert.insert, ptr %.sroa.2.0..0..sroa_idx.i142, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.ag, align 8, !tbaa !113
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !59 ; 2 uses
  %i.ak = load <2 x ptr>, ptr %i.w, align 8, !tbaa !60
  store <2 x ptr> %i.ak, ptr %4, align 16, !tbaa !60
  %.not.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i, label %_ZN8rawspeed8RawImageC2ERKS0_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK8rawspeed6Buffer10getSubViewEj.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = load i32, ptr %i.al, align 4, !tbaa !51
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.al, align 4, !tbaa !51
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit

bb.m:                                             ; preds = %bb.k
  %i.ap = atomicrmw volatile add ptr %i.al, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit

_ZN8rawspeed8RawImageC2ERKS0_.exit:               ; preds = %_ZNK8rawspeed6Buffer10getSubViewEj.exit, %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store i64 0, ptr %5, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.sroa.0363.0.insert.insert, ptr %i.aq, align 8
  %i.ar = shl nuw nsw i32 %i.j, 1
  invoke void @_ZN8rawspeed24UncompressedDecompressorC1ENS_10ByteStreamENS_8RawImageERKNS_12iRectangle2DEiiNS_8BitOrderE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull byval(%"class.rawspeed::ByteStream") align 8 %3, ptr noundef nonnull align 8 %4, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %i.ar, i32 noundef 16, i8 noundef zeroext 0)
          to label %bb.n unwind label %bb.ac

bb.n:                                             ; preds = %_ZN8rawspeed8RawImageC2ERKS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.as = load ptr, ptr %i.ah, align 8, !tbaa !59 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i, label %_ZN8rawspeed8RawImageD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.at, align 8, !tbaa !76
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !78
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !79
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #27, !call_target !81, !inline_history !88
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !79
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #27, !call_target !89, !inline_history !88
  br label %_ZN8rawspeed8RawImageD2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i143 = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i.i143, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 8, !tbaa !51
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i = phi i32 [ %i.aw, %bb.r ], [ %i.bg, %bb.s ]
  %i.bh = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bh, label %bb.t, label %_ZN8rawspeed8RawImageD2Ev.exit, !prof !90

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #27
  br label %_ZN8rawspeed8RawImageD2Ev.exit

_ZN8rawspeed8RawImageD2Ev.exit:                   ; preds = %bb.n, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.t
  %i.bi = load ptr, ptr %i.w, align 8, !tbaa !19
  invoke void @_ZN8rawspeed12RawImageData10createDataEv(ptr noundef nonnull align 8 dereferenceable(624) %i.bi)
          to label %bb.u unwind label %bb.ad

bb.u:                                             ; preds = %_ZN8rawspeed8RawImageD2Ev.exit
  invoke void @_ZN8rawspeed24UncompressedDecompressor33decode12BitRawUnpackedLeftAlignedILNS_10EndiannessE57005EEEvv(ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.v unwind label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !59 ; 8 uses
  %.not.i.i.i.i144 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i144, label %_ZN8rawspeed24UncompressedDecompressorD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 4294967297
  %i.bo = trunc i64 %i.bm to i32                  ; 2 uses
  br i1 %i.bn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.bl, align 8, !tbaa !76
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 0, ptr %i.bp, align 4, !tbaa !78
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !79
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #27, !call_target !81, !inline_history !114
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !79
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #27, !call_target !89, !inline_history !114
  br label %_ZN8rawspeed24UncompressedDecompressorD2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i145 = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i.i.i145, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bx = add nsw i32 %i.bo, -1
  store i32 %i.bx, ptr %i.bl, align 8, !tbaa !51
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.by = atomicrmw volatile add ptr %i.bl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i = phi i32 [ %i.bo, %bb.z ], [ %i.by, %bb.aa ]
  %i.bz = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bz, label %bb.ab, label %_ZN8rawspeed24UncompressedDecompressorD2Ev.exit, !prof !90

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #27
  br label %_ZN8rawspeed24UncompressedDecompressorD2Ev.exit

_ZN8rawspeed24UncompressedDecompressorD2Ev.exit:  ; preds = %bb.v, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.cd

bb.ac:                                            ; preds = %_ZN8rawspeed8RawImageC2ERKS0_.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #27
  br label %bb.ae

bb.ad:                                            ; preds = %bb.u, %_ZN8rawspeed8RawImageD2Ev.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rawspeed24UncompressedDecompressorD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #27
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn138 = phi { ptr, i32 } [ %i.cb, %bb.ad ], [ %i.ca, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.gq

bb.af:                                            ; preds = %bb.h
  %i.cc = lshr i32 %i.ab, 1
  %i.cd = add nuw nsw i32 %i.cc, %i.ab
  %.not130 = icmp samesign ult i32 %i.aa, %i.cd
  br i1 %.not130, label %bb.bd, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %.not.i146 = icmp ugt i32 %i.r, %i.z
  br i1 %.not.i146, label %bb.ah, label %_ZNK8rawspeed6Buffer10getSubViewEj.exit149

bb.ah:                                            ; preds = %bb.ag
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.39, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEj) #20
  unreachable

_ZNK8rawspeed6Buffer10getSubViewEj.exit149:       ; preds = %bb.ag
  %i.ce = load ptr, ptr %i.s, align 8, !tbaa !112
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.t
  %.sroa.2352.8.insert.ext = zext nneg i32 %i.aa to i64
  %.sroa.2352.8.insert.insert = or disjoint i64 %.sroa.2352.8.insert.ext, 244834610708480
  store ptr %i.cf, ptr %7, align 8
  %.sroa.2.0..0..sroa_idx.i151 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.sroa.2352.8.insert.insert, ptr %.sroa.2.0..0..sroa_idx.i151, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.cg, align 8, !tbaa !113
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !59 ; 2 uses
  %i.ck = load <2 x ptr>, ptr %i.w, align 8, !tbaa !60
  store <2 x ptr> %i.ck, ptr %8, align 16, !tbaa !60
  %.not.i.i.i.i152 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i152, label %_ZN8rawspeed8RawImageC2ERKS0_.exit154, label %bb.ai

bb.ai:                                            ; preds = %_ZNK8rawspeed6Buffer10getSubViewEj.exit149
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 3 uses
  %i.cm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i153 = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i.i.i153, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cn = load i32, ptr %i.cl, align 4, !tbaa !51
  %i.co = add nsw i32 %i.cn, 1
  store i32 %i.co, ptr %i.cl, align 4, !tbaa !51
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit154

bb.ak:                                            ; preds = %bb.ai
  %i.cp = atomicrmw volatile add ptr %i.cl, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit154

_ZN8rawspeed8RawImageC2ERKS0_.exit154:            ; preds = %_ZNK8rawspeed6Buffer10getSubViewEj.exit149, %bb.aj, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store i64 0, ptr %9, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.sroa.0363.0.insert.insert, ptr %i.cq, align 8
  %27 = lshr i32 %i.j, 1
  %28 = add nuw nsw i32 %27, %i.j
  %.lhs.trunc = add nuw nsw i16 %i.i, 2
  %i.cr = udiv i16 %.lhs.trunc, 10
  %.zext = zext nneg i16 %i.cr to i32
  %i.cs = add nuw nsw i32 %28, %.zext
  invoke void @_ZN8rawspeed24UncompressedDecompressorC1ENS_10ByteStreamENS_8RawImageERKNS_12iRectangle2DEiiNS_8BitOrderE(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull byval(%"class.rawspeed::ByteStream") align 8 %7, ptr noundef nonnull align 8 %8, ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef %i.cs, i32 noundef 12, i8 noundef zeroext 0)
          to label %bb.al unwind label %bb.ba

bb.al:                                            ; preds = %_ZN8rawspeed8RawImageC2ERKS0_.exit154
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.ct = load ptr, ptr %i.ch, align 8, !tbaa !59 ; 8 uses
  %.not.i.i.i155 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i155, label %_ZN8rawspeed8RawImageD2Ev.exit159, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 4 uses
  %i.cv = load atomic i64, ptr %i.cu acquire, align 8 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 4294967297
  %i.cx = trunc i64 %i.cv to i32                  ; 2 uses
  br i1 %i.cw, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.cu, align 8, !tbaa !76
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  store i32 0, ptr %i.cy, align 4, !tbaa !78
  %i.cz = load ptr, ptr %i.ct, align 8, !tbaa !79
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #27, !call_target !81, !inline_history !88
  %i.dc = load ptr, ptr %i.ct, align 8, !tbaa !79
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #27, !call_target !89, !inline_history !88
  br label %_ZN8rawspeed8RawImageD2Ev.exit159

bb.ao:                                            ; preds = %bb.am
  %i.df = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i156 = icmp eq i8 %i.df, 0
  br i1 %.not.i.i.i.i156, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dg = add nsw i32 %i.cx, -1
  store i32 %i.dg, ptr %i.cu, align 8, !tbaa !51
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i157

bb.aq:                                            ; preds = %bb.ao
  %i.dh = atomicrmw volatile add ptr %i.cu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i157

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i157: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i.i158 = phi i32 [ %i.cx, %bb.ap ], [ %i.dh, %bb.aq ]
  %i.di = icmp eq i32 %.0.i.i.i.i.i158, 1
  br i1 %i.di, label %bb.ar, label %_ZN8rawspeed8RawImageD2Ev.exit159, !prof !90

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i157
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #27
  br label %_ZN8rawspeed8RawImageD2Ev.exit159

_ZN8rawspeed8RawImageD2Ev.exit159:                ; preds = %bb.al, %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i157, %bb.ar
  %i.dj = load ptr, ptr %i.w, align 8, !tbaa !19
  invoke void @_ZN8rawspeed12RawImageData10createDataEv(ptr noundef nonnull align 8 dereferenceable(624) %i.dj)
          to label %bb.as unwind label %bb.bb

bb.as:                                            ; preds = %_ZN8rawspeed8RawImageD2Ev.exit159
  invoke void @_ZN8rawspeed24UncompressedDecompressor25decode12BitRawWithControlILNS_10EndiannessE57005EEEvv(ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %bb.at unwind label %bb.bb

bb.at:                                            ; preds = %bb.as
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !59 ; 8 uses
  %.not.i.i.i.i160 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i160, label %_ZN8rawspeed24UncompressedDecompressorD2Ev.exit164, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 4 uses
  %i.dn = load atomic i64, ptr %i.dm acquire, align 8 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 4294967297
  %i.dp = trunc i64 %i.dn to i32                  ; 2 uses
  br i1 %i.do, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.dm, align 8, !tbaa !76
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store i32 0, ptr %i.dq, align 4, !tbaa !78
  %i.dr = load ptr, ptr %i.dl, align 8, !tbaa !79
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #27, !call_target !81, !inline_history !114
  %i.du = load ptr, ptr %i.dl, align 8, !tbaa !79
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #27, !call_target !89, !inline_history !114
  br label %_ZN8rawspeed24UncompressedDecompressorD2Ev.exit164

bb.aw:                                            ; preds = %bb.au
  %i.dx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i161 = icmp eq i8 %i.dx, 0
  br i1 %.not.i.i.i.i.i161, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dy = add nsw i32 %i.dp, -1
  store i32 %i.dy, ptr %i.dm, align 8, !tbaa !51
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i162

bb.ay:                                            ; preds = %bb.aw
  %i.dz = atomicrmw volatile add ptr %i.dm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i162

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i162: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i.i163 = phi i32 [ %i.dp, %bb.ax ], [ %i.dz, %bb.ay ]
  %i.ea = icmp eq i32 %.0.i.i.i.i.i.i163, 1
  br i1 %i.ea, label %bb.az, label %_ZN8rawspeed24UncompressedDecompressorD2Ev.exit164, !prof !90

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i162
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dl) #27
  br label %_ZN8rawspeed24UncompressedDecompressorD2Ev.exit164

_ZN8rawspeed24UncompressedDecompressorD2Ev.exit164: ; preds = %bb.at, %bb.av, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i162, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.cd

bb.ba:                                            ; preds = %_ZN8rawspeed8RawImageC2ERKS0_.exit154
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #27
  br label %bb.bc

bb.bb:                                            ; preds = %bb.as, %_ZN8rawspeed8RawImageD2Ev.exit159
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rawspeed24UncompressedDecompressorD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %6) #27
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.pn136 = phi { ptr, i32 } [ %i.ec, %bb.bb ], [ %i.eb, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.gq

bb.bd:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.ed = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !59 ; 2 uses
  %i.eg = load <2 x ptr>, ptr %i.w, align 8, !tbaa !60
  store <2 x ptr> %i.eg, ptr %11, align 16, !tbaa !60
  %.not.i.i.i.i165 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i165, label %_ZN8rawspeed8RawImageC2ERKS0_.exit167, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 3 uses
  %i.ei = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i166 = icmp eq i8 %i.ei, 0
  br i1 %.not.i.i.i.i.i166, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ej = load i32, ptr %i.eh, align 4, !tbaa !51
  %i.ek = add nsw i32 %i.ej, 1
  store i32 %i.ek, ptr %i.eh, align 4, !tbaa !51
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit167

bb.bg:                                            ; preds = %bb.be
  %i.el = atomicrmw volatile add ptr %i.eh, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit167

_ZN8rawspeed8RawImageC2ERKS0_.exit167:            ; preds = %bb.bd, %bb.bf, %bb.bg
  %i.em = load i32, ptr %i.u, align 8, !tbaa !111 ; 2 uses
  %.not.i168 = icmp ugt i32 %i.r, %i.em
  br i1 %.not.i168, label %bb.bh, label %._crit_edge.i.i

bb.bh:                                            ; preds = %_ZN8rawspeed8RawImageC2ERKS0_.exit167
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.39, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEj) #20
          to label %.noexc unwind label %bb.by

.noexc:                                           ; preds = %bb.bh
  unreachable

._crit_edge.i.i:                                  ; preds = %_ZN8rawspeed8RawImageC2ERKS0_.exit167
  %i.en = sub nuw i32 %i.em, %i.r                 ; 2 uses
  %i.eo = load ptr, ptr %i.s, align 8, !tbaa !112
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.t
  %i.eq = icmp sgt i32 %i.en, -1
  tail call void @llvm.assume(i1 %i.eq)
  %.sroa.2344.8.insert.ext = zext nneg i32 %i.en to i64
  %.sroa.2344.8.insert.insert = or disjoint i64 %.sroa.2344.8.insert.ext, 244834610708480
  store ptr %i.ep, ptr %12, align 8
  %.sroa.2.0..0..sroa_idx.i173 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %.sroa.2344.8.insert.insert, ptr %.sroa.2.0..0..sroa_idx.i173, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 0, ptr %i.er, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.es = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 8 uses
  store ptr %i.es, ptr %13, align 8, !tbaa !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.es, ptr noundef nonnull align 1 dereferenceable(15) @.str.7, i64 15, i1 false)
  %i.et = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 15, ptr %i.et, align 8, !tbaa !11
  %i.eu = getelementptr inbounds nuw i8, ptr %13, i64 31
  store i8 0, ptr %i.eu, align 1, !tbaa !18
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !116 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
end_hunk_0
