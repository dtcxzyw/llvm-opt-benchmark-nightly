Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmGeneratorTarget?download=true
inline.NumInlined: 14549
inline.NumDeleted: 4331
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK17cmGeneratorTarget20HaveCxxModuleSupportERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cg, ptr noundef nonnull align 1 dereferenceable(24) @.str.389, i64 24, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !75
  %i.cj = load ptr, ptr %8, align 8, !tbaa !74
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ch
  store i8 0, ptr %i.ck, align 1, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.cl = invoke ptr @_ZNK10cmMakefile13GetDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %i.ce, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %.noexc80
  %i.cm = load ptr, ptr %8, align 8, !tbaa !74    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.cf
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.k
  %i.co = load i64, ptr %i.cf, align 8, !tbaa !77
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %.not = icmp eq ptr %i.cl, null
  %. = select i1 %.not, i32 2, i32 3
  br label %bb.n

bb.l:                                             ; preds = %.noexc.i79
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.m:                                             ; preds = %.noexc80
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = load ptr, ptr %8, align 8, !tbaa !74    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.cf
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.m
  %i.cu = load i64, ptr %i.cf, align 8, !tbaa !77
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.l
  %.pn29 = phi { ptr, i32 } [ %i.cq, %bb.l ], [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %i.cr, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.o

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  %.1 = phi i32 [ %., %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %.pn29.pn.pn = phi { ptr, i32 } [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %.pn29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.3 = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.1, %bb.n ], [ 1, %bb.d ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ]
  ret i32 %.3

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %.pn29.pn.pn.pn.pn = phi { ptr, i32 } [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ], [ %.pn29.pn.pn, %bb.o ], [ %.pn22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ]
  resume { ptr, i32 } %.pn29.pn.pn.pn.pn
}

declare noundef zeroext i1 @_ZNK7cmState18GetLanguageEnabledERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(753), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK17cmGeneratorTarget20CheckCxxModuleStatusERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3187) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [3 x %"struct.std::pair.1559"], align 8 ; 12 uses
  %3 = alloca [5 x %"struct.std::pair.1559"], align 8 ; 18 uses
  %4 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %5 = alloca [3 x %"struct.std::pair.1559"], align 8 ; 12 uses
  %6 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %7 = alloca [3 x %"struct.std::pair.1559"], align 8 ; 12 uses
  %8 = alloca [5 x %"struct.std::pair.1559"], align 8 ; 18 uses
  %9 = alloca %"class.std::vector.1319", align 8  ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %class.cmStandardLevelResolver, align 8 ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.sroa.01.0.copyload.i = load i64, ptr @_ZN2cm15FileSetMetadata11CXX_MODULESE, align 8, !tbaa !76
  %.sroa.22.0.copyload.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm15FileSetMetadata11CXX_MODULESE, i64 8), align 8, !tbaa !78
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !283
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK19cmGeneratorFileSets11GetFileSetsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(304) %i.b, i64 %.sroa.01.0.copyload.i, ptr %.sroa.22.0.copyload.i) ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !392
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !392
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_ZNK17cmGeneratorTarget22HaveCxx20ModuleSourcesEv.exit, label %.thread121

_ZNK17cmGeneratorTarget22HaveCxx20ModuleSourcesEv.exit: ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i64, ptr @_ZN2cm15FileSetMetadata11CXX_MODULESE, align 8, !tbaa !76
  %.sroa.2.0.copyload.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm15FileSetMetadata11CXX_MODULESE, i64 8), align 8, !tbaa !78
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !283
  %i.i = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK19cmGeneratorFileSets20GetInterfaceFileSetsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(304) %i.h, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i) ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !392
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !392
  %i.m = icmp ne ptr %i.j, %i.l
  %cond.fr = freeze i1 %i.m
  br i1 %cond.fr, label %.thread121, label %bb.b

