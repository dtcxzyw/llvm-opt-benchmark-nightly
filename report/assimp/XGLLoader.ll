inline.NumInlined: 2834
inline.NumDeleted: 1257
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6Assimp11XGLImporter17ReadIndexFromTextERN4pugi8xml_nodeE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8                ; 2 uses
  %i.g = load i64, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.j, %bb.e ] ; 4 uses
  %i.i = load i8, ptr %.0.i.i, align 1            ; 2 uses
  switch i8 %i.i, label %.critedge.i.i [
    i8 32, label %bb.d
    i8 9, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %.not.i.i = icmp eq ptr %.0.i.i, %i.h
  br i1 %.not.i.i, label %.critedge.i.ithread-pre-split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.c, !llvm.loop !44

.critedge.i.ithread-pre-split:                    ; preds = %bb.d
  %.pr = load i8, ptr %i.h, align 1
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.c, %.critedge.i.ithread-pre-split
  %i.k = phi i8 [ %.pr, %.critedge.i.ithread-pre-split ], [ %i.i, %bb.c ] ; 3 uses
  %.0.lcssa.i.i = phi ptr [ %i.h, %.critedge.i.ithread-pre-split ], [ %.0.i.i, %bb.c ]
  switch i8 %i.k, label %bb.i [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit:         ; preds = %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i
  %i.l = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  br i1 %i.l, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA46_KcEEEvDpOT_.exit, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.m = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc11 unwind label %bb.h

.noexc11:                                         ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr @.str, ptr %i.b, align 8
  invoke void @_ZN6Assimp6Logger5errorIJPKcRA46_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(46) @.str.77)
          to label %.noexc12 unwind label %bb.h

.noexc12:                                         ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA46_KcEEEvDpOT_.exit

bb.g:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.h:                                             ; preds = %.noexc11, %bb.f, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.i:                                             ; preds = %.critedge.i.i
  %i.p = add i8 %i.k, -58
  %or.cond11.i = icmp ult i8 %i.p, -10
  br i1 %or.cond11.i, label %bb.j, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %i.q = phi i8 [ %i.v, %.lr.ph.i ], [ %i.k, %bb.i ]
  %.013.i = phi i32 [ %i.t, %.lr.ph.i ], [ 0, %bb.i ]
  %.0812.i = phi ptr [ %i.u, %.lr.ph.i ], [ %.0.lcssa.i.i, %bb.i ]
  %i.r = mul i32 %.013.i, 10
  %narrow.i = add nsw i8 %i.q, -48
  %i.s = zext nneg i8 %narrow.i to i32
  %i.t = add i32 %i.r, %i.s                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0812.i, i64 1 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1               ; 2 uses
  %i.w = add i8 %i.v, -58
  %or.cond.i = icmp ult i8 %i.w, -10
  br i1 %or.cond.i, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA46_KcEEEvDpOT_.exit, label %.lr.ph.i, !llvm.loop !94

bb.j:                                             ; preds = %bb.i
  %i.x = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc13 unwind label %bb.l

.noexc13:                                         ; preds = %bb.j
  br i1 %i.x, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA46_KcEEEvDpOT_.exit, label %bb.k

bb.k:                                             ; preds = %.noexc13
  %i.y = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc14 unwind label %bb.l

.noexc14:                                         ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr @.str, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger5errorIJPKcRA21_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(21) @.str.79)
          to label %.noexc15 unwind label %bb.l

.noexc15:                                         ; preds = %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA46_KcEEEvDpOT_.exit

bb.l:                                             ; preds = %.noexc14, %bb.k, %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA46_KcEEEvDpOT_.exit: ; preds = %.lr.ph.i, %.noexc13, %.noexc15, %.noexc12, %.noexc
  %.1 = phi i32 [ -1, %.noexc12 ], [ -1, %.noexc ], [ -1, %.noexc15 ], [ -1, %.noexc13 ], [ %i.t, %.lr.ph.i ]
  %i.aa = load ptr, ptr %2, align 8               ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.c
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA46_KcEEEvDpOT_.exit
  %i.ac = load i64, ptr %i.c, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA46_KcEEEvDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i32 %.1

