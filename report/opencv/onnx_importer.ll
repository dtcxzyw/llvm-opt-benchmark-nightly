Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/onnx_importer?download=true
inline.NumInlined: 9294
inline.NumDeleted: 1829
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN2cv3dnn14dnn5_v2026060512ONNXImporterC2ERNS1_3NetEPKc:bb.a
  %.pn28.pn.pn.pn = phi { ptr, i32 } [ %.pn28.pn.pn, %bb.ap ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.et = load ptr, ptr %i.bm, align 8, !tbaa !42 ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.bn
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.aq
  %i.ev = load i64, ptr %i.bn, align 8, !tbaa !46
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63, %bb.f
  %.pn28.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bs, %bb.f ], [ %.pn28.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ], [ %.pn28.pn.pn.pn, %bb.aq ]
  %i.ex = load ptr, ptr %i.bf, align 8, !tbaa !42 ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.bg
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %i.ez = load i64, ptr %i.bg, align 8, !tbaa !46
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  %i.fb = load ptr, ptr %i.bb, align 8, !tbaa !42 ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.bc
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %i.fd = load i64, ptr %i.bc, align 8, !tbaa !46
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.av) #28
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IS5_MN2cv3dnn14dnn5_v2026060512ONNXImporterEFvRNS8_11LayerParamsERKN11opencv_onnx9NodeProtoEESt4lessIS5_ESaISt4pairIKS5_SH_EEESJ_SaISK_ISL_SO_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.ap) #28
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.aj) #28
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv8MatShapeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.ad) #28
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.x) #28
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.r) #28
  %i.ff = load ptr, ptr %i.o, align 8, !tbaa !42  ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.p
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %i.fh = load i64, ptr %i.p, align 8, !tbaa !46
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @_ZNSt10unique_ptrIN2cv3dnn14dnn5_v2026060516ONNXLayerHandlerESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #28
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %bb.e
  %.pn28.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn28.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.br, %bb.e ]
  call void @_ZN11opencv_onnx10ModelProtoD1Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %i.b) #28
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.d
  %.pn28.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn28.pn.pn.pn.pn.pn.pn.pn, %bb.ar ], [ %i.bq, %bb.d ]
  %i.fj = invoke noundef zeroext i1 @_ZN2cv7details23restoreFPDenormalsStateERKNS0_20FPDenormalsModeStateE(ptr noundef nonnull align 4 dereferenceable(64) %0)
          to label %_ZN2cv7details26FPDenormalsIgnoreHintScopeD2Ev.exit unwind label %bb.at ; 0 uses

bb.at:                                            ; preds = %bb.as
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  %i.fl = extractvalue { ptr, i32 } %i.fk, 0
  call void @__clang_call_terminate(ptr %i.fl) #32
  unreachable

_ZN2cv7details26FPDenormalsIgnoreHintScopeD2Ev.exit: ; preds = %bb.as
  resume { ptr, i32 } %.pn28.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !49
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.663) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.d, ptr %i.a, align 8, !tbaa !50
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !42
  %i.g = load i64, ptr %i.a, align 8, !tbaa !50
  store i64 %i.g, ptr %i.b, align 8, !tbaa !46
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !46
  store i8 %i.i, ptr %i.h, align 1, !tbaa !46
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !38
  %i.l = load ptr, ptr %0, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
declare void @_ZNSt13basic_fstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef, i32 noundef) unnamed_addr #1 align 2

declare noundef zeroext i1 @_ZN6google8protobuf11MessageLite16ParseFromIstreamEPSi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #3

declare void @_ZN2cv5utils2fs9getParentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3dnn14dnn5_v2026060512ONNXImporter11populateNetEv(ptr noundef nonnull align 8 dereferenceable(720) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::allocator.10", align 1 ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.10", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.10", align 1 ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.10", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.10", align 1 ; 3 uses
  %11 = alloca %"struct.cv::MatShape", align 4    ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 38 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator.10", align 1 ; 3 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator.10", align 1 ; 3 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::map", align 8         ; 10 uses
  %25 = alloca %"class.std::vector.125", align 8  ; 17 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.std::allocator.10", align 1 ; 3 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.std::allocator.10", align 1 ; 3 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %31 = alloca %"class.std::allocator.10", align 1 ; 3 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %33 = alloca %"class.std::allocator.10", align 1 ; 3 uses
  %34 = alloca %"struct.std::pair.90", align 8    ; 13 uses
  %35 = alloca %"struct.cv::MatShape", align 4    ; 7 uses
  %36 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 38 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %38 = alloca %"struct.std::pair.105", align 8   ; 15 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %40 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %42 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 19 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %44 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 19 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !48   ; 2 uses
  %i.f = and i32 %i.e, 16
  %.not537 = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  br i1 %.not537, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.58, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060512ONNXImporter11populateNetEv, ptr noundef nonnull @.str.4, i32 noundef 847) #31
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load ptr, ptr %16, align 8, !tbaa !42    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.m = load i64, ptr %i.k, align 8, !tbaa !46
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.i, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.jj

bb.g:                                             ; preds = %bb.a
  %46 = load ptr, ptr %i.g, align 8               ; 2 uses
  %i.o = icmp eq ptr %46, null
  br i1 %i.o, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load i64, ptr %i.p, align 8, !tbaa !121  ; 2 uses
  %i.r = trunc i64 %i.q to i1
  %i.s = and i64 %i.q, -4
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  br i1 %i.r, label %bb.i, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i, !prof !122

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !123
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi ptr [ %i.u, %bb.i ], [ %i.t, %bb.h ]
  %i.v = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN11opencv_onnx10GraphProtoEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i.i) ; 2 uses
  store ptr %i.v, ptr %i.g, align 8, !tbaa !125
  %.pre = load i32, ptr %i.d, align 8, !tbaa !48
  br label %bb.j

bb.j:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i, %bb.g
  %i.w = phi i32 [ %.pre, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i ], [ %i.e, %bb.g ] ; 2 uses
  %i.x = phi ptr [ %i.v, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i ], [ %46, %bb.g ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 15 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.z = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.z, ptr %18, align 8, !tbaa !49
  %i.aa = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store i64 0, ptr %i.aa, align 8, !tbaa !38
  store i8 0, ptr %i.z, align 8, !tbaa !46
  %i.ab = trunc i32 %i.w to i1
  br i1 %i.ab, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !31
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = and i64 %i.ae, -2
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 288
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %._crit_edge773 unwind label %bb.l

._crit_edge773:                                   ; preds = %bb.k
  %.pre774 = load i32, ptr %i.d, align 8, !tbaa !48
  br label %bb.m

bb.l:                                             ; preds = %bb.n, %bb.k, %bb.ay
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.ji

bb.m:                                             ; preds = %._crit_edge773, %bb.j
  %i.aj = phi i32 [ %.pre774, %._crit_edge773 ], [ %i.w, %bb.j ]
  %i.ak = and i32 %i.aj, 2
  %.not538 = icmp eq i32 %i.ak, 0
  br i1 %.not538, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit235, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !31
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, -2
  %i.ap = inttoptr i64 %i.ao to ptr
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit235 unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit235: ; preds = %bb.n, %bb.m
  %i.aq = invoke noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv()
          to label %bb.p unwind label %bb.o       ; 3 uses

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit235
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ji

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit235
  %.not = icmp eq ptr %i.aq, null                 ; 2 uses
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !127
  %i.au = icmp slt i32 %i.at, 4
  br i1 %i.au, label %bb.ay, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %19)
          to label %bb.s unwind label %bb.ao

bb.s:                                             ; preds = %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.59, i64 noundef 22)
          to label %bb.t unwind label %bb.ap      ; 0 uses

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  %i.ax = load i32, ptr %i.d, align 8, !tbaa !48
  %i.ay = and i32 %i.ax, 32
  %.not539 = icmp eq i32 %i.ay, 0
  br i1 %.not539, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !130
  %i.bb = trunc i64 %i.ba to i32
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull @.str.60, i32 noundef %i.bb)
          to label %._crit_edge775 unwind label %bb.aq

._crit_edge775:                                   ; preds = %bb.u
  %.pre776 = load ptr, ptr %20, align 8, !tbaa !42
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %20, i64 8
  %.pre777 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !38
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bc = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  store ptr %i.bc, ptr %20, align 8, !tbaa !49
  %i.bd = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 0, ptr %i.bd, align 8, !tbaa !38
  store i8 0, ptr %i.bc, align 8, !tbaa !46
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge775, %bb.v
  %i.be = phi i64 [ %.pre777, %._crit_edge775 ], [ 0, %bb.v ]
  %i.bf = phi ptr [ %.pre776, %._crit_edge775 ], [ %i.bc, %bb.v ]
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef %i.bf, i64 noundef %i.be)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ar ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.w
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull @.str.61, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236 unwind label %bb.ar ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !42
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !38
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef %i.bj, i64 noundef %i.bl)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit237 unwind label %bb.ar ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit237: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull @.str.40, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238 unwind label %bb.ar ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit237
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  %i.bo = load i64, ptr %i.aa, align 8, !tbaa !38
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238
  %i.bq = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  store ptr %i.bq, ptr %21, align 8, !tbaa !49
  %i.br = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 0, ptr %i.br, align 8, !tbaa !38
  store i8 0, ptr %i.bq, align 8, !tbaa !46
  br label %bb.z

bb.y:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238
  %i.bs = load ptr, ptr %18, align 8, !tbaa !42
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull @.str.62, ptr noundef %i.bs)
          to label %._crit_edge778 unwind label %bb.as

._crit_edge778:                                   ; preds = %bb.y
  %.pre779 = load ptr, ptr %21, align 8, !tbaa !42
  %.phi.trans.insert780 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %.pre781 = load i64, ptr %.phi.trans.insert780, align 8, !tbaa !38
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge778, %bb.x
  %i.bt = phi i64 [ %.pre781, %._crit_edge778 ], [ 0, %bb.x ]
  %i.bu = phi ptr [ %.pre779, %._crit_edge778 ], [ %i.bq, %bb.x ]
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef %i.bu, i64 noundef %i.bt)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit239 unwind label %bb.at ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit239: ; preds = %bb.z
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull @.str.63, i64 noundef 20)
          to label %bb.aa unwind label %bb.at     ; 0 uses

