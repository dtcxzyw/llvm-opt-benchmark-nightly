Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/AMFImporter_Postprocess?download=true
inline.NumInlined: 1393
inline.NumDeleted: 732
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp11AMFImporter25Postprocess_BuildMaterialERK11AMFMaterial:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %i.f, ptr %i.g, align 8
  store ptr %i.f, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %.sroa.014.017 = load ptr, ptr %i.j, align 8    ; 2 uses
  %.not18 = icmp eq ptr %.sroa.014.017, %i.j
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.m = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #24
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc:                                           ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  invoke void @_ZN6Assimp11AMFImporter12SPP_MaterialC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull align 8 dereferenceable(88) %2)
          to label %bb.g unwind label %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp11AMFImporter12SPP_MaterialEEEED2Ev.exit9.i.i.i

_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp11AMFImporter12SPP_MaterialEEEED2Ev.exit9.i.i.i: ; preds = %.noexc
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 104) #23
  br label %.body

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.014.019 = phi ptr [ %.sroa.014.017, %.lr.ph ], [ %.sroa.014.0, %bb.f ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.014.019, i64 16
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 8
  switch i32 %i.s, label %bb.f [
    i32 0, label %bb.c
    i32 6, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  store ptr %i.q, ptr %i.k, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.t = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.q, ptr %i.u, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.c) #21
  %i.v = load i64, ptr %i.e, align 8
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.e, align 8
  br label %bb.f

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %bb.a, %._crit_edge
  %lpad.loopexit.split-lp30 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.c
  %.sroa.014.0 = load ptr, ptr %.sroa.014.019, align 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.014.0, %i.j
  br i1 %.not, label %._crit_edge, label %bb.b

bb.g:                                             ; preds = %.noexc
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l) #21
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8
  %i.aa = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.aa, %i.f
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EED2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZN6Assimp11AMFImporter13SPP_CompositeD2Ev.exit.i.i.i
  %.09.i.i.i = phi ptr [ %i.ab, %_ZN6Assimp11AMFImporter13SPP_CompositeD2Ev.exit.i.i.i ], [ %i.aa, %bb.g ] ; 4 uses
  %i.ab = load ptr, ptr %.09.i.i.i, align 8       ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 40 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN6Assimp11AMFImporter13SPP_CompositeD2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ag = load i64, ptr %i.ae, align 8
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #23
  br label %_ZN6Assimp11AMFImporter13SPP_CompositeD2Ev.exit.i.i.i

_ZN6Assimp11AMFImporter13SPP_CompositeD2Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 56) #23
  %.not.i.i.i = icmp eq ptr %i.ab, %i.f
  br i1 %.not.i.i.i, label %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EED2Ev.exit.i: ; preds = %_ZN6Assimp11AMFImporter13SPP_CompositeD2Ev.exit.i.i.i, %bb.g
  %i.ai = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not8.i.i1.i = icmp eq ptr %i.ai, %i.c
  br i1 %.not8.i.i1.i, label %_ZNSt7__cxx1110_List_baseIP11AMFMetadataSaIS2_EED2Ev.exit.i, label %.lr.ph.i.i2.i

.lr.ph.i.i2.i:                                    ; preds = %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EED2Ev.exit.i, %.lr.ph.i.i2.i
  %.09.i.i3.i = phi ptr [ %i.aj, %.lr.ph.i.i2.i ], [ %i.ai, %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EED2Ev.exit.i ] ; 2 uses
  %i.aj = load ptr, ptr %.09.i.i3.i, align 8      ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i3.i, i64 noundef 24) #23
  %.not.i.i4.i = icmp eq ptr %i.aj, %i.c
  br i1 %.not.i.i4.i, label %_ZNSt7__cxx1110_List_baseIP11AMFMetadataSaIS2_EED2Ev.exit.i, label %.lr.ph.i.i2.i, !llvm.loop !4

_ZNSt7__cxx1110_List_baseIP11AMFMetadataSaIS2_EED2Ev.exit.i: ; preds = %.lr.ph.i.i2.i, %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EED2Ev.exit.i
  %i.ak = load ptr, ptr %2, align 8               ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.a
  br i1 %i.al, label %_ZN6Assimp11AMFImporter12SPP_MaterialD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1110_List_baseIP11AMFMetadataSaIS2_EED2Ev.exit.i
  %i.am = load i64, ptr %i.a, align 8
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #23
  br label %_ZN6Assimp11AMFImporter12SPP_MaterialD2Ev.exit

_ZN6Assimp11AMFImporter12SPP_MaterialD2Ev.exit:   ; preds = %_ZNSt7__cxx1110_List_baseIP11AMFMetadataSaIS2_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp11AMFImporter12SPP_MaterialEEEED2Ev.exit9.i.i.i
  %.pn = phi { ptr, i32 } [ %i.o, %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp11AMFImporter12SPP_MaterialEEEED2Ev.exit9.i.i.i ], [ %lpad.loopexit.split-lp30, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6Assimp11AMFImporter12SPP_MaterialD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp11AMFImporter12SPP_MaterialD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not8.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN6Assimp11AMFImporter13SPP_CompositeD2Ev.exit.i.i
  %.09.i.i = phi ptr [ %i.c, %_ZN6Assimp11AMFImporter13SPP_CompositeD2Ev.exit.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %.09.i.i, align 8          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 40 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN6Assimp11AMFImporter13SPP_CompositeD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #23
  br label %_ZN6Assimp11AMFImporter13SPP_CompositeD2Ev.exit.i.i

_ZN6Assimp11AMFImporter13SPP_CompositeD2Ev.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 56) #23
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !3

_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EED2Ev.exit: ; preds = %_ZN6Assimp11AMFImporter13SPP_CompositeD2Ev.exit.i.i, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not8.i.i1 = icmp eq ptr %i.k, %i.j
  br i1 %.not8.i.i1, label %_ZNSt7__cxx1110_List_baseIP11AMFMetadataSaIS2_EED2Ev.exit, label %.lr.ph.i.i2

.lr.ph.i.i2:                                      ; preds = %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EED2Ev.exit, %.lr.ph.i.i2
  %.09.i.i3 = phi ptr [ %i.l, %.lr.ph.i.i2 ], [ %i.k, %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EED2Ev.exit ] ; 2 uses
  %i.l = load ptr, ptr %.09.i.i3, align 8         ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i3, i64 noundef 24) #23
  %.not.i.i4 = icmp eq ptr %i.l, %i.j
  br i1 %.not.i.i4, label %_ZNSt7__cxx1110_List_baseIP11AMFMetadataSaIS2_EED2Ev.exit, label %.lr.ph.i.i2, !llvm.loop !4