bb.b:                                             ; preds = %_ZNK17cmGeneratorTarget22HaveCxx20ModuleSourcesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @_ZNK17cmGeneratorTarget14GetSourceFilesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.1319") align 8 %9, ptr noundef nonnull align 8 dereferenceable(3187) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.n = load ptr, ptr %9, align 8, !tbaa !502    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !502  ; 2 uses
  %.not125 = icmp eq ptr %i.n, %i.p
  br i1 %.not125, label %_ZSt8_DestroyIP2BTIP12cmSourceFileES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pre129 = load ptr, ptr %9, align 8, !tbaa !505 ; 3 uses
  %.pre130 = load ptr, ptr %i.o, align 8, !tbaa !506 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre129, %.pre130
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIP2BTIP12cmSourceFileES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyI2BTIP12cmSourceFileEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aj, %_ZSt8_DestroyI2BTIP12cmSourceFileEEvPT_.exit.i.i.i ], [ %.pre129, %._crit_edge ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !324  ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI2BTIP12cmSourceFileEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.u, align 8, !tbaa !328
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !329
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #28, !inline_history !34
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #28, !inline_history !34
  br label %_ZSt8_DestroyI2BTIP12cmSourceFileEEvPT_.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !77
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !326
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.x, %bb.f ], [ %i.ah, %bb.g ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.h, label %_ZSt8_DestroyI2BTIP12cmSourceFileEEvPT_.exit.i.i.i, !prof !323

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #28
  br label %_ZSt8_DestroyI2BTIP12cmSourceFileEEvPT_.exit.i.i.i

_ZSt8_DestroyI2BTIP12cmSourceFileEEvPT_.exit.i.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.d, %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, %.pre130
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIP2BTIP12cmSourceFileES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !35

_ZSt8_DestroyIP2BTIP12cmSourceFileES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyI2BTIP12cmSourceFileEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %9, align 8, !tbaa !505
  br label %_ZSt8_DestroyIP2BTIP12cmSourceFileES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIP2BTIP12cmSourceFileES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIP2BTIP12cmSourceFileES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %.1.lcssa185 = phi i1 [ %.3, %_ZSt8_DestroyIP2BTIP12cmSourceFileES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %.3, %._crit_edge ], [ false, %bb.b ]
  %i.ak = phi ptr [ %.pr.i, %_ZSt8_DestroyIP2BTIP12cmSourceFileES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %.pre129, %._crit_edge ], [ %i.n, %bb.b ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorI2BTIP12cmSourceFileESaIS3_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIP2BTIP12cmSourceFileES3_EvT_S5_RSaIT0_E.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !507
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #29
  br label %_ZNSt6vectorI2BTIP12cmSourceFileESaIS3_EED2Ev.exit

_ZNSt6vectorI2BTIP12cmSourceFileESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIP2BTIP12cmSourceFileES3_EvT_S5_RSaIT0_E.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br i1 %.1.lcssa185, label %.thread121, label %bb.ap

bb.j:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.1127 = phi i1 [ false, %.lr.ph ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.sroa.0117.0126 = phi ptr [ %i.n, %.lr.ph ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.aq = load ptr, ptr %.sroa.0117.0126, align 8, !tbaa !503 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZNK12cmSourceFile11GetLanguageB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(376) %i.aq)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = load i64, ptr %i.q, align 8, !tbaa !75
  %i.as = icmp eq i64 %i.ar, 3
  %.pre128 = load ptr, ptr %10, align 8, !tbaa !74 ; 4 uses
  br i1 %i.as, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, label %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.k
  %i.at = load i16, ptr %.pre128, align 1
  %i.au = xor i16 %i.at, 22595
  %i.av = getelementptr i8, ptr %.pre128, i64 2
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i16
  %i.ay = xor i16 %i.ax, 88
  %i.az = or i16 %i.au, %i.ay
  %i.ba = icmp ne i16 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.be = invoke noundef zeroext i1 @_ZNK17cmGeneratorTarget19NeedDyndepForSourceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_PK12cmSourceFile(ptr noundef nonnull align 8 dereferenceable(3187) %0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.aq)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit
  %spec.select47 = select i1 %i.be, i1 true, i1 %.1127
  %.pre = load ptr, ptr %10, align 8, !tbaa !74
  br label %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.thread

bb.n:                                             ; preds = %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %10, align 8, !tbaa !74   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.r
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.k, %bb.m
  %i.bi = phi ptr [ %.pre, %bb.m ], [ %.pre128, %bb.k ], [ %.pre128, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ] ; 2 uses
  %.3 = phi i1 [ %spec.select47, %bb.m ], [ %.1127, %bb.k ], [ %.1127, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ] ; 3 uses
  %i.bj = icmp eq ptr %i.bi, %i.r
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.thread
  %i.bk = load i64, ptr %i.r, align 8, !tbaa !77
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0117.0126, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.bm, %i.p
  br i1 %.not, label %._crit_edge, label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.n
  %i.bn = load i64, ptr %i.r, align 8, !tbaa !77
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bo) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ], [ %i.bd, %bb.l ]
  call void @_ZNSt6vectorI2BTIP12cmSourceFileESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.aq

.thread121:                                       ; preds = %bb.a, %_ZNK17cmGeneratorTarget22HaveCxx20ModuleSourcesEv.exit, %_ZNSt6vectorI2BTIP12cmSourceFileESaIS3_EED2Ev.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !229
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 136
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !260 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 112
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull align 8 dereferenceable(2202) %i.bs, i32 noundef 0)
  br i1 %i.bw, label %bb.t, label %bb.p

