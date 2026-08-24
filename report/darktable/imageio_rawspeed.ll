Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/imageio_rawspeed?download=true
inline.NumInlined: 430
inline.NumDeleted: 231
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0_@dt_rawspeed_lookup_makermodel:bb.a
  %i.br = sext i32 %5 to i64
  %i.bs = call i64 @g_strlcpy(ptr noundef %4, ptr noundef %1, i64 noundef %i.br) ; 0 uses
  %i.bt = sext i32 %7 to i64
  %i.bu = call i64 @g_strlcpy(ptr noundef %6, ptr noundef %1, i64 noundef %i.bt) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.t, %bb.ad
  %.13365 = phi i32 [ 0, %bb.ad ], [ 1, %bb.t ]
  ret i32 %.13365

bb.af:                                            ; preds = %bb.ab, %bb.z
  %.merged = phi { ptr, i32 } [ %.pn37.pn, %bb.z ], [ %i.bo, %bb.ab ]
  resume { ptr, i32 } %.merged

bb.ag:                                            ; preds = %bb.ab
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #27
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL21dt_rawspeed_load_metav() unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 6 uses
  %i.b = alloca [4096 x i8], align 16             ; 6 uses
  %i.c = load ptr, ptr @_ZL4meta, align 8, !tbaa !11
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @darktable, i64 2832)) #23 ; 0 uses
  %i.f = load ptr, ptr @_ZL4meta, align 8, !tbaa !11
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i8 0, i64 4096, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.b, i8 0, i64 4096, i1 false)
  call void @dt_loc_get_datadir(ptr noundef nonnull %i.a, i64 noundef 4096)
  %i.h = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.a) #23 ; 0 uses
  %i.i = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #25 ; 3 uses
  invoke void @_ZN8rawspeed14CameraMetaDataC1EPKc(ptr noundef nonnull align 8 dereferenceable(96) %i.i, ptr noundef nonnull %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.i, ptr @_ZL4meta, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 96) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %i.j

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.k = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @darktable, i64 2832)) #23 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare noundef ptr @_ZNK8rawspeed14CameraMetaData9getCameraERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !14
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.15) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #24
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !17

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #25 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !18
  store i64 %i.c, ptr %i.a, align 8, !tbaa !21
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !21
  store i8 %i.j, ptr %i.i, align 1, !tbaa !21
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i64 @g_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #4

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #3

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_rawspeed_crop_dcraw_filters(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  switch i32 %0, label %bb.b [
    i32 9, label %bb.c
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i32 @_ZN8rawspeed16ColorFilterArray16shiftDcrawFilterEjii(i32 noundef %0, i32 noundef %1, i32 noundef %2) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.b
  %.0 = phi i32 [ %i.a, %bb.b ], [ %0, %bb.a ], [ %0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef i32 @_ZN8rawspeed16ColorFilterArray16shiftDcrawFilterEjii(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define range(i32 0, 9) i32 @dt_imageio_open_rawspeed(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca [4096 x i8], align 16             ; 6 uses
  %6 = alloca %"class.rawspeed::FileReader", align 8 ; 5 uses
  %7 = alloca %"struct.std::pair", align 8        ; 10 uses
  %8 = alloca %"class.rawspeed::RawParser", align 8 ; 7 uses
  %9 = alloca %"class.std::unique_ptr.46", align 8 ; 12 uses
  %10 = alloca %"class.rawspeed::RawImage", align 8 ; 2 uses
  %11 = alloca %"class.rawspeed::RawImage", align 8 ; 55 uses
  %12 = alloca %"class.std::vector", align 16     ; 10 uses
  %13 = alloca %"class.rawspeed::RawImage", align 8 ; 8 uses
  %14 = alloca %"class.rawspeed::Array2DRef.100", align 8 ; 4 uses
  %15 = alloca %"class.rawspeed::Array2DRef.100", align 8 ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::allocator.6", align 1 ; 4 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::allocator.6", align 1 ; 4 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::allocator.6", align 1 ; 4 uses
  %i.b = tail call ptr @g_strrstr(ptr noundef %1, ptr noundef nonnull @.str.18) ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZL13_ignore_imagePKc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.d = tail call i32 @dt_conf_key_not_empty(ptr noundef nonnull @.str.19)
  %.not15.i = icmp eq i32 %i.d, 0
  br i1 %.not15.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.19)
  %i.f = tail call noalias ptr (ptr, ...) @g_strjoin(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17, ptr noundef %i.e, ptr noundef null)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noalias noundef dereferenceable_or_null(4) ptr @g_malloc(i64 noundef 4) #29 ; 2 uses
  store i32 3371619, ptr %i.g, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.d ] ; 3 uses
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !36
  %i.i = and i32 %i.h, 262144
  %.not16.i = icmp eq i32 %i.i, 0
  br i1 %.not16.i, label %_ZL13_ignore_imagePKc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.21, ptr noundef %.0.i)
  br label %_ZL13_ignore_imagePKc.exit

_ZL13_ignore_imagePKc.exit:                       ; preds = %bb.e, %bb.f
  %i.j = tail call noalias ptr @g_ascii_strdown(ptr noundef nonnull %i.c, i64 noundef -1) ; 2 uses
  %i.k = tail call ptr @g_strstr_len(ptr noundef %.0.i, i64 noundef -1, ptr noundef %i.j)
  %.not17.i.not = icmp eq ptr %i.k, null
  tail call void @g_free(ptr noundef %.0.i)
  tail call void @g_free(ptr noundef %i.j)
  br i1 %.not17.i.not, label %_ZL13_ignore_imagePKc.exit.thread, label %bb.hg

_ZL13_ignore_imagePKc.exit.thread:                ; preds = %bb.a, %_ZL13_ignore_imagePKc.exit
  %.not215 = icmp eq ptr %0, null
  br i1 %.not215, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZL13_ignore_imagePKc.exit.thread
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.1, ptr noundef %1, ptr noundef %2)
  br label %bb.hg

bb.h:                                             ; preds = %_ZL13_ignore_imagePKc.exit.thread
  %i.l = load i32, ptr %0, align 16, !tbaa !80
  %.not216 = icmp eq i32 %i.l, 0
  br i1 %.not216, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = tail call i32 @dt_exif_read(ptr noundef nonnull %0, ptr noundef %1) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i8 0, i64 4096, i1 false)
  %i.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 4096, ptr noundef nonnull @.str.2, ptr noundef %1) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %i.a, ptr %6, align 8, !tbaa !100
  invoke fastcc void @_ZL21dt_rawspeed_load_metav()
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.o = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @darktable, i64 2952)) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZNK8rawspeed10FileReader8readFileEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.q = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @darktable, i64 2952)) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %.sroa.069.0.copyload = load ptr, ptr %i.p, align 8, !tbaa !102
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !103
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8rawspeed9RawParserE, i64 16), ptr %8, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.sroa.069.0.copyload, ptr %i.r, align 8, !tbaa !102
  %.sroa.2.0..sroa_idx.i257 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %.sroa.2.0.copyload, ptr %.sroa.2.0..sroa_idx.i257, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.s = load ptr, ptr @_ZL4meta, align 8, !tbaa !11
  invoke void @_ZN8rawspeed9RawParser10getDecoderEPKNS_14CameraMetaDataE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.46") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %i.s)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.t = load ptr, ptr %9, align 8, !tbaa !104    ; 3 uses
  %.not217 = icmp eq ptr %i.t, null
  br i1 %.not217, label %_ZNSt10unique_ptrIN8rawspeed10RawDecoderESt14default_deleteIS1_EED2Ev.exit, label %bb.q