bb.aa:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit239
  %i.bx = load ptr, ptr %i.y, align 8, !tbaa !126
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !25
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, i32 noundef %i.bz)
          to label %bb.ab unwind label %bb.at     ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull @.str.64, i64 noundef 17)
          to label %bb.ac unwind label %bb.at     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.cc = load ptr, ptr %i.y, align 8, !tbaa !126
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !25
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, i32 noundef %i.ce)
end_hunk_0
begin_hunk_1_@_ZN2cv3dnn14dnn5_v2026060512ONNXImporter11populateNetEv:bb.a
  %i.gb = landingpad { ptr, i32 }
          catch ptr null
  %i.gc = extractvalue { ptr, i32 } %i.gb, 0
  call void @__clang_call_terminate(ptr %i.gc) #32
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv.exit.i.i.i: ; preds = %bb.ba
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 6 uses
  store ptr null, ptr %i.fz, align 8, !tbaa !33
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  store ptr %i.gd, ptr %i.ge, align 8, !tbaa !53
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr %i.gd, ptr %i.gf, align 8, !tbaa !54
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  store i64 0, ptr %i.gg, align 8, !tbaa !55
  %i.gh = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !43 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv.exit.i.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !52
  store i32 %i.gk, ptr %i.gd, align 8, !tbaa !52
  store ptr %i.gi, ptr %i.fz, align 8, !tbaa !33
  %i.gl = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.gn = load <2 x ptr>, ptr %i.gl, align 8, !tbaa !43
  store <2 x ptr> %i.gn, ptr %i.ge, align 8, !tbaa !43
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store ptr %i.gd, ptr %i.go, align 8, !tbaa !144
  %i.gp = getelementptr inbounds nuw i8, ptr %24, i64 40 ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !55
  store i64 %i.gq, ptr %i.gg, align 8, !tbaa !55
  store ptr null, ptr %i.gh, align 8, !tbaa !33
  store ptr %i.gj, ptr %i.gl, align 8, !tbaa !53
  store ptr %i.gj, ptr %i.gm, align 8, !tbaa !54
  store i64 0, ptr %i.gp, align 8, !tbaa !55
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv.exit.i.i.i, %bb.bc
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef null)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.bd

bb.bd:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit
  %i.gr = landingpad { ptr, i32 }
          catch ptr null
  %i.gs = extractvalue { ptr, i32 } %i.gr, 0
  call void @__clang_call_terminate(ptr %i.gs) #32
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  %i.gt = load ptr, ptr %i.y, align 8, !tbaa !126 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 80
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !25
  %i.gw = icmp sgt i32 %i.gv, 0
  br i1 %i.gw, label %.lr.ph717, label %._crit_edge718

.lr.ph717:                                        ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 7 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %34, i64 32
  %i.hd = getelementptr inbounds nuw i8, ptr %36, i64 128 ; 5 uses
  %i.he = getelementptr inbounds nuw i8, ptr %36, i64 344
  %i.hf = getelementptr inbounds nuw i8, ptr %36, i64 352
  %i.hg = getelementptr inbounds nuw i8, ptr %36, i64 353
  %i.hh = getelementptr inbounds nuw i8, ptr %36, i64 360
  %i.hi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 5 uses
  %i.hj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 4 uses
  %i.hk = getelementptr i8, ptr %i.hi, i64 -24    ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 8 uses
  %i.hn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  %i.ho = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.hp = getelementptr i8, ptr %i.hn, i64 -24
  %i.hq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  %i.hr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.hs = getelementptr i8, ptr %i.hq, i64 -24
  %i.ht = getelementptr inbounds nuw i8, ptr %36, i64 24 ; 5 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %36, i64 32
  %i.hv = getelementptr inbounds nuw i8, ptr %36, i64 80 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %36, i64 88
  %i.hx = getelementptr inbounds nuw i8, ptr %36, i64 96 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %36, i64 112 ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %36, i64 104
  %i.ia = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 7 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %36, i64 64
  %i.id = getelementptr inbounds nuw i8, ptr %36, i64 48
  %i.ie = getelementptr inbounds nuw i8, ptr %36, i64 56
  %i.if = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.ig = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ih = getelementptr i8, ptr %i.if, i64 -24
  %i.ii = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %35, i64 12 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.im = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.io = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 7 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.iq = getelementptr inbounds nuw i8, ptr %38, i64 32
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %38, i64 36
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %38, i64 40
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 472
  br label %bb.bg

._crit_edge718:                                   ; preds = %bb.er, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !145, !nonnull !60, !align !146
  invoke void @_ZN2cv3dnn14dnn5_v202606053Net14setInputsNamesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(16) %i.it, ptr noundef nonnull align 8 dereferenceable(24) %25)
          to label %bb.es unwind label %bb.et

bb.be:                                            ; preds = %._crit_edge.i.i
  %i.iu = landingpad { ptr, i32 }
          cleanup
  %i.iv = load ptr, ptr %23, align 8, !tbaa !42   ; 2 uses
  %i.iw = icmp eq ptr %i.iv, %i.fp
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265: ; preds = %bb.be
  %i.ix = load i64, ptr %i.fp, align 8, !tbaa !46
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.iy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br label %bb.ji

bb.bf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i263
  %i.iz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  br label %bb.ji

bb.bg:                                            ; preds = %.lr.ph717, %bb.er
  %indvars.iv756 = phi i64 [ 0, %.lr.ph717 ], [ %indvars.iv.next757, %bb.er ] ; 3 uses
  %i.ja = phi ptr [ %i.gt, %.lr.ph717 ], [ %i.uk, %bb.er ]
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 88
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !29
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %indvars.iv756
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !30 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !48 ; 2 uses
  %i.ji = trunc i32 %i.jh to i1
  br i1 %i.ji, label %bb.bm, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @.str.67, ptr noundef nonnull align 1 dereferenceable(1) %27)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060512ONNXImporter11populateNetEv, ptr noundef nonnull @.str.4, i32 noundef 879) #31
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  unreachable

bb.bk:                                            ; preds = %bb.bh
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270

bb.bl:                                            ; preds = %bb.bi
  %i.jk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jl = load ptr, ptr %26, align 8, !tbaa !42   ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.jn = icmp eq ptr %i.jl, %i.jm
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i268

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i268: ; preds = %bb.bl
  %i.jo = load i64, ptr %i.jm, align 8, !tbaa !46
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i268, %bb.bk
  %.pn200 = phi { ptr, i32 } [ %i.jj, %bb.bk ], [ %i.jk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i268 ], [ %i.jk, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br label %bb.jh

bb.bm:                                            ; preds = %bb.bg
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jf, i64 48 ; 2 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !31
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = and i64 %i.js, -2
  %i.ju = inttoptr i64 %i.jt to ptr               ; 11 uses
  %i.jv = and i32 %i.jh, 4
  %.not540 = icmp eq i32 %i.jv, 0
  br i1 %.not540, label %bb.bn, label %bb.bs

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(1) %29)
          to label %bb.bo unwind label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060512ONNXImporter11populateNetEv, ptr noundef nonnull @.str.4, i32 noundef 881) #31
          to label %bb.bp unwind label %bb.br

bb.bp:                                            ; preds = %bb.bo
  unreachable

bb.bq:                                            ; preds = %bb.bn
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274

bb.br:                                            ; preds = %bb.bo
  %i.jx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jy = load ptr, ptr %28, align 8, !tbaa !42   ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.ka = icmp eq ptr %i.jy, %i.jz
  br i1 %i.ka, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272: ; preds = %bb.br
  %i.kb = load i64, ptr %i.jz, align 8, !tbaa !46
  %i.kc = add i64 %i.kb, 1
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272, %bb.bq
  %.pn202 = phi { ptr, i32 } [ %i.jw, %bb.bq ], [ %i.jx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272 ], [ %i.jx, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  br label %bb.jh

bb.bs:                                            ; preds = %bb.bm
  %47 = getelementptr inbounds nuw i8, ptr %i.jf, i64 64
  %48 = load ptr, ptr %47, align 8                ; 2 uses
  %.not.i.i275 = icmp eq ptr %48, null
  %i.kd = select i1 %.not.i.i275, ptr @_ZN11opencv_onnx28_TypeProto_default_instance_E, ptr %48 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 40
  %i.kf = load i32, ptr %i.ke, align 8, !tbaa !48
  %i.kg = icmp eq i32 %i.kf, 1
  br i1 %i.kg, label %bb.by, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str.69, ptr noundef nonnull align 1 dereferenceable(1) %31)
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060512ONNXImporter11populateNetEv, ptr noundef nonnull @.str.4, i32 noundef 883) #31
          to label %bb.bv unwind label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  unreachable

bb.bw:                                            ; preds = %bb.bt
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278

bb.bx:                                            ; preds = %bb.bu
  %i.ki = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kj = load ptr, ptr %30, align 8, !tbaa !42   ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.kl = icmp eq ptr %i.kj, %i.kk
  br i1 %i.kl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276: ; preds = %bb.bx
  %i.km = load i64, ptr %i.kk, align 8, !tbaa !46
  %i.kn = add i64 %i.km, 1
  call void @_ZdlPvm(ptr noundef %i.kj, i64 noundef %i.kn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276, %bb.bw
  %.pn204 = phi { ptr, i32 } [ %i.kh, %bb.bw ], [ %i.ki, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276 ], [ %i.ki, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  br label %bb.jh

bb.by:                                            ; preds = %bb.bs
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kd, i64 32
  %i.kp = load ptr, ptr %i.ko, align 8            ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !48
  %i.ks = trunc i32 %i.kr to i1
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kp, i64 24 ; 2 uses
  br i1 %i.ks, label %bb.ce, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @.str.70, ptr noundef nonnull align 1 dereferenceable(1) %33)
          to label %bb.ca unwind label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060512ONNXImporter11populateNetEv, ptr noundef nonnull @.str.4, i32 noundef 885) #31
          to label %bb.cb unwind label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  unreachable

bb.cc:                                            ; preds = %bb.bz
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