bb.m:                                             ; preds = %bb.h, %bb.l, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.z, %bb.l ], [ %i.o, %bb.h ]
  %i.ae = load ptr, ptr %2, align 8               ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.c
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.m
  %i.ag = load i64, ptr %i.c, align 8
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11XGLImporter9ReadTrafoERN4pugi8xml_nodeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.aiMatrix4x4t) align 4 captures(none) initializes((0, 64)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.pugi::xml_node", align 8    ; 6 uses
  %4 = alloca %"class.pugi::xml_object_range", align 16 ; 6 uses
  %5 = alloca %"class.pugi::xml_node_iterator", align 16 ; 8 uses
  %6 = alloca %"class.pugi::xml_node_iterator", align 16 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  store float 1.000000e+00, ptr %0, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.k, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.l = tail call ptr @_ZNK4pugi8xml_node5childEPKc(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.28)
  store ptr %i.l, ptr %3, align 8
  %i.m = call noundef zeroext i1 @_ZNK4pugi8xml_node5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br i1 %i.m, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA58_KcEEEvDpOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZNK4pugi8xml_node8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.pugi::xml_object_range") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.n = load <2 x ptr>, ptr %4, align 16
  store <2 x ptr> %i.n, ptr %5, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load <2 x ptr>, ptr %i.o, align 16
  store <2 x ptr> %i.p, ptr %6, align 16
  %i.q = call noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %bb.b
  %.sroa.0128.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.b ], [ %.sroa.0128.1279, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ] ; 5 uses
  %.sroa.22.0.lcssa = phi float [ 0.000000e+00, %bb.b ], [ %.sroa.22.1280, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ] ; 3 uses
  %.sroa.092.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.b ], [ %.sroa.092.1281, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ] ; 6 uses
  %.sroa.8.0.lcssa = phi float [ 0.000000e+00, %bb.b ], [ %.sroa.8.1282, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ]
  %.sroa.077.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.b ], [ %.sroa.077.1283, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ] ; 2 uses
  %.sroa.22159.0.lcssa = phi float [ 0.000000e+00, %bb.b ], [ %.sroa.22159.1284, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ] ; 4 uses
  %.0.lcssa = phi float [ 1.000000e+00, %bb.b ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.sroa.0128.0.vec.extract131 = extractelement <2 x float> %.sroa.0128.0.lcssa, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.0128.0.lcssa, %.sroa.0128.0.lcssa
  %i.v = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.w = call float @llvm.fmuladd.f32(float %.sroa.0128.0.vec.extract131, float %.sroa.0128.0.vec.extract131, float %i.v)
  %i.x = call noundef float @llvm.fmuladd.f32(float %.sroa.22159.0.lcssa, float %.sroa.22159.0.lcssa, float %i.w) ; 3 uses
  %i.y = fpext float %i.x to double
  %i.z = fcmp olt double %i.y, 1.000000e-04
  br i1 %i.z, label %bb.y, label %bb.x

bb.c:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %.0244 = phi float [ 1.000000e+00, %.lr.ph ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ] ; 5 uses
  %.sroa.22159.0243 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.22159.1284, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ] ; 6 uses
  %.sroa.077.0242 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.077.1283, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ] ; 6 uses
  %.sroa.8.0241 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.8.1282, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ] ; 6 uses
  %.sroa.092.0240 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.092.1281, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ] ; 6 uses
  %.sroa.22.0239 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.22.1280, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ] ; 6 uses
  %.sroa.0128.0238 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0128.1279, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ] ; 6 uses
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi17xml_node_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %5) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.ab = call noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) ; 4 uses
  store ptr %i.r, ptr %8, align 8
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.88) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ad = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i64 %i.ad, ptr %i.e, align 8
  %i.ae = icmp ugt i64 %i.ad, 15
  br i1 %i.ae, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc52 unwind label %.loopexit ; 2 uses

.noexc52:                                         ; preds = %.noexc.i
  store ptr %i.af, ptr %8, align 8
  %i.ag = load i64, ptr %i.e, align 8
  store i64 %i.ag, ptr %i.r, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc52, %bb.e
  %i.ah = phi ptr [ %i.af, %.noexc52 ], [ %i.r, %bb.e ] ; 2 uses
  switch i64 %i.ad, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ai = load i8, ptr %i.ab, align 1
  store i8 %i.ai, ptr %i.ah, align 1
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull align 1 %i.ab, i64 %i.ad, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.aj = load i64, ptr %i.e, align 8             ; 2 uses
  store i64 %i.aj, ptr %i.s, align 8
  %i.ak = load ptr, ptr %8, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aj
  store i8 0, ptr %i.al, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  store ptr %i.t, ptr %7, align 8, !alias.scope !95
  %i.am = load ptr, ptr %8, align 8, !noalias !95 ; 2 uses
  %i.an = load i64, ptr %i.s, align 8, !noalias !95 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26, !noalias !95
  store i64 %i.an, ptr %i.d, align 8, !noalias !95
  %i.ao = icmp ugt i64 %i.an, 15
  br i1 %i.ao, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.ap = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc53 unwind label %bb.l   ; 2 uses

.noexc53:                                         ; preds = %.noexc.i.i
  store ptr %i.ap, ptr %7, align 8, !alias.scope !95
  %i.aq = load i64, ptr %i.d, align 8, !noalias !95
  store i64 %i.aq, ptr %i.t, align 8, !alias.scope !95
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc53, %bb.h
  %i.ar = phi ptr [ %i.ap, %.noexc53 ], [ %i.t, %bb.h ] ; 2 uses
  switch i64 %i.an, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.as = load i8, ptr %i.am, align 1
  store i8 %i.as, ptr %i.ar, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %i.am, i64 %i.an, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i
  %i.at = load i64, ptr %i.d, align 8, !noalias !95 ; 2 uses
  store i64 %i.at, ptr %i.u, align 8, !alias.scope !95
  %i.au = load ptr, ptr %7, align 8, !alias.scope !95
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  store i8 0, ptr %i.av, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26, !noalias !95
  %i.aw = load i64, ptr %i.s, align 8, !noalias !95
  %.not.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i, label %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %.lr.ph.i
  %.06.i = phi i64 [ %i.bd, %.lr.ph.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ] ; 2 uses
  %i.ax = load ptr, ptr %7, align 8, !alias.scope !95
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.06.i ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i32
  %i.bb = call i32 @tolower(i32 noundef %i.ba) #31
  %i.bc = trunc i32 %i.bb to i8
  store i8 %i.bc, ptr %i.ay, align 1
  %i.bd = add nuw i64 %.06.i, 1                   ; 2 uses
  %i.be = load i64, ptr %i.s, align 8, !noalias !95
  %i.bf = icmp ult i64 %i.bd, %i.be
  br i1 %i.bf, label %.lr.ph.i, label %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, !llvm.loop !20