_ZNSt7__cxx1110_List_baseIP11AMFMetadataSaIS2_EED2Ev.exit: ; preds = %.lr.ph.i.i2, %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EED2Ev.exit
  %i.m = load ptr, ptr %0, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1110_List_baseIP11AMFMetadataSaIS2_EED2Ev.exit
  %i.p = load i64, ptr %i.n, align 8
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1110_List_baseIP11AMFMetadataSaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp11AMFImporter30Postprocess_BuildConstellationER16AMFConstellationRSt6vectorIP6aiNodeSaIS5_EE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::list.84", align 8 ; 20 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %3, ptr %i.b, align 8
  store ptr %3, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store i64 0, ptr %i.c, align 8
  %i.d = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #24
          to label %bb.b unwind label %bb.ad      ; 9 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.d)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  %i.g = icmp ugt i64 %i.f, 1023
  br i1 %i.g, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = trunc nuw nsw i64 %i.f to i32
  store i32 %i.i, ptr %i.d, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 1 %i.k, i64 %i.f, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  store i8 0, ptr %i.l, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %.sroa.0124.0137 = load ptr, ptr %i.m, align 8  ; 2 uses
  %.not138 = icmp eq ptr %.sroa.0124.0137, %i.m
  br i1 %.not138, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.r, %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.n = load ptr, ptr %3, align 8
  %i.o = icmp eq ptr %i.n, %3
  br i1 %i.o, label %bb.t, label %bb.w

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 1144) #23
  br label %bb.ae

.lr.ph:                                           ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.r
  %.sroa.0124.0139 = phi ptr [ %.sroa.0124.0, %bb.r ], [ %.sroa.0124.0137, %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0124.0139, i64 16
  %i.r = load ptr, ptr %i.q, align 8              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8
  switch i32 %i.t, label %bb.f [
    i32 6, label %bb.r
    i32 4, label %bb.i
  ]

bb.f:                                             ; preds = %.lr.ph
  %i.u = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.7)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.u) #21
  br label %.loopexit.split-lp

