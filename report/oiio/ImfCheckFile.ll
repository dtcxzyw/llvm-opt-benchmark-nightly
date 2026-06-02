inline.NumInlined: 708
inline.NumDeleted: 300
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110PtrIStream16readMemoryMappedEi:bb.a

bb.d:                                             ; preds = %_ZNSolsEl.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.r) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.s, %bb.d ], [ %i.t, %bb.e ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn

bb.g:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !54
  ret ptr %i.b

bb.h:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110PtrIStream5tellgEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  ret i64 %i.g
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110PtrIStream5seekgEm(ptr noundef nonnull align 8 captures(none) dereferenceable(64) %0, i64 noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %1 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.f = icmp ugt ptr %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @_Z13iex_debugTrapv()
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.18, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.i = call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #28
          to label %bb.h unwind label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.i) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.k, %bb.e ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn

bb.g:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.c, ptr %i.l, align 8, !tbaa !54
  ret void

bb.h:                                             ; preds = %bb.c
  unreachable
}

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_57IStream5clearEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110PtrIStream4sizeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  ret i64 %i.g
}

declare noundef zeroext i1 @_ZNK27OpenImageIO_v3_1_Imf__3_3_57IStream15isStatelessReadEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #6

declare noundef i64 @_ZN27OpenImageIO_v3_1_Imf__3_3_57IStream4readEPvmm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i64 noundef, i64 noundef) unnamed_addr #6

declare void @_Z13iex_debugTrapv() local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #6

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN7Iex_3_38InputExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #6

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN7Iex_3_38InputExcD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #18

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

declare noundef i64 @_ZN27OpenImageIO_v3_1_Imf__3_3_521CompositeDeepScanLine21getMaximumSampleCountEv() local_unnamed_addr #6

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header15getMaxImageSizeERiS1_(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_521CompositeDeepScanLine21setMaximumSampleCountEl(i64 noundef) local_unnamed_addr #6

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header15setMaxImageSizeEii(i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header14setMaxTileSizeEii(i32 noundef, i32 noundef) local_unnamed_addr #6

declare noundef i32 @_ZN27OpenImageIO_v3_1_Imf__3_3_517globalThreadCountEv() local_unnamed_addr #6

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFileC1EPKcib(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef, i1 noundef zeroext) unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile6headerEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header4typeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN27OpenImageIO_v3_1_Imf__3_3_57isTiledERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

declare noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header15tileDescriptionEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #6

declare noundef i64 @_ZN27OpenImageIO_v3_1_Imf__3_3_522calculateBytesPerPixelERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113readMultiPartERNS_18MultiPartInputFileEbb(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::DeepFrameBuffer", align 8 ; 15 uses
  %4 = alloca %"struct.OpenImageIO_v3_1_Imf__3_3_5::Slice", align 8 ; 5 uses
  %5 = alloca %"struct.OpenImageIO_v3_1_Imf__3_3_5::DeepSlice", align 8 ; 5 uses
  %6 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::Array.51", align 8 ; 7 uses
  %7 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::DeepFrameBuffer", align 8 ; 15 uses
  %8 = alloca %"struct.OpenImageIO_v3_1_Imf__3_3_5::Slice", align 8 ; 5 uses
  %9 = alloca %"struct.OpenImageIO_v3_1_Imf__3_3_5::DeepSlice", align 8 ; 5 uses
  %10 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::FrameBuffer", align 8 ; 14 uses
  %11 = alloca %"struct.OpenImageIO_v3_1_Imf__3_3_5::Slice", align 8 ; 5 uses
  %12 = alloca %"struct.OpenImageIO_v3_1_Imf__3_3_5::Slice", align 8 ; 5 uses
  %13 = alloca %"struct.OpenImageIO_v3_1_Imf__3_3_5::Slice", align 8 ; 5 uses
  %14 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::FrameBuffer", align 8 ; 14 uses
  %15 = alloca %"struct.OpenImageIO_v3_1_Imf__3_3_5::Slice", align 8 ; 5 uses
  %16 = alloca %"struct.OpenImageIO_v3_1_Imf__3_3_5::Slice", align 8 ; 5 uses
  %17 = alloca %"struct.OpenImageIO_v3_1_Imf__3_3_5::Slice", align 8 ; 5 uses
  %18 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::InputPart", align 8 ; 13 uses
  %19 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::TiledInputPart", align 8 ; 22 uses
  %20 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::DeepScanLineInputPart", align 8 ; 11 uses
  %21 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::DeepTiledInputPart", align 8 ; 28 uses
  %i.a = tail call noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile5partsEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 48
  %or.cond.i142 = or i1 %1, %2
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 48
  br label %bb.b

._crit_edge:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit161.thread192, %bb.a
  %.088.lcssa = phi i1 [ false, %bb.a ], [ %.9, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit161.thread192 ]
  ret i1 %.088.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit161.thread192
  %.088527 = phi i1 [ false, %.lr.ph ], [ %.9, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit161.thread192 ] ; 2 uses
  %.091526 = phi i32 [ 0, %.lr.ph ], [ %i.alt, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit161.thread192 ] ; 16 uses
  %i.z = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile6headerEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.091526) ; 4 uses
  %i.aa = call noundef zeroext i1 @_ZN27OpenImageIO_v3_1_Imf__3_3_59hasEnvmapERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %i.z)
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_56envmapERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %i.z)
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !126
  %switch.i = icmp ult i32 %i.ac, 2
  br i1 %switch.i, label %bb.d, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110enumsValidERKNS_6HeaderE.exit.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ad = call noundef zeroext i1 @_ZN27OpenImageIO_v3_1_Imf__3_3_517hasDeepImageStateERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %i.z)
  br i1 %i.ad, label %bb.e, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110enumsValidERKNS_6HeaderE.exit

