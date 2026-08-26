Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FileFormat3DL?download=true
inline.NumInlined: 965
inline.NumDeleted: 419
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat13getFormatInfoERSt6vectorINS_10FormatInfoESaIS3_EE:bb.a
  store i32 0, ptr %i.f, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 2 uses
  store i32 0, ptr %i.g, align 4, !tbaa !22
  %i.h = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str, i64 noundef 5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.g ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.a
  %i.i = load i64, ptr %i.e, align 8, !tbaa !14
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, i64 noundef %i.i, ptr noundef nonnull @.str.1, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit7 unwind label %bb.g ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  store i32 3, ptr %i.f, align 8, !tbaa !18
  store i32 1, ptr %i.g, align 4, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26
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
  %i.r = load i64, ptr %i.q, align 8, !tbaa !14
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %i.r, ptr noundef nonnull @.str.2, i64 noundef 6)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit10 unwind label %bb.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit10: ; preds = %bb.d
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !23   ; 3 uses
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !26
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
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !27   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit14
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !17
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE9push_backERKS1_.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ad = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !17
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #24
  br label %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit

_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !27  ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.d
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15: ; preds = %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit
  %i.ak = load i64, ptr %i.d, align 8, !tbaa !17
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16: ; preds = %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15
  %i.am = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.a
  br i1 %i.an, label %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !17
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
  %i.c = load ptr, ptr %2, align 8, !tbaa !8
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !28
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
  %i.r = phi ptr [ %i.f, %.lr.ph.lr.ph ], [ %i.jk, %.outer ]
  %.0119.ph743 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %i.ae, %.outer ]
  %.sroa.0489.0.ph742 = phi ptr [ null, %.lr.ph.lr.ph ], [ %.sroa.0489.2, %.outer ] ; 13 uses
  %.sroa.17.0.ph741 = phi ptr [ null, %.lr.ph.lr.ph ], [ %.sroa.17.2, %.outer ] ; 5 uses
  %.sroa.27.0.ph739 = phi ptr [ null, %.lr.ph.lr.ph ], [ %.sroa.27.2, %.outer ] ; 12 uses
  %.sroa.32.0.ph739 = phi ptr [ null, %.lr.ph.lr.ph ], [ %.sroa.32.2, %.outer ] ; 19 uses
  %.sroa.18.0.ph738 = phi ptr [ null, %.lr.ph.lr.ph ], [ %.sroa.18.1, %.outer ] ; 9 uses
  %.0512.ph736 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %.1, %.outer ] ; 4 uses
  %.sroa.27.0.ph736 = phi ptr [ null, %.lr.ph.lr.ph ], [ %.sroa.27.2.a, %.outer ] ; 14 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.s = phi ptr [ %i.r, %.lr.ph ], [ %i.dn, %.backedge ]
  %.0119714 = phi i32 [ %.0119.ph743, %.lr.ph ], [ %i.ae, %.backedge ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 240
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !37   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc unwind label %.loopexit.split-lp549

.noexc:                                           ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load i8, ptr %i.v, align 8, !tbaa !45
  %.not.i1.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 67
  %i.y = load i8, ptr %i.x, align 1, !tbaa !17
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.u)
          to label %.noexc190 unwind label %.loopexit548.loopexit

.noexc190:                                        ; preds = %bb.e
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = invoke noundef signext i8 %i.ab(ptr noundef nonnull align 8 dereferenceable(570) %i.u, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit548.loopexit, !inline_history !51

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc190, %bb.d
  %.0.i.i.i = phi i8 [ %i.y, %bb.d ], [ %i.ac, %.noexc190 ]
  %i.ad = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.b, i64 noundef 4096, i8 noundef signext %.0.i.i.i)
          to label %_ZNSi7getlineEPcl.exit unwind label %.loopexit548.loopexit ; 0 uses

_ZNSi7getlineEPcl.exit:                           ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ae = add nsw i32 %.0119714, 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %i.j, ptr %9, align 8, !tbaa !10
  %i.af = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.af, ptr %i.a, align 8, !tbaa !52
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSi7getlineEPcl.exit
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc193 unwind label %bb.m  ; 2 uses

.noexc193:                                        ; preds = %.noexc.i
  store ptr %i.ah, ptr %9, align 8, !tbaa !27
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !52
  store i64 %i.ai, ptr %i.j, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc193, %_ZNSi7getlineEPcl.exit
  %i.aj = phi ptr [ %i.ah, %.noexc193 ], [ %i.j, %_ZNSi7getlineEPcl.exit ] ; 2 uses
  switch i64 %i.af, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ak = load i8, ptr %i.b, align 16, !tbaa !17
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !17
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr nonnull align 16 %i.b, i64 %i.af, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.al = load i64, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  store i64 %i.al, ptr %i.k, align 8, !tbaa !14
  %i.am = load ptr, ptr %9, align 8, !tbaa !27
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  store i8 0, ptr %i.an, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  invoke void @_ZN11StringUtils4TrimENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 %9)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN11StringUtils18SplitByWhiteSpacesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.8") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %5, align 16, !tbaa !53   ; 5 uses
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !56  ; 2 uses
  %i.aq = load ptr, ptr %i.m, align 16, !tbaa !57
  %i.ar = load <2 x ptr>, ptr %7, align 16, !tbaa !58
  store <2 x ptr> %i.ar, ptr %5, align 16, !tbaa !58
  %i.as = load ptr, ptr %i.o, align 16, !tbaa !57
  store ptr %i.as, ptr %i.m, align 16, !tbaa !57
  %.not4.i.i.i.i.i = icmp eq ptr %i.ao, %i.ap
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ay, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.ao, %bb.j ] ; 3 uses
  %i.at = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !27 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !17
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.ap
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !59

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
  %i.bc = load ptr, ptr %7, align 16, !tbaa !53   ; 3 uses
  %i.bd = load ptr, ptr %i.n, align 8, !tbaa !56  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bc, %i.bd
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.bc, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %i.be = load ptr, ptr %.05.i.i.i, align 8, !tbaa !27 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !17
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i194 = icmp eq ptr %i.bj, %i.bd
  br i1 %.not.i.i.i194, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !59

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 16, !tbaa !53
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit
  %i.bk = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bc, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bl = load ptr, ptr %i.o, align 16, !tbaa !57
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.l
  %i.bp = load ptr, ptr %8, align 8, !tbaa !27    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.p
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.br = load i64, ptr %i.p, align 8, !tbaa !17
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bt = load ptr, ptr %9, align 8, !tbaa !27    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.j
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bv = load i64, ptr %i.j, align 8, !tbaa !17
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.bx = load ptr, ptr %5, align 16, !tbaa !58   ; 3 uses
  %i.by = load ptr, ptr %i.l, align 8, !tbaa !58
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %.backedge, label %bb.p

.loopexit548.loopexit:                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc190, %bb.e, %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit204.thread
  %lpad.loopexit555 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit548

.loopexit548.loopexit.split-lp:                   ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i266, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i256, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i246
  %.sroa.0464.1.ph.ph.a = phi ptr [ %.sroa.0464.5.a, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i256 ], [ %.sroa.18.0.ph738, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i246 ], [ %.sroa.0464.6.a, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i266 ]
  %.sroa.32.1.ph.ph = phi ptr [ %.sroa.32.5, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i256 ], [ %.sroa.32.0.ph739, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i246 ], [ %.sroa.32.6, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i266 ]
  %lpad.loopexit.split-lp556 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit548

.loopexit.split-lp549:                            ; preds = %bb.c, %bb.bj, %bb.bo, %bb.bt
  %.sroa.0464.1.ph550.a = phi ptr [ %.sroa.0464.6.a, %bb.bt ], [ %.sroa.0464.5.a, %bb.bo ], [ %.sroa.18.0.ph738, %bb.bj ], [ %.sroa.27.0.ph736, %bb.c ]
  %.sroa.32.1.ph551 = phi ptr [ %.sroa.32.6, %bb.bt ], [ %.sroa.32.5, %bb.bo ], [ %.sroa.32.0.ph739, %bb.bj ], [ %.sroa.32.0.ph739, %bb.c ]
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
  %i.cd = load ptr, ptr %8, align 8, !tbaa !27    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.p
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198: ; preds = %bb.o
  %i.cf = load i64, ptr %i.p, align 8, !tbaa !17
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198, %bb.n
  %.pn160 = phi { ptr, i32 } [ %i.cb, %bb.n ], [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198 ], [ %i.cc, %bb.o ] ; 2 uses
  %i.ch = load ptr, ptr %9, align 8, !tbaa !27    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.j
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200
  %i.cj = load i64, ptr %i.j, align 8, !tbaa !17
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
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !14
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit204.thread, label %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit

_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit: ; preds = %bb.p
  %i.co = load ptr, ptr %i.bx, align 8, !tbaa !27
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !17
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
  %i.cz = load ptr, ptr %11, align 8, !tbaa !27
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef %i.cz)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr nonnull %i.cy, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
          to label %bb.fq unwind label %bb.x

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
  %i.de = load ptr, ptr %11, align 8, !tbaa !27   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216: ; preds = %bb.x
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !17
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
  %i.dk = load ptr, ptr %2, align 8, !tbaa !8
  %i.dl = getelementptr i8, ptr %i.dk, i64 -24
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds i8, ptr %2, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !28
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.b, label %.outer._crit_edge.loopexit, !llvm.loop !61

