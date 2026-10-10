Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/HeuristicOverlay?download=true
inline.NumInlined: 362
inline.NumDeleted: 161
begin_hunk_0_@_ZN4geos4geom11check_validERKNS0_8GeometryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb:bb.a
  %i.ab = invoke noundef zeroext i1 @_ZN4geos9operation5valid9IsValidOp7isValidEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.p unwind label %bb.y       ; 2 uses

bb.p:                                             ; preds = %bb.o
  br i1 %i.ab, label %bb.ad, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = invoke noundef ptr @_ZN4geos9operation5valid9IsValidOp18getValidationErrorEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.r unwind label %bb.z       ; 2 uses

bb.r:                                             ; preds = %bb.q
  br i1 %2, label %bb.s, label %bb.ad

bb.s:                                             ; preds = %bb.r
  %i.ad = call ptr @__cxa_allocate_exception(i64 40) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.4)
          to label %bb.t unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.thread

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  invoke void @_ZNK4geos9operation5valid23TopologyValidationError10getMessageB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.u unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.thread

bb.u:                                             ; preds = %bb.t
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.ae = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4geos9operation5valid23TopologyValidationError13getCoordinateEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN4geos4util17TopologyExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTIN4geos4util17TopologyExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #19
          to label %bb.ai unwind label %bb.ab

bb.y:                                             ; preds = %bb.o
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.z:                                             ; preds = %bb.q
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.thread: ; preds = %bb.s
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.aa:                                            ; preds = %bb.u
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.ab:                                            ; preds = %bb.x, %bb.w, %bb.v
  %.0 = phi i1 [ false, %bb.x ], [ true, %bb.w ], [ true, %bb.v ] ; 2 uses
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.ak) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.aa ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %i.aj, %bb.ab ] ; 4 uses
  %.1 = phi i1 [ true, %bb.aa ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %.0, %bb.ab ] ; 2 uses
  %i.an = load ptr, ptr %9, align 8, !tbaa !21    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  call void @_ZdlPv(ptr noundef %i.an) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.aq = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.thread: ; preds = %bb.t
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.au = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.thread
  call void @_ZdlPv(ptr noundef %i.au) #18
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  call void @_ZdlPv(ptr noundef %i.aq) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br i1 %.1, label %bb.ac, label %bb.ae

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br i1 %.1, label %bb.ac, label %bb.ae

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.thread
  %.pn.pn.pn63.ph = phi { ptr, i32 } [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.thread ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.thread ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %.pn.pn.pn63 = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ %.pn.pn.pn63.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.ad) #17
  br label %bb.ae

bb.ad:                                            ; preds = %bb.p, %bb.r
  %i.ax = load ptr, ptr %i.aa, align 8, !tbaa !61 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %_ZN4geos9operation5valid9IsValidOpD2Ev.exit, label %_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i: ; preds = %bb.ad
  call void @_ZdlPv(ptr noundef nonnull %i.ax) #18
  br label %_ZN4geos9operation5valid9IsValidOpD2Ev.exit

_ZN4geos9operation5valid9IsValidOpD2Ev.exit:      ; preds = %bb.ad, %_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br i1 %i.ab, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52, %bb.z, %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %bb.y
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.af, %bb.y ], [ %.pn.pn.pn63, %bb.ac ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ %i.ag, %bb.z ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ]
  %i.ay = load ptr, ptr %i.aa, align 8, !tbaa !61 ; 2 uses
  %.not.i.i55 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i55, label %_ZN4geos9operation5valid9IsValidOpD2Ev.exit57, label %_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i56

_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i56: ; preds = %bb.ae
  call void @_ZdlPv(ptr noundef nonnull %i.ay) #18
  br label %_ZN4geos9operation5valid9IsValidOpD2Ev.exit57

_ZN4geos9operation5valid9IsValidOpD2Ev.exit57:    ; preds = %bb.ae, %_ZNKSt14default_deleteIN4geos9operation5valid23TopologyValidationErrorEEclEPS3_.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.ah

bb.af:                                            ; preds = %_ZN4geos9operation5valid9IsValidOpD2Ev.exit, %_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit, %bb.b
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN4geos9operation5valid9IsValidOpD2Ev.exit, %_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit, %bb.af
  %.234 = phi i1 [ true, %bb.af ], [ false, %_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit ], [ false, %_ZN4geos9operation5valid9IsValidOpD2Ev.exit ]
  ret i1 %.234

bb.ah:                                            ; preds = %_ZN4geos9operation5valid9IsValidOpD2Ev.exit57, %_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit45
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn40.pn, %_ZN4geos9operation5valid10IsSimpleOpD2Ev.exit45 ], [ %.pn.pn.pn.pn.pn, %_ZN4geos9operation5valid9IsValidOpD2Ev.exit57 ]
  resume { ptr, i32 } %.pn40.pn.pn

bb.ai:                                            ; preds = %bb.x, %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare void @_ZN4geos9precision17CommonBitsRemoverD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN4geos4geom16HeuristicOverlayEPKNS0_8GeometryES3_i(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.geos::util::TopologyException", align 8 ; 11 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::allocator", align 1    ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::allocator", align 1   ; 4 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::allocator", align 1   ; 4 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::allocator", align 1   ; 4 uses
  %16 = alloca %"class.geos::precision::CommonBitsRemover", align 8 ; 14 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::allocator", align 1   ; 4 uses
  %19 = alloca %"class.std::unique_ptr", align 8  ; 7 uses
  %20 = alloca %"class.geos::geom::PrecisionModel", align 8 ; 6 uses
  %21 = alloca %"class.std::unique_ptr.11", align 8 ; 9 uses
  %22 = alloca %"class.geos::precision::GeometryPrecisionReducer", align 16 ; 10 uses
  %23 = alloca %"class.std::unique_ptr", align 8  ; 9 uses
  %24 = alloca %"class.std::unique_ptr", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @_ZN4geos4util17TopologyExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4)
  %i.a = icmp eq ptr %1, null                     ; 2 uses
  %i.b = icmp eq ptr %2, null                     ; 2 uses
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !70
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit225

bb.c:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  invoke void @_ZN4geos9operation9overlayng15OverlayNGRobust5UnionEPKNS_4geom8GeometryE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %5, ptr noundef %2)
          to label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit unwind label %bb.e

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit: ; preds = %bb.d
  %i.c = load ptr, ptr %5, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.t

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4geos4util17TopologyExceptionE
          catch ptr @_ZTIN4geos4util24IllegalArgumentExceptionE
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.k

