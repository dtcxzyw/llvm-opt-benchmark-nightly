Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCGeometry?download=true
inline.NumInlined: 2077
inline.NumDeleted: 820
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6Assimp3IFC23ProcessConnectedFaceSetERKNS0_10Schema_2x319IfcConnectedFaceSetERNS0_8TempMeshERNS0_14ConversionDataE:bb.a

bb.aj:                                            ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.062.082, i64 8 ; 2 uses
  %.not70 = icmp eq ptr %i.cs, %i.p
  br i1 %.not70, label %._crit_edge, label %.lr.ph

bb.ak:                                            ; preds = %._crit_edge
  %i.ct = load ptr, ptr %i.i, align 8             ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cu = load ptr, ptr %i.j, align 8
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.ct to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cx) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %bb.al, %bb.ak
  %i.cy = load ptr, ptr %9, align 8               ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i1.i, label %_ZN6Assimp3IFC8TempMeshD2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  %i.cz = load ptr, ptr %i.k, align 8
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dc) #29
  br label %_ZN6Assimp3IFC8TempMeshD2Ev.exit

_ZN6Assimp3IFC8TempMeshD2Ev.exit:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.066.084, i64 8 ; 2 uses
  %.not69 = icmp eq ptr %i.dd, %i.f
  br i1 %.not69, label %._crit_edge87, label %bb.b

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.s, %bb.i, %bb.q, %._crit_edge, %.invoke
  %lpad.loopexit.split-lp131 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body50, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.g
  %.pn21.pn.pn = phi { ptr, i32 } [ %.pn10.i30, %bb.o ], [ %.pn, %.body50 ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn10.i, %bb.g ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i33 ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i34 ], [ %lpad.loopexit.split-lp131, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6Assimp3IFC8TempMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  resume { ptr, i32 } %.pn21.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x37IfcFaceEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.n = tail call ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x37IfcFaceE, i64 -1) #30 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x37IfcFaceEEERKT_v.exit

bb.i:                                             ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  tail call void @__cxa_bad_cast() #27
  unreachable

_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x37IfcFaceEEERKT_v.exit: ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  ret ptr %i.n

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.k:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.d, ptr %0, align 8
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #27
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.f, ptr %i.a, align 8
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8
  %i.i = load i64, ptr %i.a, align 8
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
  %i.l = load i64, ptr %i.a, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8
  %i.n = load ptr, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC24ProcessRevolvedAreaSolidERKNS0_10Schema_2x320IfcRevolvedAreaSolidERNS0_8TempMeshERNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(392) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"struct.Assimp::IFC::TempMesh", align 8 ; 16 uses
  %4 = alloca %class.aiVector3t, align 16         ; 7 uses
  %5 = alloca %class.aiVector3t, align 16         ; 7 uses
  %6 = alloca %class.aiMatrix4x4t, align 8        ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x313IfcProfileDefEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef zeroext i1 @_ZN6Assimp3IFC14ProcessProfileERKNS0_10Schema_2x313IfcProfileDefERNS0_8TempMeshERNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(392) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.d, label %bb.bi

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %3, align 8
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24
  %i.l = icmp ult i64 %i.k, 2
  br i1 %i.l, label %bb.bi, label %bb.f

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcAxis1PlacementEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6Assimp3IFC20ConvertAxisPlacementER10aiVector3tIdES3_RKNS0_10Schema_2x317IfcAxis1PlacementE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(88) %i.o)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = load <2 x double>, ptr %5, align 16      ; 6 uses
  %i.r = load double, ptr %i.p, align 16          ; 4 uses
  %i.s = extractelement <2 x double> %i.q, i64 0
  %i.t = fneg double %i.s                         ; 2 uses
  %i.u = extractelement <2 x double> %i.q, i64 1
  %i.v = fneg double %i.u                         ; 2 uses
  %i.w = fneg double %i.r                         ; 2 uses
  %i.x = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.y = load ptr, ptr %3, align 8                ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = sdiv exact i64 %i.ab, 24                ; 12 uses
  %i.ad = invoke noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x313IfcProfileDefEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = icmp eq i64 %i.af, 4
  br i1 %i.ag, label %bb.j, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = load i32, ptr %i.ai, align 1
  %i.ak = icmp ne i32 %i.aj, 1095062081
  %i.al = zext i1 %i.ak to i32
  %i.am = icmp eq i32 %i.al, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.j, %bb.i
  %i.an = phi i1 [ false, %bb.i ], [ %i.am, %bb.j ]
  %i.ao = icmp ugt i64 %i.ac, 2
  %i.ap = and i1 %i.ao, %i.an                     ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ar = load double, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = load double, ptr %i.as, align 8
  %i.au = fmul double %i.ar, %i.at                ; 2 uses
  %i.av = call double @llvm.fabs.f64(double %i.au) ; 3 uses
  %i.aw = fcmp olt double %i.av, 1.000000e-03
  br i1 %i.aw, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  br i1 %i.ap, label %bb.l, label %_ZN6Assimp3IFC8TempMeshaSERKS1_.exit

bb.l:                                             ; preds = %bb.k
  %i.ax = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI10aiVector3tIdESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc:                                           ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ba = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_ZN6Assimp3IFC8TempMeshaSERKS1_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.m:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !15, !align !16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = sitofp i32 %i.be to double
  %i.bg = fmul double %i.av, %i.bf
  %i.bh = fdiv double %i.bg, f0x3FF921FB60000000
  %i.bi = fptoui double %i.bh to i32
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %i.bi, i32 2) ; 4 uses
  %i.bj = uitofp i32 %.sroa.speculated to double
  %i.bk = fdiv double %i.au, %i.bj                ; 2 uses
  %i.bl = fcmp olt double %i.av, f0x4018E1A46199999A
  %i.bm = and i1 %i.ap, %i.bl                     ; 2 uses
  %i.bn = shl i32 %.sroa.speculated, 2
  %i.bo = add i32 %i.bn, 4
  %i.bp = select i1 %i.bm, i32 2, i32 0
  %i.bq = or disjoint i32 %i.bo, %i.bp
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = mul i64 %i.ac, %i.br                    ; 3 uses
  %i.bt = icmp ugt i64 %i.bs, 384307168202282325
  br i1 %i.bt, label %.invoke, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 22 uses
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = load ptr, ptr %1, align 8
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64               ; 2 uses
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = sdiv exact i64 %i.bz, 24
  %i.cb = icmp ult i64 %i.ca, %i.bs
  br i1 %i.cb, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ce, %i.by
  %i.cg = mul i64 %i.ab, %i.br
  %i.ch = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #28
          to label %.noexc119 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc119:                                        ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i
  %i.ci = load ptr, ptr %1, align 8               ; 5 uses
  %i.cj = load ptr, ptr %i.cc, align 8            ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ci, %i.cj
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc119, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i ], [ %i.ch, %.noexc119 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i ], [ %i.ci, %.noexc119 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i64 24, i1 false), !alias.scope !74
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.ck, %i.cj
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc119
  %.not.i8.i = icmp eq ptr %i.ci, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.cm = load ptr, ptr %i.bu, align 8
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.ci to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cp) #29
  br label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.o, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.ch, ptr %1, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cf
  store ptr %i.cq, ptr %i.cc, align 8
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %i.bs
  store ptr %i.cr, ptr %i.bu, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.n
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %i.ct = zext i32 %.sroa.speculated to i64
  %i.cu = mul i64 %i.ac, %i.ct
  %i.cv = add i64 %i.cu, 2                        ; 4 uses
  %i.cw = icmp ugt i64 %i.cv, 2305843009213693951
  br i1 %i.cw, label %.invoke, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 12 uses
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = load ptr, ptr %i.cs, align 8
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64               ; 2 uses
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = ashr exact i64 %i.dc, 2
  %i.de = icmp ult i64 %i.dd, %i.cv
  br i1 %i.de, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, label %bb.s

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.p
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = sub i64 %i.dh, %i.db
  %i.dj = shl nuw nsw i64 %i.cv, 2
  %i.dk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #28
          to label %.noexc122 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc122:                                        ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.dl = load ptr, ptr %i.cs, align 8            ; 4 uses
  %i.dm = load ptr, ptr %i.df, align 8
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dl to i64               ; 2 uses
  %i.dp = sub i64 %i.dn, %i.do                    ; 2 uses
  %i.dq = icmp sgt i64 %i.dp, 0
  br i1 %i.dq, label %bb.q, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.q:                                             ; preds = %.noexc122
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dk, ptr align 4 %i.dl, i64 %i.dp, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.q, %.noexc122
  %.not.i8.i120 = icmp eq ptr %i.dl, null
  br i1 %.not.i8.i120, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.dr = load ptr, ptr %i.cx, align 8
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = sub i64 %i.ds, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef %i.dt) #29
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.r, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  store ptr %i.dk, ptr %i.cs, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.di
  store ptr %i.du, ptr %i.df, align 8
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.cv
  store ptr %i.dv, ptr %i.cx, align 8
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, %bb.p
  %7 = call double @cos(double noundef %i.bk) #30 ; 3 uses
  %8 = call double @sin(double noundef %i.bk) #30 ; 3 uses
  %i.dw = fsub double 1.000000e+00, %7            ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dy = load double, ptr %i.dx, align 16        ; 6 uses
  %i.dz = fmul double %8, %i.dy                   ; 2 uses
  %i.ea = fneg double %i.dz
  %i.eb = fadd <2 x double> %i.q, zeroinitializer ; 4 uses
  %i.ec = fadd double %i.r, 0.000000e+00          ; 4 uses
  %i.ed = load <2 x double>, ptr %4, align 16     ; 5 uses
  %i.ee = extractelement <2 x double> %i.ed, i64 1 ; 2 uses
  %i.ef = extractelement <2 x double> %i.ed, i64 0
  %i.eg = insertelement <2 x double> poison, double %7, i64 0 ; 2 uses
  %i.eh = insertelement <2 x double> %i.eg, double %i.ea, i64 1
  %i.ei = fmul double %8, %i.ee                   ; 2 uses
  %i.ej = fmul double %8, %i.ef                   ; 2 uses
  %i.ek = fneg double %i.ej
  %i.el = fneg double %i.ei
  %i.em = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.en = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eo = fmul <2 x double> %i.en, %i.ed          ; 4 uses
  %i.ep = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ep, <2 x double> %i.ed, <2 x double> %i.eh) ; 3 uses
  %i.er = extractelement <2 x double> %i.eo, i64 0 ; 2 uses
  %i.es = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.et = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eu = insertelement <2 x double> poison, double %i.el, i64 0
  %i.ev = insertelement <2 x double> %i.eu, double %i.ej, i64 1
  %i.ew = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eo, <2 x double> %i.et, <2 x double> %i.ev) ; 3 uses
  %i.ex = fmul double %i.dw, %i.dy
  %i.ey = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ez = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fa = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fb = shufflevector <2 x double> %i.ed, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fc = insertelement <2 x double> %i.fb, double %i.dy, i64 1
  %i.fd = insertelement <2 x double> %i.eg, double %i.ek, i64 1
  %i.fe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fa, <2 x double> %i.fc, <2 x double> %i.fd) ; 3 uses
  %i.ff = extractelement <2 x double> %i.fe, i64 0
  %i.fg = fmul double %i.ff, 0.000000e+00         ; 2 uses
  %i.fh = extractelement <2 x double> %i.eq, i64 1 ; 2 uses
  %i.fi = fadd double %i.fh, %i.fg
  %i.fj = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.fk = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fl = call double @llvm.fmuladd.f64(double %i.fh, double 0.000000e+00, double %i.fg)
  %i.fm = extractelement <2 x double> %i.ew, i64 1
  %i.fn = fadd double %i.fm, %i.fl
  %i.fo = call double @llvm.fmuladd.f64(double %i.r, double 0.000000e+00, double %i.fn) ; 3 uses
  %i.fp = insertelement <2 x double> poison, double %i.v, i64 0
  %i.fq = shufflevector <2 x double> %i.fp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fr = insertelement <2 x double> poison, double %i.t, i64 0
  %i.fs = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ft = insertelement <2 x double> poison, double %i.w, i64 0
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fv = fmul double %i.fo, 0.000000e+00         ; 2 uses
  %i.fw = call double @llvm.fmuladd.f64(double %i.er, double %i.ee, double %i.dz) ; 2 uses
  %i.fx = call double @llvm.fmuladd.f64(double %i.ex, double %i.dy, double %7) ; 2 uses
  %i.fy = shufflevector <2 x double> %i.fe, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fz = insertelement <2 x double> %i.fy, double %i.fw, i64 1
  %i.ga = fmul <2 x double> %i.fz, zeroinitializer ; 2 uses
  %i.gb = extractelement <2 x double> %i.eq, i64 0
  %i.gc = call double @llvm.fmuladd.f64(double %i.gb, double 0.000000e+00, double %i.fw)
  %i.gd = call double @llvm.fmuladd.f64(double %i.er, double %i.dy, double %i.ei) ; 2 uses
  %i.ge = insertelement <2 x double> %i.fk, double %i.gd, i64 0 ; 2 uses
  %i.gf = fadd <2 x double> %i.ge, %i.ga          ; 2 uses
  %i.gg = shufflevector <2 x double> %i.gf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gh = insertelement <2 x double> %i.gg, double %i.gc, i64 1
  %i.gi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> zeroinitializer, <2 x double> %i.gh)
  %i.gj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> zeroinitializer, <2 x double> %i.gi) ; 4 uses
  %i.gk = insertelement <2 x double> %i.fk, double %i.gd, i64 1
  %i.gl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gk, <2 x double> zeroinitializer, <2 x double> %i.fe) ; 2 uses
  %i.gm = shufflevector <2 x double> %i.fj, <2 x double> %i.gl, <2 x i32> <i32 0, i32 2>
  %i.gn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ez, <2 x double> zeroinitializer, <2 x double> %i.gm)
  %i.go = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> zeroinitializer, <2 x double> %i.gn) ; 3 uses
  %i.gp = insertelement <2 x double> poison, double %i.fx, i64 0
  %i.gq = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gr = shufflevector <2 x double> %i.gf, <2 x double> %i.gl, <2 x i32> <i32 0, i32 3>
  %i.gs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gq, <2 x double> zeroinitializer, <2 x double> %i.gr)
  %i.gt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> zeroinitializer, <2 x double> %i.gs) ; 4 uses
  %i.gu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ge, <2 x double> zeroinitializer, <2 x double> %i.ga)
  %i.gv = insertelement <2 x double> %i.ey, double %i.fx, i64 0
  %i.gw = fadd <2 x double> %i.gv, %i.gu
  %i.gx = insertelement <2 x double> poison, double %i.r, i64 0
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gy, <2 x double> zeroinitializer, <2 x double> %i.gw) ; 6 uses
  %i.ha = fmul <2 x double> %i.go, zeroinitializer ; 2 uses
  %i.hb = fadd <2 x double> %i.gj, %i.ha
  %i.hc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> zeroinitializer, <2 x double> %i.hb)
  %i.hd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gj, <2 x double> zeroinitializer, <2 x double> %i.go)
  %i.he = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> zeroinitializer, <2 x double> %i.hd)
  %i.hf = fmul <2 x double> %i.go, %i.fq
  %i.hg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fs, <2 x double> %i.gj, <2 x double> %i.hf)
  %i.hh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fu, <2 x double> %i.gt, <2 x double> %i.hg)
  %i.hi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> zeroinitializer, <2 x double> %i.hc) ; 2 uses
  %i.hj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> zeroinitializer, <2 x double> %i.he) ; 2 uses
  %i.hk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gj, <2 x double> zeroinitializer, <2 x double> %i.ha)
  %i.hl = fadd <2 x double> %i.gt, %i.hk
  %i.hm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> zeroinitializer, <2 x double> %i.hl) ; 2 uses
  %i.hn = fadd <2 x double> %i.eb, %i.hh          ; 2 uses
  %i.ho = extractelement <2 x double> %i.gz, i64 1 ; 2 uses
  %i.hp = fadd double %i.ho, %i.fv
  %i.hq = insertelement <2 x double> poison, double %i.hp, i64 0
  %i.hr = insertelement <2 x double> %i.hq, double %i.fo, i64 1
  %i.hs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gz, <2 x double> zeroinitializer, <2 x double> %i.hr)
  %i.ht = extractelement <2 x double> %i.gz, i64 0
  %i.hu = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.hv = insertelement <2 x double> %i.hu, double %i.ec, i64 0
  %i.hw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> zeroinitializer, <2 x double> %i.hs) ; 2 uses
  %i.hx = insertelement <2 x double> %i.gz, double %i.ec, i64 0
  %i.hy = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.hz = insertelement <2 x double> %i.hy, double %i.fv, i64 1
  %i.ia = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hx, <2 x double> zeroinitializer, <2 x double> %i.hz) ; 3 uses
  %shift = shufflevector <2 x double> %i.ia, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.gz, %shift
  %i.ib = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ic = call double @llvm.fmuladd.f64(double %i.ec, double 0.000000e+00, double %i.ib) ; 2 uses
  %i.id = fmul double %i.fo, %i.v
  %i.ie = call double @llvm.fmuladd.f64(double %i.t, double %i.ho, double %i.id)
  %i.if = call double @llvm.fmuladd.f64(double %i.w, double %i.ht, double %i.ie)
  %i.ig = fadd double %i.ec, %i.if                ; 2 uses
  %.not423 = icmp eq ptr %i.x, %i.y
  br i1 %.not423, label %.preheader390.thread, label %.lr.ph

