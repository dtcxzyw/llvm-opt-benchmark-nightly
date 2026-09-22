Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/FileFormat3DL?download=true
inline.NumInlined: 960
inline.NumDeleted: 420
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat13getFormatInfoERSt6vectorINS_10FormatInfoESaIS3_EE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !19
  store i8 0, ptr %i.d, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !75
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 2 uses
  store i32 0, ptr %i.g, align 4, !tbaa !76
  %i.h = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str, i64 noundef 5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.g ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.a
  %i.i = load i64, ptr %i.e, align 8, !tbaa !19
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, i64 noundef %i.i, ptr noundef nonnull @.str.1, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit7 unwind label %bb.g ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  store i32 3, ptr %i.f, align 8, !tbaa !75
  store i32 1, ptr %i.g, align 4, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24
  %.not.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit7
  invoke void @_ZN16OpenColorIO_v2_510FormatInfoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store ptr %i.p, ptr %i.k, align 8, !tbaa !23
  br label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit7
  invoke void @_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.l, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit unwind label %bb.g

_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZN16OpenColorIO_v2_510FormatInfoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !19
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %i.r, ptr noundef nonnull @.str.2, i64 noundef 6)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit10 unwind label %bb.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit10: ; preds = %bb.d
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !23   ; 3 uses
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !24
  %.not.i11 = icmp eq ptr %i.t, %i.u
  br i1 %.not.i11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit10
  invoke void @_ZN16OpenColorIO_v2_510FormatInfoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %i.t, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %.noexc12 unwind label %bb.i

.noexc12:                                         ; preds = %bb.e
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  store ptr %i.w, ptr %i.k, align 8, !tbaa !23
  br label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit14

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit10
  invoke void @_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit14 unwind label %bb.i

_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit14: ; preds = %.noexc12, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !25   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit14
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !20
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ad = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !20
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #24
  br label %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit

_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !25  ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.d
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15: ; preds = %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit
  %i.ak = load i64, ptr %i.d, align 8, !tbaa !20
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16: ; preds = %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15
  %i.am = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.a
  br i1 %i.an, label %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !20
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #24
  br label %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit20

_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit20:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.g:                                             ; preds = %bb.c, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_510FormatInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.as, %bb.i ], [ %i.ar, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.j ], [ %i.aq, %bb.g ]
  call void @_ZN16OpenColorIO_v2_510FormatInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nofree nonnull readnone align 8 captures(none) %3, i32 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [4096 x i8], align 16             ; 13 uses
  %5 = alloca %"class.std::vector.8", align 16    ; 15 uses
  %6 = alloca %"class.std::vector.3", align 8     ; 15 uses
  %7 = alloca %"class.std::vector.8", align 16    ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 11 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 11 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %2, align 8, !tbaa !12
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !34
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.lr.ph, label %_ZNSt6vectorIiSaIiEED2Ev.exit

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %i.r = phi ptr [ %i.f, %.lr.ph.lr.ph ], [ %i.ix, %.outer ]
  %.0113.ph714 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %i.ae, %.outer ]
  %.sroa.0470.0.ph713 = phi ptr [ null, %.lr.ph.lr.ph ], [ %.sroa.0470.2, %.outer ] ; 11 uses
  %.sroa.17482.0.ph712 = phi ptr [ null, %.lr.ph.lr.ph ], [ %.sroa.17482.2, %.outer ] ; 4 uses
  %.0494.ph711 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %.1495, %.outer ] ; 3 uses
  %.sroa.30.0.ph710 = phi ptr [ null, %.lr.ph.lr.ph ], [ %.sroa.30.2, %.outer ] ; 15 uses
  %.sroa.17.0.ph709 = phi ptr [ null, %.lr.ph.lr.ph ], [ %.sroa.17.1, %.outer ] ; 5 uses
  %.sroa.0447.0.ph708 = phi ptr [ null, %.lr.ph.lr.ph ], [ %.sroa.0447.2, %.outer ] ; 17 uses
  %.sroa.27.0.ph707 = phi ptr [ null, %.lr.ph.lr.ph ], [ %.sroa.27.2, %.outer ] ; 10 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.s = phi ptr [ %i.r, %.lr.ph ], [ %i.dn, %.backedge ]
  %.0113685 = phi i32 [ %.0113.ph714, %.lr.ph ], [ %i.ae, %.backedge ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 240
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !100  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc unwind label %.loopexit.split-lp528

.noexc:                                           ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load i8, ptr %i.v, align 8, !tbaa !106
  %.not.i1.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 67
  %i.y = load i8, ptr %i.x, align 1, !tbaa !20
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.u)
          to label %.noexc180 unwind label %.loopexit527.loopexit

.noexc180:                                        ; preds = %bb.e
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = invoke noundef signext i8 %i.ab(ptr noundef nonnull align 8 dereferenceable(570) %i.u, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit527.loopexit, !inline_history !77

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc180, %bb.d
  %.0.i.i.i = phi i8 [ %i.y, %bb.d ], [ %i.ac, %.noexc180 ]
  %i.ad = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.b, i64 noundef 4096, i8 noundef signext %.0.i.i.i)
          to label %_ZNSi7getlineEPcl.exit unwind label %.loopexit527.loopexit ; 0 uses

_ZNSi7getlineEPcl.exit:                           ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ae = add nsw i32 %.0113685, 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %i.j, ptr %9, align 8, !tbaa !16
  %i.af = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.af, ptr %i.a, align 8, !tbaa !36
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSi7getlineEPcl.exit
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc183 unwind label %bb.m  ; 2 uses