bb.f:                                             ; preds = %bb.c
  br i1 %i.b, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZN4geos9operation9overlayng15OverlayNGRobust5UnionEPKNS_4geom8GeometryE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %6, ptr noundef nonnull %1)
          to label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit125 unwind label %bb.h

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit125: ; preds = %bb.g
  %i.e = load ptr, ptr %6, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.t

bb.h:                                             ; preds = %bb.g
  %i.f = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4geos4util17TopologyExceptionE
          catch ptr @_ZTIN4geos4util24IllegalArgumentExceptionE
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  invoke void @_ZN4geos9operation9overlayng15OverlayNGRobust7OverlayEPKNS_4geom8GeometryES6_i(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %7, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3)
          to label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit131 unwind label %bb.j

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit131: ; preds = %bb.i
  %i.g = load ptr, ptr %7, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.h = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4geos4util17TopologyExceptionE
          catch ptr @_ZTIN4geos4util24IllegalArgumentExceptionE
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.f, %bb.h ], [ %i.h, %bb.j ] ; 2 uses
  %.076 = extractvalue { ptr, i32 } %.pn, 1       ; 3 uses
  %.078 = extractvalue { ptr, i32 } %.pn, 0       ; 3 uses
  %i.i = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4geos4util17TopologyExceptionE) #17 ; 6 uses
  %i.j = icmp eq i32 %.076, %i.i
  br i1 %i.j, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.k = call ptr @__cxa_begin_catch(ptr %.078) #17 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.v

bb.m:                                             ; preds = %bb.s, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.n unwind label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.l = invoke noundef zeroext i1 @_ZN4geos4geom11check_validERKNS0_8GeometryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %8, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.o unwind label %bb.x       ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.m = load ptr, ptr %8, align 8, !tbaa !21     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.m) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.p unwind label %bb.y

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.p = invoke noundef zeroext i1 @_ZN4geos4geom11check_validERKNS0_8GeometryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(32) %10, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.q unwind label %bb.z       ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.q = load ptr, ptr %10, align 8, !tbaa !21    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.q) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.t = invoke noundef ptr @_ZN4geos9operation7overlay9OverlayOp9overlayOpEPKNS_4geom8GeometryES6_NS2_6OpCodeE(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3)
          to label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit unwind label %bb.aa

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %i.u = ptrtoint ptr %i.t to i64
  store i64 %i.u, ptr %0, align 8, !tbaa !14
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit225

bb.r:                                             ; preds = %bb.k
  %i.v = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4geos4util24IllegalArgumentExceptionE) #17
  %i.w = icmp eq i32 %.076, %i.v
  br i1 %i.w, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.x = call ptr @__cxa_begin_catch(ptr %.078) #17 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.u

bb.t:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit131, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit125
  %.sroa.0242.0 = phi ptr [ %i.c, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit ], [ %i.e, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit125 ], [ %i.g, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit131 ]
  %i.y = ptrtoint ptr %.sroa.0242.0 to i64
  store i64 %i.y, ptr %0, align 8, !tbaa !14
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit225

bb.u:                                             ; preds = %bb.s
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  %i.ab = extractvalue { ptr, i32 } %i.z, 1
  br label %.thread

bb.v:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  %i.ae = extractvalue { ptr, i32 } %i.ac, 1
  br label %.thread

bb.w:                                             ; preds = %bb.m
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

bb.x:                                             ; preds = %bb.n
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %bb.x
  call void @_ZdlPv(ptr noundef %i.ah) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138, %bb.w
  %.pn105 = phi { ptr, i32 } [ %i.af, %bb.w ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138 ], [ %i.ag, %bb.x ] ; 2 uses
  %.177 = extractvalue { ptr, i32 } %.pn105, 1
  %.179 = extractvalue { ptr, i32 } %.pn105, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %.thread

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

bb.z:                                             ; preds = %bb.p
end_hunk_0
begin_hunk_1_@_ZN4geos4geom16HeuristicOverlayEPKNS0_8GeometryES3_i:bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178: ; preds = %bb.at
  call void @_ZdlPv(ptr noundef %i.ck) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178, %bb.as
  %.pn111 = phi { ptr, i32 } [ %i.ci, %bb.as ], [ %i.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178 ], [ %i.cj, %bb.at ] ; 2 uses
  %.4 = extractvalue { ptr, i32 } %.pn111, 1
  %.482 = extractvalue { ptr, i32 } %.pn111, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %.thread

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit186.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %i.cn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4geos4util17TopologyExceptionE
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit189

bb.au:                                            ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit165, %bb.al, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit162, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit155, %bb.ai, %bb.ah
  %.sroa.0242.1 = phi ptr [ %i.bn, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit165 ], [ null, %bb.al ], [ null, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit162 ], [ null, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit155 ], [ null, %bb.ai ], [ null, %bb.ah ]
  %.sroa.0237.0 = phi ptr [ %i.bi, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit165 ], [ %i.bi, %bb.al ], [ %i.bi, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit162 ], [ %i.bi, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit155 ], [ null, %bb.ai ], [ null, %bb.ah ]
  %.sroa.0232.0 = phi ptr [ %i.bm, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit165 ], [ %i.bm, %bb.al ], [ %i.bm, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit162 ], [ null, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit155 ], [ null, %bb.ai ], [ null, %bb.ah ]
  %i.co = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4geos4util17TopologyExceptionE
  br label %bb.az

bb.av:                                            ; preds = %bb.aj
  %i.cp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4geos4util17TopologyExceptionE
  br label %.thread272

bb.aw:                                            ; preds = %bb.ak
  %i.cq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4geos4util17TopologyExceptionE
  br label %.thread272

bb.ax:                                            ; preds = %bb.am
  %i.cr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4geos4util17TopologyExceptionE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

