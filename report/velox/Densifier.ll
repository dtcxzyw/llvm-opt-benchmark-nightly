inline.NumInlined: 353
inline.NumDeleted: 220
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4geos4geom4util9Densifier18DensifyTransformer20transformCoordinatesEPKNS0_18CoordinateSequenceEPKNS0_8GeometryE:bb.a
  br i1 %.not, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit._ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE5clearEv.exit_crit_edge, label %bb.k

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit._ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE5clearEv.exit_crit_edge: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit
  %.pre = load ptr, ptr %5, align 8, !tbaa !28
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE5clearEv.exit

bb.g:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIN4geos4geom10CoordinateEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit17

bb.i:                                             ; preds = %bb.d, %.loopexit
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit17, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdlPv(ptr noundef nonnull %i.v) #19
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit17

bb.k:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = invoke noundef i64 %i.af(ptr noundef nonnull align 8 dereferenceable(48) %i.z)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ah = icmp ult i64 %i.ag, 2
  %.pre28 = load ptr, ptr %5, align 8, !tbaa !28  ; 5 uses
  br i1 %i.ah, label %bb.m, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE5clearEv.exit

bb.m:                                             ; preds = %bb.l
  %i.ai = load ptr, ptr %.pre28, align 8, !tbaa !21 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre28, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !18
  %.not.i.i = icmp eq ptr %i.ak, %i.ai
  br i1 %.not.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN4geos4geom10CoordinateES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4geos4geom10CoordinateES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.m
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !18
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE5clearEv.exit

bb.n:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE5clearEv.exit: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit._ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE5clearEv.exit_crit_edge, %_ZSt8_DestroyIPN4geos4geom10CoordinateES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.m, %bb.l
  %i.am = phi ptr [ %.pre, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit._ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE5clearEv.exit_crit_edge ], [ %.pre28, %_ZSt8_DestroyIPN4geos4geom10CoordinateES2_EvT_S4_RSaIT0_E.exit.i.i ], [ %.pre28, %bb.m ], [ %.pre28, %bb.l ]
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !30
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !31 ; 2 uses
  store ptr null, ptr %5, align 8, !tbaa !28
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  invoke void %i.at(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef %i.am, i64 noundef 0)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE5clearEv.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.p:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE5clearEv.exit
  %i.av = load ptr, ptr %5, align 8, !tbaa !28    ; 3 uses
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %_ZNSt10unique_ptrISt6vectorIN4geos4geom10CoordinateESaIS3_EESt14default_deleteIS5_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !21 ; 2 uses
  %.not.i.i.i.i.i18 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i18, label %_ZNKSt14default_deleteISt6vectorIN4geos4geom10CoordinateESaIS3_EEEclEPS5_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdlPv(ptr noundef nonnull %i.aw) #19
  br label %_ZNKSt14default_deleteISt6vectorIN4geos4geom10CoordinateESaIS3_EEEclEPS5_.exit.i

_ZNKSt14default_deleteISt6vectorIN4geos4geom10CoordinateESaIS3_EEEclEPS5_.exit.i: ; preds = %bb.r, %bb.q
  call void @_ZdlPv(ptr noundef nonnull %i.av) #19
  br label %_ZNSt10unique_ptrISt6vectorIN4geos4geom10CoordinateESaIS3_EESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrISt6vectorIN4geos4geom10CoordinateESaIS3_EESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.p, %_ZNKSt14default_deleteISt6vectorIN4geos4geom10CoordinateESaIS3_EEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.ax = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit22, label %bb.s