bb.i:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 80 ; 2 uses
  %i.x = invoke noundef zeroext i1 @_ZNK6Assimp11AMFImporter18Find_ConvertedNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIP6aiNodeSaISB_EEPSB_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.a)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  br i1 %i.x, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZNK6Assimp11AMFImporter17Throw_ID_NotFoundERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.w) #22
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.q, %bb.p, %bb.o, %bb.m, %bb.i, %bb.g, %bb.k
  %lpad.loopexit.split-lp164 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.m:                                             ; preds = %bb.j
  %i.y = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #24
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 23 uses

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.y)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1096
  store ptr %i.d, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.ab = load float, ptr %i.aa, align 8          ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 116
  %i.ad = load float, ptr %i.ac, align 4          ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  %i.af = load float, ptr %i.ae, align 8          ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 1028 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 1032 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 1036 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 1040 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 1044 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 1048 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 1052 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 1056 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 1060 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 1064 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 1068 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 1072 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 1076 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 1080 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.y, i64 1084 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 1088 ; 5 uses
  %i.aw = load float, ptr %i.ag, align 4          ; 4 uses
  %i.ax = load float, ptr %i.ah, align 8          ; 3 uses
  %i.ay = fmul float %i.ax, 0.000000e+00          ; 2 uses
  %i.az = fadd float %i.aw, %i.ay
  %i.ba = load float, ptr %i.ai, align 4          ; 3 uses
  %i.bb = load float, ptr %i.aj, align 8          ; 3 uses
  %i.bc = call float @llvm.fmuladd.f32(float %i.aw, float 0.000000e+00, float %i.ax)
  %i.bd = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bg = insertelement <2 x float> %i.bf, float %i.bc, i64 1
  %i.bh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> zeroinitializer, <2 x float> %i.bg)
  %i.bi = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> zeroinitializer, <2 x float> %i.bh) ; 3 uses
  %i.bl = call float @llvm.fmuladd.f32(float %i.aw, float 0.000000e+00, float %i.ay)
  %i.bm = fadd float %i.ba, %i.bl
  %i.bn = call float @llvm.fmuladd.f32(float %i.bb, float 0.000000e+00, float %i.bm) ; 4 uses
  %i.bo = fmul float %i.ad, %i.ax
  %i.bp = call float @llvm.fmuladd.f32(float %i.ab, float %i.aw, float %i.bo)
  %i.bq = call float @llvm.fmuladd.f32(float %i.af, float %i.ba, float %i.bp)
  %i.br = fadd float %i.bb, %i.bq                 ; 4 uses
  store <2 x float> %i.bk, ptr %i.ag, align 4
  store float %i.bn, ptr %i.ai, align 4
  store float %i.br, ptr %i.aj, align 8
  %i.bs = load float, ptr %i.ak, align 4          ; 4 uses
  %i.bt = load float, ptr %i.al, align 8          ; 3 uses
  %i.bu = fmul float %i.bt, 0.000000e+00          ; 2 uses
  %i.bv = fadd float %i.bs, %i.bu
  %i.bw = call float @llvm.fmuladd.f32(float %i.bs, float 0.000000e+00, float %i.bt)
  %i.bx = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.by = insertelement <2 x float> %i.bx, float %i.bw, i64 1
  %i.bz = call float @llvm.fmuladd.f32(float %i.bs, float 0.000000e+00, float %i.bu)
  %i.ca = fmul float %i.ad, %i.bt
  %i.cb = call float @llvm.fmuladd.f32(float %i.ab, float %i.bs, float %i.ca)
  %i.cc = load float, ptr %i.ao, align 4          ; 4 uses
  %i.cd = load float, ptr %i.ap, align 8          ; 3 uses
  %i.ce = fmul float %i.cd, 0.000000e+00          ; 2 uses
  %i.cf = fadd float %i.cc, %i.ce
  %i.cg = call float @llvm.fmuladd.f32(float %i.cc, float 0.000000e+00, float %i.cd)
  %i.ch = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.ci = insertelement <2 x float> %i.ch, float %i.cg, i64 1
  %i.cj = call float @llvm.fmuladd.f32(float %i.cc, float 0.000000e+00, float %i.ce)
  %i.ck = fmul float %i.ad, %i.cd
  %i.cl = call float @llvm.fmuladd.f32(float %i.ab, float %i.cc, float %i.ck)
  %i.cm = load float, ptr %i.as, align 4          ; 4 uses
  %i.cn = load float, ptr %i.at, align 8          ; 3 uses
  %i.co = fmul float %i.cn, 0.000000e+00          ; 2 uses
  %i.cp = fadd float %i.cm, %i.co
  %i.cq = load float, ptr %i.au, align 4          ; 3 uses
  %i.cr = load float, ptr %i.av, align 8          ; 3 uses
  %i.cs = call float @llvm.fmuladd.f32(float %i.cm, float 0.000000e+00, float %i.cn)
  %i.ct = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.cw = insertelement <2 x float> %i.cv, float %i.cs, i64 1
  %i.cx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> zeroinitializer, <2 x float> %i.cw)
  %i.cy = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> zeroinitializer, <2 x float> %i.cx) ; 4 uses
  %i.db = call float @llvm.fmuladd.f32(float %i.cm, float 0.000000e+00, float %i.co)
  %i.dc = fadd float %i.cq, %i.db
  %i.dd = call float @llvm.fmuladd.f32(float %i.cr, float 0.000000e+00, float %i.dc) ; 4 uses
  %i.de = fmul float %i.ad, %i.cn
  %i.df = call float @llvm.fmuladd.f32(float %i.ab, float %i.cm, float %i.de)
  %i.dg = call float @llvm.fmuladd.f32(float %i.af, float %i.cq, float %i.df)
  %i.dh = fadd float %i.cr, %i.dg                 ; 4 uses
  store <2 x float> %i.da, ptr %i.as, align 4
  store float %i.dd, ptr %i.au, align 4
  store float %i.dh, ptr %i.av, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.r, i64 124
  %i.dj = extractelement <2 x float> %i.bk, i64 1 ; 3 uses
  %i.dk = fmul float %i.dj, 0.000000e+00          ; 2 uses
  %i.dl = extractelement <2 x float> %i.bk, i64 0 ; 4 uses
  %i.dm = fadd float %i.dl, %i.dk
  %i.dn = call float @llvm.fmuladd.f32(float %i.dl, float 0.000000e+00, float %i.dk)
  %i.do = call float @llvm.fmuladd.f32(float %i.bn, float 0.000000e+00, float %i.dn)
  %i.dp = fadd float %i.br, %i.do                 ; 3 uses
  %i.dq = load <2 x float>, ptr %i.am, align 4    ; 4 uses
  %i.dr = load float, ptr %i.an, align 8
  %i.ds = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> zeroinitializer, <2 x float> %i.by)
  %i.du = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> zeroinitializer, <2 x float> %i.dt) ; 5 uses
  %i.dw = shufflevector <2 x float> %i.dq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dx = shufflevector <4 x float> %i.dw, <4 x float> <float poison, float 0.000000e+00, float -0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.dy = insertelement <4 x float> <float poison, float -0.000000e+00, float 0.000000e+00, float -0.000000e+00>, float %i.bz, i64 0
  %i.dz = fadd <4 x float> %i.dx, %i.dy
  %i.ea = shufflevector <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, <4 x float> %i.dw, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.eb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ea, <4 x float> zeroinitializer, <4 x float> %i.dz) ; 4 uses
  %i.ec = extractelement <2 x float> %i.dq, i64 0
  %i.ed = call float @llvm.fmuladd.f32(float %i.af, float %i.ec, float %i.cb)
  store <2 x float> %i.dv, ptr %i.ak, align 4
  %i.ee = extractelement <4 x float> %i.eb, i64 0
  store float %i.ee, ptr %i.am, align 4
  %i.ef = extractelement <2 x float> %i.dv, i64 1 ; 2 uses
  %i.eg = extractelement <2 x float> %i.dv, i64 0 ; 3 uses
  %i.eh = load float, ptr %i.aq, align 4          ; 3 uses
  %i.ei = load float, ptr %i.ar, align 8          ; 3 uses
  %i.ej = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> zeroinitializer, <2 x float> %i.ci)
  %i.em = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.en = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.en, <2 x float> zeroinitializer, <2 x float> %i.el) ; 6 uses
  %i.ep = fadd float %i.eh, %i.cj
  %i.eq = call float @llvm.fmuladd.f32(float %i.ei, float 0.000000e+00, float %i.ep) ; 4 uses
  %i.er = call float @llvm.fmuladd.f32(float %i.af, float %i.eh, float %i.cl)
  %i.es = fadd float %i.ei, %i.er                 ; 4 uses
  store <2 x float> %i.eo, ptr %i.ao, align 4
  store float %i.eq, ptr %i.aq, align 4
  store float %i.es, ptr %i.ar, align 8
  %i.et = extractelement <2 x float> %i.eo, i64 1
  %i.eu = fmul float %i.et, 0.000000e+00          ; 2 uses
  %i.ev = extractelement <2 x float> %i.eo, i64 0
  %i.ew = fadd float %i.ev, %i.eu
  %4 = fadd float %i.dr, %i.ed                    ; 4 uses
  store float %4, ptr %i.an, align 8
  %i.ex = load float, ptr %i.di, align 4          ; 2 uses
  %5 = call noundef float @cosf(float noundef %i.ex) #21 ; 8 uses
  %6 = call noundef float @sinf(float noundef %i.ex) #21 ; 2 uses
  %i.ey = fneg float %6                           ; 4 uses
  %i.ez = fmul float %i.dj, %5
  %i.fa = call float @llvm.fmuladd.f32(float %i.dl, float 0.000000e+00, float %i.ez)
  %i.fb = fmul float %i.dj, %i.ey
  %i.fc = call float @llvm.fmuladd.f32(float %i.dl, float 0.000000e+00, float %i.fb)
  %i.fd = call float @llvm.fmuladd.f32(float %5, float %i.bn, float %i.fc)
  %i.fe = call float @llvm.fmuladd.f32(float %i.br, float 0.000000e+00, float %i.fd) ; 3 uses
  %i.ff = fmul float %i.ef, %i.ey
  %i.fg = call float @llvm.fmuladd.f32(float %i.eg, float 0.000000e+00, float %i.ff)
  %i.fh = shufflevector <2 x float> %i.dv, <2 x float> %i.eo, <4 x i32> <i32 poison, i32 1, i32 3, i32 3>
  %i.fi = insertelement <4 x float> %i.fh, float %i.fg, i64 0
  %i.fj = insertelement <4 x float> <float 1.000000e+00, float 0.000000e+00, float poison, float poison>, float %5, i64 2
  %i.fk = insertelement <4 x float> %i.fj, float %i.ey, i64 3
  %i.fl = fmul <4 x float> %i.fi, %i.fk           ; 2 uses
  %i.fm = extractelement <4 x float> %i.fl, i64 1
  %i.fn = fadd float %i.eg, %i.fm
  %i.fo = fmul float %i.ef, %5
  %i.fp = call float @llvm.fmuladd.f32(float %i.eg, float 0.000000e+00, float %i.fo)
  %i.fq = shufflevector <2 x float> %i.dv, <2 x float> %i.eo, <4 x i32> <i32 poison, i32 0, i32 2, i32 2>
  %i.fr = insertelement <4 x float> %i.fq, float %5, i64 0
  %i.fs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fr, <4 x float> %i.eb, <4 x float> %i.fl) ; 2 uses
  %i.ft = shufflevector <2 x float> %i.eo, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fu = shufflevector <4 x float> %i.eb, <4 x float> %i.ft, <4 x i32> <i32 poison, i32 0, i32 4, i32 poison>
  %i.fv = insertelement <4 x float> %i.fu, float %4, i64 0
  %i.fw = insertelement <4 x float> %i.fv, float %5, i64 3
  %i.fx = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %i.eq, i64 3
  %i.fy = insertelement <4 x float> %i.fs, float %i.eu, i64 2
  %i.fz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fw, <4 x float> %i.fx, <4 x float> %i.fy) ; 5 uses
  %i.ga = extractelement <4 x float> %i.fz, i64 1
  %i.gb = fadd float %4, %i.ga                    ; 3 uses
  %i.gc = extractelement <2 x float> %i.da, i64 1 ; 3 uses
  %i.gd = fmul float %i.gc, 0.000000e+00          ; 2 uses
  %i.ge = extractelement <2 x float> %i.da, i64 0 ; 2 uses
  %i.gf = fadd float %i.ge, %i.gd
  %i.gg = fmul float %i.gc, %5
  %i.gh = fmul float %i.gc, %i.ey
  %i.gi = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.gj = insertelement <4 x float> %i.gi, float %i.es, i64 0
  %i.gk = insertelement <4 x float> %i.gj, float %i.eq, i64 1
  %i.gl = shufflevector <4 x float> %i.fz, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 poison, i32 poison>
  %i.gm = insertelement <4 x float> %i.gl, float %i.gg, i64 2
  %i.gn = insertelement <4 x float> %i.gm, float %i.gh, i64 3
  %i.go = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gk, <4 x float> zeroinitializer, <4 x float> %i.gn) ; 6 uses
  %i.gp = extractelement <4 x float> %i.go, i64 1
  %i.gq = fadd float %i.es, %i.gp                 ; 3 uses
  %i.gr = extractelement <4 x float> %i.go, i64 3
  %i.gs = call float @llvm.fmuladd.f32(float %5, float %i.dd, float %i.gr)
  %i.gt = call float @llvm.fmuladd.f32(float %i.dh, float 0.000000e+00, float %i.gs) ; 3 uses
  %i.gu = call float @llvm.fmuladd.f32(float %i.ge, float 0.000000e+00, float %i.gd)
  store float %i.fe, ptr %i.ai, align 4
  store float %i.dp, ptr %i.aj, align 8
  %i.gv = extractelement <4 x float> %i.fz, i64 0
  store float %i.gv, ptr %i.am, align 4
  store float %i.gb, ptr %i.an, align 8
  %i.gw = extractelement <4 x float> %i.go, i64 0
  store float %i.gw, ptr %i.aq, align 4
  store float %i.gq, ptr %i.ar, align 8
  store float %i.gt, ptr %i.au, align 4
  %i.gx = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %i.gy = getelementptr inbounds nuw i8, ptr %i.r, i64 132
  %i.gz = insertelement <2 x float> <float 0.000000e+00, float poison>, float %6, i64 1 ; 4 uses
  %i.ha = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.hd = insertelement <2 x float> %i.hc, float %i.fa, i64 1
  %i.he = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gz, <2 x float> %i.hb, <2 x float> %i.hd)
  %i.hf = insertelement <2 x float> poison, float %i.br, i64 0
  %i.hg = shufflevector <2 x float> %i.hf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hg, <2 x float> zeroinitializer, <2 x float> %i.he) ; 4 uses
  store <2 x float> %i.hh, ptr %i.ag, align 4
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.hj = fmul <3 x float> %i.hi, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00> ; 2 uses
  %i.hk = shufflevector <2 x float> %i.hh, <2 x float> poison, <3 x i32> zeroinitializer
  %i.hl = insertelement <3 x float> poison, float %i.fe, i64 0
  %i.hm = shufflevector <3 x float> %i.hl, <3 x float> poison, <3 x i32> zeroinitializer
  %i.hn = insertelement <3 x float> poison, float %i.dp, i64 0
  %i.ho = shufflevector <3 x float> %i.hn, <3 x float> poison, <3 x i32> zeroinitializer
  %i.hp = shufflevector <4 x float> %i.eb, <4 x float> poison, <2 x i32> zeroinitializer
  %i.hq = insertelement <2 x float> poison, float %i.fn, i64 0
  %i.hr = insertelement <2 x float> %i.hq, float %i.fp, i64 1
  %i.hs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gz, <2 x float> %i.hp, <2 x float> %i.hr)
  %i.ht = insertelement <2 x float> poison, float %4, i64 0
  %i.hu = shufflevector <2 x float> %i.ht, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hu, <2 x float> zeroinitializer, <2 x float> %i.hs) ; 4 uses
  store <2 x float> %i.hv, ptr %i.ak, align 4
  %i.hw = shufflevector <2 x float> %i.hv, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.hx = fmul <3 x float> %i.hw, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00> ; 2 uses
  %i.hy = shufflevector <2 x float> %i.hv, <2 x float> poison, <3 x i32> zeroinitializer
  %i.hz = shufflevector <4 x float> %i.fz, <4 x float> poison, <3 x i32> zeroinitializer
  %i.ia = insertelement <3 x float> poison, float %i.gb, i64 0
  %i.ib = shufflevector <3 x float> %i.ia, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ic = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.id = shufflevector <2 x float> %i.ic, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ie = shufflevector <4 x float> %i.fs, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.if = insertelement <2 x float> %i.ie, float %i.ew, i64 0
  %i.ig = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gz, <2 x float> %i.id, <2 x float> %i.if)
  %i.ih = insertelement <2 x float> poison, float %i.es, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ii, <2 x float> zeroinitializer, <2 x float> %i.ig) ; 4 uses
  %i.ik = shufflevector <2 x float> %i.ij, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  store <2 x float> %i.ij, ptr %i.ao, align 4
  %i.il = shufflevector <2 x float> %i.ij, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.im = fmul <3 x float> %i.il, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00> ; 2 uses
  %i.in = shufflevector <3 x float> %i.im, <3 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.io = shufflevector <2 x float> %i.hh, <2 x float> %i.hv, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.ip = insertelement <4 x float> %i.io, float %i.dd, i64 0
  %i.iq = shufflevector <4 x float> %i.ip, <4 x float> %i.ik, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ir = shufflevector <3 x float> %i.hj, <3 x float> %i.hx, <4 x i32> <i32 poison, i32 0, i32 3, i32 poison>
  %i.is = insertelement <4 x float> %i.ir, float %i.gu, i64 0
  %i.it = shufflevector <4 x float> %i.is, <4 x float> %i.in, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.iu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iq, <4 x float> zeroinitializer, <4 x float> %i.it) ; 2 uses
  %i.iv = extractelement <4 x float> %i.iu, i64 0
  %i.iw = fadd float %i.dh, %i.iv                 ; 3 uses
  store float %i.iw, ptr %i.av, align 8
  %i.ix = shufflevector <2 x float> %i.ij, <2 x float> poison, <3 x i32> zeroinitializer
  %i.iy = shufflevector <4 x float> %i.go, <4 x float> poison, <3 x i32> zeroinitializer
  %i.iz = insertelement <3 x float> poison, float %i.gq, i64 0
  %i.ja = shufflevector <3 x float> %i.iz, <3 x float> poison, <3 x i32> zeroinitializer
  %i.jb = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.jc = shufflevector <2 x float> %i.jb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jd = shufflevector <4 x float> %i.go, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.je = insertelement <2 x float> %i.jd, float %i.gf, i64 0
  %i.jf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gz, <2 x float> %i.jc, <2 x float> %i.je)
  %i.jg = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ji = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jh, <2 x float> zeroinitializer, <2 x float> %i.jf) ; 4 uses
  %i.jj = shufflevector <2 x float> %i.ji, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  store <2 x float> %i.ji, ptr %i.as, align 4
  %i.jk = shufflevector <2 x float> %i.ji, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.jl = fmul <3 x float> %i.jk, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00> ; 2 uses
  %i.jm = shufflevector <4 x float> %i.fz, <4 x float> %i.go, <4 x i32> <i32 poison, i32 0, i32 4, i32 poison>
  %i.jn = insertelement <4 x float> %i.jm, float %i.fe, i64 0
  %i.jo = shufflevector <4 x float> %i.jn, <4 x float> %i.jj, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.jp = shufflevector <3 x float> %i.jl, <3 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.jq = shufflevector <4 x float> %i.iu, <4 x float> %i.jp, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.jr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jo, <4 x float> zeroinitializer, <4 x float> %i.jq) ; 4 uses
  %i.js = extractelement <4 x float> %i.jr, i64 0
  %i.jt = fadd float %i.dp, %i.js                 ; 4 uses
  %i.ju = insertelement <2 x float> poison, float %i.jt, i64 0
  %i.jv = shufflevector <2 x float> %i.ju, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jw = extractelement <4 x float> %i.jr, i64 1
  %i.jx = fadd float %i.gb, %i.jw                 ; 4 uses
  %i.jy = insertelement <2 x float> poison, float %i.jx, i64 0
  %i.jz = shufflevector <2 x float> %i.jy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ka = extractelement <4 x float> %i.jr, i64 2
  %i.kb = fadd float %i.gq, %i.ka                 ; 4 uses
  %i.kc = insertelement <2 x float> poison, float %i.kb, i64 0
  %i.kd = shufflevector <2 x float> %i.kc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ke = extractelement <4 x float> %i.jr, i64 3
  %i.kf = call float @llvm.fmuladd.f32(float %i.gt, float 0.000000e+00, float %i.ke)
  %i.kg = fadd float %i.iw, %i.kf                 ; 4 uses
  %i.kh = load float, ptr %i.gx, align 8          ; 2 uses
  %7 = call noundef float @cosf(float noundef %i.kh) #21 ; 2 uses
  %8 = call noundef float @sinf(float noundef %i.kh) #21 ; 2 uses
  %i.ki = fneg float %8
  %i.kj = shufflevector <2 x float> %i.ji, <2 x float> poison, <3 x i32> zeroinitializer
  %i.kk = insertelement <3 x float> <float poison, float poison, float 0.000000e+00>, float %8, i64 0
  %i.kl = insertelement <3 x float> %i.kk, float %7, i64 1 ; 4 uses
  %i.km = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.kj, <3 x float> %i.kl, <3 x float> %i.jl)
  %i.kn = insertelement <3 x float> <float poison, float poison, float 0.000000e+00>, float %7, i64 0
  %i.ko = insertelement <3 x float> %i.kn, float %i.ki, i64 1 ; 4 uses
  %i.kp = insertelement <3 x float> poison, float %i.gt, i64 0
  %i.kq = shufflevector <3 x float> %i.kp, <3 x float> poison, <3 x i32> zeroinitializer
  %i.kr = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ko, <3 x float> %i.kq, <3 x float> %i.km)
  %i.ks = insertelement <3 x float> poison, float %i.iw, i64 0
  %i.kt = shufflevector <3 x float> %i.ks, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ku = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.kt, <3 x float> zeroinitializer, <3 x float> %i.kr) ; 6 uses
  %i.kv = extractelement <3 x float> %i.ku, i64 2 ; 2 uses
  %i.kw = fmul float %i.kv, 0.000000e+00
  %i.kx = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ix, <3 x float> %i.kl, <3 x float> %i.im)
  %i.ky = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ko, <3 x float> %i.iy, <3 x float> %i.kx)
  %i.kz = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ja, <3 x float> zeroinitializer, <3 x float> %i.ky) ; 6 uses
  %i.la = extractelement <3 x float> %i.kz, i64 2 ; 2 uses
  %i.lb = fmul float %i.la, 0.000000e+00
  %i.lc = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hy, <3 x float> %i.kl, <3 x float> %i.hx)
  %i.ld = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ko, <3 x float> %i.hz, <3 x float> %i.lc)
  %i.le = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ib, <3 x float> zeroinitializer, <3 x float> %i.ld) ; 6 uses
  %i.lf = extractelement <3 x float> %i.le, i64 2 ; 2 uses
  %i.lg = fmul float %i.lf, 0.000000e+00
  %i.lh = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hk, <3 x float> %i.kl, <3 x float> %i.hj)
  %i.li = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ko, <3 x float> %i.hm, <3 x float> %i.lh)
  %i.lj = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ho, <3 x float> zeroinitializer, <3 x float> %i.li) ; 6 uses
  %i.lk = extractelement <3 x float> %i.lj, i64 1 ; 2 uses
  store float %i.lk, ptr %i.ag, align 4
  %i.ll = extractelement <3 x float> %i.lj, i64 2 ; 2 uses
  store float %i.ll, ptr %i.ah, align 8
  %i.lm = extractelement <3 x float> %i.lj, i64 0 ; 3 uses
  store float %i.lm, ptr %i.ai, align 4
  store float %i.jt, ptr %i.aj, align 8
  %i.ln = extractelement <3 x float> %i.le, i64 1 ; 2 uses
  store float %i.ln, ptr %i.ak, align 4
  store float %i.lf, ptr %i.al, align 8
  %i.lo = extractelement <3 x float> %i.le, i64 0 ; 3 uses
  store float %i.lo, ptr %i.am, align 4
  store float %i.jx, ptr %i.an, align 8
  %i.lp = extractelement <3 x float> %i.kz, i64 1 ; 2 uses
  store float %i.lp, ptr %i.ao, align 4
  store float %i.la, ptr %i.ap, align 8
  %i.lq = extractelement <3 x float> %i.kz, i64 0 ; 3 uses
  store float %i.lq, ptr %i.aq, align 4
  store float %i.kb, ptr %i.ar, align 8
  %i.lr = extractelement <3 x float> %i.ku, i64 1 ; 2 uses
  store float %i.lr, ptr %i.as, align 4
  store float %i.kv, ptr %i.at, align 8
  %i.ls = extractelement <3 x float> %i.ku, i64 0 ; 3 uses
  store float %i.ls, ptr %i.au, align 4
  store float %i.kg, ptr %i.av, align 8
  %i.lt = load float, ptr %i.gy, align 4          ; 2 uses
  %9 = call noundef float @cosf(float noundef %i.lt) #21 ; 2 uses
  %10 = call noundef float @sinf(float noundef %i.lt) #21 ; 2 uses
  %i.lu = fneg float %10
  %i.lv = shufflevector <3 x float> %i.lj, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.lw = insertelement <2 x float> poison, float %10, i64 0
  %i.lx = insertelement <2 x float> %i.lw, float %9, i64 1 ; 4 uses
  %i.ly = fmul <2 x float> %i.lv, %i.lx
  %i.lz = insertelement <2 x float> poison, float %9, i64 0
  %i.ma = insertelement <2 x float> %i.lz, float %i.lu, i64 1 ; 4 uses
  %i.mb = shufflevector <3 x float> %i.lj, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.mc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ma, <2 x float> %i.mb, <2 x float> %i.ly)
  %i.md = shufflevector <3 x float> %i.lj, <3 x float> poison, <2 x i32> zeroinitializer
  %i.me = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.md, <2 x float> zeroinitializer, <2 x float> %i.mc)
  %i.mf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jv, <2 x float> zeroinitializer, <2 x float> %i.me)
  %i.mg = fmul float %i.ll, 0.000000e+00
  %i.mh = call float @llvm.fmuladd.f32(float %i.lk, float 0.000000e+00, float %i.mg) ; 2 uses
  %i.mi = fadd float %i.lm, %i.mh
  %i.mj = call float @llvm.fmuladd.f32(float %i.jt, float 0.000000e+00, float %i.mi)
  %i.mk = call float @llvm.fmuladd.f32(float %i.lm, float 0.000000e+00, float %i.mh)
  %i.ml = fadd float %i.jt, %i.mk
  %i.mm = shufflevector <3 x float> %i.le, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.mn = fmul <2 x float> %i.mm, %i.lx
  %i.mo = shufflevector <3 x float> %i.le, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.mp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ma, <2 x float> %i.mo, <2 x float> %i.mn)
  %i.mq = shufflevector <3 x float> %i.le, <3 x float> poison, <2 x i32> zeroinitializer
  %i.mr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mq, <2 x float> zeroinitializer, <2 x float> %i.mp)
  %i.ms = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jz, <2 x float> zeroinitializer, <2 x float> %i.mr)
  %i.mt = call float @llvm.fmuladd.f32(float %i.ln, float 0.000000e+00, float %i.lg) ; 2 uses
  %i.mu = fadd float %i.lo, %i.mt
  %i.mv = call float @llvm.fmuladd.f32(float %i.jx, float 0.000000e+00, float %i.mu)
  %i.mw = call float @llvm.fmuladd.f32(float %i.lo, float 0.000000e+00, float %i.mt)
  %i.mx = fadd float %i.jx, %i.mw
  %i.my = shufflevector <3 x float> %i.kz, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.mz = fmul <2 x float> %i.my, %i.lx
  %i.na = shufflevector <3 x float> %i.kz, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.nb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ma, <2 x float> %i.na, <2 x float> %i.mz)
  %i.nc = shufflevector <3 x float> %i.kz, <3 x float> poison, <2 x i32> zeroinitializer
  %i.nd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nc, <2 x float> zeroinitializer, <2 x float> %i.nb)
  %i.ne = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kd, <2 x float> zeroinitializer, <2 x float> %i.nd)
  %i.nf = call float @llvm.fmuladd.f32(float %i.lp, float 0.000000e+00, float %i.lb) ; 2 uses
  %i.ng = fadd float %i.lq, %i.nf
  %i.nh = call float @llvm.fmuladd.f32(float %i.kb, float 0.000000e+00, float %i.ng)
  %i.ni = call float @llvm.fmuladd.f32(float %i.lq, float 0.000000e+00, float %i.nf)
  %i.nj = fadd float %i.kb, %i.ni
  %i.nk = shufflevector <3 x float> %i.ku, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.nl = fmul <2 x float> %i.nk, %i.lx
  %i.nm = shufflevector <3 x float> %i.ku, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.nn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ma, <2 x float> %i.nm, <2 x float> %i.nl)
  %i.no = shufflevector <3 x float> %i.ku, <3 x float> poison, <2 x i32> zeroinitializer
  %i.np = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.no, <2 x float> zeroinitializer, <2 x float> %i.nn)
  %i.nq = insertelement <2 x float> poison, float %i.kg, i64 0
  %i.nr = shufflevector <2 x float> %i.nq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ns = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nr, <2 x float> zeroinitializer, <2 x float> %i.np)
  %i.nt = call float @llvm.fmuladd.f32(float %i.lr, float 0.000000e+00, float %i.kw) ; 2 uses
  %i.nu = fadd float %i.ls, %i.nt
  %i.nv = call float @llvm.fmuladd.f32(float %i.kg, float 0.000000e+00, float %i.nu)
  %i.nw = call float @llvm.fmuladd.f32(float %i.ls, float 0.000000e+00, float %i.nt)
  %i.nx = fadd float %i.kg, %i.nw
  store <2 x float> %i.mf, ptr %i.ag, align 4
  store float %i.mj, ptr %i.ai, align 4
  store float %i.ml, ptr %i.aj, align 8
  store <2 x float> %i.ms, ptr %i.ak, align 4
  store float %i.mv, ptr %i.am, align 4
  store float %i.mx, ptr %i.an, align 8
  store <2 x float> %i.ne, ptr %i.ao, align 4
  store float %i.nh, ptr %i.aq, align 4
  store float %i.nj, ptr %i.ar, align 8
  store <2 x float> %i.ns, ptr %i.as, align 4
  store float %i.nv, ptr %i.au, align 4
  store float %i.nx, ptr %i.av, align 8
  %i.ny = getelementptr inbounds nuw i8, ptr %i.y, i64 1104
  store i32 1, ptr %i.ny, align 8
  %i.nz = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #24
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.oa = getelementptr inbounds nuw i8, ptr %i.y, i64 1112 ; 2 uses
  store ptr %i.nz, ptr %i.oa, align 8
  %i.ob = load ptr, ptr %i.a, align 8
  invoke void @_ZN6Assimp13SceneCombiner4CopyEPP6aiNodePKS1_(ptr noundef nonnull %i.nz, ptr noundef %i.ob)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  %i.oc = load ptr, ptr %i.oa, align 8
  %i.od = load ptr, ptr %i.oc, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 1096
  store ptr %i.y, ptr %i.oe, align 8
  %i.of = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %_ZNSt7__cxx114listIP6aiNodeSaIS2_EE9push_backERKS2_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSt7__cxx114listIP6aiNodeSaIS2_EE9push_backERKS2_.exit: ; preds = %bb.q
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  store ptr %i.y, ptr %i.og, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.of, ptr noundef nonnull align 8 dereferenceable(24) %3) #21
  %i.oh = load i64, ptr %i.c, align 8
  %i.oi = add i64 %i.oh, 1
  store i64 %i.oi, ptr %i.c, align 8
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx114listIP6aiNodeSaIS2_EE9push_backERKS2_.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.sroa.0124.0 = load ptr, ptr %.sroa.0124.0139, align 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0124.0, %i.m
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.s:                                             ; preds = %bb.n
  %i.oj = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 1144) #23
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.s, %bb.h
  %.pn29 = phi { ptr, i32 } [ %i.oj, %bb.s ], [ %i.v, %bb.h ], [ %lpad.loopexit.split-lp164, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.ae

bb.t:                                             ; preds = %._crit_edge
  %i.ok = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ok, ptr noundef nonnull @.str.8)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr nonnull %i.ok, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.af unwind label %bb.ad