bb.e:                                             ; preds = %bb.d
  %i.ae = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_514deepImageStateERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %i.z)
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !128
  %or.cond.i = icmp ugt i32 %i.af, 3
  br i1 %or.cond.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110enumsValidERKNS_6HeaderE.exit.thread, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110enumsValidERKNS_6HeaderE.exit

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110enumsValidERKNS_6HeaderE.exit.thread: ; preds = %bb.e, %bb.c
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110enumsValidERKNS_6HeaderE.exit

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110enumsValidERKNS_6HeaderE.exit: ; preds = %bb.d, %bb.e, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110enumsValidERKNS_6HeaderE.exit.thread
  %i.ag = phi i1 [ true, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110enumsValidERKNS_6HeaderE.exit.thread ], [ %.088527, %bb.e ], [ %.088527, %bb.d ] ; 5 uses
  %i.ah = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile6headerEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.091526)
  %i.ai = call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %i.ah) ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !130
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !130
  %i.am = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile6headerEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.091526)
  %i.an = call noundef i64 @_ZN27OpenImageIO_v3_1_Imf__3_3_522calculateBytesPerPixelERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %i.am)
  %i.ao = sext i32 %i.al to i64
  %i.ap = sext i32 %i.aj to i64
  %i.aq = sub nsw i64 %i.ao, %i.ap                ; 2 uses
  %i.ar = add nsw i64 %i.aq, 1
  %i.as = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile6headerEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.091526)
  %i.at = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header11compressionEv(ptr noundef nonnull align 8 dereferenceable(49) %i.as)
  %i.au = load i32, ptr %i.at, align 4, !tbaa !132
  %i.av = call noundef i32 @_ZN27OpenImageIO_v3_1_Imf__3_3_516numLinesInBufferENS_11CompressionE(i32 noundef %i.au)
  %i.aw = sext i32 %i.av to i64
  %sext = shl i64 %i.an, 32
  %i.ax = ashr exact i64 %sext, 32                ; 5 uses
  %i.ay = mul nsw i64 %i.ax, %i.ar
  %i.az = mul i64 %i.ay, %i.aw
  %i.ba = icmp ugt i64 %i.az, 8000000             ; 2 uses
  %i.bb = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile6headerEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.091526)
  %i.bc = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header4typeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(49) %i.bb)
  %i.bd = call noundef zeroext i1 @_ZN27OpenImageIO_v3_1_Imf__3_3_57isTiledERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.bc)
  br i1 %i.bd, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110enumsValidERKNS_6HeaderE.exit
  %i.be = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile6headerEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.091526)
  %i.bf = call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header15tileDescriptionEv(ptr noundef nonnull align 8 dereferenceable(49) %i.be) ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !20
  %i.bh = zext i32 %i.bg to i64                   ; 3 uses
  %i.bi = add nsw i64 %i.aq, %i.bh
  %i.bj = udiv i64 %i.bi, %i.bh
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !24
  %i.bm = zext i32 %i.bl to i64
  %i.bn = mul nuw i64 %i.bm, %i.bh                ; 2 uses
  %i.bo = mul i64 %i.bj, %i.ax
  %i.bp = mul i64 %i.bo, %i.bn
  %i.bq = icmp ugt i64 %i.bp, 8000000
  %spec.select100 = select i1 %i.bq, i1 true, i1 %i.ba
  %i.br = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile6headerEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.091526)
  %i.bs = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header4typeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(49) %i.br) ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !17 ; 3 uses
  %i.bv = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L8DEEPTILEB5cxx11E, i64 8), align 8, !tbaa !17
  %i.bw = icmp eq i64 %i.bu, %i.bv
  br i1 %i.bw, label %bb.g, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread166

bb.g:                                             ; preds = %bb.f
  %i.bx = icmp eq i64 %i.bu, 0
  br i1 %i.bx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.g
  %i.by = load ptr, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L8DEEPTILEB5cxx11E, align 8, !tbaa !25
  %i.bz = load ptr, ptr %i.bs, align 8, !tbaa !25
  %bcmp.i = call i32 @bcmp(ptr %i.bz, ptr %i.by, i64 %i.bu)
  %i.ca = icmp eq i32 %bcmp.i, 0
  br i1 %i.ca, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread166

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.g, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %i.ax, i64 4)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread166

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread166: ; preds = %bb.f, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %.pn = phi i64 [ %.sroa.speculated, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ %i.ax, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %i.ax, %bb.f ]
  %.087 = mul i64 %.pn, %i.bn
  %i.cb = icmp ugt i64 %.087, 1000000
  %i.cc = and i1 %1, %i.cb
  br label %bb.h

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread166, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110enumsValidERKNS_6HeaderE.exit
  %.196 = phi i1 [ %i.cc, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread166 ], [ false, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110enumsValidERKNS_6HeaderE.exit ] ; 2 uses
  %.294 = phi i1 [ %spec.select100, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread166 ], [ %i.ba, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_110enumsValidERKNS_6HeaderE.exit ]
  %or.cond = and i1 %1, %.294                     ; 2 uses
  br i1 %or.cond, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread171, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputPartC1ERNS_18MultiPartInputFileEi(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.091526)
          to label %bb.j unwind label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.cd = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.ce = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %i.cd)
          to label %bb.l unwind label %bb.s       ; 4 uses

bb.l:                                             ; preds = %bb.k
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !134 ; 2 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = load i32, ptr %i.ce, align 4, !tbaa !136 ; 5 uses
  %i.cj = sext i32 %i.ci to i64
  %i.ck = sub nsw i64 %i.ch, %i.cj                ; 4 uses
  %i.cl = add nsw i64 %i.ck, 1                    ; 8 uses
  %i.cm = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.cn = invoke noundef i64 @_ZN27OpenImageIO_v3_1_Imf__3_3_522calculateBytesPerPixelERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %i.cm)
          to label %bb.n unwind label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.co = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_59InputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.cp = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header11compressionEv(ptr noundef nonnull align 8 dereferenceable(49) %i.co)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !132
  %i.cr = invoke noundef i32 @_ZN27OpenImageIO_v3_1_Imf__3_3_516numLinesInBufferENS_11CompressionE(i32 noundef %i.cq)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  br i1 %1, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cs = sext i32 %i.cr to i64
  %i.ct = mul i64 %i.cn, %i.cl
  %i.cu = mul i64 %i.ct, %i.cs
  %i.cv = icmp ugt i64 %i.cu, 8000000
  br i1 %i.cv, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112readScanlineINS_9InputPartEEEbRT_bb.exit.thread168, label %bb.v

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_112readScanlineINS_9InputPartEEEbRT_bb.exit.thread168: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread171

bb.s:                                             ; preds = %bb.k, %bb.j
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bj

bb.t:                                             ; preds = %bb.m, %bb.l
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bj

bb.u:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bj

bb.v:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  store i32 0, ptr %i.c, align 8, !tbaa !137
  store ptr null, ptr %i.d, align 8, !tbaa !142
  store ptr %i.c, ptr %i.e, align 8, !tbaa !143
  store ptr %i.c, ptr %i.f, align 8, !tbaa !144
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113readMultiPartERNS_18MultiPartInputFileEbb:bb.a
  %i.mg = ptrtoint ptr %.sroa.0159.0170227.i to i64
  %i.mh = sub i64 %i.mf, %i.mg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0159.0170227.i, i64 noundef %i.mh) #26
  br label %_ZNSt6vectorIN9Imath_3_14halfESaIS1_EED2Ev.exit130.i

_ZNSt6vectorIN9Imath_3_14halfESaIS1_EED2Ev.exit130.i: ; preds = %bb.ea, %_ZNSt6vectorIfSaIfEED2Ev.exit128.i, %bb.cn
  %.pn108.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.is, %bb.cn ], [ %.pn108.pn.pn.pn.i, %_ZNSt6vectorIfSaIfEED2Ev.exit128.i ], [ %.pn108.pn.pn.pn229.i, %bb.ea ]
  %i.mi = load ptr, ptr %i.i, align 8, !tbaa !142
  invoke void @_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef %i.mi)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferD2Ev.exit131.i unwind label %bb.eb

bb.eb:                                            ; preds = %_ZNSt6vectorIN9Imath_3_14halfESaIS1_EED2Ev.exit130.i
  %i.mj = landingpad { ptr, i32 }
          catch ptr null
  %i.mk = extractvalue { ptr, i32 } %i.mj, 0
  call void @__clang_call_terminate(ptr %i.mk) #30
  unreachable

_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferD2Ev.exit131.i: ; preds = %_ZNSt6vectorIN9Imath_3_14halfESaIS1_EED2Ev.exit130.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ec