bb.ac:                                            ; preds = %bb.ab
  %i.dr = load ptr, ptr %i.q, align 8, !tbaa !62  ; 3 uses
  %i.ds = load ptr, ptr %6, align 8, !tbaa !64    ; 7 uses
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
  %.sroa.27.1728 = phi ptr [ %.sroa.27.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.sroa.27.0.ph739, %.preheader546 ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.ea ; 2 uses
  %.not.i = icmp eq ptr %.sroa.17.1729, %.sroa.27.1728
  br i1 %.not.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph732
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !65
  store i32 %i.ec, ptr %.sroa.17.1729, align 4, !tbaa !65
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
          to label %.noexc221 unwind label %.loopexit547.a ; 4 uses

.noexc221:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 %i.ef ; 2 uses
  %i.ep = load i32, ptr %i.eb, align 4, !tbaa !65
  store i32 %i.ep, ptr %i.eo, align 4, !tbaa !65
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
  %.pre909.a = load ptr, ptr %i.q, align 8, !tbaa !62
  %.pre910.a = load ptr, ptr %6, align 8, !tbaa !64
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.ae
  %i.es = phi ptr [ %.pre910.a, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.dy, %bb.ae ] ; 3 uses
  %i.et = phi ptr [ %.pre909.a, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.dz, %bb.ae ] ; 2 uses
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
  br i1 %i.fa, label %.lr.ph732, label %.outer, !llvm.loop !66

.loopexit547.a:                                   ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
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
  %i.fk = load ptr, ptr %13, align 8, !tbaa !27
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, ptr noundef %i.fk)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %bb.am
  invoke void @__cxa_throw(ptr nonnull %i.fj, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
          to label %bb.fq unwind label %bb.aq

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
  %i.fp = load ptr, ptr %13, align 8, !tbaa !27   ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fr = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235: ; preds = %bb.aq
  %i.fs = load i64, ptr %i.fq, align 8, !tbaa !17
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
  br i1 %i.fu, label %bb.av, label %bb.bw

bb.av:                                            ; preds = %bb.au
  %i.fv = ptrtoint ptr %.sroa.18.0.ph738 to i64
  %i.fw = ptrtoint ptr %.sroa.32.0.ph739 to i64
  %i.fx = sub i64 %i.fv, %i.fw                    ; 6 uses
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
  %i.gd = load ptr, ptr %15, align 8, !tbaa !27
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.gc, ptr noundef %i.gd)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %bb.ay
  invoke void @__cxa_throw(ptr nonnull %i.gc, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
          to label %bb.fq unwind label %bb.bc

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
  %i.gi = load ptr, ptr %15, align 8, !tbaa !27   ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242: ; preds = %bb.bc
  %i.gl = load i64, ptr %i.gj, align 8, !tbaa !17
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
  %.not.i245 = icmp eq ptr %.sroa.18.0.ph738, %.sroa.27.0.ph736
  br i1 %.not.i245, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gn = load i32, ptr %i.ds, align 4, !tbaa !65
  store i32 %i.gn, ptr %.sroa.18.0.ph738, align 4, !tbaa !65
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit254

bb.bi:                                            ; preds = %bb.bg
  %i.go = icmp eq i64 %i.fx, 9223372036854775804
  br i1 %i.go, label %bb.bj, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i246

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #25
          to label %.noexc252 unwind label %.loopexit.split-lp549

.noexc252:                                        ; preds = %bb.bj
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i246: ; preds = %bb.bi
  %.sroa.speculated.i.i.i247 = call i64 @llvm.umax.i64(i64 %i.fy, i64 1)
  %i.gp = add nuw nsw i64 %.sroa.speculated.i.i.i247, %i.fy ; 2 uses
  %i.gq = shl nuw nsw i64 %i.gp, 2
  %i.gr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gq) #22
          to label %.noexc253 unwind label %.loopexit548.loopexit.split-lp ; 4 uses

.noexc253:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i246
  %i.gs = getelementptr inbounds i8, ptr %i.gr, i64 %i.fx ; 2 uses
  %i.gt = load i32, ptr %i.ds, align 4, !tbaa !65
  store i32 %i.gt, ptr %i.gs, align 4, !tbaa !65
  %i.gu = icmp sgt i64 %i.fx, 0
  br i1 %i.gu, label %bb.bk, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i249

bb.bk:                                            ; preds = %.noexc253
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gr, ptr align 4 %.sroa.32.0.ph739, i64 %i.fx, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i249

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i249: ; preds = %bb.bk, %.noexc253
  %.not.i17.i.i250 = icmp eq ptr %.sroa.32.0.ph739, null
  br i1 %.not.i17.i.i250, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i251, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i249
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.32.0.ph739, i64 noundef %i.fx) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i251

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i251: ; preds = %bb.bl, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i249
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.gp
  %.pre = load ptr, ptr %6, align 8, !tbaa !64
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit254

_ZNSt6vectorIiSaIiEE9push_backERKi.exit254:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i251, %bb.bh
  %i.gw = phi ptr [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i251 ], [ %i.ds, %bb.bh ] ; 2 uses
  %.sroa.0464.5.a = phi ptr [ %i.gv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i251 ], [ %.sroa.27.0.ph736, %bb.bh ] ; 5 uses
  %.pn = phi ptr [ %i.gs, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i251 ], [ %.sroa.18.0.ph738, %bb.bh ] ; 2 uses
  %.sroa.32.5 = phi ptr [ %i.gr, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i251 ], [ %.sroa.32.0.ph739, %bb.bh ] ; 7 uses
  %.sroa.18.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 4 ; 2 uses
  %.not.i255 = icmp eq ptr %.sroa.18.2, %.sroa.0464.5.a
  br i1 %.not.i255, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit254
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !65
  store i32 %i.gy, ptr %.sroa.18.2, align 4, !tbaa !65
  %i.gz = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit264

bb.bn:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit254
  %i.ha = ptrtoint ptr %.sroa.0464.5.a to i64
  %i.hb = ptrtoint ptr %.sroa.32.5 to i64
  %i.hc = sub i64 %i.ha, %i.hb                    ; 6 uses
  %i.hd = icmp eq i64 %i.hc, 9223372036854775804
  br i1 %i.hd, label %bb.bo, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i256

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #25
          to label %.noexc262 unwind label %.loopexit.split-lp549

.noexc262:                                        ; preds = %bb.bo
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i256: ; preds = %bb.bn
  %i.he = ashr exact i64 %i.hc, 2                 ; 3 uses
  %.sroa.speculated.i.i.i257 = call i64 @llvm.umax.i64(i64 %i.he, i64 1)
  %i.hf = add nsw i64 %.sroa.speculated.i.i.i257, %i.he ; 2 uses
  %i.hg = icmp ult i64 %i.hf, %i.he
  %i.hh = call i64 @llvm.umin.i64(i64 %i.hf, i64 2305843009213693951)
  %i.hi = select i1 %i.hg, i64 2305843009213693951, i64 %i.hh ; 3 uses
  %.not.i.i.i258 = icmp ne i64 %i.hi, 0
  call void @llvm.assume(i1 %.not.i.i.i258)
  %i.hj = shl nuw nsw i64 %i.hi, 2
  %i.hk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hj) #22
          to label %.noexc263 unwind label %.loopexit548.loopexit.split-lp ; 4 uses

.noexc263:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i256
  %i.hl = getelementptr inbounds i8, ptr %i.hk, i64 %i.hc ; 2 uses
  %i.hm = load i32, ptr %i.gx, align 4, !tbaa !65
  store i32 %i.hm, ptr %i.hl, align 4, !tbaa !65
  %i.hn = icmp sgt i64 %i.hc, 0
  br i1 %i.hn, label %bb.bp, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i259

bb.bp:                                            ; preds = %.noexc263
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hk, ptr align 4 %.sroa.32.5, i64 %i.hc, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i259

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i259: ; preds = %bb.bp, %.noexc263
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  %.not.i17.i.i260 = icmp eq ptr %.sroa.32.5, null
  br i1 %.not.i17.i.i260, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i261, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i259
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.32.5, i64 noundef %i.hc) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i261

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i261: ; preds = %bb.bq, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i259
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.hi
  %.pre906.a = load ptr, ptr %6, align 8, !tbaa !64
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit264

_ZNSt6vectorIiSaIiEE9push_backERKi.exit264:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i261, %bb.bm
  %i.hq = phi ptr [ %.pre906.a, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i261 ], [ %i.gw, %bb.bm ] ; 2 uses
  %.sroa.0464.6.a = phi ptr [ %i.hp, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i261 ], [ %.sroa.0464.5.a, %bb.bm ] ; 5 uses
  %.sroa.18.3 = phi ptr [ %i.ho, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i261 ], [ %i.gz, %bb.bm ] ; 3 uses
  %.sroa.32.6 = phi ptr [ %i.hk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i261 ], [ %.sroa.32.5, %bb.bm ] ; 7 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 2 uses
  %.not.i265 = icmp eq ptr %.sroa.18.3, %.sroa.0464.6.a
  br i1 %.not.i265, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit264
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !65 ; 2 uses
  store i32 %i.hs, ptr %.sroa.18.3, align 4, !tbaa !65
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit274

bb.bs:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit264
  %i.ht = ptrtoint ptr %.sroa.0464.6.a to i64
  %i.hu = ptrtoint ptr %.sroa.32.6 to i64
  %i.hv = sub i64 %i.ht, %i.hu                    ; 6 uses
  %i.hw = icmp eq i64 %i.hv, 9223372036854775804
  br i1 %i.hw, label %bb.bt, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i266

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #25
          to label %.noexc272 unwind label %.loopexit.split-lp549

.noexc272:                                        ; preds = %bb.bt
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i266: ; preds = %bb.bs
  %i.hx = ashr exact i64 %i.hv, 2                 ; 3 uses
  %.sroa.speculated.i.i.i267 = call i64 @llvm.umax.i64(i64 %i.hx, i64 1)
  %i.hy = add nsw i64 %.sroa.speculated.i.i.i267, %i.hx ; 2 uses
  %i.hz = icmp ult i64 %i.hy, %i.hx
  %i.ia = call i64 @llvm.umin.i64(i64 %i.hy, i64 2305843009213693951)
  %i.ib = select i1 %i.hz, i64 2305843009213693951, i64 %i.ia ; 3 uses
  %.not.i.i.i268 = icmp ne i64 %i.ib, 0
  call void @llvm.assume(i1 %.not.i.i.i268)
  %i.ic = shl nuw nsw i64 %i.ib, 2
  %i.id = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ic) #22
          to label %.noexc273 unwind label %.loopexit548.loopexit.split-lp ; 4 uses