bb.cd:                                            ; preds = %bb.ca
  %i.kv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kw = load ptr, ptr %32, align 8, !tbaa !42   ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.ky = icmp eq ptr %i.kw, %i.kx
  br i1 %i.ky, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280: ; preds = %bb.cd
  %i.kz = load i64, ptr %i.kx, align 8, !tbaa !46
  %i.la = add i64 %i.kz, 1
  call void @_ZdlPvm(ptr noundef %i.kw, i64 noundef %i.la) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280, %bb.cc
  %.pn206 = phi { ptr, i32 } [ %i.ku, %bb.cc ], [ %i.kv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280 ], [ %i.kv, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  br label %bb.jh

bb.ce:                                            ; preds = %bb.by
  %49 = load ptr, ptr %i.kt, align 8              ; 2 uses
  %.not.i.i283 = icmp eq ptr %49, null
  %i.lb = select i1 %.not.i.i283, ptr @_ZN11opencv_onnx35_TensorShapeProto_default_instance_E, ptr %49 ; 2 uses
  %i.lc = load ptr, ptr %i.gy, align 8, !tbaa !33 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.lc, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ce
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !38 ; 4 uses
  %i.lf = load ptr, ptr %i.ju, align 8            ; 2 uses
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.lc, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.gz, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.lg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !38 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.le, i64 %i.lh) ; 2 uses
  %i.li = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.li, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.cf
  %i.lj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !42
  %i.ll = call i32 @memcmp(ptr noundef %i.lk, ptr noundef %i.lf, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ll, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.cf
  %i.lm = sub i64 %i.lh, %i.le
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.lm, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ll, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ln = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.ln, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.ln, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i284 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i284, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.cf, !llvm.loop !147

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.lo = icmp eq ptr %.19.i.i.i, %i.gz
  br i1 %i.lo, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.lp = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !38 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.lq, i64 %i.le) ; 2 uses
  %i.lr = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.lr, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.cg
  %i.ls = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !42
  %i.lu = call i32 @memcmp(ptr noundef %i.lf, ptr noundef %i.lt, i64 noundef %.sroa.speculated.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.lu, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.cg
  %i.lv = sub i64 %i.le, %i.lq
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.lv, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.lu, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.lw = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.lw, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread, label %bb.cn

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.ce, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  %i.lx = load ptr, ptr %i.kt, align 8, !tbaa !148 ; 2 uses
  %.not.i.i285 = icmp eq ptr %i.lx, null
  %i.ly = select i1 %.not.i.i285, ptr @_ZN11opencv_onnx35_TensorShapeProto_default_instance_E, ptr %i.lx
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 24
  %i.ma = load i32, ptr %i.lz, align 8, !tbaa !25
  %i.mb = getelementptr inbounds nuw i8, ptr %i.kp, i64 32
  %i.mc = load i32, ptr %i.mb, align 8, !tbaa !151
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  store ptr %i.ha, ptr %34, align 8, !tbaa !49, !alias.scope !152
  %i.md = load ptr, ptr %i.ju, align 8, !tbaa !42, !noalias !152 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !38, !noalias !152 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28, !noalias !152
  store i64 %i.mf, ptr %i.c, align 8, !tbaa !50, !noalias !152
  %i.mg = icmp ugt i64 %i.mf, 15
  br i1 %i.mg, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread
  %i.mh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %34, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc286 unwind label %bb.cl ; 2 uses

.noexc286:                                        ; preds = %.noexc.i.i.i
  store ptr %i.mh, ptr %34, align 8, !tbaa !42, !alias.scope !152
  %i.mi = load i64, ptr %i.c, align 8, !tbaa !50, !noalias !152
  store i64 %i.mi, ptr %i.ha, align 8, !tbaa !46, !alias.scope !152
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc286, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread
  %i.mj = phi ptr [ %i.mh, %.noexc286 ], [ %i.ha, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread ] ; 2 uses
  switch i64 %i.mf, label %bb.ci [
    i64 1, label %bb.ch
    i64 0, label %bb.cj
  ]

bb.ch:                                            ; preds = %._crit_edge.i.i.i.i
  %i.mk = load i8, ptr %i.md, align 1, !tbaa !46
  store i8 %i.mk, ptr %i.mj, align 1, !tbaa !46
  br label %bb.cj

bb.ci:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mj, ptr align 1 %i.md, i64 %i.mf, i1 false)
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %._crit_edge.i.i.i.i
  %i.ml = load i64, ptr %i.c, align 8, !tbaa !50, !noalias !152 ; 2 uses
  store i64 %i.ml, ptr %i.hb, align 8, !tbaa !38, !alias.scope !152
  %i.mm = load ptr, ptr %34, align 8, !tbaa !42, !alias.scope !152
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.ml
  store i8 0, ptr %i.mn, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28, !noalias !152
  %.sroa.5531.0.insert.ext = zext i32 %i.mc to i64
  %.sroa.5531.0.insert.shift = shl nuw i64 %.sroa.5531.0.insert.ext, 32
  %.sroa.0530.0.insert.ext = zext i32 %i.ma to i64
  %.sroa.0530.0.insert.insert = or disjoint i64 %.sroa.5531.0.insert.shift, %.sroa.0530.0.insert.ext
  store i64 %.sroa.0530.0.insert.insert, ptr %i.hc, align 8, !alias.scope !152
  %i.mo = invoke { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE6insertISD_IS5_SA_EEENSt9enable_ifIXsr16is_constructibleISF_T_EE5valueESD_ISt17_Rb_tree_iteratorISF_EbEE4typeEOSL_(ptr noundef nonnull align 8 dereferenceable(48) %i.gx, ptr noundef nonnull align 8 dereferenceable(40) %34)
          to label %bb.ck unwind label %bb.cm     ; 0 uses

bb.ck:                                            ; preds = %bb.cj
  %i.mp = load ptr, ptr %34, align 8, !tbaa !42   ; 2 uses
  %i.mq = icmp eq ptr %i.mp, %i.ha
  br i1 %i.mq, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ck
  %i.mr = load i64, ptr %i.ha, align 8, !tbaa !46
  %i.ms = add i64 %i.mr, 1
  call void @_ZdlPvm(ptr noundef %i.mp, i64 noundef %i.ms) #29
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoEED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoEED2Ev.exit: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  br label %bb.cn

bb.cl:                                            ; preds = %.noexc.i.i.i
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoEED2Ev.exit289

bb.cm:                                            ; preds = %bb.cj
  %i.mu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mv = load ptr, ptr %34, align 8, !tbaa !42   ; 2 uses
  %i.mw = icmp eq ptr %i.mv, %i.ha
  br i1 %i.mw, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoEED2Ev.exit289, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i287

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i287: ; preds = %bb.cm
  %i.mx = load i64, ptr %i.ha, align 8, !tbaa !46
  %i.my = add i64 %i.mx, 1
  call void @_ZdlPvm(ptr noundef %i.mv, i64 noundef %i.my) #29
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoEED2Ev.exit289

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoEED2Ev.exit289: ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i287, %bb.cl
  %.pn208 = phi { ptr, i32 } [ %i.mt, %bb.cl ], [ %i.mu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i287 ], [ %i.mu, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  br label %bb.jh

bb.cn:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoEED2Ev.exit
  %i.mz = getelementptr inbounds nuw i8, ptr %i.lb, i64 24
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !25 ; 4 uses
  %i.nb = icmp sgt i32 %i.na, -1
  br i1 %i.nb, label %bb.cr, label %bb.cp

bb.co:                                            ; preds = %bb.cp
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %bb.jh

bb.cp:                                            ; preds = %bb.cn
  invoke void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.na, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v2026060512ONNXImporter11populateNetEvE15__cv_check__891) #31
          to label %bb.cq unwind label %bb.co

bb.cq:                                            ; preds = %bb.cp
  unreachable

bb.cr:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #28
  %i.nd = zext nneg i32 %i.na to i64              ; 2 uses
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %35, i64 noundef %i.nd, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.preheader548 unwind label %bb.cu

.preheader548:                                    ; preds = %bb.cr
  %.not729 = icmp eq i32 %i.na, 0                 ; 2 uses
  br i1 %.not729, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader548
end_hunk_1
begin_hunk_2_@_ZN2cv3dnn14dnn5_v2026060512ONNXImporter11populateNetEv:bb.a

._crit_edge.i.i.i.i370:                           ; preds = %.noexc372, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.tu = phi ptr [ %i.ts, %.noexc372 ], [ %i.io, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ] ; 2 uses
  switch i64 %i.tq, label %bb.em [
    i64 1, label %bb.el
    i64 0, label %bb.en
  ]

bb.el:                                            ; preds = %._crit_edge.i.i.i.i370
  %i.tv = load i8, ptr %i.to, align 1, !tbaa !46
  store i8 %i.tv, ptr %i.tu, align 1, !tbaa !46
  br label %bb.en

bb.em:                                            ; preds = %._crit_edge.i.i.i.i370
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tu, ptr align 1 %i.to, i64 %i.tq, i1 false)
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el, %._crit_edge.i.i.i.i370
  %i.tw = load i64, ptr %i.a, align 8, !tbaa !50, !noalias !184 ; 2 uses
  store i64 %i.tw, ptr %i.ip, align 8, !tbaa !38, !alias.scope !184
  %i.tx = load ptr, ptr %38, align 8, !tbaa !42, !alias.scope !184
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 %i.tw
  store i8 0, ptr %i.ty, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !184
  store i32 0, ptr %i.iq, align 8, !tbaa !48
  store i32 %i.tn, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !48
  store i32 5, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !48
  %i.tz = invoke { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE6insertISD_IS5_SA_EEENSt9enable_ifIXsr16is_constructibleISF_T_EE5valueESD_ISt17_Rb_tree_iteratorISF_EbEE4typeEOSL_(ptr noundef nonnull align 8 dereferenceable(48) %i.ir, ptr noundef nonnull align 8 dereferenceable(44) %38)
          to label %bb.eo unwind label %bb.eq     ; 0 uses

bb.eo:                                            ; preds = %bb.en
  %i.ua = load ptr, ptr %38, align 8, !tbaa !42   ; 2 uses
  %i.ub = icmp eq ptr %i.ua, %i.io
  br i1 %i.ub, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i373

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i373: ; preds = %bb.eo
  %i.uc = load i64, ptr %i.io, align 8, !tbaa !46
  %i.ud = add i64 %i.uc, 1
  call void @_ZdlPvm(ptr noundef %i.ua, i64 noundef %i.ud) #29
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoEED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoEED2Ev.exit: ; preds = %bb.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i373
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %bb.er

bb.ep:                                            ; preds = %.noexc.i.i.i371
  %i.ue = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoEED2Ev.exit379

bb.eq:                                            ; preds = %bb.en
  %i.uf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ug = load ptr, ptr %38, align 8, !tbaa !42   ; 2 uses
  %i.uh = icmp eq ptr %i.ug, %i.io
  br i1 %i.uh, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoEED2Ev.exit379, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i376

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i376: ; preds = %bb.eq
  %i.ui = load i64, ptr %i.io, align 8, !tbaa !46
  %i.uj = add i64 %i.ui, 1
  call void @_ZdlPvm(ptr noundef %i.ug, i64 noundef %i.uj) #29
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoEED2Ev.exit379

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoEED2Ev.exit379: ; preds = %bb.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i376, %bb.ep
  %.pn211 = phi { ptr, i32 } [ %i.ue, %bb.ep ], [ %i.uf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i376 ], [ %i.uf, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %.body354

bb.er:                                            ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoEED2Ev.exit, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  %indvars.iv.next757 = add nuw nsw i64 %indvars.iv756, 1 ; 2 uses
  %i.uk = load ptr, ptr %i.y, align 8, !tbaa !126 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 80
  %i.um = load i32, ptr %i.ul, align 8, !tbaa !25
  %i.un = sext i32 %i.um to i64
  %i.uo = icmp slt i64 %indvars.iv.next757, %i.un
  br i1 %i.uo, label %bb.bg, label %._crit_edge718, !llvm.loop !187

.body354:                                         ; preds = %bb.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.ec, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoEED2Ev.exit379, %.body320, %bb.cy, %bb.cu
  %.pn220.pn = phi { ptr, i32 } [ %i.ob, %bb.cu ], [ %i.om, %bb.cy ], [ %i.ro, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn215.pn.pn, %.body320 ], [ %.pn211, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter9LayerInfoEED2Ev.exit379 ], [ %i.si, %bb.ec ], [ %i.oc, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  br label %bb.jh

bb.es:                                            ; preds = %._crit_edge718
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.uq = load i8, ptr %i.up, align 8, !tbaa !109, !range !59, !noundef !60
  %i.ur = trunc nuw i8 %i.uq to i1
  br i1 %i.ur, label %.loopexit547, label %.preheader546

.preheader546:                                    ; preds = %bb.es
  %i.us = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !179
  %i.uu = load ptr, ptr %25, align 8, !tbaa !183  ; 2 uses
  %.not730 = icmp eq ptr %i.ut, %i.uu
  br i1 %.not730, label %.loopexit547, label %.lr.ph720

.lr.ph720:                                        ; preds = %.preheader546
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 416
  br label %bb.eu

bb.et:                                            ; preds = %bb.hn, %._crit_edge718
  %i.uw = landingpad { ptr, i32 }
          cleanup
  br label %bb.jh

bb.eu:                                            ; preds = %.lr.ph720, %bb.ew
  %indvars.iv759 = phi i64 [ 0, %.lr.ph720 ], [ %indvars.iv.next760, %bb.ew ] ; 2 uses
  %i.ux = phi ptr [ %i.uu, %.lr.ph720 ], [ %i.vc, %bb.ew ]
  %i.uy = load ptr, ptr %i.is, align 8, !tbaa !145, !nonnull !60, !align !146
  %i.uz = getelementptr inbounds nuw [32 x i8], ptr %i.ux, i64 %indvars.iv759 ; 2 uses
  %i.va = invoke noundef nonnull align 4 dereferenceable(52) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv8MatShapeESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.uv, ptr noundef nonnull align 8 dereferenceable(32) %i.uz)
          to label %bb.ev unwind label %bb.ex

bb.ev:                                            ; preds = %bb.eu
  invoke void @_ZN2cv3dnn14dnn5_v202606053Net13setInputShapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8MatShapeE(ptr noundef nonnull align 8 dereferenceable(16) %i.uy, ptr noundef nonnull align 8 dereferenceable(32) %i.uz, ptr noundef nonnull align 4 dereferenceable(52) %i.va)
          to label %bb.ew unwind label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %indvars.iv.next760 = add nuw nsw i64 %indvars.iv759, 1 ; 2 uses
  %i.vb = load ptr, ptr %i.us, align 8, !tbaa !179
  %i.vc = load ptr, ptr %25, align 8, !tbaa !183  ; 2 uses
  %i.vd = ptrtoint ptr %i.vb to i64
  %i.ve = ptrtoint ptr %i.vc to i64
  %i.vf = sub i64 %i.vd, %i.ve
  %i.vg = ashr exact i64 %i.vf, 5
  %i.vh = icmp ugt i64 %i.vg, %indvars.iv.next760
  br i1 %i.vh, label %bb.eu, label %.loopexit547, !llvm.loop !188

bb.ex:                                            ; preds = %bb.ev, %bb.eu
  %i.vi = landingpad { ptr, i32 }
          cleanup
  br label %bb.jh

.loopexit547:                                     ; preds = %bb.ew, %.preheader546, %bb.es
  %i.vj = load ptr, ptr %i.y, align 8, !tbaa !126 ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 104
  %i.vl = load i32, ptr %i.vk, align 8, !tbaa !25
  %i.vm = icmp sgt i32 %i.vl, 0
  br i1 %i.vm, label %._crit_edge.i.i380.lr.ph, label %._crit_edge722

._crit_edge.i.i380.lr.ph:                         ; preds = %.loopexit547
  %i.vn = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 6 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.vs = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.vt = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.vu = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.vv = getelementptr inbounds nuw i8, ptr %12, i64 96 ; 3 uses
  %i.vw = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.vx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.vy = getelementptr i8, ptr %i.vw, i64 -24
  %i.vz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.wa = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 5 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %12, i64 112 ; 4 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %12, i64 104
  %i.wd = getelementptr inbounds nuw i8, ptr %12, i64 80 ; 2 uses
  %i.we = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 5 uses
  %i.wf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 4 uses
  %i.wg = getelementptr i8, ptr %i.we, i64 -24    ; 4 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %12, i64 128 ; 5 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.wk = getelementptr inbounds nuw i8, ptr %12, i64 344
  %i.wl = getelementptr inbounds nuw i8, ptr %12, i64 352
  %i.wm = getelementptr inbounds nuw i8, ptr %12, i64 353
  %i.wn = getelementptr inbounds nuw i8, ptr %12, i64 360
  %i.wo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  %i.wp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.wq = getelementptr i8, ptr %i.wo, i64 -24
  %i.wr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  %i.ws = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.wt = getelementptr i8, ptr %i.wr, i64 -24
  %i.wu = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.wv = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.ww = getelementptr inbounds nuw i8, ptr %39, i64 22
  br label %._crit_edge.i.i380

._crit_edge722:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405, %.loopexit547
  %i.wx = load i8, ptr @_ZN2cv3dnn14dnn5_v2026060519DNN_DIAGNOSTICS_RUNE, align 1, !tbaa !57, !range !59, !noundef !60
  %i.wy = trunc nuw i8 %i.wx to i1
  br i1 %i.wy, label %bb.gw, label %bb.ho

._crit_edge.i.i380:                               ; preds = %._crit_edge.i.i380.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405
  %indvars.iv762 = phi i64 [ 0, %._crit_edge.i.i380.lr.ph ], [ %indvars.iv.next763, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405 ] ; 3 uses
  %i.wz = phi ptr [ %i.vj, %._crit_edge.i.i380.lr.ph ], [ %i.adg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405 ]
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 112
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !29
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 8
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %indvars.iv762
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !30 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #28
  store ptr %i.vn, ptr %39, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.vn, ptr noundef nonnull align 1 dereferenceable(6) @.str.77, i64 6, i1 false)
  store i64 6, ptr %i.vo, align 8, !tbaa !38
  store i8 0, ptr %i.ww, align 2, !tbaa !46
  %i.xf = getelementptr i8, ptr %i.xe, i64 16
  %.val = load i32, ptr %i.xf, align 4, !tbaa !48 ; 2 uses
  %i.xg = getelementptr i8, ptr %i.xe, i64 64
  %.val234 = load ptr, ptr %i.xg, align 8         ; 2 uses
  %i.xh = trunc i32 %.val to i1
  br i1 %i.xh, label %bb.fd, label %bb.ey

bb.ey:                                            ; preds = %._crit_edge.i.i380
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.67, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.ez unwind label %bb.fb

bb.ez:                                            ; preds = %bb.ey
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v20260605L18dumpValueInfoProtoEiRKN11opencv_onnx14ValueInfoProtoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr noundef nonnull @.str.4, i32 noundef 369) #31
          to label %bb.fa unwind label %bb.fc