.preheader390.thread:                             ; preds = %bb.s
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit

.lr.ph:                                           ; preds = %bb.s
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.aj

.preheader390:                                    ; preds = %bb.ak
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 18 uses
  %i.im = shl nsw i64 %i.ac, 2
  %i.in = extractelement <2 x double> %i.hw, i64 0 ; 2 uses
  br label %.preheader387.us

.preheader387.us:                                 ; preds = %.preheader390, %._crit_edge.us
  %.084409.us = phi i32 [ %i.on, %._crit_edge.us ], [ 0, %.preheader390 ]
  %.096408.us = phi i64 [ %i.om, %._crit_edge.us ], [ 0, %.preheader390 ] ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %.preheader387.us, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit170.us
  %.083406.us = phi i64 [ 0, %.preheader387.us ], [ %i.io, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit170.us ] ; 2 uses
  %i.io = add nuw i64 %.083406.us, 1              ; 3 uses
  %i.ip = load ptr, ptr %i.ik, align 8            ; 3 uses
  %i.iq = load ptr, ptr %i.cx, align 8
  %.not.i.i127.us = icmp eq ptr %i.ip, %i.iq
  br i1 %.not.i.i127.us, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 4, ptr %i.ip, align 4
  %i.ir = load ptr, ptr %i.ik, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  store ptr %i.is, ptr %i.ik, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us

bb.v:                                             ; preds = %bb.t
  %i.it = load ptr, ptr %i.cs, align 8            ; 4 uses
  %i.iu = ptrtoint ptr %i.ip to i64
  %i.iv = ptrtoint ptr %i.it to i64               ; 2 uses
  %i.iw = sub i64 %i.iu, %i.iv                    ; 5 uses
  %i.ix = icmp eq i64 %i.iw, 9223372036854775804
  br i1 %i.ix, label %.invoke, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us: ; preds = %bb.v
  %i.iy = ashr exact i64 %i.iw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.us = call i64 @llvm.umax.i64(i64 %i.iy, i64 1)
  %i.iz = add nsw i64 %.sroa.speculated.i.i.i.i.us, %i.iy ; 2 uses
  %i.ja = icmp ult i64 %i.iz, %i.iy
  %i.jb = call i64 @llvm.umin.i64(i64 %i.iz, i64 2305843009213693951)
  %i.jc = select i1 %i.ja, i64 2305843009213693951, i64 %i.jb ; 3 uses
  %.not.i.i.i.i128.us = icmp ne i64 %i.jc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i128.us)
  %i.jd = shl nuw nsw i64 %i.jc, 2
  %i.je = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jd) #28
          to label %.noexc130.us unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc130.us:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us
  %i.jf = getelementptr inbounds i8, ptr %i.je, i64 %i.iw ; 2 uses
  store i32 4, ptr %i.jf, align 4
  %i.jg = icmp sgt i64 %i.iw, 0
  br i1 %i.jg, label %bb.w, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us

bb.w:                                             ; preds = %.noexc130.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.je, ptr align 4 %i.it, i64 %i.iw, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us: ; preds = %bb.w, %.noexc130.us
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  %.not.i17.i.i.i.us = icmp eq ptr %i.it, null
  br i1 %.not.i17.i.i.i.us, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us
  %i.ji = load ptr, ptr %i.cx, align 8
  %i.jj = ptrtoint ptr %i.ji to i64
  %i.jk = sub i64 %i.jj, %i.iv
  call void @_ZdlPvm(ptr noundef nonnull %i.it, i64 noundef %i.jk) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us: ; preds = %bb.x, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us
  store ptr %i.je, ptr %i.cs, align 8
  store ptr %i.jh, ptr %i.ik, align 8
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.jc
  store ptr %i.jl, ptr %i.cx, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us

_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us:        ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us, %bb.u
  %i.jm = urem i64 %i.io, %i.ac
  %i.jn = load ptr, ptr %1, align 8               ; 5 uses
  %i.jo = getelementptr [24 x i8], ptr %i.jn, i64 %.096408.us ; 2 uses
  %.idx382.us = mul i64 %.083406.us, 96
  %i.jp = getelementptr i8, ptr %i.jo, i64 %.idx382.us ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 72
  %.sroa.8269.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.jp, i64 88
  %i.jr = load <2 x double>, ptr %i.jq, align 8   ; 6 uses
  %.sroa.8269.0.copyload.us = load double, ptr %.sroa.8269.0..sroa_idx.us, align 8 ; 4 uses
  %.idx383.us = mul i64 %i.jm, 96
  %i.js = getelementptr i8, ptr %i.jo, i64 %.idx383.us ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 72
  %.sroa.8.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.js, i64 88
  %i.ju = load <2 x double>, ptr %i.jt, align 8   ; 6 uses
  %.sroa.8.0.copyload.us = load double, ptr %.sroa.8.0..sroa_idx.us, align 8 ; 4 uses
  %i.jv = load ptr, ptr %i.il, align 8            ; 6 uses
  %i.jw = load ptr, ptr %i.bu, align 8
  %.not.i.us = icmp eq ptr %i.jv, %i.jw
  br i1 %.not.i.us, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us
  store <2 x double> %i.jr, ptr %i.jv, align 8
  %.sroa.8269.0..sroa_idx270.us = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  store double %.sroa.8269.0.copyload.us, ptr %.sroa.8269.0..sroa_idx270.us, align 8
  %i.jx = load ptr, ptr %i.il, align 8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 24 ; 2 uses
  store ptr %i.jy, ptr %i.il, align 8
  %.pre = load ptr, ptr %i.bu, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit.us

bb.z:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us
  %i.jz = ptrtoint ptr %i.jv to i64
  %i.ka = ptrtoint ptr %i.jn to i64               ; 2 uses
  %i.kb = sub i64 %i.jz, %i.ka                    ; 3 uses
  %i.kc = icmp eq i64 %i.kb, 9223372036854775800
  br i1 %i.kc, label %.invoke, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.us

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.us: ; preds = %bb.z
  %i.kd = sdiv exact i64 %i.kb, 24                ; 3 uses
  %.sroa.speculated.i.i.i.us = call i64 @llvm.umax.i64(i64 %i.kd, i64 1)
  %i.ke = add nsw i64 %.sroa.speculated.i.i.i.us, %i.kd ; 2 uses
  %i.kf = icmp ult i64 %i.ke, %i.kd
  %i.kg = call i64 @llvm.umin.i64(i64 %i.ke, i64 384307168202282325)
  %i.kh = select i1 %i.kf, i64 384307168202282325, i64 %i.kg ; 3 uses
  %.not.i.i.i131.us = icmp ne i64 %i.kh, 0
  call void @llvm.assume(i1 %.not.i.i.i131.us)
  %i.ki = mul nuw nsw i64 %i.kh, 24
end_hunk_0
begin_hunk_1_@_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcAxis1PlacementEEcvRKS4_Ev:bb.a

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.k:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x313IfcProfileDefEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.n = tail call ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x313IfcProfileDefE, i64 -1) #30 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x313IfcProfileDefEEERKT_v.exit

bb.i:                                             ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  tail call void @__cxa_bad_cast() #27
  unreachable

_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x313IfcProfileDefEEERKT_v.exit: ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  ret ptr %i.n

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.k:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

declare void @_ZN6Assimp3IFC20ConvertAxisPlacementER12aiMatrix4x4tIdERKNS0_10Schema_2x319IfcAxis2Placement3DE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcAxis2Placement3DEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.n = tail call ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x319IfcAxis2Placement3DE, i64 -1) #30 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x319IfcAxis2Placement3DEEERKT_v.exit

bb.i:                                             ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  tail call void @__cxa_bad_cast() #27
  unreachable

_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x319IfcAxis2Placement3DEEERKT_v.exit: ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  ret ptr %i.n

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.k:                                             ; preds = %bb.d
  unreachable
}

declare void @_ZN6Assimp3IFC8TempMesh9TransformERK12aiMatrix4x4tIdE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC21ProcessSweptDiskSolidERKNS0_10Schema_2x317IfcSweptDiskSolidERNS0_8TempMeshERNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(392) %2) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"struct.Assimp::IFC::TempMesh", align 8 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = tail call noundef nonnull align 8 dereferenceable(41) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x38IfcCurveEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.f = tail call noundef ptr @_ZN6Assimp3IFC5Curve7ConvertERKNS0_10Schema_2x38IfcCurveERNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(41) %i.e, ptr noundef nonnull align 8 dereferenceable(392) %2) ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.g, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA54_KcEEEvDpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.i = tail call noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
  store ptr %i.i, ptr %i.c, align 8
  call void @_ZN6Assimp6Logger5errorIJPKcRA54_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(54) @.str.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA54_KcEEEvDpOT_.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !15, !align !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 4              ; 8 uses
  %i.n = uitofp i32 %i.m to double
  %i.o = fdiv double f0x401921FB54442D18, %i.n    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = load double, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = load double, ptr %i.r, align 8
  %i.t = load ptr, ptr %i.f, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %3, double noundef %i.q, double noundef %i.s)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = load ptr, ptr %3, align 8                ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = sdiv exact i64 %i.ab, 24                ; 4 uses
  %i.ad = zext i32 %i.m to i64                    ; 6 uses
  %i.ae = mul i64 %i.ac, %i.ad                    ; 5 uses
  %i.af = shl i64 %i.ae, 2                        ; 3 uses
  %i.ag = icmp ugt i64 %i.af, 384307168202282325
  br i1 %i.ag, label %.invoke, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 15 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = load ptr, ptr %1, align 8
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.am = sub i64 %i.ak, %i.al
  %i.an = sdiv exact i64 %i.am, 24
  %i.ao = icmp ult i64 %i.an, %i.af
  br i1 %i.ao, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.al
  %i.at = mul i64 %i.ae, 96
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #28
          to label %.noexc162 unwind label %bb.o  ; 4 uses

.noexc162:                                        ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i
  %i.av = load ptr, ptr %1, align 8               ; 5 uses
  %i.aw = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.av, %i.aw
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc162, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i ], [ %i.au, %.noexc162 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i ], [ %i.av, %.noexc162 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i64 24, i1 false), !alias.scope !110
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.ax, %i.aw
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc162
  %.not.i8.i = icmp eq ptr %i.av, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.az = load ptr, ptr %i.ah, align 8
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.av to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bc) #29
  br label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.g, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.au, ptr %1, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as
  store ptr %i.bd, ptr %i.ap, align 8
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %i.af
  store ptr %i.be, ptr %i.ah, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.bg = add i32 %i.m, -1
  %i.bh = zext i32 %i.bg to i64
  %i.bi = mul i64 %i.ac, %i.bh                    ; 4 uses
  %i.bj = icmp ugt i64 %i.bi, 2305843009213693951
  br i1 %i.bj, label %.invoke, label %bb.h

.invoke:                                          ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit, %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #27
          to label %.cont unwind label %bb.o

.cont:                                            ; preds = %.invoke
  unreachable

bb.h:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = load ptr, ptr %i.bf, align 8
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 2
  %i.br = icmp ult i64 %i.bq, %i.bi
  br i1 %i.br, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.bo
  %i.bw = shl nuw nsw i64 %i.bi, 2
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #28
          to label %.noexc165 unwind label %bb.o  ; 4 uses

.noexc165:                                        ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.by = load ptr, ptr %i.bf, align 8            ; 4 uses
  %i.bz = load ptr, ptr %i.bs, align 8
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.by to i64               ; 2 uses
  %i.cc = sub i64 %i.ca, %i.cb                    ; 2 uses
  %i.cd = icmp sgt i64 %i.cc, 0
  br i1 %i.cd, label %bb.i, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.i:                                             ; preds = %.noexc165
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bx, ptr align 4 %i.by, i64 %i.cc, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.i, %.noexc165
  %.not.i8.i163 = icmp eq ptr %i.by, null
  br i1 %.not.i8.i163, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.ce = load ptr, ptr %i.bk, align 8
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = sub i64 %i.cf, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cg) #29
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.j, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  store ptr %i.bx, ptr %i.bf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bv
  store ptr %i.ch, ptr %i.bs, align 8
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.bi
  store ptr %i.ci, ptr %i.bk, align 8
  br label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt6vectorIjSaIjEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, %bb.h
  %i.cj = icmp ugt i64 %i.ae, 384307168202282325
  br i1 %i.cj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #27
          to label %.noexc175 unwind label %bb.p

