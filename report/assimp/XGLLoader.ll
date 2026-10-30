Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/XGLLoader?download=true
inline.NumInlined: 2834
inline.NumDeleted: 1257
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6Assimp11XGLImporter17ReadIndexFromTextERN4pugi8xml_nodeE:bb.a
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.c, ptr %2, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8
  store i8 0, ptr %i.c, align 8
  %i.e = invoke noundef zeroext i1 @_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE16getValueAsStringERS2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.j       ; 0 uses

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
  br label %bb.c, !llvm.loop !1

.critedge.i.ithread-pre-split:                    ; preds = %bb.d
  %.pr = load i8, ptr %i.h, align 1
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.c, %.critedge.i.ithread-pre-split
  %i.k = phi i8 [ %.pr, %.critedge.i.ithread-pre-split ], [ %i.i, %bb.c ] ; 3 uses
  %.0.lcssa.i.i = phi ptr [ %i.h, %.critedge.i.ithread-pre-split ], [ %.0.i.i, %bb.c ]
  switch i8 %i.k, label %bb.g [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit:         ; preds = %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i
  %i.l = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  br i1 %i.l, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA46_KcEEEvDpOT_.exit, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.m = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc11 unwind label %bb.j

.noexc11:                                         ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr @.str, ptr %i.b, align 8
  invoke void @_ZN6Assimp6Logger5errorIJPKcRA46_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(46) @.str.77)
          to label %.noexc12 unwind label %bb.j

.noexc12:                                         ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA46_KcEEEvDpOT_.exit

bb.g:                                             ; preds = %.critedge.i.i
  %i.n = add i8 %i.k, -58
  %or.cond11.i = icmp ult i8 %i.n, -10
  br i1 %or.cond11.i, label %bb.h, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %i.o = phi i8 [ %i.t, %.lr.ph.i ], [ %i.k, %bb.g ]
  %.013.i = phi i32 [ %i.r, %.lr.ph.i ], [ 0, %bb.g ]
  %.0812.i = phi ptr [ %i.s, %.lr.ph.i ], [ %.0.lcssa.i.i, %bb.g ]
  %i.p = mul i32 %.013.i, 10
  %narrow.i = add nsw i8 %i.o, -48
  %i.q = zext nneg i8 %narrow.i to i32
  %i.r = add i32 %i.p, %i.q                       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0812.i, i64 1 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1               ; 2 uses
  %i.u = add i8 %i.t, -58
  %or.cond.i = icmp ult i8 %i.u, -10
  br i1 %or.cond.i, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA46_KcEEEvDpOT_.exit, label %.lr.ph.i, !llvm.loop !92

bb.h:                                             ; preds = %bb.g
  %i.v = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc13 unwind label %bb.j

.noexc13:                                         ; preds = %bb.h
  br i1 %i.v, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA46_KcEEEvDpOT_.exit, label %bb.i

bb.i:                                             ; preds = %.noexc13
  %i.w = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc14 unwind label %bb.j

.noexc14:                                         ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr @.str, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger5errorIJPKcRA21_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(21) @.str.79)
          to label %.noexc15 unwind label %bb.j

.noexc15:                                         ; preds = %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA46_KcEEEvDpOT_.exit

