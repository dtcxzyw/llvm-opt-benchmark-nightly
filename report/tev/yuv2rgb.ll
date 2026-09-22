Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/yuv2rgb?download=true
inline.NumInlined: 800
inline.NumDeleted: 369
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK15Op_YCbCr_to_RGBIhE18convert_colorspaceERKNSt3__110shared_ptrIK14HeifPixelImageEERK10ColorStateSA_RK29heif_color_conversion_optionsRK33heif_color_conversion_options_extPK20heif_security_limits:bb.a
  %i.se = load ptr, ptr %i.sd, align 8
  call void %i.se(ptr noundef nonnull align 8 dereferenceable(24) %i.ry) #17, !inline_history !1
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ry) #17
  br label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit358

_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit358: ; preds = %bb.by, %bb.bz, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bi, %bb.bm, %bb.bx, %bb.bn, %bb.bj, %_ZN5ErrorD2Ev.exit296, %_ZN5ErrorD2Ev.exit291, %bb.x
  %.pn264.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.do, %bb.x ], [ %.pn262, %_ZN5ErrorD2Ev.exit296 ], [ %.pn260, %_ZN5ErrorD2Ev.exit291 ], [ %i.it, %bb.bi ], [ %i.iu, %bb.bj ], [ %i.jb, %bb.bm ], [ %.pn264, %bb.bx ], [ %i.jc, %bb.bn ]
  call void @_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  resume { ptr, i32 } %.pn264.pn.pn.pn.pn.pn

bb.cc:                                            ; preds = %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit358, %_ZN6ResultINSt3__110shared_ptrI14HeifPixelImageEEEC2ERK5Error.exit
  ret void
}

declare noundef zeroext i16 @_ZNK14HeifPixelImage18get_bits_per_pixelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448), i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK14HeifPixelImage11has_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448), i32 noundef) local_unnamed_addr #3

declare void @_ZN14HeifPixelImage6createEjj15heif_colorspace11heif_chroma(ptr noundef nonnull align 8 dereferenceable(448), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN14HeifPixelImage11add_channelE12heif_channeljjiPK20heif_security_limits23heif_component_datatype(ptr dead_on_unwind writable sret(%class.Error) align 8, ptr noundef nonnull align 8 dereferenceable(448), i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef zeroext i8 @_Z20chroma_h_subsampling11heif_chroma(i32 noundef) local_unnamed_addr #3

declare noundef zeroext i8 @_Z20chroma_v_subsampling11heif_chroma(i32 noundef) local_unnamed_addr #3

declare void @_ZN25YCbCr_to_RGB_coefficients8defaultsEv(ptr dead_on_unwind writable sret(%struct.YCbCr_to_RGB_coefficients) align 4) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK16ImageDescription22has_nclx_color_profileEv(ptr noundef nonnull align 8 dereferenceable(316)) local_unnamed_addr #3

declare void @_Z29get_YCbCr_to_RGB_coefficientstt(ptr dead_on_unwind writable sret(%struct.YCbCr_to_RGB_coefficients) align 4, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139  ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !131
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #17, !inline_history !196
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #17
  br label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZNK15Op_YCbCr_to_RGBItE22state_after_conversionERK10ColorStateS3_RK29heif_color_conversion_optionsRK33heif_color_conversion_options_ext(ptr dead_on_unwind noalias writable sret(%"class.std::__1::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(28) %2, ptr noundef nonnull align 4 dereferenceable(28) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(24) %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %struct.ColorState, align 4         ; 13 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !16   ; 2 uses
  %.not = icmp eq i32 %i.c, 3
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i32, ptr %i.d, align 4
  %.not21 = icmp eq i32 %i.e, 1
  %or.cond29 = select i1 %.not, i1 true, i1 %.not21
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.g = load i8, ptr %i.f, align 4
  %.not22 = icmp eq i8 %i.g, 0
  %or.cond31 = select i1 %or.cond29, i1 true, i1 %.not22
  br i1 %or.cond31, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.h = load i32, ptr %2, align 4, !tbaa !17
  %.not23 = icmp eq i32 %i.h, 0
  %.off = add i32 %i.c, -1
  %switch = icmp ult i32 %.off, 3
  %or.cond = and i1 %switch, %.not23
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load i16, ptr %i.i, align 4, !tbaa !18
  switch i16 %i.j, label %bb.g [
    i16 14, label %bb.f
    i16 11, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !19   ; 3 uses
  %i.m = icmp sgt i32 %i.l, 8
  br i1 %i.m, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.n = icmp samesign ugt i32 %i.l, 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %i.n, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i16 2, ptr %i.s, align 4, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i16 2, ptr %i.t, align 2, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i16 2, ptr %i.u, align 4, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 26
  store i8 1, ptr %i.v, align 2, !tbaa !22
  store i32 1, ptr %6, align 4, !tbaa !17
  store i32 3, ptr %i.o, align 4, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i8, ptr %i.w, align 4, !tbaa !23, !range !24, !noundef !25
  store i8 %i.x, ptr %i.p, align 4, !tbaa !23
  store i32 %i.l, ptr %i.q, align 4, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load i32, ptr %i.y, align 4, !tbaa !26
  store i32 %i.z, ptr %i.r, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 11, ptr %i.a, align 4, !tbaa !28
  %i.aa = invoke noundef nonnull align 4 dereferenceable(32) ptr @_ZNSt3__16vectorI18ColorStateWithCostNS_9allocatorIS1_EEE12emplace_backIJR10ColorState10SpeedCostsEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(28) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.k unwind label %bb.l       ; 0 uses

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.ac = load ptr, ptr %0, align 8, !tbaa !34    ; 4 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorI18ColorStateWithCostNS_9allocatorIS1_EEED2B8ne180100Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !35
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !36
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ac to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ai) #18
  br label %_ZNSt3__16vectorI18ColorStateWithCostNS_9allocatorIS1_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorI18ColorStateWithCostNS_9allocatorIS1_EEED2B8ne180100Ev.exit: ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %i.ab

bb.n:                                             ; preds = %bb.i, %bb.f, %bb.k, %bb.h, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZNK15Op_YCbCr_to_RGBItE18convert_colorspaceERKNSt3__110shared_ptrIK14HeifPixelImageEERK10ColorStateSA_RK29heif_color_conversion_optionsRK33heif_color_conversion_options_extPK20heif_security_limits(ptr dead_on_unwind noalias writable sret(%class.Result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(28) %3, ptr noundef nonnull align 4 dereferenceable(28) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(24) %6, ptr noundef %7) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__1::shared_ptr", align 8 ; 8 uses
  %9 = alloca %class.Error, align 8               ; 13 uses
  %10 = alloca %class.Error, align 8              ; 12 uses
  %11 = alloca %class.Error, align 8              ; 13 uses
  %12 = alloca %class.Error, align 8              ; 12 uses
  %13 = alloca %class.Error, align 8              ; 12 uses
  %14 = alloca %class.Error, align 8              ; 13 uses
  %15 = alloca %struct.YCbCr_to_RGB_coefficients, align 16 ; 9 uses
  %16 = alloca %struct.YCbCr_to_RGB_coefficients, align 4 ; 5 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 380
  %i.c = load i32, ptr %i.b, align 4, !tbaa !123  ; 2 uses
  %i.d = tail call noundef zeroext i16 @_ZNK14HeifPixelImage18get_bits_per_pixelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.a, i32 noundef 0) ; 4 uses
  %i.e = zext i16 %i.d to i32                     ; 6 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !45
  %i.g = tail call noundef zeroext i16 @_ZNK14HeifPixelImage18get_bits_per_pixelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.f, i32 noundef 1) ; 3 uses
  %i.h = zext i16 %i.g to i32
  %i.i = load ptr, ptr %2, align 8, !tbaa !45
  %i.j = tail call noundef zeroext i16 @_ZNK14HeifPixelImage18get_bits_per_pixelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.i, i32 noundef 2) ; 2 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !45
  %i.l = tail call noundef zeroext i1 @_ZNK14HeifPixelImage11has_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.k, i32 noundef 6) ; 5 uses
  %.sink497.sroa.gep = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.sink497.sroa.gep514 = getelementptr inbounds nuw i8, ptr %13, i64 24
  %.sink497.sroa.gep516 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sink497.sroa.gep517 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %.sink493.sroa.gep = getelementptr inbounds nuw i8, ptr %11, i64 24
  %.sink493.sroa.gep518 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %.sink493.sroa.gep520 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sink493.sroa.gep521 = getelementptr inbounds nuw i8, ptr %12, i64 16
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %2, align 8, !tbaa !45
  %i.n = tail call noundef zeroext i16 @_ZNK14HeifPixelImage18get_bits_per_pixelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.m, i32 noundef 6)
  %i.o = zext i16 %i.n to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0230 = phi i32 [ %i.o, %bb.b ], [ 0, %bb.a ]  ; 2 uses
  %i.p = icmp eq i16 %i.d, 8
  %i.q = icmp eq i16 %i.g, 8
  %or.cond6 = or i1 %i.p, %i.q
  %i.r = icmp eq i16 %i.j, 8
  %or.cond8 = or i1 %or.cond6, %i.r
  br i1 %or.cond8, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr @_ZN5Error13InternalErrorE, align 8
  store i64 %i.s, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error13InternalErrorE, i64 8), align 8
  %i.v = trunc i8 %i.u to i1
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN5Error13InternalErrorE, i64 8), i64 24, i1 false), !tbaa.struct !125
  br label %_ZN6ResultINSt3__110shared_ptrI14HeifPixelImageEEEC2ERK5Error.exit

bb.f:                                             ; preds = %bb.d
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error13InternalErrorE, i64 24), align 8, !tbaa !124
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error13InternalErrorE, i64 16), align 8, !tbaa !124
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef %i.w, i64 noundef %i.x)
  br label %_ZN6ResultINSt3__110shared_ptrI14HeifPixelImageEEEC2ERK5Error.exit

_ZN6ResultINSt3__110shared_ptrI14HeifPixelImageEEEC2ERK5Error.exit: ; preds = %bb.e, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.y, align 8, !tbaa !127
  br label %bb.cg

bb.g:                                             ; preds = %bb.c
  %.not = icmp eq i16 %i.d, %i.g
  %.not255 = icmp eq i16 %i.d, %i.j
  %or.cond = and i1 %.not, %.not255
  br i1 %or.cond, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load i64, ptr @_ZN5Error13InternalErrorE, align 8
  store i64 %i.z, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error13InternalErrorE, i64 8), align 8
  %i.ac = trunc i8 %i.ab to i1
  br i1 %i.ac, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN5Error13InternalErrorE, i64 8), i64 24, i1 false), !tbaa.struct !125
  br label %_ZN6ResultINSt3__110shared_ptrI14HeifPixelImageEEEC2ERK5Error.exit273

bb.j:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error13InternalErrorE, i64 24), align 8, !tbaa !124
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error13InternalErrorE, i64 16), align 8, !tbaa !124
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef %i.ad, i64 noundef %i.ae)
  br label %_ZN6ResultINSt3__110shared_ptrI14HeifPixelImageEEEC2ERK5Error.exit273

_ZN6ResultINSt3__110shared_ptrI14HeifPixelImageEEEC2ERK5Error.exit273: ; preds = %bb.i, %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.af, align 8, !tbaa !127
  br label %bb.cg