bb.ec:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferD2Ev.exit131.i, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz
  %.pn108.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.hw, %bb.bz ], [ %i.hx, %bb.ca ], [ %i.hy, %bb.cb ], [ %i.hz, %bb.cc ], [ %.pn108.pn.pn.pn.pn.i, %_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferD2Ev.exit131.i ], [ %i.ia, %bb.cd ]
  %.10100.i = extractvalue { ptr, i32 } %.pn108.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, 0
  %i.ml = call ptr @__cxa_begin_catch(ptr %.10100.i) #25 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_18readTileINS_14TiledInputPartEEEbRT_bb.exit.thread174 unwind label %bb.ee

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_18readTileINS_14TiledInputPartEEEbRT_bb.exit.thread174: ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %bb.ef

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_18readTileINS_14TiledInputPartEEEbRT_bb.exit.thread: ; preds = %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit129.thread178

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_18readTileINS_14TiledInputPartEEEbRT_bb.exit: ; preds = %_ZNSt6vectorIN9Imath_3_14halfESaIS1_EED2Ev.exit.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br i1 %.not232262.i, label %bb.ef, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit129.thread178

bb.ed:                                            ; preds = %bb.bm
  %i.mm = landingpad { ptr, i32 }
          catch ptr null
  br label %.critedge103

bb.ee:                                            ; preds = %bb.ec, %bb.bn
  %i.mn = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %.critedge103

.critedge103:                                     ; preds = %bb.ee, %bb.ed
  %.pn97 = phi { ptr, i32 } [ %i.mn, %bb.ee ], [ %i.mm, %bb.ed ]
  %.085 = extractvalue { ptr, i32 } %.pn97, 0
  %i.mo = call ptr @__cxa_begin_catch(ptr %.085) #25 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.ef

bb.ef:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_18readTileINS_14TiledInputPartEEEbRT_bb.exit.thread174, %.critedge103, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_18readTileINS_14TiledInputPartEEEbRT_bb.exit
  %i.mp = call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile6headerEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.091526)
  %i.mq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header4typeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(49) %i.mp) ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !17 ; 3 uses
  %i.mt = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L10TILEDIMAGEB5cxx11E, i64 8), align 8, !tbaa !17
  %i.mu = icmp eq i64 %i.ms, %i.mt
  br i1 %i.mu, label %bb.eg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit129.thread178

bb.eg:                                            ; preds = %bb.ef
  %i.mv = icmp eq i64 %i.ms, 0
  br i1 %i.mv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit129.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit129

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit129: ; preds = %bb.eg
  %i.mw = load ptr, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L10TILEDIMAGEB5cxx11E, align 8, !tbaa !25
  %i.mx = load ptr, ptr %i.mq, align 8, !tbaa !25
  %bcmp.i128 = call i32 @bcmp(ptr %i.mx, ptr %i.mw, i64 %i.ms)
  %bcmp.i128.fr = freeze i32 %bcmp.i128
  %i.my = icmp eq i32 %bcmp.i128.fr, 0
  br i1 %i.my, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit129.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit129.thread178

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit129.thread: ; preds = %bb.eg, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit129
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit129.thread178

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit129.thread178: ; preds = %bb.ef, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit129.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit129, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_18readTileINS_14TiledInputPartEEEbRT_bb.exit.thread, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_18readTileINS_14TiledInputPartEEEbRT_bb.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread171
  %.5 = phi i1 [ %.3, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread171 ], [ %.3, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_18readTileINS_14TiledInputPartEEEbRT_bb.exit ], [ %.3, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_18readTileINS_14TiledInputPartEEEbRT_bb.exit.thread ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit129.thread ], [ %.3, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit129 ], [ %.3, %bb.ef ] ; 5 uses
  br i1 %or.cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140.thread185, label %bb.eh

bb.eh:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit129.thread178
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_518MultiPartInputFile14flushPartCacheEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.ei unwind label %bb.gp

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputPartC1ERNS_18MultiPartInputFileEi(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.091526)
          to label %bb.ej unwind label %bb.gq

bb.ej:                                            ; preds = %bb.ei
  %i.mz = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.ek unwind label %bb.eo     ; 5 uses

bb.ek:                                            ; preds = %bb.ej
  %i.na = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %i.mz)
          to label %bb.el unwind label %bb.ep     ; 4 uses

bb.el:                                            ; preds = %bb.ek
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !134 ; 2 uses
  %i.nd = sext i32 %i.nc to i64
  %i.ne = load i32, ptr %i.na, align 4, !tbaa !136 ; 3 uses
  %i.nf = sext i32 %i.ne to i64
  %i.ng = sub nsw i64 %i.nd, %i.nf                ; 4 uses
  %i.nh = add nsw i64 %i.ng, 1                    ; 10 uses
  %i.ni = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.em unwind label %bb.eq

bb.em:                                            ; preds = %bb.el
  %i.nj = invoke noundef i64 @_ZN27OpenImageIO_v3_1_Imf__3_3_522calculateBytesPerPixelERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %i.ni)
          to label %bb.en unwind label %bb.eq     ; 4 uses

bb.en:                                            ; preds = %bb.em
  %i.nk = shl nsw i64 %i.nh, 2                    ; 2 uses
  %i.nl = icmp ugt i64 %i.nk, 8000000
  %or.cond.i130 = select i1 %1, i1 %i.nl, i1 false
  br i1 %or.cond.i130, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_116readDeepScanLineINS_21DeepScanLineInputPartEEEbRT_bb.exit.thread181, label %bb.er

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_116readDeepScanLineINS_21DeepScanLineInputPartEEEbRT_bb.exit.thread181: ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit140.thread185

bb.eo:                                            ; preds = %bb.ej
  %i.nm = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIjED2Ev.exit137.i

bb.ep:                                            ; preds = %bb.ek
  %i.nn = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIjED2Ev.exit137.i

bb.eq:                                            ; preds = %bb.em, %bb.el
  %i.no = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIjED2Ev.exit137.i

bb.er:                                            ; preds = %bb.en
  %i.np = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.mz)
          to label %bb.es unwind label %bb.ew

bb.es:                                            ; preds = %bb.er
  %i.nq = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %i.np)
          to label %.preheader195.i unwind label %bb.ew

.preheader195.i:                                  ; preds = %bb.es, %bb.ey
  %indvars.iv294.i = phi i32 [ %indvars.iv.next295.i, %bb.ey ], [ -1, %bb.es ] ; 2 uses
  %.sroa.0162.0.i = phi ptr [ %i.ny, %bb.ey ], [ %i.nq, %bb.es ] ; 2 uses
  %.0117.i = phi i32 [ %i.nz, %bb.ey ], [ 0, %bb.es ] ; 3 uses
  %i.nr = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.mz)
          to label %bb.et unwind label %bb.ex

bb.et:                                            ; preds = %.preheader195.i
  %i.ns = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.nr)
          to label %bb.eu unwind label %bb.ex

bb.eu:                                            ; preds = %bb.et
  %.not188.i = icmp eq ptr %.sroa.0162.0.i, %i.ns
  br i1 %.not188.i, label %bb.ev, label %bb.ey

bb.ev:                                            ; preds = %bb.eu
  %i.nt = icmp ugt i64 %i.nh, 4611686018427387903
  %i.nu = select i1 %i.nt, i64 -1, i64 %i.nk
  %i.nv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.nu) #29
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIjE11resizeEraseEl.exit.i unwind label %.thread177.i ; 12 uses

bb.ew:                                            ; preds = %bb.es, %bb.er
  %i.nw = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIjED2Ev.exit137.i

bb.ex:                                            ; preds = %bb.et, %.preheader195.i
  %i.nx = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIjED2Ev.exit137.i