bb.j:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit, %bb.f, %.noexc11, %bb.a, %.noexc14, %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %2, align 8                ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.c
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA46_KcEEEvDpOT_.exit: ; preds = %.lr.ph.i, %.noexc13, %.noexc15, %.noexc12, %.noexc
  %.18 = phi i32 [ -1, %.noexc12 ], [ -1, %.noexc ], [ -1, %.noexc15 ], [ -1, %.noexc13 ], [ %i.r, %.lr.ph.i ]
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
  ret i32 %.18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.j
  %i.ae = load i64, ptr %i.c, align 8
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.af) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.x
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

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %bb.b
  %.sroa.0136.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.b ], [ %.sroa.0136.1259, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ] ; 5 uses
  %.sroa.26.0.lcssa = phi float [ 0.000000e+00, %bb.b ], [ %.sroa.26.1260, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ] ; 4 uses
  %.sroa.090.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.b ], [ %.sroa.090.1261, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ] ; 5 uses
  %.sroa.8.0.lcssa = phi float [ 0.000000e+00, %bb.b ], [ %.sroa.8.1262, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ]
  %.sroa.075.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.b ], [ %.sroa.075.1263, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ] ; 2 uses
  %.sroa.26175.0.lcssa = phi float [ 0.000000e+00, %bb.b ], [ %.sroa.26175.1264, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ] ; 4 uses
  %.0.lcssa = phi float [ 1.000000e+00, %bb.b ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.sroa.0136.0.vec.extract139 = extractelement <2 x float> %.sroa.0136.0.lcssa, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.0136.0.lcssa, %.sroa.0136.0.lcssa
  %i.v = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.w = call float @llvm.fmuladd.f32(float %.sroa.0136.0.vec.extract139, float %.sroa.0136.0.vec.extract139, float %i.v)
  %i.x = call noundef float @llvm.fmuladd.f32(float %.sroa.26175.0.lcssa, float %.sroa.26175.0.lcssa, float %i.w) ; 3 uses
  %i.y = fpext float %i.x to double
  %i.z = fcmp olt double %i.y, 1.000000e-04
  br i1 %i.z, label %bb.u, label %bb.t

bb.c:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %.0229 = phi float [ 1.000000e+00, %.lr.ph ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ] ; 5 uses
  %.sroa.26175.0228 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.26175.1264, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ] ; 6 uses
  %.sroa.075.0227 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.075.1263, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ] ; 6 uses
  %.sroa.8.0226 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.8.1262, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ] ; 6 uses
  %.sroa.090.0225 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.090.1261, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ] ; 6 uses
  %.sroa.26.0224 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.26.1260, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ] ; 6 uses
  %.sroa.0136.0223 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0136.1259, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ] ; 6 uses
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi17xml_node_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %5) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.ab = call noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) ; 4 uses
  store ptr %i.r, ptr %8, align 8
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.88) #30
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

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
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

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
  br i1 %i.bf, label %.lr.ph.i, label %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, !llvm.loop !0

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
  switch i64 %i.bk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread185 [
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
          to label %bb.k unwind label %bb.o       ; 2 uses

bb.k:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.fca.0.extract13 = extractvalue { <2 x float>, float } %i.bv, 0
  %.fca.1.extract14 = extractvalue { <2 x float>, float } %i.bv, 1
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread185thread-pre-split

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i, %bb.d
  %lpad.loopexit.split-lp266 = landingpad { ptr, i32 }
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
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.l, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  %.pn = phi { ptr, i32 } [ %i.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %lpad.loopexit.split-lp266, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bw, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.s

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pre = load ptr, ptr %7, align 8
  %bcmp.i57 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.30, i64 %i.bk)
  %i.cb = icmp eq i32 %bcmp.i57, 0
  br i1 %i.cb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58.thread, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA48_KcEEEvDpOT_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58
  %i.cc = invoke { <2 x float>, float } @_ZN6Assimp11XGLImporter8ReadVec3ERN4pugi8xml_nodeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.m unwind label %bb.o       ; 2 uses

bb.m:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58.thread
  %.fca.0.extract7 = extractvalue { <2 x float>, float } %i.cc, 0
  %.fca.1.extract8 = extractvalue { <2 x float>, float } %i.cc, 1
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread185thread-pre-split

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pre237 = load ptr, ptr %7, align 8
  %bcmp.i59 = call i32 @bcmp(ptr %.pre237, ptr nonnull @.str.31, i64 %i.bk)
  %i.cd = icmp eq i32 %bcmp.i59, 0
  br i1 %i.cd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA48_KcEEEvDpOT_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60
  %i.ce = invoke { <2 x float>, float } @_ZN6Assimp11XGLImporter8ReadVec3ERN4pugi8xml_nodeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.n unwind label %bb.o       ; 2 uses

bb.n:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread
  %.fca.0.extract2 = extractvalue { <2 x float>, float } %i.ce, 0
  %.fca.1.extract3 = extractvalue { <2 x float>, float } %i.ce, 1
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread185thread-pre-split

bb.o:                                             ; preds = %.noexc67, %bb.r, %bb.q, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = load ptr, ptr %7, align 8               ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.t
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.o
  %i.ci = load i64, ptr %i.t, align 8
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.s

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread185thread-pre-split: ; preds = %bb.k, %bb.n, %bb.m
  %.sroa.0136.1.ph = phi <2 x float> [ %.sroa.0136.0223, %bb.n ], [ %.sroa.0136.0223, %bb.m ], [ %.fca.0.extract13, %bb.k ]
  %.sroa.26.1.ph = phi float [ %.sroa.26.0224, %bb.n ], [ %.fca.1.extract8, %bb.m ], [ %.sroa.26.0224, %bb.k ]
  %.sroa.090.1.ph = phi <2 x float> [ %.sroa.090.0225, %bb.n ], [ %.fca.0.extract7, %bb.m ], [ %.sroa.090.0225, %bb.k ]
  %.sroa.8.1.ph = phi float [ %.fca.1.extract3, %bb.n ], [ %.sroa.8.0226, %bb.m ], [ %.sroa.8.0226, %bb.k ]
  %.sroa.075.1.ph = phi <2 x float> [ %.fca.0.extract2, %bb.n ], [ %.sroa.075.0227, %bb.m ], [ %.sroa.075.0227, %bb.k ]
  %.sroa.26175.1.ph = phi float [ %.sroa.26175.0228, %bb.n ], [ %.sroa.26175.0228, %bb.m ], [ %.fca.1.extract14, %bb.k ]
  %.pr = load i64, ptr %i.u, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread185

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread185: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread185thread-pre-split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ck = phi i64 [ %.pr, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread185thread-pre-split ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.sroa.0136.1 = phi <2 x float> [ %.sroa.0136.1.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread185thread-pre-split ], [ %.sroa.0136.0223, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %.sroa.26.1 = phi float [ %.sroa.26.1.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread185thread-pre-split ], [ %.sroa.26.0224, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %.sroa.090.1 = phi <2 x float> [ %.sroa.090.1.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread185thread-pre-split ], [ %.sroa.090.0225, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %.sroa.8.1 = phi float [ %.sroa.8.1.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread185thread-pre-split ], [ %.sroa.8.0226, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %.sroa.075.1 = phi <2 x float> [ %.sroa.075.1.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread185thread-pre-split ], [ %.sroa.075.0227, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %.sroa.26175.1 = phi float [ %.sroa.26175.1.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread185thread-pre-split ], [ %.sroa.26175.0228, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %i.cl = icmp eq i64 %i.ck, 5
  br i1 %i.cl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA48_KcEEEvDpOT_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread185
  %i.cm = load ptr, ptr %7, align 8               ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 1
  %i.co = xor i32 %i.cn, 1818321779
  %i.cp = getelementptr i8, ptr %i.cm, i64 4
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = zext i8 %i.cq to i32
  %i.cs = xor i32 %i.cr, 101
  %i.ct = or i32 %i.co, %i.cs
  %i.cu = icmp ne i32 %i.ct, 0
  %i.cv = zext i1 %i.cu to i32
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA48_KcEEEvDpOT_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65
  %i.cx = invoke noundef float @_ZN6Assimp11XGLImporter9ReadFloatERN4pugi8xml_nodeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.p unwind label %bb.o       ; 4 uses

bb.p:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread
  %i.cy = fcmp olt float %i.cx, 0.000000e+00
  br i1 %i.cy, label %bb.q, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA48_KcEEEvDpOT_.exit

bb.q:                                             ; preds = %bb.p
  %i.cz = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc66 unwind label %bb.o

.noexc66:                                         ; preds = %bb.q
  br i1 %i.cz, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA48_KcEEEvDpOT_.exit, label %bb.r

bb.r:                                             ; preds = %.noexc66
  %i.da = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc67 unwind label %bb.o

.noexc67:                                         ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store ptr @.str, ptr %i.c, align 8
  invoke void @_ZN6Assimp6Logger5errorIJPKcRA48_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.da, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(48) @.str.33)
          to label %.noexc68 unwind label %bb.o

.noexc68:                                         ; preds = %.noexc67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA48_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA48_KcEEEvDpOT_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread185, %.noexc68, %.noexc66, %bb.p, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65
  %.sroa.26175.1264 = phi float [ %.sroa.26175.1, %.noexc68 ], [ %.sroa.26175.1, %bb.p ], [ %.sroa.26175.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65 ], [ %.sroa.26175.1, %.noexc66 ], [ %.sroa.26175.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread185 ], [ %.sroa.26175.0228, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58 ], [ %.sroa.26175.0228, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.26175.0228, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60 ] ; 2 uses
  %.sroa.075.1263 = phi <2 x float> [ %.sroa.075.1, %.noexc68 ], [ %.sroa.075.1, %bb.p ], [ %.sroa.075.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65 ], [ %.sroa.075.1, %.noexc66 ], [ %.sroa.075.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread185 ], [ %.sroa.075.0227, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58 ], [ %.sroa.075.0227, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.075.0227, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60 ] ; 2 uses
  %.sroa.8.1262 = phi float [ %.sroa.8.1, %.noexc68 ], [ %.sroa.8.1, %bb.p ], [ %.sroa.8.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65 ], [ %.sroa.8.1, %.noexc66 ], [ %.sroa.8.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread185 ], [ %.sroa.8.0226, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58 ], [ %.sroa.8.0226, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.8.0226, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60 ] ; 2 uses
  %.sroa.090.1261 = phi <2 x float> [ %.sroa.090.1, %.noexc68 ], [ %.sroa.090.1, %bb.p ], [ %.sroa.090.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65 ], [ %.sroa.090.1, %.noexc66 ], [ %.sroa.090.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread185 ], [ %.sroa.090.0225, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58 ], [ %.sroa.090.0225, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.090.0225, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60 ] ; 2 uses
  %.sroa.26.1260 = phi float [ %.sroa.26.1, %.noexc68 ], [ %.sroa.26.1, %bb.p ], [ %.sroa.26.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65 ], [ %.sroa.26.1, %.noexc66 ], [ %.sroa.26.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread185 ], [ %.sroa.26.0224, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58 ], [ %.sroa.26.0224, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.26.0224, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60 ] ; 2 uses
  %.sroa.0136.1259 = phi <2 x float> [ %.sroa.0136.1, %.noexc68 ], [ %.sroa.0136.1, %bb.p ], [ %.sroa.0136.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65 ], [ %.sroa.0136.1, %.noexc66 ], [ %.sroa.0136.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread185 ], [ %.sroa.0136.0223, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58 ], [ %.sroa.0136.0223, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.0136.0223, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60 ] ; 2 uses
  %.1 = phi float [ %i.cx, %.noexc68 ], [ %i.cx, %bb.p ], [ %.0229, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65 ], [ %i.cx, %.noexc66 ], [ %.0229, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread185 ], [ %.0229, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58 ], [ %.0229, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.0229, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60 ] ; 2 uses
  %i.db = load ptr, ptr %7, align 8               ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.t
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA48_KcEEEvDpOT_.exit
  %i.dd = load i64, ptr %i.t, align 8
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA48_KcEEEvDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.df = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %5) ; 0 uses
  %i.dg = call noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
  br i1 %i.dg, label %bb.c, label %._crit_edge

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %.pn44.pn = phi { ptr, i32 } [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn44.pn

bb.t:                                             ; preds = %._crit_edge
  %.sroa.090.0.vec.extract93 = extractelement <2 x float> %.sroa.090.0.lcssa, i64 0 ; 2 uses
  %foldExtExtBinop248 = fmul <2 x float> %.sroa.090.0.lcssa, %.sroa.090.0.lcssa
  %9 = extractelement <2 x float> %foldExtExtBinop248, i64 1
  %i.dh = call float @llvm.fmuladd.f32(float %.sroa.090.0.vec.extract93, float %.sroa.090.0.vec.extract93, float %9)
  %i.di = call noundef float @llvm.fmuladd.f32(float %.sroa.26.0.lcssa, float %.sroa.26.0.lcssa, float %i.dh) ; 3 uses
  %i.dj = fpext float %i.di to double
  %i.dk = fcmp olt double %i.dj, 1.000000e-04
  br i1 %i.dk, label %bb.u, label %10

bb.u:                                             ; preds = %bb.t, %._crit_edge
  %i.dl = call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.dl, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA58_KcEEEvDpOT_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dm = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr @.str, ptr %i.b, align 8
  call void @_ZN6Assimp6Logger5errorIJPKcRA58_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.dm, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(58) @.str.34)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA58_KcEEEvDpOT_.exit

10:                                               ; preds = %bb.t
  %11 = fcmp oeq float %i.x, 0.000000e+00
  br i1 %11, label %_ZN10aiVector3tIfE9NormalizeEv.exit, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %10
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.x)
  %12 = fdiv float 1.000000e+00, %sqrt.i.i        ; 2 uses
  %13 = insertelement <2 x float> poison, float %12, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = fmul <2 x float> %.sroa.0136.0.lcssa, %14
  %16 = fmul float %.sroa.26175.0.lcssa, %12
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZN10aiVector3tIfE9NormalizeEv.exit:              ; preds = %10, %_ZN10aiVector3tIfEdVEf.exit.i
  %.sroa.0128.2 = phi <2 x float> [ %.sroa.0136.0.lcssa, %10 ], [ %15, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 4 uses
  %.sroa.22159.2 = phi float [ %.sroa.26175.0.lcssa, %10 ], [ %16, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 4 uses
  %17 = fcmp oeq float %i.di, 0.000000e+00
  br i1 %17, label %_ZN10aiVector3tIfE9NormalizeEv.exit.a, label %_ZN10aiVector3tIfEdVEf.exit.i72

_ZN10aiVector3tIfEdVEf.exit.i72:                  ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit
  %sqrt.i.i73 = call noundef float @llvm.sqrt.f32(float %i.di)
  %18 = fdiv float 1.000000e+00, %sqrt.i.i73      ; 2 uses
  %19 = insertelement <2 x float> poison, float %18, i64 0
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %21 = fmul <2 x float> %.sroa.090.0.lcssa, %20
  %22 = fmul float %.sroa.26.0.lcssa, %18
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit.a

_ZN10aiVector3tIfE9NormalizeEv.exit.a:            ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit, %_ZN10aiVector3tIfEdVEf.exit.i72
  %.sroa.22.2 = phi float [ %.sroa.26.0.lcssa, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %22, %_ZN10aiVector3tIfEdVEf.exit.i72 ] ; 4 uses
  %23 = phi <2 x float> [ %.sroa.090.0.lcssa, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %21, %_ZN10aiVector3tIfEdVEf.exit.i72 ] ; 3 uses
  %.sroa.0128.4.vec.extract152 = extractelement <2 x float> %.sroa.0128.2, i64 1 ; 3 uses
  %.sroa.0128.0.vec.extract137 = extractelement <2 x float> %.sroa.0128.2, i64 0 ; 3 uses
  %24 = extractelement <2 x float> %23, i64 1     ; 3 uses
  %i.dn = fmul float %.sroa.0128.4.vec.extract152, %24
  %.sroa.0136.0.vec.extract149 = extractelement <2 x float> %23, i64 0 ; 3 uses
  %i.do = call float @llvm.fmuladd.f32(float %.sroa.0136.0.vec.extract149, float %.sroa.0128.0.vec.extract137, float %i.dn)
  %i.dp = call noundef float @llvm.fmuladd.f32(float %.sroa.22.2, float %.sroa.22159.2, float %i.do)
  %i.dq = call noundef float @llvm.fabs.f32(float %i.dp)
  %i.dr = fpext float %i.dq to double
  %i.ds = fcmp ogt double %i.dr, 1.000000e-04
  br i1 %i.ds, label %bb.w, label %bb.y

bb.w:                                             ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit.a
  %i.dt = call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.dt, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA58_KcEEEvDpOT_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.du = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr @.str, ptr %i.a, align 8
  call void @_ZN6Assimp6Logger5errorIJPKcRA70_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.du, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(70) @.str.35)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA58_KcEEEvDpOT_.exit

bb.y:                                             ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit.a
  %i.dv = fneg float %.sroa.0136.0.vec.extract149
  %i.dw = fmul float %.sroa.0128.4.vec.extract152, %i.dv
  %i.dx = call float @llvm.fmuladd.f32(float %.sroa.0128.0.vec.extract137, float %24, float %i.dw)
  %i.dy = fneg float %.sroa.22.2
  %i.dz = fmul float %.sroa.0128.0.vec.extract137, %i.dy
  %i.ea = call float @llvm.fmuladd.f32(float %.sroa.22159.2, float %.sroa.0136.0.vec.extract149, float %i.dz)
  %i.eb = fneg float %24
  %i.ec = fmul float %.sroa.22159.2, %i.eb
  %i.ed = call float @llvm.fmuladd.f32(float %.sroa.0128.4.vec.extract152, float %.sroa.22.2, float %i.ec)
  %i.ee = fmul float %.0.lcssa, %i.dx
  %i.ef = fmul float %.0.lcssa, %.sroa.22.2
  %i.eg = fmul float %.0.lcssa, %.sroa.22159.2
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.ee, ptr %i.ei, align 4
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.ef, ptr %i.ej, align 4
  store float %i.eg, ptr %i.i, align 4
  %i.ek = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %.0.lcssa, i64 0
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3> ; 2 uses
  %i.em = shufflevector <2 x float> %.sroa.0128.2, <2 x float> %.sroa.075.0.lcssa, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.en = insertelement <4 x float> %i.em, float %i.ed, i64 0
  %25 = shufflevector <2 x float> %23, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %26 = shufflevector <4 x float> %i.en, <4 x float> %25, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.eo = fmul <4 x float> %i.el, %26
  store <4 x float> %i.eo, ptr %0, align 4
  %i.ep = shufflevector <2 x float> %.sroa.0128.2, <2 x float> %.sroa.075.0.lcssa, <4 x i32> <i32 poison, i32 poison, i32 1, i32 3>
  %i.eq = insertelement <4 x float> %i.ep, float %i.ea, i64 0
  %27 = shufflevector <4 x float> %i.eq, <4 x float> %25, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.er = fmul <4 x float> %i.el, %27
  store <4 x float> %i.er, ptr %i.eh, align 4
  store float %.sroa.8.0.lcssa, ptr %i.j, align 4
  br label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA58_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA58_KcEEEvDpOT_.exit: ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.a, %bb.y
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
  br label %bb.c, !llvm.loop !1

.critedge.i.ithread-pre-split:                    ; preds = %bb.d
  %.pr = load i8, ptr %i.i, align 1
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.c, %.critedge.i.ithread-pre-split
  %i.l = phi i8 [ %.pr, %.critedge.i.ithread-pre-split ], [ %i.j, %bb.c ]
  %.0.lcssa.i.i = phi ptr [ %i.i, %.critedge.i.ithread-pre-split ], [ %.0.i.i, %bb.c ] ; 2 uses
  switch i8 %i.l, label %bb.h [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit:         ; preds = %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i
  %i.m = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  br i1 %i.m, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA46_KcEEEvDpOT_.exit, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.n = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc11 unwind label %bb.g

.noexc11:                                         ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr @.str, ptr %i.b, align 8
  invoke void @_ZN6Assimp6Logger5errorIJPKcRA46_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(46) @.str.77)
          to label %.noexc12 unwind label %bb.g

.noexc12:                                         ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA46_KcEEEvDpOT_.exit

bb.g:                                             ; preds = %bb.a, %.noexc11, %bb.f, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.h:                                             ; preds = %.critedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store float 0.000000e+00, ptr %i.c, align 4
  %i.p = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i1 noundef zeroext true)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.q = icmp eq ptr %i.p, %.0.lcssa.i.i
  br i1 %i.q, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.r = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc13 unwind label %bb.l

.noexc13:                                         ; preds = %bb.j
  br i1 %i.r, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA26_KcEEEvDpOT_.exit, label %bb.k

bb.k:                                             ; preds = %.noexc13
  %i.s = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc14 unwind label %bb.l

.noexc14:                                         ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr @.str, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger5errorIJPKcRA26_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(26) @.str.78)
          to label %.noexc15 unwind label %bb.l

.noexc15:                                         ; preds = %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA26_KcEEEvDpOT_.exit

bb.l:                                             ; preds = %.noexc14, %bb.k, %bb.j, %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.u = load float, ptr %i.c, align 4
  br label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA26_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA26_KcEEEvDpOT_.exit: ; preds = %.noexc15, %.noexc13, %bb.m
  %.07 = phi float [ %i.u, %bb.m ], [ 0.000000e+00, %.noexc13 ], [ 0.000000e+00, %.noexc15 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA46_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA46_KcEEEvDpOT_.exit: ; preds = %.noexc12, %.noexc, %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA26_KcEEEvDpOT_.exit
  %.18 = phi float [ %.07, %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA26_KcEEEvDpOT_.exit ], [ 0.000000e+00, %.noexc ], [ 0.000000e+00, %.noexc12 ]
  %i.v = load ptr, ptr %2, align 8                ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.d
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA46_KcEEEvDpOT_.exit
  %i.x = load i64, ptr %i.d, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA46_KcEEEvDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret float %.18

bb.n:                                             ; preds = %bb.g, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.t, %bb.l ]
  %i.z = load ptr, ptr %2, align 8                ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.d
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.n
  %i.ab = load i64, ptr %i.d, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN6Assimp11XGLImporter12ToOutputMeshERKNS0_16TempMaterialMeshE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.49", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = tail call noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #29 ; 15 uses
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
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
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %1, align 8
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
end_hunk_0
begin_hunk_1_@_ZN6Assimp11XGLImporter16TempMaterialMeshC2ERKS1_:bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  %.not.i.i.i.i32 = icmp eq ptr %i.bg, %i.bh
  br i1 %.not.i.i.i.i32, label %.noexc35, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.bl = icmp ugt i64 %i.bk, 9223372036854775804
  br i1 %i.bl, label %.noexc.i.i33, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i, !prof !8

.noexc.i.i33:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc34 unwind label %bb.m

.noexc34:                                         ; preds = %.noexc.i.i33
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.f
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #29
          to label %.noexc35 unwind label %bb.m

.noexc35:                                         ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i, %.loopexit
  %i.bn = phi ptr [ null, %.loopexit ], [ %i.bm, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.bn, ptr %i.bd, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.bn, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bk
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.bp, ptr %i.bq, align 8
  %i.br = load ptr, ptr %i.be, align 8            ; 3 uses
  %i.bs = load ptr, ptr %i.bf, align 8
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, 4
  br i1 %i.bw, label %bb.g, label %bb.h, !prof !9

bb.g:                                             ; preds = %.noexc35
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bn, ptr align 4 %i.br, i64 %i.bv, i1 false)
  br label %bb.j

bb.h:                                             ; preds = %.noexc35
  %i.bx = icmp eq i64 %i.bv, 4
  br i1 %i.bx, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.by = load i32, ptr %i.br, align 4
  store i32 %i.by, ptr %i.bn, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bz = getelementptr inbounds i8, ptr %i.bn, i64 %i.bv
  store ptr %i.bz, ptr %i.bo, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cc = load i64, ptr %i.cb, align 8
  store i64 %i.cc, ptr %i.ca, align 8
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorI10aiVector3tIfEE8allocateEmPKv.exit.i.i.i.i12, %.noexc.i.i19
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

bb.l:                                             ; preds = %_ZNSt15__new_allocatorI10aiVector2tIfEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i29
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit

bb.m:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i33
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = load ptr, ptr %i.ak, align 8            ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ch = load ptr, ptr %i.ax, align 8
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = sub i64 %i.ci, %i.cj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.ck) #27
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit:    ; preds = %bb.n, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ce, %bb.l ], [ %i.cf, %bb.m ], [ %i.cf, %bb.n ] ; 2 uses
  %i.cl = load ptr, ptr %i.r, align 8             ; 3 uses
  %.not.i.i.i36 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit
  %i.cm = load ptr, ptr %i.af, align 8
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.cl to i64
  %i.cp = sub i64 %i.cn, %i.co
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cp) #27
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit:    ; preds = %bb.o, %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.cd, %bb.k ], [ %.pn, %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit ], [ %.pn, %bb.o ]
  %i.cq = load ptr, ptr %0, align 8               ; 3 uses
  %.not.i.i.i37 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i37, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit38, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit
  %i.cr = load ptr, ptr %i.m, align 8
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = sub i64 %i.cs, %i.ct
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cu) #27
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit38

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit38:  ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, %bb.p
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIjSt4pairIKjN6Assimp11XGLImporter16TempMaterialMeshEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #27
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i:              ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #27
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit.i.i.i

