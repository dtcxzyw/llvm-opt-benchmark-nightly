Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FileFormat3DL?download=true
inline.NumInlined: 965
inline.NumDeleted: 419
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat13getFormatInfoERSt6vectorINS_10FormatInfoESaIS3_EE:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 2 uses
  store i32 0, ptr %i.g, align 4, !tbaa !78
  %i.h = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str, i64 noundef 5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.g ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.a
  %i.i = load i64, ptr %i.e, align 8, !tbaa !20
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, i64 noundef %i.i, ptr noundef nonnull @.str.1, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit7 unwind label %bb.g ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  store i32 3, ptr %i.f, align 8, !tbaa !77
  store i32 1, ptr %i.g, align 4, !tbaa !78
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %.not.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit7
  invoke void @_ZN16OpenColorIO_v2_510FormatInfoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store ptr %i.p, ptr %i.k, align 8, !tbaa !24
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
  %i.r = load i64, ptr %i.q, align 8, !tbaa !20
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %i.r, ptr noundef nonnull @.str.2, i64 noundef 6)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit10 unwind label %bb.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit10: ; preds = %bb.d
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !24   ; 3 uses
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !25
  %.not.i11 = icmp eq ptr %i.t, %i.u
  br i1 %.not.i11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit10
  invoke void @_ZN16OpenColorIO_v2_510FormatInfoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %i.t, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %.noexc12 unwind label %bb.i

.noexc12:                                         ; preds = %bb.e
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  store ptr %i.w, ptr %i.k, align 8, !tbaa !24
  br label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit14

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit10
  invoke void @_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit14 unwind label %bb.i

_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit14: ; preds = %.noexc12, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit14
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !21
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ad = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !21
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #24
  br label %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit

_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !26  ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.d
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15: ; preds = %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit
  %i.ak = load i64, ptr %i.d, align 8, !tbaa !21
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16: ; preds = %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15
  %i.am = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.a
  br i1 %i.an, label %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !21
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
  %14 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 11 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 11 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 11 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %2, align 8, !tbaa !13
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35
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
  %i.r = phi ptr [ %i.f, %.lr.ph.lr.ph ], [ %i.jl, %.outer ]
  %.0119.ph743 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %i.ae, %.outer ]
  %.sroa.0489.0.ph742 = phi ptr [ null, %.lr.ph.lr.ph ], [ %.sroa.0489.2, %.outer ] ; 13 uses
  %.sroa.17.0.ph741 = phi ptr [ null, %.lr.ph.lr.ph ], [ %.sroa.17.2, %.outer ] ; 5 uses
  %.0512.ph740 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %.1513, %.outer ] ; 4 uses
  %.sroa.32.0.ph739 = phi ptr [ null, %.lr.ph.lr.ph ], [ %.sroa.32.2, %.outer ] ; 16 uses
  %.sroa.18.0.ph738 = phi ptr [ null, %.lr.ph.lr.ph ], [ %.sroa.18.1, %.outer ] ; 7 uses
  %.sroa.0464.0.ph737 = phi ptr [ null, %.lr.ph.lr.ph ], [ %.sroa.0464.2, %.outer ] ; 18 uses
  %.sroa.27.0.ph736 = phi ptr [ null, %.lr.ph.lr.ph ], [ %.sroa.27.2, %.outer ] ; 12 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.s = phi ptr [ %i.r, %.lr.ph ], [ %i.dn, %.backedge ]
  %.0119714 = phi i32 [ %.0119.ph743, %.lr.ph ], [ %i.ae, %.backedge ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 240
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !102  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc unwind label %.loopexit.split-lp549

.noexc:                                           ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load i8, ptr %i.v, align 8, !tbaa !108
  %.not.i1.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 67
  %i.y = load i8, ptr %i.x, align 1, !tbaa !21
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.u)
          to label %.noexc190 unwind label %.loopexit548.loopexit