bb.p:                                             ; preds = %.thread121
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !228 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.bz = load ptr, ptr %0, align 8, !tbaa !226
  %i.ca = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8cmTarget7GetNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.bz) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.cb = load ptr, ptr %i.bp, align 8, !tbaa !229
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 136
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !260 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(2202) %i.cd)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28, !noalias !3550
  store i64 18, ptr %8, align 8, !tbaa !76, !alias.scope !3551, !noalias !3550
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.390, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !78, !alias.scope !3551, !noalias !3550
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr null, ptr %i.ch, align 8, !tbaa !295, !alias.scope !3551, !noalias !3550
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !74, !noalias !3550
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !75, !noalias !3550
  store i64 %i.cl, ptr %i.ci, align 8, !tbaa !76, !alias.scope !3552, !noalias !3550
  %.sroa.4.0..sroa_idx.i12.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.cj, ptr %.sroa.4.0..sroa_idx.i12.i, align 8, !tbaa !78, !alias.scope !3552, !noalias !3550
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr null, ptr %i.cm, align 8, !tbaa !295, !alias.scope !3552, !noalias !3550
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 91, ptr %i.cn, align 8, !tbaa !76, !alias.scope !3553, !noalias !3550
  %.sroa.4.0..sroa_idx.i20.i = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr @.str.391, ptr %.sroa.4.0..sroa_idx.i20.i, align 8, !tbaa !78, !alias.scope !3553, !noalias !3550
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 64
  store ptr null, ptr %i.co, align 8, !tbaa !295, !alias.scope !3553, !noalias !3550
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 72
  call void @llvm.experimental.noalias.scope.decl(metadata !3554)
  %.pn.i.i25.else.val.i = load ptr, ptr %12, align 8, !tbaa !78, !noalias !3555
  %.sroa.gep38.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.pn2.i.i27.else.val.i = load i64, ptr %.sroa.gep38.i, align 8, !tbaa !76, !noalias !3555
  store i64 %.pn2.i.i27.else.val.i, ptr %i.cp, align 8, !tbaa !76, !alias.scope !3554, !noalias !3550
  %.sroa.4.0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %8, i64 80
  store ptr %.pn.i.i25.else.val.i, ptr %.sroa.4.0..sroa_idx.i28.i, align 8, !tbaa !78, !alias.scope !3554, !noalias !3550
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 88
  store ptr %12, ptr %i.cq, align 8, !tbaa !295, !alias.scope !3554, !noalias !3550
  %i.cr = getelementptr inbounds nuw i8, ptr %8, i64 96
  store i64 234, ptr %i.cr, align 8, !tbaa !76, !alias.scope !3556, !noalias !3550
  %.sroa.4.0..sroa_idx.i36.i = getelementptr inbounds nuw i8, ptr %8, i64 104
  store ptr @.str.392, ptr %.sroa.4.0..sroa_idx.i36.i, align 8, !tbaa !78, !alias.scope !3556, !noalias !3550
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 112
  store ptr null, ptr %i.cs, align 8, !tbaa !295, !alias.scope !3556, !noalias !3550
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull %8, i64 5)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !3550
  %i.ct = getelementptr inbounds nuw i8, ptr %i.by, i64 664
  invoke void @_ZNK10cmMakefile12IssueMessageE11MessageTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK19cmListFileBacktrace(ptr noundef nonnull align 8 dereferenceable(2952) %i.by, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(16) %i.ct)
          to label %_ZNK10cmMakefile12IssueMessageE11MessageTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.s