.noexc183:                                        ; preds = %.noexc.i
  store ptr %i.ah, ptr %9, align 8, !tbaa !25
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !36
  store i64 %i.ai, ptr %i.j, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc183, %_ZNSi7getlineEPcl.exit
  %i.aj = phi ptr [ %i.ah, %.noexc183 ], [ %i.j, %_ZNSi7getlineEPcl.exit ] ; 2 uses
  switch i64 %i.af, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ak = load i8, ptr %i.b, align 16, !tbaa !20
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !20
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr nonnull align 16 %i.b, i64 %i.af, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.al = load i64, ptr %i.a, align 8, !tbaa !36  ; 2 uses
  store i64 %i.al, ptr %i.k, align 8, !tbaa !19
  %i.am = load ptr, ptr %9, align 8, !tbaa !25
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  store i8 0, ptr %i.an, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  invoke void @_ZN11StringUtils4TrimENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull %9)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN11StringUtils18SplitByWhiteSpacesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.8") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %5, align 16, !tbaa !39   ; 5 uses
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !40  ; 2 uses
  %i.aq = load ptr, ptr %i.m, align 16, !tbaa !41
  %i.ar = load <2 x ptr>, ptr %7, align 16, !tbaa !107
  store <2 x ptr> %i.ar, ptr %5, align 16, !tbaa !107
  %i.as = load ptr, ptr %i.o, align 16, !tbaa !41
  store ptr %i.as, ptr %i.m, align 16, !tbaa !41
  %.not4.i.i.i.i.i = icmp eq ptr %i.ao, %i.ap
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ay, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.ao, %bb.j ] ; 3 uses
  %i.at = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !25 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !20
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.ap
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, %bb.j
  %.not.i.i1.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.az = ptrtoint ptr %i.aq to i64
  %i.ba = ptrtoint ptr %i.ao to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.bb) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.k
  %i.bc = load ptr, ptr %7, align 16, !tbaa !39   ; 3 uses
  %i.bd = load ptr, ptr %i.n, align 8, !tbaa !40  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bc, %i.bd
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.bc, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %i.be = load ptr, ptr %.05.i.i.i, align 8, !tbaa !25 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !20
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i184 = icmp eq ptr %i.bj, %i.bd
  br i1 %.not.i.i.i184, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 16, !tbaa !39
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit
  %i.bk = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bc, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bl = load ptr, ptr %i.o, align 16, !tbaa !41
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.l
  %i.bp = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.p
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.br = load i64, ptr %i.p, align 8, !tbaa !20
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bt = load ptr, ptr %9, align 8, !tbaa !25    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.j
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bv = load i64, ptr %i.j, align 8, !tbaa !20
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.bx = load ptr, ptr %5, align 16, !tbaa !107  ; 3 uses
  %i.by = load ptr, ptr %i.l, align 8, !tbaa !107
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %.backedge, label %bb.p

.loopexit527.loopexit:                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc180, %bb.e, %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit194.thread
  %lpad.loopexit534 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit527

.loopexit527.loopexit.split-lp:                   ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i249, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i239, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i229
  %.sroa.0447.1.ph.ph = phi ptr [ %.sroa.0447.5, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i239 ], [ %.sroa.0447.0.ph708, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i229 ], [ %.sroa.0447.6, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i249 ]
  %.sroa.30.1.ph.ph = phi ptr [ %.sroa.30.5, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i239 ], [ %.sroa.30.0.ph710, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i229 ], [ %.sroa.17.3, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i249 ]
  %lpad.loopexit.split-lp535 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit527

.loopexit.split-lp528:                            ; preds = %bb.c, %bb.ax, %bb.bc, %bb.bh
  %.sroa.0447.1.ph529 = phi ptr [ %.sroa.0447.6, %bb.bh ], [ %.sroa.0447.5, %bb.bc ], [ %.sroa.0447.0.ph708, %bb.ax ], [ %.sroa.0447.0.ph708, %bb.c ]
  %.sroa.30.1.ph530 = phi ptr [ %.sroa.17.3, %bb.bh ], [ %.sroa.30.5, %bb.bc ], [ %.sroa.30.0.ph710, %bb.ax ], [ %.sroa.30.0.ph710, %bb.c ]
  %lpad.loopexit.split-lp532 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit527

bb.m:                                             ; preds = %.noexc.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

bb.n:                                             ; preds = %bb.h
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

bb.o:                                             ; preds = %bb.i
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.p
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %bb.o
  %i.cf = load i64, ptr %i.p, align 8, !tbaa !20
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188, %bb.n
  %.pn154 = phi { ptr, i32 } [ %i.cb, %bb.n ], [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188 ], [ %i.cc, %bb.o ] ; 2 uses
  %i.ch = load ptr, ptr %9, align 8, !tbaa !25    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.j
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190
  %i.cj = load i64, ptr %i.j, align 8, !tbaa !20
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191, %bb.m
  %.pn154.pn = phi { ptr, i32 } [ %i.ca, %bb.m ], [ %.pn154, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191 ], [ %.pn154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.loopexit527

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !19
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit194.thread, label %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit

_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit: ; preds = %bb.p
  %i.co = load ptr, ptr %i.bx, align 8, !tbaa !25
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !20
  switch i8 %i.cp, label %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit194.thread [
    i8 35, label %.backedge
    i8 60, label %bb.q
  ]

bb.q:                                             ; preds = %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.4, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.r
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.5, i64 noundef 39)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.6, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef %i.ae)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199
  %i.cu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull @.str.7, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201: ; preds = %bb.s
  %i.cv = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #23
  %i.cw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %i.b, i64 noundef %i.cv)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.8, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203
  %i.cy = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(112) %10)
          to label %bb.t unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.thread

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205
  %i.cz = load ptr, ptr %11, align 8, !tbaa !25
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef %i.cz)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr nonnull %i.cy, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
          to label %bb.fe unwind label %bb.x

bb.v:                                             ; preds = %bb.q
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.w:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201, %bb.s, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.r, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit205
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.y