bb.fa:                                            ; preds = %bb.ez
  unreachable

bb.fb:                                            ; preds = %bb.ey
  %i.xi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i384

bb.fc:                                            ; preds = %bb.ez
  %i.xj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xk = load ptr, ptr %3, align 8, !tbaa !42    ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.xm = icmp eq ptr %i.xk, %i.xl
  br i1 %i.xm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i384, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i386

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i386: ; preds = %bb.fc
  %i.xn = load i64, ptr %i.xl, align 8, !tbaa !46
  %i.xo = add i64 %i.xn, 1
  call void @_ZdlPvm(ptr noundef %i.xk, i64 noundef %i.xo) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i384

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i384: ; preds = %bb.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i386, %bb.fb
  %.pn.i385 = phi { ptr, i32 } [ %i.xi, %bb.fb ], [ %i.xj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i386 ], [ %i.xj, %bb.fc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.body401

bb.fd:                                            ; preds = %._crit_edge.i.i380
  %i.xp = and i32 %.val, 4
  %.not1.i = icmp eq i32 %i.xp, 0
  br i1 %.not1.i, label %bb.fe, label %bb.fj

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ff unwind label %bb.fh

bb.ff:                                            ; preds = %bb.fe
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v20260605L18dumpValueInfoProtoEiRKN11opencv_onnx14ValueInfoProtoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr noundef nonnull @.str.4, i32 noundef 370) #31
          to label %bb.fg unwind label %bb.fi

bb.fg:                                            ; preds = %bb.ff
  unreachable

bb.fh:                                            ; preds = %bb.fe
  %i.xq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i