bb.k:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 368
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !128 ; 13 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 372
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !129 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.al = tail call noalias noundef nonnull dereferenceable(472) ptr @_Znwm(i64 noundef 472) #20, !noalias !211 ; 26 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false), !noalias !211
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceI14HeifPixelImageNS_9allocatorIS1_EEEE, i64 16), ptr %i.al, align 8, !tbaa !131, !noalias !211
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 34
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.aq, i8 0, i64 312, i1 false), !noalias !211
  store i56 281483566776322, ptr %i.ap, align 2, !noalias !211
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false), !noalias !211
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  store i56 281483566776322, ptr %i.as, align 8, !noalias !211
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false), !noalias !211
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  store i32 1, ptr %i.au, align 8, !tbaa !132, !noalias !211
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 92
  store i32 1, ptr %i.av, align 4, !tbaa !133, !noalias !211
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aw, i8 0, i64 56, i1 false), !noalias !211
  store i32 1, ptr %i.ax, align 8, !tbaa !134, !noalias !211
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 256
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(74) %i.ay, i8 0, i64 74, i1 false), !noalias !211
  store i32 255, ptr %i.az, align 8, !tbaa !135, !noalias !211
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i8 0, i64 24, i1 false), !noalias !211
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 384
  store ptr @.str.4, ptr %i.bb, align 8, !tbaa !136, !noalias !211
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTV14HeifPixelImage, i64 16), ptr %i.ao, align 8, !tbaa !131, !noalias !211
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 392
  store <4 x i32> <i32 0, i32 0, i32 99, i32 99>, ptr %i.bc, align 8, !tbaa !124, !noalias !211
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 408
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bd, i8 0, i64 64, i1 false), !noalias !211
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  store ptr %i.ao, ptr %8, align 8, !tbaa !138, !alias.scope !213
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store ptr %i.al, ptr %i.be, align 8, !tbaa !139, !alias.scope !213
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 352
  %i.bg = getelementptr inbounds nuw i8, ptr %i.al, i64 344
  %i.bh = atomicrmw add ptr %i.am, i64 1 monotonic, align 8, !noalias !213 ; 0 uses
  %i.bi = atomicrmw add ptr %i.an, i64 1 monotonic, align 8, !noalias !213 ; 0 uses
  store ptr %i.ao, ptr %i.bg, align 8, !tbaa !140, !noalias !213
  store ptr %i.al, ptr %i.bf, align 8, !tbaa !141, !noalias !213
  %i.bj = atomicrmw add ptr %i.am, i64 -1 acq_rel, align 8, !noalias !213
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.l, label %_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_.exit

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %i.al, align 8, !tbaa !131, !noalias !213
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !213
  tail call void %i.bn(ptr noundef nonnull align 8 dereferenceable(24) %i.al) #17, !noalias !213, !inline_history !0
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.al) #17, !noalias !213
  br label %_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_.exit

_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_.exit: ; preds = %bb.k, %bb.l
  %i.bo = load ptr, ptr %8, align 8, !tbaa !138   ; 10 uses
  invoke void @_ZN14HeifPixelImage6createEjj15heif_colorspace11heif_chroma(ptr noundef nonnull align 8 dereferenceable(448) %i.bo, i32 noundef %i.ai, i32 noundef %i.ak, i32 noundef 1, i32 noundef 3)
          to label %bb.m unwind label %bb.ab

bb.m:                                             ; preds = %_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  invoke void @_ZN14HeifPixelImage11add_channelE12heif_channeljjiPK20heif_security_limits23heif_component_datatype(ptr dead_on_unwind nonnull writable sret(%class.Error) align 8 %11, ptr noundef nonnull align 8 dereferenceable(448) %i.bo, i32 noundef 3, i32 noundef %i.ai, i32 noundef %i.ak, i32 noundef %i.e, ptr noundef %7, i32 noundef 0)
          to label %bb.n unwind label %bb.ac

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  invoke void @_ZN14HeifPixelImage11add_channelE12heif_channeljjiPK20heif_security_limits23heif_component_datatype(ptr dead_on_unwind nonnull writable sret(%class.Error) align 8 %12, ptr noundef nonnull align 8 dereferenceable(448) %i.bo, i32 noundef 4, i32 noundef %i.ai, i32 noundef %i.ak, i32 noundef %i.e, ptr noundef %7, i32 noundef 0)
          to label %bb.o unwind label %bb.ad

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.bp = load i32, ptr %11, align 8, !tbaa !145, !noalias !214
  %.not.i = icmp eq i32 %i.bp, 0
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = load i64, ptr %11, align 8, !noalias !214
  store i64 %i.br, ptr %10, align 8, !alias.scope !214
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 8, !noalias !214
  %i.bu = trunc i8 %i.bt to i1
  br i1 %i.bu, label %.invoke, label %_ZNK5ErrorooERKS_.exit.sink.split

bb.q:                                             ; preds = %bb.o
  %i.bv = load i64, ptr %12, align 8, !noalias !214
  store i64 %i.bv, ptr %10, align 8, !alias.scope !214
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 8, !noalias !214
  %i.by = trunc i8 %i.bx to i1
  br i1 %i.by, label %.invoke, label %_ZNK5ErrorooERKS_.exit.sink.split

.invoke:                                          ; preds = %bb.q, %bb.p
  %.sink493.sroa.phi = phi ptr [ %.sink493.sroa.gep, %bb.p ], [ %.sink493.sroa.gep518, %bb.q ]
end_hunk_0
begin_hunk_1_@_ZNK15Op_YCbCr_to_RGBItE18convert_colorspaceERKNSt3__110shared_ptrIK14HeifPixelImageEERK10ColorStateSA_RK29heif_color_conversion_optionsRK33heif_color_conversion_options_extPK20heif_security_limits:bb.a
  %i.hn = ashr exact i64 %sext.i.i.i298, 32
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 56
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !154
  %i.hq = lshr i64 %i.hn, 1
  br label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit301

_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit301: ; preds = %bb.be, %.noexc300
  %.0399 = phi i64 [ %i.hq, %bb.be ], [ 0, %.noexc300 ]
  %.0.i.i.i299 = phi ptr [ %i.hp, %bb.be ], [ null, %.noexc300 ]
  %i.hr = load ptr, ptr %2, align 8, !tbaa !45
  %i.hs = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.hr, i32 noundef 2)
          to label %.noexc305 unwind label %bb.bm ; 3 uses

.noexc305:                                        ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit301
  %.not.i.i.i302 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.i302, label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit306, label %bb.bf

bb.bf:                                            ; preds = %.noexc305
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 80
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !153
  %sext.i.i.i303 = shl i64 %i.hu, 32
  %i.hv = ashr exact i64 %sext.i.i.i303, 32
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 56
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !154
  %i.hy = lshr i64 %i.hv, 1
  br label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit306

_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit306: ; preds = %bb.bf, %.noexc305
  %.0400 = phi i64 [ %i.hy, %bb.bf ], [ 0, %.noexc305 ]
  %.0.i.i.i304 = phi ptr [ %i.hx, %bb.bf ], [ null, %.noexc305 ]
  %i.hz = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.bo, i32 noundef 3)
          to label %.noexc307 unwind label %bb.bm ; 3 uses

.noexc307:                                        ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit306
  %.not.i.i = icmp eq ptr %i.hz, null
  br i1 %.not.i.i, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, label %bb.bg

bb.bg:                                            ; preds = %.noexc307
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 80
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !153
  %sext.i.i = shl i64 %i.ib, 32
  %i.ic = ashr exact i64 %sext.i.i, 32
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 56
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !154
  %i.if = lshr i64 %i.ic, 1
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit: ; preds = %bb.bg, %.noexc307
  %.0404 = phi i64 [ %i.if, %bb.bg ], [ 0, %.noexc307 ]
  %.0.i.i = phi ptr [ %i.ie, %bb.bg ], [ null, %.noexc307 ]
  %i.ig = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.bo, i32 noundef 4)
          to label %.noexc311 unwind label %bb.bm ; 3 uses

.noexc311:                                        ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit
  %.not.i.i308 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i308, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit312, label %bb.bh

bb.bh:                                            ; preds = %.noexc311
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 80
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !153
  %sext.i.i309 = shl i64 %i.ii, 32
  %i.ij = ashr exact i64 %sext.i.i309, 32
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 56
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !154
  %i.im = lshr i64 %i.ij, 1
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit312

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit312: ; preds = %bb.bh, %.noexc311
  %.0403 = phi i64 [ %i.im, %bb.bh ], [ 0, %.noexc311 ]
  %.0.i.i310 = phi ptr [ %i.il, %bb.bh ], [ null, %.noexc311 ]
  %i.in = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.bo, i32 noundef 5)
          to label %.noexc316 unwind label %bb.bm ; 3 uses

.noexc316:                                        ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit312
  %.not.i.i313 = icmp eq ptr %i.in, null
  br i1 %.not.i.i313, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit317, label %bb.bi

bb.bi:                                            ; preds = %.noexc316
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 80
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !153
  %sext.i.i314 = shl i64 %i.ip, 32
  %i.iq = ashr exact i64 %sext.i.i314, 32
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 56
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !154
  %i.it = lshr i64 %i.iq, 1
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit317

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit317: ; preds = %bb.bi, %.noexc316
  %.0402 = phi i64 [ %i.it, %bb.bi ], [ 0, %.noexc316 ]
  %.0.i.i315 = phi ptr [ %i.is, %bb.bi ], [ null, %.noexc316 ]
  br i1 %i.l, label %bb.bj, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit327

bb.bj:                                            ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit317
  %i.iu = load ptr, ptr %2, align 8, !tbaa !45
  %i.iv = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.iu, i32 noundef 6)
          to label %.noexc321 unwind label %bb.bn ; 3 uses

.noexc321:                                        ; preds = %bb.bj
  %.not.i.i.i318 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i318, label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit322, label %bb.bk

bb.bk:                                            ; preds = %.noexc321
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 80
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !153
  %sext.i.i.i319 = shl i64 %i.ix, 32
  %i.iy = ashr exact i64 %sext.i.i.i319, 32
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 56
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !154
  br label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit322

_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit322: ; preds = %bb.bk, %.noexc321
  %.1406 = phi i64 [ %i.iy, %bb.bk ], [ 0, %.noexc321 ] ; 2 uses
  %.0.i.i.i320 = phi ptr [ %i.ja, %bb.bk ], [ null, %.noexc321 ] ; 2 uses
  %i.jb = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.bo, i32 noundef 6)
          to label %.noexc326 unwind label %bb.bn ; 3 uses

.noexc326:                                        ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit322
  %.not.i.i323 = icmp eq ptr %i.jb, null
  br i1 %.not.i.i323, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit327, label %bb.bl

bb.bl:                                            ; preds = %.noexc326
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 80
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !153
  %sext.i.i324 = shl i64 %i.jd, 32
  %i.je = ashr exact i64 %sext.i.i324, 32
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 56
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !154
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit327

bb.bm:                                            ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit312, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit306, %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit301, %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, %bb.bc
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.bn:                                            ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit322, %bb.bj
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit327: ; preds = %bb.bl, %.noexc326, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit317
  %.0405 = phi i64 [ 0, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit317 ], [ %.1406, %.noexc326 ], [ %.1406, %bb.bl ] ; 4 uses
  %.0401 = phi i64 [ 0, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit317 ], [ 0, %.noexc326 ], [ %i.je, %bb.bl ] ; 4 uses
  %.0251 = phi ptr [ null, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit317 ], [ %.0.i.i.i320, %.noexc326 ], [ %.0.i.i.i320, %bb.bl ] ; 4 uses
  %.0250 = phi ptr [ null, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit317 ], [ null, %.noexc326 ], [ %i.jg, %bb.bl ] ; 4 uses
  %i.jj = add nsw i32 %i.e, -1
  %i.jk = shl nuw i32 1, %i.jj
  %i.jl = add nsw i32 %i.h, -1
  %notmask = shl nsw i32 -1, %i.e
  %i.jm = xor i32 %notmask, -1                    ; 7 uses
  %i.jn = add nsw i32 %i.e, -8
  %i.jo = shl i32 16, %i.jn
  %i.jp = sitofp i32 %i.jo to float               ; 4 uses
  %i.jq = invoke noundef zeroext i8 @_Z20chroma_h_subsampling11heif_chroma(i32 noundef %i.c)
          to label %bb.bo unwind label %bb.bq

bb.bo:                                            ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit327
  %i.jr = zext i8 %i.jq to i32
  %i.js = add nsw i32 %i.jr, -1                   ; 7 uses
  %i.jt = invoke noundef zeroext i8 @_Z20chroma_v_subsampling11heif_chroma(i32 noundef %i.c)
          to label %bb.bp unwind label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.ju = zext i8 %i.jt to i32
  %i.jv = add nsw i32 %i.ju, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  invoke void @_ZN25YCbCr_to_RGB_coefficients8defaultsEv(ptr dead_on_unwind nonnull writable sret(%struct.YCbCr_to_RGB_coefficients) align 4 %15)
          to label %bb.bs unwind label %bb.bw