bb.x:                                             ; preds = %bb.u, %bb.t
  %.070 = phi i1 [ false, %bb.u ], [ true, %bb.t ] ; 2 uses
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.de = load ptr, ptr %11, align 8, !tbaa !25   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206: ; preds = %bb.x
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !20
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br i1 %.070, label %bb.y, label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br i1 %.070, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208
  %.pn165498 = phi { ptr, i32 } [ %i.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.thread ], [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208 ], [ %i.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206 ]
  call void @__cxa_free_exception(ptr %i.cy) #23
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, %bb.y, %bb.w
  %.pn165.pn = phi { ptr, i32 } [ %.pn165498, %bb.y ], [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208 ], [ %i.db, %bb.w ], [ %i.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10) #23
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.v
  %.pn165.pn.pn = phi { ptr, i32 } [ %.pn165.pn, %bb.z ], [ %i.da, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.loopexit527

_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit194.thread: ; preds = %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit, %bb.p
  %i.dj = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_517StringVecToIntVecERSt6vectorIiSaIiEERKS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.ab unwind label %.loopexit527.loopexit

bb.ab:                                            ; preds = %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit194.thread
  br i1 %i.dj, label %bb.ac, label %.backedge

.backedge:                                        ; preds = %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187
  %i.dk = load ptr, ptr %2, align 8, !tbaa !12
  %i.dl = getelementptr i8, ptr %i.dk, i64 -24
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds i8, ptr %2, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !34
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.b, label %.outer._crit_edge.loopexit, !llvm.loop !78

bb.ac:                                            ; preds = %bb.ab
  %i.dr = load ptr, ptr %i.q, align 8, !tbaa !109 ; 2 uses
  %i.ds = load ptr, ptr %6, align 8, !tbaa !110   ; 5 uses
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du                    ; 2 uses
  %i.dw = icmp ugt i64 %i.dv, 12
  br i1 %i.dw, label %.preheader525, label %bb.at

.preheader525:                                    ; preds = %bb.ac
  %.not = icmp eq ptr %.sroa.0470.0.ph713, %.sroa.17482.0.ph712
  br i1 %.not, label %.lr.ph703, label %bb.ai

.lr.ph703:                                        ; preds = %.preheader525, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.dx = phi ptr [ %i.er, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.ds, %.preheader525 ] ; 2 uses
  %i.dy = phi ptr [ %i.es, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.dr, %.preheader525 ]
  %i.dz = phi i64 [ %i.eu, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ 0, %.preheader525 ]
  %.069702 = phi i32 [ %i.et, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ 0, %.preheader525 ]
  %.sroa.0470.1701 = phi ptr [ %.sroa.0470.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.sroa.0470.0.ph713, %.preheader525 ] ; 7 uses
  %.sroa.17482.1700 = phi ptr [ %.sroa.17482.3, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.sroa.17482.0.ph712, %.preheader525 ] ; 6 uses
  %.sroa.27.1699 = phi ptr [ %.sroa.27.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.sroa.27.0.ph707, %.preheader525 ] ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.dz ; 2 uses
  %.not.i = icmp eq ptr %.sroa.17482.1700, %.sroa.27.1699
  br i1 %.not.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph703
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !10
  store i32 %i.eb, ptr %.sroa.17482.1700, align 4, !tbaa !10
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.ae:                                            ; preds = %.lr.ph703
  %i.ec = ptrtoint ptr %.sroa.17482.1700 to i64
  %i.ed = ptrtoint ptr %.sroa.0470.1701 to i64
  %i.ee = sub i64 %i.ec, %i.ed                    ; 6 uses
  %i.ef = icmp eq i64 %i.ee, 9223372036854775804
  br i1 %i.ef, label %bb.af, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #25
          to label %.noexc210 unwind label %.loopexit.split-lp

.noexc210:                                        ; preds = %bb.af
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ae
  %i.eg = ashr exact i64 %i.ee, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.eg, i64 1)
  %i.eh = add nsw i64 %.sroa.speculated.i.i.i, %i.eg ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %i.eg
  %i.ej = call i64 @llvm.umin.i64(i64 %i.eh, i64 2305843009213693951)
  %i.ek = select i1 %i.ei, i64 2305843009213693951, i64 %i.ej ; 3 uses
  %.not.i.i.i209 = icmp ne i64 %i.ek, 0
  call void @llvm.assume(i1 %.not.i.i.i209)
  %i.el = shl nuw nsw i64 %i.ek, 2
  %i.em = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.el) #22
          to label %.noexc211 unwind label %.loopexit526 ; 4 uses

.noexc211:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 %i.ee ; 2 uses
  %i.eo = load i32, ptr %i.ea, align 4, !tbaa !10
  store i32 %i.eo, ptr %i.en, align 4, !tbaa !10
  %i.ep = icmp sgt i64 %i.ee, 0
  br i1 %i.ep, label %bb.ag, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.ag:                                            ; preds = %.noexc211
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.em, ptr align 4 %.sroa.0470.1701, i64 %i.ee, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.ag, %.noexc211
  %.not.i17.i.i = icmp eq ptr %.sroa.0470.1701, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0470.1701, i64 noundef %i.ee) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.ah, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.ek
  %.pre872 = load ptr, ptr %i.q, align 8, !tbaa !109
  %.pre873 = load ptr, ptr %6, align 8, !tbaa !110
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.ad
  %i.er = phi ptr [ %.pre873, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.dx, %bb.ad ] ; 3 uses
  %i.es = phi ptr [ %.pre872, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.dy, %bb.ad ] ; 2 uses
  %.sroa.27.5 = phi ptr [ %i.eq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.27.1699, %bb.ad ] ; 2 uses
  %.pn522 = phi ptr [ %i.en, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.17482.1700, %bb.ad ]
  %.sroa.0470.5 = phi ptr [ %i.em, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0470.1701, %bb.ad ] ; 2 uses
  %.sroa.17482.3 = getelementptr inbounds nuw i8, ptr %.pn522, i64 4 ; 2 uses
  %i.et = add i32 %.069702, 1                     ; 2 uses
  %i.eu = zext i32 %i.et to i64                   ; 2 uses
  %i.ev = ptrtoint ptr %i.es to i64
  %i.ew = ptrtoint ptr %i.er to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = ashr exact i64 %i.ex, 2
  %i.ez = icmp ugt i64 %i.ey, %i.eu
  br i1 %i.ez, label %.lr.ph703, label %.outer, !llvm.loop !79

.loopexit526:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit527

.loopexit.split-lp:                               ; preds = %bb.af
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit527