.noexc175:                                        ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %.not384 = icmp eq i64 %i.ae, 0
  br i1 %.not384, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit177, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i166

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i166: ; preds = %bb.l
  %i.ck = mul i64 %i.ab, %i.ad
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #28
          to label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i174 unwind label %bb.p ; 2 uses

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i174: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i166
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %i.ae
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit177

_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit177: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i174, %bb.l
  %.sroa.24.6 = phi ptr [ %i.cm, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i174 ], [ null, %bb.l ] ; 8 uses
  %.sroa.17.2 = phi ptr [ %i.cl, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i174 ], [ null, %bb.l ] ; 9 uses
  %i.cn = load ptr, ptr %3, align 8               ; 3 uses
  %i.co = load ptr, ptr %i.w, align 8
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %bb.m, label %bb.q

bb.m:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit177
  %i.cq = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc178 unwind label %bb.p

.noexc178:                                        ; preds = %bb.m
  br i1 %i.cq, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit, label %bb.n

bb.n:                                             ; preds = %.noexc178
  %i.cr = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc179 unwind label %bb.p

.noexc179:                                        ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.cs = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc180 unwind label %bb.p

.noexc180:                                        ; preds = %.noexc179
  store ptr %i.cs, ptr %i.b, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA55_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.cr, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(55) @.str.5)
          to label %.noexc181 unwind label %bb.p
end_hunk_1
begin_hunk_2_@_ZN6Assimp3IFC21ProcessSweptDiskSolidERKNS0_10Schema_2x317IfcSweptDiskSolidERNS0_8TempMeshERNS0_14ConversionDataE:bb.a
  %i.kd = icmp ult i64 %i.kc, %i.kb
  %i.ke = call i64 @llvm.umin.i64(i64 %i.kc, i64 2305843009213693951)
  %i.kf = select i1 %i.kd, i64 2305843009213693951, i64 %i.ke ; 3 uses
  %.not.i.i.i.i249.us = icmp ne i64 %i.kf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i249.us)
  %i.kg = shl nuw nsw i64 %i.kf, 2
  %i.kh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kg) #28
          to label %.noexc251.us unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc251.us:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us
  %i.ki = getelementptr inbounds i8, ptr %i.kh, i64 %i.jz ; 2 uses
  store i32 4, ptr %i.ki, align 4
  %i.kj = icmp sgt i64 %i.jz, 0
  br i1 %i.kj, label %bb.ak, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us

bb.ak:                                            ; preds = %.noexc251.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kh, ptr align 4 %i.jw, i64 %i.jz, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us: ; preds = %bb.ak, %.noexc251.us
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  %.not.i17.i.i.i.us = icmp eq ptr %i.jw, null
  br i1 %.not.i17.i.i.i.us, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us
  %i.kl = load ptr, ptr %i.bk, align 8
  %i.km = ptrtoint ptr %i.kl to i64
  %i.kn = sub i64 %i.km, %i.jy
  call void @_ZdlPvm(ptr noundef nonnull %i.jw, i64 noundef %i.kn) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us: ; preds = %bb.al, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us
  store ptr %i.kh, ptr %i.bf, align 8
  store ptr %i.kk, ptr %i.cz, align 8
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.kf
  store ptr %i.ko, ptr %i.bk, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us

_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us:        ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us, %bb.ai
  br i1 %.not585, label %._crit_edge489.us, label %bb.s, !llvm.loop !103

.lr.ph485.us:                                     ; preds = %.lr.ph491, %._crit_edge489.us
  %.0131490.us = phi i64 [ %i.kw, %._crit_edge489.us ], [ 0, %.lr.ph491 ] ; 3 uses
  %i.kp = mul i64 %.0131490.us, %i.ad
  %i.kq = getelementptr [24 x i8], ptr %.sroa.0353.1.lcssa593, i64 %i.kp ; 4 uses
  %i.kr = load <2 x double>, ptr %i.kq, align 8
  %i.ks = fptrunc <2 x double> %i.kr to <2 x float> ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.ku = load double, ptr %i.kt, align 8
  %i.kv = fptrunc double %i.ku to float
  %i.kw = add nuw i64 %.0131490.us, 1             ; 3 uses
  %i.kx = mul i64 %i.kw, %i.ad                    ; 2 uses
  %i.ky = getelementptr [24 x i8], ptr %.sroa.0353.1.lcssa593, i64 %i.kx
  br label %bb.r

._crit_edge489.us:                                ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.us
  %exitcond537.not = icmp eq i64 %i.kw, %.pre-phi545590
  br i1 %exitcond537.not, label %._crit_edge492, label %.lr.ph485.us, !llvm.loop !104

.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i232.us, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i216.us, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i200.us, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.us, %.split502.us.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.am:                                            ; preds = %.lr.ph478, %._crit_edge
  %.0135476 = phi i64 [ 0, %.lr.ph478 ], [ %i.or, %._crit_edge ] ; 3 uses
  %.0136475 = phi i32 [ 0, %.lr.ph478 ], [ %.1137, %._crit_edge ] ; 3 uses
  %.sroa.0353.1474 = phi ptr [ %.sroa.17.2, %.lr.ph478 ], [ %.sroa.0353.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.17.0473 = phi ptr [ %.sroa.17.2, %.lr.ph478 ], [ %.sroa.17.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.24.1472 = phi ptr [ %.sroa.24.6, %.lr.ph478 ], [ %.sroa.24.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.14351.0471 = phi double [ %.sroa.14351.0.copyload, %.lr.ph478 ], [ %.sroa.8333.1, %._crit_edge ] ; 3 uses
  %.sroa.9343.0468 = phi double [ %.sroa.14351.0.copyload, %.lr.ph478 ], [ %.sroa.14351.0471, %._crit_edge ] ; 2 uses
  %.sroa.12.0464 = phi double [ 1.000000e+00, %.lr.ph478 ], [ %i.nl, %._crit_edge ] ; 4 uses
  %.sroa.8.0461 = phi double [ 1.000000e+00, %.lr.ph478 ], [ %i.ot, %._crit_edge ] ; 4 uses
  %.sroa.0324.0457 = phi double [ 1.000000e+00, %.lr.ph478 ], [ %i.os, %._crit_edge ] ; 4 uses
  %.sroa.8333.0456 = phi double [ 0.000000e+00, %.lr.ph478 ], [ %.sroa.8333.1, %._crit_edge ]
  %i.kz = phi <2 x double> [ %i.cv, %.lr.ph478 ], [ %i.lg, %._crit_edge ] ; 3 uses
  %i.la = phi <2 x double> [ zeroinitializer, %.lr.ph478 ], [ %i.lg, %._crit_edge ]
  %i.lb = phi <2 x double> [ %i.cv, %.lr.ph478 ], [ %i.kz, %._crit_edge ] ; 2 uses
  %.not152 = icmp eq i64 %.0135476, %i.cw
  br i1 %.not152, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.lc = load ptr, ptr %3, align 8
  %i.ld = getelementptr inbounds nuw [24 x i8], ptr %i.lc, i64 %.0135476 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 24
  %i.lf = load <2 x double>, ptr %i.le, align 8
  %.sroa.8333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ld, i64 40
  %.sroa.8333.0.copyload = load double, ptr %.sroa.8333.0..sroa_idx, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %.sroa.8333.1 = phi double [ %.sroa.8333.0456, %bb.am ], [ %.sroa.8333.0.copyload, %bb.an ] ; 3 uses
  %i.lg = phi <2 x double> [ %i.la, %bb.am ], [ %i.lf, %bb.an ] ; 3 uses
  %i.lh = fsub <2 x double> %i.kz, %i.lb
  %i.li = fsub double %.sroa.14351.0471, %.sroa.9343.0468
  %i.lj = fsub <2 x double> %i.lg, %i.lb
  %i.lk = fsub double %.sroa.8333.1, %.sroa.9343.0468
  %i.ll = fadd <2 x double> %i.lh, %i.lj          ; 5 uses
  %i.lm = fadd double %i.li, %i.lk                ; 4 uses
  %foldExtExtBinop627 = fmul <2 x double> %i.ll, %i.ll
  %i.ln = extractelement <2 x double> %foldExtExtBinop627, i64 1
  %i.lo = extractelement <2 x double> %i.ll, i64 0 ; 2 uses
  %i.lp = call double @llvm.fmuladd.f64(double %i.lo, double %i.lo, double %i.ln)
  %i.lq = call noundef double @llvm.fmuladd.f64(double %i.lm, double %i.lm, double %i.lp) ; 2 uses
  %i.lr = fcmp oeq double %i.lq, 0.000000e+00
  br i1 %i.lr, label %_ZN10aiVector3tIdE9NormalizeEv.exit, label %_ZN10aiVector3tIdEdVEd.exit.i

_ZN10aiVector3tIdEdVEd.exit.i:                    ; preds = %bb.ao
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.lq)
  %i.ls = fdiv double 1.000000e+00, %sqrt.i.i     ; 2 uses
  %i.lt = insertelement <2 x double> poison, double %i.ls, i64 0
  %i.lu = shufflevector <2 x double> %i.lt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lv = fmul <2 x double> %i.ll, %i.lu
  %i.lw = fmul double %i.lm, %i.ls
  br label %_ZN10aiVector3tIdE9NormalizeEv.exit

_ZN10aiVector3tIdE9NormalizeEv.exit:              ; preds = %_ZN10aiVector3tIdEdVEd.exit.i, %bb.ao
  %.sroa.19.0 = phi double [ %i.lm, %bb.ao ], [ %i.lw, %_ZN10aiVector3tIdEdVEd.exit.i ]
  %i.lx = phi <2 x double> [ %i.ll, %bb.ao ], [ %i.lv, %_ZN10aiVector3tIdEdVEd.exit.i ]
  %.sroa.19.0.fr = freeze double %.sroa.19.0      ; 8 uses
  %i.ly = freeze <2 x double> %i.lx               ; 12 uses
  %i.lz = icmp eq i32 %.0136475, 1
  %i.ma = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ly)
  %i.mb = fcmp ogt <2 x double> %i.ma, splat (double f0x3EB0C6F7A0000000) ; 3 uses
  %i.mc = icmp ne i32 %.0136475, 2                ; 3 uses
  %i.md = call double @llvm.fabs.f64(double %.sroa.19.0.fr)
  %i.me = fcmp ule double %i.md, f0x3EB0C6F7A0000000 ; 3 uses
  %i.mf = extractelement <2 x i1> %i.mb, i64 0
  br i1 %i.mf, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.us

_ZN10aiVector3tIdE9NormalizeEv.exit.split.us:     ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit
  %brmerge606 = or i1 %i.mc, %i.me
  %i.mg = extractelement <2 x i1> %i.mb, i64 1
  %or.cond = and i1 %i.mg, %brmerge606
  br i1 %or.cond, label %.split.us.split, label %.split412.us

_ZN10aiVector3tIdE9NormalizeEv.exit.split:        ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit
  %i.mh = icmp eq i32 %.0136475, 0
  br i1 %i.mh, label %.split413, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split

_ZN10aiVector3tIdE9NormalizeEv.exit.split.split:  ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split
  %i.mi = extractelement <2 x i1> %i.mb, i64 1
  br i1 %i.mi, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.us

_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.us: ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split
  %brmerge609 = or i1 %i.mc, %i.me
  br i1 %brmerge609, label %.split413, label %.split412.us

_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split: ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split
  br i1 %i.lz, label %.split.us.split, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.split

_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.split: ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split
  %brmerge612 = or i1 %i.mc, %i.me
  br i1 %brmerge612, label %.split413, label %.split412.us

.split413:                                        ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.split, %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.us, %_ZN10aiVector3tIdE9NormalizeEv.exit.split
  %i.mj = fmul double %.sroa.12.0464, %.sroa.19.0.fr
  %i.mk = extractelement <2 x double> %i.ly, i64 1
  %i.ml = call double @llvm.fmuladd.f64(double %i.mk, double %.sroa.8.0461, double %i.mj)
  %i.mm = fneg double %i.ml
  %i.mn = extractelement <2 x double> %i.ly, i64 0
  %i.mo = fdiv double %i.mm, %i.mn
  br label %.loopexit391

.split.us.split:                                  ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.us, %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split
  %i.mp = fmul double %.sroa.12.0464, %.sroa.19.0.fr
  %i.mq = extractelement <2 x double> %i.ly, i64 0
  %i.mr = call double @llvm.fmuladd.f64(double %i.mq, double %.sroa.0324.0457, double %i.mp)
  %i.ms = fneg double %i.mr
  %i.mt = extractelement <2 x double> %i.ly, i64 1
  %i.mu = fdiv double %i.ms, %i.mt
  br label %.loopexit391

.split412.us:                                     ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.us, %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.split, %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.us
  %i.mv = extractelement <2 x double> %i.ly, i64 0
  %i.mw = fmul double %.sroa.0324.0457, %i.mv
  %i.mx = extractelement <2 x double> %i.ly, i64 1
  %i.my = call double @llvm.fmuladd.f64(double %i.mx, double %.sroa.8.0461, double %i.mw)
  %i.mz = fneg double %i.my
  %i.na = fdiv double %i.mz, %.sroa.19.0.fr
  br label %.loopexit391

.loopexit391:                                     ; preds = %.split412.us, %.split.us.split, %.split413
  %.sroa.0290.0 = phi double [ %i.mo, %.split413 ], [ %.sroa.0324.0457, %.split.us.split ], [ %.sroa.0324.0457, %.split412.us ] ; 3 uses
  %.sroa.14.0 = phi double [ %.sroa.8.0461, %.split413 ], [ %i.mu, %.split.us.split ], [ %.sroa.8.0461, %.split412.us ] ; 3 uses
  %.sroa.23297.0 = phi double [ %.sroa.12.0464, %.split413 ], [ %.sroa.12.0464, %.split.us.split ], [ %i.na, %.split412.us ] ; 3 uses
  %.1137 = phi i32 [ 0, %.split413 ], [ 1, %.split.us.split ], [ 2, %.split412.us ]
  %i.nb = load double, ptr %i.cx, align 8
  %i.nc = fmul double %.sroa.14.0, %.sroa.14.0
  %i.nd = call double @llvm.fmuladd.f64(double %.sroa.0290.0, double %.sroa.0290.0, double %i.nc)
  %i.ne = call noundef double @llvm.fmuladd.f64(double %.sroa.23297.0, double %.sroa.23297.0, double %i.nd)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.ne)
  %i.nf = fdiv double %i.nb, %sqrt.i              ; 2 uses
  %i.ng = insertelement <2 x double> poison, double %i.nf, i64 0
  %i.nh = shufflevector <2 x double> %i.ng, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ni = insertelement <2 x double> poison, double %.sroa.0290.0, i64 0
  %i.nj = insertelement <2 x double> %i.ni, double %.sroa.14.0, i64 1
  %i.nk = fmul <2 x double> %i.nj, %i.nh          ; 3 uses
  %i.nl = fmul double %.sroa.23297.0, %i.nf       ; 2 uses
  %4 = call double @cos(double noundef %i.o) #30  ; 4 uses
  %5 = call double @sin(double noundef %i.o) #30  ; 3 uses
  %i.nm = fsub double 1.000000e+00, %4            ; 2 uses
  %i.nn = fmul double %.sroa.19.0.fr, %5          ; 2 uses
  %i.no = fneg double %i.nn
  %i.np = extractelement <2 x double> %i.ly, i64 1
  %i.nq = fmul double %i.np, %5                   ; 2 uses
  %i.nr = insertelement <2 x double> poison, double %i.nm, i64 0
  %i.ns = shufflevector <2 x double> %i.nr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nt = fmul <2 x double> %i.ly, %i.ns          ; 4 uses
  %i.nu = shufflevector <2 x double> %i.nt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nv = insertelement <2 x double> poison, double %4, i64 0
  %i.nw = insertelement <2 x double> %i.nv, double %i.nn, i64 1
  %i.nx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nu, <2 x double> %i.ly, <2 x double> %i.nw)
  %i.ny = shufflevector <2 x double> %i.ly, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.nz = insertelement <2 x double> poison, double %i.no, i64 0
  %i.oa = insertelement <2 x double> %i.nz, double %4, i64 1
  %i.ob = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nt, <2 x double> %i.ny, <2 x double> %i.oa)
  %i.oc = extractelement <2 x double> %i.ly, i64 0
  %i.od = fmul double %i.oc, %5                   ; 2 uses
  %i.oe = fneg double %i.od
  %i.of = insertelement <2 x double> poison, double %.sroa.19.0.fr, i64 0
  %i.og = shufflevector <2 x double> %i.of, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.oh = insertelement <2 x double> poison, double %i.nq, i64 0
  %i.oi = insertelement <2 x double> %i.oh, double %i.oe, i64 1
  %i.oj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nt, <2 x double> %i.og, <2 x double> %i.oi)
  %i.ok = fneg double %i.nq
  %i.ol = insertelement <2 x double> poison, double %i.ok, i64 0
  %i.om = insertelement <2 x double> %i.ol, double %i.od, i64 1
  %i.on = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nt, <2 x double> %i.og, <2 x double> %i.om) ; 2 uses
  %i.oo = fmul double %.sroa.19.0.fr, %i.nm
  %i.op = call double @llvm.fmuladd.f64(double %i.oo, double %.sroa.19.0.fr, double %4)
  br i1 %.not504, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.loopexit391
  %i.oq = extractelement <2 x double> %i.on, i64 0
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit, %.loopexit391
  %.sroa.24.2.lcssa = phi ptr [ %.sroa.24.1472, %.loopexit391 ], [ %.sroa.24.7, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.17.1.lcssa = phi ptr [ %.sroa.17.0473, %.loopexit391 ], [ %.sroa.17.3, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ]
  %.sroa.0353.2.lcssa = phi ptr [ %.sroa.0353.1474, %.loopexit391 ], [ %.sroa.0353.7, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %i.or = add nuw i64 %.0135476, 1                ; 2 uses
  %exitcond529.not = icmp eq i64 %i.or, %i.ac
  %i.os = extractelement <2 x double> %i.nk, i64 0
  %i.ot = extractelement <2 x double> %i.nk, i64 1
  br i1 %exitcond529.not, label %.preheader385, label %bb.am, !llvm.loop !105

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit
  %.0132450 = phi i32 [ %i.pm, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ 0, %.lr.ph.preheader ]
  %.sroa.0353.2449 = phi ptr [ %.sroa.0353.7, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.0353.1474, %.lr.ph.preheader ] ; 7 uses
  %.sroa.17.1448 = phi ptr [ %.sroa.17.3, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.17.0473, %.lr.ph.preheader ] ; 8 uses
  %.sroa.24.2447 = phi ptr [ %.sroa.24.7, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.24.1472, %.lr.ph.preheader ] ; 2 uses
  %.sroa.23297.1446 = phi double [ %i.pz, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ %i.nl, %.lr.ph.preheader ] ; 3 uses
  %i.ou = phi <2 x double> [ %i.pu, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ %i.nk, %.lr.ph.preheader ] ; 5 uses
  %i.ov = fadd <2 x double> %i.kz, %i.ou          ; 2 uses
  %i.ow = fadd double %.sroa.14351.0471, %.sroa.23297.1446 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.17.1448, %.sroa.24.2447
  br i1 %.not.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph
  store <2 x double> %i.ov, ptr %.sroa.17.1448, align 8
  %.sroa.7284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17.1448, i64 16
  store double %i.ow, ptr %.sroa.7284.0..sroa_idx, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit

bb.aq:                                            ; preds = %.lr.ph
  %i.ox = ptrtoint ptr %.sroa.17.1448 to i64
  %i.oy = ptrtoint ptr %.sroa.0353.2449 to i64
  %i.oz = sub i64 %i.ox, %i.oy                    ; 4 uses
  %i.pa = icmp eq i64 %i.oz, 9223372036854775800
  br i1 %i.pa, label %bb.ar, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.noexc183 unwind label %.loopexit.split-lp387.loopexit.split-lp

.noexc183:                                        ; preds = %bb.ar
  unreachable

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aq
  %i.pb = sdiv exact i64 %i.oz, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.pb, i64 1)
  %i.pc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.pb ; 2 uses
  %i.pd = icmp ult i64 %i.pc, %i.pb
  %i.pe = call i64 @llvm.umin.i64(i64 %i.pc, i64 384307168202282325)
  %i.pf = select i1 %i.pd, i64 384307168202282325, i64 %i.pe ; 3 uses
  %.not.i.i.i.i182 = icmp ne i64 %i.pf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i182)
  %i.pg = mul nuw nsw i64 %i.pf, 24
  %i.ph = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pg) #28
          to label %.noexc184 unwind label %.loopexit.split-lp387.loopexit.split-lp ; 5 uses