bb.v:                                             ; preds = %bb.t
  %i.ol = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ok) #21
  br label %bb.ae

bb.w:                                             ; preds = %._crit_edge
  %i.om = load i64, ptr %i.c, align 8             ; 2 uses
  %i.on = trunc i64 %i.om to i32
  %i.oo = getelementptr inbounds nuw i8, ptr %i.d, i64 1104
  store i32 %i.on, ptr %i.oo, align 8
  %i.op = shl i64 %i.om, 3
  %i.oq = and i64 %i.op, 34359738360
  %i.or = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.oq) #24
          to label %bb.x unwind label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.os = getelementptr inbounds nuw i8, ptr %i.d, i64 1112 ; 2 uses
  store ptr %i.or, ptr %i.os, align 8
  %.sroa.056.0140 = load ptr, ptr %3, align 8     ; 2 uses
  %.not133141 = icmp eq ptr %.sroa.056.0140, %3
  br i1 %.not133141, label %._crit_edge146, label %.lr.ph145

._crit_edge146:                                   ; preds = %.lr.ph145, %bb.x
  %i.ot = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ou = load ptr, ptr %i.ot, align 8            ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ow = load ptr, ptr %i.ov, align 8
  %.not.i = icmp eq ptr %i.ou, %i.ow
  br i1 %.not.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %._crit_edge146
  store ptr %i.d, ptr %i.ou, align 8
  %i.ox = load ptr, ptr %i.ot, align 8
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  store ptr %i.oy, ptr %i.ot, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