bb.n:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          catch ptr @_ZTIN8rawspeed11IOExceptionE
          catch ptr @_ZTIN8rawspeed15FileIOExceptionE
          catch ptr @_ZTIN8rawspeed19RawDecoderExceptionE
          catch ptr @_ZTIN8rawspeed18RawParserExceptionE
          catch ptr @_ZTIN8rawspeed23CameraMetadataExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.fx

bb.o:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          catch ptr @_ZTIN8rawspeed11IOExceptionE
          catch ptr @_ZTIN8rawspeed15FileIOExceptionE
          catch ptr @_ZTIN8rawspeed19RawDecoderExceptionE
          catch ptr @_ZTIN8rawspeed18RawParserExceptionE
          catch ptr @_ZTIN8rawspeed23CameraMetadataExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.fw

bb.p:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          catch ptr @_ZTIN8rawspeed11IOExceptionE
          catch ptr @_ZTIN8rawspeed15FileIOExceptionE
          catch ptr @_ZTIN8rawspeed19RawDecoderExceptionE
          catch ptr @_ZTIN8rawspeed18RawParserExceptionE
          catch ptr @_ZTIN8rawspeed23CameraMetadataExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %_ZNSt10unique_ptrIN8rawspeed10RawDecoderESt14default_deleteIS1_EED2Ev.exit309

bb.q:                                             ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i8 1, ptr %i.x, align 8, !tbaa !106
  %i.y = load ptr, ptr @_ZL4meta, align 8, !tbaa !11
  invoke void @_ZN8rawspeed10RawDecoder12checkSupportEPKNS_14CameraMetaDataE(ptr noundef nonnull align 8 dereferenceable(96) %i.t, ptr noundef %i.y)
          to label %bb.r unwind label %bb.ae

bb.r:                                             ; preds = %bb.q
  %i.z = load ptr, ptr %9, align 8, !tbaa !104
  invoke void @_ZN8rawspeed10RawDecoder9decodeRawEv(ptr dead_on_unwind nonnull writable sret(%"class.rawspeed::RawImage") align 8 %10, ptr noundef nonnull align 8 dereferenceable(96) %i.z)
          to label %bb.s unwind label %bb.ae

bb.s:                                             ; preds = %bb.r
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !126 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZN8rawspeed8RawImageD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.ac, align 8, !tbaa !127
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !129
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !23
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #23, !call_target !130, !inline_history !136
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !23
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #23, !call_target !137, !inline_history !136
  br label %_ZN8rawspeed8RawImageD2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8, !tbaa !103
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i = phi i32 [ %i.af, %bb.w ], [ %i.ap, %bb.x ]
  %i.aq = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aq, label %bb.y, label %_ZN8rawspeed8RawImageD2Ev.exit, !prof !17

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #23
  br label %_ZN8rawspeed8RawImageD2Ev.exit