bb.fi:                                            ; preds = %bb.ff
  %i.xr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xs = load ptr, ptr %5, align 8, !tbaa !42    ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.xu = icmp eq ptr %i.xs, %i.xt
  br i1 %i.xu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i: ; preds = %bb.fi
  %i.xv = load i64, ptr %i.xt, align 8, !tbaa !46
  %i.xw = add i64 %i.xv, 1
  call void @_ZdlPvm(ptr noundef %i.xs, i64 noundef %i.xw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i: ; preds = %bb.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i, %bb.fh
  %.pn45.i = phi { ptr, i32 } [ %i.xq, %bb.fh ], [ %i.xr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i ], [ %i.xr, %bb.fi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %.body401

bb.fj:                                            ; preds = %bb.fd
  %.not.i.i.i388 = icmp eq ptr %.val234, null
  %i.xx = select i1 %.not.i.i.i388, ptr @_ZN11opencv_onnx28_TypeProto_default_instance_E, ptr %.val234 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 40
  %i.xz = load i32, ptr %i.xy, align 8, !tbaa !48
  %i.ya = icmp eq i32 %i.xz, 1
  br i1 %i.ya, label %bb.fp, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.69, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.fl unwind label %bb.fn

bb.fl:                                            ; preds = %bb.fk
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v20260605L18dumpValueInfoProtoEiRKN11opencv_onnx14ValueInfoProtoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr noundef nonnull @.str.4, i32 noundef 372) #31
          to label %bb.fm unwind label %bb.fo

bb.fm:                                            ; preds = %bb.fl
  unreachable

bb.fn:                                            ; preds = %bb.fk
  %i.yb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i

bb.fo:                                            ; preds = %bb.fl
  %i.yc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yd = load ptr, ptr %7, align 8, !tbaa !42    ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.yf = icmp eq ptr %i.yd, %i.ye
  br i1 %i.yf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i: ; preds = %bb.fo
  %i.yg = load i64, ptr %i.ye, align 8, !tbaa !46
  %i.yh = add i64 %i.yg, 1
  call void @_ZdlPvm(ptr noundef %i.yd, i64 noundef %i.yh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i: ; preds = %bb.fo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i, %bb.fn
  %.pn47.i = phi { ptr, i32 } [ %i.yb, %bb.fn ], [ %i.yc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i ], [ %i.yc, %bb.fo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %.body401

bb.fp:                                            ; preds = %bb.fj
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xx, i64 32
  %i.yj = load ptr, ptr %i.yi, align 8            ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 16
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !48
  %i.ym = trunc i32 %i.yl to i1
  br i1 %i.ym, label %bb.fv, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.70, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.fr unwind label %bb.ft

bb.fr:                                            ; preds = %bb.fq
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v20260605L18dumpValueInfoProtoEiRKN11opencv_onnx14ValueInfoProtoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr noundef nonnull @.str.4, i32 noundef 374) #31
          to label %bb.fs unwind label %bb.fu

bb.fs:                                            ; preds = %bb.fr
  unreachable

bb.ft:                                            ; preds = %bb.fq
  %i.yn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i

bb.fu:                                            ; preds = %bb.fr
  %i.yo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yp = load ptr, ptr %9, align 8, !tbaa !42    ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.yr = icmp eq ptr %i.yp, %i.yq
  br i1 %i.yr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.i: ; preds = %bb.fu
  %i.ys = load i64, ptr %i.yq, align 8, !tbaa !46
  %i.yt = add i64 %i.ys, 1
  call void @_ZdlPvm(ptr noundef %i.yp, i64 noundef %i.yt) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i: ; preds = %bb.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.i, %bb.ft
  %.pn49.i = phi { ptr, i32 } [ %i.yn, %bb.ft ], [ %i.yo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.i ], [ %i.yo, %bb.fu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.body401

bb.fv:                                            ; preds = %bb.fp
  %50 = getelementptr inbounds nuw i8, ptr %i.yj, i64 24
  %51 = load ptr, ptr %50, align 8                ; 2 uses
  %.not.i.i67.i = icmp eq ptr %51, null
  %i.yu = select i1 %.not.i.i67.i, ptr @_ZN11opencv_onnx35_TensorShapeProto_default_instance_E, ptr %51 ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 24
  %i.yw = load i32, ptr %i.yv, align 8, !tbaa !25 ; 4 uses
  %i.yx = icmp sgt i32 %i.yw, -1
  br i1 %i.yx, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  invoke void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.yw, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L18dumpValueInfoProtoEiRKN11opencv_onnx14ValueInfoProtoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15__cv_check__378) #31
          to label %.noexc396 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc396:                                        ; preds = %bb.fw
  unreachable

bb.fx:                                            ; preds = %bb.fv
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.yy = zext nneg i32 %i.yw to i64              ; 2 uses
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %11, i64 noundef %i.yy, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc397 unwind label %.loopexit.split-lp.loopexit

.noexc397:                                        ; preds = %bb.fx
  %.not6.i = icmp eq i32 %i.yw, 0
  br i1 %.not6.i, label %.loopexit542, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc397
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yu, i64 32
  %i.za = trunc nuw nsw i64 %indvars.iv762 to i32
  br label %bb.fy

bb.fy:                                            ; preds = %_ZN2cv8MatShapeixEm.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN2cv8MatShapeixEm.exit.i ] ; 5 uses
  %i.zb = load ptr, ptr %i.yz, align 8, !tbaa !29
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  %i.zd = getelementptr inbounds nuw [8 x i8], ptr %i.zc, i64 %indvars.iv.i
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !30 ; 4 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 40
  %i.zg = getelementptr inbounds nuw i8, ptr %i.ze, i64 16
  %i.zh = load i32, ptr %i.zg, align 4, !tbaa !48
  %i.zi = trunc i32 %i.zh to i1
  br i1 %i.zi, label %bb.fz, label %bb.gs

bb.fz:                                            ; preds = %bb.fy
  %i.zj = invoke noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv()
          to label %.noexc398 unwind label %.loopexit ; 3 uses

.noexc398:                                        ; preds = %bb.fz
  %.not.i392 = icmp eq ptr %i.zj, null            ; 2 uses
  br i1 %.not.i392, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %.noexc398
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 8
  %i.zl = load i32, ptr %i.zk, align 8, !tbaa !127
  %i.zm = icmp slt i32 %i.zl, 4
  br i1 %i.zm, label %bb.gs, label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %.noexc398
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.wi) #28
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.wi, align 8, !tbaa !110
  store ptr null, ptr %i.wk, align 8, !tbaa !156
  store i8 0, ptr %i.wl, align 8, !tbaa !163
  store i8 0, ptr %i.wm, align 1, !tbaa !164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.wn, i8 0, i64 32, i1 false)
  store ptr %i.we, ptr %12, align 8, !tbaa !110
  %i.zn = load i64, ptr %i.wg, align 8
  %i.zo = getelementptr inbounds i8, ptr %12, i64 %i.zn
  store ptr %i.wf, ptr %i.zo, align 8, !tbaa !110
  store i64 0, ptr %i.wh, align 8, !tbaa !142
  %i.zp = load ptr, ptr %12, align 8, !tbaa !110
  %i.zq = getelementptr i8, ptr %i.zp, i64 -24
  %i.zr = load i64, ptr %i.zq, align 8
  %i.zs = getelementptr inbounds i8, ptr %12, i64 %i.zr
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.zs, ptr noundef null)
          to label %.noexc.i517 unwind label %bb.ge

.noexc.i517:                                      ; preds = %bb.gb
  store ptr %i.wo, ptr %i.vp, align 8, !tbaa !110
  %i.zt = load i64, ptr %i.wq, align 8
  %i.zu = getelementptr inbounds i8, ptr %i.vp, i64 %i.zt
  store ptr %i.wp, ptr %i.zu, align 8, !tbaa !110
  %i.zv = load ptr, ptr %i.vp, align 8, !tbaa !110
  %i.zw = getelementptr i8, ptr %i.zv, i64 -24
  %i.zx = load i64, ptr %i.zw, align 8
  %i.zy = getelementptr inbounds i8, ptr %i.vp, i64 %i.zx
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.zy, ptr noundef null)
          to label %bb.gd unwind label %bb.gc

bb.gc:                                            ; preds = %.noexc.i517
  %i.zz = landingpad { ptr, i32 }
          cleanup
  store ptr %i.we, ptr %12, align 8, !tbaa !110
  %i.aaa = load i64, ptr %i.wg, align 8
  %i.aab = getelementptr inbounds i8, ptr %12, i64 %i.aaa
  store ptr %i.wf, ptr %i.aab, align 8, !tbaa !110
  store i64 0, ptr %i.wh, align 8, !tbaa !142
  br label %.body.i515

bb.gd:                                            ; preds = %.noexc.i517
  store ptr %i.wr, ptr %12, align 8, !tbaa !110
  %i.aac = load i64, ptr %i.wt, align 8
  %i.aad = getelementptr inbounds i8, ptr %12, i64 %i.aac
  store ptr %i.ws, ptr %i.aad, align 8, !tbaa !110
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %12, align 8, !tbaa !110
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.wi, align 8, !tbaa !110
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %i.vp, align 8, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.wu, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.wd) #28
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.wa, align 8, !tbaa !110
  store i32 24, ptr %i.wv, align 8, !tbaa !165
  store ptr %i.wb, ptr %i.vv, align 8, !tbaa !49
  store i64 0, ptr %i.wc, align 8, !tbaa !38
  store i8 0, ptr %i.wb, align 8, !tbaa !46
  %i.aae = load ptr, ptr %12, align 8, !tbaa !110
  %i.aaf = getelementptr i8, ptr %i.aae, i64 -24
  %i.aag = load i64, ptr %i.aaf, align 8
  %i.aah = getelementptr inbounds i8, ptr %12, i64 %i.aag
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.aah, ptr noundef nonnull %i.wa)
          to label %.noexc399 unwind label %bb.gf

bb.ge:                                            ; preds = %bb.gb
  %i.aai = landingpad { ptr, i32 }
          cleanup
  br label %.body.i515

bb.gf:                                            ; preds = %bb.gd
  %i.aaj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.wa) #28
  store ptr %i.we, ptr %12, align 8, !tbaa !110
  %i.aak = load i64, ptr %i.wg, align 8
  %i.aal = getelementptr inbounds i8, ptr %12, i64 %i.aak
  store ptr %i.wf, ptr %i.aal, align 8, !tbaa !110
  store i64 0, ptr %i.wh, align 8, !tbaa !142
  br label %.body.i515