_ZNK10cmMakefile12IssueMessageE11MessageTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.q
  %i.cu = load ptr, ptr %11, align 8, !tbaa !74   ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZNK10cmMakefile12IssueMessageE11MessageTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !77
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZNK10cmMakefile12IssueMessageE11MessageTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  %i.cz = load ptr, ptr %12, align 8, !tbaa !74   ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !77
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.ap

bb.r:                                             ; preds = %bb.p
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

bb.s:                                             ; preds = %bb.q
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = load ptr, ptr %11, align 8, !tbaa !74   ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.s
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !77
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %bb.r
  %.pn36 = phi { ptr, i32 } [ %i.de, %bb.r ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %i.df, %bb.s ]
  %i.dl = load ptr, ptr %12, align 8, !tbaa !74   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !77
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.aq

bb.t:                                             ; preds = %.thread121
  %i.dq = call noundef i32 @_ZNK17cmGeneratorTarget20HaveCxxModuleSupportERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3187) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  switch i32 %i.dq, label %default.unreachable [
    i32 0, label %bb.u
    i32 1, label %._crit_edge.i.i
    i32 2, label %bb.an
    i32 3, label %bb.ap
  ]

bb.u:                                             ; preds = %bb.t
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !228 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.dt = load ptr, ptr %0, align 8, !tbaa !226
  %i.du = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8cmTarget7GetNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.dt) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28, !noalias !3557
  store i64 18, ptr %7, align 8, !tbaa !76, !alias.scope !3558, !noalias !3557
  %.sroa.4.0..sroa_idx.i.i63 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.390, ptr %.sroa.4.0..sroa_idx.i.i63, align 8, !tbaa !78, !alias.scope !3558, !noalias !3557
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr null, ptr %i.dv, align 8, !tbaa !295, !alias.scope !3558, !noalias !3557
  %i.dw = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.dx = load ptr, ptr %i.du, align 8, !tbaa !74, !noalias !3557
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !75, !noalias !3557
  store i64 %i.dz, ptr %i.dw, align 8, !tbaa !76, !alias.scope !3559, !noalias !3557
  %.sroa.4.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.dx, ptr %.sroa.4.0..sroa_idx.i10.i, align 8, !tbaa !78, !alias.scope !3559, !noalias !3557
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr null, ptr %i.ea, align 8, !tbaa !295, !alias.scope !3559, !noalias !3557
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i64 80, ptr %i.eb, align 8, !tbaa !76, !alias.scope !3560, !noalias !3557
  %.sroa.4.0..sroa_idx.i18.i = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr @.str.393, ptr %.sroa.4.0..sroa_idx.i18.i, align 8, !tbaa !78, !alias.scope !3560, !noalias !3557
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr null, ptr %i.ec, align 8, !tbaa !295, !alias.scope !3560, !noalias !3557
  call void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr nonnull %7, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !3557
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ds, i64 664
  invoke void @_ZNK10cmMakefile12IssueMessageE11MessageTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK19cmListFileBacktrace(ptr noundef nonnull align 8 dereferenceable(2952) %i.ds, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(16) %i.ed)
          to label %_ZNK10cmMakefile12IssueMessageE11MessageTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit64 unwind label %bb.v