.noexc273:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i266
  %i.ie = getelementptr inbounds i8, ptr %i.id, i64 %i.hv ; 2 uses
  %i.if = load i32, ptr %i.hr, align 4, !tbaa !65
  store i32 %i.if, ptr %i.ie, align 4, !tbaa !65
  %i.ig = icmp sgt i64 %i.hv, 0
  br i1 %i.ig, label %bb.bu, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i269

bb.bu:                                            ; preds = %.noexc273
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.id, ptr align 4 %.sroa.32.6, i64 %i.hv, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i269

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i269: ; preds = %bb.bu, %.noexc273
  %.not.i17.i.i270 = icmp eq ptr %.sroa.32.6, null
  br i1 %.not.i17.i.i270, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i271, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i269
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.32.6, i64 noundef %i.hv) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i271

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i271: ; preds = %bb.bv, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i269
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.ib
  %.pre907.a = load ptr, ptr %6, align 8, !tbaa !64 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre907.a, i64 8
  %.pre908 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !65
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit274

_ZNSt6vectorIiSaIiEE9push_backERKi.exit274:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i271, %bb.br
  %i.ii = phi i32 [ %.pre908, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i271 ], [ %i.hs, %bb.br ]
  %i.ij = phi ptr [ %.pre907.a, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i271 ], [ %i.hq, %bb.br ] ; 3 uses
  %.sroa.0464.7.a = phi ptr [ %i.ih, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i271 ], [ %.sroa.0464.6.a, %bb.br ]
  %.pn542 = phi ptr [ %i.ie, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i271 ], [ %.sroa.18.3, %bb.br ]
  %.sroa.32.7 = phi ptr [ %i.id, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i271 ], [ %.sroa.32.6, %bb.br ]
  %.sroa.18.4 = getelementptr inbounds nuw i8, ptr %.pn542, i64 4
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !65
  %.sroa.speculated454 = call i32 @llvm.smax.i32(i32 %.0512.ph736, i32 %i.ik)
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  %i.im = load i32, ptr %i.il, align 4, !tbaa !65
  %.sroa.speculated451 = call i32 @llvm.smax.i32(i32 %.sroa.speculated454, i32 %i.im)
  %.sroa.speculated448 = call i32 @llvm.smax.i32(i32 %.sroa.speculated451, i32 %i.ii)
  br label %.outer

bb.bw:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %16)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  %i.in = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull @.str.4, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit278 unwind label %bb.cc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit278: ; preds = %bb.bx
  %i.io = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull @.str.11, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit280 unwind label %bb.cc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit280: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit278
  %i.ip = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull @.str.6, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit282 unwind label %bb.cc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit282: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit280
  %i.iq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef %i.ae)
          to label %bb.by unwind label %bb.cc

bb.by:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit282
  %i.ir = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iq, ptr noundef nonnull @.str.7, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit284 unwind label %bb.cc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit284: ; preds = %bb.by
  %i.is = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #23
  %i.it = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull %i.b, i64 noundef %i.is)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit287 unwind label %bb.cc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit287: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit284
  %i.iu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull @.str.8, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit289 unwind label %bb.cc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit289: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit287
  %i.iv = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(112) %16)
          to label %bb.bz unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292.thread