bb.ai:                                            ; preds = %.preheader525
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %12)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.fa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.4, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit213 unwind label %bb.ao ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit213: ; preds = %bb.aj
  %i.fb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.9, i64 noundef 42)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215 unwind label %bb.ao ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit213
  %i.fc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.6, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit217 unwind label %bb.ao ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit217: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215
  %i.fd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef %i.ae)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit217
  %i.fe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, ptr noundef nonnull @.str.7, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219 unwind label %bb.ao ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219: ; preds = %bb.ak
  %i.ff = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #23
  %i.fg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %i.b, i64 noundef %i.ff)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222 unwind label %bb.ao ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219
  %i.fh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.8, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224 unwind label %bb.ao ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222
  %i.fi = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(112) %12)
          to label %bb.al unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.thread

bb.al:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224
  %i.fj = load ptr, ptr %13, align 8, !tbaa !25
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fi, ptr noundef %i.fj)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  invoke void @__cxa_throw(ptr nonnull %i.fi, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
          to label %bb.fe unwind label %bb.ap

bb.an:                                            ; preds = %bb.ai
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ao:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219, %bb.ak, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit213, %bb.aj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit217
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.aq

bb.ap:                                            ; preds = %bb.am, %bb.al
  %.067 = phi i1 [ false, %bb.am ], [ true, %bb.al ] ; 2 uses
  %i.fn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fo = load ptr, ptr %13, align 8, !tbaa !25   ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225: ; preds = %bb.ap
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !20
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fs) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br i1 %.067, label %bb.aq, label %bb.ar

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227: ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br i1 %.067, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227
  %.pn161501 = phi { ptr, i32 } [ %i.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.thread ], [ %i.fn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227 ], [ %i.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225 ]
  call void @__cxa_free_exception(ptr %i.fi) #23
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, %bb.aq, %bb.ao
  %.pn161.pn = phi { ptr, i32 } [ %.pn161501, %bb.aq ], [ %i.fn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227 ], [ %i.fl, %bb.ao ], [ %i.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %12) #23
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.an
  %.pn161.pn.pn = phi { ptr, i32 } [ %.pn161.pn, %bb.ar ], [ %i.fk, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %.loopexit527

bb.at:                                            ; preds = %bb.ac
  %i.ft = icmp eq i64 %i.dv, 12
  br i1 %i.ft, label %bb.au, label %bb.bk

bb.au:                                            ; preds = %bb.at
  %.not.i228 = icmp eq ptr %.sroa.17.0.ph709, %.sroa.30.0.ph710
  br i1 %.not.i228, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fu = load i32, ptr %i.ds, align 4, !tbaa !10
  store i32 %i.fu, ptr %.sroa.17.0.ph709, align 4, !tbaa !10
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit237

bb.aw:                                            ; preds = %bb.au
  %i.fv = ptrtoint ptr %.sroa.30.0.ph710 to i64
  %i.fw = ptrtoint ptr %.sroa.0447.0.ph708 to i64
  %i.fx = sub i64 %i.fv, %i.fw                    ; 6 uses
  %i.fy = icmp eq i64 %i.fx, 9223372036854775804
  br i1 %i.fy, label %bb.ax, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i229

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #25
          to label %.noexc235 unwind label %.loopexit.split-lp528

.noexc235:                                        ; preds = %bb.ax
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i229: ; preds = %bb.aw
  %i.fz = ashr exact i64 %i.fx, 2                 ; 3 uses
  %.sroa.speculated.i.i.i230 = call i64 @llvm.umax.i64(i64 %i.fz, i64 1)
  %i.ga = add nsw i64 %.sroa.speculated.i.i.i230, %i.fz ; 2 uses
  %i.gb = icmp ult i64 %i.ga, %i.fz
  %i.gc = call i64 @llvm.umin.i64(i64 %i.ga, i64 2305843009213693951)
  %i.gd = select i1 %i.gb, i64 2305843009213693951, i64 %i.gc ; 3 uses
  %.not.i.i.i231 = icmp ne i64 %i.gd, 0
  call void @llvm.assume(i1 %.not.i.i.i231)
  %i.ge = shl nuw nsw i64 %i.gd, 2
  %i.gf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ge) #22
          to label %.noexc236 unwind label %.loopexit527.loopexit.split-lp ; 4 uses

.noexc236:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i229
  %i.gg = getelementptr inbounds i8, ptr %i.gf, i64 %i.fx ; 2 uses
  %i.gh = load i32, ptr %i.ds, align 4, !tbaa !10
  store i32 %i.gh, ptr %i.gg, align 4, !tbaa !10
  %i.gi = icmp sgt i64 %i.fx, 0
  br i1 %i.gi, label %bb.ay, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i232

bb.ay:                                            ; preds = %.noexc236
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gf, ptr align 4 %.sroa.0447.0.ph708, i64 %i.fx, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i232

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i232: ; preds = %bb.ay, %.noexc236
  %.not.i17.i.i233 = icmp eq ptr %.sroa.0447.0.ph708, null
  br i1 %.not.i17.i.i233, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i234, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i232
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0447.0.ph708, i64 noundef %i.fx) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i234

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i234: ; preds = %bb.az, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i232
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.gd
  %.pre = load ptr, ptr %6, align 8, !tbaa !110
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit237

_ZNSt6vectorIiSaIiEE9push_backERKi.exit237:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i234, %bb.av
  %i.gk = phi ptr [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i234 ], [ %i.ds, %bb.av ] ; 2 uses
  %.sroa.0447.5 = phi ptr [ %i.gf, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i234 ], [ %.sroa.0447.0.ph708, %bb.av ] ; 7 uses
  %.pn = phi ptr [ %i.gg, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i234 ], [ %.sroa.17.0.ph709, %bb.av ] ; 2 uses
  %.sroa.30.5 = phi ptr [ %i.gj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i234 ], [ %.sroa.30.0.ph710, %bb.av ] ; 5 uses
  %.sroa.17.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 4 ; 2 uses
  %.not.i238 = icmp eq ptr %.sroa.17.2, %.sroa.30.5
  br i1 %.not.i238, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit237
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !10
  store i32 %i.gm, ptr %.sroa.17.2, align 4, !tbaa !10
  %i.gn = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit247