_ZN8rawspeed8RawImageD2Ev.exit:                   ; preds = %bb.s, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.y
  %i.ar = load ptr, ptr %9, align 8, !tbaa !104
  %i.as = load ptr, ptr @_ZL4meta, align 8, !tbaa !11
  invoke void @_ZN8rawspeed10RawDecoder14decodeMetaDataEPKNS_14CameraMetaDataE(ptr noundef nonnull align 8 dereferenceable(96) %i.ar, ptr noundef %i.as)
end_hunk_0
begin_hunk_1_@dt_imageio_open_rawspeed:bb.a
  %i.tw = uitofp reassoc nsz arcp contract afn i16 %i.tv to float
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tu, i64 2
  %i.ty = add nuw nsw i64 %i.tt, 2
  %i.tz = icmp samesign ult i64 %i.ty, %i.rk
  call void @llvm.assume(i1 %i.tz)
  %i.ua = load <2 x i16>, ptr %i.tx, align 2, !tbaa !224
  %i.ub = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.tw, i64 0
  %i.uc = shufflevector <2 x i16> %i.ua, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ud = uitofp <4 x i16> %i.uc to <4 x float>
  %i.ue = shufflevector <4 x float> %i.ub, <4 x float> %i.ud, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.uf = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ue, <float f0x37800080, float f0x37800080, float f0x37800080, float 0.000000e+00>
  store <4 x float> %i.uf, ptr %i.tp, align 4, !tbaa !237
  %indvars.iv.next335.i.3 = add nuw nsw i64 %indvars.iv334.i, 4 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %.0108295.i, i64 64 ; 2 uses
  %niter624.next.3 = add i64 %niter624, 4         ; 2 uses
  %niter624.ncmp.3 = icmp eq i64 %niter624.next.3, %unroll_iter623
  br i1 %niter624.ncmp.3, label %._crit_edge297.i.unr-lcssa, label %.preheader284.i, !llvm.loop !290

._crit_edge297.i.unr-lcssa:                       ; preds = %.preheader284.i
  br i1 %lcmp.mod621.not, label %._crit_edge297.i, label %.preheader284.i.epil.preheader

.preheader284.i.epil.preheader:                   ; preds = %._crit_edge297.i.unr-lcssa, %.preheader284.lr.ph.i
  %indvars.iv334.i.epil.init = phi i64 [ 0, %.preheader284.lr.ph.i ], [ %indvars.iv.next335.i.3, %._crit_edge297.i.unr-lcssa ]
  %.0108295.i.epil.init = phi ptr [ %i.ro, %.preheader284.lr.ph.i ], [ %i.ug, %._crit_edge297.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod622)
  br label %.preheader284.i.epil

.preheader284.i.epil:                             ; preds = %.preheader284.i.epil, %.preheader284.i.epil.preheader
  %indvars.iv334.i.epil = phi i64 [ %indvars.iv334.i.epil.init, %.preheader284.i.epil.preheader ], [ %indvars.iv.next335.i.epil, %.preheader284.i.epil ] ; 2 uses
  %.0108295.i.epil = phi ptr [ %.0108295.i.epil.init, %.preheader284.i.epil.preheader ], [ %i.uw, %.preheader284.i.epil ] ; 2 uses
  %epil.iter620 = phi i64 [ 0, %.preheader284.i.epil.preheader ], [ %epil.iter620.next, %.preheader284.i.epil ]
  %i.uh = trunc nuw nsw i64 %indvars.iv334.i.epil to i32
  %i.ui = mul i32 %i.kg, %i.uh
  %i.uj = zext i32 %i.ui to i64                   ; 2 uses
  %i.uk = getelementptr inbounds nuw [2 x i8], ptr %i.rr, i64 %i.uj ; 2 uses
  %i.ul = load i16, ptr %i.uk, align 2, !tbaa !224
  %i.um = uitofp reassoc nsz arcp contract afn i16 %i.ul to float
  %i.un = getelementptr inbounds nuw i8, ptr %i.uk, i64 2
  %i.uo = add nuw nsw i64 %i.uj, 2
  %i.up = icmp samesign ult i64 %i.uo, %i.rk
  call void @llvm.assume(i1 %i.up)
  %i.uq = load <2 x i16>, ptr %i.un, align 2, !tbaa !224
  %i.ur = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.um, i64 0
  %i.us = shufflevector <2 x i16> %i.uq, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ut = uitofp <4 x i16> %i.us to <4 x float>
  %i.uu = shufflevector <4 x float> %i.ur, <4 x float> %i.ut, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.uv = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.uu, <float f0x37800080, float f0x37800080, float f0x37800080, float 0.000000e+00>
  store <4 x float> %i.uv, ptr %.0108295.i.epil, align 4, !tbaa !237
  %indvars.iv.next335.i.epil = add nuw nsw i64 %indvars.iv334.i.epil, 1
  %i.uw = getelementptr inbounds nuw i8, ptr %.0108295.i.epil, i64 16
  %epil.iter620.next = add i64 %epil.iter620, 1   ; 2 uses
  %epil.iter620.cmp.not = icmp eq i64 %epil.iter620.next, %xtraiter619
  br i1 %epil.iter620.cmp.not, label %._crit_edge297.i, label %.preheader284.i.epil, !llvm.loop !291