bb.bz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit289
  %i.iw = load ptr, ptr %17, align 8, !tbaa !27
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.iv, ptr noundef %i.iw)
          to label %bb.ca unwind label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  invoke void @__cxa_throw(ptr nonnull %i.iv, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
          to label %bb.fq unwind label %bb.cd

bb.cb:                                            ; preds = %bb.bw
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.cc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit287, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit284, %bb.by, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit280, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit278, %bb.bx, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit282
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit289
  %i.iz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %bb.ce

bb.cd:                                            ; preds = %bb.ca, %bb.bz
  %.066 = phi i1 [ false, %bb.ca ], [ true, %bb.bz ] ; 2 uses
  %i.ja = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jb = load ptr, ptr %17, align 8, !tbaa !27   ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.jd = icmp eq ptr %i.jb, %i.jc
  br i1 %i.jd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290: ; preds = %bb.cd
  %i.je = load i64, ptr %i.jc, align 8, !tbaa !17
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.jf) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br i1 %.066, label %bb.ce, label %bb.cf

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292: ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br i1 %.066, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292
  %.pn163525 = phi { ptr, i32 } [ %i.iz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292.thread ], [ %i.ja, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292 ], [ %i.ja, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290 ]
  call void @__cxa_free_exception(ptr %i.iv) #23
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292, %bb.ce, %bb.cc
  %.pn163.pn = phi { ptr, i32 } [ %.pn163525, %bb.ce ], [ %i.ja, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292 ], [ %i.iy, %bb.cc ], [ %i.ja, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %16) #23
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.cb
  %.pn163.pn.pn = phi { ptr, i32 } [ %.pn163.pn, %bb.cf ], [ %i.ix, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %.loopexit548

.outer:                                           ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %.preheader546, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit274
  %i.jg = phi ptr [ %i.ij, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit274 ], [ %i.ds, %.preheader546 ], [ %i.es, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.sroa.27.2.a = phi ptr [ %.sroa.0464.7.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit274 ], [ %.sroa.27.0.ph736, %.preheader546 ], [ %.sroa.27.0.ph736, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %.1 = phi i32 [ %.sroa.speculated448, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit274 ], [ %.0512.ph736, %.preheader546 ], [ %.0512.ph736, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %.sroa.18.1 = phi ptr [ %.sroa.18.4, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit274 ], [ %.sroa.18.0.ph738, %.preheader546 ], [ %.sroa.18.0.ph738, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %.sroa.32.2 = phi ptr [ %.sroa.32.7, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit274 ], [ %.sroa.32.0.ph739, %.preheader546 ], [ %.sroa.32.0.ph739, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %.sroa.27.2 = phi ptr [ %.sroa.27.0.ph739, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit274 ], [ %.sroa.27.0.ph739, %.preheader546 ], [ %.sroa.27.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %.sroa.17.2 = phi ptr [ %.sroa.17.0.ph741, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit274 ], [ %.sroa.17.0.ph741, %.preheader546 ], [ %.sroa.17.3, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %.sroa.0489.2 = phi ptr [ %.sroa.0489.0.ph742, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit274 ], [ %.sroa.0489.0.ph742, %.preheader546 ], [ %.sroa.0489.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %i.jh = load ptr, ptr %2, align 8, !tbaa !8
  %i.ji = getelementptr i8, ptr %i.jh, i64 -24
  %i.jj = load i64, ptr %i.ji, align 8
  %i.jk = getelementptr inbounds i8, ptr %2, i64 %i.jj ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 32
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !28
  %i.jn = icmp eq i32 %i.jm, 0
  br i1 %i.jn, label %.lr.ph, label %.outer._crit_edge, !llvm.loop !61

.outer._crit_edge.loopexit:                       ; preds = %.backedge
  %.pre911 = load ptr, ptr %6, align 8, !tbaa !64
  br label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %.outer, %.outer._crit_edge.loopexit
  %i.jo = phi ptr [ %.pre911, %.outer._crit_edge.loopexit ], [ %i.jg, %.outer ] ; 3 uses
  %.sroa.27.0.ph.lcssa707 = phi ptr [ %.sroa.27.0.ph736, %.outer._crit_edge.loopexit ], [ %.sroa.27.2.a, %.outer ] ; 2 uses
  %.0512.ph.lcssa693 = phi i32 [ %.0512.ph736, %.outer._crit_edge.loopexit ], [ %.1, %.outer ] ; 2 uses
  %.sroa.18.0.ph.lcssa673 = phi ptr [ %.sroa.18.0.ph738, %.outer._crit_edge.loopexit ], [ %.sroa.18.1, %.outer ] ; 2 uses
  %.sroa.32.0.ph.lcssa654 = phi ptr [ %.sroa.32.0.ph739, %.outer._crit_edge.loopexit ], [ %.sroa.32.2, %.outer ] ; 2 uses
  %.sroa.27.0.ph.lcssa638 = phi ptr [ %.sroa.27.0.ph739, %.outer._crit_edge.loopexit ], [ %.sroa.27.2, %.outer ] ; 2 uses
  %.sroa.17.0.ph.lcssa624 = phi ptr [ %.sroa.17.0.ph741, %.outer._crit_edge.loopexit ], [ %.sroa.17.2, %.outer ] ; 2 uses
  %.sroa.0489.0.ph.lcssa603 = phi ptr [ %.sroa.0489.0.ph742, %.outer._crit_edge.loopexit ], [ %.sroa.0489.2, %.outer ] ; 2 uses
  %.not.i.i.i293 = icmp eq ptr %i.jo, null
  br i1 %.not.i.i.i293, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ch

bb.ch:                                            ; preds = %.outer._crit_edge
  %i.jp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !67
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = ptrtoint ptr %i.jo to i64
  %i.jt = sub i64 %i.jr, %i.js
  call void @_ZdlPvm(ptr noundef nonnull %i.jo, i64 noundef %i.jt) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %.outer._crit_edge, %bb.ch
  %.sroa.0489.0.ph.lcssa603986 = phi ptr [ %.sroa.0489.0.ph.lcssa603, %bb.ch ], [ %.sroa.0489.0.ph.lcssa603, %.outer._crit_edge ], [ null, %bb.a ] ; 16 uses
  %.sroa.17.0.ph.lcssa624985 = phi ptr [ %.sroa.17.0.ph.lcssa624, %bb.ch ], [ %.sroa.17.0.ph.lcssa624, %.outer._crit_edge ], [ null, %bb.a ] ; 4 uses
  %.sroa.27.0.ph.lcssa638983 = phi ptr [ %.sroa.27.0.ph.lcssa638, %bb.ch ], [ %.sroa.27.0.ph.lcssa638, %.outer._crit_edge ], [ null, %bb.a ] ; 5 uses
  %.sroa.32.0.ph.lcssa654982 = phi ptr [ %.sroa.32.0.ph.lcssa654, %bb.ch ], [ %.sroa.32.0.ph.lcssa654, %.outer._crit_edge ], [ null, %bb.a ] ; 11 uses
  %.sroa.18.0.ph.lcssa673981 = phi ptr [ %.sroa.18.0.ph.lcssa673, %bb.ch ], [ %.sroa.18.0.ph.lcssa673, %.outer._crit_edge ], [ null, %bb.a ] ; 2 uses
  %.0512.ph.lcssa693979 = phi i32 [ %.0512.ph.lcssa693, %bb.ch ], [ %.0512.ph.lcssa693, %.outer._crit_edge ], [ 0, %bb.a ] ; 6 uses
  %.sroa.27.0.ph.lcssa707977 = phi ptr [ %.sroa.27.0.ph.lcssa707, %bb.ch ], [ %.sroa.27.0.ph.lcssa707, %.outer._crit_edge ], [ null, %bb.a ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.ju = load ptr, ptr %5, align 16, !tbaa !53   ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !56 ; 2 uses
  %.not4.i.i.i294 = icmp eq ptr %i.ju, %i.jw
  br i1 %.not4.i.i.i294, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i302, label %.lr.ph.i.i.i295

.lr.ph.i.i.i295:                                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i298
  %.05.i.i.i296 = phi ptr [ %i.kc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i298 ], [ %i.ju, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %i.jx = load ptr, ptr %.05.i.i.i296, align 8, !tbaa !27 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.05.i.i.i296, i64 16 ; 2 uses
  %i.jz = icmp eq ptr %i.jx, %i.jy
  br i1 %i.jz, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i298, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i297: ; preds = %.lr.ph.i.i.i295
  %i.ka = load i64, ptr %i.jy, align 8, !tbaa !17
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.kb) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i298

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i298: ; preds = %.lr.ph.i.i.i295, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i297
  %i.kc = getelementptr inbounds nuw i8, ptr %.05.i.i.i296, i64 32 ; 2 uses
  %.not.i.i.i299 = icmp eq ptr %i.kc, %i.jw
  br i1 %.not.i.i.i299, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i300, label %.lr.ph.i.i.i295, !llvm.loop !59

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i300: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i298
  %.pr.i301 = load ptr, ptr %5, align 16, !tbaa !53
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i302

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i302: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i300, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.kd = phi ptr [ %.pr.i301, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i300 ], [ %i.ju, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i303 = icmp eq ptr %i.kd, null
  br i1 %.not.i.i1.i303, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit305, label %bb.ci

bb.ci:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i302
  %i.ke = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.kf = load ptr, ptr %i.ke, align 16, !tbaa !57
  %i.kg = ptrtoint ptr %i.kf to i64
  %i.kh = ptrtoint ptr %i.kd to i64
  %i.ki = sub i64 %i.kg, %i.kh
  call void @_ZdlPvm(ptr noundef nonnull %i.kd, i64 noundef %i.ki) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit305

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit305: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i302, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.kj = icmp eq ptr %.sroa.32.0.ph.lcssa654982, %.sroa.18.0.ph.lcssa673981 ; 2 uses
  %i.kk = icmp eq ptr %.sroa.0489.0.ph.lcssa603986, %.sroa.17.0.ph.lcssa624985 ; 2 uses
  %or.cond = select i1 %i.kj, i1 %i.kk, i1 false
  br i1 %or.cond, label %bb.cj, label %bb.cu

bb.cj:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit305
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %18)
          to label %bb.ck unwind label %bb.co

bb.ck:                                            ; preds = %bb.cj
  %i.kl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.4, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit307 unwind label %bb.cp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit307: ; preds = %bb.ck
  %i.km = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.12, i64 noundef 58)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit309 unwind label %bb.cp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit309: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit307
  %i.kn = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(112) %18)
          to label %bb.cl unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314.thread

bb.cl:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit309
  %i.ko = load ptr, ptr %19, align 8, !tbaa !27
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.kn, ptr noundef %i.ko)
          to label %bb.cm unwind label %bb.cq

bb.cm:                                            ; preds = %bb.cl
  invoke void @__cxa_throw(ptr nonnull %i.kn, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
          to label %bb.fq unwind label %bb.cq

.loopexit548:                                     ; preds = %.loopexit547.a, %.loopexit.split-lp, %.loopexit.split-lp549, %.loopexit548.loopexit.split-lp, %.loopexit548.loopexit, %bb.cg, %bb.bf, %bb.at, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203
  %.sroa.27.3.a = phi ptr [ %.sroa.27.0.ph736, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203 ], [ %.sroa.0464.1.ph.ph.a, %.loopexit548.loopexit.split-lp ], [ %.sroa.27.0.ph736, %bb.at ], [ %.sroa.27.0.ph736, %bb.bf ], [ %.sroa.27.0.ph736, %bb.cg ], [ %.sroa.27.0.ph736, %bb.aa ], [ %.sroa.0464.1.ph550.a, %.loopexit.split-lp549 ], [ %.sroa.27.0.ph736, %.loopexit548.loopexit ], [ %.sroa.27.0.ph736, %.loopexit547.a ], [ %.sroa.27.0.ph736, %.loopexit.split-lp ]
  %.sroa.0464.3 = phi ptr [ %.sroa.32.0.ph739, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203 ], [ %.sroa.32.1.ph.ph, %.loopexit548.loopexit.split-lp ], [ %.sroa.32.0.ph739, %bb.at ], [ %.sroa.32.0.ph739, %bb.bf ], [ %.sroa.32.0.ph739, %bb.cg ], [ %.sroa.32.0.ph739, %bb.aa ], [ %.sroa.32.1.ph551, %.loopexit.split-lp549 ], [ %.sroa.32.0.ph739, %.loopexit548.loopexit ], [ %.sroa.32.0.ph739, %.loopexit547.a ], [ %.sroa.32.0.ph739, %.loopexit.split-lp ]
  %.sroa.32.3 = phi ptr [ %.sroa.27.0.ph739, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203 ], [ %.sroa.27.0.ph739, %.loopexit548.loopexit.split-lp ], [ %.sroa.27.0.ph739, %bb.at ], [ %.sroa.27.0.ph739, %bb.bf ], [ %.sroa.27.0.ph739, %bb.cg ], [ %.sroa.27.0.ph739, %bb.aa ], [ %.sroa.27.0.ph739, %.loopexit.split-lp549 ], [ %.sroa.27.0.ph739, %.loopexit548.loopexit ], [ %.sroa.17.1729, %.loopexit547.a ], [ %.sroa.17.1729, %.loopexit.split-lp ]
  %.sroa.0489.3 = phi ptr [ %.sroa.0489.0.ph742, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203 ], [ %.sroa.0489.0.ph742, %.loopexit548.loopexit.split-lp ], [ %.sroa.0489.0.ph742, %bb.at ], [ %.sroa.0489.0.ph742, %bb.bf ], [ %.sroa.0489.0.ph742, %bb.cg ], [ %.sroa.0489.0.ph742, %bb.aa ], [ %.sroa.0489.0.ph742, %.loopexit.split-lp549 ], [ %.sroa.0489.0.ph742, %.loopexit548.loopexit ], [ %.sroa.0489.1730, %.loopexit547.a ], [ %.sroa.0489.1730, %.loopexit.split-lp ]
  %.pn175.pn.pn.pn = phi { ptr, i32 } [ %.pn160.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203 ], [ %lpad.loopexit.split-lp556, %.loopexit548.loopexit.split-lp ], [ %.pn171.pn.pn, %bb.at ], [ %.pn167.pn.pn, %bb.bf ], [ %.pn163.pn.pn, %bb.cg ], [ %.pn175.pn.pn, %bb.aa ], [ %lpad.loopexit.split-lp553, %.loopexit.split-lp549 ], [ %lpad.loopexit555, %.loopexit548.loopexit ], [ %lpad.loopexit, %.loopexit547.a ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.kp = load ptr, ptr %6, align 8, !tbaa !64    ; 3 uses
  %.not.i.i.i310 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i.i310, label %_ZNSt6vectorIiSaIiEED2Ev.exit311, label %bb.cn

bb.cn:                                            ; preds = %.loopexit548
  %i.kq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !67
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = ptrtoint ptr %i.kp to i64
  %i.ku = sub i64 %i.ks, %i.kt
  call void @_ZdlPvm(ptr noundef nonnull %i.kp, i64 noundef %i.ku) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit311

_ZNSt6vectorIiSaIiEED2Ev.exit311:                 ; preds = %.loopexit548, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.body

bb.co:                                            ; preds = %bb.cj
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit307, %bb.ck
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit309
  %i.kx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %bb.cr

bb.cq:                                            ; preds = %bb.cm, %bb.cl
  %.064 = phi i1 [ false, %bb.cm ], [ true, %bb.cl ] ; 2 uses
  %i.ky = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.kz = load ptr, ptr %19, align 8, !tbaa !27   ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.lb = icmp eq ptr %i.kz, %i.la
  br i1 %i.lb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312: ; preds = %bb.cq
  %i.lc = load i64, ptr %i.la, align 8, !tbaa !17
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.ld) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br i1 %.064, label %bb.cr, label %bb.cs

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314: ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br i1 %.064, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314
  %.pn156528 = phi { ptr, i32 } [ %i.kx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314.thread ], [ %i.ky, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314 ], [ %i.ky, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312 ]
  call void @__cxa_free_exception(ptr %i.kn) #23
  br label %bb.cs

bb.cs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, %bb.cr, %bb.cp
  %.pn156.pn = phi { ptr, i32 } [ %.pn156528, %bb.cr ], [ %i.ky, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314 ], [ %i.kw, %bb.cp ], [ %i.ky, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %18) #23
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.co
  %.pn156.pn.pn = phi { ptr, i32 } [ %.pn156.pn, %bb.cs ], [ %i.kv, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %.body

bb.cu:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit305
  %i.le = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22
          to label %bb.cv unwind label %bb.db     ; 10 uses

bb.cv:                                            ; preds = %bb.cu
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE, i64 16), ptr %i.le, align 8, !tbaa !8
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lf, i8 0, i64 32, i1 false)
  %i.lg = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.da unwind label %bb.cw     ; 7 uses

bb.cw:                                            ; preds = %bb.cv
  %i.lh = landingpad { ptr, i32 }
          catch ptr null
  %i.li = extractvalue { ptr, i32 } %i.lh, 0
  %i.lj = call ptr @__cxa_begin_catch(ptr %i.li) #23 ; 0 uses
  %i.lk = load ptr, ptr %i.le, align 8, !tbaa !8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8
  call void %i.lm(ptr noundef nonnull align 8 dereferenceable(40) %i.le) #23, !inline_history !68
  invoke void @__cxa_rethrow() #25
          to label %bb.cz unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ln = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.lo = landingpad { ptr, i32 }
          catch ptr null
  %i.lp = extractvalue { ptr, i32 } %i.lo, 0
  call void @__clang_call_terminate(ptr %i.lp) #26
  unreachable

bb.cz:                                            ; preds = %bb.cw
  unreachable

bb.da:                                            ; preds = %bb.cv
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  store i32 1, ptr %i.lq, align 8, !tbaa !69
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lg, i64 12
  store i32 1, ptr %i.lr, align 4, !tbaa !71
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.lg, align 8, !tbaa !8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  store ptr %i.le, ptr %i.ls, align 8, !tbaa !72
  br i1 %i.kk, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit.thread, label %.preheader545.preheader

.preheader545.preheader:                          ; preds = %bb.da
  %i.lt = ptrtoaddr ptr %.sroa.17.0.ph.lcssa624985 to i64
  %i.lu = ptrtoaddr ptr %.sroa.0489.0.ph.lcssa603986 to i64
  %i.lv = add i64 %i.lt, -4
  %i.lw = sub i64 %i.lv, %i.lu                    ; 2 uses
  %i.lx = lshr i64 %i.lw, 2
  %i.ly = add nuw nsw i64 %i.lx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.lw, 28
  br i1 %min.iters.check, label %.preheader545.preheader1307, label %vector.ph

vector.ph:                                        ; preds = %.preheader545.preheader
  %n.vec = and i64 %i.ly, 9223372036854775800     ; 3 uses
  %i.lz = shl i64 %n.vec, 2
  %i.ma = getelementptr i8, ptr %.sroa.0489.0.ph.lcssa603986, i64 %i.lz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.md, %vector.body ]
  %vec.phi1279 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.me, %vector.body ]
  %i.mb = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.0489.0.ph.lcssa603986, i64 %i.mb ; 2 uses
  %i.mc = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !65
  %wide.load1280 = load <4 x i32>, ptr %i.mc, align 4, !tbaa !65
  %i.md = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.me = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi1279, <4 x i32> %wide.load1280) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.mf = icmp eq i64 %index.next, %n.vec
  br i1 %i.mf, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.md, <4 x i32> %i.me)
  %i.mg = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.ly, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader545.preheader1307

.preheader545.preheader1307:                      ; preds = %.preheader545.preheader, %middle.block
  %.sroa.0433.0752.ph = phi ptr [ %.sroa.0489.0.ph.lcssa603986, %.preheader545.preheader ], [ %i.ma, %middle.block ]
  %.0511751.ph = phi i32 [ 0, %.preheader545.preheader ], [ %i.mg, %middle.block ]
  br label %.preheader545

.loopexit:                                        ; preds = %.preheader545, %middle.block
  %.sroa.speculated.lcssa = phi i32 [ %i.mg, %middle.block ], [ %.sroa.speculated, %.preheader545 ] ; 6 uses
  %i.mh = icmp slt i32 %.sroa.speculated.lcssa, 128
  br i1 %i.mh, label %bb.dc, label %bb.dn

bb.db:                                            ; preds = %bb.cu
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %.body

.preheader545:                                    ; preds = %.preheader545.preheader1307, %.preheader545
  %.sroa.0433.0752 = phi ptr [ %i.mk, %.preheader545 ], [ %.sroa.0433.0752.ph, %.preheader545.preheader1307 ] ; 2 uses
  %.0511751 = phi i32 [ %.sroa.speculated, %.preheader545 ], [ %.0511751.ph, %.preheader545.preheader1307 ]
  %i.mj = load i32, ptr %.sroa.0433.0752, align 4, !tbaa !65
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %.0511751, i32 %i.mj) ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.0433.0752, i64 4 ; 2 uses
  %.not541 = icmp eq ptr %i.mk, %.sroa.17.0.ph.lcssa624985
  br i1 %.not541, label %.loopexit, label %.preheader545, !llvm.loop !78

bb.dc:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %20)
          to label %bb.dd unwind label %bb.dh

bb.dd:                                            ; preds = %bb.dc
  %i.ml = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull @.str.4, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit317 unwind label %bb.di ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit317: ; preds = %bb.dd
  %i.mm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull @.str.13, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit319 unwind label %bb.di ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit319: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit317
  %i.mn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef %.sroa.speculated.lcssa)
          to label %bb.de unwind label %bb.di     ; 0 uses