.noexc184:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.oz ; 2 uses
  store <2 x double> %i.ov, ptr %i.pi, align 8
  %.sroa.7284.0..sroa_idx285 = getelementptr inbounds nuw i8, ptr %i.pi, i64 16
  store double %i.ow, ptr %.sroa.7284.0..sroa_idx285, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0353.2449, %.sroa.17.1448
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc184, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.pk, %.lr.ph.i.i.i.i.i.i ], [ %i.ph, %.noexc184 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.pj, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0353.2449, %.noexc184 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !alias.scope !118
  %i.pj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.pj, %.sroa.17.1448
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc184
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ph, %.noexc184 ], [ %i.pk, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0353.2449, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0353.2449, i64 noundef %i.oz) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.as, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.pl = getelementptr inbounds nuw [24 x i8], ptr %i.ph, i64 %i.pf
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ap
  %.sroa.24.7 = phi ptr [ %i.pl, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.24.2447, %bb.ap ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.17.1448, %bb.ap ]
  %.sroa.0353.7 = phi ptr [ %i.ph, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0353.2449, %bb.ap ] ; 2 uses
  %.sroa.17.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 24 ; 2 uses
  %i.pm = add nuw i32 %.0132450, 1                ; 2 uses
  %i.pn = shufflevector <2 x double> %i.ou, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.po = fmul <2 x double> %i.ob, %i.pn
  %i.pp = shufflevector <2 x double> %i.ou, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nx, <2 x double> %i.pp, <2 x double> %i.po)
  %i.pr = insertelement <2 x double> poison, double %.sroa.23297.1446, i64 0
  %i.ps = shufflevector <2 x double> %i.pr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oj, <2 x double> %i.ps, <2 x double> %i.pq)
  %i.pu = fadd <2 x double> %i.pt, zeroinitializer
  %foldExtExtBinop629 = fmul <2 x double> %i.on, %i.ou
  %i.pv = extractelement <2 x double> %foldExtExtBinop629, i64 1
  %i.pw = extractelement <2 x double> %i.ou, i64 0
  %i.px = call double @llvm.fmuladd.f64(double %i.oq, double %i.pw, double %i.pv)
  %i.py = call double @llvm.fmuladd.f64(double %i.op, double %.sroa.23297.1446, double %i.px)
  %i.pz = fadd double %i.py, 0.000000e+00
  %exitcond.not = icmp eq i32 %i.pm, %i.m
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !109

.loopexit.split-lp387.loopexit.split-lp:          ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.ar
  %lpad.loopexit.split-lp635 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

._crit_edge492:                                   ; preds = %._crit_edge489.us, %.lr.ph491, %.preheader385
  %.sroa.0353.1.lcssa594 = phi ptr [ %.sroa.0353.2.lcssa, %.preheader385 ], [ %.sroa.0353.1.lcssa593, %.lr.ph491 ], [ %.sroa.0353.1.lcssa593, %._crit_edge489.us ] ; 3 uses
  %.sroa.24.1.lcssa592 = phi ptr [ %.sroa.24.2.lcssa, %.preheader385 ], [ %.sroa.24.1.lcssa591, %.lr.ph491 ], [ %.sroa.24.1.lcssa591, %._crit_edge489.us ] ; 3 uses
  %i.qa = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc185 unwind label %bb.au

.noexc185:                                        ; preds = %._crit_edge492
  br i1 %i.qa, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit, label %bb.at

bb.at:                                            ; preds = %.noexc185
  %i.qb = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc186 unwind label %bb.au

.noexc186:                                        ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.qc = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc187 unwind label %bb.au

.noexc187:                                        ; preds = %.noexc186
  store ptr %i.qc, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger12verboseDebugIJPKcRA80_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.qb, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(80) @.str.6)
          to label %.noexc188 unwind label %bb.au

.noexc188:                                        ; preds = %.noexc187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit

bb.au:                                            ; preds = %.noexc187, %.noexc186, %bb.at, %._crit_edge492
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.split502.us.invoke:                              ; preds = %bb.aj, %bb.ad, %bb.aa, %bb.x, %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.split502.us.cont unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split502.us.cont:                                ; preds = %.split502.us.invoke
  unreachable

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit: ; preds = %.noexc185, %.noexc188, %.noexc181, %.noexc178
  %.sroa.24.3 = phi ptr [ %.sroa.24.6, %.noexc181 ], [ %.sroa.24.6, %.noexc178 ], [ %.sroa.24.1.lcssa592, %.noexc188 ], [ %.sroa.24.1.lcssa592, %.noexc185 ]
  %.sroa.0353.3 = phi ptr [ %.sroa.17.2, %.noexc181 ], [ %.sroa.17.2, %.noexc178 ], [ %.sroa.0353.1.lcssa594, %.noexc188 ], [ %.sroa.0353.1.lcssa594, %.noexc185 ] ; 3 uses
  %.not.i.i.i252 = icmp eq ptr %.sroa.0353.3, null
  br i1 %.not.i.i.i252, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit
  %i.qe = ptrtoint ptr %.sroa.24.3 to i64
  %i.qf = ptrtoint ptr %.sroa.0353.3 to i64
  %i.qg = sub i64 %i.qe, %i.qf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0353.3, i64 noundef %i.qg) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit:    ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit, %bb.av
  %i.qh = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.qi = load ptr, ptr %i.qh, align 8            ; 3 uses
  %.not.i.i.i.i253 = icmp eq ptr %i.qi, null
  br i1 %.not.i.i.i.i253, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit
  %i.qj = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.qk = load ptr, ptr %i.qj, align 8
  %i.ql = ptrtoint ptr %i.qk to i64
  %i.qm = ptrtoint ptr %i.qi to i64
  %i.qn = sub i64 %i.ql, %i.qm
  call void @_ZdlPvm(ptr noundef nonnull %i.qi, i64 noundef %i.qn) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %bb.aw, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit
  %i.qo = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.qo, null
  br i1 %.not.i.i.i1.i, label %_ZN6Assimp3IFC8TempMeshD2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  %i.qp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.qq = load ptr, ptr %i.qp, align 8
  %i.qr = ptrtoint ptr %i.qq to i64
  %i.qs = ptrtoint ptr %i.qo to i64
  %i.qt = sub i64 %i.qr, %i.qs
  call void @_ZdlPvm(ptr noundef nonnull %i.qo, i64 noundef %i.qt) #29
  br label %_ZN6Assimp3IFC8TempMeshD2Ev.exit

end_hunk_2
begin_hunk_3_@_ZN6Assimp6Logger4warnIJPKcRA47_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_:bb.a
  %i.p = load i64, ptr %i.n, align 8
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.r, ptr %5, align 8
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.t = getelementptr i8, ptr %i.r, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %5, i64 %i.u
  store ptr %i.s, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load i64, ptr %i.z, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.w, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ad) #30
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ae) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

bb.g:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

bb.h:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %4, align 8               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.h
  %i.ak = load i64, ptr %i.ai, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, %bb.g
  %.pn = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ], [ %i.ag, %bb.h ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA47_KcEES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(47) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(47) %3) #30
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(47) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN6Assimp6Logger13formatMessageIJENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %4)
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
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #30
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #30
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #30
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = load ptr, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !289)
  call void @llvm.experimental.noalias.scope.decl(metadata !290)
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !alias.scope !293
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !alias.scope !293
  store i8 0, ptr %i.e, align 8, !alias.scope !293
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !293 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noalias !293 ; 2 uses
  %i.k = icmp ugt ptr %i.h, %i.j
  %.08.i.i.i.i.i = select i1 %i.k, ptr %i.h, ptr %i.j ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !noalias !293 ; 2 uses
  %i.n = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.m, i64 noundef %i.p)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %0, align 8, !alias.scope !293 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.e
  br i1 %i.t, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.u = load i64, ptr %i.e, align 8, !alias.scope !293
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #29
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.x = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.x, ptr %4, align 8
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.z = getelementptr i8, ptr %i.x, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %4, i64 %i.aa
  store ptr %i.y, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.ah = load i64, ptr %i.af, align 8
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #30
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ak) #30
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #30
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorI10aiVector3tIdESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.9 = alloca [23 x i8], align 1            ; 10 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %.sroa.4.8.copyload = load i8, ptr %3, align 8  ; 7 uses
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9.8..sroa_idx, i64 23, i1 false)
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = sub i64 %i.f, %i.i                       ; 3 uses
  %i.k = sdiv exact i64 %i.j, 24                  ; 3 uses
  %i.l = icmp ugt i64 %i.k, %2
  br i1 %i.l, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %.idx = mul i64 %2, -24                         ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 %.idx ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i64 %.idx, 0
  br i1 %.not11.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIP10aiVector3tIdES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.d, %bb.d ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.m, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.012.i.i.i.i.i, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIP10aiVector3tIdES2_SaIS1_EET0_T_S5_S4_RT1_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !9

