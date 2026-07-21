inline.NumInlined: 6572
inline.NumDeleted: 2480
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZL22ReadNodeTransformationRN4pugi8xml_nodeEPN6Assimp7Collada4NodeENS3_13TransformTypeE:bb.a
  %i.be = load ptr, ptr %i.an, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 104
  store ptr %i.bf, ptr %i.an, align 8
  br label %_ZNSt6vectorIN6Assimp7Collada9TransformESaIS2_EE9push_backERKS2_.exit

bb.o:                                             ; preds = %._crit_edge
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke void @_ZNSt6vectorIN6Assimp7Collada9TransformESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr %i.ao, ptr noundef nonnull align 8 dereferenceable(100) %6)
          to label %_ZNSt6vectorIN6Assimp7Collada9TransformESaIS2_EE9push_backERKS2_.exit unwind label %bb.y

bb.p:                                             ; preds = %bb.k
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.q:                                             ; preds = %.lr.ph, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 2 uses
  %.04445 = phi ptr [ %i.af, %.lr.ph ], [ %i.bn, %bb.v ] ; 3 uses
  %i.bi = ptrtoint ptr %.04445 to i64
  %i.bj = sub i64 %i.al, %i.bi
  %scevgep.i.i = getelementptr i8, ptr %.04445, i64 %i.bj
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.q
  %.0.i.i = phi ptr [ %.04445, %bb.q ], [ %i.bl, %bb.t ] ; 4 uses
  %i.bk = load i8, ptr %.0.i.i, align 1
  switch i8 %i.bk, label %bb.u [
    i8 32, label %bb.s
    i8 9, label %bb.s
    i8 13, label %bb.s
    i8 10, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r, %bb.r, %bb.r
  %.not.i.i = icmp eq ptr %.0.i.i, %i.ah
  br i1 %.not.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.r, !llvm.loop !41

bb.u:                                             ; preds = %bb.s, %bb.r
  %.0.lcssa.i.i = phi ptr [ %.0.i.i, %bb.r ], [ %scevgep.i.i, %bb.s ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv
  %i.bn = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.bm, i1 noundef zeroext true)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.q, !llvm.loop !166

bb.w:                                             ; preds = %bb.u
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

_ZNSt6vectorIN6Assimp7Collada9TransformESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZN6Assimp7Collada9TransformC2ERKS1_.exit.i, %bb.o
  %i.bp = load ptr, ptr %7, align 8               ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.ac
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN6Assimp7Collada9TransformESaIS2_EE9push_backERKS2_.exit
  %i.br = load i64, ptr %i.ac, align 8
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN6Assimp7Collada9TransformESaIS2_EE9push_backERKS2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.bt = load ptr, ptr %6, align 8               ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.q
  br i1 %i.bu, label %_ZN6Assimp7Collada9TransformD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bv = load i64, ptr %i.q, align 8
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #30
  br label %_ZN6Assimp7Collada9TransformD2Ev.exit

_ZN6Assimp7Collada9TransformD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.bx = load ptr, ptr %5, align 8               ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.e
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZN6Assimp7Collada9TransformD2Ev.exit
  %i.bz = load i64, ptr %i.e, align 8
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZN6Assimp7Collada9TransformD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  ret void

bb.y:                                             ; preds = %bb.o, %.noexc.i.i.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.y, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.p ], [ %i.bo, %bb.w ], [ %i.cb, %bb.y ]
  %i.cc = load ptr, ptr %7, align 8               ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.ac
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.z
  %i.ce = load i64, ptr %i.ac, align 8
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %i.ab, %bb.j ]
  %i.cg = load ptr, ptr %6, align 8               ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.q
  br i1 %i.ch, label %_ZN6Assimp7Collada9TransformD2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37: ; preds = %bb.aa
  %i.ci = load i64, ptr %i.q, align 8
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #30
  br label %_ZN6Assimp7Collada9TransformD2Ev.exit39