_ZNK10cmMakefile12IssueMessageE11MessageTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit64: ; preds = %bb.u
  %i.ee = load ptr, ptr %13, align 8, !tbaa !74   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNK10cmMakefile12IssueMessageE11MessageTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit64
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !77
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNK10cmMakefile12IssueMessageE11MessageTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.ap

bb.v:                                             ; preds = %bb.u
  %i.ej = landingpad { ptr, i32 }
          cleanup
  %i.ek = load ptr, ptr %13, align 8, !tbaa !74   ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
end_hunk_0
begin_hunk_1_@_ZNK17cmGeneratorTarget20CheckCxxModuleStatusERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  store i64 18, ptr %3, align 8, !tbaa !76, !alias.scope !3566, !noalias !3565
  %.sroa.4.0..sroa_idx.i.i85 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.390, ptr %.sroa.4.0..sroa_idx.i.i85, align 8, !tbaa !78, !alias.scope !3566, !noalias !3565
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.gt, align 8, !tbaa !295, !alias.scope !3566, !noalias !3565
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.gv = load ptr, ptr %i.gs, align 8, !tbaa !74, !noalias !3565
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !75, !noalias !3565
  store i64 %i.gx, ptr %i.gu, align 8, !tbaa !76, !alias.scope !3567, !noalias !3565
  %.sroa.4.0..sroa_idx.i12.i86 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.gv, ptr %.sroa.4.0..sroa_idx.i12.i86, align 8, !tbaa !78, !alias.scope !3567, !noalias !3565
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.gy, align 8, !tbaa !295, !alias.scope !3567, !noalias !3565
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 116, ptr %i.gz, align 8, !tbaa !76, !alias.scope !3568, !noalias !3565
  %.sroa.4.0..sroa_idx.i20.i87 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr @.str.396, ptr %.sroa.4.0..sroa_idx.i20.i87, align 8, !tbaa !78, !alias.scope !3568, !noalias !3565
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr null, ptr %i.ha, align 8, !tbaa !295, !alias.scope !3568, !noalias !3565
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.hc = load ptr, ptr %15, align 8, !tbaa !74, !noalias !3565
  %i.hd = load i64, ptr %i.ey, align 8, !tbaa !75, !noalias !3565
  store i64 %i.hd, ptr %i.hb, align 8, !tbaa !76, !alias.scope !3569, !noalias !3565
  %.sroa.4.0..sroa_idx.i28.i88 = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %i.hc, ptr %.sroa.4.0..sroa_idx.i28.i88, align 8, !tbaa !78, !alias.scope !3569, !noalias !3565
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr null, ptr %i.he, align 8, !tbaa !295, !alias.scope !3569, !noalias !3565
  %i.hf = getelementptr inbounds nuw i8, ptr %3, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !3565
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store i64 0, ptr %4, align 8, !noalias !3565
  store i8 46, ptr %i.hh, align 8, !tbaa !77, !noalias !3565
  store i64 1, ptr %i.hg, align 8, !tbaa !76, !noalias !3565
  %.sroa.4.0..sroa_idx.i29.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.hh, ptr %.sroa.4.0..sroa_idx.i29.i, align 8, !tbaa !78, !noalias !3565
  store i64 1, ptr %i.hf, align 8, !tbaa !76, !alias.scope !3570, !noalias !3565
  %.sroa.4.0..sroa_idx.i37.i = getelementptr inbounds nuw i8, ptr %3, i64 104
  store ptr %i.hh, ptr %.sroa.4.0..sroa_idx.i37.i, align 8, !tbaa !78, !alias.scope !3570, !noalias !3565
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 112
  store ptr null, ptr %i.hi, align 8, !tbaa !295, !alias.scope !3570, !noalias !3565
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr nonnull %3, i64 5)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %_ZNK17cmGeneratorTarget7GetNameB5cxx11Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !3565
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !3565
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gq, i64 664
  invoke void @_ZNK10cmMakefile12IssueMessageE11MessageTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK19cmListFileBacktrace(ptr noundef nonnull align 8 dereferenceable(2952) %i.gq, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(16) %i.hj)
          to label %_ZNK10cmMakefile12IssueMessageE11MessageTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit91 unwind label %bb.al