_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit.i.i.i: ; preds = %bb.c, %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not.i.i.i2.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i2.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #27
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit.i.i.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit.i.i.i: ; preds = %bb.d, %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit.i.i.i
  %i.w = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i3.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i3.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjN6Assimp11XGLImporter16TempMaterialMeshEESt10_Select1stIS5_ESt4lessIjESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #27
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN6Assimp11XGLImporter16TempMaterialMeshEESt10_Select1stIS5_ESt4lessIjESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeIjSt4pairIKjN6Assimp11XGLImporter16TempMaterialMeshEESt10_Select1stIS5_ESt4lessIjESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit.i.i.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 144) #27
  ret void
}

declare noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #18

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr null
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %3, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %3, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #26
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #26
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #26
  resume { ptr, i32 } %i.s
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #26
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #6 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !140
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !140
  store i8 0, ptr %i.a, align 8, !alias.scope !140
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !140 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !140 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !140 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !140 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c

_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit: ; preds = %bb.d, %bb.b
  %i.r = load ptr, ptr %2, align 8
  %i.s = load i64, ptr %i.b, align 8
end_hunk_1
begin_hunk_2_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_T0_:bb.a
  br i1 %i.s, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.t = icmp samesign ugt i64 %.sroa.0.021.i.idx, 4
  br i1 %i.t, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.021.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 4
  store i32 %i.g, ptr %i.u, align 4
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.v = load i32, ptr %.pn20.i, align 4          ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 232
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = icmp ult i32 %i.m, %i.aa
  br i1 %i.ab, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.ac = phi i32 [ %i.ad, %.lr.ph.i.i ], [ %i.v, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i.ptr, %bb.f ]
  store i32 %i.ac, ptr %.sroa.05.09.i.i, align 4
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.ad = load i32, ptr %.sroa.0.0.i.i, align 4   ; 2 uses
  %i.ae = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.h
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 232
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = zext i32 %i.ad to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 232
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = icmp ult i32 %i.ai, %i.an
  br i1 %i.ao, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !193

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.021.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i32 %i.f, ptr %.sink.i, align 4
  %.sroa.0.021.i.add = add nuw nsw i64 %.sroa.0.021.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.021.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_T0_.exit, label %bb.b, !llvm.loop !194

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not7.i = icmp eq ptr %i.ap, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_T0_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops14_Val_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_T0_.exit.i
  %.sroa.0.08.i = phi ptr [ %i.br, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops14_Val_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_T0_.exit.i ], [ %i.ap, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_T0_.exit ] ; 5 uses
  %i.aq = load i32, ptr %.sroa.0.08.i, align 4    ; 2 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -4 ; 2 uses
  %i.as = load i32, ptr %.sroa.0.08.i.i, align 4  ; 2 uses
  %i.at = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ar
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 232
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = zext i32 %i.as to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 232
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = icmp ult i32 %i.ax, %i.bc
  br i1 %i.bd, label %.lr.ph.i.i12, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops14_Val_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_T0_.exit.i