_ZN6Assimp7Collada9TransformD2Ev.exit39:          ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.ck = load ptr, ptr %5, align 8               ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.e
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZN6Assimp7Collada9TransformD2Ev.exit39
  %i.cm = load i64, ptr %i.e, align 8
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %_ZN6Assimp7Collada9TransformD2Ev.exit39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN6Assimp7Collada12NodeInstanceESaIS2_EE12emplace_backIJEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.f, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.g, align 8
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  store ptr %i.i, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN6Assimp7Collada12NodeInstanceESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi ptr [ %.pre, %bb.c ], [ %i.i, %bb.b ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -32
  ret ptr %i.k
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp13ColladaParser16ReadNodeGeometryERN4pugi8xml_nodeEPNS_7Collada4NodeE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(772) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple.352", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.355", align 1    ; 3 uses
  %5 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %6 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"struct.Assimp::Collada::MeshInstance", align 8 ; 17 uses
  %10 = alloca %"class.pugi::xml_node", align 8   ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.pugi::xml_node", align 8   ; 6 uses
  %13 = alloca %"class.pugi::xml_node", align 8   ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %16 = alloca %"struct.Assimp::Collada::SemanticMappingTable", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.c, ptr %8, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 0, ptr %i.d, align 8
  store i8 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.e = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.130)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  store ptr %i.e, ptr %7, align 8
  %i.f = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc34 unwind label %bb.f

.noexc34:                                         ; preds = %.noexc
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc34
  %i.g = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.46)
          to label %.noexc35 unwind label %bb.f   ; 2 uses

.noexc35:                                         ; preds = %bb.b
  %i.h = load i64, ptr %i.d, align 8
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #28
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef %i.h, ptr noundef nonnull %i.g, i64 noundef %i.i)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %.noexc34, %.noexc35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.k = load ptr, ptr %8, align 8                ; 2 uses
  %i.l = load i8, ptr %i.k, align 1
  %.not = icmp eq i8 %i.l, 35
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull @.str.222)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.bf unwind label %bb.f

bb.f:                                             ; preds = %.noexc35, %bb.b, %.noexc, %bb.a, %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.m) #28
  br label %bb.be

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.p, ptr %9, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.q, align 8
  store i8 0, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 6 uses
  store i32 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 56
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 64
  store ptr %i.r, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 72
  store i64 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.x = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.w) #28
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %i.w, i64 noundef %i.x)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.n ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.z = invoke ptr @_ZNK4pugi8xml_node11first_childEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.preheader100 unwind label %.loopexit.split-lp102

.preheader100:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %16, i64 72
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %17 = insertelement <2 x ptr> poison, ptr %i.ai, i64 0
  %18 = shufflevector <2 x ptr> %17, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.i

bb.i:                                             ; preds = %.preheader100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  %storemerge = phi ptr [ %i.ft, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ], [ %i.z, %.preheader100 ]
  store ptr %storemerge, ptr %10, align 8
  %i.ao = invoke noundef ptr @_ZNK4pugi8xml_nodecvPFvPPPS0_EEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.j unwind label %.loopexit101

bb.j:                                             ; preds = %bb.i
  %.not20 = icmp eq ptr %i.ao, null
  br i1 %.not20, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.as = load ptr, ptr %i.ar, align 8
  %.not.i = icmp eq ptr %i.aq, %i.as
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6Assimp7Collada12MeshInstanceC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %i.aq, ptr noundef nonnull align 8 dereferenceable(80) %9)
          to label %.noexc38 unwind label %bb.n

.noexc38:                                         ; preds = %bb.l
  %i.at = load ptr, ptr %i.ap, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  store ptr %i.au, ptr %i.ap, align 8
  br label %_ZNSt6vectorIN6Assimp7Collada12MeshInstanceESaIS2_EE9push_backERKS2_.exit

bb.m:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 152
  invoke void @_ZNSt6vectorIN6Assimp7Collada12MeshInstanceESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr %i.aq, ptr noundef nonnull align 8 dereferenceable(80) %9)
          to label %_ZNSt6vectorIN6Assimp7Collada12MeshInstanceESaIS2_EE9push_backERKS2_.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.h
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.loopexit101:                                     ; preds = %bb.i
  %lpad.loopexit103 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.loopexit.split-lp102:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %lpad.loopexit.split-lp104 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.o:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.ax = invoke noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.p unwind label %bb.aa      ; 4 uses