_ZNK10cmMakefile12IssueMessageE11MessageTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit91: ; preds = %bb.ai
  %i.hk = load ptr, ptr %18, align 8, !tbaa !74   ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.hm = icmp eq ptr %i.hk, %i.hl
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNK10cmMakefile12IssueMessageE11MessageTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit91
  %i.hn = load i64, ptr %i.hl, align 8, !tbaa !77
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hk, i64 noundef %i.ho) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNK10cmMakefile12IssueMessageE11MessageTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  %i.hp = load ptr, ptr %15, align 8, !tbaa !74   ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.hr = icmp eq ptr %i.hp, %i.hq
  br i1 %i.hr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.hs = load i64, ptr %i.hq, align 8, !tbaa !77
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.ht) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.ap

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

bb.ak:                                            ; preds = %_ZNK17cmGeneratorTarget7GetNameB5cxx11Ev.exit
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

bb.al:                                            ; preds = %bb.ai
  %i.hw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hx = load ptr, ptr %18, align 8, !tbaa !74   ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.hz = icmp eq ptr %i.hx, %i.hy
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %bb.al
  %i.ia = load i64, ptr %i.hy, align 8, !tbaa !77
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ib) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %bb.al, %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98, %bb.aj
  %.pn40.pn = phi { ptr, i32 } [ %i.hu, %bb.aj ], [ %i.hv, %bb.ak ], [ %i.hw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %i.hw, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %bb.am

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %bb.ah, %bb.z
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn40.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ], [ %i.fh, %bb.z ], [ %i.gp, %bb.ah ] ; 2 uses
  %i.ic = load ptr, ptr %15, align 8, !tbaa !74   ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ie = icmp eq ptr %i.ic, %i.id
  br i1 %i.ie, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %bb.am
  %i.if = load i64, ptr %i.id, align 8, !tbaa !77
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.ig) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %.pn40.pn.pn.pn = phi { ptr, i32 } [ %i.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ %.pn40.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %.pn40.pn.pn, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.aq

bb.an:                                            ; preds = %bb.t
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !228 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  %i.ij = load ptr, ptr %0, align 8, !tbaa !226
  %i.ik = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8cmTarget7GetNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ij) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !3571
  store i64 18, ptr %2, align 8, !tbaa !76, !alias.scope !3572, !noalias !3571
  %.sroa.4.0..sroa_idx.i.i104 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.390, ptr %.sroa.4.0..sroa_idx.i.i104, align 8, !tbaa !78, !alias.scope !3572, !noalias !3571
  %i.il = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.il, align 8, !tbaa !295, !alias.scope !3572, !noalias !3571
  %i.im = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.in = load ptr, ptr %i.ik, align 8, !tbaa !74, !noalias !3571
  %i.io = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !75, !noalias !3571
  store i64 %i.ip, ptr %i.im, align 8, !tbaa !76, !alias.scope !3573, !noalias !3571
  %.sroa.4.0..sroa_idx.i10.i105 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.in, ptr %.sroa.4.0..sroa_idx.i10.i105, align 8, !tbaa !78, !alias.scope !3573, !noalias !3571
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr null, ptr %i.iq, align 8, !tbaa !295, !alias.scope !3573, !noalias !3571
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 247, ptr %i.ir, align 8, !tbaa !76, !alias.scope !3574, !noalias !3571
  %.sroa.4.0..sroa_idx.i18.i106 = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr @.str.397, ptr %.sroa.4.0..sroa_idx.i18.i106, align 8, !tbaa !78, !alias.scope !3574, !noalias !3571
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr null, ptr %i.is, align 8, !tbaa !295, !alias.scope !3574, !noalias !3571
  call void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr nonnull %2, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !3571
  %i.it = getelementptr inbounds nuw i8, ptr %i.ii, i64 664
  invoke void @_ZNK10cmMakefile12IssueMessageE11MessageTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK19cmListFileBacktrace(ptr noundef nonnull align 8 dereferenceable(2952) %i.ii, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(16) %i.it)
          to label %_ZNK10cmMakefile12IssueMessageE11MessageTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit108 unwind label %bb.ao