bb.ey:                                            ; preds = %bb.eu
  %i.ny = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0162.0.i) #31
  %i.nz = add nuw nsw i32 %.0117.i, 1
  %indvars.iv.next295.i = add nsw i32 %indvars.iv294.i, 1
  br label %.preheader195.i, !llvm.loop !163

_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIjE11resizeEraseEl.exit.i: ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.oa = zext nneg i32 %.0117.i to i64           ; 12 uses
  %i.ob = shl nuw nsw i64 %i.oa, 4                ; 2 uses
  %i.oc = or disjoint i64 %i.ob, 8
  %i.od = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.oc) #29
          to label %.noexc132.i unwind label %bb.fa ; 2 uses

.noexc132.i:                                      ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIjE11resizeEraseEl.exit.i
  store i64 %i.oa, ptr %i.od, align 16
  %i.oe = getelementptr i8, ptr %i.od, i64 8      ; 4 uses
  %i.of = icmp eq i32 %.0117.i, 0                 ; 2 uses
  br i1 %i.of, label %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayINS0_IPvEEEC2El.exit.thread.i, label %.lr.ph.i131

_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayINS0_IPvEEEC2El.exit.thread.i: ; preds = %.noexc132.i
  store ptr %i.oe, ptr %i.m, align 8, !tbaa !164
  store i64 %i.oa, ptr %6, align 8, !tbaa !167
  br label %._crit_edge.i133

.lr.ph.i131:                                      ; preds = %.noexc132.i
  call void @llvm.memset.p0.i64(ptr align 8 %i.oe, i8 0, i64 %i.ob, i1 false)
  store ptr %i.oe, ptr %i.m, align 8, !tbaa !164
  store i64 %i.oa, ptr %6, align 8, !tbaa !167
  %i.og = icmp ugt i64 %i.nh, 2305843009213693951
  %i.oh = shl nuw nsw i64 %i.nh, 3
  %i.oi = select i1 %i.og, i64 -1, i64 %i.oh
  br label %bb.fb

._crit_edge.i133:                                 ; preds = %bb.fd, %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayINS0_IPvEEEC2El.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store i32 0, ptr %i.n, align 8, !tbaa !137
  store ptr null, ptr %i.o, align 8, !tbaa !142
  store ptr %i.n, ptr %i.p, align 8, !tbaa !143
  store ptr %i.n, ptr %i.q, align 8, !tbaa !144
  store i64 0, ptr %i.r, align 8, !tbaa !145
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_55SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %i.s, i32 noundef 1, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferC2Ev.exit.i unwind label %bb.ez

bb.ez:                                            ; preds = %._crit_edge.i133
  %i.oj = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameENS0_9DeepSliceESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(104) %7) #25
  br label %.body.i

.thread177.i:                                     ; preds = %bb.ev
  %i.ok = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIjED2Ev.exit137.i

bb.fa:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIjE11resizeEraseEl.exit.i
  %i.ol = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.go

bb.fb:                                            ; preds = %bb.fd, %.lr.ph.i131
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i131 ], [ %indvars.iv.next.i, %bb.fd ] ; 2 uses
  %i.om = getelementptr inbounds nuw [16 x i8], ptr %i.oe, i64 %indvars.iv.i ; 2 uses
  %i.on = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.oi) #29
          to label %.noexc133.i unwind label %bb.fe

.noexc133.i:                                      ; preds = %bb.fb
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 8 ; 2 uses
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !168 ; 2 uses
  %i.oq = icmp eq ptr %i.op, null
  br i1 %i.oq, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %.noexc133.i
  call void @_ZdaPv(ptr noundef nonnull %i.op) #26
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %.noexc133.i
  store i64 %i.nh, ptr %i.om, align 8, !tbaa !171
  store ptr %i.on, ptr %i.oo, align 8, !tbaa !168
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i132 = icmp eq i64 %indvars.iv.next.i, %i.oa
  br i1 %exitcond.not.i132, label %._crit_edge.i133, label %bb.fb, !llvm.loop !172

bb.fe:                                            ; preds = %bb.fb
  %i.or = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.gn

_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferC2Ev.exit.i: ; preds = %._crit_edge.i133
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.os = sub nsw i32 0, %i.ne
  %i.ot = sext i32 %i.os to i64                   ; 2 uses
  %i.ou = getelementptr inbounds [4 x i8], ptr %i.nv, i64 %i.ot
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_55SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %8, i32 noundef 0, ptr noundef nonnull %i.ou, i64 noundef 4, i64 noundef 0, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.ff unwind label %bb.fl

bb.ff:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferC2Ev.exit.i
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBuffer22insertSampleCountSliceERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef nonnull align 8 dereferenceable(50) %8)
          to label %bb.fg unwind label %bb.fl

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.ov = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.mz)
          to label %bb.fh unwind label %bb.fm

bb.fh:                                            ; preds = %bb.fg
  %i.ow = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ov)
          to label %.preheader194.i unwind label %bb.fm

.preheader194.i:                                  ; preds = %bb.fh, %bb.fq
  %indvars.iv291.i = phi i64 [ %indvars.iv.next292.i, %bb.fq ], [ 0, %bb.fh ] ; 2 uses
  %.sroa.0148.0.i = phi ptr [ %i.ph, %bb.fq ], [ %i.ow, %bb.fh ] ; 3 uses
  %i.ox = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.mz)
          to label %bb.fi unwind label %bb.fn

bb.fi:                                            ; preds = %.preheader194.i
  %i.oy = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ox)
          to label %bb.fj unwind label %bb.fn

bb.fj:                                            ; preds = %bb.fi
  %.not189.i = icmp eq ptr %.sroa.0148.0.i, %i.oy
  br i1 %.not189.i, label %bb.fk, label %bb.fo

bb.fk:                                            ; preds = %bb.fj
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputPart14setFrameBufferERKNS_15DeepFrameBufferE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(104) %7)
          to label %bb.fs unwind label %bb.ft

bb.fl:                                            ; preds = %bb.ff, %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferC2Ev.exit.i
  %i.oz = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit136.i

bb.fm:                                            ; preds = %bb.fh, %bb.fg
  %i.pa = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit136.i

bb.fn:                                            ; preds = %bb.fi, %.preheader194.i
  %i.pb = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit136.i

bb.fo:                                            ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %22 = load ptr, ptr %i.m, align 8, !tbaa !164
  %i.pc = getelementptr inbounds nuw [16 x i8], ptr %22, i64 %indvars.iv291.i
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !168
  %i.pf = getelementptr inbounds [8 x i8], ptr %i.pe, i64 %i.ot
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_59DeepSliceC1ENS_9PixelTypeEPcmmmiidbb(ptr noundef nonnull align 8 dereferenceable(56) %9, i32 noundef 2, ptr noundef %i.pf, i64 noundef 8, i64 noundef 0, i64 noundef 4, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.fp unwind label %bb.fr

bb.fp:                                            ; preds = %bb.fo
  %i.pg = getelementptr inbounds nuw i8, ptr %.sroa.0148.0.i, i64 32
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBuffer6insertEPKcRKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef nonnull %i.pg, ptr noundef nonnull align 8 dereferenceable(56) %9)
          to label %bb.fq unwind label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.ph = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0148.0.i) #31
  %indvars.iv.next292.i = add nuw nsw i64 %indvars.iv291.i, 1
  br label %.preheader194.i, !llvm.loop !173

bb.fr:                                            ; preds = %bb.fp, %bb.fo
  %i.pi = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit136.i

