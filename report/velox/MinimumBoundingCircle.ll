inline.NumInlined: 432
inline.NumDeleted: 226
begin_hunk_0_@_ZN4geos9algorithm21MinimumBoundingCircle13computeCentreEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos4util13GEOSExceptionE, i64 16), ptr %i.u, align 8, !tbaa !38
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTIN4geos4util13GEOSExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
          to label %bb.m unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0 = phi i1 [ false, %bb.h ], [ true, %bb.g ]  ; 2 uses
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.x = load ptr, ptr %2, align 8, !tbaa !72     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.x) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br i1 %.0, label %bb.j, label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br i1 %.0, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn11 = phi { ptr, i32 } [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.u) #14
  br label %bb.l

bb.k:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.j
  %.pn10 = phi { ptr, i32 } [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn11, %bb.j ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn10

bb.m:                                             ; preds = %bb.h
  unreachable
}

declare void @_ZN4geos4geom8Triangle12circumcentreERKNS0_10CoordinateES4_S4_(ptr dead_on_unwind writable sret(%"class.geos::geom::Coordinate") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #4

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9algorithm21MinimumBoundingCircle19computeCirclePointsEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %2 = alloca %"class.std::unique_ptr.26", align 8 ; 7 uses
  %3 = alloca %"class.std::vector", align 8       ; 11 uses
  %4 = alloca %"class.geos::geom::Coordinate", align 8 ; 18 uses
  %5 = alloca %"class.geos::geom::Coordinate", align 16 ; 21 uses
  %6 = alloca %"class.geos::geom::Coordinate", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator.34", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  br i1 %i.e, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i64 %i.i(ptr noundef nonnull align 8 dereferenceable(40) %i.f)
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(40) %i.m) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !41   ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !55
  %.not.i = icmp eq ptr %i.s, %i.u
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !tbaa.struct !54
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.w, ptr %i.r, align 8, !tbaa !41
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !13   ; 5 uses
  %i.y = ptrtoint ptr %i.s to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.f, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #17
  unreachable

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ac = sdiv exact i64 %i.aa, 24                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 384307168202282325)
  %i.ag = select i1 %i.ae, i64 384307168202282325, i64 %i.af ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ah = mul nuw nsw i64 %i.ag, 24
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #16 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !tbaa.struct !54
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.x, %i.s
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i ], [ %i.x, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !54, !alias.scope !77
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.s
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !81

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ai, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.al, %.lr.ph.i.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i23.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.x) #15
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.ai, ptr %i.l, align 8, !tbaa !13
  store ptr %i.am, ptr %i.r, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.an, ptr %i.t, align 8, !tbaa !55
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.ao = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !38
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 264
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %1, ptr noundef nonnull align 8 dereferenceable(40) %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.as = load ptr, ptr %1, align 8, !tbaa !37    ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.av = load ptr, ptr %i.au, align 8
  invoke void %i.av(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.26") align 8 %2, ptr noundef nonnull align 8 dereferenceable(40) %i.as)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.aw = load ptr, ptr %2, align 8, !tbaa !50    ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !38
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.az = load ptr, ptr %i.ay, align 8
  invoke void %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr %3, align 8, !tbaa !7     ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !7  ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -24 ; 3 uses
  %i.be = load <2 x double>, ptr %i.ba, align 8
  %i.bf = load <2 x double>, ptr %i.bd, align 8
  %i.bg = fcmp oeq <2 x double> %i.be, %i.bf      ; 2 uses
  %i.bh = extractelement <2 x i1> %i.bg, i64 0
  %i.bi = extractelement <2 x i1> %i.bg, i64 1
  %.0.i = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %.0.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !41
  br label %bb.n

bb.l:                                             ; preds = %bb.h
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit118

bb.m:                                             ; preds = %bb.o, %bb.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.n:                                             ; preds = %bb.k, %bb.j
  %i.bl = phi ptr [ %i.bd, %bb.k ], [ %i.bc, %bb.j ] ; 4 uses
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.ba to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 24                ; 2 uses
  %i.bq = icmp ult i64 %i.bp, 3
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.bb unwind label %bb.m      ; 0 uses

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %.not11.i = icmp eq ptr %i.ba, %i.bl
  br i1 %.not11.i, label %_ZN4geos9algorithm21MinimumBoundingCircle11lowestPointERSt6vectorINS_4geom10CoordinateESaIS4_EE.exit.thread, label %.lr.ph.i

_ZN4geos9algorithm21MinimumBoundingCircle11lowestPointERSt6vectorINS_4geom10CoordinateESaIS4_EE.exit.thread: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x double> splat (double +qnan), ptr %5, align 16, !tbaa !15, !alias.scope !82
  store double +qnan, ptr %i.bt, align 16, !tbaa !71, !alias.scope !82
  br label %_ZN4geos9algorithm21MinimumBoundingCircle21pointWitMinAngleWithXERSt6vectorINS_4geom10CoordinateESaIS4_EERS4_.exit

.lr.ph.i:                                         ; preds = %bb.p, %.lr.ph.i
  %.013.i = phi ptr [ %.1.i, %.lr.ph.i ], [ %i.ba, %bb.p ] ; 2 uses
  %.sroa.08.012.i.a = phi ptr [ %i.by, %.lr.ph.i ], [ %i.ba, %bb.p ] ; 3 uses
  %9 = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.a, i64 8
  %10 = load double, ptr %9, align 8, !tbaa !53, !noalias !85
  %i.bv = getelementptr inbounds nuw i8, ptr %.013.i, i64 8
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !53, !noalias !85
  %i.bx = fcmp olt double %10, %i.bw
  %.1.i = select i1 %i.bx, ptr %.sroa.08.012.i.a, ptr %.013.i ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.a, i64 24 ; 2 uses
  %.not.i22 = icmp eq ptr %i.by, %i.bl
  br i1 %.not.i22, label %.lr.ph.i23, label %.lr.ph.i

.lr.ph.i23:                                       ; preds = %.lr.ph.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.1.i, i64 24, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x double> splat (double +qnan), ptr %5, align 16, !tbaa !15, !alias.scope !88
  store double +qnan, ptr %i.bz, align 16, !tbaa !71, !alias.scope !88
  %i.cb = load double, ptr %4, align 8, !tbaa !10, !noalias !88 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cd = load double, ptr %i.cc, align 8, !noalias !88 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %.lr.ph.i23
  %.030.i = phi double [ +inf, %.lr.ph.i23 ], [ %.2.i, %bb.t ] ; 3 uses
  %.sroa.025.029.i = phi ptr [ %i.ba, %.lr.ph.i23 ], [ %i.cs, %bb.t ] ; 4 uses
  %i.ce = load double, ptr %.sroa.025.029.i, align 8, !tbaa !10, !noalias !88 ; 2 uses
  %i.cf = fcmp oeq double %i.ce, %i.cb
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.025.029.i, i64 8
  %i.ch = load double, ptr %i.cg, align 8, !noalias !88 ; 2 uses
  %i.ci = fcmp oeq double %i.ch, %i.cd
  %.0.i.i.i = select i1 %i.cf, i1 %i.ci, i1 false
  br i1 %.0.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = fsub double %i.ce, %i.cb                ; 2 uses
  %i.ck = fsub double %i.ch, %i.cd                ; 3 uses
  %i.cl = fcmp olt double %i.ck, 0.000000e+00
  %i.cm = fneg double %i.ck
  %.021.i = select i1 %i.cl, double %i.cm, double %i.ck ; 3 uses
  %i.cn = fmul double %i.cj, %i.cj
  %i.co = fmul double %.021.i, %.021.i
  %i.cp = fadd double %i.cn, %i.co
  %sqrt.i = call double @llvm.sqrt.f64(double %i.cp)
  %i.cq = fdiv double %.021.i, %sqrt.i            ; 2 uses
  %i.cr = fcmp olt double %i.cq, %.030.i
  br i1 %i.cr, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.025.029.i, i64 24, i1 false), !tbaa.struct !54
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.2.i = phi double [ %.030.i, %bb.q ], [ %i.cq, %bb.s ], [ %.030.i, %bb.r ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.025.029.i, i64 24 ; 2 uses
  %.not.i24 = icmp eq ptr %i.cs, %i.bl
  br i1 %.not.i24, label %_ZN4geos9algorithm21MinimumBoundingCircle21pointWitMinAngleWithXERSt6vectorINS_4geom10CoordinateESaIS4_EERS4_.exit, label %bb.q

_ZN4geos9algorithm21MinimumBoundingCircle21pointWitMinAngleWithXERSt6vectorINS_4geom10CoordinateESaIS4_EERS4_.exit: ; preds = %bb.t, %_ZN4geos9algorithm21MinimumBoundingCircle11lowestPointERSt6vectorINS_4geom10CoordinateESaIS4_EE.exit.thread
  %i.ct = phi ptr [ %i.bu, %_ZN4geos9algorithm21MinimumBoundingCircle11lowestPointERSt6vectorINS_4geom10CoordinateESaIS4_EE.exit.thread ], [ %i.ca, %bb.t ]
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.u

bb.u:                                             ; preds = %_ZN4geos9algorithm21MinimumBoundingCircle21pointWitMinAngleWithXERSt6vectorINS_4geom10CoordinateESaIS4_EERS4_.exit, %bb.au
  %i.cv = phi i64 [ 1, %_ZN4geos9algorithm21MinimumBoundingCircle21pointWitMinAngleWithXERSt6vectorINS_4geom10CoordinateESaIS4_EERS4_.exit ], [ %i.hw, %bb.au ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.cw = load ptr, ptr %3, align 8, !tbaa !13, !noalias !90 ; 4 uses
  %i.cx = load ptr, ptr %i.bb, align 8, !tbaa !7, !noalias !90 ; 2 uses
  %.not24.i = icmp eq ptr %i.cw, %i.cx
  br i1 %.not24.i, label %.loopexit126, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %bb.u, %bb.x
  %.027.i = phi double [ %.2.i28, %bb.x ], [ +inf, %bb.u ] ; 4 uses
  %.01626.i = phi ptr [ %.218.i, %bb.x ], [ %i.cw, %bb.u ] ; 3 uses
  %.sroa.021.025.i = phi ptr [ %i.dl, %bb.x ], [ %i.cw, %bb.u ] ; 5 uses
  %i.cy = load double, ptr %.sroa.021.025.i, align 8, !tbaa !10, !noalias !90 ; 2 uses
  %i.cz = load double, ptr %4, align 8, !tbaa !10, !noalias !90
  %i.da = fcmp oeq double %i.cy, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.021.025.i, i64 8
  %i.dc = load double, ptr %i.db, align 8, !noalias !90 ; 2 uses
  %i.dd = load double, ptr %i.cu, align 8, !noalias !90
  %i.de = fcmp oeq double %i.dc, %i.dd
  %.0.i.i.i26 = select i1 %i.da, i1 %i.de, i1 false
  br i1 %.0.i.i.i26, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i25
  %i.df = load double, ptr %5, align 16, !tbaa !10, !noalias !90
  %i.dg = fcmp oeq double %i.cy, %i.df
  %i.dh = load double, ptr %i.ct, align 8, !noalias !90
  %i.di = fcmp oeq double %i.dc, %i.dh
  %.0.i.i20.i = select i1 %i.dg, i1 %i.di, i1 false
  br i1 %.0.i.i20.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dj = invoke noundef double @_ZN4geos9algorithm5Angle12angleBetweenERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.021.025.i, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %bb.w
  %i.dk = fcmp olt double %i.dj, %.027.i          ; 2 uses
  %.117.i = select i1 %i.dk, ptr %.sroa.021.025.i, ptr %.01626.i
  %.1.i27 = select i1 %i.dk, double %i.dj, double %.027.i
  br label %bb.x

bb.x:                                             ; preds = %.noexc, %bb.v, %.lr.ph.i25
  %.218.i = phi ptr [ %.117.i, %.noexc ], [ %.01626.i, %.lr.ph.i25 ], [ %.01626.i, %bb.v ] ; 2 uses
  %.2.i28 = phi double [ %.1.i27, %.noexc ], [ %.027.i, %.lr.ph.i25 ], [ %.027.i, %bb.v ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.021.025.i, i64 24 ; 2 uses
  %.not.i29 = icmp eq ptr %i.dl, %i.cx
  br i1 %.not.i29, label %.loopexit126, label %.lr.ph.i25

.loopexit126:                                     ; preds = %bb.x, %bb.u
  %.016.lcssa.i = phi ptr [ %i.cw, %bb.u ], [ %.218.i, %bb.x ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %.016.lcssa.i, i64 24, i1 false), !tbaa.struct !54
  %i.dm = invoke noundef zeroext i1 @_ZN4geos9algorithm5Angle8isObtuseERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit

bb.y:                                             ; preds = %.loopexit126
  br i1 %i.dm, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %bb.y
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !41 ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !55
  %.not.i30 = icmp eq ptr %i.dp, %i.dr
  br i1 %.not.i30, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !54
  %i.ds = load ptr, ptr %i.do, align 8, !tbaa !41
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24 ; 2 uses
  store ptr %i.dt, ptr %i.do, align 8, !tbaa !41
  %.pre141 = load ptr, ptr %i.dq, align 8, !tbaa !55
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit45

bb.ab:                                            ; preds = %bb.z
  %i.du = load ptr, ptr %i.dn, align 8, !tbaa !13 ; 5 uses
  %i.dv = ptrtoint ptr %i.dp to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw                    ; 3 uses
  %i.dy = icmp eq i64 %i.dx, 9223372036854775800
  br i1 %i.dy, label %.invoke, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i31

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i31: ; preds = %bb.ab
  %i.dz = sdiv exact i64 %i.dx, 24                ; 3 uses
  %.sroa.speculated.i.i.i32 = call i64 @llvm.umax.i64(i64 %i.dz, i64 1)
  %i.ea = add nsw i64 %.sroa.speculated.i.i.i32, %i.dz ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %i.dz
  %i.ec = call i64 @llvm.umin.i64(i64 %i.ea, i64 384307168202282325)
  %i.ed = select i1 %i.eb, i64 384307168202282325, i64 %i.ec ; 3 uses
  %.not.i.i.i33 = icmp ne i64 %i.ed, 0
  call void @llvm.assume(i1 %.not.i.i.i33)
  %i.ee = mul nuw nsw i64 %i.ed, 24
  %i.ef = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ee) #16
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc44:                                         ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i31
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.dx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !54
  %.not10.i.i.i.i.i.i34 = icmp eq ptr %i.du, %i.dp
  br i1 %.not10.i.i.i.i.i.i34, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i39, label %.lr.ph.i.i.i.i.i.i35

.lr.ph.i.i.i.i.i.i35:                             ; preds = %.noexc44, %.lr.ph.i.i.i.i.i.i35
  %.012.i.i.i.i.i.i36 = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i.i35 ], [ %i.ef, %.noexc44 ] ; 2 uses
  %.0911.i.i.i.i.i.i37 = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i.i35 ], [ %i.du, %.noexc44 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i36, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i37, i64 24, i1 false), !tbaa.struct !54, !alias.scope !93
  %i.eh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i37, i64 24 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i36, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i38 = icmp eq ptr %i.eh, %i.dp
  br i1 %.not.i.i.i.i.i.i38, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i39, label %.lr.ph.i.i.i.i.i.i35, !llvm.loop !81

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i39: ; preds = %.lr.ph.i.i.i.i.i.i35, %.noexc44
  %.0.lcssa.i.i.i.i.i.i40 = phi ptr [ %i.ef, %.noexc44 ], [ %i.ei, %.lr.ph.i.i.i.i.i.i35 ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i40, i64 24 ; 2 uses
  %.not.i23.i.i41 = icmp eq ptr %i.du, null
  br i1 %.not.i23.i.i41, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i42, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i39
  call void @_ZdlPv(ptr noundef nonnull %i.du) #15
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i42

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i42: ; preds = %bb.ac, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i39
  store ptr %i.ef, ptr %i.dn, align 8, !tbaa !13
  store ptr %i.ej, ptr %i.do, align 8, !tbaa !41
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.ef, i64 %i.ed ; 2 uses
  store ptr %i.ek, ptr %i.dq, align 8, !tbaa !55
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit45

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit45: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i42, %bb.aa
  %i.el = phi ptr [ %i.ek, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i42 ], [ %.pre141, %bb.aa ] ; 4 uses
  %i.em = phi ptr [ %i.ej, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i42 ], [ %i.dt, %bb.aa ] ; 2 uses
  %.not.i46 = icmp eq ptr %i.em, %i.el
  br i1 %.not.i46, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.em, ptr noundef nonnull align 16 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !54
  %i.en = load ptr, ptr %i.do, align 8, !tbaa !41
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  store ptr %i.eo, ptr %i.do, align 8, !tbaa !41
  br label %.critedge

bb.ae:                                            ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit45
  %i.ep = load ptr, ptr %i.dn, align 8, !tbaa !13 ; 5 uses
  %i.eq = ptrtoint ptr %i.el to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er                    ; 3 uses
  %i.et = icmp eq i64 %i.es, 9223372036854775800
end_hunk_0
begin_hunk_1_@_ZN4geos9algorithm21MinimumBoundingCircle19computeCirclePointsEv:bb.a
_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.ii = load ptr, ptr %1, align 8, !tbaa !37    ; 3 uses
  %.not.i113 = icmp eq ptr %i.ii, null
  br i1 %.not.i113, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !38
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load ptr, ptr %i.ik, align 8
  call void %i.il(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.ii) #14, !inline_history !40
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit

bb.bd:                                            ; preds = %bb.ba, %bb.m
  %.pn19 = phi { ptr, i32 } [ %i.bk, %bb.m ], [ %.pn16.pn, %bb.ba ] ; 2 uses
  %i.im = load ptr, ptr %3, align 8, !tbaa !13    ; 2 uses
  %.not.i.i.i114 = icmp eq ptr %i.im, null
  br i1 %.not.i.i.i114, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit115, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_ZdlPv(ptr noundef nonnull %i.im) #15
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit115

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit115: ; preds = %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.in = load ptr, ptr %2, align 8, !tbaa !50    ; 3 uses
  %.not.i116 = icmp eq ptr %i.in, null
  br i1 %.not.i116, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit118, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i117

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i117: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit115
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !38
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8
  call void %i.iq(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.in) #14, !inline_history !52
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit118

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit118: ; preds = %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i117, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit115, %bb.l
  %.pn19.pn = phi { ptr, i32 } [ %i.bj, %bb.l ], [ %.pn19, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit115 ], [ %.pn19, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i117 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.ir = load ptr, ptr %1, align 8, !tbaa !37    ; 3 uses
  %.not.i119 = icmp eq ptr %i.ir, null
  br i1 %.not.i119, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit121, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i120

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i120: ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit118
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !38
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = load ptr, ptr %i.it, align 8
  call void %i.iu(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.ir) #14, !inline_history !40
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit121

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit121: ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit118, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  resume { ptr, i32 } %.pn19.pn

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.d, %bb.a, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit
  ret void

bb.bf:                                            ; preds = %bb.ax
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !13     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.i = load ptr, ptr %0, align 8, !tbaa !13     ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 24
  %i.o = icmp ugt i64 %i.n, 384307168202282325
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE11_M_allocateEm.exit.i, !prof !68

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #16 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE11_M_allocateEm.exit.i
  %i.q = add i64 %i.d, -24
  %i.r = sub i64 %i.q, %i.e
  %.fr.i = freeze i64 %i.r                        ; 2 uses
  %i.s = urem i64 %.fr.i, 24
  %i.t = add i64 %.fr.i, 24
  %i.u = sub i64 %i.t, %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr align 8 %i.c, i64 %i.u, i1 false)
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #15
  br label %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.v, ptr %i.g, align 8, !tbaa !55
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.f:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !41
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.z, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = icmp sgt i64 %i.f, 24
  br i1 %i.aa, label %bb.h, label %bb.i, !prof !114

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = icmp eq i64 %i.f, 24
  br i1 %i.ab, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !54
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.k:                                             ; preds = %bb.f
  %i.ac = icmp sgt i64 %i.z, 24
  br i1 %i.ac, label %bb.l, label %bb.m, !prof !114

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.z, i1 false)
  br label %_ZSt4copyIPN4geos4geom10CoordinateES3_ET0_T_S5_S4_.exit