_ZNK10cmMakefile12IssueMessageE11MessageTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit108: ; preds = %bb.an
  %i.iu = load ptr, ptr %19, align 8, !tbaa !74   ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.iw = icmp eq ptr %i.iu, %i.iv
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %_ZNK10cmMakefile12IssueMessageE11MessageTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit108
  %i.ix = load i64, ptr %i.iv, align 8, !tbaa !77
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.iy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %_ZNK10cmMakefile12IssueMessageE11MessageTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.iz = landingpad { ptr, i32 }
          cleanup
  %i.ja = load ptr, ptr %19, align 8, !tbaa !74   ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.jc = icmp eq ptr %i.ja, %i.jb
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %bb.ao
  %i.jd = load i64, ptr %i.jb, align 8, !tbaa !77
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.je) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %bb.aq

default.unreachable:                              ; preds = %bb.t
  unreachable

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %bb.t, %_ZNSt6vectorI2BTIP12cmSourceFileESaIS3_EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  ret void

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %bb.o
  %.pn45 = phi { ptr, i32 } [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %.pn40.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %i.iz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ %.pn36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ], [ %.pn.pn, %bb.o ]
  resume { ptr, i32 } %.pn45
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK17cmGeneratorTarget19NeedDyndepForSourceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_PK12cmSourceFile(ptr noundef nonnull align 8 dereferenceable(3187) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !74     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !75
  switch i64 %i.e, label %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.thread [
    i64 7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
    i64 3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.a
  %i.f = load i32, ptr %i.c, align 1
  %i.g = xor i32 %i.f, 1953656646
  %i.h = getelementptr i8, ptr %i.c, i64 3
  %i.i = load i32, ptr %i.h, align 1
  %i.j = xor i32 %i.i, 1851880052
  %i.k = or i32 %i.g, %i.j
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.a
  %i.o = load i16, ptr %i.c, align 1
  %i.p = xor i16 %i.o, 22595
  %i.q = getelementptr i8, ptr %i.c, i64 2
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i16
  %i.t = xor i16 %i.s, 88
  %i.u = or i16 %i.p, %i.t
  %i.v = icmp ne i16 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.thread

_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.thread: ; preds = %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  br label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit

_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 3176
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !283
  %i.aa = tail call noundef ptr @_ZNK19cmGeneratorFileSets19GetFileSetForSourceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPK12cmSourceFile(ptr noundef nonnull align 8 dereferenceable(304) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) ; 3 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit
  %i.ab = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK18cmGeneratorFileSet7GetTypeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(496) %i.aa) ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !74
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !75 ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr @_ZN2cm15FileSetMetadata11CXX_MODULESE, align 8, !tbaa !76
  %.sroa.2.0.copyload = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm15FileSetMetadata11CXX_MODULESE, i64 8), align 8, !tbaa !78
  %i.af = icmp eq i64 %i.ae, %.sroa.0.0.copyload
  br i1 %i.af, label %bb.c, label %.thread75

bb.c:                                             ; preds = %bb.b
  %i.ag = icmp eq i64 %i.ae, 0
  br i1 %i.ag, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i47

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i47: ; preds = %bb.c
  %bcmp.i48 = tail call i32 @bcmp(ptr %i.ac, ptr %.sroa.2.0.copyload, i64 %i.ae)
  %i.ah = icmp eq i32 %bcmp.i48, 0
  br i1 %i.ah, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %.thread75