._crit_edge297.i:                                 ; preds = %.preheader284.i.epil, %._crit_edge297.i.unr-lcssa
  %indvars.iv.next340.i = add nuw nsw i64 %indvars.iv339.i, 1 ; 2 uses
  %exitcond343.not.i = icmp eq i64 %indvars.iv.next340.i, %wide.trip.count342.i
  br i1 %exitcond343.not.i, label %.loopexit.i, label %.preheader284.lr.ph.i, !llvm.loop !292

.preheader287.lr.ph.i:                            ; preds = %._crit_edge.i, %.preheader287.lr.ph.preheader.i
  %indvars.iv325.i = phi i64 [ 0, %.preheader287.lr.ph.preheader.i ], [ %indvars.iv.next326.i, %._crit_edge.i ] ; 4 uses
  %.reass.i = mul nuw i64 %factor.op.mul.i, %indvars.iv325.i
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %.reass.i ; 2 uses
  %i.uy = icmp samesign ult i64 %indvars.iv325.i, %i.qr
  call void @llvm.assume(i1 %i.uy)
  %i.uz = mul nuw nsw i64 %indvars.iv325.i, %i.qq
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.pz, i64 %i.uz ; 10 uses
  br i1 %i.qs, label %.preheader287.i.epil.preheader, label %.preheader287.i

.preheader287.i:                                  ; preds = %.preheader287.lr.ph.i, %.preheader287.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.preheader287.i ], [ 0, %.preheader287.lr.ph.i ] ; 5 uses
  %.0104291.i = phi ptr [ %i.xl, %.preheader287.i ], [ %i.ux, %.preheader287.lr.ph.i ] ; 13 uses
  %niter = phi i64 [ %niter.next.3, %.preheader287.i ], [ 0, %.preheader287.lr.ph.i ]
  %i.vb = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.vc = mul i32 %i.kg, %i.vb
  %i.vd = zext i32 %i.vc to i64                   ; 2 uses
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %i.vd ; 2 uses
  %i.vf = load float, ptr %i.ve, align 4, !tbaa !237
  store float %i.vf, ptr %.0104291.i, align 4, !tbaa !237
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ve, i64 4
  %i.vh = load float, ptr %i.vg, align 4, !tbaa !237
  %i.vi = getelementptr inbounds nuw i8, ptr %.0104291.i, i64 4
  store float %i.vh, ptr %i.vi, align 4, !tbaa !237
  %i.vj = or disjoint i64 %i.vd, 2                ; 2 uses
  %i.vk = icmp samesign ult i64 %i.vj, %i.qp
  call void @llvm.assume(i1 %i.vk)
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %i.vj
  %i.vm = load float, ptr %i.vl, align 4, !tbaa !237
  %i.vn = getelementptr inbounds nuw i8, ptr %.0104291.i, i64 8
  %i.vo = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.vm, i64 0
  store <2 x float> %i.vo, ptr %i.vn, align 4, !tbaa !237
  %i.vp = getelementptr inbounds nuw i8, ptr %.0104291.i, i64 16
  %i.vq = trunc i64 %indvars.iv.i to i32
  %i.vr = or disjoint i32 %i.vq, 1
  %i.vs = mul i32 %i.kg, %i.vr
  %i.vt = zext i32 %i.vs to i64                   ; 2 uses
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %i.vt ; 2 uses
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !237
  store float %i.vv, ptr %i.vp, align 4, !tbaa !237
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vu, i64 4
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !237
  %i.vy = getelementptr inbounds nuw i8, ptr %.0104291.i, i64 20
  store float %i.vx, ptr %i.vy, align 4, !tbaa !237
  %i.vz = add nuw nsw i64 %i.vt, 2                ; 2 uses
  %i.wa = icmp samesign ult i64 %i.vz, %i.qp
  call void @llvm.assume(i1 %i.wa)
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %i.vz
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !237
  %i.wd = getelementptr inbounds nuw i8, ptr %.0104291.i, i64 24
  %i.we = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.wc, i64 0
  store <2 x float> %i.we, ptr %i.wd, align 4, !tbaa !237
  %i.wf = getelementptr inbounds nuw i8, ptr %.0104291.i, i64 32
  %i.wg = trunc i64 %indvars.iv.i to i32
  %i.wh = or disjoint i32 %i.wg, 2
  %i.wi = mul i32 %i.kg, %i.wh
  %i.wj = zext i32 %i.wi to i64                   ; 2 uses
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %i.wj ; 2 uses
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !237
  store float %i.wl, ptr %i.wf, align 4, !tbaa !237
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wk, i64 4
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !237
  %i.wo = getelementptr inbounds nuw i8, ptr %.0104291.i, i64 36
  store float %i.wn, ptr %i.wo, align 4, !tbaa !237
  %i.wp = add nuw nsw i64 %i.wj, 2                ; 2 uses
  %i.wq = icmp samesign ult i64 %i.wp, %i.qp
  call void @llvm.assume(i1 %i.wq)
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %i.wp
  %i.ws = load float, ptr %i.wr, align 4, !tbaa !237
  %i.wt = getelementptr inbounds nuw i8, ptr %.0104291.i, i64 40
  %i.wu = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ws, i64 0
  store <2 x float> %i.wu, ptr %i.wt, align 4, !tbaa !237
  %i.wv = getelementptr inbounds nuw i8, ptr %.0104291.i, i64 48
  %i.ww = trunc i64 %indvars.iv.i to i32
  %i.wx = or disjoint i32 %i.ww, 3
  %i.wy = mul i32 %i.kg, %i.wx
  %i.wz = zext i32 %i.wy to i64                   ; 2 uses
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %i.wz ; 2 uses
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !237
  store float %i.xb, ptr %i.wv, align 4, !tbaa !237
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xa, i64 4
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !237
  %i.xe = getelementptr inbounds nuw i8, ptr %.0104291.i, i64 52
  store float %i.xd, ptr %i.xe, align 4, !tbaa !237
  %i.xf = add nuw nsw i64 %i.wz, 2                ; 2 uses
  %i.xg = icmp samesign ult i64 %i.xf, %i.qp
  call void @llvm.assume(i1 %i.xg)
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %i.xf
  %i.xi = load float, ptr %i.xh, align 4, !tbaa !237
  %i.xj = getelementptr inbounds nuw i8, ptr %.0104291.i, i64 56
  %i.xk = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.xi, i64 0
  store <2 x float> %i.xk, ptr %i.xj, align 4, !tbaa !237
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %.0104291.i, i64 64 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.preheader287.i, !llvm.loop !293

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader287.i
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.preheader287.i.epil.preheader