.lr.ph.i.i12:                                     ; preds = %.lr.ph.i10, %.lr.ph.i.i12
  %i.be = phi i32 [ %i.bf, %.lr.ph.i.i12 ], [ %i.as, %.lr.ph.i10 ]
  %.sroa.0.010.i.i13 = phi ptr [ %.sroa.0.0.i.i15, %.lr.ph.i.i12 ], [ %.sroa.0.08.i.i, %.lr.ph.i10 ] ; 3 uses
  %.sroa.05.09.i.i14 = phi ptr [ %.sroa.0.010.i.i13, %.lr.ph.i.i12 ], [ %.sroa.0.08.i, %.lr.ph.i10 ]
  store i32 %i.be, ptr %.sroa.05.09.i.i14, align 4
  %.sroa.0.0.i.i15 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i13, i64 -4 ; 2 uses
  %i.bf = load i32, ptr %.sroa.0.0.i.i15, align 4 ; 2 uses
  %i.bg = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.ar
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 232
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = zext i32 %i.bf to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 232
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = icmp ult i32 %i.bk, %i.bp
  br i1 %i.bq, label %.lr.ph.i.i12, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops14_Val_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_T0_.exit.i, !llvm.loop !193

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops14_Val_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i12, %.lr.ph.i10
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.08.i, %.lr.ph.i10 ], [ %.sroa.0.010.i.i13, %.lr.ph.i.i12 ]
  store i32 %i.aq, ptr %.sroa.05.0.lcssa.i.i, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 4 ; 2 uses
  %.not.i11 = icmp eq ptr %i.br, %1
  br i1 %.not.i11, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_T0_.exit, label %.lr.ph.i10, !llvm.loop !195