bb.s:                                             ; preds = %_ZNSt10unique_ptrISt6vectorIN4geos4geom10CoordinateESaIS3_EESt14default_deleteIS5_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.ax) #19
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit22

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit22: ; preds = %bb.s, %_ZNSt10unique_ptrISt6vectorIN4geos4geom10CoordinateESaIS3_EESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.t:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.au, %bb.o ], [ %i.al, %bb.n ]
  call void @_ZNSt10unique_ptrISt6vectorIN4geos4geom10CoordinateESaIS3_EESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #16
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit17

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit17: ; preds = %bb.j, %bb.i, %bb.t, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.t ], [ %i.ab, %bb.h ], [ %i.ac, %bb.i ], [ %i.ac, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit17, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit17 ], [ %i.aa, %bb.g ]
  %i.ay = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i23, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit26, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdlPv(ptr noundef nonnull %i.ay) #19
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit26

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit26: ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN4geos4geom4util9Densifier13densifyPointsESt6vectorINS0_10CoordinateESaIS4_EEdPKNS0_14PrecisionModelE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.2") align 8 %0, ptr nofree noundef readonly align 8 captures(none) %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.geos::geom::CoordinateList", align 8 ; 28 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.29", align 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store ptr %4, ptr %i.a, align 8, !tbaa !36
  store ptr %4, ptr %4, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  store i64 0, ptr %i.b, align 8, !tbaa !40
  %i.c = load ptr, ptr %1, align 8, !tbaa !43     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43   ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -24 ; 2 uses
  %i.g = icmp ult ptr %i.c, %i.f
  br i1 %i.g, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = getelementptr i8, ptr %i.c, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  br label %.critedge.i

._crit_edge:                                      ; preds = %_ZN4geos4geom14CoordinateList6insertESt14_List_iteratorINS0_10CoordinateEERKS3_b.exit59
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !18
  %.pre97 = load ptr, ptr %1, align 8, !tbaa !21  ; 2 uses
  %.pre98 = load ptr, ptr %4, align 8
  %i.m = icmp eq ptr %4, %.pre98
  %i.n = ptrtoint ptr %.pre to i64
  %i.o = ptrtoint ptr %.pre97 to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = getelementptr i8, ptr %.pre97, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -24      ; 3 uses
  br i1 %i.m, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load <2 x double>, ptr %i.r, align 8
  %i.v = load <2 x double>, ptr %i.t, align 8
  %i.w = fcmp oeq <2 x double> %i.u, %i.v         ; 2 uses
  %i.x = extractelement <2 x i1> %i.w, i64 0
  %i.y = extractelement <2 x i1> %i.w, i64 1
  %.0.i.i = select i1 %i.x, i1 %i.y, i1 false
  br i1 %.0.i.i, label %_ZN4geos4geom14CoordinateList6insertESt14_List_iteratorINS0_10CoordinateEERKS3_b.exit, label %.critedge.i

.critedge.i:                                      ; preds = %._crit_edge.thread, %bb.b, %._crit_edge
  %i.z = phi ptr [ %i.l, %._crit_edge.thread ], [ %i.r, %bb.b ], [ %i.r, %._crit_edge ]
  %i.aa = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #18
          to label %.noexc unwind label %bb.u     ; 2 uses

.noexc:                                           ; preds = %.critedge.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !24
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull %4) #16
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !44
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.b, align 8, !tbaa !44
  br label %_ZN4geos4geom14CoordinateList6insertESt14_List_iteratorINS0_10CoordinateEERKS3_b.exit

.lr.ph:                                           ; preds = %bb.a, %_ZN4geos4geom14CoordinateList6insertESt14_List_iteratorINS0_10CoordinateEERKS3_b.exit59
  %.sroa.071.096 = phi ptr [ %i.af, %_ZN4geos4geom14CoordinateList6insertESt14_List_iteratorINS0_10CoordinateEERKS3_b.exit59 ], [ %i.c, %bb.a ] ; 4 uses
  %i.ae = load <2 x double>, ptr %.sroa.071.096, align 8, !tbaa !25 ; 7 uses
  %.sroa.12.0..sroa.071.0.72.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.071.096, i64 16
  %.sroa.12.0.copyload = load double, ptr %.sroa.12.0..sroa.071.0.72.sroa_idx, align 8, !tbaa !25
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.071.096, i64 24 ; 3 uses
  %i.ag = load <2 x double>, ptr %i.af, align 8, !tbaa !25 ; 5 uses
  %.sroa.22.24..sroa.068.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.071.096, i64 40
  %.sroa.22.24.copyload = load double, ptr %.sroa.22.24..sroa.068.0..sroa_idx, align 8, !tbaa !25
  %i.ah = load ptr, ptr %4, align 8
  %i.ai = icmp eq ptr %4, %i.ah
  br i1 %i.ai, label %.critedge.i43, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load <2 x double>, ptr %i.ak, align 8
  %i.am = fcmp oeq <2 x double> %i.ae, %i.al      ; 2 uses
  %i.an = extractelement <2 x i1> %i.am, i64 0
  %i.ao = extractelement <2 x i1> %i.am, i64 1
  %.0.i.i42 = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %.0.i.i42, label %bb.d, label %.critedge.i43

