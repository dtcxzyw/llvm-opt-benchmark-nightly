inline.NumInlined: 2079
inline.NumDeleted: 821
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6Assimp3IFC21ProcessSweptDiskSolidERKNS0_10Schema_2x317IfcSweptDiskSolidERNS0_8TempMeshERNS0_14ConversionDataE:bb.a
.loopexit.split-lp387:                            ; preds = %.split507.us
  %lpad.loopexit.split-lp389 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit: ; preds = %.noexc185, %.noexc188, %.noexc181, %.noexc178
  %.sroa.22.3 = phi ptr [ %.sroa.22.6, %.noexc181 ], [ %.sroa.22.6, %.noexc178 ], [ %.sroa.22.1.lcssa596, %.noexc188 ], [ %.sroa.22.1.lcssa596, %.noexc185 ]
  %.sroa.0353.3 = phi ptr [ %.sroa.16.2, %.noexc181 ], [ %.sroa.16.2, %.noexc178 ], [ %.sroa.0353.1.lcssa598, %.noexc188 ], [ %.sroa.0353.1.lcssa598, %.noexc185 ] ; 3 uses
  %.not.i.i.i252 = icmp eq ptr %.sroa.0353.3, null
  br i1 %.not.i.i.i252, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit
  %i.po = ptrtoint ptr %.sroa.22.3 to i64
  %i.pp = ptrtoint ptr %.sroa.0353.3 to i64
  %i.pq = sub i64 %i.po, %i.pp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0353.3, i64 noundef %i.pq) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit:    ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit, %bb.av
  %i.pr = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ps = load ptr, ptr %i.pr, align 8            ; 3 uses
  %.not.i.i.i.i253 = icmp eq ptr %i.ps, null
  br i1 %.not.i.i.i.i253, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit
  %i.pt = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.pu = load ptr, ptr %i.pt, align 8
  %i.pv = ptrtoint ptr %i.pu to i64
  %i.pw = ptrtoint ptr %i.ps to i64
  %i.px = sub i64 %i.pv, %i.pw
  call void @_ZdlPvm(ptr noundef nonnull %i.ps, i64 noundef %i.px) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %bb.aw, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit
  %i.py = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.py, null
  br i1 %.not.i.i.i1.i, label %_ZN6Assimp3IFC8TempMeshD2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  %i.pz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.qa = load ptr, ptr %i.pz, align 8
  %i.qb = ptrtoint ptr %i.qa to i64
  %i.qc = ptrtoint ptr %i.py to i64
  %i.qd = sub i64 %i.qb, %i.qc
  call void @_ZdlPvm(ptr noundef nonnull %i.py, i64 noundef %i.qd) #29
  br label %_ZN6Assimp3IFC8TempMeshD2Ev.exit

_ZN6Assimp3IFC8TempMeshD2Ev.exit:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA54_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA54_KcEEEvDpOT_.exit: ; preds = %bb.c, %bb.b, %_ZN6Assimp3IFC8TempMeshD2Ev.exit
  ret void

bb.ay:                                            ; preds = %.noexc187, %.noexc186, %bb.au, %._crit_edge497
  %i.qe = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %.loopexit392, %.loopexit.split-lp393, %bb.ay, %bb.q
  %.sroa.22.5 = phi ptr [ %.sroa.22.0, %bb.q ], [ %.sroa.22.1.lcssa596, %bb.ay ], [ %.sroa.16.1453, %.loopexit392 ], [ %.sroa.16.1453, %.loopexit.split-lp393 ]
  %.sroa.0353.5 = phi ptr [ %.sroa.0353.0, %bb.q ], [ %.sroa.0353.1.lcssa598, %bb.ay ], [ %.sroa.0353.2454, %.loopexit392 ], [ %.sroa.0353.2454, %.loopexit.split-lp393 ] ; 2 uses
  %.pn158 = phi { ptr, i32 } [ %i.ch, %bb.q ], [ %i.qe, %bb.ay ], [ %lpad.loopexit394, %.loopexit392 ], [ %lpad.loopexit.split-lp395, %.loopexit.split-lp393 ] ; 2 uses
  %.not.i.i.i254 = icmp eq ptr %.sroa.0353.5, null
  br i1 %.not.i.i.i254, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit255, label %.thread