bb.g:                                             ; preds = %bb.a
  %i.bs = icmp eq ptr %0, %1
  br i1 %i.bs, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_T0_.exit, label %.preheader.i16

.preheader.i16:                                   ; preds = %bb.g
  %.sroa.0.018.i17 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not19.i18 = icmp eq ptr %.sroa.0.018.i17, %1
  br i1 %.not19.i18, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_T0_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.preheader.i16
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i22, %.lr.ph.i19
  %.sroa.0.021.i20 = phi ptr [ %.sroa.0.018.i17, %.lr.ph.i19 ], [ %.sroa.0.0.i24, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i22 ] ; 6 uses
  %.pn20.i21 = phi ptr [ %0, %.lr.ph.i19 ], [ %.sroa.0.021.i20, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i22 ] ; 4 uses
  %i.bu = load i32, ptr %.sroa.0.021.i20, align 4 ; 2 uses
  %i.bv = load i32, ptr %0, align 4               ; 2 uses
  %i.bw = zext i32 %i.bu to i64                   ; 2 uses
  %i.bx = load ptr, ptr %i.bt, align 8            ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 232
  %i.cb = load i32, ptr %i.ca, align 8            ; 2 uses
  %i.cc = zext i32 %i.bv to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 232
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = icmp ult i32 %i.cb, %i.cg
  br i1 %i.ch, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ci = ptrtoint ptr %.sroa.0.021.i20 to i64
  %i.cj = sub i64 %i.ci, %i.b                     ; 3 uses
  %i.ck = ashr exact i64 %i.cj, 2                 ; 2 uses
  %i.cl = icmp sgt i64 %i.ck, 1
  br i1 %i.cl, label %bb.j, label %bb.k, !prof !9