bb.fs:                                            ; preds = %bb.fk
  %i.pj = getelementptr inbounds nuw i8, ptr %i.na, i64 4
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !154 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.na, i64 12 ; 2 uses
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !155
  %.not249.i = icmp sgt i32 %i.pk, %i.pm
  br i1 %.not249.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i136, label %.lr.ph257.i

.lr.ph257.i:                                      ; preds = %bb.fs
  %.not269.i = icmp eq i64 %i.nh, 0
  %i.pn = zext i32 %indvars.iv294.i to i64
  %i.po = add nuw nsw i64 %i.pn, 1                ; 11 uses
  %brmerge.i = or i1 %.not269.i, %i.of            ; 2 uses
  %i.pp = add nsw i64 %i.oa, -1                   ; 3 uses
  %xtraiter = and i64 %i.nh, 3                    ; 3 uses
  %i.pq = icmp ult i64 %i.ng, 3
  %unroll_iter = and i64 %i.nh, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod959 = icmp ne i64 %xtraiter, 0
  %i.pr = icmp eq i32 %i.nc, %i.ne
  %unroll_iter966 = and i64 %i.nh, -2
  %i.ps = and i64 %i.ng, 1
  %lcmp.mod962.not.not = icmp eq i64 %i.ps, 0
  %lcmp.mod965 = trunc i64 %i.nh to i1
  %xtraiter968 = and i64 %i.oa, 3                 ; 3 uses
  %i.pt = icmp ult i64 %i.pp, 3
  %unroll_iter973 = and i64 %i.oa, 2147483644
  %lcmp.mod970.not = icmp eq i64 %xtraiter968, 0
  %lcmp.mod972 = icmp ne i64 %xtraiter968, 0
  %xtraiter975 = and i64 %i.oa, 3                 ; 3 uses
  %i.pu = icmp ult i64 %i.pp, 3
  %unroll_iter979 = and i64 %i.oa, 2147483644
  %lcmp.mod977.not = icmp eq i64 %xtraiter975, 0
  %lcmp.mod978 = icmp ne i64 %xtraiter975, 0
  %xtraiter981 = and i64 %i.oa, 3                 ; 3 uses
  %i.pv = icmp ult i64 %i.pp, 3
  %unroll_iter985 = and i64 %i.oa, 2147483644
  %lcmp.mod983.not = icmp eq i64 %xtraiter981, 0
  %lcmp.mod984 = icmp ne i64 %xtraiter981, 0
  br label %bb.fu

bb.ft:                                            ; preds = %bb.fk
  %i.pw = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit136.i

bb.fu:                                            ; preds = %.thread.i, %.lr.ph257.i
  %.094254.i = phi i32 [ %i.pk, %.lr.ph257.i ], [ %i.wp, %.thread.i ] ; 4 uses
  %.098253.i = phi i1 [ false, %.lr.ph257.i ], [ %.4102172.i, %.thread.i ] ; 2 uses
  %.sroa.15.0252.i = phi ptr [ null, %.lr.ph257.i ], [ %.sroa.15.1171.i, %.thread.i ] ; 9 uses
  %.sroa.10.0251.i = phi ptr [ null, %.lr.ph257.i ], [ %.sroa.10.1170.i, %.thread.i ] ; 7 uses
  %.sroa.0.0250.i = phi ptr [ null, %.lr.ph257.i ], [ %.sroa.0.1169.i, %.thread.i ] ; 13 uses
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputPart21readPixelSampleCountsEi(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef %.094254.i)
          to label %.preheader193.i unwind label %bb.fv

.preheader193.i:                                  ; preds = %bb.fu
  br i1 %brmerge.i, label %._crit_edge221.i, label %.preheader192.lr.ph.split.us.i

.preheader192.lr.ph.split.us.i:                   ; preds = %.preheader193.i
  br i1 %1, label %.preheader192.us.i.preheader, label %.preheader192.us.us.i.preheader

.preheader192.us.us.i.preheader:                  ; preds = %.preheader192.lr.ph.split.us.i
  br i1 %i.pq, label %.preheader192.us.us.i.epil.preheader, label %.preheader192.us.us.i

.preheader192.us.i.preheader:                     ; preds = %.preheader192.lr.ph.split.us.i
  br i1 %i.pr, label %.preheader192.us.i.epil.preheader, label %.preheader192.us.i

.preheader192.us.us.i:                            ; preds = %.preheader192.us.us.i.preheader, %.preheader192.us.us.i
  %.088220.us.us.i = phi i64 [ %i.qu, %.preheader192.us.us.i ], [ 0, %.preheader192.us.us.i.preheader ] ; 5 uses
  %.091218.us.us.i = phi i64 [ %i.qt, %.preheader192.us.us.i ], [ 0, %.preheader192.us.us.i.preheader ]
  %niter = phi i64 [ %niter.next.3, %.preheader192.us.us.i ], [ 0, %.preheader192.us.us.i.preheader ]
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %.088220.us.us.i
  %i.py = load i32, ptr %i.px, align 4, !tbaa !3
  %i.pz = zext i32 %i.py to i64
  %i.qa = mul nuw i64 %i.po, %i.pz
  %i.qb = add i64 %i.qa, %.091218.us.us.i
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %.088220.us.us.i
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 4
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !3
  %i.qf = zext i32 %i.qe to i64
  %i.qg = mul nuw i64 %i.po, %i.qf
  %i.qh = add i64 %i.qg, %i.qb
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %.088220.us.us.i
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !3
  %i.ql = zext i32 %i.qk to i64
  %i.qm = mul nuw i64 %i.po, %i.ql
  %i.qn = add i64 %i.qm, %i.qh
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %.088220.us.us.i
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 12
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !3
  %i.qr = zext i32 %i.qq to i64
  %i.qs = mul nuw i64 %i.po, %i.qr
  %i.qt = add i64 %i.qs, %i.qn                    ; 3 uses
  %i.qu = add nuw i64 %.088220.us.us.i, 4         ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge221.thread.i.loopexit.unr-lcssa, label %.preheader192.us.us.i, !llvm.loop !174

.preheader192.us.i:                               ; preds = %.preheader192.us.i.preheader, %.preheader192.us.i
  %.088220.us.i = phi i64 [ %i.ro, %.preheader192.us.i ], [ 0, %.preheader192.us.i.preheader ] ; 3 uses
  %.089219.us.i = phi i64 [ %i.rl, %.preheader192.us.i ], [ 0, %.preheader192.us.i.preheader ]
  %.091218.us.i = phi i64 [ %i.rn, %.preheader192.us.i ], [ 0, %.preheader192.us.i.preheader ]
  %niter967 = phi i64 [ %niter967.next.1, %.preheader192.us.i ], [ 0, %.preheader192.us.i.preheader ]
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %.088220.us.i
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !3
  %i.qx = zext i32 %i.qw to i64                   ; 3 uses
  %i.qy = mul i64 %i.nj, %i.qx
  %i.qz = icmp ugt i64 %i.qy, 1000
  %spec.select267.i = select i1 %i.qz, i64 0, i64 %i.qx
  %i.ra = mul nuw i64 %i.po, %i.qx
  %i.rb = add i64 %i.ra, %.089219.us.i
  %i.rc = mul nuw i64 %spec.select267.i, %i.po
  %i.rd = add i64 %i.rc, %.091218.us.i
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %.088220.us.i
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 4
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !3
  %i.rh = zext i32 %i.rg to i64                   ; 3 uses
  %i.ri = mul i64 %i.nj, %i.rh
  %i.rj = icmp ugt i64 %i.ri, 1000
  %spec.select267.i.1 = select i1 %i.rj, i64 0, i64 %i.rh
  %i.rk = mul nuw i64 %i.po, %i.rh
  %i.rl = add i64 %i.rk, %i.rb                    ; 3 uses
  %i.rm = mul nuw i64 %spec.select267.i.1, %i.po
  %i.rn = add i64 %i.rm, %i.rd                    ; 3 uses
  %i.ro = add nuw i64 %.088220.us.i, 2            ; 2 uses
  %niter967.next.1 = add i64 %niter967, 2         ; 2 uses
  %niter967.ncmp.1 = icmp eq i64 %niter967.next.1, %unroll_iter966
  br i1 %niter967.ncmp.1, label %._crit_edge221.i.loopexit.unr-lcssa, label %.preheader192.us.i, !llvm.loop !174