bb.ay:                                            ; preds = %bb.an
  %i.cs = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4geos4util17TopologyExceptionE ; 2 uses
  %i.ct = load ptr, ptr %17, align 8, !tbaa !21   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181: ; preds = %bb.ay
  call void @_ZdlPv(ptr noundef %i.ct) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181, %bb.ax
  %.pn113 = phi { ptr, i32 } [ %i.cr, %bb.ax ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181 ], [ %i.cs, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  br label %bb.az

.thread272:                                       ; preds = %bb.aw, %bb.av
  %.sroa.0237.1.ph = phi ptr [ null, %bb.av ], [ %i.bi, %bb.aw ]
  %.pn113.pn.ph = phi { ptr, i32 } [ %i.cp, %bb.av ], [ %i.cq, %bb.aw ]
  call void @_ZN4geos9precision17CommonBitsRemoverD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit186

bb.az:                                            ; preds = %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183
  %.sroa.0242.2 = phi ptr [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183 ], [ %.sroa.0242.1, %bb.au ] ; 2 uses
  %.sroa.0237.1 = phi ptr [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183 ], [ %.sroa.0237.0, %bb.au ] ; 2 uses
  %.sroa.0232.1 = phi ptr [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183 ], [ %.sroa.0232.0, %bb.au ] ; 3 uses
  %.pn113.pn = phi { ptr, i32 } [ %.pn113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183 ], [ %i.co, %bb.au ] ; 2 uses
  call void @_ZN4geos9precision17CommonBitsRemoverD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  %.not.i184 = icmp eq ptr %.sroa.0232.1, null
  br i1 %.not.i184, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit186, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i185

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i185: ; preds = %bb.az
  %i.cw = load ptr, ptr %.sroa.0232.1, align 8, !tbaa !11
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0232.1) #17, !inline_history !1
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit186

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit186: ; preds = %.thread272, %bb.az, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i185
  %.pn113.pn.ph.pn = phi { ptr, i32 } [ %.pn113.pn.ph, %.thread272 ], [ %.pn113.pn, %bb.az ], [ %.pn113.pn, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i185 ] ; 2 uses
  %.sroa.0237.2269 = phi ptr [ %.sroa.0237.1.ph, %.thread272 ], [ %.sroa.0237.1, %bb.az ], [ %.sroa.0237.1, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i185 ] ; 3 uses
  %.sroa.0242.3268 = phi ptr [ null, %.thread272 ], [ %.sroa.0242.2, %bb.az ], [ %.sroa.0242.2, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i185 ] ; 2 uses
  %.not.i187 = icmp eq ptr %.sroa.0237.2269, null
  br i1 %.not.i187, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit189, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i188

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i188: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit186
  %i.cz = load ptr, ptr %.sroa.0237.2269, align 8, !tbaa !11
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0237.2269) #17, !inline_history !1
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit189

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit189: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit186.thread, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit186, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i188
  %.sroa.0242.3268287 = phi ptr [ null, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit186.thread ], [ %.sroa.0242.3268, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit186 ], [ %.sroa.0242.3268, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i188 ] ; 9 uses
  %.pn295 = phi { ptr, i32 } [ %i.cn, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit186.thread ], [ %.pn113.pn.ph.pn, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit186 ], [ %.pn113.pn.ph.pn, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i188 ] ; 2 uses
  %.785271285 = extractvalue { ptr, i32 } %.pn295, 0 ; 2 uses
  %.7270286 = extractvalue { ptr, i32 } %.pn295, 1 ; 2 uses
  %i.dc = icmp eq i32 %.7270286, %i.i
  br i1 %i.dc, label %bb.ba, label %bb.ck

bb.ba:                                            ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit189
  %i.dd = call ptr @__cxa_begin_catch(ptr %.785271285) #17 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.bb unwind label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  invoke void @_ZN4geos4geom6SnapOpEPKNS0_8GeometryES3_i(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %19, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3)
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.de = load ptr, ptr %19, align 8, !tbaa !14
  store ptr null, ptr %19, align 8, !tbaa !14
  %.not.i.i.i.i190 = icmp eq ptr %.sroa.0242.3268287, null
  br i1 %.not.i.i.i.i190, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit195, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit192

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit192: ; preds = %bb.bc
  %i.df = load ptr, ptr %.sroa.0242.3268287, align 8, !tbaa !11
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0242.3268287) #17, !inline_history !66
  %.pr = load ptr, ptr %19, align 8, !tbaa !14    ; 3 uses
  %.not.i193 = icmp eq ptr %.pr, null
  br i1 %.not.i193, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit195, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i194

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i194: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit192
  %i.di = load ptr, ptr %.pr, align 8, !tbaa !11
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(40) %.pr) #17, !inline_history !1
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit195

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit195: ; preds = %bb.bc, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EEaSEOS5_.exit192, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i194
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  %i.dl = ptrtoint ptr %i.de to i64
  store i64 %i.dl, ptr %0, align 8, !tbaa !14
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit225

bb.bd:                                            ; preds = %bb.ba
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  %i.do = extractvalue { ptr, i32 } %i.dm, 1
  br label %bb.ck

bb.be:                                            ; preds = %bb.bb
  %i.dp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4geos4util17TopologyExceptionE ; 2 uses
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0      ; 2 uses
  %i.dr = extractvalue { ptr, i32 } %i.dp, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  %i.ds = icmp eq i32 %i.dr, %i.i
  br i1 %i.ds, label %bb.bf, label %bb.ck

bb.bf:                                            ; preds = %bb.be
  %i.dt = call ptr @__cxa_begin_catch(ptr %i.dq) #17 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !81
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !84
  %i.dy = fptoui double %i.dx to i64              ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !81
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !84
  %i.ed = fptoui double %i.ec to i64              ; 2 uses
  %.not = icmp eq i64 %i.dy, 0
  %i.ee = uitofp i64 %i.dy to double              ; 2 uses
  %i.ef = fcmp uge double %i.ee, 1.000000e+16
  %i.eg = or i1 %.not, %i.ef
  %.073 = select i1 %i.eg, double 1.000000e+16, double %i.ee ; 2 uses
  %.not117 = icmp eq i64 %i.ed, 0
  %i.eh = uitofp i64 %i.ed to double              ; 2 uses
  %i.ei = fcmp ule double %.073, %i.eh
  %i.ej = select i1 %.not117, i1 true, i1 %i.ei
  %.1 = select i1 %i.ej, double %.073, double %i.eh ; 2 uses
  %i.ek = fcmp ult double %.1, 1.000000e+00
  br i1 %i.ek, label %.critedge122, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bg
  %i.el = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %22, i64 17
  %i.en = getelementptr inbounds nuw i8, ptr %22, i64 18
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = extractvalue { ptr, i32 } %i.eo, 0
  %i.eq = extractvalue { ptr, i32 } %i.eo, 1
  br label %bb.ck