.noexc190:                                        ; preds = %bb.e
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = invoke noundef signext i8 %i.ab(ptr noundef nonnull align 8 dereferenceable(570) %i.u, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit548.loopexit, !inline_history !79

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc190, %bb.d
  %.0.i.i.i = phi i8 [ %i.y, %bb.d ], [ %i.ac, %.noexc190 ]
  %i.ad = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.b, i64 noundef 4096, i8 noundef signext %.0.i.i.i)
          to label %_ZNSi7getlineEPcl.exit unwind label %.loopexit548.loopexit ; 0 uses

_ZNSi7getlineEPcl.exit:                           ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ae = add nsw i32 %.0119714, 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %i.j, ptr %9, align 8, !tbaa !17
  %i.af = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.af, ptr %i.a, align 8, !tbaa !37
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSi7getlineEPcl.exit
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc193 unwind label %bb.m  ; 2 uses

.noexc193:                                        ; preds = %.noexc.i
  store ptr %i.ah, ptr %9, align 8, !tbaa !26
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !37
  store i64 %i.ai, ptr %i.j, align 8, !tbaa !21
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc193, %_ZNSi7getlineEPcl.exit
  %i.aj = phi ptr [ %i.ah, %.noexc193 ], [ %i.j, %_ZNSi7getlineEPcl.exit ] ; 2 uses
  switch i64 %i.af, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ak = load i8, ptr %i.b, align 16, !tbaa !21
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !21
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr nonnull align 16 %i.b, i64 %i.af, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.al = load i64, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  store i64 %i.al, ptr %i.k, align 8, !tbaa !20
  %i.am = load ptr, ptr %9, align 8, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  store i8 0, ptr %i.an, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  invoke void @_ZN11StringUtils4TrimENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 %9)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN11StringUtils18SplitByWhiteSpacesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.8") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %5, align 16, !tbaa !40   ; 5 uses
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !41  ; 2 uses
  %i.aq = load ptr, ptr %i.m, align 16, !tbaa !42
  %i.ar = load <2 x ptr>, ptr %7, align 16, !tbaa !109
  store <2 x ptr> %i.ar, ptr %5, align 16, !tbaa !109
  %i.as = load ptr, ptr %i.o, align 16, !tbaa !42
  store ptr %i.as, ptr %i.m, align 16, !tbaa !42
  %.not4.i.i.i.i.i = icmp eq ptr %i.ao, %i.ap
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ay, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.ao, %bb.j ] ; 3 uses
  %i.at = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !26 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !21
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
  %i.bc = load ptr, ptr %7, align 16, !tbaa !40   ; 3 uses
  %i.bd = load ptr, ptr %i.n, align 8, !tbaa !41  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bc, %i.bd
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.bc, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %i.be = load ptr, ptr %.05.i.i.i, align 8, !tbaa !26 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !21
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i194 = icmp eq ptr %i.bj, %i.bd
  br i1 %.not.i.i.i194, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 16, !tbaa !40
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit
  %i.bk = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bc, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bl = load ptr, ptr %i.o, align 16, !tbaa !42
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.l
  %i.bp = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.p
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.br = load i64, ptr %i.p, align 8, !tbaa !21
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bt = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.j
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bv = load i64, ptr %i.j, align 8, !tbaa !21
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.bx = load ptr, ptr %5, align 16, !tbaa !109  ; 3 uses
  %i.by = load ptr, ptr %i.l, align 8, !tbaa !109
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %.backedge, label %bb.p

.loopexit548.loopexit:                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc190, %bb.e, %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit204.thread
  %lpad.loopexit555 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit548

.loopexit548.loopexit.split-lp:                   ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i266, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i256, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i246
  %.sroa.0464.1.ph.ph = phi ptr [ %.sroa.0464.5, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i256 ], [ %.sroa.0464.0.ph737, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i246 ], [ %.sroa.0464.6, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i266 ]
  %.sroa.32.1.ph.ph = phi ptr [ %.sroa.32.5, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i256 ], [ %.sroa.32.0.ph739, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i246 ], [ %.sroa.18.3, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i266 ]
  %lpad.loopexit.split-lp556 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit548