bb.m:                                             ; preds = %bb.k
  %i.ad = icmp eq i64 %i.z, 24
  br i1 %i.ad, label %bb.n, label %_ZSt4copyIPN4geos4geom10CoordinateES3_ET0_T_S5_S4_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !54
  br label %_ZSt4copyIPN4geos4geom10CoordinateES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN4geos4geom10CoordinateES3_ET0_T_S5_S4_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ae = load ptr, ptr %1, align 8, !tbaa !13
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !41  ; 2 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !13
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 2 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !41  ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN4geos4geom10CoordinateES3_ET0_T_S5_S4_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %i.af, %_ZSt4copyIPN4geos4geom10CoordinateES3_ET0_T_S5_S4_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %i.ak, %_ZSt4copyIPN4geos4geom10CoordinateES3_ET0_T_S5_S4_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0810.i.i.i.i, i64 24, i1 false), !tbaa.struct !54
  %i.am = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.am, %i.al
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !115

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN4geos4geom10CoordinateES3_ET0_T_S5_S4_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.ao = load ptr, ptr %0, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !41
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4geos9algorithm21MinimumBoundingCircle11lowestPointERSt6vectorINS_4geom10CoordinateESaIS4_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.geos::geom::Coordinate") align 8 captures(none) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !13     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7    ; 2 uses
  %.not11 = icmp eq ptr %i.a, %i.c
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ %i.a, %bb.a ], [ %.1, %.lr.ph ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.0.lcssa, i64 24, i1 false), !tbaa.struct !54
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.013 = phi ptr [ %.1, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %.sroa.08.012.a = phi ptr [ %i.g, %.lr.ph ], [ %i.a, %bb.a ] ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.08.012.a, i64 8
  %4 = load double, ptr %3, align 8, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %.013, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !53
  %i.f = fcmp olt double %4, %i.e
  %.1 = select i1 %i.f, ptr %.sroa.08.012.a, ptr %.013 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.012.a, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4geos9algorithm21MinimumBoundingCircle21pointWitMinAngleWithXERSt6vectorINS_4geom10CoordinateESaIS4_EERS4_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.geos::geom::Coordinate") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> splat (double +qnan), ptr %0, align 8, !tbaa !15
  store double +qnan, ptr %i.a, align 8, !tbaa !71
  %i.b = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7    ; 2 uses
  %.not28 = icmp eq ptr %i.b, %i.d
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = load double, ptr %3, align 8, !tbaa !10  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load double, ptr %i.f, align 8           ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.030 = phi double [ +inf, %.lr.ph ], [ %.2, %bb.e ] ; 3 uses
  %.sroa.025.029 = phi ptr [ %i.b, %.lr.ph ], [ %i.v, %bb.e ] ; 4 uses
  %i.h = load double, ptr %.sroa.025.029, align 8, !tbaa !10 ; 2 uses
  %i.i = fcmp oeq double %i.h, %i.e
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.025.029, i64 8
  %i.k = load double, ptr %i.j, align 8           ; 2 uses
  %i.l = fcmp oeq double %i.k, %i.g
  %.0.i.i = select i1 %i.i, i1 %i.l, i1 false
  br i1 %.0.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = fsub double %i.h, %i.e                   ; 2 uses
  %i.n = fsub double %i.k, %i.g                   ; 3 uses
  %i.o = fcmp olt double %i.n, 0.000000e+00
  %i.p = fneg double %i.n
  %.021 = select i1 %i.o, double %i.p, double %i.n ; 3 uses
  %i.q = fmul double %i.m, %i.m
  %i.r = fmul double %.021, %.021
  %i.s = fadd double %i.q, %i.r
  %sqrt = tail call double @llvm.sqrt.f64(double %i.s)
  %i.t = fdiv double %.021, %sqrt                 ; 2 uses
  %i.u = fcmp olt double %i.t, %.030
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.025.029, i64 24, i1 false), !tbaa.struct !54
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.2 = phi double [ %.030, %bb.b ], [ %i.t, %bb.d ], [ %.030, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.025.029, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9algorithm21MinimumBoundingCircle28pointWithMinAngleWithSegmentERSt6vectorINS_4geom10CoordinateESaIS4_EERS4_S8_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.geos::geom::Coordinate") align 8 captures(none) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !13     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7    ; 2 uses
  %.not24 = icmp eq ptr %i.a, %i.c
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.016.lcssa = phi ptr [ %i.a, %bb.a ], [ %.218, %bb.e ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.016.lcssa, i64 24, i1 false), !tbaa.struct !54
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.027 = phi double [ +inf, %.lr.ph ], [ %.2, %bb.e ] ; 4 uses
  %.01626 = phi ptr [ %i.a, %.lr.ph ], [ %.218, %bb.e ] ; 3 uses
  %.sroa.021.025 = phi ptr [ %i.a, %.lr.ph ], [ %i.s, %bb.e ] ; 5 uses
  %i.f = load double, ptr %.sroa.021.025, align 8, !tbaa !10 ; 2 uses
  %i.g = load double, ptr %3, align 8, !tbaa !10
  %i.h = fcmp oeq double %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.021.025, i64 8
  %i.j = load double, ptr %i.i, align 8           ; 2 uses
  %i.k = load double, ptr %i.d, align 8
  %i.l = fcmp oeq double %i.j, %i.k
  %.0.i.i = select i1 %i.h, i1 %i.l, i1 false
  br i1 %.0.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load double, ptr %4, align 8, !tbaa !10
  %i.n = fcmp oeq double %i.f, %i.m
  %i.o = load double, ptr %i.e, align 8
  %i.p = fcmp oeq double %i.j, %i.o
  %.0.i.i20 = select i1 %i.n, i1 %i.p, i1 false
  br i1 %.0.i.i20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call noundef double @_ZN4geos9algorithm5Angle12angleBetweenERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.021.025, ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  %i.r = fcmp olt double %i.q, %.027              ; 2 uses
  %.117 = select i1 %i.r, ptr %.sroa.021.025, ptr %.01626
  %.1 = select i1 %i.r, double %i.q, double %.027
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.218 = phi ptr [ %.117, %bb.d ], [ %.01626, %bb.b ], [ %.01626, %bb.c ] ; 2 uses
  %.2 = phi double [ %.1, %bb.d ], [ %.027, %bb.b ], [ %.027, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.021.025, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.s, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b
}

declare noundef zeroext i1 @_ZN4geos9algorithm5Angle8isObtuseERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef double @_ZN4geos9algorithm5Angle12angleBetweenERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4util13GEOSExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { cold noreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 _ZTSN4geos4geom10CoordinateE", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !12, i64 0}
end_hunk_1