bb.bi:                                            ; preds = %.lr.ph, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit216
  %.0320 = phi double [ %.1, %.lr.ph ], [ %i.gv, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit216 ] ; 3 uses
  %.sroa.0242.4319 = phi ptr [ %.sroa.0242.3268287, %.lr.ph ], [ %.sroa.0242.5, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit216 ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  invoke void @_ZN4geos4geom14PrecisionModelC1Ed(ptr noundef nonnull align 8 dereferenceable(16) %20, double noundef %.0320)
          to label %bb.bj unwind label %bb.br

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  invoke void @_ZN4geos4geom15GeometryFactory6createEPKNS0_14PrecisionModelE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.11") align 8 %21, ptr noundef nonnull %20)
          to label %bb.bk unwind label %bb.bs

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  %i.er = load ptr, ptr %21, align 8, !tbaa !29
  %25 = getelementptr inbounds nuw i8, ptr %i.er, <2 x i64> <i64 0, i64 8>
  store <2 x ptr> %25, ptr %22, align 16, !tbaa !85
  store i8 1, ptr %i.el, align 16, !tbaa !88
  store i16 0, ptr %i.en, align 2
  store i8 1, ptr %i.em, align 1, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #17
  invoke void @_ZN4geos9precision24GeometryPrecisionReducer6reduceERKNS_4geom8GeometryE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %23, ptr noundef nonnull align 8 dereferenceable(20) %22, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.bl unwind label %bb.bt

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #17
  invoke void @_ZN4geos9precision24GeometryPrecisionReducer6reduceERKNS_4geom8GeometryE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %24, ptr noundef nonnull align 8 dereferenceable(20) %22, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.bm unwind label %bb.bu

bb.bm:                                            ; preds = %bb.bl
  %i.es = load ptr, ptr %23, align 8, !tbaa !14
  %i.et = load ptr, ptr %24, align 8, !tbaa !14
  %i.eu = invoke noundef ptr @_ZN4geos9operation7overlay9OverlayOp9overlayOpEPKNS_4geom8GeometryES6_NS2_6OpCodeE(ptr noundef %i.es, ptr noundef %i.et, i32 noundef %3)
          to label %bb.bn unwind label %bb.bv     ; 9 uses

bb.bn:                                            ; preds = %bb.bm
  %.not.i.i196 = icmp eq ptr %.sroa.0242.4319, null
  br i1 %.not.i.i196, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit198, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i197

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i197: ; preds = %bb.bn
  %i.ev = load ptr, ptr %.sroa.0242.4319, align 8, !tbaa !11
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0242.4319) #17, !inline_history !67
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit198

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit198: ; preds = %bb.bn, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i197
  %i.ey = load ptr, ptr %i.du, align 8, !tbaa !81
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.dz, align 8, !tbaa !81
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = invoke noundef i32 @_ZNK4geos4geom14PrecisionModel9compareToEPKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull %i.fb)
          to label %bb.bo unwind label %bb.bv

bb.bo:                                            ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit198
  %i.fd = icmp slt i32 %i.fc, 0
  br i1 %i.fd, label %bb.bp, label %bb.by

bb.bp:                                            ; preds = %bb.bo
  %i.fe = load ptr, ptr %i.du, align 8, !tbaa !81
  %i.ff = invoke noundef ptr @_ZNK4geos4geom15GeometryFactory14createGeometryEPKNS0_8GeometryE(ptr noundef nonnull align 8 dereferenceable(45) %i.fe, ptr noundef %i.eu)
          to label %bb.bq unwind label %bb.bv     ; 2 uses

bb.bq:                                            ; preds = %bb.bp
  %.not.i.i199 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i199, label %.critedge, label %.critedge.sink.split

bb.br:                                            ; preds = %bb.bi
  %i.fg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4geos4util17TopologyExceptionE ; 2 uses
  %i.fh = extractvalue { ptr, i32 } %i.fg, 0
  %i.fi = extractvalue { ptr, i32 } %i.fg, 1
  br label %bb.cg

bb.bs:                                            ; preds = %bb.bj
  %i.fj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4geos4util17TopologyExceptionE ; 2 uses
  %i.fk = extractvalue { ptr, i32 } %i.fj, 0
  %i.fl = extractvalue { ptr, i32 } %i.fj, 1
  br label %bb.cf

bb.bt:                                            ; preds = %bb.bk
  %i.fm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4geos4util17TopologyExceptionE ; 2 uses
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  %i.fo = extractvalue { ptr, i32 } %i.fm, 1
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit222

bb.bu:                                            ; preds = %bb.bl
  %i.fp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4geos4util17TopologyExceptionE ; 2 uses
  %i.fq = extractvalue { ptr, i32 } %i.fp, 0
  %i.fr = extractvalue { ptr, i32 } %i.fp, 1
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit219

bb.bv:                                            ; preds = %bb.by, %bb.bp, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit198, %bb.bm
  %.sroa.0242.5 = phi ptr [ %i.eu, %bb.bp ], [ %i.eu, %bb.by ], [ %i.eu, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE5resetEPS2_.exit198 ], [ %.sroa.0242.4319, %bb.bm ] ; 4 uses
  %i.fs = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4geos4util17TopologyExceptionE ; 2 uses
  %i.ft = extractvalue { ptr, i32 } %i.fs, 0      ; 2 uses
  %i.fu = extractvalue { ptr, i32 } %i.fs, 1      ; 2 uses
  %i.fv = icmp eq i32 %i.fu, %i.i
  br i1 %i.fv, label %bb.bw, label %.loopexit

bb.bw:                                            ; preds = %bb.bv
  %i.fw = call ptr @__cxa_begin_catch(ptr %i.ft) #17 ; 0 uses
  %i.fx = fcmp oeq double %.0320, 1.000000e+00
  br i1 %i.fx, label %bb.bx, label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  invoke void @__cxa_rethrow() #19
          to label %bb.cm unwind label %bb.ca

bb.by:                                            ; preds = %bb.bo
  %i.fy = load ptr, ptr %i.dz, align 8, !tbaa !81
  %i.fz = invoke noundef ptr @_ZNK4geos4geom15GeometryFactory14createGeometryEPKNS0_8GeometryE(ptr noundef nonnull align 8 dereferenceable(45) %i.fy, ptr noundef %i.eu)
          to label %bb.bz unwind label %bb.bv     ; 2 uses

