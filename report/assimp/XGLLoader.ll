Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/XGLLoader?download=true
inline.NumInlined: 2834
inline.NumDeleted: 1257
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6Assimp11XGLImporter12ReadMaterialERN4pugi8xml_nodeERNS0_9TempScopeE:bb.a
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit101.thread123, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.gi = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %4) ; 0 uses
  %i.gj = call noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5)
  br i1 %i.gj, label %bb.i, label %._crit_edge

bb.ap:                                            ; preds = %bb.ao, %bb.am, %bb.ak, %bb.af, %bb.aa, %bb.v
  %.pn26 = phi { ptr, i32 } [ %i.dn, %bb.v ], [ %i.ea, %bb.aa ], [ %i.eq, %bb.af ], [ %i.fd, %bb.ak ], [ %i.fq, %bb.am ], [ %i.gd, %bb.ao ]
  %i.gk = load ptr, ptr %6, align 8               ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.r
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %bb.ap
  %i.gm = load i64, ptr %i.r, align 8
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.gn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.h
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %bb.aq ], [ %i.ba, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  resume { ptr, i32 } %.pn26.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN6Assimp11XGLImporter17ReadIndexFromTextERN4pugi8xml_nodeE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !guid !239 {
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
  br i1 %or.cond.i, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA46_KcEEEvDpOT_.exit, label %.lr.ph.i, !llvm.loop !238

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
define hidden void @_ZN6Assimp11XGLImporter9ReadTrafoERN4pugi8xml_nodeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.aiMatrix4x4t) align 4 captures(none) initializes((0, 64)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 !guid !242 {
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
  %.sroa.0128.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.b ], [ %.sroa.0128.1241, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ] ; 5 uses
  %.sroa.22.0.lcssa = phi float [ 0.000000e+00, %bb.b ], [ %.sroa.22.1242, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ] ; 4 uses
  %.sroa.092.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.b ], [ %.sroa.092.1243, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ] ; 5 uses
  %.sroa.8.0.lcssa = phi float [ 0.000000e+00, %bb.b ], [ %.sroa.8.1244, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ]
  %.sroa.077.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.b ], [ %.sroa.077.1245, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ] ; 2 uses
  %.sroa.22159.0.lcssa = phi float [ 0.000000e+00, %bb.b ], [ %.sroa.22159.1246, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ] ; 4 uses
  %.0.lcssa = phi float [ 1.000000e+00, %bb.b ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ] ; 4 uses
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
  br i1 %i.z, label %bb.u, label %bb.t

bb.c:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %.0211 = phi float [ 1.000000e+00, %.lr.ph ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ] ; 5 uses
  %.sroa.22159.0210 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.22159.1246, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ] ; 6 uses
  %.sroa.077.0209 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.077.1245, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ] ; 6 uses
  %.sroa.8.0208 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.8.1244, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ] ; 6 uses
  %.sroa.092.0207 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.092.1243, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ] ; 6 uses
  %.sroa.22.0206 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.22.1242, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ] ; 6 uses
  %.sroa.0128.0205 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0128.1241, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ] ; 6 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  store ptr %i.t, ptr %7, align 8, !alias.scope !243
  %i.am = load ptr, ptr %8, align 8, !noalias !243 ; 2 uses
  %i.an = load i64, ptr %i.s, align 8, !noalias !243 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26, !noalias !243
  store i64 %i.an, ptr %i.d, align 8, !noalias !243
  %i.ao = icmp ugt i64 %i.an, 15
  br i1 %i.ao, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.ap = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc53 unwind label %bb.l   ; 2 uses

.noexc53:                                         ; preds = %.noexc.i.i
  store ptr %i.ap, ptr %7, align 8, !alias.scope !243
  %i.aq = load i64, ptr %i.d, align 8, !noalias !243
  store i64 %i.aq, ptr %i.t, align 8, !alias.scope !243
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
  %i.at = load i64, ptr %i.d, align 8, !noalias !243 ; 2 uses
  store i64 %i.at, ptr %i.u, align 8, !alias.scope !243
  %i.au = load ptr, ptr %7, align 8, !alias.scope !243
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  store i8 0, ptr %i.av, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26, !noalias !243
  %i.aw = load i64, ptr %i.s, align 8, !noalias !243
  %.not.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i, label %_ZN6Assimp16ai_stdStrToLowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %.lr.ph.i
  %.06.i = phi i64 [ %i.bd, %.lr.ph.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ] ; 2 uses
  %i.ax = load ptr, ptr %7, align 8, !alias.scope !243
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.06.i ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i32
  %i.bb = call i32 @tolower(i32 noundef %i.ba) #31
  %i.bc = trunc i32 %i.bb to i8
  store i8 %i.bc, ptr %i.ay, align 1
  %i.bd = add nuw i64 %.06.i, 1                   ; 2 uses
  %i.be = load i64, ptr %i.s, align 8, !noalias !243
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
          to label %bb.k unwind label %bb.o       ; 2 uses