._crit_edge221.i.loopexit.unr-lcssa:              ; preds = %.preheader192.us.i
  br i1 %lcmp.mod962.not.not, label %.preheader192.us.i.epil.preheader, label %._crit_edge221.i

.preheader192.us.i.epil.preheader:                ; preds = %._crit_edge221.i.loopexit.unr-lcssa, %.preheader192.us.i.preheader
  %.088220.us.i.epil.init = phi i64 [ 0, %.preheader192.us.i.preheader ], [ %i.ro, %._crit_edge221.i.loopexit.unr-lcssa ]
  %.089219.us.i.epil.init = phi i64 [ 0, %.preheader192.us.i.preheader ], [ %i.rl, %._crit_edge221.i.loopexit.unr-lcssa ]
  %.091218.us.i.epil.init = phi i64 [ 0, %.preheader192.us.i.preheader ], [ %i.rn, %._crit_edge221.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod965)
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %.088220.us.i.epil.init
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !3
  %i.rr = zext i32 %i.rq to i64                   ; 3 uses
  %i.rs = mul i64 %i.nj, %i.rr
  %i.rt = icmp ugt i64 %i.rs, 1000
  %spec.select267.i.epil = select i1 %i.rt, i64 0, i64 %i.rr
  %i.ru = mul nuw i64 %i.po, %i.rr
  %i.rv = add i64 %i.ru, %.089219.us.i.epil.init
  %i.rw = mul nuw i64 %spec.select267.i.epil, %i.po
  %i.rx = add i64 %i.rw, %.091218.us.i.epil.init
  br label %._crit_edge221.i

._crit_edge221.i:                                 ; preds = %.preheader192.us.i.epil.preheader, %._crit_edge221.i.loopexit.unr-lcssa, %.preheader193.i
  %.091.lcssa.i = phi i64 [ 0, %.preheader193.i ], [ %i.rn, %._crit_edge221.i.loopexit.unr-lcssa ], [ %i.rx, %.preheader192.us.i.epil.preheader ] ; 2 uses
  %.089.lcssa.i = phi i64 [ 0, %.preheader193.i ], [ %i.rl, %._crit_edge221.i.loopexit.unr-lcssa ], [ %i.rv, %.preheader192.us.i.epil.preheader ]
  %i.ry = add i64 %.089.lcssa.i, %.091.lcssa.i
  %i.rz = icmp ugt i64 %i.ry, 4095
  %or.cond130.not.i = select i1 %1, i1 %i.rz, i1 false
  br i1 %or.cond130.not.i, label %.thread.i, label %._crit_edge221.thread.i

bb.fv:                                            ; preds = %bb.fu
  %i.sa = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.gl

._crit_edge221.thread.i.loopexit.unr-lcssa:       ; preds = %.preheader192.us.us.i
  br i1 %lcmp.mod.not, label %._crit_edge221.thread.i, label %.preheader192.us.us.i.epil.preheader

.preheader192.us.us.i.epil.preheader:             ; preds = %._crit_edge221.thread.i.loopexit.unr-lcssa, %.preheader192.us.us.i.preheader
  %.088220.us.us.i.epil.init = phi i64 [ 0, %.preheader192.us.us.i.preheader ], [ %i.qu, %._crit_edge221.thread.i.loopexit.unr-lcssa ]
  %.091218.us.us.i.epil.init = phi i64 [ 0, %.preheader192.us.us.i.preheader ], [ %i.qt, %._crit_edge221.thread.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod959)
  br label %.preheader192.us.us.i.epil

.preheader192.us.us.i.epil:                       ; preds = %.preheader192.us.us.i.epil, %.preheader192.us.us.i.epil.preheader
  %.088220.us.us.i.epil = phi i64 [ %i.sg, %.preheader192.us.us.i.epil ], [ %.088220.us.us.i.epil.init, %.preheader192.us.us.i.epil.preheader ] ; 2 uses
  %.091218.us.us.i.epil = phi i64 [ %i.sf, %.preheader192.us.us.i.epil ], [ %.091218.us.us.i.epil.init, %.preheader192.us.us.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader192.us.us.i.epil ], [ 0, %.preheader192.us.us.i.epil.preheader ]
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %.088220.us.us.i.epil
end_hunk_1
begin_hunk_2_@_ZN27OpenImageIO_v3_1_Imf__3_3_514TiledInputFileD2Ev:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !31
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !217
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !217
  br label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !35

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !26   ; 8 uses
  %.not.i.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1, label %_ZN27OpenImageIO_v3_1_Imf__3_3_57ContextD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !31
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #25, !inline_history !206
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #25, !inline_history !206
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_57ContextD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN27OpenImageIO_v3_1_Imf__3_3_57ContextD2Ev.exit, !prof !35

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #25
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_57ContextD2Ev.exit

_ZN27OpenImageIO_v3_1_Imf__3_3_57ContextD2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN27OpenImageIO_v3_1_Imf__3_3_514TiledInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  ret void
}

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFileC1EPKci(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_116readDeepScanLineINS_21DeepScanLineInputFileEEEbRT_bb(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::Array.51", align 8 ; 8 uses
  %3 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::DeepFrameBuffer", align 8 ; 15 uses
  %4 = alloca %"struct.OpenImageIO_v3_1_Imf__3_3_5::Slice", align 8 ; 5 uses
  %5 = alloca %"struct.OpenImageIO_v3_1_Imf__3_3_5::DeepSlice", align 8 ; 5 uses
  %i.a = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.e       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
          to label %bb.c unwind label %bb.f       ; 4 uses

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !134
  %i.e = sext i32 %i.d to i64
  %i.f = load i32, ptr %i.b, align 4, !tbaa !136  ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = sub nsw i64 %i.e, %i.g                   ; 3 uses
  %i.i = add nsw i64 %i.h, 1                      ; 8 uses
  %i.j = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = invoke noundef i64 @_ZN27OpenImageIO_v3_1_Imf__3_3_522calculateBytesPerPixelERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %i.j)
          to label %bb.h unwind label %bb.g       ; 0 uses

bb.e:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIjED2Ev.exit132

bb.f:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIjED2Ev.exit132

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIjED2Ev.exit132

bb.h:                                             ; preds = %bb.d
  %i.o = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.p = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %i.o)
          to label %.preheader170 unwind label %bb.m