.critedge.i43:                                    ; preds = %bb.c, %.lr.ph
  %i.ap = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #18
          to label %.noexc45 unwind label %bb.h   ; 3 uses

.noexc45:                                         ; preds = %.critedge.i43
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <2 x double> %i.ae, ptr %i.aq, align 8, !tbaa !25
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store double %.sroa.12.0.copyload, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !25
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull %4) #16
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !44
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.b, align 8, !tbaa !44
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.noexc45
  %i.at = fsub <2 x double> %i.ae, %i.ag          ; 2 uses
  %i.au = fmul <2 x double> %i.at, %i.at          ; 2 uses
  %shift = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.au, %shift
  %i.av = extractelement <2 x double> %foldExtExtBinop, i64 0
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.av) ; 3 uses
  %i.aw = fdiv double %sqrt.i.i, %2
  %i.ax = call double @llvm.ceil.f64(double %i.aw) ; 2 uses
  %i.ay = fcmp ogt double %i.ax, f0x41DFFFFFFFC00000
  br i1 %i.ay, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.az = call ptr @__cxa_allocate_exception(i64 16) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos4util13GEOSExceptionE, i64 16), ptr %i.az, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.az, ptr nonnull @_ZTIN4geos4util13GEOSExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
          to label %bb.v unwind label %bb.i

bb.h:                                             ; preds = %.critedge.i43
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.j

bb.i:                                             ; preds = %bb.f, %bb.g
  %.030 = phi i1 [ false, %bb.g ], [ true, %bb.f ] ; 2 uses
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bd = load ptr, ptr %5, align 8, !tbaa !47    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.bd) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br i1 %.030, label %bb.j, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br i1 %.030, label %bb.j, label %.body

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn3694 = phi { ptr, i32 } [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.az) #16
  br label %.body

bb.k:                                             ; preds = %bb.d
  %i.bg = fptosi double %i.ax to i32              ; 3 uses
  %i.bh = icmp sgt i32 %i.bg, 1
  br i1 %i.bh, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.bi = uitofp nneg i32 %i.bg to double
  %i.bj = fdiv double %sqrt.i.i, %i.bi
  %7 = extractelement <2 x double> %i.ae, i64 0
  %foldExtExtBinop110 = fsub <2 x double> %i.ag, %i.ae
  %i.bk = extractelement <2 x double> %foldExtExtBinop110, i64 0
  %i.bl = extractelement <2 x double> %i.ae, i64 1
  %foldExtExtBinop112 = fsub <2 x double> %i.ag, %i.ae
  %i.bm = extractelement <2 x double> %foldExtExtBinop112, i64 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN4geos4geom14CoordinateList6insertESt14_List_iteratorINS0_10CoordinateEERKS3_b.exit54
  %.03295 = phi i32 [ 1, %bb.l ], [ %i.cl, %_ZN4geos4geom14CoordinateList6insertESt14_List_iteratorINS0_10CoordinateEERKS3_b.exit54 ] ; 2 uses
  %i.bn = uitofp nneg i32 %.03295 to double
  %i.bo = fmul double %i.bj, %i.bn
  %i.bp = fdiv double %i.bo, %sqrt.i.i            ; 2 uses
  %i.bq = fmul double %i.bk, %i.bp
  %i.br = fadd double %7, %i.bq                   ; 2 uses
  %i.bs = fmul double %i.bm, %i.bp
  %i.bt = fadd double %i.bl, %i.bs                ; 2 uses
  %i.bu = load i32, ptr %3, align 8, !tbaa !51
  %i.bv = icmp eq i32 %i.bu, 1
  br i1 %i.bv, label %_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = invoke noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16) %3, double noundef %i.br)
          to label %.noexc48 unwind label %bb.p

.noexc48:                                         ; preds = %bb.n
  %i.bx = invoke noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16) %3, double noundef %i.bt)
          to label %_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit unwind label %bb.p

_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit: ; preds = %bb.m, %.noexc48
  %.sroa.0.0 = phi double [ %i.br, %bb.m ], [ %i.bw, %.noexc48 ] ; 2 uses
  %.sroa.9.0 = phi double [ %i.bt, %bb.m ], [ %i.bx, %.noexc48 ] ; 2 uses
  %i.by = load ptr, ptr %4, align 8
  %i.bz = icmp eq ptr %4, %i.by
  br i1 %i.bz, label %.critedge.i51, label %bb.o