_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.bg = load ptr, ptr %8, align 8               ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.r
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bi = load i64, ptr %i.r, align 8
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.bk = load i64, ptr %i.u, align 8             ; 4 uses
  switch i64 %i.bk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167 [
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 2, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bl = load ptr, ptr %7, align 8               ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 1
  %i.bn = xor i32 %i.bm, 2003988326
  %i.bo = getelementptr i8, ptr %i.bl, i64 3
  %i.bp = load i32, ptr %i.bo, align 1
  %i.bq = xor i32 %i.bp, 1685217655
  %i.br = or i32 %i.bn, %i.bq
  %i.bs = icmp ne i32 %i.br, 0
  %i.bt = zext i1 %i.bs to i32
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA48_KcEEEvDpOT_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bv = invoke { <2 x float>, float } @_ZN6Assimp11XGLImporter8ReadVec3ERN4pugi8xml_nodeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.k unwind label %bb.n       ; 2 uses

bb.k:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.fca.0.extract13 = extractvalue { <2 x float>, float } %i.bv, 0
  %.fca.1.extract14 = extractvalue { <2 x float>, float } %i.bv, 1
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167thread-pre-split

.loopexit:                                        ; preds = %.noexc.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

.loopexit.split-lp:                               ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

bb.l:                                             ; preds = %.noexc.i.i
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bx = load ptr, ptr %8, align 8               ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.r
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.l
  %i.bz = load i64, ptr %i.r, align 8
end_hunk_0
begin_hunk_1_@_ZN6Assimp11XGLImporter9ReadTrafoERN4pugi8xml_nodeE:bb.a
  br label %bb.w

bb.m:                                             ; preds = %.noexc64, %bb.u, %bb.t, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62.thread
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.n:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pre = load ptr, ptr %7, align 8
  %bcmp.i57 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.30, i64 %i.bk)
  %i.cd = icmp eq i32 %bcmp.i57, 0
  br i1 %i.cd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58.thread, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA48_KcEEEvDpOT_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58
  %i.ce = invoke { <2 x float>, float } @_ZN6Assimp11XGLImporter8ReadVec3ERN4pugi8xml_nodeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.o unwind label %bb.p       ; 2 uses

bb.o:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58.thread
  %.fca.0.extract7 = extractvalue { <2 x float>, float } %i.ce, 0
  %.fca.1.extract8 = extractvalue { <2 x float>, float } %i.ce, 1
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167thread-pre-split

bb.p:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58.thread
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pre257 = load ptr, ptr %7, align 8
  %bcmp.i59 = call i32 @bcmp(ptr %.pre257, ptr nonnull @.str.31, i64 %i.bk)
  %i.cg = icmp eq i32 %bcmp.i59, 0
  br i1 %i.cg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA48_KcEEEvDpOT_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60
  %i.ch = invoke { <2 x float>, float } @_ZN6Assimp11XGLImporter8ReadVec3ERN4pugi8xml_nodeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.q unwind label %bb.r       ; 2 uses

bb.q:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread
  %.fca.0.extract2 = extractvalue { <2 x float>, float } %i.ch, 0
  %.fca.1.extract3 = extractvalue { <2 x float>, float } %i.ch, 1
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167thread-pre-split