bb.bq:                                            ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit327
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.br:                                            ; preds = %bb.bo
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.bs:                                            ; preds = %bb.bp
  %i.jy = load ptr, ptr %2, align 8, !tbaa !45
  %i.jz = invoke noundef zeroext i1 @_ZNK16ImageDescription22has_nclx_color_profileEv(ptr noundef nonnull align 8 dereferenceable(316) %i.jy)
          to label %bb.bt unwind label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  br i1 %i.jz, label %bb.bu, label %bb.by

bb.bu:                                            ; preds = %bb.bt
  %i.ka = load ptr, ptr %2, align 8, !tbaa !45
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 10
  %.sroa.0.0.copyload.i = load i64, ptr %i.kb, align 2 ; 3 uses
  %.sroa.0357.4.extract.shift409 = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.0357.4.extract.trunc = trunc i64 %.sroa.0357.4.extract.shift409 to i16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %.sroa.0357.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i16
  invoke void @_Z29get_YCbCr_to_RGB_coefficientstt(ptr dead_on_unwind nonnull writable sret(%struct.YCbCr_to_RGB_coefficients) align 4 %16, i16 noundef zeroext %.sroa.0357.4.extract.trunc, i16 noundef zeroext %.sroa.0357.0.extract.trunc)
          to label %bb.bv unwind label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.kc = and i64 %.sroa.0.0.copyload.i, 281474976710656
  %i.kd = icmp ne i64 %i.kc, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %15, ptr noundef nonnull align 4 dereferenceable(20) %16, i64 20, i1 false), !tbaa.struct !157
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %bb.by

bb.bw:                                            ; preds = %bb.bs, %bb.bp
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.bx:                                            ; preds = %bb.bu
  %i.kf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %bb.cb

bb.by:                                            ; preds = %bb.bv, %bb.bt
  %.0249 = phi i16 [ %.sroa.0357.4.extract.trunc, %bb.bv ], [ 2, %bb.bt ]
  %.0248 = phi i1 [ %i.kd, %bb.bv ], [ true, %bb.bt ] ; 4 uses
  %.not430 = icmp eq i32 %i.ak, 0
  br i1 %.not430, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.by
  %.not431 = icmp eq i32 %i.ai, 0
  %i.kg = shl nuw i32 1, %i.jl
  %i.kh = trunc i32 %i.kg to i16                  ; 2 uses
  %i.ki = and i32 %i.jm, 65535                    ; 3 uses
  %i.kj = and i32 %i.jk, 65535                    ; 4 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.kl = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.km = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.kn = icmp samesign ugt i32 %.0230, 8
  %i.ko = zext i1 %i.kn to i32
  %i.kp = shl i32 %i.ai, %i.ko
  %i.kq = sext i32 %i.kp to i64                   ; 4 uses
  br i1 %.not431, label %.preheader.lr.ph.split, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count461 = zext i32 %i.ak to i64
  %wide.trip.count = zext i32 %i.ai to i64        ; 3 uses
  %wide.trip.count441 = zext i32 %i.ai to i64
  %wide.trip.count446 = zext i32 %i.ai to i64
  %wide.trip.count456 = zext i32 %i.ai to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %i.kr = icmp eq i32 %i.ai, 1
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod508 = trunc i32 %i.ai to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.ca
  %indvars.iv458 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next459, %bb.ca ] ; 8 uses
  %i.ks = trunc nuw i64 %indvars.iv458 to i32
  %i.kt = lshr i32 %i.ks, %i.jv
  %i.ku = mul i64 %.0398, %indvars.iv458
  %i.kv = getelementptr [2 x i8], ptr %.0.i.i.i, i64 %i.ku ; 7 uses
  %i.kw = sext i32 %i.kt to i64                   ; 2 uses
  %i.kx = mul i64 %.0399, %i.kw
  %i.ky = getelementptr [2 x i8], ptr %.0.i.i.i299, i64 %i.kx ; 7 uses
  %i.kz = mul i64 %.0400, %i.kw
  %i.la = getelementptr [2 x i8], ptr %.0.i.i.i304, i64 %i.kz ; 7 uses
  %i.lb = mul i64 %.0404, %indvars.iv458
  %i.lc = getelementptr [2 x i8], ptr %.0.i.i, i64 %i.lb ; 7 uses
  %i.ld = mul i64 %.0403, %indvars.iv458
  %i.le = getelementptr [2 x i8], ptr %.0.i.i310, i64 %i.ld ; 7 uses
  %i.lf = mul i64 %.0402, %indvars.iv458
  %i.lg = getelementptr [2 x i8], ptr %.0.i.i315, i64 %i.lf ; 7 uses
  %i.lh = load <1 x float>, ptr %i.kk, align 4
  %17 = load <4 x float>, ptr %15, align 16
  %18 = shufflevector <4 x float> %17, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.li = load float, ptr %i.kl, align 4
  %i.lj = load float, ptr %i.km, align 16
  switch i16 %.0249, label %.lr.ph.split.us420.preheader [
    i16 0, label %.lr.ph.split.us.us
    i16 8, label %.lr.ph.split.us412.us
    i16 16, label %.lr.ph.split.us414.us
  ]

.lr.ph.split.us420.preheader:                     ; preds = %.preheader.us
  %i.lk = shufflevector <1 x float> %i.lh, <1 x float> poison, <2 x i32> <i32 poison, i32 0>
  %19 = insertelement <2 x float> %i.lk, float %i.li, i64 0
  %i.ll = insertelement <2 x float> %18, float %i.lj, i64 1
  br label %.lr.ph.split.us420

.lr.ph.split.us414.us:                            ; preds = %.preheader.us, %.lr.ph.split.us414.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split.us414.us ], [ 0, %.preheader.us ] ; 6 uses
  %i.lm = trunc nuw i64 %indvars.iv to i32
  %i.ln = lshr i32 %i.lm, %i.js
  %i.lo = getelementptr [2 x i8], ptr %i.kv, i64 %indvars.iv
  %i.lp = load i16, ptr %i.lo, align 2, !tbaa !40
  %i.lq = sext i32 %i.ln to i64                   ; 2 uses
  %i.lr = getelementptr [2 x i8], ptr %i.ky, i64 %i.lq
  %i.ls = load i16, ptr %i.lr, align 2, !tbaa !40
  %i.lt = sub i16 %i.ls, %i.kh                    ; 2 uses
  %i.lu = getelementptr [2 x i8], ptr %i.la, i64 %i.lq
  %i.lv = load i16, ptr %i.lu, align 2, !tbaa !40
  %i.lw = sub i16 %i.lv, %i.kh                    ; 2 uses
  %i.lx = ashr i16 %i.lt, 1
  %i.ly = sub i16 %i.lp, %i.lx                    ; 2 uses
  %i.lz = add i16 %i.ly, %i.lt                    ; 2 uses
  %i.ma = ashr i16 %i.lw, 1
  %i.mb = sub i16 %i.ly, %i.ma                    ; 3 uses
  %i.mc = sext i16 %i.mb to i32
  %i.md = add i16 %i.mb, %i.lw                    ; 2 uses
  %i.me = sext i16 %i.md to i32
  %i.mf = shl nsw i32 %i.me, 2
  %i.mg = icmp slt i16 %i.md, 0
  %spec.select7.i.us.us = call i32 @llvm.umin.i32(i32 %i.mf, i32 %i.ki)
  %spec.select.i339.us.us = trunc nuw i32 %spec.select7.i.us.us to i16
  %.0.i340.us.us = select i1 %i.mg, i16 0, i16 %spec.select.i339.us.us
  %i.mh = getelementptr [2 x i8], ptr %i.lc, i64 %indvars.iv
  store i16 %.0.i340.us.us, ptr %i.mh, align 2, !tbaa !40
  %i.mi = sext i16 %i.lz to i32
  %i.mj = shl nsw i32 %i.mi, 2
  %i.mk = icmp slt i16 %i.lz, 0
  %spec.select7.i341.us.us = call i32 @llvm.umin.i32(i32 %i.mj, i32 %i.ki)
  %spec.select.i342.us.us = trunc nuw i32 %spec.select7.i341.us.us to i16
  %.0.i343.us.us = select i1 %i.mk, i16 0, i16 %spec.select.i342.us.us
  %i.ml = getelementptr [2 x i8], ptr %i.le, i64 %indvars.iv
  store i16 %.0.i343.us.us, ptr %i.ml, align 2, !tbaa !40
  %i.mm = shl nsw i32 %i.mc, 2
  %i.mn = icmp slt i16 %i.mb, 0
  %spec.select7.i344.us.us = call i32 @llvm.umin.i32(i32 %i.mm, i32 %i.ki)
  %spec.select.i345.us.us = trunc nuw i32 %spec.select7.i344.us.us to i16
  %.0.i346.us.us = select i1 %i.mn, i16 0, i16 %spec.select.i345.us.us
  %i.mo = getelementptr [2 x i8], ptr %i.lg, i64 %indvars.iv
  store i16 %.0.i346.us.us, ptr %i.mo, align 2, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %.lr.ph.split.us414.us, !llvm.loop !207

.lr.ph.split.us412.us:                            ; preds = %.preheader.us, %.lr.ph.split.us412.us
  %indvars.iv438 = phi i64 [ %indvars.iv.next439, %.lr.ph.split.us412.us ], [ 0, %.preheader.us ] ; 6 uses
  %i.mp = trunc nuw i64 %indvars.iv438 to i32
  %i.mq = lshr i32 %i.mp, %i.js
  %i.mr = getelementptr [2 x i8], ptr %i.kv, i64 %indvars.iv438
  %i.ms = load i16, ptr %i.mr, align 2, !tbaa !40
  %i.mt = zext i16 %i.ms to i32                   ; 2 uses
  %i.mu = sext i32 %i.mq to i64                   ; 2 uses
  %i.mv = getelementptr [2 x i8], ptr %i.ky, i64 %i.mu
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !40
  %i.mx = zext i16 %i.mw to i32
  %i.my = sub nsw i32 %i.mx, %i.kj                ; 2 uses
  %i.mz = getelementptr [2 x i8], ptr %i.la, i64 %i.mu
  %i.na = load i16, ptr %i.mz, align 2, !tbaa !40
  %i.nb = zext i16 %i.na to i32
  %i.nc = sub nsw i32 %i.nb, %i.kj                ; 2 uses
  %i.nd = sub nsw i32 %i.mt, %i.my                ; 2 uses
  %i.ne = add nsw i32 %i.nd, %i.nc                ; 2 uses
  %i.nf = icmp slt i32 %i.ne, 0
  %spec.select5.i.us.us = call i32 @llvm.umin.i32(i32 %i.ne, i32 255)
  %spec.select.i.us.us = trunc nuw nsw i32 %spec.select5.i.us.us to i16
  %i.ng = select i1 %i.nf, i16 0, i16 %spec.select.i.us.us
  %i.nh = getelementptr [2 x i8], ptr %i.lc, i64 %indvars.iv438
  store i16 %i.ng, ptr %i.nh, align 2, !tbaa !40
  %i.ni = add nsw i32 %i.my, %i.mt                ; 2 uses
  %i.nj = icmp slt i32 %i.ni, 0
  %spec.select5.i333.us.us = call i32 @llvm.umin.i32(i32 %i.ni, i32 255)
  %spec.select.i334.us.us = trunc nuw nsw i32 %spec.select5.i333.us.us to i16
  %i.nk = select i1 %i.nj, i16 0, i16 %spec.select.i334.us.us
  %i.nl = getelementptr [2 x i8], ptr %i.le, i64 %indvars.iv438
  store i16 %i.nk, ptr %i.nl, align 2, !tbaa !40
  %i.nm = sub nsw i32 %i.nd, %i.nc                ; 2 uses
  %i.nn = icmp slt i32 %i.nm, 0
  %spec.select5.i336.us.us = call i32 @llvm.umin.i32(i32 %i.nm, i32 255)
  %spec.select.i337.us.us = trunc nuw nsw i32 %spec.select5.i336.us.us to i16
  %i.no = select i1 %i.nn, i16 0, i16 %spec.select.i337.us.us
  %i.np = getelementptr [2 x i8], ptr %i.lg, i64 %indvars.iv438
  store i16 %i.no, ptr %i.np, align 2, !tbaa !40
  %indvars.iv.next439 = add nuw nsw i64 %indvars.iv438, 1 ; 2 uses
  %exitcond442.not = icmp eq i64 %indvars.iv.next439, %wide.trip.count441
  br i1 %exitcond442.not, label %._crit_edge.us, label %.lr.ph.split.us412.us, !llvm.loop !207