.loopexit.split-lp549:                            ; preds = %bb.c, %bb.bm, %bb.br
  %.sroa.0464.1.ph550 = phi ptr [ %.sroa.0464.6, %bb.br ], [ %.sroa.0464.5, %bb.bm ], [ %.sroa.0464.0.ph737, %bb.c ]
  %.sroa.32.1.ph551 = phi ptr [ %.sroa.18.3, %bb.br ], [ %.sroa.32.5, %bb.bm ], [ %.sroa.32.0.ph739, %bb.c ]
  %lpad.loopexit.split-lp553 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit548

bb.m:                                             ; preds = %.noexc.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203

bb.n:                                             ; preds = %bb.h
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200

bb.o:                                             ; preds = %bb.i
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.p
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198: ; preds = %bb.o
  %i.cf = load i64, ptr %i.p, align 8, !tbaa !21
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198, %bb.n
  %.pn160 = phi { ptr, i32 } [ %i.cb, %bb.n ], [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198 ], [ %i.cc, %bb.o ] ; 2 uses
  %i.ch = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.j
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200
  %i.cj = load i64, ptr %i.j, align 8, !tbaa !21
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201, %bb.m
  %.pn160.pn = phi { ptr, i32 } [ %i.ca, %bb.m ], [ %.pn160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201 ], [ %.pn160, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.loopexit548

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !20
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit204.thread, label %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit

_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit: ; preds = %bb.p
  %i.co = load ptr, ptr %i.bx, align 8, !tbaa !26
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !21
  switch i8 %i.cp, label %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit204.thread [
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
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit207 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit207: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.6, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit207
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef %i.ae)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209
  %i.cu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull @.str.7, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211: ; preds = %bb.s
  %i.cv = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #23
  %i.cw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %i.b, i64 noundef %i.cv)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit213 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit213: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.8, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit213
  %i.cy = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(112) %10)
          to label %bb.t unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.thread

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215
  %i.cz = load ptr, ptr %11, align 8, !tbaa !26
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef %i.cz)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr nonnull %i.cy, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
          to label %bb.fo unwind label %bb.x

bb.v:                                             ; preds = %bb.q
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.w:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit213, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211, %bb.s, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit207, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.r, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.y