end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit.thread, label %bb.du, !llvm.loop !79

bb.du:                                            ; preds = %bb.dt, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.dt ] ; 3 uses
  %i.nn = trunc nuw i64 %indvars.iv.i to i32
  %i.no = uitofp i32 %i.nn to float
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0489.0.ph.lcssa603986, i64 %indvars.iv.i
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !65
  %i.nr = sitofp i32 %i.nq to float
  %i.ns = fneg float %i.nr
  %i.nt = call float @llvm.fmuladd.f32(float %i.no, float %i.nm, float %i.ns)
  %i.nu = call noundef float @llvm.fabs.f32(float %i.nt)
  %i.nv = fcmp ult float %i.nu, 2.000000e+00
  br i1 %i.nv, label %bb.dt, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit: ; preds = %bb.du
  %i.nw = ashr exact i64 %i.nf, 2                 ; 6 uses
  %i.nx = invoke noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #22
          to label %.noexc355 unwind label %bb.ed ; 6 uses

.noexc355:                                        ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  store i32 1, ptr %i.ny, align 8, !tbaa !69, !noalias !80
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nx, i64 12
  store i32 1, ptr %i.nz, align 4, !tbaa !71, !noalias !80
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.nx, align 8, !tbaa !8, !noalias !80
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpDataC1Em(ptr noundef nonnull align 8 dereferenceable(364) %i.oa, i64 noundef %i.nw)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !80

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc355
  %i.ob = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.nx, i64 noundef 384) #24, !noalias !80
  br label %.body356

_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit: ; preds = %.noexc355
  store ptr %i.oa, ptr %i.lf, align 8, !tbaa !83
  %i.oc = getelementptr inbounds nuw i8, ptr %i.le, i64 16 ; 2 uses
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !85 ; 8 uses
  store ptr %i.nx, ptr %i.oc, align 8, !tbaa !85
  %.not.i.i.i.i = icmp eq ptr %i.od, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.dv

bb.dv:                                            ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 8 ; 4 uses
  %i.of = load atomic i64, ptr %i.oe acquire, align 8 ; 2 uses
  %i.og = icmp eq i64 %i.of, 4294967297
  %i.oh = trunc i64 %i.of to i32                  ; 2 uses
  br i1 %i.og, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  store i32 0, ptr %i.oe, align 8, !tbaa !69
  %i.oi = getelementptr inbounds nuw i8, ptr %i.od, i64 12
  store i32 0, ptr %i.oi, align 4, !tbaa !71
  %i.oj = load ptr, ptr %i.od, align 8, !tbaa !8
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %i.ol = load ptr, ptr %i.ok, align 8
  call void %i.ol(ptr noundef nonnull align 8 dereferenceable(16) %i.od) #23, !inline_history !88
  %i.om = load ptr, ptr %i.od, align 8, !tbaa !8
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 24
  %i.oo = load ptr, ptr %i.on, align 8
  call void %i.oo(ptr noundef nonnull align 8 dereferenceable(16) %i.od) #23, !inline_history !88
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.dx:                                            ; preds = %bb.dv
  %i.op = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i358 = icmp eq i8 %i.op, 0
  br i1 %.not.i.i.i.i.i358, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.oq = add nsw i32 %i.oh, -1
  store i32 %i.oq, ptr %i.oe, align 8, !tbaa !65
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.dz:                                            ; preds = %bb.dx
  %i.or = atomicrmw volatile add ptr %i.oe, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.dz, %bb.dy
  %.0.i.i.i.i.i.i = phi i32 [ %i.oh, %bb.dy ], [ %i.or, %bb.dz ]
  %i.os = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.os, label %bb.ea, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !89

bb.ea:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.od) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ea, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.dw, %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut1DOpDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit
  %i.ot = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511Lut1DOpData20IsValidInterpolationENS_13InterpolationE(i32 noundef %4)
          to label %bb.eb unwind label %bb.ee

bb.eb:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  br i1 %i.ot, label %bb.ec, label %bb.ef

bb.ec:                                            ; preds = %bb.eb
  %i.ou = load ptr, ptr %i.lf, align 8, !tbaa !90
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpData16setInterpolationENS_13InterpolationE(ptr noundef nonnull align 8 dereferenceable(364) %i.ou, i32 noundef %4)
          to label %bb.ef unwind label %bb.ee

bb.ed:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %.body356

bb.ee:                                            ; preds = %bb.ec, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %.body356