_ZSt22__uninitialized_move_aIP10aiVector3tIdES2_SaIS1_EET0_T_S5_S4_RT1_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZSt22__uninitialized_move_aIP10aiVector3tIdES2_SaIS1_EET0_T_S5_S4_RT1_.exit

_ZSt22__uninitialized_move_aIP10aiVector3tIdES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %_ZSt22__uninitialized_move_aIP10aiVector3tIdES2_SaIS1_EET0_T_S5_S4_RT1_.exit.loopexit, %bb.d
  %i.p = phi ptr [ %.pre, %_ZSt22__uninitialized_move_aIP10aiVector3tIdES2_SaIS1_EET0_T_S5_S4_RT1_.exit.loopexit ], [ %i.d, %bb.d ]
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %2
  store ptr %i.q, ptr %i.c, align 8
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = sub i64 %i.r, %i.i                       ; 4 uses
  %i.t = icmp sgt i64 %i.s, 24
  br i1 %i.t, label %bb.e, label %bb.f, !prof !17

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIP10aiVector3tIdES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.neg132 = udiv exact i64 %i.s, 24
  %.neg132.neg = sub nsw i64 0, %.neg132
  %i.u = getelementptr inbounds [24 x i8], ptr %i.d, i64 %.neg132.neg
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.u, ptr align 8 %1, i64 %i.s, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIP10aiVector3tIdES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.v = icmp eq i64 %i.s, 24
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.idx115 = mul nuw nsw i64 %2, 24
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.idx115
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %1, %bb.h ] ; 3 uses
  store i8 %.sroa.4.8.copyload, ptr %.06.i.i.i, align 8
  %.sroa.9.8..06.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9.8..06.i.i.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9, i64 23, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.x
  br i1 %.not.i.i.i, label %_ZSt4fillIP10aiVector3tIdES1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !294

bb.i:                                             ; preds = %bb.c
  %i.z = sub nuw i64 %2, %i.k                     ; 4 uses
  %.not7.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not7.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIdEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.i
  %xtraiter = and i64 %i.z, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.09.i.i.i.i.prol = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.prol ], [ %i.d, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.068.i.i.i.i.prol = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.prol ], [ %i.z, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  store i8 %.sroa.4.8.copyload, ptr %.09.i.i.i.i.prol, align 8
  %.sroa.9.8..09.i.i.i.i.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.prol, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9.8..09.i.i.i.i.sroa_idx.prol, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9, i64 23, i1 false)
  %i.aa = add i64 %.068.i.i.i.i.prol, -1          ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !295

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa141.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.prol ]
  %.09.i.i.i.i.unr = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.prol ]
  %.068.i.i.i.i.unr = phi i64 [ %i.z, %.lr.ph.i.i.i.i.preheader ], [ %i.aa, %.lr.ph.i.i.i.i.prol ]
  %i.ac = sub i64 %i.k, %2
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIdEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i = phi i64 [ %i.ah, %.lr.ph.i.i.i.i ], [ %.068.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  store i8 %.sroa.4.8.copyload, ptr %.09.i.i.i.i, align 8
  %.sroa.9.8..09.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9.8..09.i.i.i.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9, i64 23, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24
  store i8 %.sroa.4.8.copyload, ptr %i.ae, align 8
  %.sroa.9.8..09.i.i.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9.8..09.i.i.i.i.sroa_idx.1, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9, i64 23, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 48
  store i8 %.sroa.4.8.copyload, ptr %i.af, align 8
  %.sroa.9.8..09.i.i.i.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9.8..09.i.i.i.i.sroa_idx.2, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9, i64 23, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 72
  store i8 %.sroa.4.8.copyload, ptr %i.ag, align 8
  %.sroa.9.8..09.i.i.i.i.sroa_idx.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9.8..09.i.i.i.i.sroa_idx.3, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9, i64 23, i1 false)
  %i.ah = add i64 %.068.i.i.i.i, -4               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i.3, label %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIdEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !296

_ZSt24__uninitialized_fill_n_aIP10aiVector3tIdEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.i
  %i.aj = phi ptr [ %i.d, %bb.i ], [ %.lcssa141.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.ai, %.lr.ph.i.i.i.i ] ; 3 uses
  store ptr %i.aj, ptr %i.c, align 8
  %.not11.i.i.i.i.i69 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i69, label %_ZSt22__uninitialized_move_aIP10aiVector3tIdES2_SaIS1_EET0_T_S5_S4_RT1_.exit75.thread, label %.lr.ph.i.i.i.i.i70

_ZSt22__uninitialized_move_aIP10aiVector3tIdES2_SaIS1_EET0_T_S5_S4_RT1_.exit75.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIdEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.j
  store ptr %i.ak, ptr %i.c, align 8
  br label %_ZSt4fillIP10aiVector3tIdES1_EvT_S3_RKT0_.exit

.lr.ph.i.i.i.i.i70:                               ; preds = %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIdEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, %.lr.ph.i.i.i.i.i70
  %.013.i.i.i.i.i71 = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i70 ], [ %i.aj, %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIdEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i72 = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i70 ], [ %1, %_ZSt24__uninitialized_fill_n_aIP10aiVector3tIdEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.013.i.i.i.i.i71, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.012.i.i.i.i.i72, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i72, i64 24 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i71, i64 24
  %.not.i.i.i.i.i73 = icmp eq ptr %i.al, %i.d
  br i1 %.not.i.i.i.i.i73, label %_ZSt22__uninitialized_move_aIP10aiVector3tIdES2_SaIS1_EET0_T_S5_S4_RT1_.exit75, label %.lr.ph.i.i.i.i.i70, !llvm.loop !9

_ZSt22__uninitialized_move_aIP10aiVector3tIdES2_SaIS1_EET0_T_S5_S4_RT1_.exit75: ; preds = %.lr.ph.i.i.i.i.i70
  %i.an = load ptr, ptr %i.c, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.j
  store ptr %i.ao, ptr %i.c, align 8
  br label %.lr.ph.i.i.i77

.lr.ph.i.i.i77:                                   ; preds = %_ZSt22__uninitialized_move_aIP10aiVector3tIdES2_SaIS1_EET0_T_S5_S4_RT1_.exit75, %.lr.ph.i.i.i77
  %.06.i.i.i78 = phi ptr [ %i.ap, %.lr.ph.i.i.i77 ], [ %1, %_ZSt22__uninitialized_move_aIP10aiVector3tIdES2_SaIS1_EET0_T_S5_S4_RT1_.exit75 ] ; 3 uses
  store i8 %.sroa.4.8.copyload, ptr %.06.i.i.i78, align 8
  %.sroa.9.8..06.i.i.i78.sroa_idx = getelementptr inbounds nuw i8, ptr %.06.i.i.i78, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9.8..06.i.i.i78.sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9, i64 23, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i.i78, i64 24 ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %i.ap, %i.d
  br i1 %.not.i.i.i79, label %_ZSt4fillIP10aiVector3tIdES1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i77, !llvm.loop !294

_ZSt4fillIP10aiVector3tIdES1_EvT_S3_RKT0_.exit:   ; preds = %.lr.ph.i.i.i77, %.lr.ph.i.i.i, %_ZSt22__uninitialized_move_aIP10aiVector3tIdES2_SaIS1_EET0_T_S5_S4_RT1_.exit75.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.n

bb.j:                                             ; preds = %bb.b
  %i.aq = load ptr, ptr %0, align 8               ; 5 uses
  %i.ar = ptrtoint ptr %i.aq to i64               ; 3 uses
  %i.as = sub i64 %i.f, %i.ar
  %i.at = sdiv exact i64 %i.as, 24                ; 4 uses
  %i.au = sub nsw i64 384307168202282325, %i.at
  %i.av = icmp ult i64 %i.au, %2
  br i1 %i.av, label %bb.k, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #27
  unreachable

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.j
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.at, i64 %2)
  %i.aw = add nsw i64 %.sroa.speculated.i, %i.at  ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.at
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 384307168202282325)
  %i.az = select i1 %i.ax, i64 384307168202282325, i64 %i.ay ; 3 uses
end_hunk_3
begin_hunk_4_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS4_14DistanceSorterEEEEvT_SE_RT0_:bb.a
  %.not.i.i.i1.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i1.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = add nsw i32 %i.ak, -1
  store i32 %i.at, ptr %i.ah, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.au = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.ak, %bb.i ], [ %i.au, %bb.j ]
  %i.av = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.av, label %bb.k, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !14

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #30
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.aw = load ptr, ptr %i.n, align 8             ; 8 uses
  %.not.i.i2.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i2.i, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ax, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.bb, align 4
  %i.bc = load ptr, ptr %i.aw, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #30, !inline_history !5
  %i.bf = load ptr, ptr %i.aw, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #30, !inline_history !5
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.bi = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i3.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i3.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = add nsw i32 %i.ba, -1
  store i32 %i.bj, ptr %i.ax, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

bb.p:                                             ; preds = %bb.n
  %i.bk = atomicrmw volatile add ptr %i.ax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i5.i = phi i32 [ %i.ba, %bb.o ], [ %i.bk, %bb.p ]
  %i.bl = icmp eq i32 %.0.i.i.i.i5.i, 1
  br i1 %i.bl, label %bb.q, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, !prof !14

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #30
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

_ZN6Assimp3IFC11TempOpeningD2Ev.exit:             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i, %bb.q
  %.not = icmp eq i64 %.09, 0
  %i.bm = add nsw i64 %.09, -1
  %i.bn = load ptr, ptr %i.k, align 8             ; 3 uses
  %.not.i.i.i.i10 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i10, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i11, label %bb.r

bb.r:                                             ; preds = %_ZN6Assimp3IFC11TempOpeningD2Ev.exit
  %i.bo = load ptr, ptr %i.l, align 8
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.br) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i11

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i11: ; preds = %bb.r, %_ZN6Assimp3IFC11TempOpeningD2Ev.exit
  %i.bs = load ptr, ptr %i.j, align 8             ; 8 uses
  %.not.i.i.i12 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i12, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i16, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i11
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 4 uses
  %i.bu = load atomic i64, ptr %i.bt acquire, align 8 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 4294967297
  %i.bw = trunc i64 %i.bu to i32                  ; 2 uses
  br i1 %i.bv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bt, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 0, ptr %i.bx, align 4
  %i.by = load ptr, ptr %i.bs, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #30, !inline_history !5
  %i.cb = load ptr, ptr %i.bs, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #30, !inline_history !5
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i16

bb.u:                                             ; preds = %bb.s
  %i.ce = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i1.i13 = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i.i1.i13, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cf = add nsw i32 %i.bw, -1
  store i32 %i.cf, ptr %i.bt, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i14

bb.w:                                             ; preds = %bb.u
  %i.cg = atomicrmw volatile add ptr %i.bt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i14

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i14: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i15 = phi i32 [ %i.bw, %bb.v ], [ %i.cg, %bb.w ]
  %i.ch = icmp eq i32 %.0.i.i.i.i.i15, 1
  br i1 %i.ch, label %bb.x, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i16, !prof !14

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i14
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #30
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i16

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i16: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i14, %bb.t, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i11
  %i.ci = load ptr, ptr %i.i, align 8             ; 8 uses
  %.not.i.i2.i17 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i2.i17, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit21, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 4 uses
  %i.ck = load atomic i64, ptr %i.cj acquire, align 8 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 4294967297
  %i.cm = trunc i64 %i.ck to i32                  ; 2 uses
  br i1 %i.cl, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.cj, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store i32 0, ptr %i.cn, align 4
  %i.co = load ptr, ptr %i.ci, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #30, !inline_history !5
  %i.cr = load ptr, ptr %i.ci, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #30, !inline_history !5
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit21

bb.aa:                                            ; preds = %bb.y
  %i.cu = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i3.i18 = icmp eq i8 %i.cu, 0
  br i1 %.not.i.i.i3.i18, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cv = add nsw i32 %i.cm, -1
  store i32 %i.cv, ptr %i.cj, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i19

bb.ac:                                            ; preds = %bb.aa
  %i.cw = atomicrmw volatile add ptr %i.cj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i19

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i19: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i5.i20 = phi i32 [ %i.cm, %bb.ab ], [ %i.cw, %bb.ac ]
  %i.cx = icmp eq i32 %.0.i.i.i.i5.i20, 1
  br i1 %i.cx, label %bb.ad, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit21, !prof !14

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i19
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #30
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit21

_ZN6Assimp3IFC11TempOpeningD2Ev.exit21:           ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i16, %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i19, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !353

bb.ae:                                            ; preds = %bb.c
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp3IFC11TempOpeningD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %4) #30
  call void @_ZN6Assimp3IFC11TempOpeningD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %i.cy

.loopexit:                                        ; preds = %_ZN6Assimp3IFC11TempOpeningD2Ev.exit21, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS4_14DistanceSorterEEEEvT_SE_SE_RT0_(ptr %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #22 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Assimp::IFC::TempOpening", align 8 ; 11 uses
  %5 = alloca %"struct.Assimp::IFC::TempOpening", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %1 to i64
  %i.l = ptrtoint ptr %0 to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 88
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.t = load <2 x ptr>, ptr %i.g, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.u = load <2 x ptr>, ptr %i.b, align 8
  %i.v = load <2 x ptr>, ptr %i.d, align 8
  store <4 x ptr> splat (ptr null), ptr %i.b, align 8
  %i.w = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6Assimp3IFC11TempOpeningaSEOS1_(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) %0) #30 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 8 dereferenceable(88) %4, i64 32, i1 false)
  store <2 x ptr> %i.u, ptr %i.o, align 8
  store <2 x ptr> %i.v, ptr %i.q, align 8
  store <4 x ptr> splat (ptr null), ptr %i.a, align 8
  store <2 x ptr> %i.t, ptr %i.s, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  store ptr %i.j, ptr %i.x, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterINS4_14DistanceSorterEEEEvT_T0_SF_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.n, ptr noundef nonnull %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %3)
          to label %bb.b unwind label %bb.ac