bb.x:                                             ; preds = %bb.u, %bb.t
  %.073 = phi i1 [ false, %bb.u ], [ true, %bb.t ] ; 2 uses
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.de = load ptr, ptr %11, align 8, !tbaa !26   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216: ; preds = %bb.x
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !21
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br i1 %.073, label %bb.y, label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br i1 %.073, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218
  %.pn175516 = phi { ptr, i32 } [ %i.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.thread ], [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218 ], [ %i.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216 ]
  call void @__cxa_free_exception(ptr %i.cy) #23
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, %bb.y, %bb.w
  %.pn175.pn = phi { ptr, i32 } [ %.pn175516, %bb.y ], [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218 ], [ %i.db, %bb.w ], [ %i.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10) #23
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.v
  %.pn175.pn.pn = phi { ptr, i32 } [ %.pn175.pn, %bb.z ], [ %i.da, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.loopexit548

_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit204.thread: ; preds = %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit, %bb.p
  %i.dj = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_517StringVecToIntVecERSt6vectorIiSaIiEERKS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.ab unwind label %.loopexit548.loopexit

bb.ab:                                            ; preds = %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit204.thread
  br i1 %i.dj, label %bb.ac, label %.backedge

.backedge:                                        ; preds = %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197
  %i.dk = load ptr, ptr %2, align 8, !tbaa !13
  %i.dl = getelementptr i8, ptr %i.dk, i64 -24
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds i8, ptr %2, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !35
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.b, label %.outer._crit_edge.loopexit, !llvm.loop !80

bb.ac:                                            ; preds = %bb.ab
  %i.dr = load ptr, ptr %i.q, align 8, !tbaa !111 ; 3 uses
  %i.ds = load ptr, ptr %6, align 8, !tbaa !112   ; 7 uses
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du                    ; 2 uses
  %i.dw = icmp ugt i64 %i.dv, 12
  br i1 %i.dw, label %bb.ad, label %bb.au

bb.ad:                                            ; preds = %bb.ac
  %i.dx = icmp eq ptr %.sroa.0489.0.ph742, %.sroa.17.0.ph741
  br i1 %i.dx, label %.preheader546, label %bb.aj

.preheader546:                                    ; preds = %bb.ad
  %.not = icmp eq ptr %i.dr, %i.ds
  br i1 %.not, label %.outer, label %.lr.ph732

.lr.ph732:                                        ; preds = %.preheader546, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.dy = phi ptr [ %i.es, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.ds, %.preheader546 ] ; 2 uses
  %i.dz = phi ptr [ %i.et, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.dr, %.preheader546 ]
  %i.ea = phi i64 [ %i.ev, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ 0, %.preheader546 ]
  %.072731 = phi i32 [ %i.eu, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ 0, %.preheader546 ]
  %.sroa.0489.1730 = phi ptr [ %.sroa.0489.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.sroa.0489.0.ph742, %.preheader546 ] ; 7 uses
  %.sroa.17.1729 = phi ptr [ %.sroa.17.3, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.sroa.17.0.ph741, %.preheader546 ] ; 6 uses
  %.sroa.27.1728 = phi ptr [ %.sroa.27.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.sroa.27.0.ph736, %.preheader546 ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.ea ; 2 uses
  %.not.i = icmp eq ptr %.sroa.17.1729, %.sroa.27.1728
  br i1 %.not.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph732
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !44
  store i32 %i.ec, ptr %.sroa.17.1729, align 4, !tbaa !44
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.af:                                            ; preds = %.lr.ph732
  %i.ed = ptrtoint ptr %.sroa.17.1729 to i64
  %i.ee = ptrtoint ptr %.sroa.0489.1730 to i64
  %i.ef = sub i64 %i.ed, %i.ee                    ; 6 uses
  %i.eg = icmp eq i64 %i.ef, 9223372036854775804
  br i1 %i.eg, label %bb.ag, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #25
          to label %.noexc220 unwind label %.loopexit.split-lp

.noexc220:                                        ; preds = %bb.ag
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.af
  %i.eh = ashr exact i64 %i.ef, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.eh, i64 1)
  %i.ei = add nsw i64 %.sroa.speculated.i.i.i, %i.eh ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %i.eh
  %i.ek = call i64 @llvm.umin.i64(i64 %i.ei, i64 2305843009213693951)
  %i.el = select i1 %i.ej, i64 2305843009213693951, i64 %i.ek ; 3 uses
  %.not.i.i.i219 = icmp ne i64 %i.el, 0
  call void @llvm.assume(i1 %.not.i.i.i219)
  %i.em = shl nuw nsw i64 %i.el, 2
  %i.en = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.em) #22
          to label %.noexc221 unwind label %.loopexit547 ; 4 uses

.noexc221:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 %i.ef ; 2 uses
  %i.ep = load i32, ptr %i.eb, align 4, !tbaa !44
  store i32 %i.ep, ptr %i.eo, align 4, !tbaa !44
  %i.eq = icmp sgt i64 %i.ef, 0
  br i1 %i.eq, label %bb.ah, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.ah:                                            ; preds = %.noexc221
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.en, ptr align 4 %.sroa.0489.1730, i64 %i.ef, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.ah, %.noexc221
  %.not.i17.i.i = icmp eq ptr %.sroa.0489.1730, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0489.1730, i64 noundef %i.ef) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.ai, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.el
  %.pre909 = load ptr, ptr %i.q, align 8, !tbaa !111
  %.pre910 = load ptr, ptr %6, align 8, !tbaa !112
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.ae
  %i.es = phi ptr [ %.pre910, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.dy, %bb.ae ] ; 3 uses
  %i.et = phi ptr [ %.pre909, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.dz, %bb.ae ] ; 2 uses
  %.sroa.27.5 = phi ptr [ %i.er, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.27.1728, %bb.ae ] ; 2 uses
  %.pn543 = phi ptr [ %i.eo, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.17.1729, %bb.ae ]
  %.sroa.0489.5 = phi ptr [ %i.en, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0489.1730, %bb.ae ] ; 2 uses
  %.sroa.17.3 = getelementptr inbounds nuw i8, ptr %.pn543, i64 4 ; 2 uses
  %i.eu = add i32 %.072731, 1                     ; 2 uses
  %i.ev = zext i32 %i.eu to i64                   ; 2 uses
  %i.ew = ptrtoint ptr %i.et to i64
  %i.ex = ptrtoint ptr %i.es to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = ashr exact i64 %i.ey, 2
  %i.fa = icmp ugt i64 %i.ez, %i.ev
  br i1 %i.fa, label %.lr.ph732, label %.outer, !llvm.loop !81