bb.p:                                             ; preds = %bb.o
  store ptr %i.aa, ptr %11, align 8
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.290) #29
          to label %.noexc40 unwind label %.loopexit.split-lp107

.noexc40:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.az = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ax) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.az, ptr %i.b, align 8
  %i.ba = icmp ugt i64 %i.az, 15
  br i1 %i.ba, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.r
  %i.bb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc41 unwind label %.loopexit106 ; 2 uses

.noexc41:                                         ; preds = %.noexc.i
  store ptr %i.bb, ptr %11, align 8
  %i.bc = load i64, ptr %i.b, align 8
  store i64 %i.bc, ptr %i.aa, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc41, %bb.r
  %i.bd = phi ptr [ %i.bb, %.noexc41 ], [ %i.aa, %bb.r ] ; 2 uses
  switch i64 %i.az, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.be = load i8, ptr %i.ax, align 1
  store i8 %i.be, ptr %i.bd, align 1
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr nonnull align 1 %i.ax, i64 %i.az, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i
  %i.bf = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.bf, ptr %i.ab, align 8
  %i.bg = load ptr, ptr %11, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf
  store i8 0, ptr %i.bh, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.bi = load i64, ptr %i.ab, align 8
  %i.bj = icmp eq i64 %i.bi, 13
  %.pre157 = load ptr, ptr %11, align 8           ; 4 uses
  br i1 %i.bj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread93

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.u
  %i.bk = load i64, ptr %.pre157, align 1
  %i.bl = xor i64 %i.bk, 8386104237614852450
  %i.bm = getelementptr i8, ptr %.pre157, i64 5
  %i.bn = load i64, ptr %i.bm, align 1
  %i.bo = xor i64 %i.bn, 7809639168886464877
  %i.bp = or i64 %i.bl, %i.bo
  %i.bq = icmp ne i64 %i.bp, 0
  %i.br = zext i1 %i.bq to i32
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread93

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.bt = invoke ptr @_ZNK4pugi8xml_node5childEPKc(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.145)
          to label %bb.v unwind label %bb.ab

bb.v:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  store ptr %i.bt, ptr %12, align 8
  %i.bu = invoke noundef ptr @_ZNK4pugi8xml_nodecvPFvPPPS0_EEv(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  %.not21 = icmp eq ptr %i.bu, null
  br i1 %.not21, label %bb.ay, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.bv = invoke ptr @_ZNK4pugi8xml_node5childEPKc(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.224)
          to label %.preheader unwind label %.loopexit.split-lp

.preheader:                                       ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %storemerge22 = phi ptr [ %i.fj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.bv, %bb.x ]
  store ptr %storemerge22, ptr %13, align 8
  %i.bw = invoke noundef ptr @_ZNK4pugi8xml_nodecvPFvPPPS0_EEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.y unwind label %.loopexit

bb.y:                                             ; preds = %.preheader
  %.not23 = icmp eq ptr %i.bw, null
  br i1 %.not23, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.ay

bb.aa:                                            ; preds = %bb.o
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.loopexit106:                                     ; preds = %.noexc.i
  %lpad.loopexit108 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.loopexit.split-lp107:                            ; preds = %bb.q
  %lpad.loopexit.split-lp109 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ab:                                            ; preds = %bb.v, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit:                                        ; preds = %.preheader
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp:                               ; preds = %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ac:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.bz = invoke noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.ad unwind label %bb.an     ; 4 uses

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.ac, ptr %14, align 8
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.290) #29
          to label %.noexc44 unwind label %.loopexit.split-lp96

.noexc44:                                         ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.cb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bz) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.cb, ptr %i.a, align 8
  %i.cc = icmp ugt i64 %i.cb, 15
  br i1 %i.cc, label %.noexc.i43, label %._crit_edge.i.i42