bb.z:                                             ; preds = %._crit_edge146
  %i.oz = load ptr, ptr %2, align 8               ; 4 uses
  %i.pa = ptrtoint ptr %i.ou to i64
  %i.pb = ptrtoint ptr %i.oz to i64               ; 2 uses
  %i.pc = sub i64 %i.pa, %i.pb                    ; 5 uses
  %i.pd = icmp eq i64 %i.pc, 9223372036854775800
  br i1 %i.pd, label %bb.aa, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #22
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.aa
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.z
  %i.pe = ashr exact i64 %i.pc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.pe, i64 1)
  %i.pf = add nsw i64 %.sroa.speculated.i.i.i, %i.pe ; 2 uses
  %i.pg = icmp ult i64 %i.pf, %i.pe
  %i.ph = call i64 @llvm.umin.i64(i64 %i.pf, i64 1152921504606846975)
  %i.pi = select i1 %i.pg, i64 1152921504606846975, i64 %i.ph ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.pi, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.pj = shl nuw nsw i64 %i.pi, 3
  %i.pk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pj) #24
          to label %.noexc50 unwind label %bb.ad  ; 4 uses

.noexc50:                                         ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.pl = getelementptr inbounds i8, ptr %i.pk, i64 %i.pc ; 2 uses
  store ptr %i.d, ptr %i.pl, align 8
  %i.pm = icmp sgt i64 %i.pc, 0
  br i1 %i.pm, label %bb.ab, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.ab:                                            ; preds = %.noexc50
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.pk, ptr align 8 %i.oz, i64 %i.pc, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.ab, %.noexc50
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  %.not.i17.i.i = icmp eq ptr %i.oz, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.po = load ptr, ptr %i.ov, align 8
end_hunk_0
begin_hunk_1_@_ZN6Assimp11AMFImporter12SPP_MaterialC2ERKS1_:bb.a

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1
  store i8 %i.j, ptr %i.i, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.o, ptr %i.q, align 8
  store ptr %i.o, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store i64 0, ptr %i.r, align 8
  %i.s = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not4.i.i = icmp eq ptr %i.s, %i.p
  br i1 %.not4.i.i, label %_ZNSt7__cxx114listIP11AMFMetadataSaIS2_EEC2ERKS4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %.noexc.i8
  %.sroa.01.05.i.i = phi ptr [ %i.z, %.noexc.i8 ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  %i.t = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %.noexc.i8 unwind label %bb.d  ; 2 uses

.noexc.i8:                                        ; preds = %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = load ptr, ptr %i.u, align 8
  store ptr %i.w, ptr %i.v, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.o) #21
  %i.x = load i64, ptr %i.r, align 8
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.r, align 8
  %i.z = load ptr, ptr %.sroa.01.05.i.i, align 8  ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.p
  br i1 %.not.i.i, label %_ZNSt7__cxx114listIP11AMFMetadataSaIS2_EEC2ERKS4_.exit, label %.lr.ph.i.i, !llvm.loop !115

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %i.o, align 8             ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.ab, %i.o
  br i1 %.not8.i.i.i, label %.body, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.ab, %bb.d ] ; 2 uses
  %i.ac = load ptr, ptr %.09.i.i.i, align 8       ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #23
  %.not.i.i.i = icmp eq ptr %i.ac, %i.o
  br i1 %.not.i.i.i, label %.body, label %.lr.ph.i.i.i, !llvm.loop !4