.loopexit547:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit548

.loopexit.split-lp:                               ; preds = %bb.ag
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit548

bb.aj:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %12)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.fb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.4, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223 unwind label %bb.ap ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223: ; preds = %bb.ak
  %i.fc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.9, i64 noundef 42)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit225 unwind label %bb.ap ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit225: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223
  %i.fd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.6, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit227 unwind label %bb.ap ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit227: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit225
  %i.fe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef %i.ae)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit227
  %i.ff = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, ptr noundef nonnull @.str.7, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit229 unwind label %bb.ap ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit229: ; preds = %bb.al
  %i.fg = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #23
  %i.fh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %i.b, i64 noundef %i.fg)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit232 unwind label %bb.ap ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit232: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit229
  %i.fi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.8, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234 unwind label %bb.ap ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit232
  %i.fj = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(112) %12)
          to label %bb.am unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.thread

bb.am:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234
  %i.fk = load ptr, ptr %13, align 8, !tbaa !26
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, ptr noundef %i.fk)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %bb.am
  invoke void @__cxa_throw(ptr nonnull %i.fj, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
          to label %bb.fo unwind label %bb.aq

bb.ao:                                            ; preds = %bb.aj
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ap:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit232, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit229, %bb.al, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit225, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223, %bb.ak, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit227
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.ar

bb.aq:                                            ; preds = %bb.an, %bb.am
  %.070 = phi i1 [ false, %bb.an ], [ true, %bb.am ] ; 2 uses
  %i.fo = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fp = load ptr, ptr %13, align 8, !tbaa !26   ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fr = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235: ; preds = %bb.aq
  %i.fs = load i64, ptr %i.fq, align 8, !tbaa !21
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.ft) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br i1 %.070, label %bb.ar, label %bb.as

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br i1 %.070, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237
  %.pn171519 = phi { ptr, i32 } [ %i.fn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.thread ], [ %i.fo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237 ], [ %i.fo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235 ]
  call void @__cxa_free_exception(ptr %i.fj) #23
  br label %bb.as

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, %bb.ar, %bb.ap
  %.pn171.pn = phi { ptr, i32 } [ %.pn171519, %bb.ar ], [ %i.fo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237 ], [ %i.fm, %bb.ap ], [ %i.fo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %12) #23
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ao
  %.pn171.pn.pn = phi { ptr, i32 } [ %.pn171.pn, %bb.as ], [ %i.fl, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %.loopexit548

bb.au:                                            ; preds = %bb.ac
  %i.fu = icmp eq i64 %i.dv, 12
  br i1 %i.fu, label %bb.av, label %bb.bu

bb.av:                                            ; preds = %bb.au
  %i.fv = ptrtoint ptr %.sroa.18.0.ph738 to i64
  %i.fw = ptrtoint ptr %.sroa.0464.0.ph737 to i64 ; 2 uses
  %i.fx = sub i64 %i.fv, %i.fw                    ; 4 uses
  %i.fy = ashr exact i64 %i.fx, 2                 ; 3 uses
  %i.fz = icmp ugt i64 %i.fy, 6440067
  br i1 %i.fz, label %bb.aw, label %bb.bg

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %14)
          to label %bb.ax unwind label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.ga = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @.str.4, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit239 unwind label %bb.bb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit239: ; preds = %bb.ax
  %i.gb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @.str.10, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit241 unwind label %bb.bb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit241: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit239
  %i.gc = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(112) %14)
          to label %bb.ay unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244.thread