bb.j:                                             ; preds = %bb.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.pn20.i21, i64 8
  %i.cn = sub nsw i64 0, %i.ck
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.cn
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.co, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.cj, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i22

bb.k:                                             ; preds = %bb.i
  %i.cp = icmp eq i64 %i.cj, 4
  br i1 %i.cp, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i22

bb.l:                                             ; preds = %bb.k
  %i.cq = getelementptr inbounds nuw i8, ptr %.pn20.i21, i64 4
  store i32 %i.bv, ptr %i.cq, align 4
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i22

bb.m:                                             ; preds = %bb.h
  %i.cr = load i32, ptr %.pn20.i21, align 4       ; 2 uses
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 232
  %i.cw = load i32, ptr %i.cv, align 8
  %i.cx = icmp ult i32 %i.cb, %i.cw
  br i1 %i.cx, label %.lr.ph.i.i26, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i22

.lr.ph.i.i26:                                     ; preds = %bb.m, %.lr.ph.i.i26
  %i.cy = phi i32 [ %i.cz, %.lr.ph.i.i26 ], [ %i.cr, %bb.m ]
  %.sroa.0.010.i.i27 = phi ptr [ %.sroa.0.0.i.i29, %.lr.ph.i.i26 ], [ %.pn20.i21, %bb.m ] ; 3 uses
  %.sroa.05.09.i.i28 = phi ptr [ %.sroa.0.010.i.i27, %.lr.ph.i.i26 ], [ %.sroa.0.021.i20, %bb.m ]
  store i32 %i.cy, ptr %.sroa.05.09.i.i28, align 4
  %.sroa.0.0.i.i29 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i27, i64 -4 ; 2 uses
  %i.cz = load i32, ptr %.sroa.0.0.i.i29, align 4 ; 2 uses
  %i.da = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.bw
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 232
  %i.de = load i32, ptr %i.dd, align 8
  %i.df = zext i32 %i.cz to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 232
  %i.dj = load i32, ptr %i.di, align 8
  %i.dk = icmp ult i32 %i.de, %i.dj
  br i1 %i.dk, label %.lr.ph.i.i26, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i22, !llvm.loop !193

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i22: ; preds = %.lr.ph.i.i26, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i23 = phi ptr [ %0, %bb.l ], [ %0, %bb.j ], [ %0, %bb.k ], [ %.sroa.0.021.i20, %bb.m ], [ %.sroa.0.010.i.i27, %.lr.ph.i.i26 ]
  store i32 %i.bu, ptr %.sink.i23, align 4
  %.sroa.0.0.i24 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i20, i64 4 ; 2 uses
  %.not.i25 = icmp eq ptr %.sroa.0.0.i24, %1
  br i1 %.not.i25, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_T0_.exit, label %bb.h, !llvm.loop !194

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES6_ET0_T_S8_S7_.exit.i22, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops14_Val_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_T0_.exit.i, %.preheader.i16, %bb.g, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterIN6Assimp11XGLImporter20SortMeshByMaterialIdEEEEvT_SD_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #20

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger5errorIJPKcRA48_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(48) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %4, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #26
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull %i.a, i64 noundef %i.i)
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
  invoke void @_ZN6Assimp6Logger13formatMessageIJERA48_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(48) %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit
  %i.l = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.l)
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

declare void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERA48_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(48) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(48) %3) #26
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(48) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !204)
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  call void @llvm.experimental.noalias.scope.decl(metadata !206)
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !208
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !208
  store i8 0, ptr %i.c, align 8, !alias.scope !208
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !208 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !208 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !208 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !208 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !208
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
end_hunk_2
begin_hunk_3_@_ZN17DeadlyImportErrorC2IJRA22_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA82_S1_EEEDpOT_:bb.a
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #26
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #26
  resume { ptr, i32 } %i.o
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN6Assimp12strtoul10_64I17DeadlyImportErrorEEmPKcPS3_Pj(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load i8, ptr %0, align 1                 ; 3 uses
  %i.c = add i8 %i.b, -58
  %or.cond = icmp ult i8 %i.c, -10
  br i1 %or.cond, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %narrow.us134 = add nsw i8 %i.b, -48
  %i.d = zext nneg i8 %narrow.us134 to i64
  br label %bb.b

.lr.ph.split.us:                                  ; preds = %bb.b
  %i.e = mul i64 %i.i, 10
  %narrow.us = add nsw i8 %i.m, -48
  %i.f = zext nneg i8 %narrow.us to i64
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp ult i64 %i.g, %i.i
  br i1 %i.h, label %.split.us, label %bb.b, !llvm.loop !319

bb.b:                                             ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %i.i = phi i64 [ %i.d, %.lr.ph.split.us.preheader ], [ %i.g, %.lr.ph.split.us ] ; 3 uses
  %i.j = phi ptr [ %0, %.lr.ph.split.us.preheader ], [ %i.k, %.lr.ph.split.us ]
  %.02663.us135 = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %i.l, %.lr.ph.split.us ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 4 uses
  %i.l = add i32 %.02663.us135, 1                 ; 2 uses
  %i.m = load i8, ptr %i.k, align 1               ; 2 uses
  %i.n = add i8 %i.m, -58
  %or.cond42.us = icmp ult i8 %i.n, -10
  br i1 %or.cond42.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !319

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.o = load i32, ptr %2, align 4
  %narrow132 = add nsw i8 %i.b, -48
  %i.p = zext nneg i8 %narrow132 to i64
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.q = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.r = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #31
  %i.s = trunc i64 %i.r to i32
  invoke void @_Z18ai_str_toprintableB5cxx11PKcic(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %0, i32 noundef %i.s, i8 noundef signext 63)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN17DeadlyImportErrorC2IJRA13_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA36_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 1 dereferenceable(13) @.str.105, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(36) @.str.106)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.p unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.021 = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.v = load ptr, ptr %3, align 8                ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.y = load i64, ptr %i.w, align 8
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.021, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.021, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn47 = phi { ptr, i32 } [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.q) #26
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn46 = phi { ptr, i32 } [ %.pn47, %bb.g ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn46

bb.i:                                             ; preds = %bb.l
  %i.aa = mul i64 %i.af, 10
  %narrow = add nsw i8 %i.aq, -48
  %i.ab = zext nneg i8 %narrow to i64
  %i.ac = add i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.af
  br i1 %i.ad, label %.split.us, label %bb.j, !llvm.loop !319

.split.us:                                        ; preds = %bb.i, %.lr.ph.split.us
  %.lcssa108.sink = phi ptr [ %i.k, %.lr.ph.split.us ], [ %i.ah, %bb.i ]
  store ptr %.lcssa108.sink, ptr %i.a, align 8
  %i.ae = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA24_KcRPS2_RA37_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ae, ptr noundef nonnull align 1 dereferenceable(24) @.str.107, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(37) @.str.108)
  br label %.thread