.preheader287.i.epil.preheader:                   ; preds = %._crit_edge.i.unr-lcssa, %.preheader287.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader287.lr.ph.i ], [ %indvars.iv.next.i.3, %._crit_edge.i.unr-lcssa ]
  %.0104291.i.epil.init = phi ptr [ %i.ux, %.preheader287.lr.ph.i ], [ %i.xl, %._crit_edge.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod618)
  br label %.preheader287.i.epil

.preheader287.i.epil:                             ; preds = %.preheader287.i.epil, %.preheader287.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.preheader287.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.preheader287.i.epil ] ; 2 uses
  %.0104291.i.epil = phi ptr [ %.0104291.i.epil.init, %.preheader287.i.epil.preheader ], [ %i.ya, %.preheader287.i.epil ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.preheader287.i.epil.preheader ], [ %epil.iter.next, %.preheader287.i.epil ]
  %i.xm = trunc nuw nsw i64 %indvars.iv.i.epil to i32
  %i.xn = mul i32 %i.kg, %i.xm
  %i.xo = zext i32 %i.xn to i64                   ; 2 uses
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %i.xo ; 2 uses
  %i.xq = load float, ptr %i.xp, align 4, !tbaa !237
  store float %i.xq, ptr %.0104291.i.epil, align 4, !tbaa !237
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xp, i64 4
  %i.xs = load float, ptr %i.xr, align 4, !tbaa !237
  %i.xt = getelementptr inbounds nuw i8, ptr %.0104291.i.epil, i64 4
  store float %i.xs, ptr %i.xt, align 4, !tbaa !237
  %i.xu = add nuw nsw i64 %i.xo, 2                ; 2 uses
  %i.xv = icmp samesign ult i64 %i.xu, %i.qp
  call void @llvm.assume(i1 %i.xv)
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %i.xu
  %i.xx = load float, ptr %i.xw, align 4, !tbaa !237
  %i.xy = getelementptr inbounds nuw i8, ptr %.0104291.i.epil, i64 8
  %i.xz = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.xx, i64 0
  store <2 x float> %i.xz, ptr %i.xy, align 4, !tbaa !237
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %i.ya = getelementptr inbounds nuw i8, ptr %.0104291.i.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.preheader287.i.epil, !llvm.loop !294

._crit_edge.i:                                    ; preds = %.preheader287.i.epil, %._crit_edge.i.unr-lcssa
  %indvars.iv.next326.i = add nuw nsw i64 %indvars.iv325.i, 1 ; 2 uses
  %exitcond329.not.i = icmp eq i64 %indvars.iv.next326.i, %wide.trip.count328.i
  br i1 %exitcond329.not.i, label %.loopexit.i, label %.preheader287.lr.ph.i, !llvm.loop !295

.loopexit.i:                                      ; preds = %._crit_edge.i, %._crit_edge297.i, %._crit_edge306.i, %._crit_edge315.i, %.lr.ph299.i, %.preheader285.i, %.lr.ph.i, %.preheader288.i, %.lr.ph317.i, %.preheader.i, %.lr.ph308.i, %.preheader282.i
  %i.yb = phi ptr [ %i.ps, %._crit_edge297.i ], [ %i.kn, %._crit_edge306.i ], [ %i.kn, %._crit_edge315.i ], [ %i.kn, %.lr.ph317.i ], [ %i.ps, %.preheader288.i ], [ %i.ps, %.lr.ph.i ], [ %i.ps, %.preheader285.i ], [ %i.ps, %.lr.ph299.i ], [ %i.kn, %.preheader282.i ], [ %i.kn, %.lr.ph308.i ], [ %i.kn, %.preheader.i ], [ %i.ps, %._crit_edge.i ]
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 2, ptr %i.yc, align 16, !tbaa !255
  %i.yd = getelementptr inbounds nuw i8, ptr %0, i64 1480
  store i32 9, ptr %i.yd, align 8, !tbaa !256
  %i.ye = load ptr, ptr @_ZL4meta, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yb, i64 320
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !18 ; 4 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.yh, ptr %3, align 8, !tbaa !14
  %i.yi = icmp eq ptr %i.yg, null
  br i1 %i.yi, label %.noexc.i, label %bb.bq