bb.bb:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit237
  %i.go = ptrtoint ptr %.sroa.30.5 to i64
  %i.gp = ptrtoint ptr %.sroa.0447.5 to i64
  %i.gq = sub i64 %i.go, %i.gp                    ; 6 uses
  %i.gr = icmp eq i64 %i.gq, 9223372036854775804
  br i1 %i.gr, label %bb.bc, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i239

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #25
          to label %.noexc245 unwind label %.loopexit.split-lp528

.noexc245:                                        ; preds = %bb.bc
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i239: ; preds = %bb.bb
  %i.gs = ashr exact i64 %i.gq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i240 = call i64 @llvm.umax.i64(i64 %i.gs, i64 1)
  %i.gt = add nsw i64 %.sroa.speculated.i.i.i240, %i.gs ; 2 uses
  %i.gu = icmp ult i64 %i.gt, %i.gs
  %i.gv = call i64 @llvm.umin.i64(i64 %i.gt, i64 2305843009213693951)
  %i.gw = select i1 %i.gu, i64 2305843009213693951, i64 %i.gv ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
bb.bd:                                            ; preds = %.noexc246
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gy, ptr align 4 %.sroa.0447.5, i64 %i.gq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i242

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i242: ; preds = %bb.bd, %.noexc246
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %.not.i17.i.i243 = icmp eq ptr %.sroa.0447.5, null
  br i1 %.not.i17.i.i243, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i244, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i242
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0447.5, i64 noundef %i.gq) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i244

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i244: ; preds = %bb.be, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i242
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.gw
  %.pre869 = load ptr, ptr %6, align 8, !tbaa !110
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit247

_ZNSt6vectorIiSaIiEE9push_backERKi.exit247:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i244, %bb.ba
  %i.he = phi ptr [ %.pre869, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i244 ], [ %i.gk, %bb.ba ] ; 2 uses
  %.sroa.0447.6 = phi ptr [ %i.gy, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i244 ], [ %.sroa.0447.5, %bb.ba ] ; 7 uses
  %.sroa.17.3 = phi ptr [ %i.hc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i244 ], [ %i.gn, %bb.ba ] ; 6 uses
  %.sroa.30.6 = phi ptr [ %i.hd, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i244 ], [ %.sroa.30.5, %bb.ba ] ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 2 uses
  %.not.i248 = icmp eq ptr %.sroa.17.3, %.sroa.30.6
  br i1 %.not.i248, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit247
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !10 ; 2 uses
  store i32 %i.hg, ptr %.sroa.17.3, align 4, !tbaa !10
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit257

bb.bg:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit247
  %i.hh = ptrtoint ptr %.sroa.17.3 to i64
  %i.hi = ptrtoint ptr %.sroa.0447.6 to i64
  %i.hj = sub i64 %i.hh, %i.hi                    ; 6 uses
  %i.hk = icmp eq i64 %i.hj, 9223372036854775804
  br i1 %i.hk, label %bb.bh, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i249

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #25
          to label %.noexc255 unwind label %.loopexit.split-lp528

.noexc255:                                        ; preds = %bb.bh
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i249: ; preds = %bb.bg
  %i.hl = ashr exact i64 %i.hj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i250 = call i64 @llvm.umax.i64(i64 %i.hl, i64 1)
  %i.hm = add nsw i64 %.sroa.speculated.i.i.i250, %i.hl ; 2 uses
  %i.hn = icmp ult i64 %i.hm, %i.hl
  %i.ho = call i64 @llvm.umin.i64(i64 %i.hm, i64 2305843009213693951)
  %i.hp = select i1 %i.hn, i64 2305843009213693951, i64 %i.ho ; 3 uses
  %.not.i.i.i251 = icmp ne i64 %i.hp, 0
  call void @llvm.assume(i1 %.not.i.i.i251)
  %i.hq = shl nuw nsw i64 %i.hp, 2
  %i.hr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hq) #22
          to label %.noexc256 unwind label %.loopexit527.loopexit.split-lp ; 4 uses

.noexc256:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i249
  %i.hs = getelementptr inbounds i8, ptr %i.hr, i64 %i.hj ; 2 uses
  %i.ht = load i32, ptr %i.hf, align 4, !tbaa !10
  store i32 %i.ht, ptr %i.hs, align 4, !tbaa !10
  %i.hu = icmp sgt i64 %i.hj, 0
  br i1 %i.hu, label %bb.bi, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i252

bb.bi:                                            ; preds = %.noexc256
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hr, ptr align 4 %.sroa.0447.6, i64 %i.hj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i252

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i252: ; preds = %bb.bi, %.noexc256
  %.not.i17.i.i253 = icmp eq ptr %.sroa.0447.6, null
  br i1 %.not.i17.i.i253, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i254, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i252
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0447.6, i64 noundef %i.hj) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i254

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i254: ; preds = %bb.bj, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i252
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.hp
  %.pre870 = load ptr, ptr %6, align 8, !tbaa !110 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre870, i64 8
  %.pre871 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !10
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit257

_ZNSt6vectorIiSaIiEE9push_backERKi.exit257:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i254, %bb.bf
  %i.hw = phi i32 [ %.pre871, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i254 ], [ %i.hg, %bb.bf ]
  %i.hx = phi ptr [ %.pre870, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i254 ], [ %i.he, %bb.bf ] ; 3 uses
  %.sroa.0447.7 = phi ptr [ %i.hr, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i254 ], [ %.sroa.0447.6, %bb.bf ]
  %.pn521 = phi ptr [ %i.hs, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i254 ], [ %.sroa.17.3, %bb.bf ]
  %.sroa.30.7 = phi ptr [ %i.hv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i254 ], [ %.sroa.30.6, %bb.bf ]
  %.sroa.17.4 = getelementptr inbounds nuw i8, ptr %.pn521, i64 4
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !10
  %.sroa.speculated437 = call i32 @llvm.smax.i32(i32 %.0494.ph711, i32 %i.hy)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !10
  %.sroa.speculated434 = call i32 @llvm.smax.i32(i32 %.sroa.speculated437, i32 %i.ia)
  %.sroa.speculated431 = call i32 @llvm.smax.i32(i32 %.sroa.speculated434, i32 %i.hw)
  br label %.outer