.lr.ph.split.us.us:                               ; preds = %.preheader.us
  br i1 %.0248, label %.lr.ph.split.us.split.us.us.preheader, label %.lr.ph.split.us.split.us417

.lr.ph.split.us.split.us.us.preheader:            ; preds = %.lr.ph.split.us.us
  br i1 %i.kr, label %.lr.ph.split.us.split.us.us.epil.preheader, label %.lr.ph.split.us.split.us.us

.lr.ph.split.us.split.us417:                      ; preds = %.lr.ph.split.us.us, %.lr.ph.split.us.split.us417
  %indvars.iv443 = phi i64 [ %indvars.iv.next444, %.lr.ph.split.us.split.us417 ], [ 0, %.lr.ph.split.us.us ] ; 6 uses
  %i.nq = trunc nuw i64 %indvars.iv443 to i32
  %i.nr = lshr i32 %i.nq, %i.js
  %i.ns = sext i32 %i.nr to i64                   ; 2 uses
  %i.nt = getelementptr [2 x i8], ptr %i.la, i64 %i.ns
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !40
  %i.nv = uitofp i16 %i.nu to float
  %i.nw = fsub nnan float %i.nv, %i.jp
  %i.nx = fmul nnan float %i.nw, 1.142900e+00
  %i.ny = fadd float %i.nx, 5.000000e-01
  %i.nz = fptosi float %i.ny to i32               ; 2 uses
  %i.oa = icmp slt i32 %i.nz, 0
  %spec.select.v = call i32 @llvm.smin.i32(i32 %i.jm, i32 %i.nz)
  %spec.select = trunc i32 %spec.select.v to i16
  %.0.i.us.us = select i1 %i.oa, i16 0, i16 %spec.select
  %i.ob = getelementptr [2 x i8], ptr %i.lc, i64 %indvars.iv443
  store i16 %.0.i.us.us, ptr %i.ob, align 2, !tbaa !40
  %i.oc = getelementptr [2 x i8], ptr %i.kv, i64 %indvars.iv443
  %i.od = load i16, ptr %i.oc, align 2, !tbaa !40
  %i.oe = uitofp i16 %i.od to float
  %i.of = fsub nnan float %i.oe, %i.jp
  %i.og = fmul nnan float %i.of, 1.168900e+00
  %i.oh = fadd float %i.og, 5.000000e-01
  %i.oi = fptosi float %i.oh to i32               ; 2 uses
  %i.oj = icmp slt i32 %i.oi, 0
  %spec.select425.v = call i32 @llvm.smin.i32(i32 %i.jm, i32 %i.oi)
  %spec.select425 = trunc i32 %spec.select425.v to i16
  %.0.i328.us.us = select i1 %i.oj, i16 0, i16 %spec.select425
  %i.ok = getelementptr [2 x i8], ptr %i.le, i64 %indvars.iv443
  store i16 %.0.i328.us.us, ptr %i.ok, align 2, !tbaa !40
  %i.ol = getelementptr [2 x i8], ptr %i.ky, i64 %i.ns
  %i.om = load i16, ptr %i.ol, align 2, !tbaa !40
  %i.on = uitofp i16 %i.om to float
  %i.oo = fsub nnan float %i.on, %i.jp
  %i.op = fmul nnan float %i.oo, 1.142900e+00
  %i.oq = fadd float %i.op, 5.000000e-01
  %i.or = fptosi float %i.oq to i32               ; 2 uses
  %i.os = icmp slt i32 %i.or, 0
  %spec.select426.v = call i32 @llvm.smin.i32(i32 %i.jm, i32 %i.or)
  %spec.select426 = trunc i32 %spec.select426.v to i16
  %.0.i330.us.us = select i1 %i.os, i16 0, i16 %spec.select426
  %i.ot = getelementptr [2 x i8], ptr %i.lg, i64 %indvars.iv443
  store i16 %.0.i330.us.us, ptr %i.ot, align 2, !tbaa !40
  %indvars.iv.next444 = add nuw nsw i64 %indvars.iv443, 1 ; 2 uses
  %exitcond447.not = icmp eq i64 %indvars.iv.next444, %wide.trip.count446
  br i1 %exitcond447.not, label %._crit_edge.us, label %.lr.ph.split.us.split.us417, !llvm.loop !207

.lr.ph.split.us.split.us.us:                      ; preds = %.lr.ph.split.us.split.us.us.preheader, %.lr.ph.split.us.split.us.us
  %indvars.iv448 = phi i64 [ %indvars.iv.next449.1, %.lr.ph.split.us.split.us.us ], [ 0, %.lr.ph.split.us.split.us.us.preheader ] ; 7 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.split.us.split.us.us ], [ 0, %.lr.ph.split.us.split.us.us.preheader ]
  %i.ou = trunc nuw i64 %indvars.iv448 to i32
  %i.ov = lshr i32 %i.ou, %i.js
  %i.ow = sext i32 %i.ov to i64                   ; 2 uses
  %i.ox = getelementptr [2 x i8], ptr %i.la, i64 %i.ow
  %i.oy = load i16, ptr %i.ox, align 2, !tbaa !40
  %i.oz = getelementptr [2 x i8], ptr %i.lc, i64 %indvars.iv448
  store i16 %i.oy, ptr %i.oz, align 2, !tbaa !40
  %i.pa = getelementptr [2 x i8], ptr %i.kv, i64 %indvars.iv448
  %i.pb = load i16, ptr %i.pa, align 2, !tbaa !40
  %i.pc = getelementptr [2 x i8], ptr %i.le, i64 %indvars.iv448
  store i16 %i.pb, ptr %i.pc, align 2, !tbaa !40
  %i.pd = getelementptr [2 x i8], ptr %i.ky, i64 %i.ow
  %i.pe = load i16, ptr %i.pd, align 2, !tbaa !40
  %i.pf = getelementptr [2 x i8], ptr %i.lg, i64 %indvars.iv448
  store i16 %i.pe, ptr %i.pf, align 2, !tbaa !40
  %indvars.iv.next449 = or disjoint i64 %indvars.iv448, 1 ; 5 uses
  %i.pg = trunc nuw i64 %indvars.iv.next449 to i32
  %i.ph = lshr i32 %i.pg, %i.js
  %i.pi = sext i32 %i.ph to i64                   ; 2 uses
  %i.pj = getelementptr [2 x i8], ptr %i.la, i64 %i.pi
  %i.pk = load i16, ptr %i.pj, align 2, !tbaa !40
  %i.pl = getelementptr [2 x i8], ptr %i.lc, i64 %indvars.iv.next449
  store i16 %i.pk, ptr %i.pl, align 2, !tbaa !40
  %i.pm = getelementptr [2 x i8], ptr %i.kv, i64 %indvars.iv.next449
  %i.pn = load i16, ptr %i.pm, align 2, !tbaa !40
  %i.po = getelementptr [2 x i8], ptr %i.le, i64 %indvars.iv.next449
  store i16 %i.pn, ptr %i.po, align 2, !tbaa !40
  %i.pp = getelementptr [2 x i8], ptr %i.ky, i64 %i.pi
  %i.pq = load i16, ptr %i.pp, align 2, !tbaa !40
  %i.pr = getelementptr [2 x i8], ptr %i.lg, i64 %indvars.iv.next449
  store i16 %i.pq, ptr %i.pr, align 2, !tbaa !40
  %indvars.iv.next449.1 = add nuw nsw i64 %indvars.iv448, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.loopexit503.unr-lcssa, label %.lr.ph.split.us.split.us.us, !llvm.loop !207

.lr.ph.split.us420:                               ; preds = %.lr.ph.split.us420.preheader, %.lr.ph.split.us420
  %indvars.iv453 = phi i64 [ %indvars.iv.next454, %.lr.ph.split.us420 ], [ 0, %.lr.ph.split.us420.preheader ] ; 6 uses
  %i.ps = trunc nuw i64 %indvars.iv453 to i32
  %i.pt = lshr i32 %i.ps, %i.js
  %i.pu = getelementptr [2 x i8], ptr %i.kv, i64 %indvars.iv453
  %i.pv = load i16, ptr %i.pu, align 2, !tbaa !40
  %i.pw = uitofp i16 %i.pv to float               ; 2 uses
  %i.px = sext i32 %i.pt to i64                   ; 2 uses
  %i.py = getelementptr [2 x i8], ptr %i.ky, i64 %i.px
  %i.pz = load i16, ptr %i.py, align 2, !tbaa !40
  %i.qa = zext i16 %i.pz to i32
  %i.qb = sub nsw i32 %i.qa, %i.kj
  %i.qc = sitofp i32 %i.qb to float               ; 2 uses
  %i.qd = getelementptr [2 x i8], ptr %i.la, i64 %i.px
  %i.qe = load i16, ptr %i.qd, align 2, !tbaa !40
  %i.qf = zext i16 %i.qe to i32
  %i.qg = sub nsw i32 %i.qf, %i.kj
  %i.qh = sitofp i32 %i.qg to float               ; 2 uses
  %i.qi = fsub nnan float %i.pw, %i.jp
  %20 = getelementptr [2 x i8], ptr %i.lc, i64 %indvars.iv453
  %i.qj = fmul nnan float %i.qh, 1.142900e+00
  %.0.us = select i1 %.0248, float %i.qh, float %i.qj
  %21 = insertelement <2 x float> poison, float %.0.us, i64 0
  %22 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qk = getelementptr [2 x i8], ptr %i.le, i64 %indvars.iv453
  %23 = fmul nnan float %i.qi, 1.168900e+00
  %24 = fmul nnan float %i.qc, 1.142900e+00
  %.0229.us = select i1 %.0248, float %i.pw, float %23 ; 2 uses
  %.0228.us = select i1 %.0248, float %i.qc, float %24
  %i.ql = insertelement <2 x float> poison, float %.0228.us, i64 0
  %25 = shufflevector <2 x float> %i.ql, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = insertelement <2 x float> poison, float %.0229.us, i64 0
  %27 = shufflevector <2 x float> %26, <2 x float> poison, <2 x i32> zeroinitializer
  %28 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ll, <2 x float> %25, <2 x float> %27) ; 2 uses
  %i.qm = insertelement <2 x float> %28, float %.0229.us, i64 1
  %i.qn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> %22, <2 x float> %i.qm)
  %i.qo = fadd <2 x float> %i.qn, splat (float 5.000000e-01)
  %i.qp = fptosi <2 x float> %i.qo to <2 x i32>   ; 3 uses
  %i.qq = extractelement <2 x i32> %i.qp, i64 1
  %spec.select427.v = call i32 @llvm.smin.i32(i32 %i.jm, i32 %i.qq)
  %spec.select427 = trunc i32 %spec.select427.v to i16
  %i.qr = icmp slt <2 x i32> %i.qp, zeroinitializer ; 2 uses
  %i.qs = extractelement <2 x i1> %i.qr, i64 1
  %.0.i347.us = select i1 %i.qs, i16 0, i16 %spec.select427
  store i16 %.0.i347.us, ptr %20, align 2, !tbaa !40
  %i.qt = extractelement <2 x i32> %i.qp, i64 0
  %spec.select428.v = call i32 @llvm.smin.i32(i32 %i.jm, i32 %i.qt)
  %spec.select428 = trunc i32 %spec.select428.v to i16
  %i.qu = extractelement <2 x i1> %i.qr, i64 0
  %.0.i349.us = select i1 %i.qu, i16 0, i16 %spec.select428
  store i16 %.0.i349.us, ptr %i.qk, align 2, !tbaa !40
  %29 = extractelement <2 x float> %28, i64 1
  %i.qv = fadd float %29, 5.000000e-01
  %i.qw = fptosi float %i.qv to i32               ; 2 uses
  %i.qx = icmp slt i32 %i.qw, 0
  %spec.select429.v = call i32 @llvm.smin.i32(i32 %i.jm, i32 %i.qw)
  %spec.select429 = trunc i32 %spec.select429.v to i16
  %.0.i351.us = select i1 %i.qx, i16 0, i16 %spec.select429
  %i.qy = getelementptr [2 x i8], ptr %i.lg, i64 %indvars.iv453
  store i16 %.0.i351.us, ptr %i.qy, align 2, !tbaa !40
  %indvars.iv.next454 = add nuw nsw i64 %indvars.iv453, 1 ; 2 uses
  %exitcond457.not = icmp eq i64 %indvars.iv.next454, %wide.trip.count456
  br i1 %exitcond457.not, label %._crit_edge.us, label %.lr.ph.split.us420, !llvm.loop !207