.noexc.i43:                                       ; preds = %bb.af
  %i.cd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc45 unwind label %.loopexit95 ; 2 uses

.noexc45:                                         ; preds = %.noexc.i43
  store ptr %i.cd, ptr %14, align 8
  %i.ce = load i64, ptr %i.a, align 8
  store i64 %i.ce, ptr %i.ac, align 8
  br label %._crit_edge.i.i42

._crit_edge.i.i42:                                ; preds = %.noexc45, %bb.af
  %i.cf = phi ptr [ %i.cd, %.noexc45 ], [ %i.ac, %bb.af ] ; 2 uses
  switch i64 %i.cb, label %bb.ah [
    i64 1, label %bb.ag
    i64 0, label %bb.ai
  ]

bb.ag:                                            ; preds = %._crit_edge.i.i42
  %i.cg = load i8, ptr %i.bz, align 1
  store i8 %i.cg, ptr %i.cf, align 1
  br label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.i.i42
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cf, ptr nonnull align 1 %i.bz, i64 %i.cb, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %._crit_edge.i.i42
  %i.ch = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.ch, ptr %i.ad, align 8
  %i.ci = load ptr, ptr %14, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ch
  store i8 0, ptr %i.cj, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ck = load i64, ptr %i.ad, align 8
  %i.cl = icmp eq i64 %i.ck, 17
  %.pre155 = load ptr, ptr %14, align 8           ; 4 uses
  br i1 %i.cl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread94

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48: ; preds = %bb.ai
  %i.cm = load i128, ptr %.pre155, align 1
  %i.cn = xor i128 %i.cm, 129482626994040270245263185077473603177
  %i.co = getelementptr i8, ptr %.pre155, i64 16
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = zext i8 %i.cp to i128
  %i.cr = xor i128 %i.cq, 108
  %i.cs = or i128 %i.cn, %i.cr
  %i.ct = icmp ne i128 %i.cs, 0
  %i.cu = zext i1 %i.ct to i32
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread94

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  store ptr %i.ae, ptr %15, align 8
  store i64 0, ptr %i.af, align 8
  store i8 0, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.cw = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @.str.225)
          to label %.noexc50 unwind label %bb.ao

.noexc50:                                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread
  store ptr %i.cw, ptr %6, align 8
  %i.cx = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc51 unwind label %bb.ao

.noexc51:                                         ; preds = %.noexc50
  br i1 %i.cx, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.noexc51
  %i.cy = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.46)
          to label %.noexc52 unwind label %bb.ao  ; 2 uses

.noexc52:                                         ; preds = %bb.aj
  %i.cz = load i64, ptr %i.af, align 8
  %i.da = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cy) #28
  %i.db = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef %i.cz, ptr noundef nonnull %i.cy, i64 noundef %i.da)
          to label %bb.ak unwind label %bb.ao     ; 0 uses

bb.ak:                                            ; preds = %.noexc51, %.noexc52
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.dc = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @.str.50)
          to label %.noexc56 unwind label %bb.ao

.noexc56:                                         ; preds = %bb.ak
  store ptr %i.dc, ptr %5, align 8
  %i.dd = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc57 unwind label %bb.ao

.noexc57:                                         ; preds = %.noexc56
  br i1 %i.dd, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.noexc57
  %i.de = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.46)
          to label %.noexc58 unwind label %bb.ao  ; 2 uses

.noexc58:                                         ; preds = %bb.al
  %i.df = load i64, ptr %i.d, align 8
  %i.dg = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.de) #28
  %i.dh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef %i.df, ptr noundef nonnull %i.de, i64 noundef %i.dg)
          to label %bb.am unwind label %bb.ao     ; 0 uses

bb.am:                                            ; preds = %.noexc57, %.noexc58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.di = load ptr, ptr %8, align 8               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  store ptr %i.ag, ptr %16, align 8
  store i64 0, ptr %i.ah, align 8
  store i8 0, ptr %i.ag, align 8
  store i32 0, ptr %i.ai, align 8
  store ptr null, ptr %i.aj, align 8
  store <2 x ptr> %18, ptr %i.ak, align 8
  store i64 0, ptr %i.al, align 8
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = icmp eq i8 %i.dj, 35
  %spec.select.idx = zext i1 %i.dk to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %i.di, i64 %spec.select.idx ; 2 uses
  %i.dl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select) #28
  %i.dm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %spec.select, i64 noundef %i.dl)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit62 unwind label %bb.au ; 0 uses