bb.ay:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit241
  %i.gd = load ptr, ptr %15, align 8, !tbaa !26
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.gc, ptr noundef %i.gd)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %bb.ay
  invoke void @__cxa_throw(ptr nonnull %i.gc, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
          to label %bb.fo unwind label %bb.bc

bb.ba:                                            ; preds = %bb.aw
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit239, %bb.ax
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit241
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.bd

bb.bc:                                            ; preds = %bb.az, %bb.ay
  %.068 = phi i1 [ false, %bb.az ], [ true, %bb.ay ] ; 2 uses
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.gi = load ptr, ptr %15, align 8, !tbaa !26   ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242: ; preds = %bb.bc
  %i.gl = load i64, ptr %i.gj, align 8, !tbaa !21
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gm) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br i1 %.068, label %bb.bd, label %bb.be

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244: ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br i1 %.068, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244
  %.pn167522 = phi { ptr, i32 } [ %i.gg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244.thread ], [ %i.gh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244 ], [ %i.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242 ]
  call void @__cxa_free_exception(ptr %i.gc) #23
  br label %bb.be

bb.be:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, %bb.bd, %bb.bb
  %.pn167.pn = phi { ptr, i32 } [ %.pn167522, %bb.bd ], [ %i.gh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244 ], [ %i.gf, %bb.bb ], [ %i.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %14) #23
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.ba
  %.pn167.pn.pn = phi { ptr, i32 } [ %.pn167.pn, %bb.be ], [ %i.ge, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %.loopexit548

bb.bg:                                            ; preds = %bb.av
  %.not.i245 = icmp eq ptr %.sroa.18.0.ph738, %.sroa.32.0.ph739
  br i1 %.not.i245, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i246, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gn = load i32, ptr %i.ds, align 4, !tbaa !44
  store i32 %i.gn, ptr %.sroa.18.0.ph738, align 4, !tbaa !44
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit254

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i246: ; preds = %bb.bg
  %.sroa.speculated.i.i.i247 = call i64 @llvm.umax.i64(i64 %i.fy, i64 1)
  %i.go = add nuw nsw i64 %.sroa.speculated.i.i.i247, %i.fy ; 2 uses
  %i.gp = shl nuw nsw i64 %i.go, 2
  %i.gq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gp) #22
          to label %.noexc253 unwind label %.loopexit548.loopexit.split-lp ; 4 uses

.noexc253:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i246
  %i.gr = getelementptr inbounds i8, ptr %i.gq, i64 %i.fx ; 2 uses
  %i.gs = load i32, ptr %i.ds, align 4, !tbaa !44
  store i32 %i.gs, ptr %i.gr, align 4, !tbaa !44
  %i.gt = icmp sgt i64 %i.fx, 0
  br i1 %i.gt, label %bb.bi, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i249

bb.bi:                                            ; preds = %.noexc253
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gq, ptr align 4 %.sroa.0464.0.ph737, i64 %i.fx, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i249

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i249: ; preds = %bb.bi, %.noexc253
  %.not.i17.i.i250 = icmp eq ptr %.sroa.0464.0.ph737, null
  br i1 %.not.i17.i.i250, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i251, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i249
  %i.gu = ptrtoint ptr %.sroa.32.0.ph739 to i64
  %i.gv = sub i64 %i.gu, %i.fw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0464.0.ph737, i64 noundef %i.gv) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i251

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i251: ; preds = %bb.bj, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i249
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.go
  %.pre = load ptr, ptr %6, align 8, !tbaa !112
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit254