bb.r:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167thread-pre-split: ; preds = %bb.k, %bb.q, %bb.o
  %.sroa.0128.1.ph = phi <2 x float> [ %.sroa.0128.0238, %bb.q ], [ %.sroa.0128.0238, %bb.o ], [ %.fca.0.extract13, %bb.k ]
  %.sroa.22.1.ph = phi float [ %.sroa.22.0239, %bb.q ], [ %.fca.1.extract8, %bb.o ], [ %.sroa.22.0239, %bb.k ]
  %.sroa.092.1.ph = phi <2 x float> [ %.sroa.092.0240, %bb.q ], [ %.fca.0.extract7, %bb.o ], [ %.sroa.092.0240, %bb.k ]
  %.sroa.8.1.ph = phi float [ %.fca.1.extract3, %bb.q ], [ %.sroa.8.0241, %bb.o ], [ %.sroa.8.0241, %bb.k ]
  %.sroa.077.1.ph = phi <2 x float> [ %.fca.0.extract2, %bb.q ], [ %.sroa.077.0242, %bb.o ], [ %.sroa.077.0242, %bb.k ]
  %.sroa.22159.1.ph = phi float [ %.sroa.22159.0243, %bb.q ], [ %.sroa.22159.0243, %bb.o ], [ %.fca.1.extract14, %bb.k ]
  %.pr = load i64, ptr %i.u, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167thread-pre-split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cj = phi i64 [ %.pr, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167thread-pre-split ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.sroa.0128.1 = phi <2 x float> [ %.sroa.0128.1.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167thread-pre-split ], [ %.sroa.0128.0238, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %.sroa.22.1 = phi float [ %.sroa.22.1.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167thread-pre-split ], [ %.sroa.22.0239, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %.sroa.092.1 = phi <2 x float> [ %.sroa.092.1.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167thread-pre-split ], [ %.sroa.092.0240, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %.sroa.8.1 = phi float [ %.sroa.8.1.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167thread-pre-split ], [ %.sroa.8.0241, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %.sroa.077.1 = phi <2 x float> [ %.sroa.077.1.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167thread-pre-split ], [ %.sroa.077.0242, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %.sroa.22159.1 = phi float [ %.sroa.22159.1.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167thread-pre-split ], [ %.sroa.22159.0243, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %i.ck = icmp eq i64 %i.cj, 5
  br i1 %i.ck, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA48_KcEEEvDpOT_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167
  %i.cl = load ptr, ptr %7, align 8               ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 1
  %i.cn = xor i32 %i.cm, 1818321779
  %i.co = getelementptr i8, ptr %i.cl, i64 4
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = zext i8 %i.cp to i32
  %i.cr = xor i32 %i.cq, 101
  %i.cs = or i32 %i.cn, %i.cr
  %i.ct = icmp ne i32 %i.cs, 0
  %i.cu = zext i1 %i.ct to i32
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62.thread, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA48_KcEEEvDpOT_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62
  %i.cw = invoke noundef float @_ZN6Assimp11XGLImporter9ReadFloatERN4pugi8xml_nodeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.s unwind label %bb.m       ; 4 uses

bb.s:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62.thread
  %i.cx = fcmp olt float %i.cw, 0.000000e+00
  br i1 %i.cx, label %bb.t, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA48_KcEEEvDpOT_.exit

bb.t:                                             ; preds = %bb.s
  %i.cy = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc63 unwind label %bb.m

.noexc63:                                         ; preds = %bb.t
  br i1 %i.cy, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA48_KcEEEvDpOT_.exit, label %bb.u

bb.u:                                             ; preds = %.noexc63
  %i.cz = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc64 unwind label %bb.m

.noexc64:                                         ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store ptr @.str, ptr %i.c, align 8
  invoke void @_ZN6Assimp6Logger5errorIJPKcRA48_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.cz, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(48) @.str.33)
          to label %.noexc65 unwind label %bb.m

.noexc65:                                         ; preds = %.noexc64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA48_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA48_KcEEEvDpOT_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167, %.noexc65, %.noexc63, %bb.s, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62
  %.sroa.22159.1284 = phi float [ %.sroa.22159.1, %.noexc65 ], [ %.sroa.22159.1, %bb.s ], [ %.sroa.22159.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62 ], [ %.sroa.22159.1, %.noexc63 ], [ %.sroa.22159.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167 ], [ %.sroa.22159.0243, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58 ], [ %.sroa.22159.0243, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.22159.0243, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60 ] ; 2 uses
  %.sroa.077.1283 = phi <2 x float> [ %.sroa.077.1, %.noexc65 ], [ %.sroa.077.1, %bb.s ], [ %.sroa.077.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62 ], [ %.sroa.077.1, %.noexc63 ], [ %.sroa.077.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167 ], [ %.sroa.077.0242, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58 ], [ %.sroa.077.0242, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.077.0242, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60 ] ; 2 uses
  %.sroa.8.1282 = phi float [ %.sroa.8.1, %.noexc65 ], [ %.sroa.8.1, %bb.s ], [ %.sroa.8.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62 ], [ %.sroa.8.1, %.noexc63 ], [ %.sroa.8.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167 ], [ %.sroa.8.0241, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58 ], [ %.sroa.8.0241, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.8.0241, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60 ] ; 2 uses
  %.sroa.092.1281 = phi <2 x float> [ %.sroa.092.1, %.noexc65 ], [ %.sroa.092.1, %bb.s ], [ %.sroa.092.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62 ], [ %.sroa.092.1, %.noexc63 ], [ %.sroa.092.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167 ], [ %.sroa.092.0240, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58 ], [ %.sroa.092.0240, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.092.0240, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60 ] ; 2 uses
  %.sroa.22.1280 = phi float [ %.sroa.22.1, %.noexc65 ], [ %.sroa.22.1, %bb.s ], [ %.sroa.22.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62 ], [ %.sroa.22.1, %.noexc63 ], [ %.sroa.22.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167 ], [ %.sroa.22.0239, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58 ], [ %.sroa.22.0239, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.22.0239, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60 ] ; 2 uses
  %.sroa.0128.1279 = phi <2 x float> [ %.sroa.0128.1, %.noexc65 ], [ %.sroa.0128.1, %bb.s ], [ %.sroa.0128.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62 ], [ %.sroa.0128.1, %.noexc63 ], [ %.sroa.0128.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167 ], [ %.sroa.0128.0238, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58 ], [ %.sroa.0128.0238, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.0128.0238, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60 ] ; 2 uses
  %.1 = phi float [ %i.cw, %.noexc65 ], [ %i.cw, %bb.s ], [ %.0244, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62 ], [ %i.cw, %.noexc63 ], [ %.0244, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167 ], [ %.0244, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58 ], [ %.0244, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.0244, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60 ] ; 2 uses
  %i.da = load ptr, ptr %7, align 8               ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.t
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA48_KcEEEvDpOT_.exit
  %i.dc = load i64, ptr %i.t, align 8
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA48_KcEEEvDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.de = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %5) ; 0 uses
  %i.df = call noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
  br i1 %i.df, label %bb.c, label %._crit_edge

bb.v:                                             ; preds = %bb.r, %bb.p, %bb.n, %bb.m
  %.pn44 = phi { ptr, i32 } [ %i.cb, %bb.m ], [ %i.cc, %bb.n ], [ %i.cf, %bb.p ], [ %i.ci, %bb.r ]
  %i.dg = load ptr, ptr %7, align 8               ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.t
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.v
  %i.di = load i64, ptr %i.t, align 8
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %.pn44.pn = phi { ptr, i32 } [ %.pn44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn44.pn

bb.x:                                             ; preds = %._crit_edge
  %.sroa.092.0.vec.extract95 = extractelement <2 x float> %.sroa.092.0.lcssa, i64 0 ; 2 uses
  %foldExtExtBinop286 = fmul <2 x float> %.sroa.092.0.lcssa, %.sroa.092.0.lcssa
  %i.dk = extractelement <2 x float> %foldExtExtBinop286, i64 1
  %i.dl = call float @llvm.fmuladd.f32(float %.sroa.092.0.vec.extract95, float %.sroa.092.0.vec.extract95, float %i.dk)
  %i.dm = call noundef float @llvm.fmuladd.f32(float %.sroa.22.0.lcssa, float %.sroa.22.0.lcssa, float %i.dl) ; 3 uses
  %i.dn = fpext float %i.dm to double
  %i.do = fcmp olt double %i.dn, 1.000000e-04
  br i1 %i.do, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x, %._crit_edge
  %i.dp = call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.dp, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA58_KcEEEvDpOT_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dq = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr @.str, ptr %i.b, align 8
  call void @_ZN6Assimp6Logger5errorIJPKcRA58_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.dq, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(58) @.str.34)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA58_KcEEEvDpOT_.exit

bb.aa:                                            ; preds = %bb.x
  %i.dr = fcmp oeq float %i.x, 0.000000e+00
  br i1 %i.dr, label %_ZN10aiVector3tIfE9NormalizeEv.exit, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.aa
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.x)
  %i.ds = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.dt = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = fmul <2 x float> %.sroa.0128.0.lcssa, %i.du
  %i.dw = fmul float %.sroa.22159.0.lcssa, %i.ds
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZN10aiVector3tIfE9NormalizeEv.exit:              ; preds = %bb.aa, %_ZN10aiVector3tIfEdVEf.exit.i
  %.sroa.0128.2 = phi <2 x float> [ %.sroa.0128.0.lcssa, %bb.aa ], [ %i.dv, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 6 uses
  %.sroa.22159.2 = phi float [ %.sroa.22159.0.lcssa, %bb.aa ], [ %i.dw, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 4 uses
  %i.dx = fcmp oeq float %i.dm, 0.000000e+00
  %9 = shufflevector <2 x float> %.sroa.092.0.lcssa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %10 = insertelement <2 x float> %9, float %.sroa.22.0.lcssa, i64 1 ; 2 uses
  br i1 %i.dx, label %_ZN10aiVector3tIfE9NormalizeEv.exit74, label %_ZN10aiVector3tIfEdVEf.exit.i72

_ZN10aiVector3tIfEdVEf.exit.i72:                  ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit
  %sqrt.i.i73 = call noundef float @llvm.sqrt.f32(float %i.dm)
  %i.dy = fdiv float 1.000000e+00, %sqrt.i.i73
  %i.dz = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eb = fmul <2 x float> %.sroa.092.0.lcssa, %i.ea
  %11 = fmul <2 x float> %10, %i.ea
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit74

_ZN10aiVector3tIfE9NormalizeEv.exit74:            ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit, %_ZN10aiVector3tIfEdVEf.exit.i72
  %12 = phi <2 x float> [ %10, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %11, %_ZN10aiVector3tIfEdVEf.exit.i72 ] ; 4 uses
  %i.ec = phi <2 x float> [ %.sroa.092.0.lcssa, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %i.eb, %_ZN10aiVector3tIfEdVEf.exit.i72 ] ; 3 uses
  %.sroa.0128.4.vec.extract152 = extractelement <2 x float> %.sroa.0128.2, i64 0 ; 2 uses
  %shift = shufflevector <2 x float> %.sroa.0128.2, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop288 = fmul <2 x float> %shift, %12
  %13 = extractelement <2 x float> %foldExtExtBinop288, i64 0
  %i.ed = extractelement <2 x float> %i.ec, i64 0 ; 2 uses
  %i.ee = call float @llvm.fmuladd.f32(float %i.ed, float %.sroa.0128.4.vec.extract152, float %13)
  %14 = extractelement <2 x float> %12, i64 1     ; 3 uses
  %i.ef = call noundef float @llvm.fmuladd.f32(float %14, float %.sroa.22159.2, float %i.ee)
  %i.eg = call noundef float @llvm.fabs.f32(float %i.ef)
  %i.eh = fpext float %i.eg to double
  %i.ei = fcmp ogt double %i.eh, 1.000000e-04
  br i1 %i.ei, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit74
  %i.ej = call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.ej, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA58_KcEEEvDpOT_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ek = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr @.str, ptr %i.a, align 8
  call void @_ZN6Assimp6Logger5errorIJPKcRA70_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ek, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(70) @.str.35)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA58_KcEEEvDpOT_.exit

bb.ad:                                            ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit74
  %15 = fneg <2 x float> %i.ec
  %i.el = fneg float %14
  %i.em = fmul float %.sroa.0128.4.vec.extract152, %i.el
  %i.en = call float @llvm.fmuladd.f32(float %.sroa.22159.2, float %i.ed, float %i.em)
  %16 = shufflevector <2 x float> %.sroa.0128.2, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %17 = insertelement <2 x float> %16, float %.sroa.22159.2, i64 1
  %18 = fmul <2 x float> %17, %15
  %19 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.sroa.0128.2, <2 x float> %12, <2 x float> %18) ; 2 uses
  %20 = extractelement <2 x float> %19, i64 0
  %i.eo = fmul float %.0.lcssa, %20
  %i.ep = fmul float %.0.lcssa, %14
  %i.eq = fmul float %.0.lcssa, %.sroa.22159.2
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.eo, ptr %i.es, align 4
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.ep, ptr %i.et, align 4
  store float %i.eq, ptr %i.i, align 4
  %i.eu = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %.0.lcssa, i64 0
  %i.ev = shufflevector <4 x float> %i.eu, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3> ; 2 uses
  %i.ew = shufflevector <2 x float> %.sroa.0128.2, <2 x float> %.sroa.077.0.lcssa, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %21 = shufflevector <2 x float> %19, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %22 = shufflevector <4 x float> %i.ew, <4 x float> %21, <4 x i32> <i32 5, i32 poison, i32 2, i32 3>
  %23 = shufflevector <2 x float> %i.ec, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ex = shufflevector <4 x float> %22, <4 x float> %23, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.ey = fmul <4 x float> %i.ev, %i.ex
  store <4 x float> %i.ey, ptr %0, align 4
  %i.ez = shufflevector <2 x float> %.sroa.0128.2, <2 x float> %.sroa.077.0.lcssa, <4 x i32> <i32 poison, i32 poison, i32 1, i32 3>
  %i.fa = insertelement <4 x float> %i.ez, float %i.en, i64 0
  %24 = shufflevector <2 x float> %12, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %25 = shufflevector <4 x float> %i.fa, <4 x float> %24, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.fb = fmul <4 x float> %i.ev, %25
  store <4 x float> %i.fb, ptr %i.er, align 4
  store float %.sroa.8.0.lcssa, ptr %i.j, align 4
  br label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA58_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA58_KcEEEvDpOT_.exit: ; preds = %bb.ac, %bb.ab, %bb.z, %bb.y, %bb.a, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6aiNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(1144) dereferenceable(1144)) unnamed_addr #2

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare ptr @_ZNK4pugi8xml_node5childEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden noundef float @_ZN6Assimp11XGLImporter9ReadFloatERN4pugi8xml_nodeE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca float, align 4                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.d, ptr %2, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.e, align 8
  store i8 0, ptr %i.d, align 8
  %i.f = invoke noundef zeroext i1 @_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE16getValueAsStringERS2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.g       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8                ; 2 uses
  %i.h = load i64, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.0.i.i = phi ptr [ %i.g, %bb.b ], [ %i.k, %bb.e ] ; 4 uses
  %i.j = load i8, ptr %.0.i.i, align 1            ; 2 uses
  switch i8 %i.j, label %.critedge.i.i [
    i8 32, label %bb.d
    i8 9, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %.not.i.i = icmp eq ptr %.0.i.i, %i.i
  br i1 %.not.i.i, label %.critedge.i.ithread-pre-split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.c, !llvm.loop !44

.critedge.i.ithread-pre-split:                    ; preds = %bb.d
  %.pr = load i8, ptr %i.i, align 1
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.c, %.critedge.i.ithread-pre-split
  %i.l = phi i8 [ %.pr, %.critedge.i.ithread-pre-split ], [ %i.j, %bb.c ]
  %.0.lcssa.i.i = phi ptr [ %i.i, %.critedge.i.ithread-pre-split ], [ %.0.i.i, %bb.c ] ; 2 uses
  switch i8 %i.l, label %bb.i [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit:         ; preds = %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i
  %i.m = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  br i1 %i.m, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA46_KcEEEvDpOT_.exit, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.n = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc11 unwind label %bb.h

.noexc11:                                         ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr @.str, ptr %i.b, align 8
  invoke void @_ZN6Assimp6Logger5errorIJPKcRA46_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(46) @.str.77)
          to label %.noexc12 unwind label %bb.h

.noexc12:                                         ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA46_KcEEEvDpOT_.exit

bb.g:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.h:                                             ; preds = %.noexc11, %bb.f, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.i:                                             ; preds = %.critedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store float 0.000000e+00, ptr %i.c, align 4
  %i.q = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.r = icmp eq ptr %i.q, %.0.lcssa.i.i
  br i1 %i.r, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.s = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc13 unwind label %bb.m

.noexc13:                                         ; preds = %bb.k
  br i1 %i.s, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA26_KcEEEvDpOT_.exit, label %bb.l

bb.l:                                             ; preds = %.noexc13
  %i.t = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc14 unwind label %bb.m

.noexc14:                                         ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr @.str, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger5errorIJPKcRA26_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(26) @.str.78)
          to label %.noexc15 unwind label %bb.m

.noexc15:                                         ; preds = %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA26_KcEEEvDpOT_.exit

bb.m:                                             ; preds = %.noexc14, %bb.l, %bb.k, %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.v = load float, ptr %i.c, align 4
  br label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA26_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA26_KcEEEvDpOT_.exit: ; preds = %.noexc15, %.noexc13, %bb.n
  %.0 = phi float [ %i.v, %bb.n ], [ 0.000000e+00, %.noexc13 ], [ 0.000000e+00, %.noexc15 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA46_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA46_KcEEEvDpOT_.exit: ; preds = %.noexc12, %.noexc, %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA26_KcEEEvDpOT_.exit
  %.1 = phi float [ %.0, %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA26_KcEEEvDpOT_.exit ], [ 0.000000e+00, %.noexc ], [ 0.000000e+00, %.noexc12 ]
  %i.w = load ptr, ptr %2, align 8                ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.d
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA46_KcEEEvDpOT_.exit
  %i.y = load i64, ptr %i.d, align 8
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA46_KcEEEvDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret float %.1

bb.o:                                             ; preds = %bb.h, %bb.m, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.u, %bb.m ], [ %i.p, %bb.h ]
  %i.aa = load ptr, ptr %2, align 8               ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.d
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.o
  %i.ac = load i64, ptr %i.d, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN6Assimp11XGLImporter12ToOutputMeshERKNS0_16TempMaterialMeshE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.49", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = tail call noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #29 ; 16 uses
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1272
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1312
  store ptr null, ptr %i.g, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.d, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.e, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.f, i8 0, i64 36, i1 false)
  store ptr %i.a, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_1
begin_hunk_2_@_ZN6Assimp6Logger4warnIJPKcRA36_S2_EEEvDpOT_:bb.a
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit unwind label %bb.d ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.d ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #26
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit: ; preds = %bb.b, %bb.c
  invoke void @_ZN6Assimp6Logger13formatMessageIJERA36_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(36) %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit
  %i.l = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.l)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %3, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.r, ptr %4, align 8
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.t = getelementptr i8, ptr %i.r, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %4, i64 %i.u
  store ptr %i.s, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load i64, ptr %i.z, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.w, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ad) #26
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ae) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.g:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.h:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %3, align 8               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.h
  %i.ak = load i64, ptr %i.ai, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.g
  %.pn = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.ag, %bb.h ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERA36_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(36) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(36) %3) #26
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(36) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !364)
  call void @llvm.experimental.noalias.scope.decl(metadata !367)
  call void @llvm.experimental.noalias.scope.decl(metadata !370)
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !376
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !376
  store i8 0, ptr %i.c, align 8, !alias.scope !376
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !376 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !376 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !376 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !376 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !376
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #27
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %4, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #26
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #26
  resume { ptr, i32 } %i.p
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { noreturn }
attributes #31 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{null}
!4 = distinct !{null, null, null, null}
!5 = distinct !{ptr @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZSt11make_sharedIN6Assimp14MemoryIOStreamEJPhRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_: argument 0"}
!9 = distinct !{!9, !"_ZSt11make_sharedIN6Assimp14MemoryIOStreamEJPhRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_"}
!10 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!11 = distinct !{ptr @_ZNSt10unique_ptrIN6Assimp12StreamReaderILb0ELb0EEESt14default_deleteIS2_EED2Ev, null, null, ptr @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!15 = distinct !{!15, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!16 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!19 = distinct !{!19, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!24 = distinct !{!24, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!27 = distinct !{!27, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!28 = distinct !{!28, !21}
!29 = distinct !{!29, !21}
!30 = distinct !{!30, !21}
!31 = distinct !{!31, !21}
!32 = distinct !{!32, !21}
!33 = distinct !{!33, !21}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!36 = distinct !{!36, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN6Assimp11XGLImporter8ReadCol3ERN4pugi8xml_nodeE: argument 0"}
!39 = distinct !{!39, !"_ZN6Assimp11XGLImporter8ReadCol3ERN4pugi8xml_nodeE"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZN6Assimp11XGLImporter8ReadCol3ERN4pugi8xml_nodeE: argument 0"}
!42 = distinct !{!42, !"_ZN6Assimp11XGLImporter8ReadCol3ERN4pugi8xml_nodeE"}
!43 = distinct !{!43, !21}
!44 = distinct !{!44, !21}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!47 = distinct !{!47, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!48 = distinct !{!48, !21}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZSt16forward_as_tupleIJjEESt5tupleIJDpOT_EES3_: argument 0"}
!51 = distinct !{!51, !"_ZSt16forward_as_tupleIJjEESt5tupleIJDpOT_EES3_"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZSt16forward_as_tupleIJjEESt5tupleIJDpOT_EES3_: argument 0"}
!54 = distinct !{!54, !"_ZSt16forward_as_tupleIJjEESt5tupleIJDpOT_EES3_"}
!55 = !{i8 0, i8 2}
!56 = !{}
!57 = distinct !{!57, !21}
!58 = !{!59, !61}
!59 = distinct !{!59, !60, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!60 = distinct !{!60, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!61 = distinct !{!61, !60, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!62 = distinct !{!62, !21}
!63 = !{!64, !66}
!64 = distinct !{!64, !65, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!65 = distinct !{!65, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!66 = distinct !{!66, !65, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZSt19__relocate_object_aI10aiVector2tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!69 = distinct !{!69, !"_ZSt19__relocate_object_aI10aiVector2tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!70 = !{!71}
!71 = distinct !{!71, !69, !"_ZSt19__relocate_object_aI10aiVector2tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!72 = distinct !{!72, !21, !73, !74}
!73 = !{!"llvm.loop.isvectorized", i32 1}
!74 = !{!"llvm.loop.unroll.runtime.disable"}
!75 = distinct !{!75, !21, !73}
!76 = distinct !{!76, !21}
!77 = distinct !{!77, !21}
!78 = distinct !{!78, !21}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!81 = distinct !{!81, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZN6Assimp11XGLImporter8ReadCol3ERN4pugi8xml_nodeE: argument 0"}
!84 = distinct !{!84, !"_ZN6Assimp11XGLImporter8ReadCol3ERN4pugi8xml_nodeE"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZN6Assimp11XGLImporter8ReadCol3ERN4pugi8xml_nodeE: argument 0"}
!87 = distinct !{!87, !"_ZN6Assimp11XGLImporter8ReadCol3ERN4pugi8xml_nodeE"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN6Assimp11XGLImporter8ReadCol3ERN4pugi8xml_nodeE: argument 0"}
!90 = distinct !{!90, !"_ZN6Assimp11XGLImporter8ReadCol3ERN4pugi8xml_nodeE"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZN6Assimp11XGLImporter8ReadCol3ERN4pugi8xml_nodeE: argument 0"}
!93 = distinct !{!93, !"_ZN6Assimp11XGLImporter8ReadCol3ERN4pugi8xml_nodeE"}
!94 = distinct !{!94, !21}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!97 = distinct !{!97, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!98 = distinct !{!98, !21}
!99 = distinct !{!99, !100}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = distinct !{!101, !21}
!102 = distinct !{!102, !21}
!103 = distinct !{!103, !21}
!104 = distinct !{!104, !21}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!107 = distinct !{!107, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!108 = distinct !{!108, !21}
!109 = distinct !{!109, !21}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!112 = distinct !{!112, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!113 = distinct !{!113, !21}
!114 = distinct !{!114, !21}
!115 = distinct !{!115, !21}
!116 = distinct !{!116, !21}
!117 = distinct !{null}
!118 = distinct !{!118, !21}
!119 = distinct !{!119, !21}
!120 = distinct !{!120, !21}
!121 = distinct !{!121, !21}
!122 = distinct !{!122, !21}
!123 = distinct !{!123, !21}
!124 = distinct !{!124, !21}
!125 = distinct !{!125, !21}
!126 = distinct !{!126, !21}
!127 = distinct !{!127, !21}
!128 = distinct !{!128, !21}
!129 = distinct !{!129, !21}
!130 = distinct !{!130, !21}
!131 = distinct !{!131, !21}
!132 = distinct !{!132, !21}
!133 = distinct !{!133, !21, !73, !74}
!134 = distinct !{!134, !21, !73}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!137 = distinct !{!137, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!140 = distinct !{!140, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!143 = distinct !{!143, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!144 = !{!142, !139, !136}
!145 = distinct !{null}
!146 = !{ptr @_ZN6Assimp14MemoryIOStreamD2Ev}
!147 = distinct !{null, null}
!148 = !{!149}
!149 = distinct !{!149, !150, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!150 = distinct !{!150, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!153 = distinct !{!153, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!154 = !{!155}
!155 = distinct !{!155, !156, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!156 = distinct !{!156, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!157 = !{!158}
!158 = distinct !{!158, !159, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!159 = distinct !{!159, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!160 = !{!158, !155, !152, !149}
!161 = distinct !{!161, !21}
!162 = distinct !{!162, !21}
!163 = !{!164}
end_hunk_2