bb.ef:                                            ; preds = %bb.ec, %bb.eb
  %i.ox = load ptr, ptr %i.lf, align 8, !tbaa !90
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 360
  store i32 %.0.i, ptr %i.oy, align 8, !tbaa !92
  %i.oz = invoke noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef %.0.i)
          to label %.preheader.lr.ph unwind label %bb.eg

.preheader.lr.ph:                                 ; preds = %bb.ef
  %i.pa = fptrunc double %i.oz to float           ; 2 uses
  %i.pb = load ptr, ptr %i.lf, align 8, !tbaa !90
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 200
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !122 ; 4 uses
  %min.iters.check1282 = icmp ult i64 %i.nw, 4
  br i1 %min.iters.check1282, label %.preheader.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.lr.ph
  %i.pe = add nsw i64 %i.nw, -1                   ; 2 uses
  %i.pf = trunc i64 %i.pe to i32
  %i.pg = icmp ugt i32 %i.pf, 1431655764
  %i.ph = icmp ugt i64 %i.pe, 4294967295
  %i.pi = or i1 %i.pg, %i.ph
  br i1 %i.pi, label %.preheader.preheader, label %vector.ph1283

vector.ph1283:                                    ; preds = %vector.scevcheck
  %n.vec1284 = and i64 %i.nw, 8589934588          ; 4 uses
  %i.pj = trunc i64 %n.vec1284 to i32
  %i.pk = mul i32 %i.pj, 3
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.pa, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1285

vector.body1285:                                  ; preds = %vector.body1285, %vector.ph1283
  %index1286 = phi i64 [ 0, %vector.ph1283 ], [ %index.next1288, %vector.body1285 ] ; 3 uses
  %i.pl = mul i64 %index1286, 3
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0489.0.ph.lcssa603986, i64 %index1286
  %wide.load1287 = load <4 x i32>, ptr %i.pm, align 4, !tbaa !65
  %i.pn = sitofp <4 x i32> %wide.load1287 to <4 x float>
  %i.po = fdiv <4 x float> %i.pn, %broadcast.splat
  %i.pp = and i64 %i.pl, 4294967292
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.pp
  %interleaved.vec = shufflevector <4 x float> %i.po, <4 x float> poison, <12 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3>
  store <12 x float> %interleaved.vec, ptr %i.pq, align 4, !tbaa !123
  %index.next1288 = add nuw i64 %index1286, 4     ; 2 uses
  %i.pr = icmp eq i64 %index.next1288, %n.vec1284
  br i1 %i.pr, label %middle.block1289, label %vector.body1285, !llvm.loop !125

middle.block1289:                                 ; preds = %vector.body1285
  %cmp.n1290 = icmp eq i64 %i.nw, %n.vec1284
  br i1 %cmp.n1290, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.scevcheck, %.preheader.lr.ph, %middle.block1289
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader.lr.ph ], [ %n.vec1284, %middle.block1289 ]
  %.055756.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.preheader.lr.ph ], [ %i.pk, %middle.block1289 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader ] ; 2 uses
  %.055756 = phi i32 [ %i.qe, %.preheader ], [ %.055756.ph, %.preheader.preheader ] ; 4 uses
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0489.0.ph.lcssa603986, i64 %indvars.iv
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !65
  %i.pu = sitofp i32 %i.pt to float
  %i.pv = fdiv float %i.pu, %i.pa                 ; 3 uses
  %i.pw = zext i32 %.055756 to i64
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.pw
  store float %i.pv, ptr %i.px, align 4, !tbaa !123
  %i.py = add i32 %.055756, 1
  %i.pz = zext i32 %i.py to i64
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.pz
  store float %i.pv, ptr %i.qa, align 4, !tbaa !123
  %i.qb = add i32 %.055756, 2
  %i.qc = zext i32 %i.qb to i64
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.qc
  store float %i.pv, ptr %i.qd, align 4, !tbaa !123
  %i.qe = add i32 %.055756, 3
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.qf = and i64 %indvars.iv.next, 4294967295
  %i.qg = icmp ugt i64 %i.nw, %i.qf
  br i1 %i.qg, label %.preheader, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit.thread, !llvm.loop !126

bb.eg:                                            ; preds = %bb.ef
  %i.qh = landingpad { ptr, i32 }
          cleanup
  br label %.body356

_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit.thread: ; preds = %bb.dt, %.preheader, %middle.block1289, %.noexc354, %bb.da
  br i1 %i.kj, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.eh

bb.eh:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit.thread
  %i.qi = icmp slt i32 %.0512.ph.lcssa693979, 128
  br i1 %i.qi, label %bb.ei, label %bb.et

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %22)
          to label %bb.ej unwind label %bb.en

bb.ej:                                            ; preds = %bb.ei
  %i.qj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull @.str.20, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit361 unwind label %bb.eo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit361: ; preds = %bb.ej
  %i.qk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull @.str.21, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit363 unwind label %bb.eo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit363: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit361
  %i.ql = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef %.0512.ph.lcssa693979)
          to label %bb.ek unwind label %bb.eo     ; 0 uses

bb.ek:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit363
  %i.qm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull @.str.14, i64 noundef 55)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit365 unwind label %bb.eo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit365: ; preds = %bb.ek
  %i.qn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull @.str.15, i64 noundef 57)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit367 unwind label %bb.eo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit367: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit365
  %i.qo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull @.str.16, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit369 unwind label %bb.eo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit369: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit367
  %i.qp = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(112) %22)
          to label %bb.el unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372.thread

bb.el:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit369
  %i.qq = load ptr, ptr %23, align 8, !tbaa !27
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.qp, ptr noundef %i.qq)
          to label %bb.em unwind label %bb.ep