_ZNSt6vectorIiSaIiEE9push_backERKi.exit254:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i251, %bb.bh
  %i.gx = phi ptr [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i251 ], [ %i.ds, %bb.bh ] ; 2 uses
  %.sroa.0464.5 = phi ptr [ %i.gq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i251 ], [ %.sroa.0464.0.ph737, %bb.bh ] ; 7 uses
  %.pn = phi ptr [ %i.gr, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i251 ], [ %.sroa.18.0.ph738, %bb.bh ] ; 2 uses
  %.sroa.32.5 = phi ptr [ %i.gw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i251 ], [ %.sroa.32.0.ph739, %bb.bh ] ; 5 uses
  %.sroa.18.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 4 ; 2 uses
  %.not.i255 = icmp eq ptr %.sroa.18.2, %.sroa.32.5
  br i1 %.not.i255, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit254
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !44
  store i32 %i.gz, ptr %.sroa.18.2, align 4, !tbaa !44
  %i.ha = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit264

bb.bl:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit254
  %i.hb = ptrtoint ptr %.sroa.32.5 to i64
  %i.hc = ptrtoint ptr %.sroa.0464.5 to i64
  %i.hd = sub i64 %i.hb, %i.hc                    ; 6 uses
  %i.he = icmp eq i64 %i.hd, 9223372036854775804
  br i1 %i.he, label %bb.bm, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i256

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #25
          to label %.noexc262 unwind label %.loopexit.split-lp549

.noexc262:                                        ; preds = %bb.bm
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i256: ; preds = %bb.bl
  %i.hf = ashr exact i64 %i.hd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i257 = call i64 @llvm.umax.i64(i64 %i.hf, i64 1)
  %i.hg = add nsw i64 %.sroa.speculated.i.i.i257, %i.hf ; 2 uses
  %i.hh = icmp ult i64 %i.hg, %i.hf
  %i.hi = call i64 @llvm.umin.i64(i64 %i.hg, i64 2305843009213693951)
  %i.hj = select i1 %i.hh, i64 2305843009213693951, i64 %i.hi ; 3 uses
  %.not.i.i.i258 = icmp ne i64 %i.hj, 0
  call void @llvm.assume(i1 %.not.i.i.i258)
  %i.hk = shl nuw nsw i64 %i.hj, 2
  %i.hl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hk) #22
          to label %.noexc263 unwind label %.loopexit548.loopexit.split-lp ; 4 uses

.noexc263:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i256
  %i.hm = getelementptr inbounds i8, ptr %i.hl, i64 %i.hd ; 2 uses
  %i.hn = load i32, ptr %i.gy, align 4, !tbaa !44
  store i32 %i.hn, ptr %i.hm, align 4, !tbaa !44
  %i.ho = icmp sgt i64 %i.hd, 0
  br i1 %i.ho, label %bb.bn, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i259

bb.bn:                                            ; preds = %.noexc263
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hl, ptr align 4 %.sroa.0464.5, i64 %i.hd, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i259

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i259: ; preds = %bb.bn, %.noexc263
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  %.not.i17.i.i260 = icmp eq ptr %.sroa.0464.5, null
  br i1 %.not.i17.i.i260, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i261, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i259
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0464.5, i64 noundef %i.hd) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i261

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i261: ; preds = %bb.bo, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i259
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.hj
  %.pre906 = load ptr, ptr %6, align 8, !tbaa !112
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit264

_ZNSt6vectorIiSaIiEE9push_backERKi.exit264:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i261, %bb.bk
  %i.hr = phi ptr [ %.pre906, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i261 ], [ %i.gx, %bb.bk ] ; 2 uses
  %.sroa.0464.6 = phi ptr [ %i.hl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i261 ], [ %.sroa.0464.5, %bb.bk ] ; 7 uses
  %.sroa.18.3 = phi ptr [ %i.hp, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i261 ], [ %i.ha, %bb.bk ] ; 6 uses
  %.sroa.32.6 = phi ptr [ %i.hq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i261 ], [ %.sroa.32.5, %bb.bk ] ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 2 uses
  %.not.i265 = icmp eq ptr %.sroa.18.3, %.sroa.32.6
  br i1 %.not.i265, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit264
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !44 ; 2 uses
  store i32 %i.ht, ptr %.sroa.18.3, align 4, !tbaa !44
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit274