.thread:                                          ; preds = %.loopexit386.split.us, %.loopexit.split-lp387, %.loopexit.split.us, %.loopexit.split-lp, %bb.az
  %.pn158374 = phi { ptr, i32 } [ %.pn158, %bb.az ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit388.us, %.loopexit386.split.us ], [ %lpad.loopexit.split-lp389, %.loopexit.split-lp387 ]
  %.sroa.0353.5373 = phi ptr [ %.sroa.0353.5, %bb.az ], [ %.sroa.0353.1.lcssa597, %.loopexit.split-lp ], [ %.sroa.0353.1.lcssa597, %.loopexit.split.us ], [ %.sroa.0353.1.lcssa597, %.loopexit386.split.us ], [ %.sroa.0353.1.lcssa597, %.loopexit.split-lp387 ] ; 2 uses
  %.sroa.22.5372 = phi ptr [ %.sroa.22.5, %bb.az ], [ %.sroa.22.1.lcssa595, %.loopexit.split-lp ], [ %.sroa.22.1.lcssa595, %.loopexit.split.us ], [ %.sroa.22.1.lcssa595, %.loopexit386.split.us ], [ %.sroa.22.1.lcssa595, %.loopexit.split-lp387 ]
  %i.qf = ptrtoint ptr %.sroa.22.5372 to i64
  %i.qg = ptrtoint ptr %.sroa.0353.5373 to i64
  %i.qh = sub i64 %i.qf, %i.qg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0353.5373, i64 noundef %i.qh) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit255

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit255: ; preds = %.thread, %bb.az, %bb.p, %bb.o
  %.pn158.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.o ], [ %i.cg, %bb.p ], [ %.pn158, %bb.az ], [ %.pn158374, %.thread ]
  call void @_ZN6Assimp3IFC8TempMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn158.pn.pn
}

declare noundef ptr @_ZN6Assimp3IFC5Curve7ConvertERKNS0_10Schema_2x38IfcCurveERNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef nonnull align 8 dereferenceable(392)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(41) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x38IfcCurveEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.59", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.k unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #30
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.h, label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %.pre.i.i = load ptr, ptr %i.k, align 8
  br label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i

_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i:          ; preds = %bb.h, %bb.g
  %i.m = phi ptr [ %.pre.i.i, %bb.h ], [ %i.l, %bb.g ]
  %i.n = tail call ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x38IfcCurveE, i64 -1) #30 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x38IfcCurveEEERKT_v.exit

bb.i:                                             ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  tail call void @__cxa_bad_cast() #27
  unreachable