bb.b:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.s, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load ptr, ptr %i.x, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i:  ; preds = %bb.c, %bb.b
  %i.ad = load ptr, ptr %i.r, align 8             ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.ae, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %i.ad, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #30, !inline_history !5
  %i.am = load ptr, ptr %i.ad, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #30, !inline_history !5
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ap = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i1.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i1.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.ah, %bb.g ], [ %i.ar, %bb.h ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.as, label %bb.i, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !14

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #30
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.e, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.at = load ptr, ptr %i.p, align 8             ; 8 uses
  %.not.i.i2.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i2.i, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  %i.av = load atomic i64, ptr %i.au acquire, align 8 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 4294967297
  %i.ax = trunc i64 %i.av to i32                  ; 2 uses
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.au, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 0, ptr %i.ay, align 4
  %i.az = load ptr, ptr %i.at, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #30, !inline_history !5
  %i.bc = load ptr, ptr %i.at, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #30, !inline_history !5
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.bf = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i3.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i3.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = add nsw i32 %i.ax, -1
  store i32 %i.bg, ptr %i.au, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

bb.n:                                             ; preds = %bb.l
  %i.bh = atomicrmw volatile add ptr %i.au, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i5.i = phi i32 [ %i.ax, %bb.m ], [ %i.bh, %bb.n ]
  %i.bi = icmp eq i32 %.0.i.i.i.i5.i, 1
  br i1 %i.bi, label %bb.o, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, !prof !14

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #30
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

_ZN6Assimp3IFC11TempOpeningD2Ev.exit:             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i, %bb.o
  %i.bj = load ptr, ptr %i.f, align 8             ; 3 uses
  %.not.i.i.i.i2 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i2, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i3, label %bb.p

bb.p:                                             ; preds = %_ZN6Assimp3IFC11TempOpeningD2Ev.exit
  %i.bk = load ptr, ptr %i.h, align 8
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bn) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i3

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i3: ; preds = %bb.p, %_ZN6Assimp3IFC11TempOpeningD2Ev.exit
  %i.bo = load ptr, ptr %i.e, align 8             ; 8 uses
  %.not.i.i.i4 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i4, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i8, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bp, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 0, ptr %i.bt, align 4
  %i.bu = load ptr, ptr %i.bo, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #30, !inline_history !5
  %i.bx = load ptr, ptr %i.bo, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #30, !inline_history !5
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i8

bb.s:                                             ; preds = %bb.q
  %i.ca = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i1.i5 = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i1.i5, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6
end_hunk_4
begin_hunk_5_@_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS4_14DistanceSorterEEEET_SE_SE_SE_T0_:bb.a
  %i.aa = insertelement <2 x double> %i.z, double %i.y, i64 1
  %i.ab = fsub <2 x double> %i.aa, %i.l           ; 2 uses
  %i.ac = fmul <2 x double> %i.x, %i.x
  %i.ad = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> %i.v, <2 x double> %i.ac)
  %i.ae = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ab, <2 x double> %i.ad) ; 2 uses
  %i.af = extractelement <2 x double> %i.ae, i64 0
  %i.ag = extractelement <2 x double> %i.ae, i64 1
  %i.ah = fcmp olt double %i.af, %i.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.010.1, i64 88 ; 2 uses
  br i1 %i.ah, label %bb.c, label %.preheader, !llvm.loop !402

.preheader:                                       ; preds = %bb.c, %.preheader
  %.sroa.0.0.pn = phi ptr [ %.sroa.0.1, %.preheader ], [ %.sroa.0.0, %bb.c ] ; 2 uses
  %.sroa.0.1 = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -88 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.aj = load ptr, ptr %i.d, align 8
  call void @_ZNK6Assimp3IFC8TempMesh6CenterEv(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %i.aj)
  %i.ak = load double, ptr %i.f, align 16, !noalias !411
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.al = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -56
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load <2 x double>, ptr %4, align 16, !noalias !411 ; 2 uses
  call void @_ZNK6Assimp3IFC8TempMesh6CenterEv(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %i.am)
  %i.ao = load <2 x double>, ptr %5, align 16, !noalias !412 ; 2 uses
  %i.ap = shufflevector <2 x double> %i.an, <2 x double> %i.ao, <2 x i32> <i32 0, i32 2>
  %i.aq = fsub <2 x double> %i.ap, %i.m           ; 2 uses
  %i.ar = shufflevector <2 x double> %i.an, <2 x double> %i.ao, <2 x i32> <i32 1, i32 3>
  %i.as = fsub <2 x double> %i.ar, %i.n           ; 2 uses
  %i.at = load double, ptr %i.g, align 16, !noalias !412
  %i.au = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.av = insertelement <2 x double> %i.au, double %i.at, i64 1
  %i.aw = fsub <2 x double> %i.av, %i.l           ; 2 uses
  %i.ax = fmul <2 x double> %i.as, %i.as
  %i.ay = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> %i.aq, <2 x double> %i.ax)
  %i.az = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.aw, <2 x double> %i.ay) ; 2 uses
  %i.ba = extractelement <2 x double> %i.az, i64 0
  %i.bb = extractelement <2 x double> %i.az, i64 1
  %i.bc = fcmp olt double %i.ba, %i.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %i.bc, label %.preheader, label %bb.d, !llvm.loop !407

bb.d:                                             ; preds = %.preheader
  %i.bd = icmp ult ptr %.sroa.010.1, %.sroa.0.1
  br i1 %i.bd, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  ret ptr %.sroa.010.1

bb.f:                                             ; preds = %bb.d
  call void @_ZSt4swapIN6Assimp3IFC11TempOpeningEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.010.1, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.1) #30
  br label %bb.b, !llvm.loop !408
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt4swapIN6Assimp3IFC11TempOpeningEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Assimp::IFC::TempOpening", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.d = load <2 x ptr>, ptr %i.b, align 8
  store <2 x ptr> %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = load <2 x ptr>, ptr %i.f, align 8
  store <2 x ptr> %i.h, ptr %i.e, align 8
  store <4 x ptr> splat (ptr null), ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.j, align 8
  store <2 x ptr> %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8
  store ptr %i.n, ptr %i.l, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.o = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6Assimp3IFC11TempOpeningaSEOS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) #30 ; 0 uses
  %i.p = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6Assimp3IFC11TempOpeningaSEOS1_(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) #30 ; 0 uses
  %i.q = load ptr, ptr %i.i, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %i.l, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i:  ; preds = %bb.b, %bb.a
  %i.v = load ptr, ptr %i.g, align 8              ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.w, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #30, !inline_history !5
  %i.ae = load ptr, ptr %i.v, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #30, !inline_history !5
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ah = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i1.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i1.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.z, %bb.f ], [ %i.aj, %bb.g ]
  %i.ak = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ak, label %bb.h, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !14

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #30
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.al = load ptr, ptr %i.c, align 8             ; 8 uses
  %.not.i.i2.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i2.i, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.am, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4
  %i.ar = load ptr, ptr %i.al, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #30, !inline_history !5
  %i.au = load ptr, ptr %i.al, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #30, !inline_history !5
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ax = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i3.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i3.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

bb.m:                                             ; preds = %bb.k
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i5.i = phi i32 [ %i.ap, %bb.l ], [ %i.az, %bb.m ]
  %i.ba = icmp eq i32 %.0.i.i.i.i5.i, 1
  br i1 %i.ba, label %bb.n, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, !prof !14

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #30
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

_ZN6Assimp3IFC11TempOpeningD2Ev.exit:             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #23

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS4_14DistanceSorterEEEEvT_SE_T0_(ptr %0, ptr %1, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.aiVector3t, align 16         ; 5 uses
  %4 = alloca %class.aiVector3t, align 16         ; 5 uses
  %5 = alloca %"struct.Assimp::IFC::TempOpening", align 8 ; 10 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit17, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.07.018 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.not19 = icmp eq ptr %.sroa.07.018, %1
  br i1 %.not19, label %.loopexit17, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.k = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ae
  %.sroa.07.021 = phi ptr [ %.sroa.07.018, %.lr.ph ], [ %.sroa.07.0, %bb.ae ] ; 6 uses
  %.pn20 = phi ptr [ %0, %.lr.ph ], [ %.sroa.07.021, %bb.ae ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.l = getelementptr inbounds nuw i8, ptr %.pn20, i64 120 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  call void @_ZNK6Assimp3IFC8TempMesh6CenterEv(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %i.m)
  %i.n = load double, ptr %i.b, align 16, !noalias !420
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.o = load ptr, ptr %i.c, align 8
  %i.p = load <2 x double>, ptr %3, align 16, !noalias !420 ; 2 uses
  %i.q = load <3 x double>, ptr %2, align 8, !noalias !420 ; 3 uses
  call void @_ZNK6Assimp3IFC8TempMesh6CenterEv(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %i.o)
  %i.r = load <2 x double>, ptr %4, align 16, !noalias !421 ; 2 uses
  %i.s = shufflevector <2 x double> %i.p, <2 x double> %i.r, <2 x i32> <i32 0, i32 2>
  %i.t = shufflevector <3 x double> %i.q, <3 x double> poison, <2 x i32> zeroinitializer
  %i.u = fsub <2 x double> %i.s, %i.t             ; 2 uses
  %i.v = shufflevector <2 x double> %i.p, <2 x double> %i.r, <2 x i32> <i32 1, i32 3>
  %i.w = shufflevector <3 x double> %i.q, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.x = fsub <2 x double> %i.v, %i.w             ; 2 uses
  %i.y = load double, ptr %i.d, align 16, !noalias !421
  %i.z = insertelement <2 x double> poison, double %i.n, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %i.y, i64 1
  %i.ab = shufflevector <3 x double> %i.q, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.ac = fsub <2 x double> %i.aa, %i.ab          ; 2 uses
  %i.ad = fmul <2 x double> %i.x, %i.x
  %i.ae = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.u, <2 x double> %i.ad)
  %i.af = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.ac, <2 x double> %i.ae) ; 2 uses
  %i.ag = extractelement <2 x double> %i.af, i64 0
  %i.ah = extractelement <2 x double> %i.af, i64 1
  %i.ai = fcmp olt double %i.ag, %i.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %i.ai, label %bb.c, label %bb.ad

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.07.021, i64 32, i1 false)
  %i.aj = load <2 x ptr>, ptr %i.l, align 8
  store <2 x ptr> %i.aj, ptr %i.e, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn20, i64 136
  %i.al = load <2 x ptr>, ptr %i.ak, align 8
  store <2 x ptr> %i.al, ptr %i.g, align 8
  store <4 x ptr> splat (ptr null), ptr %i.l, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %.pn20, i64 152 ; 2 uses
  %i.an = load <2 x ptr>, ptr %i.am, align 8
  store <2 x ptr> %i.an, ptr %i.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn20, i64 168
  %i.ap = load ptr, ptr %i.ao, align 8
  store ptr %i.ap, ptr %i.j, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  %i.aq = ptrtoint ptr %.sroa.07.021 to i64
  %i.ar = sub i64 %i.aq, %i.k                     ; 2 uses
  %i.as = icmp sgt i64 %i.ar, 0
  br i1 %i.as, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %.pn20, i64 176
  %i.au = udiv exact i64 %i.ar, 88
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN6Assimp3IFC11TempOpeningaSEOS1_.exit, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.dc, %_ZN6Assimp3IFC11TempOpeningaSEOS1_.exit ], [ %i.au, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.aw, %_ZN6Assimp3IFC11TempOpeningaSEOS1_.exit ], [ %i.at, %.lr.ph.preheader.i.i.i.i.i ] ; 9 uses
  %.078.i.i.i.i.i = phi ptr [ %i.av, %_ZN6Assimp3IFC11TempOpeningaSEOS1_.exit ], [ %.sroa.07.021, %.lr.ph.preheader.i.i.i.i.i ] ; 7 uses
  %i.av = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -88 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -88 ; 2 uses
  %i.ax = load ptr, ptr %i.av, align 8
  store ptr %i.ax, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -80
  %i.az = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  %i.ba = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -56
  %i.bb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -56 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -48
  %i.bd = load <2 x ptr>, ptr %i.bb, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  %i.be = load ptr, ptr %i.bc, align 8            ; 8 uses
  store <2 x ptr> %i.bd, ptr %i.ba, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  %i.bg = load atomic i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 4294967297
  %i.bi = trunc i64 %i.bg to i32                  ; 2 uses
  br i1 %i.bh, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.bf, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 0, ptr %i.bj, align 4
  %i.bk = load ptr, ptr %i.be, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #30, !inline_history !417
  %i.bn = load ptr, ptr %i.be, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #30, !inline_history !417
  br label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bq = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = add nsw i32 %i.bi, -1
  store i32 %i.br, ptr %i.bf, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.bs = atomicrmw volatile add ptr %i.bf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bi, %bb.g ], [ %i.bs, %bb.h ]
  %i.bt = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bt, label %bb.i, label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit.i, !prof !14

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #30
  br label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit.i

_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.e, %.lr.ph.i.i.i.i.i
  %i.bu = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -40
  %i.bv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40 ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  %i.bx = load <2 x ptr>, ptr %i.bv, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false)
  %i.by = load ptr, ptr %i.bw, align 8            ; 8 uses
  store <2 x ptr> %i.bx, ptr %i.bu, align 8
  %.not.i.i.i.i6.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i6.i, label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit10.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 4 uses
  %i.ca = load atomic i64, ptr %i.bz acquire, align 8 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 4294967297
  %i.cc = trunc i64 %i.ca to i32                  ; 2 uses
  br i1 %i.cb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.bz, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store i32 0, ptr %i.cd, align 4
  %i.ce = load ptr, ptr %i.by, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #30, !inline_history !417
  %i.ch = load ptr, ptr %i.by, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #30, !inline_history !417
  br label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit10.i

bb.l:                                             ; preds = %bb.j
  %i.ck = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i7.i = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.i.i.i7.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cl = add nsw i32 %i.cc, -1
  store i32 %i.cl, ptr %i.bz, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8.i

bb.n:                                             ; preds = %bb.l
  %i.cm = atomicrmw volatile add ptr %i.bz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8.i