.noexc.i:                                         ; preds = %.loopexit.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.15) #24
          to label %.noexc268 unwind label %bb.cw

.noexc268:                                        ; preds = %.noexc.i
  unreachable

bb.bq:                                            ; preds = %.loopexit.i
  %i.yj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.yg) #23 ; 8 uses
  %i.yk = icmp ugt i64 %i.yj, 15
  br i1 %i.yk, label %bb.br, label %._crit_edge.i.i.i

bb.br:                                            ; preds = %bb.bq
  %i.yl = icmp slt i64 %i.yj, 0
  br i1 %i.yl, label %.noexc.i.i, label %bb.bs

.noexc.i.i:                                       ; preds = %bb.br
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #24
          to label %.noexc269 unwind label %bb.cw

.noexc269:                                        ; preds = %.noexc.i.i
  unreachable

bb.bs:                                            ; preds = %bb.br
  %i.ym = add nuw i64 %i.yj, 1                    ; 2 uses
  %i.yn = icmp slt i64 %i.ym, 0
  br i1 %i.yn, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !17

.noexc11.i.i:                                     ; preds = %bb.bs
  invoke void @_ZSt17__throw_bad_allocv() #24
          to label %.noexc270 unwind label %bb.cw

.noexc270:                                        ; preds = %.noexc11.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.bs
  %i.yo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ym) #25
          to label %.noexc271 unwind label %bb.cw ; 2 uses

.noexc271:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.yo, ptr %3, align 8, !tbaa !18
  store i64 %i.yj, ptr %i.yh, align 8, !tbaa !21
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc271, %bb.bq
  %i.yp = phi ptr [ %i.yo, %.noexc271 ], [ %i.yh, %bb.bq ] ; 3 uses
  switch i64 %i.yj, label %bb.bu [
    i64 1, label %bb.bt
    i64 0, label %bb.bv
  ]

bb.bt:                                            ; preds = %._crit_edge.i.i.i
  %i.yq = load i8, ptr %i.yg, align 1, !tbaa !21
  store i8 %i.yq, ptr %i.yp, align 1, !tbaa !21
  br label %bb.bv

bb.bu:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.yp, ptr nonnull align 1 %i.yg, i64 %i.yj, i1 false)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %._crit_edge.i.i.i
  %i.yr = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.yj, ptr %i.yr, align 8, !tbaa !22
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yp, i64 %i.yj
  store i8 0, ptr %i.ys, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %22 = load ptr, ptr %13, align 8, !tbaa !138
  %i.yt = getelementptr inbounds nuw i8, ptr %22, i64 352
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !18 ; 4 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.yv, ptr %4, align 8, !tbaa !14
  %i.yw = icmp eq ptr %i.yu, null
  br i1 %i.yw, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.15) #24
          to label %.noexc159.i unwind label %bb.cn

.noexc159.i:                                      ; preds = %bb.bw
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.yx = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.yu) #23 ; 8 uses
  %i.yy = icmp ugt i64 %i.yx, 15
  br i1 %i.yy, label %bb.by, label %._crit_edge.i.i155.i

bb.by:                                            ; preds = %bb.bx
  %i.yz = icmp slt i64 %i.yx, 0
  br i1 %i.yz, label %.noexc.i158.i, label %bb.bz

.noexc.i158.i:                                    ; preds = %bb.by
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #24
          to label %.noexc160.i unwind label %bb.cn

.noexc160.i:                                      ; preds = %.noexc.i158.i
  unreachable

bb.bz:                                            ; preds = %bb.by
  %i.za = add nuw i64 %i.yx, 1                    ; 2 uses
  %i.zb = icmp slt i64 %i.za, 0
  br i1 %i.zb, label %.noexc11.i157.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i156.i, !prof !17

.noexc11.i157.i:                                  ; preds = %bb.bz
  invoke void @_ZSt17__throw_bad_allocv() #24
          to label %.noexc161.i unwind label %bb.cn

.noexc161.i:                                      ; preds = %.noexc11.i157.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i156.i: ; preds = %bb.bz
  %i.zc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.za) #25
          to label %.noexc162.i unwind label %bb.cn ; 2 uses

.noexc162.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i156.i
  store ptr %i.zc, ptr %4, align 8, !tbaa !18
  store i64 %i.yx, ptr %i.yv, align 8, !tbaa !21
  br label %._crit_edge.i.i155.i