bb.bz:                                            ; preds = %bb.by
  %.not.i.i202 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i202, label %.critedge, label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.bz, %bb.bq
  %.sroa.0242.6.ph = phi ptr [ %i.ff, %bb.bq ], [ %i.fz, %bb.bz ]
  %i.ga = load ptr, ptr %i.eu, align 8, !tbaa !11
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(40) %i.eu) #17
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.bz, %bb.bq
  %.sroa.0242.6 = phi ptr [ %i.fz, %bb.bz ], [ %i.ff, %bb.bq ], [ %.sroa.0242.6.ph, %.critedge.sink.split ]
  %i.gd = ptrtoint ptr %.sroa.0242.6 to i64
  store i64 %i.gd, ptr %0, align 8, !tbaa !14
  %i.ge = load ptr, ptr %24, align 8, !tbaa !14   ; 3 uses
  %.not.i205 = icmp eq ptr %i.ge, null
  br i1 %.not.i205, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit207, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i206

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i206: ; preds = %.critedge
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !11
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(40) %i.ge) #17, !inline_history !1
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit207

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit207: ; preds = %.critedge, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i206
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  %i.gi = load ptr, ptr %23, align 8, !tbaa !14   ; 3 uses
  %.not.i208 = icmp eq ptr %i.gi, null
  br i1 %.not.i208, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit210, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i209

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i209: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit207
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !11
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(40) %i.gi) #17, !inline_history !1
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit210

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit210: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit207, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i209
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  call void @_ZNSt10unique_ptrIN4geos4geom15GeometryFactoryENS2_22GeometryFactoryDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit225

bb.ca:                                            ; preds = %bb.bx
  %i.gm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4geos4util17TopologyExceptionE
  invoke void @__cxa_end_catch()
          to label %bb.ce unwind label %bb.cl

bb.cb:                                            ; preds = %bb.bw
  invoke void @__cxa_end_catch()
          to label %bb.cc unwind label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.gn = load ptr, ptr %24, align 8, !tbaa !14   ; 3 uses
  %.not.i211 = icmp eq ptr %i.gn, null
  br i1 %.not.i211, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit213, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i212

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i212: ; preds = %bb.cc
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !11
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(40) %i.gn) #17, !inline_history !1
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit213

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit213: ; preds = %bb.cc, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i212
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  %i.gr = load ptr, ptr %23, align 8, !tbaa !14   ; 3 uses
  %.not.i214 = icmp eq ptr %i.gr, null
  br i1 %.not.i214, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit216, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i215

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i215: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit213
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !11
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8
  call void %i.gu(ptr noundef nonnull align 8 dereferenceable(40) %i.gr) #17, !inline_history !1
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit216

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit216: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit213, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i215
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  call void @_ZNSt10unique_ptrIN4geos4geom15GeometryFactoryENS2_22GeometryFactoryDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  %i.gv = fdiv double %.0320, 1.000000e+01        ; 2 uses
  %i.gw = fcmp ult double %i.gv, 1.000000e+00
  br i1 %i.gw, label %.critedge122, label %bb.bi, !llvm.loop !68

bb.cd:                                            ; preds = %bb.cb
  %i.gx = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_ZN4geos4geom16HeuristicOverlayEPKNS0_8GeometryES3_i:bb.a
  %.14.ph = phi i32 [ %.076, %bb.r ], [ %i.ab, %bb.u ], [ %i.ae, %bb.v ], [ %.177, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ], [ %i.ar, %bb.aa ], [ %i.cc, %bb.ap ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180 ]
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit228

bb.ck:                                            ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit189, %bb.bd, %bb.be, %bb.bh, %bb.cg, %bb.ci, %bb.cj
  %.sroa.0242.13 = phi ptr [ %.sroa.0242.11, %bb.cj ], [ %.sroa.0242.10, %bb.ci ], [ %.sroa.0242.10, %bb.cg ], [ %.sroa.0242.3268287, %bb.bh ], [ %.sroa.0242.3268287, %bb.be ], [ %.sroa.0242.3268287, %bb.bd ], [ %.sroa.0242.3268287, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit189 ] ; 3 uses
  %.1492 = phi ptr [ %i.ho, %bb.cj ], [ %i.hl, %bb.ci ], [ %.1391, %bb.cg ], [ %i.ep, %bb.bh ], [ %i.dq, %bb.be ], [ %i.dn, %bb.bd ], [ %.785271285, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit189 ] ; 2 uses
  %.14 = phi i32 [ %i.hp, %bb.cj ], [ %i.hm, %bb.ci ], [ %.13, %bb.cg ], [ %i.eq, %bb.bh ], [ %i.dr, %bb.be ], [ %i.do, %bb.bd ], [ %.7270286, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit189 ] ; 2 uses
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %.not.i226 = icmp eq ptr %.sroa.0242.13, null
  br i1 %.not.i226, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit228, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i227

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i227: ; preds = %bb.ck
  %i.hq = load ptr, ptr %.sroa.0242.13, align 8, !tbaa !11
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8
  call void %i.hs(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0242.13) #17, !inline_history !1
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit228

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit228: ; preds = %.thread, %bb.ck, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i227
  %.14377 = phi i32 [ %.14.ph, %.thread ], [ %.14, %bb.ck ], [ %.14, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i227 ]
  %.1492376 = phi ptr [ %.1492.ph, %.thread ], [ %.1492, %bb.ck ], [ %.1492, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i227 ]
  %i.ht = insertvalue { ptr, i32 } poison, ptr %.1492376, 0
  %i.hu = insertvalue { ptr, i32 } %i.ht, i32 %.14377, 1
  resume { ptr, i32 } %i.hu

bb.cl:                                            ; preds = %bb.ca
  %i.hv = landingpad { ptr, i32 }
          catch ptr null
  %i.hw = extractvalue { ptr, i32 } %i.hv, 0
  call void @__clang_call_terminate(ptr %i.hw) #20
  unreachable

bb.cm:                                            ; preds = %.critedge122, %bb.bx
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4util17TopologyExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 17, ptr %i.a, align 8, !tbaa !19
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !21
  %i.d = load i64, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.c, ptr noundef nonnull align 1 dereferenceable(17) @.str.6, i64 17, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !23
  %i.f = load ptr, ptr %1, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !23
  store i8 0, ptr %i.h, align 8, !tbaa !22
  invoke void @_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  %i.j = load ptr, ptr %2, align 8, !tbaa !21     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.h
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  call void @_ZdlPv(ptr noundef %i.j) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.l = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.b
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.l) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos4util17TopologyExceptionE, i64 16), ptr %0, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.o, align 8, !tbaa !31
  ret void

bb.b:                                             ; preds = %.noexc.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %2, align 8, !tbaa !21     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.h
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.q) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.s = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.b
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  call void @_ZdlPv(ptr noundef %i.s) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %i.p
}

declare void @_ZN4geos9operation9overlayng15OverlayNGRobust5UnionEPKNS_4geom8GeometryE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef) local_unnamed_addr #2