bb.an:                                            ; preds = %bb.ac
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit95:                                      ; preds = %.noexc.i43
  %lpad.loopexit97 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp96:                             ; preds = %bb.ae
  %lpad.loopexit.split-lp98 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ao:                                            ; preds = %.noexc58, %bb.al, %.noexc56, %bb.ak, %.noexc52, %bb.aj, %.noexc50, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit62: ; preds = %bb.am
  invoke void @_ZN6Assimp13ColladaParser30ReadMaterialVertexInputBindingERN4pugi8xml_nodeERNS_7Collada20SemanticMappingTableE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(80) %16)
          to label %bb.ap unwind label %bb.au

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit62
  %i.dp = load ptr, ptr %i.s, align 8             ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ap
  %i.dq = load i64, ptr %i.af, align 8            ; 4 uses
  %i.dr = load ptr, ptr %15, align 8              ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ] ; 6 uses
  %.0811.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.dt = load i64, ptr %i.ds, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.dq, i64 %i.dt) ; 2 uses
  %i.du = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.du, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.aq
  %i.dv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = call i32 @memcmp(ptr noundef %i.dw, ptr noundef %i.dr, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.dx, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.aq
  %i.dy = sub i64 %i.dt, %i.dq
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.dy, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dx, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.dz = icmp slt i32 %.0.i.i.i.i.i.i.i, 0       ; 4 uses
  %.19.i.i.i.i = select i1 %i.dz, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.dz, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada20SemanticMappingTableESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit.i, label %bb.aq, !llvm.loop !167

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada20SemanticMappingTableESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.ea = icmp eq ptr %.19.i.i.i.i, %i.r
  br i1 %i.ea, label %.critedge.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada20SemanticMappingTableESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.dz, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.eb = load i64, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8 ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.eb, i64 %i.dq) ; 2 uses
  %i.ec = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.ec, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.ar
  %.19.i.i.i.i.sroa.sel92.v.sroa.sel.v.sroa.sel.v = select i1 %i.dz, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel92.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel92.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ed = load ptr, ptr %.19.i.i.i.i.sroa.sel92.v.sroa.sel.v.sroa.sel, align 8
  %i.ee = call i32 @memcmp(ptr noundef %i.dr, ptr noundef %i.ed, i64 noundef %.sroa.speculated.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i4.i = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i.i4.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.ar
  %i.ef = sub i64 %i.dq, %i.eb
  %spec.select7.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ef, i64 -2147483648)
  %.08.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.ee, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.eg = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.eg, label %.critedge.i, label %bb.as

.critedge.i:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada20SemanticMappingTableESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit.i, %bb.ap
  %.08.lcssa.i.i.i12.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada20SemanticMappingTableESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_.exit.i ], [ %i.r, %bb.ap ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %15, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.eh = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6Assimp7Collada20SemanticMappingTableEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr %.08.lcssa.i.i.i12.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc63 unwind label %bb.au

.noexc63:                                         ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.as

bb.as:                                            ; preds = %.noexc63, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i
  %.sroa.07.0.i = phi ptr [ %i.eh, %.noexc63 ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i, i64 64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(80) %i.ei, ptr noundef nonnull align 8 dereferenceable(80) %16)
          to label %.noexc64 unwind label %bb.au

.noexc64:                                         ; preds = %bb.as
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i, i64 96
  %i.ek = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6Assimp7Collada21InputSemanticMapEntryEESt10_Select1stISB_ESt4lessIS5_ESaISB_EEaSERKSH_(ptr noundef nonnull align 8 dereferenceable(48) %i.ej, ptr noundef nonnull align 8 dereferenceable(48) %i.an)
          to label %_ZN6Assimp7Collada20SemanticMappingTableaSERKS1_.exit unwind label %bb.au ; 0 uses

_ZN6Assimp7Collada20SemanticMappingTableaSERKS1_.exit: ; preds = %.noexc64
  %i.el = load ptr, ptr %i.aj, align 8
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6Assimp7Collada21InputSemanticMapEntryEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef %i.el)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada21InputSemanticMapEntryESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i unwind label %bb.at