.preheader170:                                    ; preds = %bb.i, %bb.o
  %indvars.iv256 = phi i32 [ %indvars.iv.next257, %bb.o ], [ -1, %bb.i ] ; 2 uses
  %.sroa.0155.0 = phi ptr [ %i.y, %bb.o ], [ %i.p, %bb.i ] ; 2 uses
  %.0117 = phi i32 [ %i.z, %bb.o ], [ 0, %bb.i ]  ; 3 uses
  %i.q = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %.preheader170
  %i.r = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.q)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %.not165 = icmp eq ptr %.sroa.0155.0, %i.r
  br i1 %.not165, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.s = icmp ugt i64 %i.i, 4611686018427387903
  %i.t = shl nuw nsw i64 %i.i, 2
  %i.u = select i1 %i.s, i64 -1, i64 %i.t
  %i.v = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.u) #29
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIjE11resizeEraseEl.exit unwind label %.thread160 ; 9 uses

bb.m:                                             ; preds = %bb.i, %bb.h
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIjED2Ev.exit132

bb.n:                                             ; preds = %bb.j, %.preheader170
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIjED2Ev.exit132

bb.o:                                             ; preds = %bb.k
  %i.y = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0155.0) #31
  %i.z = add nuw nsw i32 %.0117, 1
  %indvars.iv.next257 = add nsw i32 %indvars.iv256, 1
  br label %.preheader170, !llvm.loop !218

_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIjE11resizeEraseEl.exit: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.aa = zext nneg i32 %.0117 to i64             ; 10 uses
  %i.ab = shl nuw nsw i64 %i.aa, 4                ; 2 uses
  %i.ac = or disjoint i64 %i.ab, 8
  %i.ad = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ac) #29
          to label %.noexc127 unwind label %bb.q  ; 2 uses

.noexc127:                                        ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIjE11resizeEraseEl.exit
  store i64 %i.aa, ptr %i.ad, align 16
  %i.ae = getelementptr i8, ptr %i.ad, i64 8      ; 4 uses
  %i.af = icmp eq i32 %.0117, 0                   ; 3 uses
  br i1 %i.af, label %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayINS0_IPvEEEC2El.exit.thread, label %.lr.ph

_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayINS0_IPvEEEC2El.exit.thread: ; preds = %.noexc127
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !164
  store i64 %i.aa, ptr %2, align 8, !tbaa !167
  br label %._crit_edge

.lr.ph:                                           ; preds = %.noexc127
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %i.ab, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !164
  store i64 %i.aa, ptr %2, align 8, !tbaa !167
  %i.ai = icmp ugt i64 %i.i, 2305843009213693951
  %i.aj = shl nuw nsw i64 %i.i, 3
  %i.ak = select i1 %i.ai, i64 -1, i64 %i.aj
  br label %bb.r

._crit_edge:                                      ; preds = %bb.t, %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayINS0_IPvEEEC2El.exit.thread
  %i.al = phi ptr [ %i.ag, %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayINS0_IPvEEEC2El.exit.thread ], [ %i.ah, %bb.t ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.am, align 8, !tbaa !137
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr null, ptr %i.an, align 8, !tbaa !142
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !143
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !144
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.aq, align 8, !tbaa !145
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 48
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_55SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %i.ar, i32 noundef 1, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferC2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameENS0_9DeepSliceESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(104) %3) #25
  br label %.body

.thread160:                                       ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIjED2Ev.exit132

bb.q:                                             ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_55ArrayIjE11resizeEraseEl.exit
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bc

bb.r:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %indvars.iv ; 2 uses
  %i.aw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ak) #29
          to label %.noexc128 unwind label %bb.u

.noexc128:                                        ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !168 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.noexc128
  tail call void @_ZdaPv(ptr noundef nonnull %i.ay) #26
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.noexc128
  store i64 %i.i, ptr %i.av, align 8, !tbaa !171
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !168
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.aa
  br i1 %exitcond.not, label %._crit_edge, label %bb.r, !llvm.loop !219

bb.u:                                             ; preds = %bb.r
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bb

_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferC2Ev.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.bb = sub nsw i32 0, %i.f
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.bc
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_55SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %4, i32 noundef 0, ptr noundef nonnull %i.bd, i64 noundef 4, i64 noundef 0, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.v unwind label %bb.ab

bb.v:                                             ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferC2Ev.exit
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBuffer22insertSampleCountSliceERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(50) %4)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.be = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.bf = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %i.be)
          to label %.preheader169 unwind label %bb.ac

.preheader169:                                    ; preds = %bb.x, %bb.ag
  %indvars.iv253 = phi i64 [ %indvars.iv.next254, %bb.ag ], [ 0, %bb.x ] ; 2 uses
  %.sroa.0143.0 = phi ptr [ %i.bq, %bb.ag ], [ %i.bf, %bb.x ] ; 3 uses
  %i.bg = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %.preheader169
  %i.bh = invoke ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bg)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  %.not166 = icmp eq ptr %.sroa.0143.0, %i.bh
  br i1 %.not166, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile14setFrameBufferERKNS_15DeepFrameBufferE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(104) %3)
          to label %bb.ai unwind label %bb.aj

bb.ab:                                            ; preds = %bb.v, %_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBufferC2Ev.exit
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit131

bb.ac:                                            ; preds = %bb.x, %bb.w
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit131

bb.ad:                                            ; preds = %bb.y, %.preheader169
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit131

bb.ae:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %6 = load ptr, ptr %i.al, align 8, !tbaa !164
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %indvars.iv253
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !168
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bc
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_59DeepSliceC1ENS_9PixelTypeEPcmmmiidbb(ptr noundef nonnull align 8 dereferenceable(56) %5, i32 noundef 2, ptr noundef %i.bo, i64 noundef 8, i64 noundef 0, i64 noundef 4, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0143.0, i64 32
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepFrameBuffer6insertEPKcRKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull %i.bp, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.bq = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0143.0) #31
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253, 1
  br label %.preheader169, !llvm.loop !220

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit131

bb.ai:                                            ; preds = %bb.aa
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !154 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !155
  %.not212 = icmp sgt i32 %i.bt, %i.bv
  br i1 %.not212, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %.lr.ph220

.lr.ph220:                                        ; preds = %bb.ai
  %.not231 = icmp eq i64 %i.i, 0                  ; 2 uses
  %i.bw = zext i32 %indvars.iv256 to i64
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 5 uses
  %i.by = add nsw i64 %i.aa, -1                   ; 2 uses
  %brmerge = or i1 %.not231, %i.af
  %xtraiter = and i64 %i.i, 3                     ; 3 uses
  %i.bz = icmp ult i64 %i.h, 3
  %unroll_iter = and i64 %i.i, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  %brmerge322 = or i1 %.not231, %i.af
  %xtraiter31 = and i64 %i.aa, 3                  ; 3 uses
  %i.ca = icmp ult i64 %i.by, 3
  %unroll_iter36 = and i64 %i.aa, 2147483644
  %lcmp.mod33.not = icmp eq i64 %xtraiter31, 0
  %lcmp.mod35 = icmp ne i64 %xtraiter31, 0
  %xtraiter38 = and i64 %i.aa, 3                  ; 3 uses
  %i.cb = icmp ult i64 %i.by, 3
  %unroll_iter42 = and i64 %i.aa, 2147483644
  %lcmp.mod40.not = icmp eq i64 %xtraiter38, 0
  %lcmp.mod41 = icmp ne i64 %xtraiter38, 0
  br label %bb.ak

bb.aj:                                            ; preds = %bb.aa
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit131