_ZNSt7__cxx114listIP11AMFMetadataSaIS2_EEC2ERKS4_.exit: ; preds = %.noexc.i8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.af = load ptr, ptr %i.ae, align 8
  store ptr %i.af, ptr %i.ad, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ag, ptr %i.ai, align 8
  store ptr %i.ag, ptr %i.ag, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.aj, align 8
  %i.ak = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not4.i.i9 = icmp eq ptr %i.ak, %i.ah
  br i1 %.not4.i.i9, label %_ZNSt7__cxx114listIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i10

.lr.ph.i.i10:                                     ; preds = %_ZNSt7__cxx114listIP11AMFMetadataSaIS2_EEC2ERKS4_.exit, %.noexc.i12
  %.sroa.01.05.i.i11 = phi ptr [ %i.am, %.noexc.i12 ], [ %i.ak, %_ZNSt7__cxx114listIP11AMFMetadataSaIS2_EEC2ERKS4_.exit ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i11, i64 16
  invoke void @_ZNSt7__cxx114listIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EE9_M_insertIJRKS3_EEEvSt14_List_iteratorIS3_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(40) %i.al)
          to label %.noexc.i12 unwind label %.body14

.noexc.i12:                                       ; preds = %.lr.ph.i.i10
  %i.am = load ptr, ptr %.sroa.01.05.i.i11, align 8 ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.am, %i.ah
  br i1 %.not.i.i13, label %_ZNSt7__cxx114listIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i10, !llvm.loop !116