bb.em:                                            ; preds = %bb.el
  invoke void @__cxa_throw(ptr nonnull %i.qp, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
          to label %bb.fq unwind label %bb.ep

bb.en:                                            ; preds = %bb.ei
  %i.qr = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.eo:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit367, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit365, %bb.ek, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit361, %bb.ej, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit363
  %i.qs = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit369
  %i.qt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %bb.eq

bb.ep:                                            ; preds = %bb.em, %bb.el
  %.052 = phi i1 [ false, %bb.em ], [ true, %bb.el ] ; 2 uses
  %i.qu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.qv = load ptr, ptr %23, align 8, !tbaa !27   ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.qx = icmp eq ptr %i.qv, %i.qw
  br i1 %i.qx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370: ; preds = %bb.ep
  %i.qy = load i64, ptr %i.qw, align 8, !tbaa !17
  %i.qz = add i64 %i.qy, 1
  call void @_ZdlPvm(ptr noundef %i.qv, i64 noundef %i.qz) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br i1 %.052, label %bb.eq, label %bb.er

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372: ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br i1 %.052, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372
  %.pn150540 = phi { ptr, i32 } [ %i.qt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372.thread ], [ %i.qu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372 ], [ %i.qu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370 ]
  call void @__cxa_free_exception(ptr %i.qp) #23
  br label %bb.er

bb.er:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372, %bb.eq, %bb.eo
  %.pn150.pn = phi { ptr, i32 } [ %.pn150540, %bb.eq ], [ %i.qu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372 ], [ %i.qs, %bb.eo ], [ %i.qu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %22) #23
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.en
  %.pn150.pn.pn = phi { ptr, i32 } [ %.pn150.pn, %bb.er ], [ %i.qr, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %.body356

bb.et:                                            ; preds = %bb.eh
  %exp2.i379 = invoke double @exp2(double 8.000000e+00)
          to label %exp2.i.noexc378 unwind label %bb.ey ; 0 uses

exp2.i.noexc378:                                  ; preds = %bb.et
  %.not.not.not.i373 = icmp samesign ult i32 %.0512.ph.lcssa693979, 512
  br i1 %.not.not.not.i373, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetLikelyLutBitDepthEi.exit388, label %bb.eu

bb.eu:                                            ; preds = %exp2.i.noexc378
  %exp2.1.i381 = invoke double @exp2(double 1.000000e+01)
          to label %exp2.1.i.noexc380 unwind label %bb.ey ; 0 uses

exp2.1.i.noexc380:                                ; preds = %bb.eu
  %.not.not.not.1.i374 = icmp samesign ult i32 %.0512.ph.lcssa693979, 2048
  br i1 %.not.not.not.1.i374, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetLikelyLutBitDepthEi.exit388, label %bb.ev

bb.ev:                                            ; preds = %exp2.1.i.noexc380
  %exp2.2.i383 = invoke double @exp2(double 1.200000e+01)
          to label %exp2.2.i.noexc382 unwind label %bb.ey ; 0 uses

exp2.2.i.noexc382:                                ; preds = %bb.ev
  %.not.not.not.2.i375 = icmp samesign ult i32 %.0512.ph.lcssa693979, 8192
  br i1 %.not.not.not.2.i375, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetLikelyLutBitDepthEi.exit388, label %bb.ew

bb.ew:                                            ; preds = %exp2.2.i.noexc382
  %exp2.3.i385 = invoke double @exp2(double 1.400000e+01)
          to label %exp2.3.i.noexc384 unwind label %bb.ey ; 0 uses

exp2.3.i.noexc384:                                ; preds = %bb.ew
  %.not.not.not.3.i376 = icmp samesign ult i32 %.0512.ph.lcssa693979, 32768
  br i1 %.not.not.not.3.i376, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetLikelyLutBitDepthEi.exit388, label %bb.ex

bb.ex:                                            ; preds = %exp2.3.i.noexc384
  %exp2.4.i387 = invoke double @exp2(double 1.600000e+01)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetLikelyLutBitDepthEi.exit388 unwind label %bb.ey ; 0 uses

bb.ey:                                            ; preds = %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et
  %i.ra = landingpad { ptr, i32 }
          cleanup
  br label %.body356

_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetLikelyLutBitDepthEi.exit388: ; preds = %bb.ex, %exp2.i.noexc378, %exp2.1.i.noexc380, %exp2.2.i.noexc382, %exp2.3.i.noexc384
  %spec.select.i377 = phi i64 [ 8, %exp2.3.i.noexc384 ], [ 0, %exp2.i.noexc378 ], [ 2, %exp2.1.i.noexc380 ], [ 4, %exp2.2.i.noexc382 ], [ 8, %bb.ex ]
  %i.rb = ptrtoint ptr %.sroa.18.0.ph.lcssa673981 to i64
  %i.rc = ptrtoint ptr %.sroa.32.0.ph.lcssa654982 to i64
  %i.rd = sub i64 %i.rb, %i.rc
  %i.re = ashr exact i64 %i.rd, 2                 ; 5 uses
  %i.rf = trunc i64 %i.re to i32
  %i.rg = sdiv i32 %i.rf, 3
  %i.rh = invoke noundef i32 @_ZN16OpenColorIO_v2_528Get3DLutEdgeLenFromNumPixelsEi(i32 noundef %i.rg)
          to label %switch.lookup unwind label %bb.fh

switch.lookup:                                    ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetLikelyLutBitDepthEi.exit388
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE, i64 %spec.select.i377
  %switch.load = load i8, ptr %switch.gep, align 2
  %switch.ext = zext i8 %switch.load to i32       ; 2 uses
  %i.ri = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #22
          to label %.noexc402 unwind label %bb.fj ; 6 uses

.noexc402:                                        ; preds = %switch.lookup
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  store i32 1, ptr %i.rj, align 8, !tbaa !69, !noalias !127
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ri, i64 12
  store i32 1, ptr %i.rk, align 4, !tbaa !71, !noalias !127
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ri, align 8, !tbaa !8, !noalias !127
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ri, i64 16 ; 2 uses
  %i.rm = sext i32 %i.rh to i64
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpDataC1Em(ptr noundef nonnull align 8 dereferenceable(232) %i.rl, i64 noundef %i.rm)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !127

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc402
  %i.rn = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ri, i64 noundef 248) #24, !noalias !127
  br label %.body356

_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit: ; preds = %.noexc402
  %i.ro = getelementptr inbounds nuw i8, ptr %i.le, i64 24 ; 4 uses
  store ptr %i.rl, ptr %i.ro, align 8, !tbaa !130
  %i.rp = getelementptr inbounds nuw i8, ptr %i.le, i64 32 ; 2 uses
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !85 ; 8 uses
  store ptr %i.ri, ptr %i.rp, align 8, !tbaa !85
  %.not.i.i.i.i405 = icmp eq ptr %i.rq, null
  br i1 %.not.i.i.i.i405, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ez

bb.ez:                                            ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 8 ; 4 uses
  %i.rs = load atomic i64, ptr %i.rr acquire, align 8 ; 2 uses
  %i.rt = icmp eq i64 %i.rs, 4294967297
  %i.ru = trunc i64 %i.rs to i32                  ; 2 uses
  br i1 %i.rt, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  store i32 0, ptr %i.rr, align 8, !tbaa !69
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rq, i64 12
  store i32 0, ptr %i.rv, align 4, !tbaa !71
  %i.rw = load ptr, ptr %i.rq, align 8, !tbaa !8
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  %i.ry = load ptr, ptr %i.rx, align 8
  call void %i.ry(ptr noundef nonnull align 8 dereferenceable(16) %i.rq) #23, !inline_history !132
  %i.rz = load ptr, ptr %i.rq, align 8, !tbaa !8
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 24
  %i.sb = load ptr, ptr %i.sa, align 8
  call void %i.sb(ptr noundef nonnull align 8 dereferenceable(16) %i.rq) #23, !inline_history !132
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.fb:                                            ; preds = %bb.ez
  %i.sc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i406 = icmp eq i8 %i.sc, 0
  br i1 %.not.i.i.i.i.i406, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.sd = add nsw i32 %i.ru, -1
  store i32 %i.sd, ptr %i.rr, align 8, !tbaa !65
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i407

bb.fd:                                            ; preds = %bb.fb
  %i.se = atomicrmw volatile add ptr %i.rr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i407

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i407: ; preds = %bb.fd, %bb.fc
  %.0.i.i.i.i.i.i408 = phi i32 [ %i.ru, %bb.fc ], [ %i.se, %bb.fd ]
  %i.sf = icmp eq i32 %.0.i.i.i.i.i.i408, 1
  br i1 %i.sf, label %bb.fe, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !89

bb.fe:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i407
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rq) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.fe, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i407, %bb.fa, %_ZSt11make_sharedIN16OpenColorIO_v2_511Lut3DOpDataEJRiEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_.exit
  %i.sg = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511Lut3DOpData20IsValidInterpolationENS_13InterpolationE(i32 noundef %4)
          to label %bb.ff unwind label %bb.fi

bb.ff:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  br i1 %i.sg, label %bb.fg, label %bb.fk

bb.fg:                                            ; preds = %bb.ff
  %i.sh = load ptr, ptr %i.ro, align 8, !tbaa !133
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpData16setInterpolationENS_13InterpolationE(ptr noundef nonnull align 8 dereferenceable(232) %i.sh, i32 noundef %4)
          to label %bb.fk unwind label %bb.fi

bb.fh:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetLikelyLutBitDepthEi.exit388
  %i.si = landingpad { ptr, i32 }
          cleanup
  br label %.body356

bb.fi:                                            ; preds = %bb.fg, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.sj = landingpad { ptr, i32 }
          cleanup
  br label %.body356

bb.fj:                                            ; preds = %switch.lookup
  %i.sk = landingpad { ptr, i32 }
          cleanup
  br label %.body356

bb.fk:                                            ; preds = %bb.fg, %bb.ff
  %i.sl = load ptr, ptr %i.ro, align 8, !tbaa !133
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 228
  store i32 %switch.ext, ptr %i.sm, align 4, !tbaa !135
  %i.sn = invoke noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef %switch.ext)
          to label %.lr.ph759 unwind label %bb.fl

.lr.ph759:                                        ; preds = %bb.fk
  %i.so = fptrunc double %i.sn to float           ; 2 uses
  %i.sp = load ptr, ptr %i.ro, align 8, !tbaa !133
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 200
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !122 ; 2 uses
  %min.iters.check1294 = icmp ult i64 %i.re, 4
  br i1 %min.iters.check1294, label %scalar.ph1293.preheader, label %vector.ph1295

vector.ph1295:                                    ; preds = %.lr.ph759
  %n.vec1296 = and i64 %i.re, -4                  ; 3 uses
  %broadcast.splatinsert1297 = insertelement <4 x float> poison, float %i.so, i64 0
  %broadcast.splat1298 = shufflevector <4 x float> %broadcast.splatinsert1297, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1299

vector.body1299:                                  ; preds = %vector.body1299, %vector.ph1295
  %index1300 = phi i64 [ 0, %vector.ph1295 ], [ %index.next1302, %vector.body1299 ] ; 3 uses
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %.sroa.32.0.ph.lcssa654982, i64 %index1300
  %wide.load1301 = load <4 x i32>, ptr %i.ss, align 4, !tbaa !65
  %i.st = sitofp <4 x i32> %wide.load1301 to <4 x float>
  %i.su = fdiv <4 x float> %i.st, %broadcast.splat1298
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.sr, i64 %index1300
  store <4 x float> %i.su, ptr %i.sv, align 4, !tbaa !123
  %index.next1302 = add nuw i64 %index1300, 4     ; 2 uses
  %i.sw = icmp eq i64 %index.next1302, %n.vec1296
  br i1 %i.sw, label %middle.block1303, label %vector.body1299, !llvm.loop !138

middle.block1303:                                 ; preds = %vector.body1299
  %cmp.n1304 = icmp eq i64 %i.re, %n.vec1296
  br i1 %cmp.n1304, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread, label %scalar.ph1293.preheader

scalar.ph1293.preheader:                          ; preds = %.lr.ph759, %middle.block1303
  %.0757.ph = phi i64 [ 0, %.lr.ph759 ], [ %n.vec1296, %middle.block1303 ]
  br label %scalar.ph1293

bb.fl:                                            ; preds = %bb.fk
  %i.sx = landingpad { ptr, i32 }
          cleanup
  br label %.body356

scalar.ph1293:                                    ; preds = %scalar.ph1293.preheader, %scalar.ph1293
  %.0757 = phi i64 [ %i.td, %scalar.ph1293 ], [ %.0757.ph, %scalar.ph1293.preheader ] ; 3 uses
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.32.0.ph.lcssa654982, i64 %.0757
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !65
  %i.ta = sitofp i32 %i.sz to float
  %i.tb = fdiv float %i.ta, %i.so
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.sr, i64 %.0757
  store float %i.tb, ptr %i.tc, align 4, !tbaa !123
  %i.td = add nuw i64 %.0757, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.td, %i.re
  br i1 %exitcond.not, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread, label %scalar.ph1293, !llvm.loop !139

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread: ; preds = %scalar.ph1293, %middle.block1303
  store ptr %i.le, ptr %0, align 8, !tbaa !140
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.lg, ptr %i.te, align 8, !tbaa !85
  br label %bb.fm

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit.thread
  store ptr %i.le, ptr %0, align 8, !tbaa !140
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.lg, ptr %i.tf, align 8, !tbaa !85
  %.not.i.i.i417 = icmp eq ptr %.sroa.32.0.ph.lcssa654982, null
  br i1 %.not.i.i.i417, label %_ZNSt6vectorIiSaIiEED2Ev.exit418, label %bb.fm

bb.fm:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.tg = ptrtoint ptr %.sroa.27.0.ph.lcssa707977 to i64
  %i.th = ptrtoint ptr %.sroa.32.0.ph.lcssa654982 to i64
  %i.ti = sub i64 %i.tg, %i.th
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.32.0.ph.lcssa654982, i64 noundef %i.ti) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit418