._crit_edge.us.loopexit503.unr-lcssa:             ; preds = %.lr.ph.split.us.split.us.us
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.lr.ph.split.us.split.us.us.epil.preheader

.lr.ph.split.us.split.us.us.epil.preheader:       ; preds = %._crit_edge.us.loopexit503.unr-lcssa, %.lr.ph.split.us.split.us.us.preheader
  %indvars.iv448.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.us.us.preheader ], [ %indvars.iv.next449.1, %._crit_edge.us.loopexit503.unr-lcssa ] ; 5 uses
  call void @llvm.assume(i1 %lcmp.mod508)
  %i.qz = trunc nuw i64 %indvars.iv448.epil.init to i32
  %i.ra = lshr i32 %i.qz, %i.js
  %i.rb = sext i32 %i.ra to i64                   ; 2 uses
  %i.rc = getelementptr [2 x i8], ptr %i.la, i64 %i.rb
  %i.rd = load i16, ptr %i.rc, align 2, !tbaa !40
  %i.re = getelementptr [2 x i8], ptr %i.lc, i64 %indvars.iv448.epil.init
  store i16 %i.rd, ptr %i.re, align 2, !tbaa !40
  %i.rf = getelementptr [2 x i8], ptr %i.kv, i64 %indvars.iv448.epil.init
  %i.rg = load i16, ptr %i.rf, align 2, !tbaa !40
  %i.rh = getelementptr [2 x i8], ptr %i.le, i64 %indvars.iv448.epil.init
  store i16 %i.rg, ptr %i.rh, align 2, !tbaa !40
  %i.ri = getelementptr [2 x i8], ptr %i.ky, i64 %i.rb
  %i.rj = load i16, ptr %i.ri, align 2, !tbaa !40
  %i.rk = getelementptr [2 x i8], ptr %i.lg, i64 %indvars.iv448.epil.init
  store i16 %i.rj, ptr %i.rk, align 2, !tbaa !40
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.lr.ph.split.us414.us, %.lr.ph.split.us412.us, %.lr.ph.split.us.split.us417, %.lr.ph.split.us.split.us.us.epil.preheader, %._crit_edge.us.loopexit503.unr-lcssa, %.lr.ph.split.us420
  br i1 %i.l, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %._crit_edge.us
  %i.rl = mul nsw i64 %.0401, %indvars.iv458
  %i.rm = getelementptr inbounds nuw i8, ptr %.0250, i64 %i.rl
  %i.rn = mul nsw i64 %.0405, %indvars.iv458
  %i.ro = getelementptr inbounds nuw i8, ptr %.0251, i64 %i.rn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rm, ptr align 1 %i.ro, i64 %i.kq, i1 false)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %._crit_edge.us
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 1 ; 2 uses
  %exitcond462.not = icmp eq i64 %indvars.iv.next459, %wide.trip.count461
  br i1 %exitcond462.not, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit, label %.preheader.us, !llvm.loop !208

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  br i1 %i.l, label %.preheader.preheader, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %wide.trip.count466 = zext i32 %i.ak to i64     ; 2 uses
  %xtraiter509 = and i64 %wide.trip.count466, 1
  %i.rp = icmp eq i32 %i.ak, 1
  br i1 %i.rp, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter512 = and i64 %wide.trip.count466, 4294967294
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %indvars.iv463 = phi i64 [ 0, %.preheader.preheader.new ], [ %indvars.iv.next464.1, %.preheader ] ; 4 uses
  %niter513 = phi i64 [ 0, %.preheader.preheader.new ], [ %niter513.next.1, %.preheader ]
  %i.rq = mul nsw i64 %.0401, %indvars.iv463
  %i.rr = getelementptr inbounds nuw i8, ptr %.0250, i64 %i.rq
  %i.rs = mul nsw i64 %.0405, %indvars.iv463
  %i.rt = getelementptr inbounds nuw i8, ptr %.0251, i64 %i.rs
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rr, ptr align 1 %i.rt, i64 %i.kq, i1 false)
  %indvars.iv.next464 = or disjoint i64 %indvars.iv463, 1 ; 2 uses
  %i.ru = mul nsw i64 %.0401, %indvars.iv.next464
  %i.rv = getelementptr inbounds nuw i8, ptr %.0250, i64 %i.ru
  %i.rw = mul nsw i64 %.0405, %indvars.iv.next464
  %i.rx = getelementptr inbounds nuw i8, ptr %.0251, i64 %i.rw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rv, ptr align 1 %i.rx, i64 %i.kq, i1 false)
  %indvars.iv.next464.1 = add nuw nsw i64 %indvars.iv463, 2 ; 2 uses
  %niter513.next.1 = add i64 %niter513, 2         ; 2 uses
  %niter513.ncmp.1 = icmp eq i64 %niter513.next.1, %unroll_iter512
  br i1 %niter513.ncmp.1, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit.loopexit.unr-lcssa, label %.preheader, !llvm.loop !208

_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod510.not = icmp eq i64 %xtraiter509, 0
  br i1 %lcmp.mod510.not, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit.loopexit.unr-lcssa, %.preheader.preheader
  %indvars.iv463.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next464.1, %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod511 = trunc i32 %i.ak to i1
  call void @llvm.assume(i1 %lcmp.mod511)
  %i.ry = mul nsw i64 %.0401, %indvars.iv463.epil.init
  %i.rz = getelementptr inbounds nuw i8, ptr %.0250, i64 %i.ry
  %i.sa = mul nsw i64 %.0405, %indvars.iv463.epil.init
  %i.sb = getelementptr inbounds nuw i8, ptr %.0251, i64 %i.sa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rz, ptr align 1 %i.sb, i64 %i.kq, i1 false)
  br label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit: ; preds = %bb.ca, %.preheader.epil.preheader, %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit.loopexit.unr-lcssa, %.preheader.lr.ph.split, %bb.by
  %i.sc = load ptr, ptr %i.be, align 8, !tbaa !139
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store ptr %i.bo, ptr %0, align 8, !tbaa !138
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.sc, ptr %i.sd, align 8, !tbaa !139
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.se, align 8, !tbaa !127
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bx, %bb.bw
  %.pn264 = phi { ptr, i32 } [ %i.kf, %bb.bx ], [ %i.ke, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.cf

bb.cc:                                            ; preds = %_ZN5ErrorD2Ev.exit294, %_ZN5ErrorD2Ev.exit289, %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit
  %i.sf = load ptr, ptr %i.be, align 8, !tbaa !139 ; 5 uses
  %.not.i354 = icmp eq ptr %i.sf, null
  br i1 %.not.i354, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit355, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  %i.sh = atomicrmw add ptr %i.sg, i64 -1 acq_rel, align 8
  %i.si = icmp eq i64 %i.sh, 0
  br i1 %i.si, label %bb.ce, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit355

bb.ce:                                            ; preds = %bb.cd
  %i.sj = load ptr, ptr %i.sf, align 8, !tbaa !131
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  %i.sl = load ptr, ptr %i.sk, align 8
  call void %i.sl(ptr noundef nonnull align 8 dereferenceable(24) %i.sf) #17, !inline_history !1
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.sf) #17
  br label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit355

_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit355: ; preds = %bb.cc, %bb.cd, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.cg

bb.cf:                                            ; preds = %bb.bm, %bb.bq, %bb.cb, %bb.br, %bb.bn, %_ZN5ErrorD2Ev.exit293, %_ZN5ErrorD2Ev.exit288, %bb.ab
  %.pn264.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dw, %bb.ab ], [ %.pn262, %_ZN5ErrorD2Ev.exit293 ], [ %.pn260, %_ZN5ErrorD2Ev.exit288 ], [ %i.jh, %bb.bm ], [ %i.ji, %bb.bn ], [ %i.jw, %bb.bq ], [ %.pn264, %bb.cb ], [ %i.jx, %bb.br ]
  call void @_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  resume { ptr, i32 } %.pn264.pn.pn.pn.pn.pn