bb.k:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.fca.0.extract13 = extractvalue { <2 x float>, float } %i.bv, 0
  %.fca.1.extract14 = extractvalue { <2 x float>, float } %i.bv, 1
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167thread-pre-split

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i, %bb.d
  %lpad.loopexit.split-lp250 = landingpad { ptr, i32 }
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
  %.pn = phi { ptr, i32 } [ %i.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %lpad.loopexit.split-lp250, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bw, %bb.l ]
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
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167thread-pre-split

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pre219 = load ptr, ptr %7, align 8
  %bcmp.i59 = call i32 @bcmp(ptr %.pre219, ptr nonnull @.str.31, i64 %i.bk)
  %i.cd = icmp eq i32 %bcmp.i59, 0
  br i1 %i.cd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA48_KcEEEvDpOT_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60
  %i.ce = invoke { <2 x float>, float } @_ZN6Assimp11XGLImporter8ReadVec3ERN4pugi8xml_nodeE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.n unwind label %bb.o       ; 2 uses

bb.n:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread
  %.fca.0.extract2 = extractvalue { <2 x float>, float } %i.ce, 0
  %.fca.1.extract3 = extractvalue { <2 x float>, float } %i.ce, 1
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167thread-pre-split

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

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167thread-pre-split: ; preds = %bb.k, %bb.n, %bb.m
  %.sroa.0128.1.ph = phi <2 x float> [ %.sroa.0128.0205, %bb.n ], [ %.sroa.0128.0205, %bb.m ], [ %.fca.0.extract13, %bb.k ]
  %.sroa.22.1.ph = phi float [ %.sroa.22.0206, %bb.n ], [ %.fca.1.extract8, %bb.m ], [ %.sroa.22.0206, %bb.k ]
  %.sroa.092.1.ph = phi <2 x float> [ %.sroa.092.0207, %bb.n ], [ %.fca.0.extract7, %bb.m ], [ %.sroa.092.0207, %bb.k ]
  %.sroa.8.1.ph = phi float [ %.fca.1.extract3, %bb.n ], [ %.sroa.8.0208, %bb.m ], [ %.sroa.8.0208, %bb.k ]
  %.sroa.077.1.ph = phi <2 x float> [ %.fca.0.extract2, %bb.n ], [ %.sroa.077.0209, %bb.m ], [ %.sroa.077.0209, %bb.k ]
  %.sroa.22159.1.ph = phi float [ %.sroa.22159.0210, %bb.n ], [ %.sroa.22159.0210, %bb.m ], [ %.fca.1.extract14, %bb.k ]
  %.pr = load i64, ptr %i.u, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167thread-pre-split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ck = phi i64 [ %.pr, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167thread-pre-split ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.sroa.0128.1 = phi <2 x float> [ %.sroa.0128.1.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167thread-pre-split ], [ %.sroa.0128.0205, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %.sroa.22.1 = phi float [ %.sroa.22.1.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167thread-pre-split ], [ %.sroa.22.0206, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %.sroa.092.1 = phi <2 x float> [ %.sroa.092.1.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167thread-pre-split ], [ %.sroa.092.0207, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %.sroa.8.1 = phi float [ %.sroa.8.1.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167thread-pre-split ], [ %.sroa.8.0208, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %.sroa.077.1 = phi <2 x float> [ %.sroa.077.1.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167thread-pre-split ], [ %.sroa.077.0209, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %.sroa.22159.1 = phi float [ %.sroa.22159.1.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167thread-pre-split ], [ %.sroa.22159.0210, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %i.cl = icmp eq i64 %i.ck, 5
  br i1 %i.cl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA48_KcEEEvDpOT_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167
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

_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA48_KcEEEvDpOT_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167, %.noexc68, %.noexc66, %bb.p, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65
  %.sroa.22159.1246 = phi float [ %.sroa.22159.1, %.noexc68 ], [ %.sroa.22159.1, %bb.p ], [ %.sroa.22159.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65 ], [ %.sroa.22159.1, %.noexc66 ], [ %.sroa.22159.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167 ], [ %.sroa.22159.0210, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58 ], [ %.sroa.22159.0210, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.22159.0210, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60 ] ; 2 uses
  %.sroa.077.1245 = phi <2 x float> [ %.sroa.077.1, %.noexc68 ], [ %.sroa.077.1, %bb.p ], [ %.sroa.077.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65 ], [ %.sroa.077.1, %.noexc66 ], [ %.sroa.077.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167 ], [ %.sroa.077.0209, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58 ], [ %.sroa.077.0209, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.077.0209, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60 ] ; 2 uses
  %.sroa.8.1244 = phi float [ %.sroa.8.1, %.noexc68 ], [ %.sroa.8.1, %bb.p ], [ %.sroa.8.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65 ], [ %.sroa.8.1, %.noexc66 ], [ %.sroa.8.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167 ], [ %.sroa.8.0208, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58 ], [ %.sroa.8.0208, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.8.0208, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60 ] ; 2 uses
  %.sroa.092.1243 = phi <2 x float> [ %.sroa.092.1, %.noexc68 ], [ %.sroa.092.1, %bb.p ], [ %.sroa.092.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65 ], [ %.sroa.092.1, %.noexc66 ], [ %.sroa.092.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167 ], [ %.sroa.092.0207, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58 ], [ %.sroa.092.0207, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.092.0207, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60 ] ; 2 uses
  %.sroa.22.1242 = phi float [ %.sroa.22.1, %.noexc68 ], [ %.sroa.22.1, %bb.p ], [ %.sroa.22.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65 ], [ %.sroa.22.1, %.noexc66 ], [ %.sroa.22.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167 ], [ %.sroa.22.0206, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58 ], [ %.sroa.22.0206, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.22.0206, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60 ] ; 2 uses
  %.sroa.0128.1241 = phi <2 x float> [ %.sroa.0128.1, %.noexc68 ], [ %.sroa.0128.1, %bb.p ], [ %.sroa.0128.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65 ], [ %.sroa.0128.1, %.noexc66 ], [ %.sroa.0128.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167 ], [ %.sroa.0128.0205, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58 ], [ %.sroa.0128.0205, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.0128.0205, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60 ] ; 2 uses
  %.1 = phi float [ %i.cx, %.noexc68 ], [ %i.cx, %bb.p ], [ %.0211, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65 ], [ %i.cx, %.noexc66 ], [ %.0211, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread167 ], [ %.0211, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit58 ], [ %.0211, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.0211, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60 ] ; 2 uses
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
  %.sroa.092.0.vec.extract95 = extractelement <2 x float> %.sroa.092.0.lcssa, i64 0 ; 2 uses
  %foldExtExtBinop248 = fmul <2 x float> %.sroa.092.0.lcssa, %.sroa.092.0.lcssa
  %9 = extractelement <2 x float> %foldExtExtBinop248, i64 1
  %i.dh = call float @llvm.fmuladd.f32(float %.sroa.092.0.vec.extract95, float %.sroa.092.0.vec.extract95, float %9)
  %i.di = call noundef float @llvm.fmuladd.f32(float %.sroa.22.0.lcssa, float %.sroa.22.0.lcssa, float %i.dh) ; 3 uses
  %i.dj = fpext float %i.di to double
  %i.dk = fcmp olt double %i.dj, 1.000000e-04
  br i1 %i.dk, label %bb.u, label %bb.w

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

bb.w:                                             ; preds = %bb.t
  %i.dn = fcmp oeq float %i.x, 0.000000e+00
  br i1 %i.dn, label %_ZN10aiVector3tIfE9NormalizeEv.exit, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.w
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.x)
  %i.do = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.dp = insertelement <2 x float> poison, float %i.do, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = fmul <2 x float> %.sroa.0128.0.lcssa, %i.dq
  %i.ds = fmul float %.sroa.22159.0.lcssa, %i.do
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZN10aiVector3tIfE9NormalizeEv.exit:              ; preds = %bb.w, %_ZN10aiVector3tIfEdVEf.exit.i
  %.sroa.0128.2 = phi <2 x float> [ %.sroa.0128.0.lcssa, %bb.w ], [ %i.dr, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 4 uses
  %.sroa.22159.2 = phi float [ %.sroa.22159.0.lcssa, %bb.w ], [ %i.ds, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 4 uses
  %i.dt = fcmp oeq float %i.di, 0.000000e+00
  br i1 %i.dt, label %_ZN10aiVector3tIfE9NormalizeEv.exit74, label %_ZN10aiVector3tIfEdVEf.exit.i72

_ZN10aiVector3tIfEdVEf.exit.i72:                  ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit
  %sqrt.i.i73 = call noundef float @llvm.sqrt.f32(float %i.di)
  %i.du = fdiv float 1.000000e+00, %sqrt.i.i73    ; 2 uses
  %10 = insertelement <2 x float> poison, float %i.du, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = fmul <2 x float> %.sroa.092.0.lcssa, %11
  %i.dv = fmul float %.sroa.22.0.lcssa, %i.du
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit74

_ZN10aiVector3tIfE9NormalizeEv.exit74:            ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit, %_ZN10aiVector3tIfEdVEf.exit.i72
  %.sroa.22.2.a = phi float [ %.sroa.22.0.lcssa, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %i.dv, %_ZN10aiVector3tIfEdVEf.exit.i72 ] ; 4 uses
  %13 = phi <2 x float> [ %.sroa.092.0.lcssa, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %12, %_ZN10aiVector3tIfEdVEf.exit.i72 ] ; 3 uses
  %.sroa.0128.4.vec.extract152 = extractelement <2 x float> %.sroa.0128.2, i64 1 ; 3 uses
  %.sroa.0128.0.vec.extract137.a = extractelement <2 x float> %.sroa.0128.2, i64 0 ; 3 uses
  %i.dw = extractelement <2 x float> %13, i64 1   ; 3 uses
  %i.dx = fmul float %.sroa.0128.4.vec.extract152, %i.dw
  %14 = extractelement <2 x float> %13, i64 0     ; 3 uses
  %i.dy = call float @llvm.fmuladd.f32(float %14, float %.sroa.0128.0.vec.extract137.a, float %i.dx)
  %i.dz = call noundef float @llvm.fmuladd.f32(float %.sroa.22.2.a, float %.sroa.22159.2, float %i.dy)
  %i.ea = call noundef float @llvm.fabs.f32(float %i.dz)
  %i.eb = fpext float %i.ea to double
  %i.ec = fcmp ogt double %i.eb, 1.000000e-04
  br i1 %i.ec, label %bb.x, label %bb.z

bb.x:                                             ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit74
  %i.ed = call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.ed, label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA58_KcEEEvDpOT_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ee = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr @.str, ptr %i.a, align 8
  call void @_ZN6Assimp6Logger5errorIJPKcRA70_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ee, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(70) @.str.35)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA58_KcEEEvDpOT_.exit

bb.z:                                             ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit74
  %i.ef = fneg float %14
  %i.eg = fmul float %.sroa.0128.4.vec.extract152, %i.ef
  %i.eh = call float @llvm.fmuladd.f32(float %.sroa.0128.0.vec.extract137.a, float %i.dw, float %i.eg)
  %i.ei = fneg float %.sroa.22.2.a
  %i.ej = fmul float %.sroa.0128.0.vec.extract137.a, %i.ei
  %i.ek = call float @llvm.fmuladd.f32(float %.sroa.22159.2, float %14, float %i.ej)
  %i.el = fneg float %i.dw
  %i.em = fmul float %.sroa.22159.2, %i.el
  %i.en = call float @llvm.fmuladd.f32(float %.sroa.0128.4.vec.extract152, float %.sroa.22.2.a, float %i.em)
  %i.eo = fmul float %.0.lcssa, %i.eh
  %i.ep = fmul float %.0.lcssa, %.sroa.22.2.a
  %i.eq = fmul float %.0.lcssa, %.sroa.22159.2
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.eo, ptr %i.er, align 4
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.ep, ptr %i.es, align 4
  store float %i.eq, ptr %i.i, align 4
  %16 = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %.0.lcssa, i64 0
  %17 = shufflevector <4 x float> %16, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3> ; 2 uses
  %18 = shufflevector <2 x float> %.sroa.0128.2, <2 x float> %.sroa.077.0.lcssa, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %19 = insertelement <4 x float> %18, float %i.en, i64 0
  %20 = shufflevector <2 x float> %13, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %21 = shufflevector <4 x float> %19, <4 x float> %20, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %22 = fmul <4 x float> %17, %21
  store <4 x float> %22, ptr %0, align 4
  %23 = shufflevector <2 x float> %.sroa.0128.2, <2 x float> %.sroa.077.0.lcssa, <4 x i32> <i32 poison, i32 poison, i32 1, i32 3>
  %24 = insertelement <4 x float> %23, float %i.ek, i64 0
  %25 = shufflevector <4 x float> %24, <4 x float> %20, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %26 = fmul <4 x float> %17, %25
  store <4 x float> %26, ptr %15, align 4
  store float %.sroa.8.0.lcssa, ptr %i.j, align 4
  br label %_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA58_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11XGLImporterEE8LogErrorIJRA58_KcEEEvDpOT_.exit: ; preds = %bb.y, %bb.x, %bb.v, %bb.u, %bb.a, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6aiNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(1144) dereferenceable(1144)) unnamed_addr #2

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare ptr @_ZNK4pugi8xml_node5childEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden noundef float @_ZN6Assimp11XGLImporter9ReadFloatERN4pugi8xml_nodeE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !guid !244 {
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
define hidden noundef nonnull ptr @_ZN6Assimp11XGLImporter12ToOutputMeshERKNS0_16TempMaterialMeshE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !guid !249 {
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
  %i.n = sdiv exact i64 %i.m, 12                  ; 2 uses
end_hunk_0