._crit_edge.i.i155.i:                             ; preds = %.noexc162.i, %bb.bx
  %i.zd = phi ptr [ %i.zc, %.noexc162.i ], [ %i.yv, %bb.bx ] ; 3 uses
  switch i64 %i.yx, label %bb.cb [
    i64 1, label %bb.ca
    i64 0, label %bb.cc
  ]

bb.ca:                                            ; preds = %._crit_edge.i.i155.i
  %i.ze = load i8, ptr %i.yu, align 1, !tbaa !21
  store i8 %i.ze, ptr %i.zd, align 1, !tbaa !21
  br label %bb.cc

bb.cb:                                            ; preds = %._crit_edge.i.i155.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.zd, ptr nonnull align 1 %i.yu, i64 %i.yx, i1 false)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %._crit_edge.i.i155.i
  %i.zf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.yx, ptr %i.zf, align 8, !tbaa !22
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zd, i64 %i.yx
  store i8 0, ptr %i.zg, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %23 = load ptr, ptr %13, align 8, !tbaa !138
  %i.zh = getelementptr inbounds nuw i8, ptr %23, i64 384
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !18 ; 4 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.zj, ptr %5, align 8, !tbaa !14
  %i.zk = icmp eq ptr %i.zi, null
  br i1 %i.zk, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.15) #24
          to label %.noexc168.i unwind label %bb.co

.noexc168.i:                                      ; preds = %bb.cd
  unreachable

bb.ce:                                            ; preds = %bb.cc
  %i.zl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.zi) #23 ; 8 uses
  %i.zm = icmp ugt i64 %i.zl, 15
  br i1 %i.zm, label %bb.cf, label %._crit_edge.i.i164.i

bb.cf:                                            ; preds = %bb.ce
  %i.zn = icmp slt i64 %i.zl, 0
  br i1 %i.zn, label %.noexc.i167.i, label %bb.cg

.noexc.i167.i:                                    ; preds = %bb.cf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #24
          to label %.noexc169.i unwind label %bb.co

.noexc169.i:                                      ; preds = %.noexc.i167.i
  unreachable

bb.cg:                                            ; preds = %bb.cf
  %i.zo = add nuw i64 %i.zl, 1                    ; 2 uses
  %i.zp = icmp slt i64 %i.zo, 0
  br i1 %i.zp, label %.noexc11.i166.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i165.i, !prof !17

.noexc11.i166.i:                                  ; preds = %bb.cg
  invoke void @_ZSt17__throw_bad_allocv() #24
          to label %.noexc170.i unwind label %bb.co

.noexc170.i:                                      ; preds = %.noexc11.i166.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i165.i: ; preds = %bb.cg
  %i.zq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zo) #25
          to label %.noexc171.i unwind label %bb.co ; 2 uses

.noexc171.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i165.i
  store ptr %i.zq, ptr %5, align 8, !tbaa !18
  store i64 %i.zl, ptr %i.zj, align 8, !tbaa !21
  br label %._crit_edge.i.i164.i

._crit_edge.i.i164.i:                             ; preds = %.noexc171.i, %bb.ce
  %i.zr = phi ptr [ %i.zq, %.noexc171.i ], [ %i.zj, %bb.ce ] ; 3 uses
  switch i64 %i.zl, label %bb.ci [
    i64 1, label %bb.ch
    i64 0, label %bb.cj
  ]

bb.ch:                                            ; preds = %._crit_edge.i.i164.i
  %i.zs = load i8, ptr %i.zi, align 1, !tbaa !21
  store i8 %i.zs, ptr %i.zr, align 1, !tbaa !21
  br label %bb.cj

bb.ci:                                            ; preds = %._crit_edge.i.i164.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.zr, ptr nonnull align 1 %i.zi, i64 %i.zl, i1 false)
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %._crit_edge.i.i164.i
  %i.zt = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.zl, ptr %i.zt, align 8, !tbaa !22
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zr, i64 %i.zl
  store i8 0, ptr %i.zu, align 1, !tbaa !21
  %i.zv = invoke noundef ptr @_ZNK8rawspeed14CameraMetaData9getCameraERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(96) %i.ye, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ck unwind label %bb.cp     ; 2 uses