bb.cg:                                            ; preds = %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit355, %_ZN6ResultINSt3__110shared_ptrI14HeifPixelImageEEEC2ERK5Error.exit273, %_ZN6ResultINSt3__110shared_ptrI14HeifPixelImageEEEC2ERK5Error.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK20Op_YCbCr420_to_RGB2422state_after_conversionERK10ColorStateS2_RK29heif_color_conversion_optionsRK33heif_color_conversion_options_ext(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::__1::vector") align 8 captures(none) initializes((0, 24)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %2, ptr nofree nonnull readnone align 4 captures(none) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree nonnull readnone align 4 captures(none) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %.not = icmp eq i32 %i.b, 3
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load i32, ptr %i.c, align 4
  %.not20 = icmp eq i32 %i.d, 1
  %or.cond26 = select i1 %.not, i1 true, i1 %.not20
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.f = load i8, ptr %i.e, align 4
  %.not21 = icmp eq i8 %i.f, 0
  %or.cond28 = select i1 %or.cond26, i1 true, i1 %.not21
  br i1 %or.cond28, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = load i32, ptr %2, align 4, !tbaa !17
  %.not22 = icmp ne i32 %i.g, 0
  %.not23 = icmp ne i32 %i.b, 1
  %or.cond29.not60 = or i1 %.not23, %.not22
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %.not24 = icmp ne i32 %i.i, 8
  %or.cond31.not59 = select i1 %or.cond29.not60, i1 true, i1 %.not24
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i8, ptr %i.j, align 4, !range !24
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond34 = select i1 %or.cond31.not59, i1 true, i1 %i.l
  br i1 %or.cond34, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = load i16, ptr %i.m, align 4, !tbaa !18
  switch i16 %i.n, label %bb.g [
    i16 14, label %bb.f
    i16 11, label %bb.f
    i16 8, label %bb.f
    i16 0, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.h

end_hunk_1
begin_hunk_2_@_ZNK20Op_YCbCr420_to_RGB3218convert_colorspaceERKNSt3__110shared_ptrIK14HeifPixelImageEERK10ColorStateS9_RK29heif_color_conversion_optionsRK33heif_color_conversion_options_extPK20heif_security_limits:bb.a
bb.an:                                            ; preds = %bb.ai, %bb.aj, %bb.aa, %bb.z
  %.pn76.pn = phi { ptr, i32 } [ %i.cg, %bb.z ], [ %i.ch, %bb.aa ], [ %i.eh, %bb.aj ], [ %i.eg, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.ar

bb.ao:                                            ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %.pre146 = load ptr, ptr %i.ag, align 8, !tbaa !139 ; 5 uses
  %.not.i106 = icmp eq ptr %.pre146, null
  br i1 %.not.i106, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit107, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.il = getelementptr inbounds nuw i8, ptr %.pre146, i64 8
  %i.im = atomicrmw add ptr %i.il, i64 -1 acq_rel, align 8
  %i.in = icmp eq i64 %i.im, 0
  br i1 %i.in, label %bb.aq, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit107

bb.aq:                                            ; preds = %bb.ap
  %i.io = load ptr, ptr %.pre146, align 8, !tbaa !131
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8
  call void %i.iq(ptr noundef nonnull align 8 dereferenceable(24) %.pre146) #17, !inline_history !1
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %.pre146) #17
  br label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit107

_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit107: ; preds = %.thread, %bb.ao, %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.as

bb.ar:                                            ; preds = %bb.an, %_ZN5ErrorD2Ev.exit, %bb.n
  %.pn76.pn.pn = phi { ptr, i32 } [ %.pn76.pn, %bb.an ], [ %.pn, %_ZN5ErrorD2Ev.exit ], [ %i.bg, %bb.n ]
  call void @_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  resume { ptr, i32 } %.pn76.pn.pn

bb.as:                                            ; preds = %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit107, %_ZN6ResultINSt3__110shared_ptrI14HeifPixelImageEEEC2ERK5Error.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK23Op_YCbCr420_to_RRGGBBaa22state_after_conversionERK10ColorStateS2_RK29heif_color_conversion_optionsRK33heif_color_conversion_options_ext(ptr dead_on_unwind noalias writable sret(%"class.std::__1::vector") align 8 initializes((0, 24)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %2, ptr nofree nonnull readnone align 4 captures(none) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree nonnull readnone align 4 captures(none) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %struct.ColorState, align 4         ; 15 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !16   ; 2 uses
  %.not = icmp eq i32 %i.d, 3
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i32, ptr %i.e, align 4
  %.not28 = icmp eq i32 %i.f, 1
  %or.cond35 = select i1 %.not, i1 true, i1 %.not28
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.h = load i8, ptr %i.g, align 4
  %.not29 = icmp eq i8 %i.h, 0
  %or.cond37 = select i1 %or.cond35, i1 true, i1 %.not29
  br i1 %or.cond37, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.i = load i32, ptr %2, align 4, !tbaa !17
  %.not30 = icmp eq i32 %i.i, 0
  %.not31 = icmp eq i32 %i.d, 1
  %or.cond38 = and i1 %.not31, %.not30
  br i1 %or.cond38, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !19   ; 3 uses
  %i.l = icmp slt i32 %i.k, 9
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.q

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = load i8, ptr %i.m, align 4, !tbaa !23, !range !24, !noundef !25 ; 2 uses
  %i.o = trunc nuw i8 %i.n to i1                  ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load i32, ptr %i.p, align 4, !tbaa !26   ; 2 uses
  %.not.i = icmp eq i32 %i.q, 0
  %.not3239 = icmp eq i32 %i.q, %i.k
  %.not32 = or i1 %.not.i, %.not3239
  br i1 %.not32, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.q

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load i16, ptr %i.r, align 4, !tbaa !18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  switch i16 %i.s, label %bb.j [
    i16 14, label %bb.q
    i16 11, label %bb.q
    i16 8, label %bb.q
    i16 0, label %bb.q
  ]

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.w, align 4, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i16 2, ptr %i.x, align 4, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i16 2, ptr %i.y, align 2, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i16 2, ptr %i.z, align 4, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 26
  store i8 1, ptr %i.aa, align 2, !tbaa !22
  store i32 1, ptr %6, align 4, !tbaa !17
  %i.ab = select i1 %i.o, i32 15, i32 14
  store i32 %i.ab, ptr %i.t, align 4, !tbaa !16
  store i8 %i.n, ptr %i.u, align 4, !tbaa !23
  store i32 %i.k, ptr %i.v, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 11, ptr %i.a, align 4, !tbaa !28
  %i.ac = invoke noundef nonnull align 4 dereferenceable(32) ptr @_ZNSt3__16vectorI18ColorStateWithCostNS_9allocatorIS1_EEE12emplace_backIJR10ColorState10SpeedCostsEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(28) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.k unwind label %bb.m       ; 0 uses

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  store i32 1, ptr %6, align 4, !tbaa !17
  %i.ad = load i8, ptr %i.m, align 4, !tbaa !23, !range !24, !noundef !25 ; 2 uses
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = select i1 %i.ae, i32 13, i32 12
  store i32 %i.af, ptr %i.t, align 4, !tbaa !16
  store i8 %i.ad, ptr %i.u, align 4, !tbaa !23
  %i.ag = load i32, ptr %i.j, align 4, !tbaa !19
  store i32 %i.ag, ptr %i.v, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 11, ptr %i.b, align 4, !tbaa !28
  %i.ah = invoke noundef nonnull align 4 dereferenceable(32) ptr @_ZNSt3__16vectorI18ColorStateWithCostNS_9allocatorIS1_EEE12emplace_backIJR10ColorState10SpeedCostsEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(28) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.l unwind label %bb.n       ; 0 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.q

bb.m:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.n ], [ %i.ai, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.ak = load ptr, ptr %0, align 8, !tbaa !34    ; 4 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorI18ColorStateWithCostNS_9allocatorIS1_EEED2B8ne180100Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !35
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !36
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.ak to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.aq) #18
  br label %_ZNSt3__16vectorI18ColorStateWithCostNS_9allocatorIS1_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorI18ColorStateWithCostNS_9allocatorIS1_EEED2B8ne180100Ev.exit: ; preds = %bb.o, %bb.p
  resume { ptr, i32 } %.pn

bb.q:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.l, %bb.h, %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK23Op_YCbCr420_to_RRGGBBaa18convert_colorspaceERKNSt3__110shared_ptrIK14HeifPixelImageEERK10ColorStateS9_RK29heif_color_conversion_optionsRK33heif_color_conversion_options_extPK20heif_security_limits(ptr dead_on_unwind noalias writable sret(%class.Result) align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree nonnull readnone align 4 captures(none) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %4, ptr nofree nonnull readnone align 4 captures(none) %5, ptr nofree nonnull readnone align 4 captures(none) %6, ptr noundef %7) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__1::shared_ptr", align 8 ; 8 uses
  %9 = alloca %class.Error, align 8               ; 13 uses
  %10 = alloca %class.Error, align 8              ; 9 uses
  %11 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %12 = alloca %class.Error, align 8              ; 9 uses
  %13 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %14 = alloca %class.Error, align 8              ; 13 uses
  %15 = alloca %struct.YCbCr_to_RGB_coefficients, align 16 ; 9 uses
  %16 = alloca %struct.YCbCr_to_RGB_coefficients, align 4 ; 5 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !45     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.c = load i32, ptr %i.b, align 8, !tbaa !128  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 372
  %i.e = load i32, ptr %i.d, align 4, !tbaa !129  ; 6 uses
  %i.f = tail call noundef zeroext i16 @_ZNK14HeifPixelImage18get_bits_per_pixelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.a, i32 noundef 0) ; 2 uses
  %i.g = zext i16 %i.f to i32                     ; 5 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !45
  %i.i = tail call noundef zeroext i1 @_ZNK14HeifPixelImage11has_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.h, i32 noundef 6) ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16
  %i.l = and i32 %i.k, -2
  %narrow = icmp eq i32 %i.l, 14                  ; 5 uses
  %i.m = zext i1 %narrow to i64                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.n = tail call noalias noundef nonnull dereferenceable(472) ptr @_Znwm(i64 noundef 472) #20, !noalias !252 ; 26 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false), !noalias !252
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceI14HeifPixelImageNS_9allocatorIS1_EEEE, i64 16), ptr %i.n, align 8, !tbaa !131, !noalias !252
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 34
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.s, i8 0, i64 312, i1 false), !noalias !252
  store i56 281483566776322, ptr %i.r, align 2, !noalias !252
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false), !noalias !252
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store i56 281483566776322, ptr %i.u, align 8, !noalias !252
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false), !noalias !252
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  store i32 1, ptr %i.w, align 8, !tbaa !132, !noalias !252
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 92
  store i32 1, ptr %i.x, align 4, !tbaa !133, !noalias !252
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, i8 0, i64 56, i1 false), !noalias !252
  store i32 1, ptr %i.z, align 8, !tbaa !134, !noalias !252
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 256
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(74) %i.aa, i8 0, i64 74, i1 false), !noalias !252
  store i32 255, ptr %i.ab, align 8, !tbaa !135, !noalias !252
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 0, i64 24, i1 false), !noalias !252
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 384
  store ptr @.str.4, ptr %i.ad, align 8, !tbaa !136, !noalias !252
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTV14HeifPixelImage, i64 16), ptr %i.q, align 8, !tbaa !131, !noalias !252
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 392
  store <4 x i32> <i32 0, i32 0, i32 99, i32 99>, ptr %i.ae, align 8, !tbaa !124, !noalias !252
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 408
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.af, i8 0, i64 64, i1 false), !noalias !252
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  store ptr %i.q, ptr %8, align 8, !tbaa !138, !alias.scope !254
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store ptr %i.n, ptr %i.ag, align 8, !tbaa !139, !alias.scope !254
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 352
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 344
  %i.aj = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !254 ; 0 uses
  %i.ak = atomicrmw add ptr %i.p, i64 1 monotonic, align 8, !noalias !254 ; 0 uses
  store ptr %i.q, ptr %i.ai, align 8, !tbaa !140, !noalias !254
  store ptr %i.n, ptr %i.ah, align 8, !tbaa !141, !noalias !254
  %i.al = atomicrmw add ptr %i.o, i64 -1 acq_rel, align 8, !noalias !254
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.b, label %_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_.exit

bb.b:                                             ; preds = %bb.a
  %i.an = load ptr, ptr %i.n, align 8, !tbaa !131, !noalias !254
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !254
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(24) %i.n) #17, !noalias !254, !inline_history !0
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.n) #17, !noalias !254
  br label %_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_.exit

_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_.exit: ; preds = %bb.a, %bb.b
  %i.aq = load ptr, ptr %8, align 8, !tbaa !138   ; 5 uses
  %i.ar = load i32, ptr %i.j, align 4, !tbaa !16
  invoke void @_ZN14HeifPixelImage6createEjj15heif_colorspace11heif_chroma(ptr noundef nonnull align 8 dereferenceable(448) %i.aq, i32 noundef %i.c, i32 noundef %i.e, i32 noundef 1, i32 noundef %i.ar)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_.exit
  %i.as = select i1 %i.i, i64 8, i64 6
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  invoke void @_ZN14HeifPixelImage11add_channelE12heif_channeljjiPK20heif_security_limits23heif_component_datatype(ptr dead_on_unwind nonnull writable sret(%class.Error) align 8 %9, ptr noundef nonnull align 8 dereferenceable(448) %i.aq, i32 noundef 10, i32 noundef %i.c, i32 noundef %i.e, i32 noundef %i.g, ptr noundef %7, i32 noundef 0)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.at = load i32, ptr %9, align 8, !tbaa !145
  %.not231 = icmp eq i32 %i.at, 0
  br i1 %.not231, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = load i64, ptr %9, align 8
  store i64 %i.au, ptr %0, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  %i.ax = load i8, ptr %i.aw, align 8             ; 2 uses
  %i.ay = trunc i8 %i.ax to i1
  br i1 %i.ay, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false), !tbaa.struct !125
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !124
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !124
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef %i.ba, i64 noundef %i.bc)
          to label %._crit_edge248 unwind label %bb.j

._crit_edge248:                                   ; preds = %bb.g
  %.pre = load i8, ptr %i.aw, align 8
  br label %bb.l

bb.h:                                             ; preds = %_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.i:                                             ; preds = %bb.c
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5ErrorD2Ev.exit

bb.j:                                             ; preds = %bb.g
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load i8, ptr %i.aw, align 8
  %i.bh = trunc i8 %i.bg to i1
  br i1 %i.bh, label %bb.k, label %_ZN5ErrorD2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !124
  %i.bj = load i64, ptr %i.aw, align 8
  %i.bk = and i64 %i.bj, -2
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bk) #18
  br label %_ZN5ErrorD2Ev.exit