bb.bq:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit264
  %i.hu = ptrtoint ptr %.sroa.18.3 to i64
  %i.hv = ptrtoint ptr %.sroa.0464.6 to i64
  %i.hw = sub i64 %i.hu, %i.hv                    ; 6 uses
  %i.hx = icmp eq i64 %i.hw, 9223372036854775804
  br i1 %i.hx, label %bb.br, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i266

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #25
          to label %.noexc272 unwind label %.loopexit.split-lp549

.noexc272:                                        ; preds = %bb.br
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i266: ; preds = %bb.bq
  %i.hy = ashr exact i64 %i.hw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i267 = call i64 @llvm.umax.i64(i64 %i.hy, i64 1)
  %i.hz = add nsw i64 %.sroa.speculated.i.i.i267, %i.hy ; 2 uses
  %i.ia = icmp ult i64 %i.hz, %i.hy
  %i.ib = call i64 @llvm.umin.i64(i64 %i.hz, i64 2305843009213693951)
  %i.ic = select i1 %i.ia, i64 2305843009213693951, i64 %i.ib ; 3 uses
  %.not.i.i.i268 = icmp ne i64 %i.ic, 0
  call void @llvm.assume(i1 %.not.i.i.i268)
  %i.id = shl nuw nsw i64 %i.ic, 2
  %i.ie = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.id) #22
          to label %.noexc273 unwind label %.loopexit548.loopexit.split-lp ; 4 uses

.noexc273:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i266
  %i.if = getelementptr inbounds i8, ptr %i.ie, i64 %i.hw ; 2 uses
  %i.ig = load i32, ptr %i.hs, align 4, !tbaa !44
  store i32 %i.ig, ptr %i.if, align 4, !tbaa !44
  %i.ih = icmp sgt i64 %i.hw, 0
  br i1 %i.ih, label %bb.bs, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i269

bb.bs:                                            ; preds = %.noexc273
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ie, ptr align 4 %.sroa.0464.6, i64 %i.hw, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i269

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i269: ; preds = %bb.bs, %.noexc273
  %.not.i17.i.i270 = icmp eq ptr %.sroa.0464.6, null
  br i1 %.not.i17.i.i270, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i271, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i269
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0464.6, i64 noundef %i.hw) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i271

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i271: ; preds = %bb.bt, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i269
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.ic
  %.pre907 = load ptr, ptr %6, align 8, !tbaa !112 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre907, i64 8
  %.pre908 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !44
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit274

_ZNSt6vectorIiSaIiEE9push_backERKi.exit274:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i271, %bb.bp
  %i.ij = phi i32 [ %.pre908, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i271 ], [ %i.ht, %bb.bp ]
  %i.ik = phi ptr [ %.pre907, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i271 ], [ %i.hr, %bb.bp ] ; 3 uses
  %.sroa.0464.7 = phi ptr [ %i.ie, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i271 ], [ %.sroa.0464.6, %bb.bp ]
  %.pn542 = phi ptr [ %i.if, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i271 ], [ %.sroa.18.3, %bb.bp ]
  %.sroa.32.7 = phi ptr [ %i.ii, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i271 ], [ %.sroa.32.6, %bb.bp ]
  %.sroa.18.4 = getelementptr inbounds nuw i8, ptr %.pn542, i64 4
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !44
  %.sroa.speculated454 = call i32 @llvm.smax.i32(i32 %.0512.ph740, i32 %i.il)
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 4
  %i.in = load i32, ptr %i.im, align 4, !tbaa !44
  %.sroa.speculated451 = call i32 @llvm.smax.i32(i32 %.sroa.speculated454, i32 %i.in)
  %.sroa.speculated448 = call i32 @llvm.smax.i32(i32 %.sroa.speculated451, i32 %i.ij)
  br label %.outer

bb.bu:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %16)
          to label %bb.bv unwind label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  %i.io = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull @.str.4, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit278 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit278: ; preds = %bb.bv
  %i.ip = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull @.str.11, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit280 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit280: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit278
  %i.iq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull @.str.6, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit282 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit282: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit280
end_hunk_0