_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x38IfcCurveEEERKT_v.exit: ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  ret ptr %i.n

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.k:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp3IFC26DerivePlaneCoordinateSpaceERKNS0_8TempMeshERbR10aiVector3tIdE(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.aiMatrix3x3t) align 8 captures(none) initializes((0, 72)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #7 {
bb.a:
  store double 1.000000e+00, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.d, align 8
  store i8 1, ptr %2, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %1, align 8                ; 4 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 2 uses
  %i.l = add nsw i64 %i.k, -1                     ; 3 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.l ; 2 uses
  %.sroa.065.0.copyload = load double, ptr %i.m, align 8 ; 3 uses
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.n = load <2 x double>, ptr %.sroa.668.0..sroa_idx, align 8 ; 4 uses
  %i.o = add nsw i64 %i.k, -2                     ; 3 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.critedge, label %.lr.ph88.preheader

.lr.ph88.preheader:                               ; preds = %bb.a
  %i.q = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.r = insertelement <2 x double> %i.q, double %.sroa.065.0.copyload, i64 1
  br label %.lr.ph88

.lr.ph88:                                         ; preds = %.lr.ph88.backedge, %.lr.ph88.preheader
  %.02386 = phi i64 [ 0, %.lr.ph88.preheader ], [ %i.s, %.lr.ph88.backedge ] ; 3 uses
  %i.s = add nuw i64 %.02386, 1                   ; 5 uses
  %i.t = icmp ult i64 %i.s, %i.l
  br i1 %i.t, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.lr.ph88
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.02386 ; 2 uses
  %i.v = load double, ptr %i.u, align 8, !noalias !113
  %4 = fsub double %i.v, %.sroa.065.0.copyload    ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %6 = load <2 x double>, ptr %5, align 8, !noalias !113
  %7 = fsub <2 x double> %6, %i.n                 ; 3 uses
  %8 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %9 = insertelement <2 x double> %8, double %4, i64 1
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.w = add i64 %.073, 1                         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !116

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.073 = phi i64 [ %i.s, %.lr.ph ], [ %i.w, %bb.b ] ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.073 ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !noalias !117
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load <2 x double>, ptr %i.z, align 8, !noalias !117 ; 2 uses
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ac = insertelement <2 x double> %i.ab, double %i.y, i64 1
  %i.ad = fsub <2 x double> %i.ac, %i.r           ; 2 uses
  %i.ae = fsub <2 x double> %i.aa, %i.n           ; 2 uses
  %i.af = fneg <2 x double> %i.ae
  %i.ag = fmul <2 x double> %9, %i.af
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> %i.ad, <2 x double> %i.ag) ; 8 uses
  %i.ai = shufflevector <2 x double> %7, <2 x double> %i.ah, <2 x i32> <i32 0, i32 3>
  %i.aj = fneg <2 x double> %i.ad
  %i.ak = shufflevector <2 x double> %i.ah, <2 x double> %i.aj, <2 x i32> <i32 3, i32 1>
  %i.al = fmul <2 x double> %i.ai, %i.ak
  %10 = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %11 = insertelement <2 x double> %10, double %4, i64 0
  %i.am = shufflevector <2 x double> %i.ae, <2 x double> %i.ah, <2 x i32> <i32 0, i32 2>
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %11, <2 x double> %i.am, <2 x double> %i.al) ; 2 uses
  %i.ao = extractelement <2 x double> %i.an, i64 0 ; 5 uses
  %i.ap = extractelement <2 x double> %i.an, i64 1
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.ao, double %i.ap)
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.aq)
  %i.ar = tail call double @llvm.fabs.f64(double %sqrt.i)
  %i.as = fcmp ogt double %i.ar, f0x3E45798EE0000000
  br i1 %i.as, label %._crit_edge89.thread121, label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %.not139 = icmp ult i64 %i.s, %i.o
  br i1 %.not139, label %.lr.ph88.backedge, label %.critedge

.lr.ph88.backedge:                                ; preds = %._crit_edge, %._crit_edge.thread
  br label %.lr.ph88, !llvm.loop !120

._crit_edge.thread:                               ; preds = %.lr.ph88
  %.not = icmp ult i64 %i.s, %i.o
  br i1 %.not, label %.lr.ph88.backedge, label %.critedge

.critedge:                                        ; preds = %._crit_edge, %._crit_edge.thread, %bb.a
  store i8 0, ptr %2, align 1
  br label %bb.d

._crit_edge89.thread121:                          ; preds = %bb.c
  %i.at = fneg <2 x double> %i.ah                 ; 2 uses
  %i.au = fneg double %i.ao                       ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.ah, %i.ah
  %i.av = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.aw = extractelement <2 x double> %i.ah, i64 0 ; 2 uses
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.aw, double %i.av)
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.ao, double %i.ax) ; 2 uses
  %i.az = fcmp oeq double %i.ay, 0.000000e+00
  br i1 %i.az, label %_ZN10aiVector3tIdE9NormalizeEv.exit, label %_ZN10aiVector3tIdEdVEd.exit.i

_ZN10aiVector3tIdEdVEd.exit.i:                    ; preds = %._crit_edge89.thread121
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.ay)
  %i.ba = fdiv double 1.000000e+00, %sqrt.i.i     ; 2 uses
  %i.bb = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = fmul <2 x double> %i.bc, %i.at
  %i.be = fmul double %i.ba, %i.au
  br label %_ZN10aiVector3tIdE9NormalizeEv.exit