end_hunk_5
begin_hunk_6_@_ZN6Assimp6Logger4warnIJPKcRA74_S2_EEEvDpOT_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
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
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #30
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull %i.a, i64 noundef %i.i)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit unwind label %bb.d ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.d ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #30
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit: ; preds = %bb.b, %bb.c
  invoke void @_ZN6Assimp6Logger13formatMessageIJERA74_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(74) %2)
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
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
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
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.w, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ad) #30
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ae) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
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
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.g
  %.pn = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.ag, %bb.h ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERA74_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(74) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(74) %3) #30
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(74) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !476)
  call void @llvm.experimental.noalias.scope.decl(metadata !477)
  call void @llvm.experimental.noalias.scope.decl(metadata !478)
  call void @llvm.experimental.noalias.scope.decl(metadata !479)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !480
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !480
  store i8 0, ptr %i.c, align 8, !alias.scope !480
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !480 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !480 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !480 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !480 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !480
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #29
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
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #30
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #30
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #30
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #24

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #24

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt11__copy_moveILb0ELb0ESt26bidirectional_iterator_tagE8__copy_mISt23_Rb_tree_const_iteratorIjESt15insert_iteratorISt3setIjSt4lessIjESaIjEEEEET0_T_SD_SC_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not5 = icmp eq ptr %0, %1
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt15insert_iteratorISt3setIjSt4lessIjESaIjEEEaSERKj.exit
  %.sroa.02.07 = phi ptr [ %0, %.lr.ph ], [ %i.s, %_ZNSt15insert_iteratorISt3setIjSt4lessIjESaIjEEEaSERKj.exit ] ; 2 uses
  %.sroa.3.06 = phi ptr [ %3, %.lr.ph ], [ %i.r, %_ZNSt15insert_iteratorISt3setIjSt4lessIjESaIjEEEaSERKj.exit ]
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.02.07, i64 32 ; 3 uses
  %i.d = tail call { ptr, ptr } @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIjERKj(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr %.sroa.3.06, ptr noundef nonnull align 4 dereferenceable(4) %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.d, 1        ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt15insert_iteratorISt3setIjSt4lessIjESaIjEEEaSERKj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i.i = icmp ne ptr %i.e, null
  %i.g = icmp eq ptr %i.f, %i.a
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.g
  br i1 %or.cond.i.i.i.i.i, label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.i = load i32, ptr %i.c, align 4
  %i.j = load i32, ptr %i.h, align 4
  %i.k = icmp ult i32 %i.i, %i.j
  br label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i.i

_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.l = phi i1 [ %i.k, %bb.d ], [ true, %bb.c ]
  %i.m = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i32, ptr %i.c, align 4
  store i32 %i.o, ptr %i.n, align 4
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #30
  %i.p = load i64, ptr %i.b, align 8
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.b, align 8
  br label %_ZNSt15insert_iteratorISt3setIjSt4lessIjESaIjEEEaSERKj.exit

_ZNSt15insert_iteratorISt3setIjSt4lessIjESaIjEEEaSERKj.exit: ; preds = %bb.b, %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i.i
  %.sroa.08.0.i.i.i.i = phi ptr [ %i.m, %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i.i ], [ %i.e, %bb.b ]
  %i.r = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.08.0.i.i.i.i) #32 ; 2 uses
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.02.07) #32 ; 2 uses
  %.not = icmp eq ptr %i.s, %1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !481

._crit_edge:                                      ; preds = %_ZNSt15insert_iteratorISt3setIjSt4lessIjESaIjEEEaSERKj.exit, %bb.a
  %.sroa.3.0.lcssa = phi ptr [ %3, %bb.a ], [ %i.r, %_ZNSt15insert_iteratorISt3setIjSt4lessIjESaIjEEEaSERKj.exit ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.3.0.lcssa, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIjERKj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4
  %i.i = load i32, ptr %2, align 4
  %i.j = icmp ult i32 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE24_M_get_insert_unique_posERKj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8         ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i32, ptr %2, align 4                ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = icmp ult i32 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !7

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE24_M_get_insert_unique_posERKj.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #32 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i32, ptr %.phi.trans.insert80, align 4
  %.pre82 = load i32, ptr %2, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i32 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i32 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult i32 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE24_M_get_insert_unique_posERKj.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i32, ptr %2, align 4                ; 8 uses
  %i.y = load i32, ptr %i.w, align 4              ; 2 uses
  %i.z = icmp ult i32 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8            ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE24_M_get_insert_unique_posERKj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #32 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp ult i32 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE24_M_get_insert_unique_posERKj.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8      ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %i.an = icmp ult i32 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8     ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !7

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE24_M_get_insert_unique_posERKj.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #32 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i32 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult i32 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE24_M_get_insert_unique_posERKj.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult i32 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE24_M_get_insert_unique_posERKj.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE24_M_get_insert_unique_posERKj.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #32 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = icmp ult i32 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE24_M_get_insert_unique_posERKj.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8      ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = icmp ult i32 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8     ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !7

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE24_M_get_insert_unique_posERKj.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #32 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i32 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult i32 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE24_M_get_insert_unique_posERKj.exit

_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE24_M_get_insert_unique_posERKj.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #24

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt8_Rb_treeIN6Assimp3IFC14ConversionData14MeshCacheIndexESt4pairIKS3_St3setIjSt4lessIjESaIjEEESt10_Select1stISB_ES7_IS3_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESL_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<Assimp::IFC::ConversionData::MeshCacheIndex, std::pair<const Assimp::IFC::ConversionData::MeshCacheIndex, std::set<unsigned int>>, std::_Select1st<std::pair<const Assimp::IFC::ConversionData::MeshCacheIndex, std::set<unsigned int>>>, std::less<Assimp::IFC::ConversionData::MeshCacheIndex>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %0, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #28 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = load i64, ptr %3, align 8
  %i.e = inttoptr i64 %i.d to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.g, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 0, ptr %i.j, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.k = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN6Assimp3IFC14ConversionData14MeshCacheIndexESt4pairIKS3_St3setIjSt4lessIjESaIjEEESt10_Select1stISB_ES7_IS3_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(12) %i.c)
          to label %bb.b unwind label %bb.g       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 5 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.l, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.o
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.q = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.r = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.s = icmp ult ptr %i.q, %i.r
  br i1 %i.s, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp eq ptr %i.q, %i.r
  br i1 %i.t, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.v = load i32, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.x = load i32, ptr %i.w, align 8
  %i.y = icmp ult i32 %i.v, %i.x
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.z = phi i1 [ %i.y, %bb.f ], [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.z, ptr noundef nonnull %i.b, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n) #30
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8
  br label %_ZNSt8_Rb_treeIN6Assimp3IFC14ConversionData14MeshCacheIndexESt4pairIKS3_St3setIjSt4lessIjESaIjEEESt10_Select1stISB_ES7_IS3_ESaISB_EE10_Auto_nodeD2Ev.exit

bb.g:                                             ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIN6Assimp3IFC14ConversionData14MeshCacheIndexESt4pairIKS3_St3setIjSt4lessIjESaIjEEESt10_Select1stISB_ES7_IS3_ESaISB_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %i.ad

bb.h:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.af)
          to label %_ZNSt8_Rb_treeIN6Assimp3IFC14ConversionData14MeshCacheIndexESt4pairIKS3_St3setIjSt4lessIjESaIjEEESt10_Select1stISB_ES7_IS3_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #31
  unreachable

_ZNSt8_Rb_treeIN6Assimp3IFC14ConversionData14MeshCacheIndexESt4pairIKS3_St3setIjSt4lessIjESaIjEEESt10_Select1stISB_ES7_IS3_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i: ; preds = %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #29
  br label %_ZNSt8_Rb_treeIN6Assimp3IFC14ConversionData14MeshCacheIndexESt4pairIKS3_St3setIjSt4lessIjESaIjEEESt10_Select1stISB_ES7_IS3_ESaISB_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIN6Assimp3IFC14ConversionData14MeshCacheIndexESt4pairIKS3_St3setIjSt4lessIjESaIjEEESt10_Select1stISB_ES7_IS3_ESaISB_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeIN6Assimp3IFC14ConversionData14MeshCacheIndexESt4pairIKS3_St3setIjSt4lessIjESaIjEEESt10_Select1stISB_ES7_IS3_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i
  %.sroa.0.010 = phi ptr [ %i.b, %.thread ], [ %i.l, %_ZNSt8_Rb_treeIN6Assimp3IFC14ConversionData14MeshCacheIndexESt4pairIKS3_St3setIjSt4lessIjESaIjEEESt10_Select1stISB_ES7_IS3_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret ptr %.sroa.0.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNSt8_Rb_treeIN6Assimp3IFC14ConversionData14MeshCacheIndexESt4pairIKS3_St3setIjSt4lessIjESaIjEEESt10_Select1stISB_ES7_IS3_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread79, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = load ptr, ptr %2, align 8                ; 2 uses
  %i.j = icmp ult ptr %i.h, %i.i
  br i1 %i.j, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq ptr %i.h, %i.i
  br i1 %i.k, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread79

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp ult i32 %i.m, %i.o
  br i1 %i.p, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread79

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread79: ; preds = %bb.d, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02124.i = load ptr, ptr %i.q, align 8         ; 2 uses
  %.not25.i = icmp eq ptr %.02124.i, null
  br i1 %.not25.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread79
  %i.r = load ptr, ptr %2, align 8                ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i32, ptr %i.s, align 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.i
  %.02126.i = phi ptr [ %.02124.i, %.lr.ph.i ], [ %.02126.i.be, %.backedge.backedge ] ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.02126.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  %i.w = icmp ult ptr %i.r, %i.v
  br i1 %i.w, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %.backedge
  %i.x = icmp eq ptr %i.r, %i.v
  br i1 %i.x, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.i, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i.thread

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.i: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.02126.i, i64 40
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = icmp ult i32 %i.t, %i.z
  br i1 %i.aa, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i.thread

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i: ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.i, %.backedge
  %i.ab = getelementptr inbounds nuw i8, ptr %.02126.i, i64 16
  %.021.i = load ptr, ptr %i.ab, align 8          ; 2 uses
  %.not.i = icmp eq ptr %.021.i, null
  br i1 %.not.i, label %._crit_edge.thread.i, label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i.thread
  %.02126.i.be = phi ptr [ %.021.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i ], [ %.021.i81, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i.thread ]
  br label %.backedge, !llvm.loop !482

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i.thread: ; preds = %bb.e, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.02126.i, i64 24
  %.021.i81 = load ptr, ptr %i.ac, align 8        ; 2 uses
  %.not.i82 = icmp eq ptr %.021.i81, null
  br i1 %.not.i82, label %._crit_edge.i.thread, label %.backedge.backedge

._crit_edge.thread.i:                             ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread79
  %.020.lcssa34.i = phi ptr [ %i.a, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread79 ], [ %.02126.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = icmp eq ptr %.020.lcssa34.i, %i.ae
  br i1 %i.af, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.ag = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa34.i) #32 ; 2 uses
  %.phi.trans.insert106 = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %.pre107 = load ptr, ptr %.phi.trans.insert106, align 8
  %.pre108 = load ptr, ptr %2, align 8
  br label %._crit_edge.i.thread

._crit_edge.i.thread:                             ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i.thread, %bb.f
  %i.ah = phi ptr [ %.pre108, %bb.f ], [ %i.r, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i.thread ] ; 2 uses
  %i.ai = phi ptr [ %.pre107, %bb.f ], [ %i.v, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i.thread ] ; 2 uses
  %.020.lcssa33.i = phi ptr [ %.020.lcssa34.i, %bb.f ], [ %.02126.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i.thread ] ; 2 uses
  %.sroa.06.0.i = phi ptr [ %i.ag, %bb.f ], [ %.02126.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i.thread ] ; 2 uses
  %i.aj = icmp ult ptr %i.ai, %i.ah
  br i1 %i.aj, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.thread
  %i.ak = icmp eq ptr %i.ai, %i.ah
end_hunk_6
begin_hunk_7_@_ZNSt8_Rb_treeIN6Assimp3IFC14ConversionData14MeshCacheIndexESt4pairIKS3_St3setIjSt4lessIjESaIjEEESt10_Select1stISB_ES7_IS3_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS5_:bb.a
  %.021.i1986 = load ptr, ptr %i.cb, align 8      ; 2 uses
  %.not.i2087 = icmp eq ptr %.021.i1986, null
  br i1 %.not.i2087, label %._crit_edge.i21.thread, label %.backedge96.backedge

._crit_edge.thread.i30:                           ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i17, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit11.thread84
  %.020.lcssa34.i31 = phi ptr [ %i.a, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit11.thread84 ], [ %.02126.i15, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i17 ] ; 4 uses
  %i.cc = icmp eq ptr %.020.lcssa34.i31, %i.bb
  br i1 %i.cc, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i30
  %i.cd = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa34.i31) #32 ; 2 uses
  %.phi.trans.insert104 = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %.pre105 = load ptr, ptr %.phi.trans.insert104, align 8
  br label %._crit_edge.i21.thread

._crit_edge.i21.thread:                           ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i17.thread, %bb.m
  %i.ce = phi ptr [ %.pre105, %bb.m ], [ %i.bu, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i17.thread ] ; 2 uses
  %.020.lcssa33.i22 = phi ptr [ %.020.lcssa34.i31, %bb.m ], [ %.02126.i15, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i17.thread ] ; 2 uses
  %.sroa.06.0.i23 = phi ptr [ %i.cd, %bb.m ], [ %.02126.i15, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i17.thread ] ; 2 uses
  %i.cf = icmp ult ptr %i.ce, %i.ar
  br i1 %i.cf, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i21.thread
  %i.cg = icmp eq ptr %i.ce, %i.ar
  br i1 %i.cg, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i29, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i24

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i29: ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i23, i64 40
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ck = load i32, ptr %i.cj, align 8
  %i.cl = icmp ult i32 %i.ci, %i.ck
  br i1 %i.cl, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i24

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i24: ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i29, %bb.n
  br label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit10.thread83: ; preds = %bb.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit10
  %i.cm = icmp ult ptr %i.as, %i.ar
  br i1 %i.cm, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit34.thread, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit34

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit34: ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit10.thread83
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = icmp ult i32 %i.co, %i.cq
  br i1 %i.cr, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit34.thread, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit34.thread: ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit10.thread83, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit34
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %1
  br i1 %i.cu, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit34.thread
  %i.cv = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #32 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8            ; 2 uses
  %i.cy = icmp ult ptr %i.ar, %i.cx
  br i1 %i.cy, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cz = icmp eq ptr %i.ar, %i.cx
  br i1 %i.cz, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35.thread89

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35: ; preds = %bb.p
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.db = load i32, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.dd = load i32, ptr %i.dc, align 8
  %i.de = icmp ult i32 %i.db, %i.dd
  br i1 %i.de, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35.thread, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35.thread89

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35.thread: ; preds = %bb.o, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = icmp eq ptr %i.dg, null                 ; 2 uses
  %spec.select94 = select i1 %i.dh, ptr null, ptr %i.cv
  %spec.select95 = select i1 %i.dh, ptr %1, ptr %i.cv
  br label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35.thread89: ; preds = %bb.p, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02124.i36 = load ptr, ptr %i.di, align 8      ; 2 uses
  %.not25.i37 = icmp eq ptr %.02124.i36, null
  br i1 %.not25.i37, label %._crit_edge.thread.i54, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35.thread89
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dk = load i32, ptr %i.dj, align 8
  br label %.backedge97