bb.j:                                             ; preds = %.lr.ph.split, %bb.i
  %i.af = phi i64 [ %i.p, %.lr.ph.split ], [ %i.ac, %bb.i ] ; 5 uses
  %i.ag = phi ptr [ %0, %.lr.ph.split ], [ %i.ah, %bb.i ]
  %.02663133 = phi i32 [ 0, %.lr.ph.split ], [ %i.ai, %bb.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 8 uses
  %i.ai = add i32 %.02663133, 1                   ; 3 uses
  %i.aj = icmp eq i32 %i.o, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.ah, ptr %i.a, align 8
  %.not38 = icmp eq ptr %1, null
  br i1 %.not38, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.ak = load i8, ptr %i.ah, align 1
  %i.al = add i8 %i.ak, -48
  %or.cond4370 = icmp ult i8 %i.al, 10
  br i1 %or.cond4370, label %.lr.ph71, label %.critedge

.lr.ph71:                                         ; preds = %.preheader, %.lr.ph71
  %i.am = phi ptr [ %i.an, %.lr.ph71 ], [ %i.ah, %.preheader ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 3 uses
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = add i8 %i.ao, -48
  %or.cond43 = icmp ult i8 %i.ap, 10
  br i1 %or.cond43, label %.lr.ph71, label %.critedge, !llvm.loop !320

.critedge:                                        ; preds = %.lr.ph71, %.preheader
  %.lcssa = phi ptr [ %i.ah, %.preheader ], [ %i.an, %.lr.ph71 ]
  store ptr %.lcssa, ptr %1, align 8
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.aq = load i8, ptr %i.ah, align 1             ; 2 uses
  %i.ar = add i8 %i.aq, -58
  %or.cond42 = icmp ult i8 %i.ar, -10
  br i1 %or.cond42, label %._crit_edge, label %bb.i, !llvm.loop !319

._crit_edge:                                      ; preds = %bb.l, %bb.b
  %.lcssa110.sink = phi ptr [ %i.k, %bb.b ], [ %i.ah, %bb.l ] ; 2 uses
  %.026.lcssa = phi i32 [ %i.l, %bb.b ], [ %i.ai, %bb.l ]
  %.024.lcssa = phi i64 [ %i.i, %bb.b ], [ %i.af, %bb.l ] ; 2 uses
  store ptr %.lcssa110.sink, ptr %i.a, align 8
  %.not39 = icmp eq ptr %1, null
  br i1 %.not39, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  store ptr %.lcssa110.sink, ptr %1, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %.not40 = icmp eq ptr %2, null
  br i1 %.not40, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %.026.lcssa, ptr %2, align 4
  br label %.thread

.thread:                                          ; preds = %.critedge, %bb.k, %.split.us, %bb.n, %bb.o
  %.2 = phi i64 [ %.024.lcssa, %bb.n ], [ %.024.lcssa, %bb.o ], [ %i.af, %.critedge ], [ %i.af, %bb.k ], [ 0, %.split.us ]
  ret i64 %.2

bb.p:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isprint(i32 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA82_KcERA22_S7_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(22) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(82) %4) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(22) %2) #26
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(22) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJRA82_KcENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(82) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %5, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %5, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #26
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #26
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #26
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRA82_KcENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(82) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERA82_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(82) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %4, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %4, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #26
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #26
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #26
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERA82_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(82) %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(82) %2) #26
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(82) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #26
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #26
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #26
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA13_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA36_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(13) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(36) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  invoke void @_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA36_KcERA13_S7_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(13) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(36) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %4, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #26
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #26
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4warnIJRA24_KcRPS2_RA37_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(37) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5)
end_hunk_3
begin_hunk_4_@_ZN15DeadlyErrorBaseC2IJERA36_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_:bb.a
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(36) %2) #26
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(36) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #26
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #26
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #26
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJRA37_KcERPS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(37) %4) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %3, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #26
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN6Assimp6Logger13formatMessageIJERA37_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %5, ptr noundef nonnull align 1 dereferenceable(37) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %5, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %5, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #26
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #26
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #26
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERA37_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(37) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(37) %3) #26
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(37) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !329)
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  call void @llvm.experimental.noalias.scope.decl(metadata !331)
  call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !333
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !333
  store i8 0, ptr %i.c, align 8, !alias.scope !333
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !333 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !333 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !333 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !333 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !333
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger5errorIJPKcRA26_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(26) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %4, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #26
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull %i.a, i64 noundef %i.i)
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
  invoke void @_ZN6Assimp6Logger13formatMessageIJERA26_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(26) %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit
  %i.l = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.l)
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
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERA26_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(26) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(26) %3) #26
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(26) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !346
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !346
  store i8 0, ptr %i.c, align 8, !alias.scope !346
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !346 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !346 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !346 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !346 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !346
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

end_hunk_4
begin_hunk_5_@_ZN6Assimp6Logger4warnIJPKcRA36_S2_EEEvDpOT_:bb.a
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #26
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull %i.a, i64 noundef %i.i)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !368)
  call void @llvm.experimental.noalias.scope.decl(metadata !369)
  call void @llvm.experimental.noalias.scope.decl(metadata !370)
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !372
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !372
  store i8 0, ptr %i.c, align 8, !alias.scope !372
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !372 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !372 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !372 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !372 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !372
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

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}