bb.l:                                             ; preds = %._crit_edge248, %bb.f
  %i.bl = phi i8 [ %.pre, %._crit_edge248 ], [ %i.ax, %bb.f ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.bm, align 8, !tbaa !127
  %i.bn = trunc i8 %i.bl to i1
  br i1 %i.bn, label %bb.m, label %_ZN5ErrorD2Ev.exit162

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !124
  %i.bq = load i64, ptr %i.aw, align 8
  %i.br = and i64 %i.bq, -2
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.br) #18
  br label %_ZN5ErrorD2Ev.exit162

_ZN5ErrorD2Ev.exit162:                            ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.bv

.critedge:                                        ; preds = %bb.d
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 8
  %i.bu = trunc i8 %i.bt to i1
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !124
  %i.bx = load i64, ptr %i.bs, align 8
  %i.by = and i64 %i.bx, -2
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.by) #18
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br i1 %i.i, label %bb.p, label %bb.bd

bb.p:                                             ; preds = %bb.o
  %i.bz = load ptr, ptr %2, align 8, !tbaa !45
  %i.ca = invoke noundef i32 @_ZNK14HeifPixelImage9get_widthE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.bz, i32 noundef 6)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %bb.p
  %.not = icmp eq i32 %i.ca, %i.c
  br i1 %.not, label %bb.r, label %.thread.i.i

bb.r:                                             ; preds = %bb.q
  %i.cb = load ptr, ptr %2, align 8, !tbaa !45
  %i.cc = invoke noundef i32 @_ZNK14HeifPixelImage10get_heightE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.cb, i32 noundef 6)
          to label %bb.s unwind label %bb.z

bb.s:                                             ; preds = %bb.r
  %.not145 = icmp eq i32 %i.cc, %i.e
  br i1 %.not145, label %bb.af, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.s, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
end_hunk_2
begin_hunk_3_@_ZNK23Op_YCbCr420_to_RRGGBBaa18convert_colorspaceERKNSt3__110shared_ptrIK14HeifPixelImageEERK10ColorStateS9_RK29heif_color_conversion_optionsRK33heif_color_conversion_options_extPK20heif_security_limits:bb.a
  %.pre254 = load i8, ptr %i.fh, align 8
  br label %bb.ba

bb.ax:                                            ; preds = %bb.as
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5ErrorD2Ev.exit186

bb.ay:                                            ; preds = %bb.aw
  %i.fp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fq = load i8, ptr %i.fh, align 8
  %i.fr = trunc i8 %i.fq to i1
  br i1 %i.fr, label %bb.az, label %_ZN5ErrorD2Ev.exit186

bb.az:                                            ; preds = %bb.ay
  %i.fs = load ptr, ptr %i.fk, align 8, !tbaa !124
  %i.ft = load i64, ptr %i.fh, align 8
  %i.fu = and i64 %i.ft, -2
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fu) #18
  br label %_ZN5ErrorD2Ev.exit186

bb.ba:                                            ; preds = %._crit_edge253, %bb.av
  %i.fv = phi i8 [ %.pre254, %._crit_edge253 ], [ %i.fi, %bb.av ]
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.fw, align 8, !tbaa !127
  %i.fx = trunc i8 %i.fv to i1
  br i1 %i.fx, label %bb.bb, label %_ZN5ErrorD2Ev.exit187

bb.bb:                                            ; preds = %bb.ba
  %i.fy = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !124
  %i.ga = load i64, ptr %i.fh, align 8
  %i.gb = and i64 %i.ga, -2
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gb) #18
  br label %_ZN5ErrorD2Ev.exit187

_ZN5ErrorD2Ev.exit187:                            ; preds = %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.bv

_ZN5ErrorD2Ev.exit186:                            ; preds = %bb.az, %bb.ay, %bb.ax
  %.pn147 = phi { ptr, i32 } [ %i.fo, %bb.ax ], [ %i.fp, %bb.ay ], [ %i.fp, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.by

.critedge161:                                     ; preds = %bb.at
  %i.gc = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 8
  %i.ge = trunc i8 %i.gd to i1
  br i1 %i.ge, label %bb.bc, label %_ZN5ErrorD2Ev.exit188

bb.bc:                                            ; preds = %.critedge161
  %i.gf = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !124
  %i.gh = load i64, ptr %i.gc, align 8
  %i.gi = and i64 %i.gh, -2
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gi) #18
  br label %_ZN5ErrorD2Ev.exit188

_ZN5ErrorD2Ev.exit188:                            ; preds = %.critedge161, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN5ErrorD2Ev.exit188, %bb.o
  %i.gj = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.aq, i32 noundef 10)
          to label %.noexc189 unwind label %bb.bk ; 3 uses

.noexc189:                                        ; preds = %bb.bd
  %.not.i.i = icmp eq ptr %i.gj, null
  br i1 %.not.i.i, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, label %bb.be

bb.be:                                            ; preds = %.noexc189
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 80
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !153
  %sext.i.i = shl i64 %i.gl, 32
  %i.gm = ashr exact i64 %sext.i.i, 32
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 56
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !154
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit: ; preds = %bb.be, %.noexc189
  %.0226 = phi i64 [ %i.gm, %bb.be ], [ 0, %.noexc189 ]
  %.0.i.i = phi ptr [ %i.go, %bb.be ], [ null, %.noexc189 ] ; 5 uses
  %i.gp = load ptr, ptr %2, align 8, !tbaa !45
  %i.gq = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.gp, i32 noundef 0)
          to label %.noexc190 unwind label %bb.bk ; 3 uses

.noexc190:                                        ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit
  %.not.i.i.i = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i, label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, label %bb.bf

bb.bf:                                            ; preds = %.noexc190
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 80
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !153
  %sext.i.i.i = shl i64 %i.gs, 32
  %i.gt = ashr exact i64 %sext.i.i.i, 32
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 56
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !154
  br label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit

_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit: ; preds = %bb.bf, %.noexc190
  %.0227 = phi i64 [ %i.gt, %bb.bf ], [ 0, %.noexc190 ]
  %.0.i.i.i = phi ptr [ %i.gv, %bb.bf ], [ null, %.noexc190 ]
  %i.gw = load ptr, ptr %2, align 8, !tbaa !45
  %i.gx = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.gw, i32 noundef 1)
          to label %.noexc194 unwind label %bb.bk ; 3 uses

.noexc194:                                        ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit
  %.not.i.i.i191 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i191, label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit195, label %bb.bg

bb.bg:                                            ; preds = %.noexc194
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 80
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !153
  %sext.i.i.i192 = shl i64 %i.gz, 32
  %i.ha = ashr exact i64 %sext.i.i.i192, 32
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 56
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !154
  br label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit195

_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit195: ; preds = %bb.bg, %.noexc194
  %.0228 = phi i64 [ %i.ha, %bb.bg ], [ 0, %.noexc194 ]
  %.0.i.i.i193 = phi ptr [ %i.hc, %bb.bg ], [ null, %.noexc194 ]
  %i.hd = load ptr, ptr %2, align 8, !tbaa !45
  %i.he = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.hd, i32 noundef 2)
          to label %.noexc199 unwind label %bb.bk ; 3 uses

.noexc199:                                        ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit195
  %.not.i.i.i196 = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i196, label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit200, label %bb.bh

bb.bh:                                            ; preds = %.noexc199
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 80
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !153
  %sext.i.i.i197 = shl i64 %i.hg, 32
  %i.hh = ashr exact i64 %sext.i.i.i197, 32
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 56
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !154
  br label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit200

_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit200: ; preds = %bb.bh, %.noexc199
  %.0230 = phi i64 [ %i.hh, %bb.bh ], [ 0, %.noexc199 ]
  %.0.i.i.i198 = phi ptr [ %i.hj, %bb.bh ], [ null, %.noexc199 ]
  br i1 %i.i, label %bb.bi, label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit205

bb.bi:                                            ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit200
  %i.hk = load ptr, ptr %2, align 8, !tbaa !45
  %i.hl = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.hk, i32 noundef 6)
          to label %.noexc204 unwind label %bb.bk ; 3 uses

.noexc204:                                        ; preds = %bb.bi
  %.not.i.i.i201 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i201, label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit205, label %bb.bj

bb.bj:                                            ; preds = %.noexc204
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 80
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !153
  %sext.i.i.i202 = shl i64 %i.hn, 32
  %i.ho = ashr exact i64 %sext.i.i.i202, 32
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 56
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !154
  br label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit205

bb.bk:                                            ; preds = %bb.bi, %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit195, %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, %bb.bd
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit205: ; preds = %bb.bj, %.noexc204, %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit200
  %.0229 = phi i64 [ 0, %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit200 ], [ %i.ho, %bb.bj ], [ 0, %.noexc204 ]
  %.0126 = phi ptr [ null, %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit200 ], [ %i.hq, %bb.bj ], [ null, %.noexc204 ]
  %notmask = shl nsw i32 -1, %i.g
  %i.hs = xor i32 %notmask, -1                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  invoke void @_ZN25YCbCr_to_RGB_coefficients8defaultsEv(ptr dead_on_unwind nonnull writable sret(%struct.YCbCr_to_RGB_coefficients) align 4 %15)
          to label %bb.bl unwind label %bb.bp

bb.bl:                                            ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit205
  %i.ht = load ptr, ptr %2, align 8, !tbaa !45
  %i.hu = invoke noundef zeroext i1 @_ZNK16ImageDescription22has_nclx_color_profileEv(ptr noundef nonnull align 8 dereferenceable(316) %i.ht)
          to label %bb.bm unwind label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  br i1 %i.hu, label %bb.bn, label %bb.br

bb.bn:                                            ; preds = %bb.bm
  %i.hv = load ptr, ptr %2, align 8, !tbaa !45
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 10
  %.sroa.0.0.copyload.i = load i64, ptr %i.hw, align 2 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %.sroa.0213.4.extract.shift234 = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.0213.4.extract.trunc = trunc i64 %.sroa.0213.4.extract.shift234 to i16
  %.sroa.0213.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i16
  invoke void @_Z29get_YCbCr_to_RGB_coefficientstt(ptr dead_on_unwind nonnull writable sret(%struct.YCbCr_to_RGB_coefficients) align 4 %16, i16 noundef zeroext %.sroa.0213.4.extract.trunc, i16 noundef zeroext %.sroa.0213.0.extract.trunc)
          to label %bb.bo unwind label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.hx = and i64 %.sroa.0.0.copyload.i, 281474976710656
  %i.hy = icmp ne i64 %i.hx, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %15, ptr noundef nonnull align 4 dereferenceable(20) %16, i64 20, i1 false), !tbaa.struct !157
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %bb.br

bb.bp:                                            ; preds = %bb.bl, %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit205
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bq:                                            ; preds = %bb.bn
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %bb.bu