bb.at:                                            ; preds = %_ZN6Assimp7Collada20SemanticMappingTableaSERKS1_.exit
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %i.em, 0
  call void @__clang_call_terminate(ptr %i.en) #33
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada21InputSemanticMapEntryESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i: ; preds = %_ZN6Assimp7Collada20SemanticMappingTableaSERKS1_.exit
  %i.eo = load ptr, ptr %16, align 8              ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.ag
  br i1 %i.ep, label %_ZN6Assimp7Collada20SemanticMappingTableD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada21InputSemanticMapEntryESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i
  %i.eq = load i64, ptr %i.ag, align 8
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #30
  br label %_ZN6Assimp7Collada20SemanticMappingTableD2Ev.exit

_ZN6Assimp7Collada20SemanticMappingTableD2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada21InputSemanticMapEntryESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  %i.es = load ptr, ptr %15, align 8              ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.ae
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp7Collada20SemanticMappingTableD2Ev.exit
  %i.eu = load i64, ptr %i.ae, align 8
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp7Collada20SemanticMappingTableD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %.pre = load ptr, ptr %14, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread94

bb.au:                                            ; preds = %.noexc64, %bb.as, %.critedge.i, %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit62
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp7Collada20SemanticMappingTableD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.ew, %bb.au ], [ %i.do, %bb.ao ]
  %i.ex = load ptr, ptr %15, align 8              ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.ae
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.av
  %i.ez = load i64, ptr %i.ae, align 8
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %i.fb = load ptr, ptr %14, align 8              ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.ac
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %i.fd = load i64, ptr %i.ac, align 8
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.ax

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread94: ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48
  %i.ff = phi ptr [ %.pre155, %bb.ai ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pre155, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48 ] ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.ac
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread94
  %i.fh = load i64, ptr %i.ac, align 8
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.fj = invoke ptr @_ZNK4pugi8xml_node12next_siblingEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %.preheader unwind label %bb.aw, !llvm.loop !168

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit95, %.loopexit.split-lp96, %.loopexit, %.loopexit.split-lp, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %bb.aw
  %.pn26 = phi { ptr, i32 } [ %i.fk, %bb.aw ], [ %i.dn, %bb.an ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit97, %.loopexit95 ], [ %lpad.loopexit.split-lp98, %.loopexit.split-lp96 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.az

bb.ay:                                            ; preds = %bb.z, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %.pre156 = load ptr, ptr %11, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread93

bb.az:                                            ; preds = %bb.ax, %bb.ab
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %bb.ax ], [ %i.by, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.fl = load ptr, ptr %11, align 8              ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.aa
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.az
  %i.fn = load i64, ptr %i.aa, align 8
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fo) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.bb

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread93: ; preds = %bb.u, %bb.ay, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.fp = phi ptr [ %.pre157, %bb.u ], [ %.pre156, %bb.ay ], [ %.pre157, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ] ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.aa
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread93
  %i.fr = load i64, ptr %i.aa, align 8
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fs) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.ft = invoke ptr @_ZNK4pugi8xml_node12next_siblingEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.i unwind label %bb.ba, !llvm.loop !169

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.bb:                                            ; preds = %.loopexit106, %.loopexit.split-lp107, %.loopexit101, %.loopexit.split-lp102, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %bb.ba
  %.pn26.pn.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.aa ], [ %i.fu, %bb.ba ], [ %.pn26.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ %lpad.loopexit.split-lp104, %.loopexit.split-lp102 ], [ %lpad.loopexit103, %.loopexit101 ], [ %lpad.loopexit108, %.loopexit106 ], [ %lpad.loopexit.split-lp109, %.loopexit.split-lp107 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.bd

_ZNSt6vectorIN6Assimp7Collada12MeshInstanceESaIS2_EE9push_backERKS2_.exit: ; preds = %.noexc38, %bb.m
  %i.fv = load ptr, ptr %i.s, align 8
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6Assimp7Collada20SemanticMappingTableEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef %i.fv)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada20SemanticMappingTableESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i unwind label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIN6Assimp7Collada12MeshInstanceESaIS2_EE9push_backERKS2_.exit
  %i.fw = landingpad { ptr, i32 }
          catch ptr null
  %i.fx = extractvalue { ptr, i32 } %i.fw, 0
  call void @__clang_call_terminate(ptr %i.fx) #33
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada20SemanticMappingTableESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN6Assimp7Collada12MeshInstanceESaIS2_EE9push_backERKS2_.exit
  %i.fy = load ptr, ptr %9, align 8               ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.p
  br i1 %i.fz, label %_ZN6Assimp7Collada12MeshInstanceD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada20SemanticMappingTableESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i
  %i.ga = load i64, ptr %i.p, align 8
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #30
  br label %_ZN6Assimp7Collada12MeshInstanceD2Ev.exit