_ZN10aiVector3tIdE9NormalizeEv.exit:              ; preds = %._crit_edge89.thread121, %_ZN10aiVector3tIdEdVEd.exit.i
  %.sroa.16.3 = phi double [ %i.au, %._crit_edge89.thread121 ], [ %i.be, %_ZN10aiVector3tIdEdVEd.exit.i ] ; 3 uses
  %i.bf = phi <2 x double> [ %i.at, %._crit_edge89.thread121 ], [ %i.bd, %_ZN10aiVector3tIdEdVEd.exit.i ] ; 4 uses
  store <2 x double> %i.bf, ptr %3, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %.sroa.16.3, ptr %.sroa.16.0..sroa_idx, align 8
  %i.bg = load ptr, ptr %1, align 8
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %.02386 ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !noalias !121
  %i.bj = fsub double %i.bi, %.sroa.065.0.copyload ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = load <2 x double>, ptr %i.bk, align 8, !noalias !121
  %i.bm = fsub <2 x double> %i.bl, %i.n           ; 5 uses
  %foldExtExtBinop147 = fmul <2 x double> %i.bm, %i.bm
  %i.bn = extractelement <2 x double> %foldExtExtBinop147, i64 0
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.bj, double %i.bn)
  %i.bp = extractelement <2 x double> %i.bm, i64 1 ; 2 uses
  %i.bq = tail call noundef double @llvm.fmuladd.f64(double %i.bp, double %i.bp, double %i.bo) ; 2 uses
  %i.br = fcmp oeq double %i.bq, 0.000000e+00
  br i1 %i.br, label %_ZN10aiVector3tIdE9NormalizeEv.exit30, label %_ZN10aiVector3tIdEdVEd.exit.i28

_ZN10aiVector3tIdEdVEd.exit.i28:                  ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit
  %sqrt.i.i29 = tail call noundef double @llvm.sqrt.f64(double %i.bq)
  %i.bs = fdiv double 1.000000e+00, %sqrt.i.i29   ; 2 uses
  %i.bt = fmul double %i.bj, %i.bs
  %i.bu = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.bv = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = fmul <2 x double> %i.bm, %i.bv
  br label %_ZN10aiVector3tIdE9NormalizeEv.exit30

_ZN10aiVector3tIdE9NormalizeEv.exit30:            ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit, %_ZN10aiVector3tIdEdVEd.exit.i28
  %.sroa.037.0 = phi double [ %i.bj, %_ZN10aiVector3tIdE9NormalizeEv.exit ], [ %i.bt, %_ZN10aiVector3tIdEdVEd.exit.i28 ] ; 3 uses
  %i.bx = phi <2 x double> [ %i.bm, %_ZN10aiVector3tIdE9NormalizeEv.exit ], [ %i.bw, %_ZN10aiVector3tIdEdVEd.exit.i28 ] ; 4 uses
  %i.by = fneg <2 x double> %i.bf                 ; 3 uses
  %i.bz = fneg double %.sroa.16.3                 ; 2 uses
  %i.ca = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cb = insertelement <2 x double> %i.ca, double %.sroa.037.0, i64 1
  %i.cc = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cd = insertelement <2 x double> %i.cc, double %i.bz, i64 1
  %i.ce = fmul <2 x double> %i.cb, %i.cd
  %i.cf = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.cg = insertelement <2 x double> %i.cf, double %.sroa.16.3, i64 0
  %i.ch = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.cg, <2 x double> %i.ce) ; 6 uses
  %i.ci = shufflevector <2 x double> %i.bx, <2 x double> %i.ch, <2 x i32> <i32 0, i32 3>
  %i.cj = shufflevector <2 x double> %i.by, <2 x double> %i.ch, <2 x i32> <i32 0, i32 3>
  %i.ck = fmul <2 x double> %i.ci, %i.cj
  %i.cl = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.cm = insertelement <2 x double> %i.cl, double %.sroa.037.0, i64 0
  %i.cn = shufflevector <2 x double> %i.bf, <2 x double> %i.ch, <2 x i32> <i32 1, i32 2>
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cm, <2 x double> %i.cn, <2 x double> %i.ck) ; 2 uses
  %i.cp = extractelement <2 x double> %i.co, i64 0 ; 4 uses
  %i.cq = extractelement <2 x double> %i.co, i64 1
  %i.cr = tail call noundef double @llvm.fmuladd.f64(double %i.cp, double %i.cp, double %i.cq) ; 2 uses
  %i.cs = fcmp oeq double %i.cr, 0.000000e+00
  br i1 %i.cs, label %_ZN10aiVector3tIdE9NormalizeEv.exit33, label %_ZN10aiVector3tIdEdVEd.exit.i31