bb.br:                                            ; preds = %bb.bo, %bb.bm
  %.0125 = phi i1 [ %i.hy, %bb.bo ], [ true, %bb.bm ] ; 3 uses
  %i.ib = add nsw i32 %i.g, -8
  %i.ic = shl i32 16, %i.ib
  %i.id = sitofp i32 %i.ic to float
  %.not240 = icmp eq i32 %i.e, 0
  br i1 %.not240, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.br
  %.not241 = icmp eq i32 %i.c, 0
  %i.ie = add nsw i32 %i.g, -1
  %i.if = shl nuw i32 1, %i.ie                    ; 2 uses
  br i1 %.not241, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ig = select i1 %narrow, i64 6, i64 7
  %i.ih = select i1 %narrow, i64 4, i64 5
  %i.ii = select i1 %narrow, i64 2, i64 3
  %not.narrow = xor i1 %narrow, true
  %i.ij = zext i1 %not.narrow to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.il = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.im = getelementptr inbounds nuw i8, ptr %15, i64 4
  %wide.trip.count246 = zext i32 %i.e to i64
  %i.in = load <1 x float>, ptr %i.im, align 4, !tbaa !156
  %17 = load <4 x float>, ptr %15, align 16
  %18 = shufflevector <4 x float> %17, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %.pre257.pre = load float, ptr %i.il, align 4, !tbaa !161
  %.pre258.pre = load float, ptr %i.ik, align 16, !tbaa !162
  %wide.trip.count = zext i32 %i.c to i64
  %invariant.gep = getelementptr i8, ptr %.0.i.i, i64 %i.ij
  %i.io = getelementptr i8, ptr %.0.i.i, i64 %i.ii
  %i.ip = getelementptr i8, ptr %.0.i.i, i64 %i.ih
  %i.iq = getelementptr i8, ptr %.0.i.i, i64 %i.ig
  %19 = shufflevector <1 x float> %i.in, <1 x float> poison, <2 x i32> <i32 poison, i32 0>
  %20 = insertelement <2 x float> %19, float %.pre257.pre, i64 0
  %i.ir = insertelement <2 x float> %18, float %.pre258.pre, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv243 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next244, %._crit_edge ] ; 5 uses
  %i.is = mul nsw i64 %.0227, %indvars.iv243
  %i.it = lshr i64 %i.is, 1
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i.i, i64 %i.it
  %i.iv = lshr i64 %indvars.iv243, 1
  %i.iw = and i64 %i.iv, 2147483647               ; 2 uses
  %i.ix = mul nsw i64 %.0228, %i.iw
  %i.iy = lshr i64 %i.ix, 1
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i.i193, i64 %i.iy
  %i.ja = mul nsw i64 %.0230, %i.iw
  %i.jb = lshr i64 %i.ja, 1
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i.i198, i64 %i.jb
  %i.jd = mul nsw i64 %.0226, %indvars.iv243      ; 3 uses
  %i.je = getelementptr i8, ptr %.0.i.i, i64 %i.jd ; 2 uses
  %i.jf = mul nsw i64 %.0229, %indvars.iv243
  %i.jg = lshr i64 %i.jf, 1
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %.0126, i64 %i.jg
  %i.ji = getelementptr i8, ptr %i.iq, i64 %i.jd
  br label %_Z10clip_f_u16fi.exit

_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit: ; preds = %._crit_edge, %.preheader.lr.ph, %bb.br
  %i.jj = load ptr, ptr %i.ag, align 8, !tbaa !139
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store ptr %i.aq, ptr %0, align 8, !tbaa !138
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.jj, ptr %i.jk, align 8, !tbaa !139
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.jl, align 8, !tbaa !127
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.bv

._crit_edge:                                      ; preds = %bb.bt
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 2 uses
  %exitcond247.not = icmp eq i64 %indvars.iv.next244, %wide.trip.count246
  br i1 %exitcond247.not, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit, label %.preheader, !llvm.loop !248

_Z10clip_f_u16fi.exit:                            ; preds = %.preheader, %bb.bt
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.bt ] ; 6 uses
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %i.iu, i64 %indvars.iv
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !40
  %i.jo = uitofp i16 %i.jn to float               ; 2 uses
  %i.jp = lshr i64 %indvars.iv, 1
  %i.jq = and i64 %i.jp, 2147483647               ; 2 uses
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr %i.iz, i64 %i.jq
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !40
  %i.jt = zext i16 %i.js to i32
  %i.ju = sub nsw i32 %i.jt, %i.if
  %i.jv = sitofp i32 %i.ju to float               ; 2 uses
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %i.jc, i64 %i.jq
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !40
  %i.jy = zext i16 %i.jx to i32
  %i.jz = sub nsw i32 %i.jy, %i.if
  %i.ka = sitofp i32 %i.jz to float               ; 2 uses
  %i.kb = fsub nnan float %i.jo, %i.id
  %i.kc = fmul nnan float %i.ka, 1.142900e+00
  %.0 = select i1 %.0125, float %i.ka, float %i.kc
  %i.kd = insertelement <2 x float> poison, float %.0, i64 0
  %21 = shufflevector <2 x float> %i.kd, <2 x float> poison, <2 x i32> zeroinitializer
  %22 = fmul nnan float %i.kb, 1.168900e+00
  %23 = fmul nnan float %i.jv, 1.142900e+00
  %.0122 = select i1 %.0125, float %i.jo, float %22 ; 2 uses
  %.0121 = select i1 %.0125, float %i.jv, float %23
  %i.ke = insertelement <2 x float> poison, float %.0121, i64 0
  %24 = shufflevector <2 x float> %i.ke, <2 x float> poison, <2 x i32> zeroinitializer
  %25 = insertelement <2 x float> poison, float %.0122, i64 0
  %26 = shufflevector <2 x float> %25, <2 x float> poison, <2 x i32> zeroinitializer
  %27 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ir, <2 x float> %24, <2 x float> %26) ; 2 uses
  %i.kf = insertelement <2 x float> %27, float %.0122, i64 1
  %i.kg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> %21, <2 x float> %i.kf)
  %i.kh = fadd <2 x float> %i.kg, splat (float 5.000000e-01)
  %i.ki = fptosi <2 x float> %i.kh to <2 x i32>   ; 3 uses
  %i.kj = extractelement <2 x i32> %i.ki, i64 1
  %spec.select.v = call i32 @llvm.smin.i32(i32 %i.hs, i32 %i.kj)
  %spec.select = trunc i32 %spec.select.v to i16
  %i.kk = icmp slt <2 x i32> %i.ki, zeroinitializer ; 2 uses
  %i.kl = extractelement <2 x i1> %i.kk, i64 1
  %.0.i = select i1 %i.kl, i16 0, i16 %spec.select ; 2 uses
  %i.km = extractelement <2 x i32> %i.ki, i64 0
  %spec.select237.v = call i32 @llvm.smin.i32(i32 %i.hs, i32 %i.km)
  %spec.select237 = trunc i32 %spec.select237.v to i16
  %i.kn = extractelement <2 x i1> %i.kk, i64 0
  %.0.i206 = select i1 %i.kn, i16 0, i16 %spec.select237 ; 2 uses
  %28 = extractelement <2 x float> %27, i64 1
  %i.ko = fadd float %28, 5.000000e-01
  %i.kp = fptosi float %i.ko to i32               ; 2 uses
  %i.kq = icmp slt i32 %i.kp, 0
  %spec.select238.v = call i32 @llvm.smin.i32(i32 %i.hs, i32 %i.kp)
  %spec.select238 = trunc i32 %spec.select238.v to i16
  %.0.i208 = select i1 %i.kq, i16 0, i16 %spec.select238 ; 2 uses
  %i.kr = lshr i16 %.0.i, 8
  %i.ks = trunc nuw i16 %i.kr to i8
  %i.kt = mul i64 %i.as, %indvars.iv
  %i.ku = and i64 %i.kt, 4294967294               ; 2 uses
  %i.kv = getelementptr i8, ptr %i.je, i64 %i.ku  ; 3 uses
  %i.kw = getelementptr i8, ptr %i.kv, i64 %i.m
  store i8 %i.ks, ptr %i.kw, align 1, !tbaa !124
  %i.kx = lshr i16 %.0.i206, 8
  %i.ky = trunc nuw i16 %i.kx to i8
  %i.kz = getelementptr i8, ptr %i.kv, i64 2
  %i.la = getelementptr i8, ptr %i.kz, i64 %i.m
  store i8 %i.ky, ptr %i.la, align 1, !tbaa !124
  %i.lb = lshr i16 %.0.i208, 8
  %i.lc = trunc nuw i16 %i.lb to i8
  %i.ld = getelementptr i8, ptr %i.kv, i64 4
  %i.le = getelementptr i8, ptr %i.ld, i64 %i.m
  store i8 %i.lc, ptr %i.le, align 1, !tbaa !124
  %i.lf = trunc i16 %.0.i to i8
  %i.lg = add i64 %i.jd, %i.ku                    ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.lg
  store i8 %i.lf, ptr %gep, align 1, !tbaa !124
  %i.lh = trunc i16 %.0.i206 to i8
  %i.li = getelementptr i8, ptr %i.io, i64 %i.lg
  store i8 %i.lh, ptr %i.li, align 1, !tbaa !124
  %i.lj = trunc i16 %.0.i208 to i8
  %i.lk = getelementptr i8, ptr %i.ip, i64 %i.lg
  store i8 %i.lj, ptr %i.lk, align 1, !tbaa !124
  br i1 %i.i, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %_Z10clip_f_u16fi.exit
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %i.jh, i64 %indvars.iv ; 2 uses
  %i.lm = load i16, ptr %i.ll, align 2, !tbaa !40
  %i.ln = lshr i16 %i.lm, 8
  %i.lo = trunc nuw i16 %i.ln to i8
  %i.lp = shl i64 %indvars.iv, 3
  %i.lq = and i64 %i.lp, 4294967288               ; 2 uses
  %i.lr = getelementptr i8, ptr %i.je, i64 %i.lq
  %i.ls = getelementptr i8, ptr %i.lr, i64 6
  %i.lt = getelementptr i8, ptr %i.ls, i64 %i.m
  store i8 %i.lo, ptr %i.lt, align 1, !tbaa !124
  %i.lu = load i16, ptr %i.ll, align 2, !tbaa !40
  %i.lv = trunc i16 %i.lu to i8
  %i.lw = getelementptr i8, ptr %i.ji, i64 %i.lq
  store i8 %i.lv, ptr %i.lw, align 1, !tbaa !124
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %_Z10clip_f_u16fi.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %_Z10clip_f_u16fi.exit, !llvm.loop !249

bb.bu:                                            ; preds = %bb.bq, %bb.bp
  %.pn149 = phi { ptr, i32 } [ %i.ia, %bb.bq ], [ %i.hz, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.by

bb.bv:                                            ; preds = %_ZN5ErrorD2Ev.exit187, %_ZN5ErrorD2Ev.exit162, %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit181, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.lx = load ptr, ptr %i.ag, align 8, !tbaa !139 ; 5 uses
  %.not.i210 = icmp eq ptr %i.lx, null
  br i1 %.not.i210, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit211, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.lz = atomicrmw add ptr %i.ly, i64 -1 acq_rel, align 8
  %i.ma = icmp eq i64 %i.lz, 0
  br i1 %i.ma, label %bb.bx, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit211

bb.bx:                                            ; preds = %bb.bw
  %i.mb = load ptr, ptr %i.lx, align 8, !tbaa !131
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  %i.md = load ptr, ptr %i.mc, align 8
  call void %i.md(ptr noundef nonnull align 8 dereferenceable(24) %i.lx) #17, !inline_history !1
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lx) #17
  br label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit211

_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit211: ; preds = %bb.bv, %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  ret void

bb.by:                                            ; preds = %bb.bk, %bb.bu, %_ZN5ErrorD2Ev.exit, %bb.z, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit170, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit183, %_ZN5ErrorD2Ev.exit186, %bb.h
  %.pn155.pn.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.h ], [ %.pn155.pn, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit170 ], [ %.pn152.pn, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit183 ], [ %.pn, %_ZN5ErrorD2Ev.exit ], [ %.pn147, %_ZN5ErrorD2Ev.exit186 ], [ %i.dc, %bb.z ], [ %.pn149, %bb.bu ], [ %i.hr, %bb.bk ]
  call void @_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  resume { ptr, i32 } %.pn155.pn.pn.pn
}

declare noundef i32 @_ZNK14HeifPixelImage9get_widthE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448), i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZNK14HeifPixelImage10get_heightE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448), i32 noundef) local_unnamed_addr #3

declare void @_ZN5ErrorC1E15heif_error_code18heif_suberror_codeRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN20Op_YCbCr420_to_RGB24D0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN20Op_YCbCr420_to_RGB32D0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN23Op_YCbCr420_to_RRGGBBaaD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN15Op_YCbCr_to_RGBIhED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN24ColorConversionOperationD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN15Op_YCbCr_to_RGBItED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #18
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorI18ColorStateWithCostNS_9allocatorIS1_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.2) #19
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef %0) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #17
  resume { ptr, i32 } %i.b
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12length_error, i64 16), ptr %0, align 8, !tbaa !131
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #9

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

declare void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  tail call void @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #17
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt20bad_array_new_length, ptr nonnull @_ZNSt20bad_array_new_lengthD1Ev) #19
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt20bad_array_new_lengthD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11
end_hunk_3