_ZN6Assimp7Collada12MeshInstanceD2Ev.exit:        ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada20SemanticMappingTableESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.gc = load ptr, ptr %8, align 8               ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.c
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %_ZN6Assimp7Collada12MeshInstanceD2Ev.exit
  %i.ge = load i64, ptr %i.c, align 8
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %_ZN6Assimp7Collada12MeshInstanceD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  ret void

bb.bd:                                            ; preds = %bb.bb, %bb.n
  %.pn26.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn.pn, %bb.bb ], [ %i.aw, %bb.n ]
  call void @_ZN6Assimp7Collada12MeshInstanceD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.g, %bb.f
  %.pn32 = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.o, %bb.g ], [ %.pn26.pn.pn.pn.pn, %bb.bd ]
  %i.gg = load ptr, ptr %8, align 8               ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.c
  br i1 %i.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.be
  %i.gi = load i64, ptr %i.c, align 8
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  resume { ptr, i32 } %.pn32

bb.bf:                                            ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN6Assimp7Collada13LightInstanceESaIS2_EE12emplace_backIJEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.f, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.g, align 8
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  store ptr %i.i, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN6Assimp7Collada13LightInstanceESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi ptr [ %.pre, %bb.c ], [ %i.i, %bb.b ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -32
  ret ptr %i.k
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN6Assimp7Collada14CameraInstanceESaIS2_EE12emplace_backIJEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.f, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.g, align 8
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  store ptr %i.i, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN6Assimp7Collada14CameraInstanceESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi ptr [ %.pre, %bb.c ], [ %i.i, %bb.b ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -32
  ret ptr %i.k
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp13ColladaParser30ReadMaterialVertexInputBindingERN4pugi8xml_nodeERNS_7Collada20SemanticMappingTableE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(80) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %4 = alloca %"class.pugi::xml_attribute", align 8 ; 4 uses
  %5 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %6 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %7 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %8 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %9 = alloca %"class.pugi::xml_attribute", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.pugi::xml_object_range", align 16 ; 6 uses
  %12 = alloca %"class.pugi::xml_node_iterator", align 16 ; 7 uses
  %13 = alloca %"class.pugi::xml_node_iterator", align 16 ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.c = tail call noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.d, ptr %10, align 8
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.290) #29
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.f, ptr %i.b, align 8
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %10, align 8
  %i.i = load i64, ptr %i.b, align 8
  store i64 %i.i, ptr %i.d, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.d, %bb.b ] ; 2 uses
  switch i64 %i.f, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.c, align 1
  store i8 %i.k, ptr %i.j, align 1
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %i.c, i64 %i.f, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.l = load i64, ptr %i.b, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.l, ptr %i.m, align 8
  %i.n = load ptr, ptr %10, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  invoke void @_ZNK4pugi8xml_node8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.pugi::xml_object_range") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.f unwind label %bb.j

end_hunk_0