bb.d:                                             ; preds = %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit
  %i.ai = tail call noundef i32 @_ZNK17cmGeneratorTarget13NeedCxxDyndepERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3187) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %.thread77

.thread75:                                        ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i47, %bb.b
  %i.ak = tail call noundef i32 @_ZNK17cmGeneratorTarget13NeedCxxDyndepERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3187) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 4 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %.noexc.i

.noexc.i:                                         ; preds = %.thread75
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.am, ptr %4, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 20, ptr %i.b, align 8, !tbaa !76
  %i.an = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.an, ptr %4, align 8, !tbaa !74
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !76  ; 3 uses
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.an, ptr noundef nonnull align 1 dereferenceable(20) @.str.398, i64 20, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !75
  %i.aq = load ptr, ptr %4, align 8, !tbaa !74
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao
  store i8 0, ptr %i.ar, align 1, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.as = invoke ptr @_ZNK18cmGeneratorFileSet11GetPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(496) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.g       ; 4 uses

bb.e:                                             ; preds = %.noexc
  %i.at = load ptr, ptr %4, align 8, !tbaa !74    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.am
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.av = load i64, ptr %i.am, align 8, !tbaa !77
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %.thread77, label %_ZNK7cmValue7IsEmptyEv.exit.i

_ZNK7cmValue7IsEmptyEv.exit.i:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !75 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %.thread77, label %_ZNK7cmValue5IsSetEv.exit

_ZNK7cmValue5IsSetEv.exit:                        ; preds = %_ZNK7cmValue7IsEmptyEv.exit.i
  %i.ba = load ptr, ptr %i.as, align 8, !tbaa !74
  %i.bb = call noundef zeroext i1 @_ZN7cmValue10IsNOTFOUNDESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.ay, ptr %i.ba) #28
  br i1 %i.bb, label %.thread77, label %bb.h

bb.f:                                             ; preds = %.noexc.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.g:                                             ; preds = %.noexc
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %4, align 8, !tbaa !74    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.am
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.g
  %i.bg = load i64, ptr %i.am, align 8, !tbaa !77
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.f ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %i.bd, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.l

bb.h:                                             ; preds = %_ZNK7cmValue5IsSetEv.exit
  %i.bi = load ptr, ptr %i.as, align 8, !tbaa !74
  %i.bj = load i64, ptr %i.ax, align 8, !tbaa !75
  %i.bk = call noundef zeroext i1 @_ZN7cmValue4IsOnESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.bj, ptr %i.bi) #28
  br label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit

.thread77:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK7cmValue7IsEmptyEv.exit.i, %_ZNK7cmValue5IsSetEv.exit, %bb.d
  %i.bl = phi i32 [ %i.ai, %bb.d ], [ %i.ak, %_ZNK7cmValue5IsSetEv.exit ], [ %i.ak, %_ZNK7cmValue7IsEmptyEv.exit.i ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.bm, ptr %5, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 20, ptr %i.a, align 8, !tbaa !76
  %i.bn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc56 unwind label %bb.j   ; 2 uses

.noexc56:                                         ; preds = %.thread77
  store ptr %i.bn, ptr %5, align 8, !tbaa !74
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !76  ; 3 uses
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.bn, ptr noundef nonnull align 1 dereferenceable(20) @.str.398, i64 20, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !75
  %i.bq = load ptr, ptr %5, align 8, !tbaa !74
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bo
  store i8 0, ptr %i.br, align 1, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.bs = invoke ptr @_ZNK12cmSourceFile11GetPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.i unwind label %bb.k       ; 4 uses

bb.i:                                             ; preds = %.noexc56
  %i.bt = load ptr, ptr %5, align 8, !tbaa !74    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.bm
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.i
  %i.bv = load i64, ptr %i.bm, align 8, !tbaa !77
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

end_hunk_1