.body14:                                          ; preds = %.lr.ph.i.i10
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ag) #21
  %i.ao = load ptr, ptr %i.o, align 8             ; 2 uses
  %.not8.i.i = icmp eq ptr %i.ao, %i.o
  br i1 %.not8.i.i, label %.body, label %.lr.ph.i.i16

_ZNSt7__cxx114listIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EEC2ERKS5_.exit: ; preds = %.noexc.i12, %_ZNSt7__cxx114listIP11AMFMetadataSaIS2_EEC2ERKS4_.exit
  ret void

.lr.ph.i.i16:                                     ; preds = %.body14, %.lr.ph.i.i16
  %.09.i.i = phi ptr [ %i.ap, %.lr.ph.i.i16 ], [ %i.ao, %.body14 ] ; 2 uses
  %i.ap = load ptr, ptr %.09.i.i, align 8         ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #23
  %.not.i.i17 = icmp eq ptr %i.ap, %i.o
  br i1 %.not.i.i17, label %.body, label %.lr.ph.i.i16, !llvm.loop !4

.body:                                            ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i16, %.body14, %bb.d
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.d ], [ %i.an, %.body14 ], [ %i.an, %.lr.ph.i.i16 ], [ %i.aa, %.lr.ph.i.i.i ]
  %i.aq = load ptr, ptr %0, align 8               ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.b
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.as = load i64, ptr %i.b, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx114listIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EE9_M_insertIJRKS3_EEEvSt14_List_iteratorIS3_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #24 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %2, align 8
  store ptr %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load i64, ptr %i.i, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.j, ptr %i.a, align 8
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.l = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp11AMFImporter13SPP_CompositeEEEED2Ev.exit9.i ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i.i
  store ptr %i.l, ptr %i.e, align 8
  %i.m = load i64, ptr %i.a, align 8
  store i64 %i.m, ptr %i.g, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i, %bb.a
  %i.n = phi ptr [ %i.l, %.noexc.i ], [ %i.g, %bb.a ] ; 2 uses
  switch i64 %i.j, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx114listIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EE14_M_create_nodeIJRKS3_EEEPSt10_List_nodeIS3_EDpOT_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.o = load i8, ptr %i.h, align 1
  store i8 %i.o, ptr %i.n, align 1
  br label %_ZNSt7__cxx114listIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EE14_M_create_nodeIJRKS3_EEEPSt10_List_nodeIS3_EDpOT_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.h, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx114listIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EE14_M_create_nodeIJRKS3_EEEPSt10_List_nodeIS3_EDpOT_.exit