bb.o:                                             ; preds = %_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !36  ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !52
  %i.cd = fcmp oeq double %.sroa.0.0, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cf = load double, ptr %i.ce, align 8
  %i.cg = fcmp oeq double %.sroa.9.0, %i.cf
  %.0.i.i50 = select i1 %i.cd, i1 %i.cg, i1 false
  br i1 %.0.i.i50, label %_ZN4geos4geom14CoordinateList6insertESt14_List_iteratorINS0_10CoordinateEERKS3_b.exit54, label %.critedge.i51

.critedge.i51:                                    ; preds = %bb.o, %_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit
  %i.ch = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #18
          to label %.noexc53 unwind label %bb.p   ; 4 uses

.noexc53:                                         ; preds = %.critedge.i51
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store double %.sroa.0.0, ptr %i.ci, align 8, !tbaa !25
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store double %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !25
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  store double +qnan, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !25
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull %4) #16
  %i.cj = load i64, ptr %i.b, align 8, !tbaa !44
  %i.ck = add i64 %i.cj, 1
  store i64 %i.ck, ptr %i.b, align 8, !tbaa !44
  br label %_ZN4geos4geom14CoordinateList6insertESt14_List_iteratorINS0_10CoordinateEERKS3_b.exit54

_ZN4geos4geom14CoordinateList6insertESt14_List_iteratorINS0_10CoordinateEERKS3_b.exit54: ; preds = %.noexc53, %bb.o
  %i.cl = add nuw nsw i32 %.03295, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cl, %i.bg
  br i1 %exitcond.not, label %_ZN4geos4geom14CoordinateList6insertESt14_List_iteratorINS0_10CoordinateEERKS3_b.exit59, label %bb.m, !llvm.loop !54

bb.p:                                             ; preds = %.critedge.i51, %.noexc48, %bb.n
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %bb.k
  %i.cn = load ptr, ptr %4, align 8
  %i.co = icmp eq ptr %4, %i.cn
  br i1 %i.co, label %.critedge.i56, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load <2 x double>, ptr %i.cq, align 8
  %i.cs = fcmp oeq <2 x double> %i.ag, %i.cr      ; 2 uses
  %i.ct = extractelement <2 x i1> %i.cs, i64 0
  %i.cu = extractelement <2 x i1> %i.cs, i64 1
  %.0.i.i55 = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %.0.i.i55, label %_ZN4geos4geom14CoordinateList6insertESt14_List_iteratorINS0_10CoordinateEERKS3_b.exit59, label %.critedge.i56

.critedge.i56:                                    ; preds = %bb.r, %bb.q
  %i.cv = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #18
          to label %.noexc58 unwind label %bb.s   ; 3 uses

.noexc58:                                         ; preds = %.critedge.i56
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store <2 x double> %i.ag, ptr %i.cw, align 8, !tbaa !25
  %.sroa.22.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  store double %.sroa.22.24.copyload, ptr %.sroa.22.24..sroa_idx, align 8, !tbaa !25
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull %4) #16
  %i.cx = load i64, ptr %i.b, align 8, !tbaa !44
  %i.cy = add i64 %i.cx, 1
  store i64 %i.cy, ptr %i.b, align 8, !tbaa !44
  br label %_ZN4geos4geom14CoordinateList6insertESt14_List_iteratorINS0_10CoordinateEERKS3_b.exit59

bb.s:                                             ; preds = %.critedge.i56
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN4geos4geom14CoordinateList6insertESt14_List_iteratorINS0_10CoordinateEERKS3_b.exit59: ; preds = %_ZN4geos4geom14CoordinateList6insertESt14_List_iteratorINS0_10CoordinateEERKS3_b.exit54, %.noexc58, %bb.r
  %i.da = icmp ult ptr %i.af, %i.f
  br i1 %i.da, label %.lr.ph, label %._crit_edge, !llvm.loop !55

_ZN4geos4geom14CoordinateList6insertESt14_List_iteratorINS0_10CoordinateEERKS3_b.exit: ; preds = %.noexc, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.db = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %.noexc60 unwind label %bb.u   ; 3 uses