declare void @_ZN4geos9operation9overlayng15OverlayNGRobust7OverlayEPKNS_4geom8GeometryES6_i(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #5

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

declare void @_ZN4geos4geom14PrecisionModelC1Ed(ptr noundef nonnull align 8 dereferenceable(16), double noundef) unnamed_addr #2

declare void @_ZN4geos4geom15GeometryFactory6createEPKNS0_14PrecisionModelE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.11") align 8, ptr noundef) local_unnamed_addr #2

declare void @_ZN4geos9precision24GeometryPrecisionReducer6reduceERKNS_4geom8GeometryE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(20), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef i32 @_ZNK4geos4geom14PrecisionModel9compareToEPKS1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK4geos4geom15GeometryFactory14createGeometryEPKNS0_8GeometryE(ptr noundef nonnull align 8 dereferenceable(45), ptr noundef) local_unnamed_addr #2

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN4geos4geom15GeometryFactoryENS2_22GeometryFactoryDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNK4geos4geom15GeometryFactory22GeometryFactoryDeleterclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4geos4geom15GeometryFactory7destroyEv(ptr noundef nonnull align 8 dereferenceable(45) %i.a)
          to label %_ZNK4geos4geom15GeometryFactory22GeometryFactoryDeleterclEPS1_.exit unwind label %bb.c

_ZNK4geos4geom15GeometryFactory22GeometryFactoryDeleterclEPS1_.exit: ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #20
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos9algorithm16BoundaryNodeRule19getBoundaryEndPointEv() local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4geos9operation5valid10IsSimpleOp8isSimpleEv(ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !23   ; 3 uses
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #17 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !17, !alias.scope !93
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !23, !alias.scope !93
  store i8 0, ptr %i.e, align 8, !tbaa !22, !alias.scope !93
  %i.g = add i64 %i.d, %i.c
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !23, !alias.scope !93
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %i.c
  br i1 %i.j, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !23, !alias.scope !93
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i

.invoke.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #19
          to label %.cont.i unwind label %bb.c

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %2, i64 noundef %i.d)
          to label %_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i, %.invoke.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !21, !alias.scope !93 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  tail call void @_ZdlPv(ptr noundef %i.q) #18
  br label %.body

_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4util17TopologyExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 17, ptr %i.a, align 8, !tbaa !19
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !21
  %i.d = load i64, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.c, ptr noundef nonnull align 1 dereferenceable(17) @.str.6, i64 17, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !23
  %i.f = load ptr, ptr %2, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  invoke void @_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  %i.h = load ptr, ptr %2, align 8, !tbaa !21     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  call void @_ZdlPv(ptr noundef %i.h) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos4util17TopologyExceptionE, i64 16), ptr %0, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.k, align 8, !tbaa !31
  ret void

bb.b:                                             ; preds = %.noexc.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %2, align 8, !tbaa !21     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.b
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.m) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %i.l
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare noundef zeroext i1 @_ZN4geos9operation5valid9IsValidOp7isValidEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef ptr @_ZN4geos9operation5valid9IsValidOp18getValidationErrorEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !23   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !23   ; 4 uses
  %i.e = add i64 %i.d, %i.b                       ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8, !tbaa !22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %i.l = icmp ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = load ptr, ptr %2, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13: ; preds = %bb.b
  %i.p = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12: ; preds = %bb.b
  %i.q = load i64, ptr %i.n, align 8, !tbaa !22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13 ]
  %.not = icmp ugt i64 %i.e, %i.r
  br i1 %.not, label %bb.d, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !17
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !21   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15

bb.c:                                             ; preds = %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !23   ; 2 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15: ; preds = %.critedge
  store ptr %i.u, ptr %0, align 8, !tbaa !21
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !22
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !23
  store ptr %i.v, ptr %i.s, align 8, !tbaa !21
  store i64 0, ptr %i.ac, align 8, !tbaa !23
  store i8 0, ptr %i.v, align 8, !tbaa !22
  br label %bb.g

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.af = sub i64 4611686018427387903, %i.b
  %i.ag = icmp ult i64 %i.af, %i.d
  br i1 %i.ag, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.d
  %i.ah = load ptr, ptr %2, align 8, !tbaa !21
  %i.ai = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ah, i64 noundef %i.d) ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !17
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !21 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !23 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.ak, ptr %0, align 8, !tbaa !21
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !22
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !23
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !23
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !21
  store i64 0, ptr %i.as, align 8, !tbaa !23
  store i8 0, ptr %i.al, align 8, !tbaa !22
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17
  ret void
}

declare void @_ZNK4geos9operation5valid23TopologyValidationError10getMessageB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4geos9operation5valid23TopologyValidationError13getCoordinateEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4util17TopologyExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 17, ptr %i.a, align 8, !tbaa !19
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !21
  %i.d = load i64, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.c, ptr noundef nonnull align 1 dereferenceable(17) @.str.6, i64 17, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !23
  %i.f = load ptr, ptr %3, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.h = load ptr, ptr %1, align 8, !tbaa !21, !noalias !100
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !23, !noalias !100 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.k, ptr %5, align 8, !tbaa !17, !alias.scope !101
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 0, ptr %i.l, align 8, !tbaa !23, !alias.scope !101
  store i8 0, ptr %i.k, align 8, !tbaa !22, !alias.scope !101
  %i.m = add i64 %i.j, 4
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.m)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !23, !alias.scope !101
  %i.o = sub i64 4611686018427387903, %i.n
  %i.p = icmp ult i64 %i.o, %i.j
  br i1 %i.p, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.a
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.h, i64 noundef %i.j)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.r = load i64, ptr %i.l, align 8, !tbaa !23, !alias.scope !101
  %i.s = and i64 %i.r, -4
  %i.t = icmp eq i64 %i.s, 4611686018427387900
  br i1 %i.t, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #19
          to label %.cont.i.i unwind label %bb.b

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.10, i64 noundef 4)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %.noexc.i
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %5, align 8, !tbaa !21, !alias.scope !101 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.k
  br i1 %i.x, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZNK4geos4geom10Coordinate8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.y = load i64, ptr %i.l, align 8, !tbaa !23, !noalias !102 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !23, !noalias !102 ; 4 uses
  %i.ab = add i64 %i.aa, %i.y                     ; 2 uses
  %i.ac = load ptr, ptr %5, align 8, !tbaa !21, !noalias !102 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.k
  br i1 %i.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.c
  %i.ae = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.ae)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.af = load i64, ptr %i.k, align 8, !tbaa !22, !noalias !102
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ag = phi i64 [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.ah = icmp ugt i64 %i.ab, %i.ag
  br i1 %i.ah, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.ai = load ptr, ptr %6, align 8, !tbaa !21, !noalias !102
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i: ; preds = %bb.d
  %i.al = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.al)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i: ; preds = %bb.d
  %i.am = load i64, ptr %i.aj, align 8, !tbaa !22, !noalias !102
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i
  %i.an = phi i64 [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i ]
  %.not.i = icmp ugt i64 %i.ab, %i.an
  br i1 %.not.i, label %bb.f, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i
  %i.ao = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.ac, i64 noundef %i.y)
          to label %.noexc13 unwind label %bb.k   ; 5 uses