_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp11AMFImporter13SPP_CompositeEEEED2Ev.exit9.i: ; preds = %.noexc.i.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 56) #23
  resume { ptr, i32 } %i.p

_ZNSt7__cxx114listIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EE14_M_create_nodeIJRKS3_EEEPSt10_List_nodeIS3_EDpOT_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.b, %bb.c
  %i.q = load i64, ptr %i.a, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.q, ptr %i.r, align 8
  %i.s = load ptr, ptr %i.e, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef %1) #21
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #17

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nounwind }
attributes #22 = { noreturn }
attributes #23 = { builtin nounwind }
attributes #24 = { builtin allocsize(0) }

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
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!13 = distinct !{!13, !12, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!14 = distinct !{!14, !12, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!15 = distinct !{!15, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!16 = distinct !{!16, !15, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!17 = distinct !{!17, !15, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!18 = !{!14, !13}
!19 = !{!17, !16}
!20 = distinct !{!20, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!21 = distinct !{!21, !20, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!22 = distinct !{!22, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!23 = distinct !{!23, !22, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!24 = distinct !{!24, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!25 = distinct !{!25, !24, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!26 = distinct !{!26, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!27 = distinct !{!27, !26, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!28 = distinct !{!28, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!29 = distinct !{!29, !28, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!30 = distinct !{!30, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!31 = distinct !{!31, !30, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!32 = distinct !{!32, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!33 = distinct !{!33, !32, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !10}
!36 = distinct !{!36, !10}
!37 = !{!21}
!38 = !{!23, !21}
!39 = !{!25}
!40 = !{!27}
!41 = !{!29}
!42 = !{!31}
!43 = !{!33}
!44 = distinct !{!44, !10}
!45 = distinct !{!45, !10}
!46 = distinct !{!46, !11}
!47 = distinct !{!47, !11}
!48 = distinct !{!48, !10}
!49 = distinct !{!49, !11}
!50 = distinct !{!50, !10}
!51 = distinct !{!51, !10}
!52 = distinct !{!52, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!53 = distinct !{!53, !52, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!54 = distinct !{!54, !52, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!55 = distinct !{!55, i1 true, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!56 = distinct !{!56, !55, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!57 = distinct !{!57, !55, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!58 = distinct !{!58, !11}
!59 = distinct !{!59, !10}
!60 = distinct !{!60, !10}
!61 = distinct !{!61, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!62 = distinct !{!62, !61, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!63 = distinct !{!63, !61, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!64 = distinct !{!64, i1 true, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!65 = distinct !{!65, !64, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!66 = distinct !{!66, !64, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!67 = distinct !{!67, !10}
!68 = distinct !{!68, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!69 = distinct !{!69, !68, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!70 = distinct !{!70, !68, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!71 = distinct !{!71, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!72 = distinct !{!72, !71, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!73 = distinct !{!73, !71, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!74 = distinct !{!74, i1 true, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!75 = distinct !{!75, !74, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!76 = distinct !{!76, !74, !"_ZSt19__relocate_object_aI9aiColor4tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!77 = distinct !{!77, !10}
!78 = distinct !{!78, !10}
!79 = distinct !{!79, !10}
!80 = !{!54, !53}
!81 = !{!57, !56}
!82 = !{!63, !62}
!83 = !{!66, !65}
!84 = !{!70, !69}
!85 = !{!73, !72}
!86 = !{!76, !75}
!87 = !{i64 8}
!88 = distinct !{!88, !10}
!89 = distinct !{!89, !10}
!90 = distinct !{!90, !10}
!91 = distinct !{!91, !10}
!92 = distinct !{!92, !10}
!93 = distinct !{!93, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!94 = distinct !{!94, !93, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!95 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!96 = !{!94}
!97 = distinct !{!97, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!98 = distinct !{!98, !97, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!99 = distinct !{!99, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!100 = distinct !{!100, !99, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!101 = !{!98}
!102 = !{!100}
!103 = !{!100, !98}
!104 = distinct !{!104, i1 true, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!105 = distinct !{!105, !104, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!106 = distinct !{!106, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!107 = distinct !{!107, !106, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!108 = distinct !{!108, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!109 = distinct !{!109, !108, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!110 = !{!105}
!111 = !{!107}
!112 = !{!109}
!113 = !{!109, !107, !105}
!114 = distinct !{!114, !10}
!115 = distinct !{!115, !10}
!116 = distinct !{!116, !10}
end_hunk_1