bb.ak:                                            ; preds = %.lr.ph220, %.thread
  %.094217 = phi i32 [ %i.bt, %.lr.ph220 ], [ %i.ha, %.thread ] ; 4 uses
  %.098216 = phi i1 [ false, %.lr.ph220 ], [ %.2100159, %.thread ]
  %.sroa.15.0215 = phi ptr [ null, %.lr.ph220 ], [ %.sroa.15.3296, %.thread ] ; 8 uses
  %.sroa.10.0214 = phi ptr [ null, %.lr.ph220 ], [ %.sroa.10.1294, %.thread ] ; 6 uses
  %.sroa.0.0213 = phi ptr [ null, %.lr.ph220 ], [ %.sroa.0.3292, %.thread ] ; 13 uses
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_521DeepScanLineInputFile21readPixelSampleCountsEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.094217)
          to label %.preheader168 unwind label %bb.al

.preheader168:                                    ; preds = %bb.ak
  br i1 %brmerge, label %._crit_edge196.thread, label %.preheader167.us.preheader

.preheader167.us.preheader:                       ; preds = %.preheader168
  br i1 %i.bz, label %.preheader167.us.epil.preheader, label %.preheader167.us

.preheader167.us:                                 ; preds = %.preheader167.us.preheader, %.preheader167.us
  %.088195.us = phi i64 [ %i.da, %.preheader167.us ], [ 0, %.preheader167.us.preheader ] ; 5 uses
  %.091193.us = phi i64 [ %i.cz, %.preheader167.us ], [ 0, %.preheader167.us.preheader ]
  %niter = phi i64 [ %niter.next.3, %.preheader167.us ], [ 0, %.preheader167.us.preheader ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.088195.us
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = zext i32 %i.ce to i64
  %i.cg = mul nuw i64 %i.bx, %i.cf
  %i.ch = add i64 %.091193.us, %i.cg
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.088195.us
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !3
  %i.cl = zext i32 %i.ck to i64
  %i.cm = mul nuw i64 %i.bx, %i.cl
  %i.cn = add i64 %i.ch, %i.cm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.088195.us
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.cr = zext i32 %i.cq to i64
  %i.cs = mul nuw i64 %i.bx, %i.cr
  %i.ct = add i64 %i.cn, %i.cs
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.088195.us
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = zext i32 %i.cw to i64
  %i.cy = mul nuw i64 %i.bx, %i.cx
  %i.cz = add i64 %i.ct, %i.cy                    ; 3 uses
  %i.da = add nuw i64 %.088195.us, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge196.unr-lcssa, label %.preheader167.us, !llvm.loop !221

bb.al:                                            ; preds = %bb.ak
  %i.db = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.az

._crit_edge196.thread:                            ; preds = %.preheader168
  %i.dc = ptrtoint ptr %.sroa.10.0214 to i64
  %i.dd = ptrtoint ptr %.sroa.0.0213 to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = ashr exact i64 %i.de, 2
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

._crit_edge196.unr-lcssa:                         ; preds = %.preheader167.us
  br i1 %lcmp.mod.not, label %._crit_edge196, label %.preheader167.us.epil.preheader

.preheader167.us.epil.preheader:                  ; preds = %._crit_edge196.unr-lcssa, %.preheader167.us.preheader
  %.088195.us.epil.init = phi i64 [ 0, %.preheader167.us.preheader ], [ %i.da, %._crit_edge196.unr-lcssa ]
  %.091193.us.epil.init = phi i64 [ 0, %.preheader167.us.preheader ], [ %i.cz, %._crit_edge196.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod30)
  br label %.preheader167.us.epil

.preheader167.us.epil:                            ; preds = %.preheader167.us.epil, %.preheader167.us.epil.preheader
  %.088195.us.epil = phi i64 [ %i.dl, %.preheader167.us.epil ], [ %.088195.us.epil.init, %.preheader167.us.epil.preheader ] ; 2 uses
  %.091193.us.epil = phi i64 [ %i.dk, %.preheader167.us.epil ], [ %.091193.us.epil.init, %.preheader167.us.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader167.us.epil ], [ 0, %.preheader167.us.epil.preheader ]
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.088195.us.epil
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !3
  %i.di = zext i32 %i.dh to i64
  %i.dj = mul nuw i64 %i.bx, %i.di
  %i.dk = add i64 %.091193.us.epil, %i.dj         ; 2 uses
  %i.dl = add nuw i64 %.088195.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge196, label %.preheader167.us.epil, !llvm.loop !222

._crit_edge196:                                   ; preds = %.preheader167.us.epil, %._crit_edge196.unr-lcssa
  %.lcssa = phi i64 [ %i.cz, %._crit_edge196.unr-lcssa ], [ %i.dk, %.preheader167.us.epil ] ; 3 uses
  %i.dm = ptrtoint ptr %.sroa.10.0214 to i64      ; 2 uses
  %i.dn = ptrtoint ptr %.sroa.0.0213 to i64       ; 2 uses
  %i.do = sub i64 %i.dm, %i.dn                    ; 4 uses
  %i.dp = ashr exact i64 %i.do, 2                 ; 7 uses
  %i.dq = icmp ugt i64 %.lcssa, %i.dp
  br i1 %i.dq, label %bb.am, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.am:                                            ; preds = %._crit_edge196
  %i.dr = sub nuw i64 %.lcssa, %i.dp              ; 6 uses
  %i.ds = ptrtoint ptr %.sroa.15.0215 to i64      ; 2 uses
  %i.dt = sub i64 %i.ds, %i.dm
  %i.du = ashr exact i64 %i.dt, 2                 ; 2 uses
  %i.dv = icmp ult i64 %i.dp, 2305843009213693952
  call void @llvm.assume(i1 %i.dv)
  %i.dw = xor i64 %i.dp, 2305843009213693951      ; 2 uses
  %i.dx = icmp ule i64 %i.du, %i.dw
  call void @llvm.assume(i1 %i.dx)
  %.not28.i = icmp ult i64 %i.du, %i.dr
  br i1 %.not28.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store float 0.000000e+00, ptr %.sroa.10.0214, align 4, !tbaa !147
  %i.dy = getelementptr i8, ptr %.sroa.10.0214, i64 4 ; 3 uses
  %i.dz = add nsw i64 %i.dr, -1                   ; 2 uses
  %i.ea = icmp eq i64 %i.dz, 0
  br i1 %i.ea, label %.preheader.us.preheader, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.an
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.dz, 2    ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.dy, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !147
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.idx.i.i.i.i.i.i
  br label %.preheader.us.preheader

bb.ao:                                            ; preds = %bb.am
  %i.ec = icmp ult i64 %i.dw, %i.dr
  br i1 %i.ec, label %bb.ap, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #28
          to label %.noexc133 unwind label %.loopexit.split-lp

.noexc133:                                        ; preds = %bb.ap
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.ao
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.dp, i64 %i.dr)
  %i.ed = add nuw nsw i64 %.sroa.speculated.i.i, %i.dp
  %i.ee = call i64 @llvm.umin.i64(i64 %i.ed, i64 2305843009213693951) ; 2 uses
  %i.ef = shl nuw nsw i64 %i.ee, 2
  %i.eg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #29
          to label %.noexc134 unwind label %.loopexit ; 4 uses

.noexc134:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.do ; 3 uses
  store float 0.000000e+00, ptr %i.eh, align 4, !tbaa !147
  %i.ei = add nsw i64 %i.dr, -1                   ; 2 uses
end_hunk_2