.noexc13:                                         ; preds = %.critedge.i
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.ap, ptr %4, align 8, !tbaa !17, !alias.scope !102
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !21 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 5 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i

bb.e:                                             ; preds = %.noexc13
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !23 ; 2 uses
  %i.av = icmp ult i64 %i.au, 16
  call void @llvm.assume(i1 %i.av)
  %i.aw = add nuw nsw i64 %i.au, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %i.aw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i: ; preds = %.noexc13
  store ptr %i.aq, ptr %4, align 8, !tbaa !21, !alias.scope !102
  %i.ax = load i64, ptr %i.ar, align 8, !tbaa !22
  store i64 %i.ax, ptr %i.ap, align 8, !tbaa !22, !alias.scope !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i, %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !23
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !23, !alias.scope !102
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !21
  store i64 0, ptr %i.ay, align 8, !tbaa !23
  store i8 0, ptr %i.ar, align 8, !tbaa !22
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.bb = sub i64 4611686018427387903, %i.y
  %i.bc = icmp ult i64 %i.bb, %i.aa
  br i1 %i.bc, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #19
          to label %.noexc14 unwind label %bb.k

.noexc14:                                         ; preds = %bb.g
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.f
  %i.bd = load ptr, ptr %6, align 8, !tbaa !21, !noalias !102
  %i.be = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.bd, i64 noundef %i.aa)
          to label %.noexc15 unwind label %bb.k   ; 5 uses

.noexc15:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.bf, ptr %4, align 8, !tbaa !17, !alias.scope !102
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !21 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 5 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i

bb.h:                                             ; preds = %.noexc15
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !23 ; 2 uses
  %i.bl = icmp ult i64 %i.bk, 16
  call void @llvm.assume(i1 %i.bl)
  %i.bm = add nuw nsw i64 %i.bk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(1) %i.bh, i64 %i.bm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i: ; preds = %.noexc15
  store ptr %i.bg, ptr %4, align 8, !tbaa !21, !alias.scope !102
  %i.bn = load i64, ptr %i.bh, align 8, !tbaa !22
  store i64 %i.bn, ptr %i.bf, align 8, !tbaa !22, !alias.scope !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i, %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !23
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !23, !alias.scope !102
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !21
  store i64 0, ptr %i.bo, align 8, !tbaa !23
  store i8 0, ptr %i.bh, align 8, !tbaa !22
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  invoke void @_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.br = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.br) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  %i.bu = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bu) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.bx = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.k
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  call void @_ZdlPv(ptr noundef %i.bx) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.bz = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.b
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  call void @_ZdlPv(ptr noundef %i.bz) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos4util17TopologyExceptionE, i64 16), ptr %0, align 8, !tbaa !11
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !27
  ret void

bb.j:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.g, %.critedge.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.l:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.cf) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.k
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.k ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.ce, %bb.l ] ; 2 uses
  %i.ci = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  call void @_ZdlPv(ptr noundef %i.ci) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.cc, %bb.j ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.cl = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.k
  br i1 %i.cm, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %bb.b
  %.sink = phi ptr [ %i.w, %bb.b ], [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ]
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %i.v, %bb.b ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ]
  call void @_ZdlPv(ptr noundef %.sink) #18
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %bb.b
  %.pn.pn.pn = phi { ptr, i32 } [ %i.v, %bb.b ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], [ %.pn.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.cn = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.b
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.cn) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.a = load ptr, ptr %1, align 8, !tbaa !21, !noalias !109
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !23, !noalias !109 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !17, !alias.scope !110
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.e, align 8, !tbaa !23, !alias.scope !110
  store i8 0, ptr %i.d, align 8, !tbaa !22, !alias.scope !110
  %i.f = add i64 %i.c, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !23, !alias.scope !110
  %i.h = sub i64 4611686018427387903, %i.g
  %i.i = icmp ult i64 %i.h, %i.c
  br i1 %i.i, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !23, !alias.scope !110
  %i.l = and i64 %i.k, -2
  %i.m = icmp eq i64 %i.l, 4611686018427387902
  br i1 %i.m, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #19
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !21, !alias.scope !110 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.p) #18
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !23, !noalias !111 ; 2 uses
  %i.t = load i64, ptr %i.e, align 8, !tbaa !23, !noalias !111
  %i.u = sub i64 4611686018427387903, %i.t
  %i.v = icmp ult i64 %i.u, %i.s
  br i1 %i.v, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #19
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.w = load ptr, ptr %2, align 8, !tbaa !21, !noalias !111
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.w, i64 noundef %i.s)
          to label %.noexc6 unwind label %bb.h    ; 6 uses

.noexc6:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !17, !alias.scope !111
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !21   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.noexc6
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !23 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc6
  store ptr %i.z, ptr %3, align 8, !tbaa !21, !alias.scope !111
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !22
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !22, !alias.scope !111
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.ah = phi i64 [ %i.ad, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !23, !alias.scope !111
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !21
  store i64 0, ptr %i.ai, align 8, !tbaa !23
  store i8 0, ptr %i.aa, align 8, !tbaa !22
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.y
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.ak) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.am = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.d
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.am) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos4util13GEOSExceptionE, i64 16), ptr %0, align 8, !tbaa !11
  ret void

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

bb.i:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.y
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.aq) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.h ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ], [ %i.ap, %bb.i ]
  %i.as = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.d
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  call void @_ZdlPv(ptr noundef %i.as) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4util17TopologyExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