_ZNSt6vectorIiSaIiEED2Ev.exit418:                 ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.fm
  %.not.i.i.i419 = icmp eq ptr %.sroa.0489.0.ph.lcssa603986, null
  br i1 %.not.i.i.i419, label %_ZNSt6vectorIiSaIiEED2Ev.exit420, label %bb.fn

bb.fn:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit418
  %i.tj = ptrtoint ptr %.sroa.27.0.ph.lcssa638983 to i64
  %i.tk = ptrtoint ptr %.sroa.0489.0.ph.lcssa603986 to i64
  %i.tl = sub i64 %i.tj, %i.tk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0489.0.ph.lcssa603986, i64 noundef %i.tl) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit420

_ZNSt6vectorIiSaIiEED2Ev.exit420:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit418, %bb.fn
  ret void

.body356:                                         ; preds = %bb.fh, %bb.fl, %bb.fi, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, %bb.fj, %bb.dm, %bb.ds, %bb.ed, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, %bb.eg, %bb.ee, %bb.ey, %bb.es
  %.pn150.pn.pn.pn = phi { ptr, i32 } [ %.pn150.pn.pn, %bb.es ], [ %i.ra, %bb.ey ], [ %i.ob, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut1DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ], [ %i.ov, %bb.ed ], [ %.pn137.pn.pn, %bb.dm ], [ %i.nc, %bb.ds ], [ %i.qh, %bb.eg ], [ %i.ow, %bb.ee ], [ %i.si, %bb.fh ], [ %i.sx, %bb.fl ], [ %i.sj, %bb.fi ], [ %i.sk, %bb.fj ], [ %i.rn, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511Lut3DOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ]
  call fastcc void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr nonnull %i.lg) #23
  br label %.body

.body:                                            ; preds = %.body356, %bb.cx, %bb.db, %bb.ct, %_ZNSt6vectorIiSaIiEED2Ev.exit311
  %.sroa.27.4.a = phi ptr [ %.sroa.27.3.a, %_ZNSt6vectorIiSaIiEED2Ev.exit311 ], [ %.sroa.27.0.ph.lcssa707977, %bb.ct ], [ %.sroa.27.0.ph.lcssa707977, %bb.db ], [ %.sroa.27.0.ph.lcssa707977, %bb.cx ], [ %.sroa.27.0.ph.lcssa707977, %.body356 ]
  %.sroa.0464.4 = phi ptr [ %.sroa.0464.3, %_ZNSt6vectorIiSaIiEED2Ev.exit311 ], [ %.sroa.32.0.ph.lcssa654982, %bb.ct ], [ %.sroa.32.0.ph.lcssa654982, %bb.db ], [ %.sroa.32.0.ph.lcssa654982, %bb.cx ], [ %.sroa.32.0.ph.lcssa654982, %.body356 ] ; 3 uses
  %.sroa.32.4 = phi ptr [ %.sroa.32.3, %_ZNSt6vectorIiSaIiEED2Ev.exit311 ], [ %.sroa.27.0.ph.lcssa638983, %bb.ct ], [ %.sroa.27.0.ph.lcssa638983, %bb.db ], [ %.sroa.27.0.ph.lcssa638983, %bb.cx ], [ %.sroa.27.0.ph.lcssa638983, %.body356 ]
  %.sroa.0489.4 = phi ptr [ %.sroa.0489.3, %_ZNSt6vectorIiSaIiEED2Ev.exit311 ], [ %.sroa.0489.0.ph.lcssa603986, %bb.ct ], [ %.sroa.0489.0.ph.lcssa603986, %bb.db ], [ %.sroa.0489.0.ph.lcssa603986, %bb.cx ], [ %.sroa.0489.0.ph.lcssa603986, %.body356 ] ; 3 uses
  %.pn175.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit311 ], [ %.pn156.pn.pn, %bb.ct ], [ %i.mi, %bb.db ], [ %i.ln, %bb.cx ], [ %.pn150.pn.pn.pn, %.body356 ]
  %.not.i.i.i421 = icmp eq ptr %.sroa.0464.4, null
  br i1 %.not.i.i.i421, label %_ZNSt6vectorIiSaIiEED2Ev.exit422, label %bb.fo

bb.fo:                                            ; preds = %.body
  %i.tm = ptrtoint ptr %.sroa.27.4.a to i64
  %i.tn = ptrtoint ptr %.sroa.0464.4 to i64
  %i.to = sub i64 %i.tm, %i.tn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0464.4, i64 noundef %i.to) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit422

_ZNSt6vectorIiSaIiEED2Ev.exit422:                 ; preds = %.body, %bb.fo
  %.not.i.i.i423 = icmp eq ptr %.sroa.0489.4, null
  br i1 %.not.i.i.i423, label %_ZNSt6vectorIiSaIiEED2Ev.exit424, label %bb.fp

bb.fp:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit422
  %i.tp = ptrtoint ptr %.sroa.32.4 to i64
  %i.tq = ptrtoint ptr %.sroa.0489.4 to i64
  %i.tr = sub i64 %i.tp, %i.tq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0489.4, i64 noundef %i.tr) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit424

_ZNSt6vectorIiSaIiEED2Ev.exit424:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit422, %bb.fp
  resume { ptr, i32 } %.pn175.pn.pn.pn.pn

bb.fq:                                            ; preds = %bb.em, %bb.dg, %bb.cm, %bb.ca, %bb.az, %bb.an, %bb.u
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4bakeERKNS_5BakerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSo(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::shared_ptr.65", align 8 ; 6 uses
  %7 = alloca %"class.OpenColorIO_v2_5::PackedImageDesc", align 8 ; 7 uses
  %8 = alloca %"class.std::shared_ptr.68", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14
  switch i64 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit89.thread172 [
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit89
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.d = load i32, ptr %i.c, align 1
  %i.e = xor i32 %i.d, 1953723756
  %i.f = getelementptr i8, ptr %i.c, i64 4
  %i.g = load i16, ptr %i.f, align 1
  %i.h = zext i16 %i.g to i32
  %i.i = xor i32 %i.h, 25970
  %i.j = or i32 %i.e, %i.i
  %i.k = icmp ne i32 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit89.thread172

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit89: ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.o = load i32, ptr %i.n, align 1
  %i.p = xor i32 %i.o, 1835101286
  %i.q = getelementptr i8, ptr %i.n, i64 4
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i32
  %i.t = xor i32 %i.s, 101
  %i.u = or i32 %i.p, %i.t
  %i.v = icmp ne i32 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit89.thread172

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit89.thread172: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit89
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.26, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit89.thread172
  %i.z = load ptr, ptr %2, align 8, !tbaa !27
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !14
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.z, i64 noundef %i.aa)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.8, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ad = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.b unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90
  %i.ae = load ptr, ptr %5, align 8, !tbaa !27
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef %i.ae)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
          to label %bb.az unwind label %bb.e

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit89.thread172
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %.047 = phi i1 [ false, %bb.c ], [ true, %bb.b ] ; 2 uses
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ai = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !17
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.047, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.047, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn175 = phi { ptr, i32 } [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.ad) #23
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %.pn175, %bb.f ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.af, %bb.d ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.ay

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit89, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.066 = phi i32 [ 33, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 17, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit89 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZNK16OpenColorIO_v2_55Baker9getConfigEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.65") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.an = invoke noundef i32 @_ZNK16OpenColorIO_v2_55Baker11getCubeSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.h unwind label %bb.i       ; 2 uses

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ao = icmp eq i32 %i.an, -1
  %i.ap = call i32 @llvm.smax.i32(i32 %i.an, i32 2)
  %.sroa.speculated = select i1 %i.ao, i32 %.066, i32 %i.ap ; 6 uses
  %i.aq = invoke noundef i32 @_ZNK16OpenColorIO_v2_55Baker13getShaperSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i unwind label %bb.j ; 2 uses

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit139

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.h
  %i.as = icmp eq i32 %i.aq, -1
  %spec.select87 = select i1 %i.as, i32 %.sroa.speculated, i32 %i.aq ; 4 uses
  %i.at = mul nuw nsw i32 %.sroa.speculated, %.sroa.speculated
  %i.au = mul nuw nsw i32 %i.at, %.sroa.speculated ; 2 uses
  %i.av = mul nuw nsw i32 %i.au, 3
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 2                ; 4 uses
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #22
          to label %bb.k unwind label %.thread192 ; 7 uses

bb.j:                                             ; preds = %bb.h
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit139

bb.k:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  store float 0.000000e+00, ptr %i.ay, align 4, !tbaa !123
  %i.ba = getelementptr i8, ptr %i.ay, i64 4
  %.idx.i.i.i.i.i31.i = add nsw i64 %i.ax, -4
  call void @llvm.memset.p0.i64(ptr align 4 %i.ba, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !123
  invoke void @_ZN16OpenColorIO_v2_521GenerateIdentityLut3DEPfiiNS_10Lut3DOrderE(ptr noundef nonnull %i.ay, i32 noundef %.sroa.speculated, i32 noundef 3, i32 noundef 1)
          to label %bb.l unwind label %bb.aw

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.bb = zext nneg i32 %i.au to i64              ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_515PackedImageDescC1EPvlll(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.ay, i64 noundef %i.bb, i64 noundef 1, i64 noundef 3)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZN16OpenColorIO_v2_525GetInputToTargetProcessorERKNS_5BakerE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.68") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.bc = load ptr, ptr %8, align 8, !tbaa !143
  invoke void @_ZNK16OpenColorIO_v2_512CPUProcessor5applyERKNS_9ImageDescE(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !14
  %i.be = icmp eq i64 %i.bd, 6
  br i1 %i.be, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92: ; preds = %bb.o
  %i.bf = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 1
  %i.bh = xor i32 %i.bg, 1953723756
  %i.bi = getelementptr i8, ptr %i.bf, i64 4
  %i.bj = load i16, ptr %i.bi, align 1
  %i.bk = zext i16 %i.bj to i32
  %i.bl = xor i32 %i.bk, 25970
end_hunk_1