.backedge97:                                      ; preds = %.backedge97.backedge, %.lr.ph.i38
  %.02126.i39 = phi ptr [ %.02124.i36, %.lr.ph.i38 ], [ %.02126.i39.be, %.backedge97.backedge ] ; 7 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.02126.i39, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8            ; 3 uses
  %i.dn = icmp ult ptr %i.ar, %i.dm
  br i1 %i.dn, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41, label %bb.q

bb.q:                                             ; preds = %.backedge97
  %i.do = icmp eq ptr %i.ar, %i.dm
  br i1 %i.do, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.i56, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41.thread

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.i56: ; preds = %bb.q
  %i.dp = getelementptr inbounds nuw i8, ptr %.02126.i39, i64 40
  %i.dq = load i32, ptr %i.dp, align 8
  %i.dr = icmp ult i32 %i.dk, %i.dq
  br i1 %i.dr, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41.thread

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41: ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.i56, %.backedge97
  %i.ds = getelementptr inbounds nuw i8, ptr %.02126.i39, i64 16
  %.021.i43 = load ptr, ptr %i.ds, align 8        ; 2 uses
  %.not.i44 = icmp eq ptr %.021.i43, null
  br i1 %.not.i44, label %._crit_edge.thread.i54, label %.backedge97.backedge

.backedge97.backedge:                             ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41.thread
  %.02126.i39.be = phi ptr [ %.021.i43, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41 ], [ %.021.i4391, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41.thread ]
  br label %.backedge97, !llvm.loop !482

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41.thread: ; preds = %bb.q, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.i56
  %i.dt = getelementptr inbounds nuw i8, ptr %.02126.i39, i64 24
  %.021.i4391 = load ptr, ptr %i.dt, align 8      ; 2 uses
  %.not.i4492 = icmp eq ptr %.021.i4391, null
  br i1 %.not.i4492, label %._crit_edge.i45.thread, label %.backedge97.backedge

._crit_edge.thread.i54:                           ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35.thread89
  %.020.lcssa34.i55 = phi ptr [ %i.a, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35.thread89 ], [ %.02126.i39, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41 ] ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = icmp eq ptr %.020.lcssa34.i55, %i.dv
  br i1 %i.dw, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread, label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread.i54
  %i.dx = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa34.i55) #32 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %._crit_edge.i45.thread

._crit_edge.i45.thread:                           ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41.thread, %bb.r
  %i.dy = phi ptr [ %.pre, %bb.r ], [ %i.dm, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41.thread ] ; 2 uses
  %.020.lcssa33.i46 = phi ptr [ %.020.lcssa34.i55, %bb.r ], [ %.02126.i39, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41.thread ] ; 2 uses
  %.sroa.06.0.i47 = phi ptr [ %i.dx, %bb.r ], [ %.02126.i39, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41.thread ] ; 2 uses
  %i.dz = icmp ult ptr %i.dy, %i.ar
  br i1 %i.dz, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i45.thread
  %i.ea = icmp eq ptr %i.dy, %i.ar
  br i1 %i.ea, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i53, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i48

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i53: ; preds = %bb.s
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i47, i64 40
  %i.ec = load i32, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ee = load i32, ptr %i.ed, align 8
  %i.ef = icmp ult i32 %i.ec, %i.ee
  br i1 %i.ef, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i48

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i48: ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i53, %bb.s
  br label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread: ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i48, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i53, %._crit_edge.i45.thread, %._crit_edge.thread.i54, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i24, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i29, %._crit_edge.i21.thread, %._crit_edge.thread.i30, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i, %._crit_edge.i.thread, %._crit_edge.thread.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35.thread, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit11.thread, %bb.c, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit34, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit34.thread, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit10.thread, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit
  %.sroa.078.2 = phi ptr [ %spec.select, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit11.thread ], [ null, %bb.c ], [ null, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit ], [ %spec.select94, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35.thread ], [ %1, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit34 ], [ null, %._crit_edge.i.thread ], [ %i.bb, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit10.thread ], [ null, %._crit_edge.i45.thread ], [ null, %._crit_edge.i21.thread ], [ null, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit34.thread ], [ %.sroa.06.0.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i ], [ null, %._crit_edge.thread.i ], [ null, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i ], [ %.sroa.06.0.i23, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i24 ], [ null, %._crit_edge.thread.i30 ], [ null, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i29 ], [ %.sroa.06.0.i47, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i48 ], [ null, %._crit_edge.thread.i54 ], [ null, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i53 ]
  %.sroa.12.2 = phi ptr [ %spec.select93, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit11.thread ], [ %i.f, %bb.c ], [ %i.f, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit ], [ %spec.select95, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35.thread ], [ null, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit34 ], [ %.020.lcssa33.i, %._crit_edge.i.thread ], [ %i.bb, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit10.thread ], [ %.020.lcssa33.i46, %._crit_edge.i45.thread ], [ %.020.lcssa33.i22, %._crit_edge.i21.thread ], [ %i.ct, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit34.thread ], [ null, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i ], [ %.020.lcssa34.i, %._crit_edge.thread.i ], [ %.020.lcssa33.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i ], [ null, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i24 ], [ %.020.lcssa34.i31, %._crit_edge.thread.i30 ], [ %.020.lcssa33.i22, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i29 ], [ null, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i48 ], [ %.020.lcssa34.i55, %._crit_edge.thread.i54 ], [ %.020.lcssa33.i46, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i53 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.078.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN6Assimp3IFC14ConversionData14MeshCacheIndexESt4pairIKS3_St3setIjSt4lessIjESaIjEEESt10_Select1stISB_ES7_IS3_ESaISB_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  invoke void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %i.e)
          to label %_ZNSt8_Rb_treeIN6Assimp3IFC14ConversionData14MeshCacheIndexESt4pairIKS3_St3setIjSt4lessIjESaIjEEESt10_Select1stISB_ES7_IS3_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #31
  unreachable

_ZNSt8_Rb_treeIN6Assimp3IFC14ConversionData14MeshCacheIndexESt4pairIKS3_St3setIjSt4lessIjESaIjEEESt10_Select1stISB_ES7_IS3_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit: ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #29
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8_Rb_treeIN6Assimp3IFC14ConversionData14MeshCacheIndexESt4pairIKS3_St3setIjSt4lessIjESaIjEEESt10_Select1stISB_ES7_IS3_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind memory(none) }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold noreturn }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { noreturn }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { builtin nounwind }
attributes #30 = { nounwind }
attributes #31 = { noreturn nounwind }
attributes #32 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!10, !11}
!llvm.ident = !{!12}

!0 = distinct !{!0, !13}
!1 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2 = distinct !{!2, !13}
!3 = distinct !{!3, !13}
!4 = distinct !{!4, !13}
!5 = distinct !{ptr @_ZN6Assimp3IFC11TempOpeningD2Ev, ptr @_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!6 = distinct !{ptr @_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7 = distinct !{!7, !13}
!8 = distinct !{!8, !13}
!9 = distinct !{!9, !13}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{}
!16 = !{i64 4}
!17 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!18 = !{i64 8}
!19 = distinct !{!19, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!20 = distinct !{!20, !19, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!21 = distinct !{!21, !19, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!22 = !{!21, !20}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, i1 true, !"_ZSt11make_sharedIN6Assimp3IFC8TempMeshEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_"}
!25 = distinct !{!25, !24, !"_ZSt11make_sharedIN6Assimp3IFC8TempMeshEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_: argument 0"}
!26 = distinct !{!26, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!27 = distinct !{!27, !26, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!28 = distinct !{!28, !26, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!29 = distinct !{!29, !13}
!30 = distinct !{!30, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!31 = distinct !{!31, !30, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!32 = distinct !{!32, !30, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!33 = distinct !{!33, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!34 = distinct !{!34, !33, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!35 = distinct !{!35, !33, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!36 = !{!25}
!37 = !{!28, !27}
!38 = !{!32, !31}
!39 = !{!35, !34}
!40 = distinct !{!40, i1 true, !"_ZSt19__relocate_object_aIN6Assimp3IFC11TempOpeningES2_SaIS2_EEvPT_PT0_RT1_"}
!41 = distinct !{!41, !40, !"_ZSt19__relocate_object_aIN6Assimp3IFC11TempOpeningES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!42 = distinct !{!42, !40, !"_ZSt19__relocate_object_aIN6Assimp3IFC11TempOpeningES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!43 = !{!41}
!44 = !{!42}
!45 = !{!41, !42}
!46 = distinct !{!46, i1 true, !"_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev"}
!47 = distinct !{!47, !46, !"_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev: argument 0"}
!48 = !{!47}
!49 = distinct !{!49, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!50 = distinct !{!50, !49, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!51 = distinct !{!51, !49, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!52 = distinct !{!52, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!53 = distinct !{!53, !52, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!54 = distinct !{!54, !52, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!55 = distinct !{!55, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!56 = distinct !{!56, !55, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!57 = distinct !{!57, !55, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!58 = distinct !{!58, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!59 = distinct !{!59, !58, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!60 = distinct !{!60, !58, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!61 = distinct !{!61, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!62 = distinct !{!62, !61, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!63 = distinct !{!63, !61, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !13}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!68 = distinct !{!68, !67, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!69 = distinct !{!69, !67, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!70 = distinct !{!70, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!71 = distinct !{!71, !70, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!72 = distinct !{!72, !70, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!73 = distinct !{!73, !13}
!74 = !{!51, !50}
!75 = !{!54, !53}
!76 = !{!57, !56}
!77 = !{!60, !59}
!78 = !{!63, !62}
!79 = !{!69, !68}
!80 = !{!72, !71}
!81 = distinct !{!81, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!82 = distinct !{!82, !81, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!83 = distinct !{!83, !81, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!86 = distinct !{!86, !85, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!87 = distinct !{!87, !85, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!88 = distinct !{!88, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!89 = distinct !{!89, !88, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!90 = distinct !{!90, !88, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!91 = distinct !{!91, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!92 = distinct !{!92, !91, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!93 = distinct !{!93, !91, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!94 = distinct !{!94, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!95 = distinct !{!95, !94, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!96 = distinct !{!96, !94, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!97 = distinct !{!97, i1 true, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_"}
!98 = distinct !{!98, !97, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!99 = distinct !{!99, i1 true, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_"}
!100 = distinct !{!100, !99, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!101 = distinct !{!101, i1 true, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_"}
!102 = distinct !{!102, !101, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !13}
!106 = distinct !{!106, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!107 = distinct !{!107, !106, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!108 = distinct !{!108, !106, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!109 = distinct !{!109, !13}
!110 = !{!83, !82}
!111 = !{!87, !86}
!112 = !{!90, !89}
!113 = !{!93, !92}
!114 = !{!96, !95}
!115 = !{!98}
!116 = !{!100}
!117 = !{!102}
!118 = !{!108, !107}
!119 = distinct !{!119, i1 true, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_"}
!120 = distinct !{!120, !119, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, i1 true, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_"}
!123 = distinct !{!123, !122, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!124 = distinct !{!124, !13}
!125 = distinct !{!125, i1 true, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_"}
!126 = distinct !{!126, !125, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!127 = !{!120}
!128 = !{!123}
!129 = !{!126}
!130 = distinct !{!130, !13}
!131 = distinct !{!131, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!132 = distinct !{!132, !131, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!133 = distinct !{!133, !131, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!134 = distinct !{!134, !13}
!135 = distinct !{!135, i1 true, !"_ZmlIdE10aiVector3tIT_ERK12aiMatrix4x4tIS1_ERKS2_"}
!136 = distinct !{!136, !135, !"_ZmlIdE10aiVector3tIT_ERK12aiMatrix4x4tIS1_ERKS2_: argument 0"}
!137 = distinct !{!137, i1 true, !"_ZmlIdE10aiVector3tIT_ERK12aiMatrix3x3tIS1_ERKS2_"}
!138 = distinct !{!138, !137, !"_ZmlIdE10aiVector3tIT_ERK12aiMatrix3x3tIS1_ERKS2_: argument 0"}
!139 = distinct !{!139, !13}
!140 = distinct !{!140, !13}
!141 = distinct !{!141, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!142 = distinct !{!142, !141, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!143 = distinct !{!143, !141, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!144 = distinct !{!144, i1 true, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_"}
!145 = distinct !{!145, !144, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!146 = distinct !{!146, i1 true, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_"}
!147 = distinct !{!147, !146, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!148 = distinct !{!148, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!149 = distinct !{!149, !148, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!150 = distinct !{!150, !148, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!151 = distinct !{!151, i1 true, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_"}
!152 = distinct !{!152, !151, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!153 = distinct !{!153, i1 true, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_"}
!154 = distinct !{!154, !153, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!155 = distinct !{!155, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!156 = distinct !{!156, !155, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!157 = distinct !{!157, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!158 = distinct !{!158, !157, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!159 = distinct !{!159, !13}
!160 = distinct !{!160, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!161 = distinct !{!161, !160, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!162 = distinct !{!162, !160, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!163 = distinct !{!163, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!164 = distinct !{!164, !163, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!165 = distinct !{!165, !163, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!166 = distinct !{!166, i1 true, !"_ZplIdE10aiVector3tIT_ERKS2_S4_"}
!167 = distinct !{!167, !166, !"_ZplIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!168 = distinct !{!168, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!169 = distinct !{!169, !168, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!170 = distinct !{!170, !168, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!171 = distinct !{!171, i1 true, !"_ZplIdE10aiVector3tIT_ERKS2_S4_"}
!172 = distinct !{!172, !171, !"_ZplIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!173 = distinct !{!173, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!174 = distinct !{!174, !173, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!175 = distinct !{!175, !173, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!176 = distinct !{!176, i1 true, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_"}
!177 = distinct !{!177, !176, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!178 = distinct !{!178, !13}
!179 = distinct !{!179, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!180 = distinct !{!180, !179, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!181 = distinct !{!181, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!182 = distinct !{!182, !181, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!183 = distinct !{!183, i1 true, !"_ZplIdE10aiVector3tIT_ERKS2_S4_"}
!184 = distinct !{!184, !183, !"_ZplIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!185 = distinct !{!185, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!186 = distinct !{!186, !185, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!187 = distinct !{!187, !185, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!188 = distinct !{!188, !13}
end_hunk_7