declare void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4util13GEOSExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNK4geos4geom10Coordinate8toStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt13runtime_erroraSERKS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare void @_ZN4geos4geom15GeometryFactory7destroyEv(ptr noundef nonnull align 8 dereferenceable(45)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nounwind memory(none) }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { cold noreturn }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = distinct !{null, null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"vtable pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 _ZTSN4geos4geom8GeometryE", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"p1 omnipotent char", !12, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"long", !6, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0, !18, i64 8, !6, i64 16}
!21 = !{!20, !15, i64 0}
!22 = !{!6, !6, i64 0}
!23 = !{!20, !18, i64 8}
!24 = !{!"bool", !6, i64 0}
!25 = !{!"double", !6, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{i64 0, i64 8, !26, i64 8, i64 8, !26, i64 16, i64 8, !26}
!28 = !{!"p1 _ZTSN4geos4geom15GeometryFactoryE", !12, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"_ZTSN4geos4geom10CoordinateE", !25, i64 0, !25, i64 8, !25, i64 16}
!31 = !{!30, !25, i64 16}
!32 = distinct !{!32, i1 false, !"_ZNK4geos4geom8Geometry5cloneEv"}
!33 = distinct !{!33, !32, !"_ZNK4geos4geom8Geometry5cloneEv: argument 0"}
!34 = distinct !{!34, i1 false, !"_ZNK4geos4geom8Geometry5cloneEv"}
!35 = distinct !{!35, !34, !"_ZNK4geos4geom8Geometry5cloneEv: argument 0"}
!36 = !{!33}
!37 = !{!35}
!38 = distinct !{null}
!39 = distinct !{null}
!40 = !{!"p1 _ZTSN4geos4geom10CoordinateE", !12, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!42 = !{!"_ZTSNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE12_Vector_implE", !41, i64 0}
!43 = !{!"_ZTSSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE", !42, i64 0}
!44 = !{!"_ZTSSt6vectorIN4geos4geom10CoordinateESaIS2_EE", !43, i64 0}
!45 = !{!"_ZTSN4geos9operation5valid10IsSimpleOpE", !13, i64 0, !24, i64 8, !24, i64 9, !24, i64 10, !44, i64 16, !24, i64 40}
!46 = !{!45, !24, i64 8}
!47 = !{!45, !24, i64 9}
!48 = !{!45, !24, i64 10}
!49 = !{!41, !40, i64 0}
!50 = !{!"p1 _ZTSN4geos9operation5valid23TopologyValidationErrorE", !12, i64 0}
!51 = !{!"_ZTSSt10_Head_baseILm0EPN4geos9operation5valid23TopologyValidationErrorELb0EE", !50, i64 0}
!52 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos9operation5valid23TopologyValidationErrorESt14default_deleteIS3_EEE", !51, i64 0}
!53 = !{!"_ZTSSt5tupleIJPN4geos9operation5valid23TopologyValidationErrorESt14default_deleteIS3_EEE", !52, i64 0}
!54 = !{!"_ZTSSt15__uniq_ptr_implIN4geos9operation5valid23TopologyValidationErrorESt14default_deleteIS3_EE", !53, i64 0}
!55 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos9operation5valid23TopologyValidationErrorESt14default_deleteIS3_ELb1ELb1EE", !54, i64 0}
!56 = !{!"_ZTSSt10unique_ptrIN4geos9operation5valid23TopologyValidationErrorESt14default_deleteIS3_EE", !55, i64 0}
!57 = !{!"_ZTSN4geos9operation5valid9IsValidOpE", !13, i64 0, !24, i64 8, !56, i64 16}
!58 = !{!57, !13, i64 0}
!59 = !{!57, !24, i64 8}
!60 = !{!51, !50, i64 0}
!61 = !{!50, !50, i64 0}
!62 = distinct !{!62, i1 false, !"_ZNK4geos4geom8Geometry5cloneEv"}
!63 = distinct !{!63, !62, !"_ZNK4geos4geom8Geometry5cloneEv: argument 0"}
!64 = distinct !{!64, i1 false, !"_ZNK4geos4geom8Geometry5cloneEv"}
!65 = distinct !{!65, !64, !"_ZNK4geos4geom8Geometry5cloneEv: argument 0"}
!66 = distinct !{null, null, null, null, null}
!67 = distinct !{null, null, null}
!68 = distinct !{!68, !90}
!69 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom8GeometryELb0EE", !13, i64 0}
!70 = !{!69, !13, i64 0}
!71 = !{!63}
!72 = !{!65}
!73 = !{!"p1 _ZTSN4geos4geom8EnvelopeE", !12, i64 0}
!74 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom8EnvelopeELb0EE", !73, i64 0}
!75 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos4geom8EnvelopeESt14default_deleteIS2_EEE", !74, i64 0}
!76 = !{!"_ZTSSt5tupleIJPN4geos4geom8EnvelopeESt14default_deleteIS2_EEE", !75, i64 0}
!77 = !{!"_ZTSSt15__uniq_ptr_implIN4geos4geom8EnvelopeESt14default_deleteIS2_EE", !76, i64 0}
!78 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos4geom8EnvelopeESt14default_deleteIS2_ELb1ELb1EE", !77, i64 0}
!79 = !{!"_ZTSSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EE", !78, i64 0}
!80 = !{!"_ZTSN4geos4geom8GeometryE", !79, i64 8, !7, i64 16, !28, i64 24, !12, i64 32}
!81 = !{!80, !28, i64 24}
!82 = !{!"_ZTSN4geos4geom14PrecisionModel4TypeE", !6, i64 0}
!83 = !{!"_ZTSN4geos4geom14PrecisionModelE", !82, i64 0, !25, i64 8}
!84 = !{!83, !25, i64 8}
!85 = !{!12, !12, i64 0}
!86 = !{!"p1 _ZTSN4geos4geom14PrecisionModelE", !12, i64 0}
!87 = !{!"_ZTSN4geos9precision24GeometryPrecisionReducerE", !28, i64 0, !86, i64 8, !24, i64 16, !24, i64 17, !24, i64 18, !24, i64 19}
!88 = !{!87, !24, i64 16}
!89 = !{!87, !24, i64 17}
!90 = !{!"llvm.loop.mustprogress"}
!91 = distinct !{!91, i1 false, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!92 = distinct !{!92, !91, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!93 = !{!92}
!94 = distinct !{!94, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!95 = distinct !{!95, !94, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!96 = distinct !{!96, i1 false, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!97 = distinct !{!97, !96, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!98 = distinct !{!98, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!99 = distinct !{!99, !98, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!100 = !{!95}
!101 = !{!97, !95}
!102 = !{!99}
!103 = distinct !{!103, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!104 = distinct !{!104, !103, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!105 = distinct !{!105, i1 false, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!106 = distinct !{!106, !105, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!107 = distinct !{!107, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!108 = distinct !{!108, !107, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!109 = !{!104}
!110 = !{!106, !104}
!111 = !{!108}
end_hunk_2