.noexc60:                                         ; preds = %_ZN4geos4geom14CoordinateList6insertESt14_List_iteratorINS0_10CoordinateEERKS3_b.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, i8 0, i64 24, i1 false), !noalias !56
  store ptr %i.db, ptr %0, align 8, !tbaa !28, !alias.scope !56
  %i.dc = load ptr, ptr %4, align 8, !tbaa !39, !noalias !56
  invoke void @_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE13_M_assign_auxISt20_List_const_iteratorIS2_EEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr %i.dc, ptr nonnull align 8 dereferenceable(24) %4)
          to label %_ZNK4geos4geom14CoordinateList17toCoordinateArrayEv.exit unwind label %bb.t, !noalias !56

bb.t:                                             ; preds = %.noexc60
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrISt6vectorIN4geos4geom10CoordinateESaIS3_EESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #16
  br label %.body

_ZNK4geos4geom14CoordinateList17toCoordinateArrayEv.exit: ; preds = %.noexc60
  %i.de = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.de, %4
  br i1 %.not8.i.i.i, label %_ZN4geos4geom14CoordinateListD2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK4geos4geom14CoordinateList17toCoordinateArrayEv.exit, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.df, %.lr.ph.i.i.i ], [ %i.de, %_ZNK4geos4geom14CoordinateList17toCoordinateArrayEv.exit ] ; 2 uses
  %i.df = load ptr, ptr %.09.i.i.i, align 8, !tbaa !39 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.09.i.i.i) #19
  %.not.i.i.i = icmp eq ptr %i.df, %4
  br i1 %.not.i.i.i, label %_ZN4geos4geom14CoordinateListD2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !59

_ZN4geos4geom14CoordinateListD2Ev.exit:           ; preds = %.lr.ph.i.i.i, %_ZNK4geos4geom14CoordinateList17toCoordinateArrayEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.u:                                             ; preds = %_ZN4geos4geom14CoordinateList6insertESt14_List_iteratorINS0_10CoordinateEERKS3_b.exit, %.critedge.i
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.u, %bb.t, %bb.h, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.s, %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pn36.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ba, %bb.h ], [ %i.dd, %bb.t ], [ %.pn3694, %bb.j ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cm, %bb.p ], [ %i.cz, %bb.s ], [ %i.dg, %bb.u ]
  %i.dh = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %.not8.i.i.i61 = icmp eq ptr %i.dh, %4
  br i1 %.not8.i.i.i61, label %_ZN4geos4geom14CoordinateListD2Ev.exit65, label %.lr.ph.i.i.i62

.lr.ph.i.i.i62:                                   ; preds = %.body, %.lr.ph.i.i.i62
  %.09.i.i.i63 = phi ptr [ %i.di, %.lr.ph.i.i.i62 ], [ %i.dh, %.body ] ; 2 uses
  %i.di = load ptr, ptr %.09.i.i.i63, align 8, !tbaa !39 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.09.i.i.i63) #19
  %.not.i.i.i64 = icmp eq ptr %i.di, %4
  br i1 %.not.i.i.i64, label %_ZN4geos4geom14CoordinateListD2Ev.exit65, label %.lr.ph.i.i.i62, !llvm.loop !59

_ZN4geos4geom14CoordinateListD2Ev.exit65:         ; preds = %.lr.ph.i.i.i62, %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  resume { ptr, i32 } %.pn36.pn.pn.pn.pn

bb.v:                                             ; preds = %bb.g
  unreachable
}

declare noundef ptr @_ZNK4geos4geom8Geometry17getPrecisionModelEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrISt6vectorIN4geos4geom10CoordinateESaIS3_EESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNKSt14default_deleteISt6vectorIN4geos4geom10CoordinateESaIS3_EEEclEPS5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #19
  br label %_ZNKSt14default_deleteISt6vectorIN4geos4geom10CoordinateESaIS3_EEEclEPS5_.exit

_ZNKSt14default_deleteISt6vectorIN4geos4geom10CoordinateESaIS3_EEEclEPS5_.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #19
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteISt6vectorIN4geos4geom10CoordinateESaIS3_EEEclEPS5_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos4geom4util9Densifier18DensifyTransformer16transformPolygonEPKNS0_7PolygonEPKNS0_8GeometryE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr.18", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZN4geos4geom4util19GeometryTransformer16transformPolygonEPKNS0_7PolygonEPKNS0_8GeometryE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.18") align 8 %4, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef %2, ptr noundef %3)
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