.body.i515:                                       ; preds = %bb.gf, %bb.ge, %bb.gc
  %.pn.i516 = phi { ptr, i32 } [ %i.aaj, %bb.gf ], [ %i.aai, %bb.ge ], [ %i.zz, %bb.gc ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.wi) #28
  br label %.body401

.noexc399:                                        ; preds = %bb.gd
  %i.aam = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vp, ptr noundef nonnull @.str.159, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.gp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc399
  %i.aan = load ptr, ptr %39, align 8, !tbaa !42
  %i.aao = load i64, ptr %i.vo, align 8, !tbaa !38
  %i.aap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vp, ptr noundef %i.aan, i64 noundef %i.aao)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.gp ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.aaq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aap, ptr noundef nonnull @.str.633, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68.i unwind label %bb.gp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.aar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aap, i32 noundef %i.za)
          to label %bb.gg unwind label %bb.gp     ; 2 uses

bb.gg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68.i
  %i.aas = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aar, ptr noundef nonnull @.str.75, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69.i unwind label %bb.gp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69.i: ; preds = %bb.gg
  %i.aat = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.aau = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aar, i32 noundef %i.aat)
          to label %bb.gh unwind label %bb.gp     ; 2 uses

bb.gh:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69.i
  %i.aav = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aau, ptr noundef nonnull @.str.76, i64 noundef 17)
          to label %bb.gi unwind label %bb.gp     ; 0 uses