!0 = distinct !{!0, !10}
!1 = distinct !{!1, !10}
!2 = distinct !{!2, !10}
!3 = distinct !{!3, !10}
!4 = distinct !{!4, !10}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{i8 0, i8 2}
!12 = !{}
!13 = distinct !{null}
!14 = distinct !{null, null, null, null}
!15 = distinct !{ptr @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!16 = distinct !{!16, i1 true, !"_ZSt11make_sharedIN6Assimp14MemoryIOStreamEJPhRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_"}
!17 = distinct !{!17, !16, !"_ZSt11make_sharedIN6Assimp14MemoryIOStreamEJPhRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_: argument 0"}
!18 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!19 = distinct !{ptr @_ZNSt10unique_ptrIN6Assimp12StreamReaderILb0ELb0EEESt14default_deleteIS2_EED2Ev, null, null, ptr @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!20 = !{!17}
!21 = distinct !{!21, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!22 = distinct !{!22, !21, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!23 = !{!22}
!24 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!25 = distinct !{!25, i1 true, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!26 = distinct !{!26, !25, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!27 = !{!26}
!28 = distinct !{!28, i1 true, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!29 = distinct !{!29, !28, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!30 = !{!29}
!31 = distinct !{!31, i1 true, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!32 = distinct !{!32, !31, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !10}
!36 = distinct !{!36, !10}
!37 = distinct !{!37, !10}
!38 = distinct !{!38, !10}
!39 = !{!32}
!40 = distinct !{!40, i1 true, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!41 = distinct !{!41, !40, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!42 = distinct !{!42, i1 true, !"_ZN6Assimp11XGLImporter8ReadCol3ERN4pugi8xml_nodeE"}
!43 = distinct !{!43, !42, !"_ZN6Assimp11XGLImporter8ReadCol3ERN4pugi8xml_nodeE: argument 0"}
!44 = distinct !{!44, i1 true, !"_ZN6Assimp11XGLImporter8ReadCol3ERN4pugi8xml_nodeE"}
!45 = distinct !{!45, !44, !"_ZN6Assimp11XGLImporter8ReadCol3ERN4pugi8xml_nodeE: argument 0"}
!46 = !{!41}
!47 = !{!43}
!48 = !{!45}
!49 = distinct !{!49, !10}
!50 = distinct !{!50, i1 true, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!51 = distinct !{!51, !50, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!52 = distinct !{!52, !10}
!53 = distinct !{!53, i1 true, !"_ZSt16forward_as_tupleIJjEESt5tupleIJDpOT_EES3_"}
!54 = distinct !{!54, !53, !"_ZSt16forward_as_tupleIJjEESt5tupleIJDpOT_EES3_: argument 0"}
!55 = distinct !{!55, i1 true, !"_ZSt16forward_as_tupleIJjEESt5tupleIJDpOT_EES3_"}
!56 = distinct !{!56, !55, !"_ZSt16forward_as_tupleIJjEESt5tupleIJDpOT_EES3_: argument 0"}
!57 = distinct !{!57, !10}
!58 = distinct !{!58, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!59 = distinct !{!59, !58, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!60 = distinct !{!60, !58, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!61 = distinct !{!61, !10}
!62 = distinct !{!62, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!63 = distinct !{!63, !62, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!64 = distinct !{!64, !62, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!65 = distinct !{!65, i1 true, !"_ZSt19__relocate_object_aI10aiVector2tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!66 = distinct !{!66, !65, !"_ZSt19__relocate_object_aI10aiVector2tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!67 = distinct !{!67, !65, !"_ZSt19__relocate_object_aI10aiVector2tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!68 = distinct !{!68, !10}
!69 = distinct !{!69, !10}
!70 = !{!51}
!71 = !{!54}
!72 = !{!56}
!73 = !{!60, !59}
!74 = !{!64, !63}
!75 = !{!66}
!76 = !{!67}
!77 = distinct !{!77, i1 true, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!78 = distinct !{!78, !77, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!79 = distinct !{!79, i1 true, !"_ZN6Assimp11XGLImporter8ReadCol3ERN4pugi8xml_nodeE"}
!80 = distinct !{!80, !79, !"_ZN6Assimp11XGLImporter8ReadCol3ERN4pugi8xml_nodeE: argument 0"}
!81 = distinct !{!81, i1 true, !"_ZN6Assimp11XGLImporter8ReadCol3ERN4pugi8xml_nodeE"}
!82 = distinct !{!82, !81, !"_ZN6Assimp11XGLImporter8ReadCol3ERN4pugi8xml_nodeE: argument 0"}
!83 = distinct !{!83, i1 true, !"_ZN6Assimp11XGLImporter8ReadCol3ERN4pugi8xml_nodeE"}
!84 = distinct !{!84, !83, !"_ZN6Assimp11XGLImporter8ReadCol3ERN4pugi8xml_nodeE: argument 0"}
!85 = distinct !{!85, i1 true, !"_ZN6Assimp11XGLImporter8ReadCol3ERN4pugi8xml_nodeE"}
!86 = distinct !{!86, !85, !"_ZN6Assimp11XGLImporter8ReadCol3ERN4pugi8xml_nodeE: argument 0"}
!87 = !{!78}
!88 = !{!80}
!89 = !{!82}
!90 = !{!84}
!91 = !{!86}
!92 = distinct !{!92, !10}
!93 = distinct !{!93, i1 true, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!94 = distinct !{!94, !93, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!95 = !{!94}
!96 = distinct !{!96, !10}
!97 = distinct !{!97, !100}
!98 = distinct !{!98, !10}
!99 = distinct !{!99, !10}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = distinct !{!101, !10}
!102 = distinct !{!102, !10}
!103 = distinct !{!103, i1 true, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!104 = distinct !{!104, !103, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!105 = !{!104}
!106 = distinct !{!106, !10}
!107 = distinct !{!107, !10}
!108 = distinct !{!108, i1 true, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!109 = distinct !{!109, !108, !"_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!110 = distinct !{!110, !10}
!111 = distinct !{!111, !10}
!112 = !{!109}
!113 = distinct !{!113, !10}
!114 = distinct !{null}
!115 = distinct !{!115, !10}
!116 = distinct !{!116, !10}
!117 = distinct !{!117, !10}
!118 = distinct !{!118, !10}
!119 = distinct !{!119, !10}
!120 = distinct !{!120, !10}
!121 = distinct !{!121, !10}
!122 = distinct !{!122, !10}
!123 = distinct !{!123, !10}
!124 = distinct !{!124, !10}
!125 = distinct !{!125, !10}
!126 = distinct !{!126, !10}
!127 = distinct !{!127, !10}
!128 = distinct !{!128, !10}
!129 = distinct !{!129, !10}
!130 = distinct !{!130, !10}
!131 = distinct !{!131, i1 true, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!132 = distinct !{!132, !131, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!133 = distinct !{!133, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!134 = distinct !{!134, !133, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!135 = distinct !{!135, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!136 = distinct !{!136, !135, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!137 = !{!132}
!138 = !{!134}
!139 = !{!136}
!140 = !{!136, !134, !132}
!141 = distinct !{null}
!142 = !{ptr @_ZN6Assimp14MemoryIOStreamD2Ev}
!143 = distinct !{null, null}
!144 = distinct !{!144, i1 true, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!145 = distinct !{!145, !144, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!146 = distinct !{!146, i1 true, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!147 = distinct !{!147, !146, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!148 = distinct !{!148, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!149 = distinct !{!149, !148, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!150 = distinct !{!150, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!151 = distinct !{!151, !150, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!152 = !{!145}
!153 = !{!147}
!154 = !{!149}
!155 = !{!151}
!156 = !{!151, !149, !147, !145}
!157 = distinct !{!157, !10}
!158 = distinct !{!158, !10}
!159 = distinct !{!159, i1 true, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!160 = distinct !{!160, !159, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!161 = distinct !{!161, i1 true, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!162 = distinct !{!162, !161, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!163 = distinct !{!163, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!164 = distinct !{!164, !163, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!165 = distinct !{!165, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!166 = distinct !{!166, !165, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!167 = !{!160}
!168 = !{!162}
!169 = !{!164}
!170 = !{!166}
!171 = !{!166, !164, !162, !160}
!172 = distinct !{!172, i1 true, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!173 = distinct !{!173, !172, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!174 = distinct !{!174, i1 true, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!175 = distinct !{!175, !174, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!176 = distinct !{!176, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!177 = distinct !{!177, !176, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!178 = distinct !{!178, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!179 = distinct !{!179, !178, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!180 = !{!173}
!181 = !{!175}
!182 = !{!177}
!183 = !{!179}
!184 = !{!179, !177, !175, !173}
!185 = distinct !{!185, !10}
!186 = distinct !{!186, !10}
end_hunk_5