bb.bk:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %14)
          to label %bb.bl unwind label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  %i.ib = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @.str.4, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit261 unwind label %bb.bq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit261: ; preds = %bb.bl
  %i.ic = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @.str.10, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit263 unwind label %bb.bq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit263: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit261
  %i.id = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @.str.6, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit265 unwind label %bb.bq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit265: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit263
  %i.ie = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef %i.ae)
          to label %bb.bm unwind label %bb.bq

bb.bm:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit265
  %i.if = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ie, ptr noundef nonnull @.str.7, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit267 unwind label %bb.bq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit267: ; preds = %bb.bm
  %i.ig = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #23
  %i.ih = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull %i.b, i64 noundef %i.ig)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit270 unwind label %bb.bq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit270: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit267
  %i.ii = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @.str.8, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit272 unwind label %bb.bq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit272: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit270
  %i.ij = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(112) %14)
          to label %bb.bn unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.thread

bb.bn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit272
  %i.ik = load ptr, ptr %15, align 8, !tbaa !25
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ij, ptr noundef %i.ik)
          to label %bb.bo unwind label %bb.br

bb.bo:                                            ; preds = %bb.bn
  invoke void @__cxa_throw(ptr nonnull %i.ij, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
          to label %bb.fe unwind label %bb.br

bb.bp:                                            ; preds = %bb.bk
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit270, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit267, %bb.bm, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit263, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit261, %bb.bl, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit265
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit272
  %i.in = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.bs

bb.br:                                            ; preds = %bb.bo, %bb.bn
  %.065 = phi i1 [ false, %bb.bo ], [ true, %bb.bn ] ; 2 uses
  %i.io = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ip = load ptr, ptr %15, align 8, !tbaa !25   ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ir = icmp eq ptr %i.ip, %i.iq
  br i1 %i.ir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273: ; preds = %bb.br
  %i.is = load i64, ptr %i.iq, align 8, !tbaa !20
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.it) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br i1 %.065, label %bb.bs, label %bb.bt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275: ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br i1 %.065, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275
  %.pn157504 = phi { ptr, i32 } [ %i.in, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.thread ], [ %i.io, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275 ], [ %i.io, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273 ]
  call void @__cxa_free_exception(ptr %i.ij) #23
  br label %bb.bt