bb.gi:                                            ; preds = %bb.gh
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.ze, i64 24
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !31
  %i.aay = ptrtoint ptr %i.aax to i64
  %i.aaz = and i64 %i.aay, -2
  %i.aba = inttoptr i64 %i.aaz to ptr             ; 2 uses
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !42
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aba, i64 8
  %i.abd = load i64, ptr %i.abc, align 8, !tbaa !38
  %i.abe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aau, ptr noundef %i.abb, i64 noundef %i.abd)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit71.i unwind label %bb.gp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit71.i: ; preds = %bb.gi
  %i.abf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.abe, ptr noundef nonnull @.str.40, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i unwind label %bb.gp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit71.i
  br i1 %.not.i392, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i
  %i.abg = load ptr, ptr %i.zj, align 8, !tbaa !131
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i
  %i.abh = phi ptr [ %i.abg, %bb.gj ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  call void @llvm.experimental.noalias.scope.decl(metadata !192)
  store ptr %i.vq, ptr %13, align 8, !tbaa !49, !alias.scope !195
  store i64 0, ptr %i.vr, align 8, !tbaa !38, !alias.scope !195
  store i8 0, ptr %i.vq, align 8, !tbaa !46, !alias.scope !195
end_hunk_2
begin_hunk_3_@_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE6insertISA_IS5_S7_EEENSt9enable_ifIXsr16is_constructibleISC_T_EE5valueESA_ISt17_Rb_tree_iteratorISC_EbEE4typeEOSI_:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #28 ; 2 uses
  %.not.i.i.i5 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i5, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i15 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit ], [ %i.c, %bb.a ]
  %i.x = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJS6_IS5_S9_EEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i15, ptr noundef nonnull align 8 dereferenceable(240) %1)
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %.critedge
  %.sroa.013.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %.sroa.3.0 = phi i8 [ 1, %.critedge ], [ 0, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.013.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3MatEED2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #28
  %i.b = load ptr, ptr %0, align 8, !tbaa !42     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !46
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE6insertISD_IS5_SA_EEENSt9enable_ifIXsr16is_constructibleISF_T_EE5valueESD_ISt17_Rb_tree_iteratorISF_EbEE4typeEOSL_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !38   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !38   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE11lower_boundERSE_.exit, label %bb.b, !llvm.loop !147

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE11lower_boundERSE_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE11lower_boundERSE_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !38   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #28 ; 2 uses
  %.not.i.i.i5 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i5, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE11lower_boundERSE_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i15 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoESt4lessIS5_ESaISt4pairIKS5_SA_EEE11lower_boundERSE_.exit ], [ %i.c, %bb.a ]
  %i.x = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE22_M_emplace_hint_uniqueIJS6_IS5_SC_EEEESt17_Rb_tree_iteratorISD_ESt23_Rb_tree_const_iteratorISD_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i15, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %.critedge
  %.sroa.013.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %.sroa.3.0 = phi i8 [ 1, %.critedge ], [ 0, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.013.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt9make_pairIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSE_INSF_IT0_E4typeEE6__typeEEOSG_OSL_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.90") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !49
  %i.c = load ptr, ptr %1, align 8, !tbaa !42     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !38   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.e, ptr %i.a, align 8, !tbaa !50
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !42
  %i.h = load i64, ptr %i.a, align 8, !tbaa !50
  store i64 %i.h, ptr %i.b, align 8, !tbaa !46
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoEEC2IRKS5_SA_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !46
  store i8 %i.j, ptr %i.i, align 1, !tbaa !46
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoEEC2IRKS5_SA_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoEEC2IRKS5_SA_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v2026060512ONNXImporter10TensorInfoEEC2IRKS5_SA_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !38
  %i.m = load ptr, ptr %0, align 8, !tbaa !42
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i64, ptr %2, align 4
  store i64 %i.p, ptr %i.o, align 8
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3dnn14dnn5_v2026060512ONNXImporter14getLayerParamsERKN11opencv_onnx9NodeProtoE(ptr dead_on_unwind noalias writable sret(%"class.cv::dnn::dnn5_v20260605::LayerParams") align 8 initializes((8, 12), (16, 24)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.opencv_onnx::AttributeProto", align 8 ; 20 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 30 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.10", align 1 ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"struct.cv::dnn::dnn5_v20260605::DictValue", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.10", align 1 ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"struct.cv::dnn::dnn5_v20260605::DictValue", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator.10", align 1 ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"struct.cv::dnn::dnn5_v20260605::DictValue", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator.10", align 1 ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"struct.cv::dnn::dnn5_v20260605::DictValue", align 8 ; 7 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::allocator.10", align 1 ; 3 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %"struct.cv::dnn::dnn5_v20260605::DictValue", align 8 ; 7 uses
  %27 = alloca %"struct.cv::dnn::dnn5_v20260605::DictValue", align 8 ; 7 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.std::allocator.10", align 1 ; 3 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %30 = alloca %"struct.cv::dnn::dnn5_v20260605::DictValue", align 8 ; 8 uses
  %31 = alloca %"struct.cv::dnn::dnn5_v20260605::DictValue", align 8 ; 7 uses
  %32 = alloca %"class.opencv_onnx::TensorProto", align 8 ; 8 uses
  %33 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %35 = alloca %"class.std::allocator.10", align 1 ; 4 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %37 = alloca %"class.std::allocator.10", align 1 ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %41 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %43 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %47 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.f, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.g, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.e, ptr %i.h, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  store ptr %i.k, ptr %i.j, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.l, align 8, !tbaa !38
  store i8 0, ptr %i.k, align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.o, align 8, !tbaa !38
  store i8 0, ptr %i.n, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !25
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph540, label %._crit_edge541

.lr.ph540:                                        ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 11 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 184 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.ay = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.bc = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.bj = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.bw = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %19, i64 19
  %i.cb = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 22
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 27
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph540, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396
  %indvars.iv565 = phi i64 [ 0, %.lr.ph540 ], [ %indvars.iv.next566, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.ce = load ptr, ptr %i.s, align 8, !tbaa !29
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv565
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !30
  invoke void @_ZN11opencv_onnx14AttributeProtoC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %3, ptr noundef nonnull align 8 dereferenceable(256) %i.ch)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.ci = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = and i64 %i.cj, -2
  %i.cl = inttoptr i64 %i.ck to ptr               ; 2 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !49
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !42 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !38 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.co, ptr %i.a, align 8, !tbaa !50
  %i.cp = icmp ugt i64 %i.co, 15
  br i1 %i.cp, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.cq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.cq, ptr %4, align 8, !tbaa !42
  %i.cr = load i64, ptr %i.a, align 8, !tbaa !50
  store i64 %i.cr, ptr %i.u, align 8, !tbaa !46
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.c
  %i.cs = phi ptr [ %i.cq, %.noexc ], [ %i.u, %bb.c ] ; 2 uses
  switch i64 %i.co, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ct = load i8, ptr %i.cm, align 1, !tbaa !46
  store i8 %i.ct, ptr %i.cs, align 1, !tbaa !46
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cs, ptr align 1 %i.cm, i64 %i.co, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.cu = load i64, ptr %i.a, align 8, !tbaa !50  ; 2 uses
  store i64 %i.cu, ptr %i.v, align 8, !tbaa !38
  %i.cv = load ptr, ptr %4, align 8, !tbaa !42
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cu
  store i8 0, ptr %i.cw, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.cx = load i64, ptr %i.v, align 8, !tbaa !38  ; 6 uses
  switch i64 %i.cx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit310.thread442 [
    i64 12, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit203
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit218
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit267
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit295
    i64 11, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit310
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.f
  %i.cy = load ptr, ptr %4, align 8, !tbaa !42    ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 1
  %i.da = xor i64 %i.cz, 8313482620049712491
  %i.db = getelementptr i8, ptr %i.cy, i64 8
  %i.dc = load i32, ptr %i.db, align 1
  %i.dd = zext i32 %i.dc to i64
  %i.de = xor i64 %i.dd, 1701863784
  %i.df = or i64 %i.da, %i.de
  %i.dg = icmp ne i64 %i.df, 0
  %i.dh = zext i1 %i.dg to i32
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit310.thread442

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.dj = load i32, ptr %i.z, align 8, !tbaa !275
  %.off = add i32 %i.dj, -1
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %._crit_edge.i.i193, label %bb.j

bb.g:                                             ; preds = %bb.b
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.hk

bb.h:                                             ; preds = %.noexc.i
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399

bb.i:                                             ; preds = %bb.cu
  %i.dm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit252

bb.j:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060512ONNXImporter14getLayerParamsERKN11opencv_onnx9NodeProtoE, ptr noundef nonnull @.str.4, i32 noundef 493) #31
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.dn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.do = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE          ; 2 uses
  %i.dp = load ptr, ptr %5, align 8, !tbaa !42    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.at
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.dr = load i64, ptr %i.at, align 8, !tbaa !46
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %.pn174 = phi { ptr, i32 } [ %i.dn, %bb.m ], [ %i.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.do, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit252

._crit_edge.i.i193:                               ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store ptr %i.au, ptr %7, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.au, ptr noundef nonnull align 1 dereferenceable(11) @.str.12, i64 11, i1 false)
  store i64 11, ptr %i.av, align 8, !tbaa !38
  store i8 0, ptr %i.cd, align 1, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  invoke fastcc void @_ZN2cv3dnn14dnn5_v20260605L5parseERKN6google8protobuf13RepeatedFieldIlEE(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %._crit_edge.i.i193
  %i.dt = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setINS1_9DictValueEEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.p unwind label %bb.r       ; 0 uses

bb.p:                                             ; preds = %bb.o
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.du = load ptr, ptr %7, align 8, !tbaa !42    ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.au
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %bb.p
  %i.dw = load i64, ptr %i.au, align 8, !tbaa !46
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

end_hunk_3
begin_hunk_4_@_ZN2cv3dnn14dnn5_v2026060512ONNXImporter14getLayerParamsERKN11opencv_onnx9NodeProtoE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.co:                                            ; preds = %bb.cm
  %i.ny = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit252

bb.cp:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit310.thread442
  %i.nz = and i32 %i.nm, 512
  %.not449 = icmp eq i32 %i.nz, 0
  br i1 %.not449, label %bb.ct, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.oa = load float, ptr %i.az, align 8, !tbaa !319
  store float %i.oa, ptr %i.c, align 4, !tbaa !320
  %i.ob = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIfEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.cr unwind label %bb.cs     ; 0 uses

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.cs:                                            ; preds = %bb.cq
  %i.oc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit252

bb.ct:                                            ; preds = %bb.cp
  %i.od = and i32 %i.nm, 2
  %.not450 = icmp eq i32 %i.od, 0
  br i1 %.not450, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.oe = load ptr, ptr %i.ad, align 8, !tbaa !31
  %i.of = ptrtoint ptr %i.oe to i64
  %i.og = and i64 %i.of, -2
  %i.oh = inttoptr i64 %i.og to ptr
  %i.oi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_RKS9_SC_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.oh)
          to label %_ZNSt6vectorIiSaIiEED2Ev.exit unwind label %bb.i ; 0 uses

bb.cv:                                            ; preds = %bb.ct
  %i.oj = load i32, ptr %i.ba, align 8, !tbaa !321 ; 4 uses
  %i.ok = icmp sgt i32 %i.oj, 0
  br i1 %i.ok, label %bb.cw, label %bb.dc

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #28
  %i.ol = load ptr, ptr %i.bs, align 8, !tbaa !322 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.om = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %.noexc326 unwind label %bb.da ; 6 uses

.noexc326:                                        ; preds = %bb.cw
  %i.on = zext nneg i32 %i.oj to i64              ; 5 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 16 ; 2 uses
  store ptr %i.oo, ptr %i.om, align 8, !tbaa !326, !noalias !323
  %i.op = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %.not.i.i.i318.not = icmp eq i32 %i.oj, 1
  store i64 %i.on, ptr %i.op, align 8, !tbaa !329, !noalias !323
  br i1 %.not.i.i.i318.not, label %.lr.ph.i319, label %bb.cx

bb.cx:                                            ; preds = %.noexc326
  %i.oq = shl nuw nsw i64 %i.on, 3
  %i.or = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.oq) #30
          to label %.noexc.i325 unwind label %bb.cy, !noalias !323 ; 2 uses

.noexc.i325:                                      ; preds = %bb.cx
  store ptr %i.or, ptr %i.om, align 8, !tbaa !326, !noalias !323
  br label %.lr.ph.i319

.lr.ph.i319:                                      ; preds = %.noexc326, %.noexc.i325
  %i.os = phi ptr [ %i.or, %.noexc.i325 ], [ %i.oo, %.noexc326 ] ; 2 uses
  store i32 2, ptr %30, align 8, !tbaa !305, !alias.scope !323
  store ptr %i.om, ptr %i.bt, align 8, !tbaa !46, !alias.scope !323
  %min.iters.check = icmp ult i32 %i.oj, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i319
  %n.vec = and i64 %i.on, 2147483644              ; 4 uses
  %i.ot = shl nuw nsw i64 %n.vec, 2
  %i.ou = getelementptr i8, ptr %i.ol, i64 %i.ot
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ov = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ol, i64 %i.ov ; 2 uses
  %i.ow = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x float>, ptr %next.gep, align 4, !tbaa !320, !noalias !323
  %wide.load701 = load <2 x float>, ptr %i.ow, align 4, !tbaa !320, !noalias !323
  %i.ox = fpext <2 x float> %wide.load to <2 x double>
  %i.oy = fpext <2 x float> %wide.load701 to <2 x double>
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %index ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  store <2 x double> %i.ox, ptr %i.oz, align 8, !tbaa !330, !noalias !323
  store <2 x double> %i.oy, ptr %i.pa, align 8, !tbaa !330, !noalias !323
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.pb = icmp eq i64 %index.next, %n.vec
  br i1 %i.pb, label %middle.block, label %vector.body, !llvm.loop !332

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.on
  br i1 %cmp.n, label %_ZN2cv3dnn14dnn5_v202606059DictValue9arrayRealIPKfEES2_T_i.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i319, %middle.block
  %indvars.iv.i321.ph = phi i64 [ 0, %.lr.ph.i319 ], [ %n.vec, %middle.block ]
  %.0910.i322.ph = phi ptr [ %i.ol, %.lr.ph.i319 ], [ %i.ou, %middle.block ]
  br label %scalar.ph

bb.cy:                                            ; preds = %bb.cx
  %i.pc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  call void @_ZdlPvm(ptr noundef nonnull %i.om, i64 noundef 24) #29, !noalias !323
  br label %.body327

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i321 = phi i64 [ %indvars.iv.next.i323, %scalar.ph ], [ %indvars.iv.i321.ph, %scalar.ph.preheader ] ; 2 uses
  %.0910.i322 = phi ptr [ %i.pg, %scalar.ph ], [ %.0910.i322.ph, %scalar.ph.preheader ] ; 2 uses
  %i.pd = load float, ptr %.0910.i322, align 4, !tbaa !320, !noalias !323
  %i.pe = fpext float %i.pd to double
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %indvars.iv.i321
  store double %i.pe, ptr %i.pf, align 8, !tbaa !330, !noalias !323
  %i.pg = getelementptr inbounds nuw i8, ptr %.0910.i322, i64 4
  %indvars.iv.next.i323 = add nuw nsw i64 %indvars.iv.i321, 1 ; 2 uses
  %exitcond.not.i324 = icmp eq i64 %indvars.iv.next.i323, %i.on
  br i1 %exitcond.not.i324, label %_ZN2cv3dnn14dnn5_v202606059DictValue9arrayRealIPKfEES2_T_i.exit, label %scalar.ph, !llvm.loop !333

_ZN2cv3dnn14dnn5_v202606059DictValue9arrayRealIPKfEES2_T_i.exit: ; preds = %scalar.ph, %middle.block
  %i.ph = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setINS1_9DictValueEEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %bb.cz unwind label %bb.db     ; 0 uses

bb.cz:                                            ; preds = %_ZN2cv3dnn14dnn5_v202606059DictValue9arrayRealIPKfEES2_T_i.exit
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.da:                                            ; preds = %bb.cw
  %i.pi = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %.body327

bb.db:                                            ; preds = %_ZN2cv3dnn14dnn5_v202606059DictValue9arrayRealIPKfEES2_T_i.exit
  %i.pj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
  br label %.body327

.body327:                                         ; preds = %bb.da, %bb.cy, %bb.db
  %.pn139 = phi { ptr, i32 } [ %i.pj, %bb.db ], [ %i.pi, %bb.da ], [ %i.pc, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit252

bb.dc:                                            ; preds = %bb.cv
  %i.pk = load i32, ptr %i.z, align 8, !tbaa !275
  %i.pl = icmp sgt i32 %i.pk, 0
  br i1 %i.pl, label %bb.dd, label %bb.dj

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #28
  invoke fastcc void @_ZN2cv3dnn14dnn5_v20260605L5parseERKN6google8protobuf13RepeatedFieldIlEE(ptr dead_on_unwind noalias writable align 8 %31, ptr noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %bb.de unwind label %bb.dg

bb.de:                                            ; preds = %bb.dd
  %i.pm = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setINS1_9DictValueEEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %bb.df unwind label %bb.dh     ; 0 uses

bb.df:                                            ; preds = %bb.de
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.dg:                                            ; preds = %bb.dd
  %i.pn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %bb.di

bb.dh:                                            ; preds = %bb.de
  %i.po = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.pn137 = phi { ptr, i32 } [ %i.po, %bb.dh ], [ %i.pn, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit252

bb.dj:                                            ; preds = %bb.dc
  %i.pp = and i32 %i.nm, 16
  %.not451 = icmp eq i32 %i.pp, 0
  br i1 %.not451, label %bb.ea, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %49 = load ptr, ptr %i.bb, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #28
  %.not.i.i329 = icmp eq ptr %49, null
  %i.pq = select i1 %.not.i.i329, ptr @_ZN11opencv_onnx30_TensorProto_default_instance_E, ptr %49
  invoke void @_ZN11opencv_onnx11TensorProtoC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %32, ptr noundef nonnull align 8 dereferenceable(256) %i.pq)
          to label %bb.dl unwind label %bb.dr

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %35)
          to label %bb.dm unwind label %bb.ds

bb.dm:                                            ; preds = %bb.dl
  invoke void @_ZN2cv3dnn14dnn5_v2026060516getMatFromTensorERKN11opencv_onnx11TensorProtoEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %33, ptr noundef nonnull align 8 dereferenceable(256) %32, i1 noundef zeroext true, ptr noundef nonnull align 8 %34)
          to label %bb.dn unwind label %bb.dt

bb.dn:                                            ; preds = %bb.dm
  %i.pr = load ptr, ptr %34, align 8, !tbaa !42   ; 2 uses
  %i.ps = icmp eq ptr %i.pr, %i.bc
  br i1 %i.ps, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330: ; preds = %bb.dn
  %i.pt = load i64, ptr %i.bc, align 8, !tbaa !46
  %i.pu = add i64 %i.pt, 1
  call void @_ZdlPvm(ptr noundef %i.pr, i64 noundef %i.pu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332: ; preds = %bb.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(208) %33)
          to label %bb.do unwind label %bb.du

bb.do:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull @.str.33, ptr noundef nonnull align 1 dereferenceable(1) %37)
          to label %bb.dp unwind label %bb.dv

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.pv = load i32, ptr %i.be, align 8, !tbaa !275
  store i32 %i.pv, ptr %i.d, align 4, !tbaa !48
  %i.pw = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.dq unwind label %bb.dw     ; 0 uses

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  %i.px = load ptr, ptr %36, align 8, !tbaa !42   ; 2 uses
  %i.py = icmp eq ptr %i.px, %i.bf
  br i1 %i.py, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333: ; preds = %bb.dq
  %i.pz = load i64, ptr %i.bf, align 8, !tbaa !46
  %i.qa = add i64 %i.pz, 1
  call void @_ZdlPvm(ptr noundef %i.px, i64 noundef %i.qa) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  call void @_ZN11opencv_onnx11TensorProtoD1Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %32) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.dr:                                            ; preds = %bb.dk
  %i.qb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %bb.dz