_ZN10aiVector3tIdEdVEd.exit.i31:                  ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit30
  %sqrt.i.i32 = tail call noundef double @llvm.sqrt.f64(double %i.cr)
  %i.ct = fdiv double 1.000000e+00, %sqrt.i.i32   ; 2 uses
  %i.cu = insertelement <2 x double> poison, double %i.ct, i64 0
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cw = fmul <2 x double> %i.ch, %i.cv
  %i.cx = fmul double %i.cp, %i.ct
  br label %_ZN10aiVector3tIdE9NormalizeEv.exit33

_ZN10aiVector3tIdE9NormalizeEv.exit33:            ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit30, %_ZN10aiVector3tIdEdVEd.exit.i31
  %.sroa.10.0 = phi double [ %i.cp, %_ZN10aiVector3tIdE9NormalizeEv.exit30 ], [ %i.cx, %_ZN10aiVector3tIdEdVEd.exit.i31 ]
  %i.cy = phi <2 x double> [ %i.ch, %_ZN10aiVector3tIdE9NormalizeEv.exit30 ], [ %i.cw, %_ZN10aiVector3tIdEdVEd.exit.i31 ]
  store double %.sroa.037.0, ptr %0, align 8
  store <2 x double> %i.bx, ptr %i.a, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x double> %i.cy, ptr %i.cz, align 8
  store double %.sroa.10.0, ptr %i.c, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x double> %i.by, ptr %i.da, align 8
  store double %i.bz, ptr %i.d, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit33, %.critedge
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3IFC8areCloseENS0_10Schema_2x317IfcCartesianPointES2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %.not = icmp eq i64 %i.h, %i.o
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not78 = icmp eq ptr %i.e, %i.d
  br i1 %.not78, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA49_KcEEEvDpOT_.exit, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.p, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA49_KcEEEvDpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.r = tail call noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
  store ptr %i.r, ptr %i.a, align 8
  call void @_ZN6Assimp6Logger4warnIJPKcRA49_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(49) @.str.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA49_KcEEEvDpOT_.exit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.sroa.04.010 = phi ptr [ %i.x, %.lr.ph ], [ %i.e, %.preheader ] ; 2 uses
  %.sroa.02.09 = phi ptr [ %i.y, %.lr.ph ], [ %i.l, %.preheader ] ; 2 uses
  %i.s = load double, ptr %.sroa.04.010, align 8
  %i.t = load double, ptr %.sroa.02.09, align 8
  %i.u = fsub double %i.s, %i.t
  %i.v = tail call double @llvm.fabs.f64(double %i.u)
  %i.w = fcmp ule double %i.v, f0x3EB0C6F7A0000000 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.010, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.02.09, i64 8
  %.not7 = icmp ne ptr %i.x, %i.d
  %or.cond.not = select i1 %i.w, i1 %.not7, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA49_KcEEEvDpOT_.exit, !llvm.loop !124

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA49_KcEEEvDpOT_.exit: ; preds = %.lr.ph, %.preheader, %bb.c, %bb.b
  %.1 = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ true, %.preheader ], [ %i.w, %.lr.ph ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3IFC8areCloseE10aiVector3tIdES2_(ptr nofree noundef readonly byval(%class.aiVector3t) align 8 captures(none) %0, ptr nofree noundef readonly byval(%class.aiVector3t) align 8 captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load double, ptr %0, align 8
  %i.b = load double, ptr %1, align 8
  %i.c = fsub double %i.a, %i.b
  %i.d = tail call double @llvm.fabs.f64(double %i.c)
  %i.e = fcmp olt double %i.d, f0x3EB0C6F7A0000000
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load double, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load double, ptr %i.h, align 8
  %i.j = fsub double %i.g, %i.i
  %i.k = tail call double @llvm.fabs.f64(double %i.j)
  %i.l = fcmp olt double %i.k, f0x3EB0C6F7A0000000
end_hunk_0