bb.bt:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, %bb.bs, %bb.bq
  %.pn157.pn = phi { ptr, i32 } [ %.pn157504, %bb.bs ], [ %i.io, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275 ], [ %i.im, %bb.bq ], [ %i.io, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %14) #23
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bp
  %.pn157.pn.pn = phi { ptr, i32 } [ %.pn157.pn, %bb.bt ], [ %i.il, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %.loopexit527

.outer:                                           ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit257
  %22 = phi ptr [ %i.hx, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit257 ], [ %i.er, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.sroa.27.2 = phi ptr [ %.sroa.27.0.ph707, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit257 ], [ %.sroa.27.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %.sroa.0447.2 = phi ptr [ %.sroa.0447.7, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit257 ], [ %.sroa.0447.0.ph708, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %.sroa.17.1 = phi ptr [ %.sroa.17.4, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit257 ], [ %.sroa.17.0.ph709, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %.sroa.30.2 = phi ptr [ %.sroa.30.7, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit257 ], [ %.sroa.30.0.ph710, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %.1495 = phi i32 [ %.sroa.speculated431, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit257 ], [ %.0494.ph711, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %.sroa.17482.2 = phi ptr [ %.sroa.17482.0.ph712, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit257 ], [ %.sroa.17482.3, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %.sroa.0470.2 = phi ptr [ %.sroa.0470.0.ph713, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit257 ], [ %.sroa.0470.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %i.iu = load ptr, ptr %2, align 8, !tbaa !12
  %i.iv = getelementptr i8, ptr %i.iu, i64 -24
  %i.iw = load i64, ptr %i.iv, align 8
  %i.ix = getelementptr inbounds i8, ptr %2, i64 %i.iw ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !34
  %i.ja = icmp eq i32 %i.iz, 0
  br i1 %i.ja, label %.lr.ph, label %.outer._crit_edge, !llvm.loop !78

.outer._crit_edge.loopexit:                       ; preds = %.backedge
  %.pre874 = load ptr, ptr %6, align 8, !tbaa !110
  br label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %.outer, %.outer._crit_edge.loopexit
  %i.jb = phi ptr [ %.pre874, %.outer._crit_edge.loopexit ], [ %22, %.outer ] ; 3 uses
  %.sroa.27.0.ph.lcssa678 = phi ptr [ %.sroa.27.0.ph707, %.outer._crit_edge.loopexit ], [ %.sroa.27.2, %.outer ] ; 2 uses
  %.sroa.0447.0.ph.lcssa660 = phi ptr [ %.sroa.0447.0.ph708, %.outer._crit_edge.loopexit ], [ %.sroa.0447.2, %.outer ] ; 2 uses
  %.sroa.17.0.ph.lcssa646 = phi ptr [ %.sroa.17.0.ph709, %.outer._crit_edge.loopexit ], [ %.sroa.17.1, %.outer ] ; 2 uses
  %.sroa.30.0.ph.lcssa628 = phi ptr [ %.sroa.30.0.ph710, %.outer._crit_edge.loopexit ], [ %.sroa.30.2, %.outer ] ; 2 uses
  %.0494.ph.lcssa614 = phi i32 [ %.0494.ph711, %.outer._crit_edge.loopexit ], [ %.1495, %.outer ] ; 2 uses
  %.sroa.17482.0.ph.lcssa600 = phi ptr [ %.sroa.17482.0.ph712, %.outer._crit_edge.loopexit ], [ %.sroa.17482.2, %.outer ] ; 2 uses
  %.sroa.0470.0.ph.lcssa580 = phi ptr [ %.sroa.0470.0.ph713, %.outer._crit_edge.loopexit ], [ %.sroa.0470.2, %.outer ] ; 2 uses
  %.not.i.i.i276 = icmp eq ptr %i.jb, null
  br i1 %.not.i.i.i276, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %.outer._crit_edge
  %i.jc = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !111
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = ptrtoint ptr %i.jb to i64
  %i.jg = sub i64 %i.je, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %i.jb, i64 noundef %i.jg) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %.outer._crit_edge, %bb.bv
  %.sroa.0470.0.ph.lcssa580946 = phi ptr [ %.sroa.0470.0.ph.lcssa580, %bb.bv ], [ %.sroa.0470.0.ph.lcssa580, %.outer._crit_edge ], [ null, %bb.a ] ; 16 uses
  %.sroa.17482.0.ph.lcssa600945 = phi ptr [ %.sroa.17482.0.ph.lcssa600, %bb.bv ], [ %.sroa.17482.0.ph.lcssa600, %.outer._crit_edge ], [ null, %bb.a ] ; 4 uses
  %.0494.ph.lcssa614944 = phi i32 [ %.0494.ph.lcssa614, %bb.bv ], [ %.0494.ph.lcssa614, %.outer._crit_edge ], [ 0, %bb.a ] ; 6 uses
  %.sroa.30.0.ph.lcssa628942 = phi ptr [ %.sroa.30.0.ph.lcssa628, %bb.bv ], [ %.sroa.30.0.ph.lcssa628, %.outer._crit_edge ], [ null, %bb.a ] ; 5 uses
  %.sroa.17.0.ph.lcssa646941 = phi ptr [ %.sroa.17.0.ph.lcssa646, %bb.bv ], [ %.sroa.17.0.ph.lcssa646, %.outer._crit_edge ], [ null, %bb.a ] ; 2 uses
  %.sroa.0447.0.ph.lcssa660939 = phi ptr [ %.sroa.0447.0.ph.lcssa660, %bb.bv ], [ %.sroa.0447.0.ph.lcssa660, %.outer._crit_edge ], [ null, %bb.a ] ; 11 uses
  %.sroa.27.0.ph.lcssa678937 = phi ptr [ %.sroa.27.0.ph.lcssa678, %bb.bv ], [ %.sroa.27.0.ph.lcssa678, %.outer._crit_edge ], [ null, %bb.a ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.jh = load ptr, ptr %5, align 16, !tbaa !39   ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !40 ; 2 uses
  %.not4.i.i.i277 = icmp eq ptr %i.jh, %i.jj
  br i1 %.not4.i.i.i277, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i285, label %.lr.ph.i.i.i278

.lr.ph.i.i.i278:                                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i281
  %.05.i.i.i279 = phi ptr [ %i.jp, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i281 ], [ %i.jh, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %i.jk = load ptr, ptr %.05.i.i.i279, align 8, !tbaa !25 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.05.i.i.i279, i64 16 ; 2 uses
  %i.jm = icmp eq ptr %i.jk, %i.jl
  br i1 %i.jm, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i281, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i280

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i280: ; preds = %.lr.ph.i.i.i278
  %i.jn = load i64, ptr %i.jl, align 8, !tbaa !20
  %i.jo = add i64 %i.jn, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jo) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i281

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i281: ; preds = %.lr.ph.i.i.i278, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i280
  %i.jp = getelementptr inbounds nuw i8, ptr %.05.i.i.i279, i64 32 ; 2 uses
  %.not.i.i.i282 = icmp eq ptr %i.jp, %i.jj
  br i1 %.not.i.i.i282, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i283, label %.lr.ph.i.i.i278, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i283: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i281
  %.pr.i284 = load ptr, ptr %5, align 16, !tbaa !39
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i285

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i285: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i283, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.jq = phi ptr [ %.pr.i284, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i283 ], [ %i.jh, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i286 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i1.i286, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit288, label %bb.bw

bb.bw:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i285
  %i.jr = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.js = load ptr, ptr %i.jr, align 16, !tbaa !41
  %i.jt = ptrtoint ptr %i.js to i64
  %i.ju = ptrtoint ptr %i.jq to i64
  %i.jv = sub i64 %i.jt, %i.ju
  call void @_ZdlPvm(ptr noundef nonnull %i.jq, i64 noundef %i.jv) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit288

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit288: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i285, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.jw = icmp eq ptr %.sroa.0447.0.ph.lcssa660939, %.sroa.17.0.ph.lcssa646941 ; 2 uses
  %i.jx = icmp eq ptr %.sroa.0470.0.ph.lcssa580946, %.sroa.17482.0.ph.lcssa600945 ; 2 uses
  %or.cond = select i1 %i.jw, i1 %i.jx, i1 false
  br i1 %or.cond, label %bb.bx, label %bb.ci

bb.bx:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit288
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %16)
          to label %bb.by unwind label %bb.cc

bb.by:                                            ; preds = %bb.bx
  %i.jy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull @.str.4, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit290 unwind label %bb.cd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit290: ; preds = %bb.by
  %i.jz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull @.str.11, i64 noundef 58)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292 unwind label %bb.cd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit290
  %i.ka = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(112) %16)
          to label %bb.bz unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297.thread

bb.bz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292
  %i.kb = load ptr, ptr %17, align 8, !tbaa !25
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ka, ptr noundef %i.kb)
          to label %bb.ca unwind label %bb.ce

bb.ca:                                            ; preds = %bb.bz
  invoke void @__cxa_throw(ptr nonnull %i.ka, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
          to label %bb.fe unwind label %bb.ce

.loopexit527:                                     ; preds = %.loopexit526, %.loopexit.split-lp, %.loopexit.split-lp528, %.loopexit527.loopexit.split-lp, %.loopexit527.loopexit, %bb.bu, %bb.as, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193
  %.sroa.27.3 = phi ptr [ %.sroa.27.0.ph707, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193 ], [ %.sroa.27.0.ph707, %.loopexit527.loopexit.split-lp ], [ %.sroa.27.0.ph707, %bb.as ], [ %.sroa.27.0.ph707, %bb.bu ], [ %.sroa.27.0.ph707, %bb.aa ], [ %.sroa.27.0.ph707, %.loopexit.split-lp528 ], [ %.sroa.27.0.ph707, %.loopexit527.loopexit ], [ %.sroa.17482.1700, %.loopexit526 ], [ %.sroa.17482.1700, %.loopexit.split-lp ]
  %.sroa.0447.3 = phi ptr [ %.sroa.0447.0.ph708, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193 ], [ %.sroa.0447.1.ph.ph, %.loopexit527.loopexit.split-lp ], [ %.sroa.0447.0.ph708, %bb.as ], [ %.sroa.0447.0.ph708, %bb.bu ], [ %.sroa.0447.0.ph708, %bb.aa ], [ %.sroa.0447.1.ph529, %.loopexit.split-lp528 ], [ %.sroa.0447.0.ph708, %.loopexit527.loopexit ], [ %.sroa.0447.0.ph708, %.loopexit526 ], [ %.sroa.0447.0.ph708, %.loopexit.split-lp ]
  %.sroa.30.3 = phi ptr [ %.sroa.30.0.ph710, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193 ], [ %.sroa.30.1.ph.ph, %.loopexit527.loopexit.split-lp ], [ %.sroa.30.0.ph710, %bb.as ], [ %.sroa.30.0.ph710, %bb.bu ], [ %.sroa.30.0.ph710, %bb.aa ], [ %.sroa.30.1.ph530, %.loopexit.split-lp528 ], [ %.sroa.30.0.ph710, %.loopexit527.loopexit ], [ %.sroa.30.0.ph710, %.loopexit526 ], [ %.sroa.30.0.ph710, %.loopexit.split-lp ]
  %.sroa.0470.3 = phi ptr [ %.sroa.0470.0.ph713, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193 ], [ %.sroa.0470.0.ph713, %.loopexit527.loopexit.split-lp ], [ %.sroa.0470.0.ph713, %bb.as ], [ %.sroa.0470.0.ph713, %bb.bu ], [ %.sroa.0470.0.ph713, %bb.aa ], [ %.sroa.0470.0.ph713, %.loopexit.split-lp528 ], [ %.sroa.0470.0.ph713, %.loopexit527.loopexit ], [ %.sroa.0470.1701, %.loopexit526 ], [ %.sroa.0470.1701, %.loopexit.split-lp ]
  %.pn165.pn.pn.pn = phi { ptr, i32 } [ %.pn154.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193 ], [ %lpad.loopexit.split-lp535, %.loopexit527.loopexit.split-lp ], [ %.pn161.pn.pn, %bb.as ], [ %.pn157.pn.pn, %bb.bu ], [ %.pn165.pn.pn, %bb.aa ], [ %lpad.loopexit.split-lp532, %.loopexit.split-lp528 ], [ %lpad.loopexit534, %.loopexit527.loopexit ], [ %lpad.loopexit, %.loopexit526 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.kc = load ptr, ptr %6, align 8, !tbaa !110   ; 3 uses
  %.not.i.i.i293 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i.i293, label %_ZNSt6vectorIiSaIiEED2Ev.exit294, label %bb.cb

bb.cb:                                            ; preds = %.loopexit527
  %i.kd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !111
  %i.kf = ptrtoint ptr %i.ke to i64
  %i.kg = ptrtoint ptr %i.kc to i64
  %i.kh = sub i64 %i.kf, %i.kg
  call void @_ZdlPvm(ptr noundef nonnull %i.kc, i64 noundef %i.kh) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit294

_ZNSt6vectorIiSaIiEED2Ev.exit294:                 ; preds = %.loopexit527, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.body

bb.cc:                                            ; preds = %bb.bx
  %i.ki = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit290, %bb.by
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292
  %i.kk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %bb.cf

bb.ce:                                            ; preds = %bb.ca, %bb.bz
  %.063 = phi i1 [ false, %bb.ca ], [ true, %bb.bz ] ; 2 uses
  %i.kl = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.km = load ptr, ptr %17, align 8, !tbaa !25   ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ko = icmp eq ptr %i.km, %i.kn
  br i1 %i.ko, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295: ; preds = %bb.ce
  %i.kp = load i64, ptr %i.kn, align 8, !tbaa !20
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.kq) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br i1 %.063, label %bb.cf, label %bb.cg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297: ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br i1 %.063, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297
  %.pn150507 = phi { ptr, i32 } [ %i.kk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297.thread ], [ %i.kl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297 ], [ %i.kl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295 ]
  call void @__cxa_free_exception(ptr %i.ka) #23
  br label %bb.cg

bb.cg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, %bb.cf, %bb.cd
  %.pn150.pn = phi { ptr, i32 } [ %.pn150507, %bb.cf ], [ %i.kl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297 ], [ %i.kj, %bb.cd ], [ %i.kl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %16) #23
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cc
  %.pn150.pn.pn = phi { ptr, i32 } [ %.pn150.pn, %bb.cg ], [ %i.ki, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %.body

bb.ci:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit288
  %i.kr = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22
          to label %bb.cj unwind label %bb.cp     ; 10 uses

bb.cj:                                            ; preds = %bb.ci
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE, i64 16), ptr %i.kr, align 8, !tbaa !12
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ks, i8 0, i64 32, i1 false)
  %i.kt = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.co unwind label %bb.ck     ; 7 uses

bb.ck:                                            ; preds = %bb.cj
  %i.ku = landingpad { ptr, i32 }
          catch ptr null
  %i.kv = extractvalue { ptr, i32 } %i.ku, 0
  %i.kw = call ptr @__cxa_begin_catch(ptr %i.kv) #23 ; 0 uses
  %i.kx = load ptr, ptr %i.kr, align 8, !tbaa !12
end_hunk_1