bb.ds:                                            ; preds = %bb.dl
  %i.qc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338

bb.dt:                                            ; preds = %bb.dm
  %i.qd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE          ; 2 uses
  %i.qe = load ptr, ptr %34, align 8, !tbaa !42   ; 2 uses
  %i.qf = icmp eq ptr %i.qe, %i.bc
  br i1 %i.qf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336: ; preds = %bb.dt
  %i.qg = load i64, ptr %i.bc, align 8, !tbaa !46
  %i.qh = add i64 %i.qg, 1
  call void @_ZdlPvm(ptr noundef %i.qe, i64 noundef %i.qh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338: ; preds = %bb.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336, %bb.ds
  %.pn130 = phi { ptr, i32 } [ %i.qc, %bb.ds ], [ %i.qd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336 ], [ %i.qd, %bb.dt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  br label %bb.dy

bb.du:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332
  %i.qi = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %bb.dx

bb.dv:                                            ; preds = %bb.do
  %i.qj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341

bb.dw:                                            ; preds = %bb.dp
  %i.qk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  %i.ql = load ptr, ptr %36, align 8, !tbaa !42   ; 2 uses
  %i.qm = icmp eq ptr %i.ql, %i.bf
  br i1 %i.qm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339: ; preds = %bb.dw
  %i.qn = load i64, ptr %i.bf, align 8, !tbaa !46
  %i.qo = add i64 %i.qn, 1
  call void @_ZdlPvm(ptr noundef %i.ql, i64 noundef %i.qo) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341: ; preds = %bb.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339, %bb.dv
  %.pn132 = phi { ptr, i32 } [ %i.qj, %bb.dv ], [ %i.qk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339 ], [ %i.qk, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  br label %bb.dx

bb.dx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341, %bb.du
  %.pn132.pn = phi { ptr, i32 } [ %.pn132, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341 ], [ %i.qi, %bb.du ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %33) #28
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338
  %.pn132.pn.pn = phi { ptr, i32 } [ %.pn132.pn, %bb.dx ], [ %.pn130, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  call void @_ZN11opencv_onnx11TensorProtoD1Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %32) #28
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dr
  %.pn132.pn.pn.pn = phi { ptr, i32 } [ %.pn132.pn.pn, %bb.dy ], [ %i.qb, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit252

bb.ea:                                            ; preds = %bb.dj
  %i.qp = and i32 %i.nm, 32
  %.not452 = icmp eq i32 %i.qp, 0
  br i1 %.not452, label %bb.eg, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #28
  %i.qq = load ptr, ptr %4, align 8, !tbaa !42
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %38, ptr noundef nonnull @.str.34, ptr noundef %i.qq)
          to label %bb.ec unwind label %bb.ee

bb.ec:                                            ; preds = %bb.eb
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060512ONNXImporter14getLayerParamsERKN11opencv_onnx9NodeProtoE, ptr noundef nonnull @.str.4, i32 noundef 578) #31
          to label %bb.ed unwind label %bb.ef

bb.ed:                                            ; preds = %bb.ec
  unreachable

bb.ee:                                            ; preds = %bb.eb
  %i.qr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345

bb.ef:                                            ; preds = %bb.ec
  %i.qs = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE          ; 2 uses
  %i.qt = load ptr, ptr %38, align 8, !tbaa !42   ; 2 uses
  %i.qu = icmp eq ptr %i.qt, %i.bg
  br i1 %i.qu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343: ; preds = %bb.ef
  %i.qv = load i64, ptr %i.bg, align 8, !tbaa !46
  %i.qw = add i64 %i.qv, 1
  call void @_ZdlPvm(ptr noundef %i.qt, i64 noundef %i.qw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345: ; preds = %bb.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343, %bb.ee
  %.pn128 = phi { ptr, i32 } [ %i.qr, %bb.ee ], [ %i.qs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343 ], [ %i.qs, %bb.ef ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit252

bb.eg:                                            ; preds = %bb.ea
  %i.qx = load i32, ptr %i.bh, align 8, !tbaa !25 ; 2 uses
  %i.qy = icmp sgt i32 %i.qx, 0
  br i1 %i.qy, label %bb.eh, label %bb.em

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #28
  %i.qz = load ptr, ptr %4, align 8, !tbaa !42
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %39, ptr noundef nonnull @.str.35, ptr noundef %i.qz, i32 noundef %i.qx)
          to label %bb.ei unwind label %bb.ek

bb.ei:                                            ; preds = %bb.eh
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060512ONNXImporter14getLayerParamsERKN11opencv_onnx9NodeProtoE, ptr noundef nonnull @.str.4, i32 noundef 585) #31
          to label %bb.ej unwind label %bb.el

bb.ej:                                            ; preds = %bb.ei
  unreachable

bb.ek:                                            ; preds = %bb.eh
  %i.ra = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348

bb.el:                                            ; preds = %bb.ei
  %i.rb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE          ; 2 uses
  %i.rc = load ptr, ptr %39, align 8, !tbaa !42   ; 2 uses
  %i.rd = icmp eq ptr %i.rc, %i.br
  br i1 %i.rd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346: ; preds = %bb.el
  %i.re = load i64, ptr %i.br, align 8, !tbaa !46
  %i.rf = add i64 %i.re, 1
  call void @_ZdlPvm(ptr noundef %i.rc, i64 noundef %i.rf) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348: ; preds = %bb.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346, %bb.ek
  %.pn126 = phi { ptr, i32 } [ %i.ra, %bb.ek ], [ %i.rb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346 ], [ %i.rb, %bb.el ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit252

bb.em:                                            ; preds = %bb.eg
  %i.rg = load i32, ptr %i.x, align 8, !tbaa !25  ; 2 uses
  %i.rh = icmp sgt i32 %i.rg, 0
  br i1 %i.rh, label %bb.en, label %bb.gb

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #28
  %i.ri = load ptr, ptr %4, align 8, !tbaa !42
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %40, ptr noundef nonnull @.str.36, ptr noundef %i.ri, i32 noundef %i.rg)
          to label %bb.ep unwind label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.rj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375

bb.ep:                                            ; preds = %bb.en
  %i.rk = invoke noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv()
          to label %bb.er unwind label %bb.eq     ; 3 uses

bb.eq:                                            ; preds = %bb.ep
  %i.rl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %bb.ga

bb.er:                                            ; preds = %bb.ep
  %.not = icmp eq ptr %i.rk, null                 ; 2 uses
  br i1 %.not, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  %i.rn = load i32, ptr %i.rm, align 8, !tbaa !127
  %i.ro = icmp slt i32 %i.rn, 2
  br i1 %i.ro, label %bb.ff, label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #28
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %41)
          to label %bb.eu unwind label %bb.ez

bb.eu:                                            ; preds = %bb.et
  %i.rp = load ptr, ptr %40, align 8, !tbaa !42
  %i.rq = load i64, ptr %i.bm, align 8, !tbaa !38
  %i.rr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef %i.rp, i64 noundef %i.rq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.fa ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.eu
  br i1 %.not, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.rs = load ptr, ptr %i.rk, align 8, !tbaa !131
  br label %bb.ew

bb.ew:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.ev
  %i.rt = phi ptr [ %i.rs, %bb.ev ], [ null, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #28
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %42, ptr noundef nonnull align 8 dereferenceable(128) %41)
          to label %bb.ex unwind label %bb.fb

bb.ex:                                            ; preds = %bb.ew
  %i.ru = load ptr, ptr %42, align 8, !tbaa !42
  invoke void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef 2, ptr noundef %i.rt, ptr noundef nonnull @.str.4, i32 noundef 591, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060512ONNXImporter14getLayerParamsERKN11opencv_onnx9NodeProtoE, ptr noundef %i.ru)
          to label %bb.ey unwind label %bb.fc

bb.ey:                                            ; preds = %bb.ex
  %i.rv = load ptr, ptr %42, align 8, !tbaa !42   ; 2 uses
  %i.rw = icmp eq ptr %i.rv, %i.bn
  br i1 %i.rw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350: ; preds = %bb.ey
  %i.rx = load i64, ptr %i.bn, align 8, !tbaa !46
  %i.ry = add i64 %i.rx, 1
  call void @_ZdlPvm(ptr noundef %i.rv, i64 noundef %i.ry) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352: ; preds = %bb.ey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %41) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  br label %bb.ff

bb.ez:                                            ; preds = %bb.et
  %i.rz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %bb.fe

bb.fa:                                            ; preds = %bb.eu
  %i.sa = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %bb.fd

bb.fb:                                            ; preds = %bb.ew
  %i.sb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355

bb.fc:                                            ; preds = %bb.ex
  %i.sc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE          ; 2 uses
  %i.sd = load ptr, ptr %42, align 8, !tbaa !42   ; 2 uses
  %i.se = icmp eq ptr %i.sd, %i.bn
  br i1 %i.se, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353: ; preds = %bb.fc
  %i.sf = load i64, ptr %i.bn, align 8, !tbaa !46
  %i.sg = add i64 %i.sf, 1
  call void @_ZdlPvm(ptr noundef %i.sd, i64 noundef %i.sg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355: ; preds = %bb.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353, %bb.fb
  %.pn112 = phi { ptr, i32 } [ %i.sb, %bb.fb ], [ %i.sc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353 ], [ %i.sc, %bb.fc ]
end_hunk_4