bb.ck:                                            ; preds = %bb.cj
  %i.zw = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.zx = icmp eq ptr %i.zw, %i.zj
  br i1 %i.zx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ck
  %i.zy = load i64, ptr %i.zj, align 8, !tbaa !21
  %i.zz = add i64 %i.zy, 1
  call void @_ZdlPvm(ptr noundef %i.zw, i64 noundef %i.zz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.aaa = load ptr, ptr %4, align 8, !tbaa !18   ; 2 uses
  %i.aab = icmp eq ptr %i.aaa, %i.yv
  br i1 %i.aab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.aac = load i64, ptr %i.yv, align 8, !tbaa !21
  %i.aad = add i64 %i.aac, 1
  call void @_ZdlPvm(ptr noundef %i.aaa, i64 noundef %i.aad) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.aae = load ptr, ptr %3, align 8, !tbaa !18   ; 2 uses
  %i.aaf = icmp eq ptr %i.aae, %i.yh
  br i1 %i.aaf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175.i
  %i.aag = load i64, ptr %i.yh, align 8, !tbaa !21
  %i.aah = add i64 %i.aag, 1
  call void @_ZdlPvm(ptr noundef %i.aae, i64 noundef %i.aah) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.not130.i = icmp eq ptr %i.zv, null
  br i1 %.not130.i, label %_ZL29dt_imageio_open_rawspeed_srawP10dt_image_tN8rawspeed8RawImageEP18dt_mipmap_buffer_t.exit, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.i
  %i.aai = getelementptr inbounds nuw i8, ptr %i.zv, i64 304
  %i.aaj = load i8, ptr %i.aai, align 8, !tbaa !296
  %i.aak = icmp eq i8 %i.aaj, 0
  br i1 %i.aak, label %bb.cm, label %_ZL29dt_imageio_open_rawspeed_srawP10dt_image_tN8rawspeed8RawImageEP18dt_mipmap_buffer_t.exit

bb.cm:                                            ; preds = %bb.cl
  %i.aal = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i32 1, ptr %i.aal, align 16, !tbaa !304
  br label %_ZL29dt_imageio_open_rawspeed_srawP10dt_image_tN8rawspeed8RawImageEP18dt_mipmap_buffer_t.exit

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i156.i, %.noexc11.i157.i, %.noexc.i158.i, %bb.bw
  %i.aam = landingpad { ptr, i32 }
          catch ptr @_ZTIN8rawspeed11IOExceptionE
          catch ptr @_ZTIN8rawspeed15FileIOExceptionE
          catch ptr @_ZTIN8rawspeed19RawDecoderExceptionE
          catch ptr @_ZTIN8rawspeed18RawParserExceptionE
          catch ptr @_ZTIN8rawspeed23CameraMetadataExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184.i

bb.co:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i165.i, %.noexc11.i166.i, %.noexc.i167.i, %bb.cd
  %i.aan = landingpad { ptr, i32 }
          catch ptr @_ZTIN8rawspeed11IOExceptionE
          catch ptr @_ZTIN8rawspeed15FileIOExceptionE
          catch ptr @_ZTIN8rawspeed19RawDecoderExceptionE
          catch ptr @_ZTIN8rawspeed18RawParserExceptionE
          catch ptr @_ZTIN8rawspeed23CameraMetadataExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181.i

bb.cp:                                            ; preds = %bb.cj
  %i.aao = landingpad { ptr, i32 }
          catch ptr @_ZTIN8rawspeed11IOExceptionE
          catch ptr @_ZTIN8rawspeed15FileIOExceptionE
          catch ptr @_ZTIN8rawspeed19RawDecoderExceptionE
          catch ptr @_ZTIN8rawspeed18RawParserExceptionE
          catch ptr @_ZTIN8rawspeed23CameraMetadataExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.aap = load ptr, ptr %5, align 8, !tbaa !18   ; 2 uses
  %i.aaq = icmp eq ptr %i.aap, %i.zj
  br i1 %i.aaq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179.i: ; preds = %bb.cp
  %i.aar = load i64, ptr %i.zj, align 8, !tbaa !21
  %i.aas = add i64 %i.aar, 1
  call void @_ZdlPvm(ptr noundef %i.aap, i64 noundef %i.aas) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181.i: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179.i, %bb.co
  %.pn.i = phi { ptr, i32 } [ %i.aan, %bb.co ], [ %i.aao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179.i ], [ %i.aao, %bb.cp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.aat = load ptr, ptr %4, align 8, !tbaa !18   ; 2 uses
  %i.aau = icmp eq ptr %i.aat, %i.yv
  br i1 %i.aau, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181.i
  %i.aav = load i64, ptr %i.yv, align 8, !tbaa !21
  %i.aaw = add i64 %i.aav, 1
  call void @_ZdlPvm(ptr noundef %i.aat, i64 noundef %i.aaw) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182.i, %bb.cn
  %.pn.pn.i = phi { ptr, i32 } [ %i.aam, %bb.cn ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.aax = load ptr, ptr %3, align 8, !tbaa !18   ; 2 uses
  %i.aay = icmp eq ptr %i.aax, %i.yh
  br i1 %i.aay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184.i
  %i.aaz = load i64, ptr %i.yh, align 8, !tbaa !21
  %i.aba = add i64 %i.aaz, 1
  call void @_ZdlPvm(ptr noundef %i.aax, i64 noundef %i.aba) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.body

_ZL29dt_imageio_open_rawspeed_srawP10dt_image_tN8rawspeed8RawImageEP18dt_mipmap_buffer_t.exit: ; preds = %bb.cm, %bb.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.i, %.noexc267, %.noexc, %bb.bm, %bb.bk, %_ZN8rawspeed8RawImageC2ERKS0_.exit266
  %.2118.i = phi i32 [ 5, %_ZN8rawspeed8RawImageC2ERKS0_.exit266 ], [ 0, %bb.bm ], [ 6, %bb.bk ], [ 8, %.noexc ], [ 0, %bb.cm ], [ 0, %bb.cl ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178.i ], [ 8, %.noexc267 ] ; 4 uses
  %i.abb = load ptr, ptr %i.jq, align 8, !tbaa !126 ; 8 uses
  %.not.i.i.i272 = icmp eq ptr %i.abb, null
end_hunk_1
