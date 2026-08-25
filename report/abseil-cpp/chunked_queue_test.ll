Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/chunked_queue_test?download=true
inline.NumInlined: 6731
inline.NumDeleted: 2085
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN12_GLOBAL__N_139ChunkedQueue_InitializerListAssign_Test8TestBodyEv:bb.a
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 168, ptr noundef %i.an)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit23
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %bb.x
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.ao = load ptr, ptr %7, align 8, !tbaa !56    ; 3 uses
  %.not.i.i24 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i24, label %_ZN7testing7MessageD2Ev.exit26, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i25

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i25: ; preds = %bb.y
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(128) %i.ao) #22, !inline_history !58
  br label %_ZN7testing7MessageD2Ev.exit26

_ZN7testing7MessageD2Ev.exit26:                   ; preds = %bb.y, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.ad

bb.z:                                             ; preds = %bb.u
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit29

bb.aa:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit23
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.x
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #22
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn11 = phi { ptr, i32 } [ %i.au, %bb.ab ], [ %i.at, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.av = load ptr, ptr %7, align 8, !tbaa !56    ; 3 uses
  %.not.i.i27 = icmp eq ptr %i.av, null
  br i1 %.not.i.i27, label %_ZN7testing7MessageD2Ev.exit29, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i28

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i28: ; preds = %bb.ac
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(128) %i.av) #22, !inline_history !58
  br label %_ZN7testing7MessageD2Ev.exit29

_ZN7testing7MessageD2Ev.exit29:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i28, %bb.ac, %bb.z
  %.pn11.pn = phi { ptr, i32 } [ %i.as, %bb.z ], [ %.pn11, %bb.ac ], [ %.pn11, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i28 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #22
  br label %bb.af

bb.ad:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit26
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !51 ; 4 uses
  %.not.i.i30 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i30, label %_ZN7testing15AssertionResultD2Ev.exit34, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !52 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31: ; preds = %bb.ae
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !59
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i32

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i32: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit34

_ZN7testing15AssertionResultD2Ev.exit34:          ; preds = %bb.ad, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bg = load ptr, ptr %1, align 8, !tbaa !474   ; 2 uses
  %.not7.i = icmp eq ptr %i.bg, null
  br i1 %.not7.i, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7testing15AssertionResultD2Ev.exit34, %.lr.ph.i
  %.08.i = phi ptr [ %i.bh, %.lr.ph.i ], [ %i.bg, %_ZN7testing15AssertionResultD2Ev.exit34 ] ; 2 uses
  %i.bh = load ptr, ptr %.08.i, align 8, !tbaa !22 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.08.i) #22
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEED2Ev.exit, label %.lr.ph.i

_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEED2Ev.exit: ; preds = %.lr.ph.i, %_ZN7testing15AssertionResultD2Ev.exit34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void

bb.af:                                            ; preds = %_ZN7testing7MessageD2Ev.exit29, %bb.t
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn11.pn, %_ZN7testing7MessageD2Ev.exit29 ], [ %i.aj, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.s, %bb.d
  %.pn11.pn.pn.pn = phi { ptr, i32 } [ %.pn11.pn.pn, %bb.af ], [ %.pn.pn.pn, %bb.s ], [ %i.g, %bb.d ]
  %i.bi = load ptr, ptr %1, align 8, !tbaa !474   ; 2 uses
  %.not7.i35 = icmp eq ptr %i.bi, null
  br i1 %.not7.i35, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEED2Ev.exit39, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %bb.ag, %.lr.ph.i36
  %.08.i37 = phi ptr [ %i.bj, %.lr.ph.i36 ], [ %i.bi, %bb.ag ] ; 2 uses
  %i.bj = load ptr, ptr %.08.i37, align 8, !tbaa !22 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.08.i37) #22
  %.not.i38 = icmp eq ptr %i.bj, null
  br i1 %.not.i38, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEED2Ev.exit39, label %.lr.ph.i36

_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEED2Ev.exit39: ; preds = %.lr.ph.i36, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %.pn11.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE6assignIPKlvEEvT_S7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.050.0.copyload = load ptr, ptr %0, align 8, !tbaa !227 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !226 ; 3 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.17.0.copyload = load ptr, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !226 ; 2 uses
  %.sroa.348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %.sroa.348.0.copyload = load ptr, ptr %.sroa.348.0..sroa_idx, align 8, !tbaa !226 ; 3 uses
  %i.a = icmp ne ptr %.sroa.9.0.copyload, %.sroa.348.0.copyload
  %i.b = icmp ne ptr %1, %2
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE14basic_iteratorIlEppEv.exit
  %.064 = phi ptr [ %spec.select, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE14basic_iteratorIlEppEv.exit ], [ null, %bb.a ]
  %.01763 = phi ptr [ %i.p, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE14basic_iteratorIlEppEv.exit ], [ %1, %bb.a ] ; 2 uses
  %.sroa.17.062 = phi ptr [ %.sroa.17.1, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE14basic_iteratorIlEppEv.exit ], [ %.sroa.17.0.copyload, %bb.a ] ; 3 uses
  %.sroa.9.061 = phi ptr [ %.sroa.9.1, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE14basic_iteratorIlEppEv.exit ], [ %.sroa.9.0.copyload, %bb.a ] ; 2 uses
  %.sroa.050.060 = phi ptr [ %.sroa.050.1, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE14basic_iteratorIlEppEv.exit ], [ %.sroa.050.0.copyload, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.9.061, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.050.060, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.g = icmp eq ptr %i.d, %i.f
  %spec.select = select i1 %i.g, ptr %.sroa.050.060, ptr %.064 ; 2 uses
  %i.h = load i64, ptr %.01763, align 8, !tbaa !34
  store i64 %i.h, ptr %.sroa.9.061, align 8, !tbaa !34
  %i.i = icmp eq ptr %i.d, %.sroa.17.062
  br i1 %i.i, label %bb.b, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE14basic_iteratorIlEppEv.exit

bb.b:                                             ; preds = %.lr.ph
  %i.j = load ptr, ptr %.sroa.050.060, align 8, !tbaa !22 ; 4 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE14basic_iteratorIlEppEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = add i64 %i.k, 16
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26
  br label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE14basic_iteratorIlEppEv.exit

_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE14basic_iteratorIlEppEv.exit: ; preds = %.lr.ph, %bb.b, %bb.c
  %.sroa.050.1 = phi ptr [ %.sroa.050.060, %bb.b ], [ %i.j, %bb.c ], [ %.sroa.050.060, %.lr.ph ] ; 2 uses
  %.sroa.9.1 = phi ptr [ %i.d, %bb.b ], [ %i.m, %bb.c ], [ %i.d, %.lr.ph ] ; 3 uses
  %.sroa.17.1 = phi ptr [ %.sroa.17.062, %bb.b ], [ %i.o, %bb.c ], [ %.sroa.17.062, %.lr.ph ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01763, i64 8 ; 3 uses
  %i.q = icmp ne ptr %.sroa.9.1, %.sroa.348.0.copyload
  %i.r = icmp ne ptr %i.p, %2
  %i.s = select i1 %i.q, i1 %i.r, i1 false
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !668

._crit_edge:                                      ; preds = %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE14basic_iteratorIlEppEv.exit, %bb.a
  %.sroa.050.0.lcssa = phi ptr [ %.sroa.050.0.copyload, %bb.a ], [ %.sroa.050.1, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE14basic_iteratorIlEppEv.exit ] ; 6 uses
  %.sroa.9.0.lcssa = phi ptr [ %.sroa.9.0.copyload, %bb.a ], [ %.sroa.9.1, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE14basic_iteratorIlEppEv.exit ] ; 4 uses
  %.sroa.17.0.lcssa = phi ptr [ %.sroa.17.0.copyload, %bb.a ], [ %.sroa.17.1, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE14basic_iteratorIlEppEv.exit ] ; 2 uses
  %.017.lcssa = phi ptr [ %1, %bb.a ], [ %i.p, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE14basic_iteratorIlEppEv.exit ] ; 2 uses
  %.0.lcssa = phi ptr [ null, %bb.a ], [ %spec.select, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE14basic_iteratorIlEppEv.exit ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.sroa.449.0..sroa_idx.le = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !476  ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  %i.x = icmp eq ptr %.sroa.050.0.lcssa, null     ; 2 uses
  %or.cond.not = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.y = getelementptr i8, ptr %.sroa.050.0.lcssa, i64 16
  %i.z = icmp eq ptr %.sroa.9.0.lcssa, %i.y
  %i.aa = icmp ne ptr %.0.lcssa, null
  %or.cond4 = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond4, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !26 ; 6 uses
  %i.ad = load ptr, ptr %.0.lcssa, align 8, !tbaa !22 ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.ad, null           ; 2 uses
  %.val = load ptr, ptr %.sroa.348.0..sroa_idx, align 8
  %3 = select i1 %.not.i.i21, ptr %.val, ptr %i.ac
  %i.ae = ptrtoint ptr %3 to i64
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 3
  %i.ai = sub i64 %i.v, %i.ah
  store i64 %i.ai, ptr %i.u, align 8, !tbaa !476
  br i1 %.not.i.i21, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12EraseAllFromENS3_14basic_iteratorIlEE.exit31.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.013.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %i.ad, %bb.e ] ; 4 uses
  %i.aj = load ptr, ptr %.013.i, align 8, !tbaa !22 ; 2 uses
  %i.ak = ptrtoint ptr %.013.i to i64
  %.not.i9.i = icmp eq ptr %i.aj, null            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i, i64 8
  %.in.i10.i = select i1 %.not.i9.i, ptr %.sroa.348.0..sroa_idx, ptr %i.al
  %i.am = load ptr, ptr %.in.i10.i, align 8, !tbaa !226
  %i.an = ptrtoint ptr %i.am to i64
  %reass.sub = sub i64 %i.an, %i.ak
  %i.ao = add i64 %reass.sub, -16
  %i.ap = ashr exact i64 %i.ao, 3
  %i.aq = load i64, ptr %i.u, align 8, !tbaa !476
  %i.ar = sub i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %i.u, align 8, !tbaa !476
  tail call void @_ZdlPv(ptr noundef nonnull %.013.i) #22
  br i1 %.not.i9.i, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12EraseAllFromENS3_14basic_iteratorIlEE.exit31.sink.split, label %.lr.ph.i, !llvm.loop !669

bb.f:                                             ; preds = %._crit_edge
  br i1 %i.x, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12EraseAllFromENS3_14basic_iteratorIlEE.exit31, label %.thread

.thread:                                          ; preds = %bb.d, %bb.f
  %i.as = load ptr, ptr %.sroa.050.0.lcssa, align 8, !tbaa !22 ; 2 uses
  %.not.i.i23 = icmp eq ptr %i.as, null           ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.050.0.lcssa, i64 8
  %.in.i.i24 = select i1 %.not.i.i23, ptr %.sroa.348.0..sroa_idx, ptr %i.at
  %i.au = load ptr, ptr %.in.i.i24, align 8, !tbaa !226
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %.sroa.9.0.lcssa to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 3
  %i.az = sub i64 %i.v, %i.ay
  store i64 %i.az, ptr %i.u, align 8, !tbaa !476
  br i1 %.not.i.i23, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12EraseAllFromENS3_14basic_iteratorIlEE.exit31.sink.split, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.thread, %.lr.ph.i25
  %.013.i26 = phi ptr [ %i.ba, %.lr.ph.i25 ], [ %i.as, %.thread ] ; 4 uses
  %i.ba = load ptr, ptr %.013.i26, align 8, !tbaa !22 ; 2 uses
  %i.bb = ptrtoint ptr %.013.i26 to i64
  %.not.i9.i27 = icmp eq ptr %i.ba, null          ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i26, i64 8
  %.in.i10.i28 = select i1 %.not.i9.i27, ptr %.sroa.348.0..sroa_idx, ptr %i.bc
  %i.bd = load ptr, ptr %.in.i10.i28, align 8, !tbaa !226
  %i.be = ptrtoint ptr %i.bd to i64
  %reass.sub73 = sub i64 %i.be, %i.bb
  %i.bf = add i64 %reass.sub73, -16
  %i.bg = ashr exact i64 %i.bf, 3
  %i.bh = load i64, ptr %i.u, align 8, !tbaa !476
  %i.bi = sub i64 %i.bh, %i.bg
  store i64 %i.bi, ptr %i.u, align 8, !tbaa !476
  tail call void @_ZdlPv(ptr noundef nonnull %.013.i26) #22
  br i1 %.not.i9.i27, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12EraseAllFromENS3_14basic_iteratorIlEE.exit31.sink.split, label %.lr.ph.i25, !llvm.loop !669

_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12EraseAllFromENS3_14basic_iteratorIlEE.exit31.sink.split: ; preds = %.lr.ph.i, %.lr.ph.i25, %.thread, %bb.e
  %.sroa.050.0.lcssa.sink87 = phi ptr [ %.0.lcssa, %bb.e ], [ %.sroa.050.0.lcssa, %.lr.ph.i25 ], [ %.sroa.050.0.lcssa, %.thread ], [ %.0.lcssa, %.lr.ph.i ] ; 2 uses
  %.sroa.9.0.lcssa.sink = phi ptr [ %i.ac, %bb.e ], [ %.sroa.9.0.lcssa, %.lr.ph.i25 ], [ %.sroa.9.0.lcssa, %.thread ], [ %i.ac, %.lr.ph.i ] ; 2 uses
  %.sroa.17.0.lcssa.sink = phi ptr [ %i.ac, %bb.e ], [ %.sroa.17.0.lcssa, %.lr.ph.i25 ], [ %.sroa.17.0.lcssa, %.thread ], [ %i.ac, %.lr.ph.i ]
  store ptr %.sroa.050.0.lcssa.sink87, ptr %i.t, align 8
  store ptr %.sroa.9.0.lcssa.sink, ptr %.sroa.348.0..sroa_idx, align 8
  store ptr %.sroa.17.0.lcssa.sink, ptr %.sroa.449.0..sroa_idx.le, align 8
  store ptr null, ptr %.sroa.050.0.lcssa.sink87, align 8, !tbaa !22
  br label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12EraseAllFromENS3_14basic_iteratorIlEE.exit31

_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12EraseAllFromENS3_14basic_iteratorIlEE.exit31: ; preds = %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12EraseAllFromENS3_14basic_iteratorIlEE.exit31.sink.split, %bb.f
  %i.bj = phi ptr [ %.sroa.348.0.copyload, %bb.f ], [ %.sroa.9.0.lcssa.sink, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12EraseAllFromENS3_14basic_iteratorIlEE.exit31.sink.split ]
  %.not69 = icmp eq ptr %.017.lcssa, %2
  br i1 %.not69, label %._crit_edge72, label %.lr.ph71

.lr.ph71:                                         ; preds = %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12EraseAllFromENS3_14basic_iteratorIlEE.exit31
  %.pre = load ptr, ptr %.sroa.449.0..sroa_idx.le, align 8, !tbaa !670
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph71, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE9push_backERKl.exit
  %i.bk = phi ptr [ %.pre, %.lr.ph71 ], [ %i.ce, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE9push_backERKl.exit ] ; 2 uses
  %i.bl = phi ptr [ %i.bj, %.lr.ph71 ], [ %i.ci, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE9push_backERKl.exit ] ; 2 uses
  %.11870 = phi ptr [ %.017.lcssa, %.lr.ph71 ], [ %i.ck, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE9push_backERKl.exit ] ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.bk
  br i1 %i.bm, label %bb.h, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE9push_backERKl.exit

bb.h:                                             ; preds = %bb.g
  %i.bn = load ptr, ptr %i.t, align 8, !tbaa !474 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12NewBlockSizeEv.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !26
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %reass.sub74 = sub i64 %i.br, %i.bq
  %i.bs = add i64 %reass.sub74, -16
  %i.bt = ashr exact i64 %i.bs, 2
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 2)
  br label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12NewBlockSizeEv.exit.i.i.i.i

_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12NewBlockSizeEv.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i = phi i64 [ %.sroa.speculated.i.i.i.i.i, %bb.i ], [ 2, %bb.h ] ; 2 uses
  %i.bu = shl nuw nsw i64 %.0.i.i.i.i.i, 3
  %i.bv = add nuw nsw i64 %i.bu, 16
  %i.bw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #26 ; 6 uses
  store ptr null, ptr %i.bw, align 8, !tbaa !22
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = add i64 %i.by, 16
  %i.ca = inttoptr i64 %i.bz to ptr               ; 3 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.0.i.i.i.i.i ; 4 uses
  store ptr %i.cb, ptr %i.bx, align 8, !tbaa !26
  %i.cc = load ptr, ptr %0, align 8, !tbaa !474
  %.not.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12NewBlockSizeEv.exit.i.i.i.i
  store ptr %i.bw, ptr %0, align 8
  store ptr %i.ca, ptr %.sroa.9.0..sroa_idx, align 8
  store ptr %i.cb, ptr %.sroa.17.0..sroa_idx, align 8
  br label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12AddTailBlockEv.exit.i.i.i

bb.k:                                             ; preds = %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12NewBlockSizeEv.exit.i.i.i.i
  %i.cd = load ptr, ptr %i.t, align 8, !tbaa !474
  store ptr %i.bw, ptr %i.cd, align 8, !tbaa !22
  br label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12AddTailBlockEv.exit.i.i.i

_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12AddTailBlockEv.exit.i.i.i: ; preds = %bb.k, %bb.j
  store ptr %i.bw, ptr %i.t, align 8
  store ptr %i.cb, ptr %.sroa.449.0..sroa_idx.le, align 8
  br label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE9push_backERKl.exit

_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE9push_backERKl.exit: ; preds = %bb.g, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12AddTailBlockEv.exit.i.i.i
  %i.ce = phi ptr [ %i.cb, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12AddTailBlockEv.exit.i.i.i ], [ %i.bk, %bb.g ]
  %i.cf = phi ptr [ %i.ca, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12AddTailBlockEv.exit.i.i.i ], [ %i.bl, %bb.g ] ; 2 uses
  %i.cg = load i64, ptr %i.u, align 8, !tbaa !476
  %i.ch = add i64 %i.cg, 1
  store i64 %i.ch, ptr %i.u, align 8, !tbaa !476
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  store ptr %i.ci, ptr %.sroa.348.0..sroa_idx, align 8, !tbaa !480
  %i.cj = load i64, ptr %.11870, align 8, !tbaa !34
  store i64 %i.cj, ptr %i.cf, align 8, !tbaa !34
  %i.ck = getelementptr inbounds nuw i8, ptr %.11870, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ck, %2
  br i1 %.not, label %._crit_edge72, label %bb.g, !llvm.loop !671

._crit_edge72:                                    ; preds = %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE9push_backERKl.exit, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12EraseAllFromENS3_14basic_iteratorIlEE.exit31
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_128ChunkedQueue_CopyAssign_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_128ChunkedQueue_CopyAssign_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_128ChunkedQueue_CopyAssign_TestE, i64 16), ptr %i.a, align 8, !tbaa !9
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #24
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_128ChunkedQueue_CopyAssign_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_128ChunkedQueue_CopyAssign_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE12NewBlockSizeEv.exit.i.i.i.i:
  %1 = alloca %"class.absl::lts_20260526::chunked_queue", align 8 ; 15 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %3 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.81", align 4 ; 5 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 6 uses
  store ptr null, ptr %i.a, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = add i64 %i.c, 16
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_131ChunkedQueue_AssignExtends_Test8TestBodyEv:bb.a

bb.x:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit27
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %bb.x
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.ao = load ptr, ptr %7, align 8, !tbaa !56    ; 3 uses
  %.not.i.i28 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i28, label %_ZN7testing7MessageD2Ev.exit30, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i29

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i29: ; preds = %bb.y
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(128) %i.ao) #22, !inline_history !58
  br label %_ZN7testing7MessageD2Ev.exit30

_ZN7testing7MessageD2Ev.exit30:                   ; preds = %bb.y, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.ad

bb.z:                                             ; preds = %bb.u
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit33

bb.aa:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit27
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.x
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #22
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn14 = phi { ptr, i32 } [ %i.au, %bb.ab ], [ %i.at, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.av = load ptr, ptr %7, align 8, !tbaa !56    ; 3 uses
  %.not.i.i31 = icmp eq ptr %i.av, null
  br i1 %.not.i.i31, label %_ZN7testing7MessageD2Ev.exit33, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i32

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i32: ; preds = %bb.ac
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(128) %i.av) #22, !inline_history !58
  br label %_ZN7testing7MessageD2Ev.exit33

_ZN7testing7MessageD2Ev.exit33:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i32, %bb.ac, %bb.z
  %.pn14.pn = phi { ptr, i32 } [ %i.as, %bb.z ], [ %.pn14, %bb.ac ], [ %.pn14, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i32 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #22
  br label %bb.af

bb.ad:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit30
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !51 ; 4 uses
  %.not.i.i34 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i34, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !52 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i35: ; preds = %bb.ae
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !59
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i36

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i36: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i35
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 32) #24
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.ad, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 40) #24
  %i.bg = load ptr, ptr %1, align 8, !tbaa !474   ; 2 uses
  %.not7.i = icmp eq ptr %i.bg, null
  br i1 %.not7.i, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %.lr.ph.i
  %.08.i = phi ptr [ %i.bh, %.lr.ph.i ], [ %i.bg, %_ZNSt6vectorIlSaIlEED2Ev.exit ] ; 2 uses
  %i.bh = load ptr, ptr %.08.i, align 8, !tbaa !22 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.08.i) #22
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEED2Ev.exit, label %.lr.ph.i

_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEED2Ev.exit: ; preds = %.lr.ph.i, %_ZNSt6vectorIlSaIlEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void

bb.af:                                            ; preds = %_ZN7testing7MessageD2Ev.exit33, %bb.t
  %.pn14.pn.pn = phi { ptr, i32 } [ %.pn14.pn, %_ZN7testing7MessageD2Ev.exit33 ], [ %i.aj, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.ag

bb.ag:                                            ; preds = %bb.d, %bb.s, %bb.af
  %.pn14.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn, %bb.af ], [ %.pn.pn.pn, %bb.s ], [ %i.g, %bb.d ]
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 40) #24
  %.pre = load ptr, ptr %1, align 8, !tbaa !474   ; 2 uses
  %.not7.i43 = icmp eq ptr %.pre, null
  br i1 %.not7.i43, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEED2Ev.exit47, label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %bb.ag, %.lr.ph.i44
  %.08.i45 = phi ptr [ %i.bi, %.lr.ph.i44 ], [ %.pre, %bb.ag ] ; 2 uses
  %i.bi = load ptr, ptr %.08.i45, align 8, !tbaa !22 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.08.i45) #22
  %.not.i46 = icmp eq ptr %i.bi, null
  br i1 %.not.i46, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEED2Ev.exit47, label %.lr.ph.i44

_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEED2Ev.exit47: ; preds = %.lr.ph.i44, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %.pn14.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE6assignIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlS2_EEEvEEvT_SB_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.040.0.copyload = load ptr, ptr %0, align 8, !tbaa !227 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !226 ; 3 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.17.0.copyload = load ptr, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !226 ; 2 uses
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %.sroa.438.0.copyload = load ptr, ptr %.sroa.438.0..sroa_idx, align 8, !tbaa !226 ; 3 uses
  %i.a = icmp ne ptr %.sroa.9.0.copyload, %.sroa.438.0.copyload
  %i.b = icmp ne ptr %1, %2
  %or.cond58 = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond58, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE14basic_iteratorIlEppEv.exit
  %.063 = phi ptr [ %spec.select, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE14basic_iteratorIlEppEv.exit ], [ null, %bb.a ]
  %.sroa.050.062 = phi ptr [ %i.o, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE14basic_iteratorIlEppEv.exit ], [ %1, %bb.a ] ; 2 uses
  %.sroa.17.061 = phi ptr [ %.sroa.17.1, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE14basic_iteratorIlEppEv.exit ], [ %.sroa.17.0.copyload, %bb.a ] ; 3 uses
  %.sroa.9.060 = phi ptr [ %.sroa.9.1, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE14basic_iteratorIlEppEv.exit ], [ %.sroa.9.0.copyload, %bb.a ] ; 2 uses
  %.sroa.040.059 = phi ptr [ %.sroa.040.1, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE14basic_iteratorIlEppEv.exit ], [ %.sroa.040.0.copyload, %bb.a ] ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.9.060, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.040.059, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.f = icmp eq ptr %i.c, %i.e
  %spec.select = select i1 %i.f, ptr %.sroa.040.059, ptr %.063 ; 2 uses
  %i.g = load i64, ptr %.sroa.050.062, align 8, !tbaa !34
  store i64 %i.g, ptr %.sroa.9.060, align 8, !tbaa !34
  %i.h = icmp eq ptr %i.c, %.sroa.17.061
  br i1 %i.h, label %bb.b, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE14basic_iteratorIlEppEv.exit

bb.b:                                             ; preds = %.lr.ph
  %i.i = load ptr, ptr %.sroa.040.059, align 8, !tbaa !22 ; 4 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE14basic_iteratorIlEppEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = add i64 %i.j, 16
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26
  br label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE14basic_iteratorIlEppEv.exit

_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE14basic_iteratorIlEppEv.exit: ; preds = %.lr.ph, %bb.b, %bb.c
  %.sroa.040.1 = phi ptr [ %.sroa.040.059, %bb.b ], [ %i.i, %bb.c ], [ %.sroa.040.059, %.lr.ph ] ; 2 uses
  %.sroa.9.1 = phi ptr [ %i.c, %bb.b ], [ %i.l, %bb.c ], [ %i.c, %.lr.ph ] ; 3 uses
  %.sroa.17.1 = phi ptr [ %.sroa.17.061, %bb.b ], [ %i.n, %bb.c ], [ %.sroa.17.061, %.lr.ph ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.050.062, i64 8 ; 3 uses
  %i.p = icmp ne ptr %.sroa.9.1, %.sroa.438.0.copyload
  %i.q = icmp ne ptr %i.o, %2
  %or.cond = select i1 %i.p, i1 %i.q, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !965

.critedge:                                        ; preds = %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE14basic_iteratorIlEppEv.exit, %bb.a
  %.sroa.040.0.lcssa = phi ptr [ %.sroa.040.0.copyload, %bb.a ], [ %.sroa.040.1, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE14basic_iteratorIlEppEv.exit ] ; 6 uses
  %.sroa.9.0.lcssa = phi ptr [ %.sroa.9.0.copyload, %bb.a ], [ %.sroa.9.1, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE14basic_iteratorIlEppEv.exit ] ; 4 uses
  %.sroa.17.0.lcssa = phi ptr [ %.sroa.17.0.copyload, %bb.a ], [ %.sroa.17.1, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE14basic_iteratorIlEppEv.exit ] ; 2 uses
  %.sroa.050.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.o, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE14basic_iteratorIlEppEv.exit ] ; 2 uses
  %.0.lcssa = phi ptr [ null, %bb.a ], [ %spec.select, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE14basic_iteratorIlEppEv.exit ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.sroa.539.0..sroa_idx.le = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !476  ; 3 uses
  %i.u = icmp eq i64 %i.t, 0
  %i.v = icmp eq ptr %.sroa.040.0.lcssa, null     ; 2 uses
  %or.cond.not = select i1 %i.u, i1 true, i1 %i.v
  br i1 %or.cond.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.w = getelementptr i8, ptr %.sroa.040.0.lcssa, i64 16
  %i.x = icmp eq ptr %.sroa.9.0.lcssa, %i.w
  %i.y = icmp ne ptr %.0.lcssa, null
  %or.cond4 = select i1 %i.x, i1 %i.y, i1 false
  br i1 %or.cond4, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !26  ; 6 uses
  %i.ab = load ptr, ptr %.0.lcssa, align 8, !tbaa !22 ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.ab, null           ; 2 uses
  %.val = load ptr, ptr %.sroa.438.0..sroa_idx, align 8
  %3 = select i1 %.not.i.i11, ptr %.val, ptr %i.aa
  %i.ac = ptrtoint ptr %3 to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3
  %i.ag = sub i64 %i.t, %i.af
  store i64 %i.ag, ptr %i.s, align 8, !tbaa !476
  br i1 %.not.i.i11, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12EraseAllFromENS3_14basic_iteratorIlEE.exit21.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.013.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %i.ab, %bb.e ] ; 4 uses
  %i.ah = load ptr, ptr %.013.i, align 8, !tbaa !22 ; 2 uses
  %i.ai = ptrtoint ptr %.013.i to i64
  %.not.i9.i = icmp eq ptr %i.ah, null            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i, i64 8
  %.in.i10.i = select i1 %.not.i9.i, ptr %.sroa.438.0..sroa_idx, ptr %i.aj
  %i.ak = load ptr, ptr %.in.i10.i, align 8, !tbaa !226
  %i.al = ptrtoint ptr %i.ak to i64
  %reass.sub = sub i64 %i.al, %i.ai
  %i.am = add i64 %reass.sub, -16
  %i.an = ashr exact i64 %i.am, 3
  %i.ao = load i64, ptr %i.s, align 8, !tbaa !476
  %i.ap = sub i64 %i.ao, %i.an
  store i64 %i.ap, ptr %i.s, align 8, !tbaa !476
  tail call void @_ZdlPv(ptr noundef nonnull %.013.i) #22
  br i1 %.not.i9.i, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12EraseAllFromENS3_14basic_iteratorIlEE.exit21.sink.split, label %.lr.ph.i, !llvm.loop !669

bb.f:                                             ; preds = %.critedge
  br i1 %i.v, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12EraseAllFromENS3_14basic_iteratorIlEE.exit21, label %.thread

.thread:                                          ; preds = %bb.d, %bb.f
  %i.aq = load ptr, ptr %.sroa.040.0.lcssa, align 8, !tbaa !22 ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.aq, null           ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.040.0.lcssa, i64 8
  %.in.i.i14 = select i1 %.not.i.i13, ptr %.sroa.438.0..sroa_idx, ptr %i.ar
  %i.as = load ptr, ptr %.in.i.i14, align 8, !tbaa !226
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %.sroa.9.0.lcssa to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 3
  %i.ax = sub i64 %i.t, %i.aw
  store i64 %i.ax, ptr %i.s, align 8, !tbaa !476
  br i1 %.not.i.i13, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12EraseAllFromENS3_14basic_iteratorIlEE.exit21.sink.split, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %.thread, %.lr.ph.i15
  %.013.i16 = phi ptr [ %i.ay, %.lr.ph.i15 ], [ %i.aq, %.thread ] ; 4 uses
  %i.ay = load ptr, ptr %.013.i16, align 8, !tbaa !22 ; 2 uses
  %i.az = ptrtoint ptr %.013.i16 to i64
  %.not.i9.i17 = icmp eq ptr %i.ay, null          ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i16, i64 8
  %.in.i10.i18 = select i1 %.not.i9.i17, ptr %.sroa.438.0..sroa_idx, ptr %i.ba
  %i.bb = load ptr, ptr %.in.i10.i18, align 8, !tbaa !226
  %i.bc = ptrtoint ptr %i.bb to i64
  %reass.sub71 = sub i64 %i.bc, %i.az
  %i.bd = add i64 %reass.sub71, -16
  %i.be = ashr exact i64 %i.bd, 3
  %i.bf = load i64, ptr %i.s, align 8, !tbaa !476
  %i.bg = sub i64 %i.bf, %i.be
  store i64 %i.bg, ptr %i.s, align 8, !tbaa !476
  tail call void @_ZdlPv(ptr noundef nonnull %.013.i16) #22
  br i1 %.not.i9.i17, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12EraseAllFromENS3_14basic_iteratorIlEE.exit21.sink.split, label %.lr.ph.i15, !llvm.loop !669

_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12EraseAllFromENS3_14basic_iteratorIlEE.exit21.sink.split: ; preds = %.lr.ph.i, %.lr.ph.i15, %.thread, %bb.e
  %.sroa.040.0.lcssa.sink85 = phi ptr [ %.0.lcssa, %bb.e ], [ %.sroa.040.0.lcssa, %.lr.ph.i15 ], [ %.sroa.040.0.lcssa, %.thread ], [ %.0.lcssa, %.lr.ph.i ] ; 2 uses
  %.sroa.9.0.lcssa.sink = phi ptr [ %i.aa, %bb.e ], [ %.sroa.9.0.lcssa, %.lr.ph.i15 ], [ %.sroa.9.0.lcssa, %.thread ], [ %i.aa, %.lr.ph.i ] ; 2 uses
  %.sroa.17.0.lcssa.sink = phi ptr [ %i.aa, %bb.e ], [ %.sroa.17.0.lcssa, %.lr.ph.i15 ], [ %.sroa.17.0.lcssa, %.thread ], [ %i.aa, %.lr.ph.i ]
  store ptr %.sroa.040.0.lcssa.sink85, ptr %i.r, align 8
  store ptr %.sroa.9.0.lcssa.sink, ptr %.sroa.438.0..sroa_idx, align 8
  store ptr %.sroa.17.0.lcssa.sink, ptr %.sroa.539.0..sroa_idx.le, align 8
  store ptr null, ptr %.sroa.040.0.lcssa.sink85, align 8, !tbaa !22
  br label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12EraseAllFromENS3_14basic_iteratorIlEE.exit21

_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12EraseAllFromENS3_14basic_iteratorIlEE.exit21: ; preds = %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12EraseAllFromENS3_14basic_iteratorIlEE.exit21.sink.split, %bb.f
  %i.bh = phi ptr [ %.sroa.438.0.copyload, %bb.f ], [ %.sroa.9.0.lcssa.sink, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12EraseAllFromENS3_14basic_iteratorIlEE.exit21.sink.split ]
  %.not68 = icmp eq ptr %.sroa.050.0.lcssa, %2
  br i1 %.not68, label %._crit_edge, label %.lr.ph70

.lr.ph70:                                         ; preds = %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12EraseAllFromENS3_14basic_iteratorIlEE.exit21
  %.pre = load ptr, ptr %.sroa.539.0..sroa_idx.le, align 8, !tbaa !670
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph70, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE9push_backERKl.exit
  %i.bi = phi ptr [ %.pre, %.lr.ph70 ], [ %i.cc, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE9push_backERKl.exit ] ; 2 uses
  %i.bj = phi ptr [ %i.bh, %.lr.ph70 ], [ %i.cg, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE9push_backERKl.exit ] ; 2 uses
  %.sroa.050.169 = phi ptr [ %.sroa.050.0.lcssa, %.lr.ph70 ], [ %i.ci, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE9push_backERKl.exit ] ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.bi
  br i1 %i.bk, label %bb.h, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE9push_backERKl.exit

bb.h:                                             ; preds = %bb.g
  %i.bl = load ptr, ptr %i.r, align 8, !tbaa !474 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12NewBlockSizeEv.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !26
  %i.bo = ptrtoint ptr %i.bl to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %reass.sub72 = sub i64 %i.bp, %i.bo
  %i.bq = add i64 %reass.sub72, -16
  %i.br = ashr exact i64 %i.bq, 2
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.br, i64 2)
  br label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12NewBlockSizeEv.exit.i.i.i.i

_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12NewBlockSizeEv.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i = phi i64 [ %.sroa.speculated.i.i.i.i.i, %bb.i ], [ 2, %bb.h ] ; 2 uses
  %i.bs = shl nuw nsw i64 %.0.i.i.i.i.i, 3
  %i.bt = add nuw nsw i64 %i.bs, 16
  %i.bu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #26 ; 6 uses
  store ptr null, ptr %i.bu, align 8, !tbaa !22
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = add i64 %i.bw, 16
  %i.by = inttoptr i64 %i.bx to ptr               ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.0.i.i.i.i.i ; 4 uses
  store ptr %i.bz, ptr %i.bv, align 8, !tbaa !26
  %i.ca = load ptr, ptr %0, align 8, !tbaa !474
  %.not.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12NewBlockSizeEv.exit.i.i.i.i
  store ptr %i.bu, ptr %0, align 8
  store ptr %i.by, ptr %.sroa.9.0..sroa_idx, align 8
  store ptr %i.bz, ptr %.sroa.17.0..sroa_idx, align 8
  br label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12AddTailBlockEv.exit.i.i.i

bb.k:                                             ; preds = %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12NewBlockSizeEv.exit.i.i.i.i
  %i.cb = load ptr, ptr %i.r, align 8, !tbaa !474
  store ptr %i.bu, ptr %i.cb, align 8, !tbaa !22
  br label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12AddTailBlockEv.exit.i.i.i

_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12AddTailBlockEv.exit.i.i.i: ; preds = %bb.k, %bb.j
  store ptr %i.bu, ptr %i.r, align 8
  store ptr %i.bz, ptr %.sroa.539.0..sroa_idx.le, align 8
  br label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE9push_backERKl.exit

_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE9push_backERKl.exit: ; preds = %bb.g, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12AddTailBlockEv.exit.i.i.i
  %i.cc = phi ptr [ %i.bz, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12AddTailBlockEv.exit.i.i.i ], [ %i.bi, %bb.g ]
  %i.cd = phi ptr [ %i.by, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12AddTailBlockEv.exit.i.i.i ], [ %i.bj, %bb.g ] ; 2 uses
  %i.ce = load i64, ptr %i.s, align 8, !tbaa !476
  %i.cf = add i64 %i.ce, 1
  store i64 %i.cf, ptr %i.s, align 8, !tbaa !476
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  store ptr %i.cg, ptr %.sroa.438.0..sroa_idx, align 8, !tbaa !480
  %i.ch = load i64, ptr %.sroa.050.169, align 8, !tbaa !34
  store i64 %i.ch, ptr %i.cd, align 8, !tbaa !34
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.050.169, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ci, %2
  br i1 %.not, label %._crit_edge, label %bb.g, !llvm.loop !966

._crit_edge:                                      ; preds = %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE9push_backERKl.exit, %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12EraseAllFromENS3_14basic_iteratorIlEE.exit21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_AssignShrinks_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_AssignShrinks_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_131ChunkedQueue_AssignShrinks_TestE, i64 16), ptr %i.a, align 8, !tbaa !9
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #24
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_131ChunkedQueue_AssignShrinks_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_131ChunkedQueue_AssignShrinks_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::chunked_queue.227", align 8 ; 15 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %3 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.81", align 4 ; 5 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_141ChunkedQueue_AssignBoundaryCondition_Test8TestBodyEv:bb.a

bb.ce:                                            ; preds = %bb.cd
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.he = load ptr, ptr %15, align 8, !tbaa !56   ; 3 uses
  %.not.i.i116 = icmp eq ptr %i.he, null
  br i1 %.not.i.i116, label %_ZN7testing7MessageD2Ev.exit118, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117: ; preds = %bb.ce
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !9
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(128) %i.he) #22, !inline_history !58
  br label %_ZN7testing7MessageD2Ev.exit118

_ZN7testing7MessageD2Ev.exit118:                  ; preds = %bb.ce, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.cj

bb.cf:                                            ; preds = %bb.ca
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit121

bb.cg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit115
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cd
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #22
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.pn40 = phi { ptr, i32 } [ %i.hk, %bb.ch ], [ %i.hj, %bb.cg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.hl = load ptr, ptr %15, align 8, !tbaa !56   ; 3 uses
  %.not.i.i119 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i119, label %_ZN7testing7MessageD2Ev.exit121, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120: ; preds = %bb.ci
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !9
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8
  call void %i.ho(ptr noundef nonnull align 8 dereferenceable(128) %i.hl) #22, !inline_history !58
  br label %_ZN7testing7MessageD2Ev.exit121

_ZN7testing7MessageD2Ev.exit121:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120, %bb.ci, %bb.cf
  %.pn40.pn = phi { ptr, i32 } [ %i.hi, %bb.cf ], [ %.pn40, %bb.ci ], [ %.pn40, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #22
  br label %bb.cl

bb.cj:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit113, %_ZN7testing7MessageD2Ev.exit118
  %i.hp = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !51 ; 4 uses
  %.not.i.i122 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i122, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !52 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 16 ; 2 uses
  %i.ht = icmp eq ptr %i.hr, %i.hs
  br i1 %i.ht, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i123: ; preds = %bb.ck
  %i.hu = load i64, ptr %i.hs, align 8, !tbaa !59
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hv) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i123
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef 32) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.cj, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 16) #24
  %i.hw = load ptr, ptr %1, align 8, !tbaa !998   ; 2 uses
  %.not7.i = icmp eq ptr %i.hw, null
  br i1 %.not7.i, label %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %.lr.ph.i
  %.08.i = phi ptr [ %i.hx, %.lr.ph.i ], [ %i.hw, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 2 uses
  %i.hx = load ptr, ptr %.08.i, align 8, !tbaa !974 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.08.i) #22
  %.not.i = icmp eq ptr %i.hx, null
  br i1 %.not.i, label %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEED2Ev.exit, label %.lr.ph.i

_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEED2Ev.exit: ; preds = %.lr.ph.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void

bb.cl:                                            ; preds = %_ZN7testing7MessageD2Ev.exit121, %bb.bz
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn40.pn, %_ZN7testing7MessageD2Ev.exit121 ], [ %i.gz, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit131

_ZNSt6vectorIiSaIiEED2Ev.exit131:                 ; preds = %bb.cl, %bb.by, %bb.bj, %bb.bi, %bb.ao, %bb.z, %bb.j
  %.pn40.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn, %bb.cl ], [ %.pn36.pn.pn, %bb.by ], [ %i.fv, %bb.bj ], [ %.pn32.pn.pn, %bb.bi ], [ %.pn28.pn.pn, %bb.ao ], [ %.pn.pn.pn, %bb.z ], [ %i.br, %bb.j ]
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 16) #24
  br label %.body

.body:                                            ; preds = %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i, %_ZNSt6vectorIiSaIiEED2Ev.exit131
  %.pn40.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit131 ], [ %i.bl, %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i ]
  %i.hy = load ptr, ptr %1, align 8, !tbaa !998   ; 2 uses
  %.not7.i132 = icmp eq ptr %i.hy, null
  br i1 %.not7.i132, label %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEED2Ev.exit136, label %.lr.ph.i133

.lr.ph.i133:                                      ; preds = %.body, %.lr.ph.i133
  %.08.i134 = phi ptr [ %i.hz, %.lr.ph.i133 ], [ %i.hy, %.body ] ; 2 uses
  %i.hz = load ptr, ptr %.08.i134, align 8, !tbaa !974 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.08.i134) #22
  %.not.i135 = icmp eq ptr %i.hz, null
  br i1 %.not.i135, label %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEED2Ev.exit136, label %.lr.ph.i133

_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEED2Ev.exit136: ; preds = %.lr.ph.i133, %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %.pn40.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE6assignIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiS2_EEEvEEvT_SB_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.040.0.copyload = load ptr, ptr %0, align 8, !tbaa !1004 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !1005 ; 3 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.17.0.copyload = load ptr, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !1005 ; 2 uses
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %.sroa.438.0.copyload = load ptr, ptr %.sroa.438.0..sroa_idx, align 8, !tbaa !1005 ; 3 uses
  %i.a = icmp ne ptr %.sroa.9.0.copyload, %.sroa.438.0.copyload
  %i.b = icmp ne ptr %1, %2
  %or.cond58 = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond58, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE14basic_iteratorIiEppEv.exit
  %.063 = phi ptr [ %spec.select, %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE14basic_iteratorIiEppEv.exit ], [ null, %bb.a ]
  %.sroa.050.062 = phi ptr [ %i.o, %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE14basic_iteratorIiEppEv.exit ], [ %1, %bb.a ] ; 2 uses
  %.sroa.17.061 = phi ptr [ %.sroa.17.1, %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE14basic_iteratorIiEppEv.exit ], [ %.sroa.17.0.copyload, %bb.a ] ; 3 uses
  %.sroa.9.060 = phi ptr [ %.sroa.9.1, %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE14basic_iteratorIiEppEv.exit ], [ %.sroa.9.0.copyload, %bb.a ] ; 2 uses
  %.sroa.040.059 = phi ptr [ %.sroa.040.1, %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE14basic_iteratorIiEppEv.exit ], [ %.sroa.040.0.copyload, %bb.a ] ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.9.060, i64 4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.040.059, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !970
  %i.f = icmp eq ptr %i.c, %i.e
  %spec.select = select i1 %i.f, ptr %.sroa.040.059, ptr %.063 ; 2 uses
  %i.g = load i32, ptr %.sroa.050.062, align 4, !tbaa !177
  store i32 %i.g, ptr %.sroa.9.060, align 4, !tbaa !177
  %i.h = icmp eq ptr %i.c, %.sroa.17.061
  br i1 %i.h, label %bb.b, label %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE14basic_iteratorIiEppEv.exit

bb.b:                                             ; preds = %.lr.ph
  %i.i = load ptr, ptr %.sroa.040.059, align 8, !tbaa !974 ; 4 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE14basic_iteratorIiEppEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = add i64 %i.j, 16
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !970
  br label %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE14basic_iteratorIiEppEv.exit

_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE14basic_iteratorIiEppEv.exit: ; preds = %.lr.ph, %bb.b, %bb.c
  %.sroa.040.1 = phi ptr [ %.sroa.040.059, %bb.b ], [ %i.i, %bb.c ], [ %.sroa.040.059, %.lr.ph ] ; 2 uses
  %.sroa.9.1 = phi ptr [ %i.c, %bb.b ], [ %i.l, %bb.c ], [ %i.c, %.lr.ph ] ; 3 uses
  %.sroa.17.1 = phi ptr [ %.sroa.17.061, %bb.b ], [ %i.n, %bb.c ], [ %.sroa.17.061, %.lr.ph ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.050.062, i64 4 ; 3 uses
  %i.p = icmp ne ptr %.sroa.9.1, %.sroa.438.0.copyload
  %i.q = icmp ne ptr %i.o, %2
  %or.cond = select i1 %i.p, i1 %i.q, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !1006

.critedge:                                        ; preds = %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE14basic_iteratorIiEppEv.exit, %bb.a
  %.sroa.040.0.lcssa = phi ptr [ %.sroa.040.0.copyload, %bb.a ], [ %.sroa.040.1, %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE14basic_iteratorIiEppEv.exit ] ; 6 uses
  %.sroa.9.0.lcssa = phi ptr [ %.sroa.9.0.copyload, %bb.a ], [ %.sroa.9.1, %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE14basic_iteratorIiEppEv.exit ] ; 4 uses
  %.sroa.17.0.lcssa = phi ptr [ %.sroa.17.0.copyload, %bb.a ], [ %.sroa.17.1, %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE14basic_iteratorIiEppEv.exit ] ; 2 uses
  %.sroa.050.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.o, %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE14basic_iteratorIiEppEv.exit ] ; 2 uses
  %.0.lcssa = phi ptr [ null, %bb.a ], [ %spec.select, %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE14basic_iteratorIiEppEv.exit ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.sroa.539.0..sroa_idx.le = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !978  ; 3 uses
  %i.u = icmp eq i64 %i.t, 0
  %i.v = icmp eq ptr %.sroa.040.0.lcssa, null     ; 2 uses
  %or.cond.not = select i1 %i.u, i1 true, i1 %i.v
  br i1 %or.cond.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.w = getelementptr i8, ptr %.sroa.040.0.lcssa, i64 16
  %i.x = icmp eq ptr %.sroa.9.0.lcssa, %i.w
  %i.y = icmp ne ptr %.0.lcssa, null
  %or.cond4 = select i1 %i.x, i1 %i.y, i1 false
  br i1 %or.cond4, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !970 ; 6 uses
  %i.ab = load ptr, ptr %.0.lcssa, align 8, !tbaa !974 ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.ab, null           ; 2 uses
  %.val = load ptr, ptr %.sroa.438.0..sroa_idx, align 8
  %3 = select i1 %.not.i.i11, ptr %.val, ptr %i.aa
  %i.ac = ptrtoint ptr %3 to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 2
  %i.ag = sub i64 %i.t, %i.af
  store i64 %i.ag, ptr %i.s, align 8, !tbaa !978
  br i1 %.not.i.i11, label %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE12EraseAllFromENS3_14basic_iteratorIiEE.exit21.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.013.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %i.ab, %bb.e ] ; 4 uses
  %i.ah = load ptr, ptr %.013.i, align 8, !tbaa !974 ; 2 uses
  %i.ai = ptrtoint ptr %.013.i to i64
  %.not.i9.i = icmp eq ptr %i.ah, null            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i, i64 8
  %.in.i10.i = select i1 %.not.i9.i, ptr %.sroa.438.0..sroa_idx, ptr %i.aj
  %i.ak = load ptr, ptr %.in.i10.i, align 8, !tbaa !1005
  %i.al = ptrtoint ptr %i.ak to i64
  %reass.sub = sub i64 %i.al, %i.ai
  %i.am = add i64 %reass.sub, -16
  %i.an = ashr exact i64 %i.am, 2
  %i.ao = load i64, ptr %i.s, align 8, !tbaa !978
  %i.ap = sub i64 %i.ao, %i.an
  store i64 %i.ap, ptr %i.s, align 8, !tbaa !978
  tail call void @_ZdlPv(ptr noundef nonnull %.013.i) #22
  br i1 %.not.i9.i, label %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE12EraseAllFromENS3_14basic_iteratorIiEE.exit21.sink.split, label %.lr.ph.i, !llvm.loop !1007

bb.f:                                             ; preds = %.critedge
  br i1 %i.v, label %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE12EraseAllFromENS3_14basic_iteratorIiEE.exit21, label %.thread

.thread:                                          ; preds = %bb.d, %bb.f
  %i.aq = load ptr, ptr %.sroa.040.0.lcssa, align 8, !tbaa !974 ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.aq, null           ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.040.0.lcssa, i64 8
  %.in.i.i14 = select i1 %.not.i.i13, ptr %.sroa.438.0..sroa_idx, ptr %i.ar
  %i.as = load ptr, ptr %.in.i.i14, align 8, !tbaa !1005
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %.sroa.9.0.lcssa to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 2
  %i.ax = sub i64 %i.t, %i.aw
  store i64 %i.ax, ptr %i.s, align 8, !tbaa !978
  br i1 %.not.i.i13, label %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE12EraseAllFromENS3_14basic_iteratorIiEE.exit21.sink.split, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %.thread, %.lr.ph.i15
  %.013.i16 = phi ptr [ %i.ay, %.lr.ph.i15 ], [ %i.aq, %.thread ] ; 4 uses
  %i.ay = load ptr, ptr %.013.i16, align 8, !tbaa !974 ; 2 uses
  %i.az = ptrtoint ptr %.013.i16 to i64
  %.not.i9.i17 = icmp eq ptr %i.ay, null          ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i16, i64 8
  %.in.i10.i18 = select i1 %.not.i9.i17, ptr %.sroa.438.0..sroa_idx, ptr %i.ba
  %i.bb = load ptr, ptr %.in.i10.i18, align 8, !tbaa !1005
  %i.bc = ptrtoint ptr %i.bb to i64
  %reass.sub71 = sub i64 %i.bc, %i.az
  %i.bd = add i64 %reass.sub71, -16
  %i.be = ashr exact i64 %i.bd, 2
  %i.bf = load i64, ptr %i.s, align 8, !tbaa !978
  %i.bg = sub i64 %i.bf, %i.be
  store i64 %i.bg, ptr %i.s, align 8, !tbaa !978
  tail call void @_ZdlPv(ptr noundef nonnull %.013.i16) #22
  br i1 %.not.i9.i17, label %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE12EraseAllFromENS3_14basic_iteratorIiEE.exit21.sink.split, label %.lr.ph.i15, !llvm.loop !1007

_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE12EraseAllFromENS3_14basic_iteratorIiEE.exit21.sink.split: ; preds = %.lr.ph.i, %.lr.ph.i15, %.thread, %bb.e
  %.sroa.040.0.lcssa.sink85 = phi ptr [ %.0.lcssa, %bb.e ], [ %.sroa.040.0.lcssa, %.lr.ph.i15 ], [ %.sroa.040.0.lcssa, %.thread ], [ %.0.lcssa, %.lr.ph.i ] ; 2 uses
  %.sroa.9.0.lcssa.sink = phi ptr [ %i.aa, %bb.e ], [ %.sroa.9.0.lcssa, %.lr.ph.i15 ], [ %.sroa.9.0.lcssa, %.thread ], [ %i.aa, %.lr.ph.i ] ; 2 uses
  %.sroa.17.0.lcssa.sink = phi ptr [ %i.aa, %bb.e ], [ %.sroa.17.0.lcssa, %.lr.ph.i15 ], [ %.sroa.17.0.lcssa, %.thread ], [ %i.aa, %.lr.ph.i ]
  store ptr %.sroa.040.0.lcssa.sink85, ptr %i.r, align 8
  store ptr %.sroa.9.0.lcssa.sink, ptr %.sroa.438.0..sroa_idx, align 8
  store ptr %.sroa.17.0.lcssa.sink, ptr %.sroa.539.0..sroa_idx.le, align 8
  store ptr null, ptr %.sroa.040.0.lcssa.sink85, align 8, !tbaa !974
  br label %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE12EraseAllFromENS3_14basic_iteratorIiEE.exit21

_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE12EraseAllFromENS3_14basic_iteratorIiEE.exit21: ; preds = %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE12EraseAllFromENS3_14basic_iteratorIiEE.exit21.sink.split, %bb.f
  %i.bh = phi ptr [ %.sroa.438.0.copyload, %bb.f ], [ %.sroa.9.0.lcssa.sink, %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE12EraseAllFromENS3_14basic_iteratorIiEE.exit21.sink.split ]
  %.not68 = icmp eq ptr %.sroa.050.0.lcssa, %2
  br i1 %.not68, label %._crit_edge, label %.lr.ph70

.lr.ph70:                                         ; preds = %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE12EraseAllFromENS3_14basic_iteratorIiEE.exit21
  %.pre = load ptr, ptr %.sroa.539.0..sroa_idx.le, align 8, !tbaa !997
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph70, %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE9push_backERKi.exit
  %i.bi = phi ptr [ %.pre, %.lr.ph70 ], [ %i.cc, %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE9push_backERKi.exit ] ; 2 uses
  %i.bj = phi ptr [ %i.bh, %.lr.ph70 ], [ %i.cg, %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE9push_backERKi.exit ] ; 2 uses
  %.sroa.050.169 = phi ptr [ %.sroa.050.0.lcssa, %.lr.ph70 ], [ %i.ci, %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE9push_backERKi.exit ] ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.bi
  br i1 %i.bk, label %bb.h, label %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE9push_backERKi.exit

bb.h:                                             ; preds = %bb.g
  %i.bl = load ptr, ptr %i.r, align 8, !tbaa !998 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE12NewBlockSizeEv.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !970
  %i.bo = ptrtoint ptr %i.bl to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %reass.sub72 = sub i64 %i.bp, %i.bo
  %i.bq = add i64 %reass.sub72, -16
  %i.br = ashr exact i64 %i.bq, 1
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.br, i64 4)
  br label %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE12NewBlockSizeEv.exit.i.i.i.i

_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE12NewBlockSizeEv.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i = phi i64 [ %.sroa.speculated.i.i.i.i.i, %bb.i ], [ 4, %bb.h ] ; 2 uses
  %i.bs = shl nuw nsw i64 %.0.i.i.i.i.i, 2
  %i.bt = add nuw nsw i64 %i.bs, 16
  %i.bu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #26 ; 6 uses
  store ptr null, ptr %i.bu, align 8, !tbaa !974
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = add i64 %i.bw, 16
  %i.by = inttoptr i64 %i.bx to ptr               ; 3 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.0.i.i.i.i.i ; 4 uses
  store ptr %i.bz, ptr %i.bv, align 8, !tbaa !970
  %i.ca = load ptr, ptr %0, align 8, !tbaa !998
  %.not.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE12NewBlockSizeEv.exit.i.i.i.i
  store ptr %i.bu, ptr %0, align 8
  store ptr %i.by, ptr %.sroa.9.0..sroa_idx, align 8
  store ptr %i.bz, ptr %.sroa.17.0..sroa_idx, align 8
  br label %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE12AddTailBlockEv.exit.i.i.i

bb.k:                                             ; preds = %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE12NewBlockSizeEv.exit.i.i.i.i
  %i.cb = load ptr, ptr %i.r, align 8, !tbaa !998
  store ptr %i.bu, ptr %i.cb, align 8, !tbaa !974
  br label %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE12AddTailBlockEv.exit.i.i.i

_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE12AddTailBlockEv.exit.i.i.i: ; preds = %bb.k, %bb.j
  store ptr %i.bu, ptr %i.r, align 8
  store ptr %i.bz, ptr %.sroa.539.0..sroa_idx.le, align 8
  br label %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE9push_backERKi.exit

_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE9push_backERKi.exit: ; preds = %bb.g, %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE12AddTailBlockEv.exit.i.i.i
  %i.cc = phi ptr [ %i.bz, %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE12AddTailBlockEv.exit.i.i.i ], [ %i.bi, %bb.g ]
  %i.cd = phi ptr [ %i.by, %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE12AddTailBlockEv.exit.i.i.i ], [ %i.bj, %bb.g ] ; 2 uses
  %i.ce = load i64, ptr %i.s, align 8, !tbaa !978
  %i.cf = add i64 %i.ce, 1
  store i64 %i.cf, ptr %i.s, align 8, !tbaa !978
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 4 ; 2 uses
  store ptr %i.cg, ptr %.sroa.438.0..sroa_idx, align 8, !tbaa !983
  %i.ch = load i32, ptr %.sroa.050.169, align 4, !tbaa !177
  store i32 %i.ch, ptr %i.cd, align 4, !tbaa !177
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.050.169, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.ci, %2
  br i1 %.not, label %._crit_edge, label %bb.g, !llvm.loop !1008

._crit_edge:                                      ; preds = %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE9push_backERKi.exit, %_ZN4absl12lts_2026052613chunked_queueIiLm4ELm4ESaIiEE12EraseAllFromENS3_14basic_iteratorIiEE.exit21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperEQFailureImiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN7testing13PrintToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN7testing13PrintToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIimEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageIimEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIimEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.a = load ptr, ptr %6, align 8, !tbaa !52     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !59
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.f = load ptr, ptr %5, align 8, !tbaa !52     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = load i64, ptr %i.g, align 8, !tbaa !59
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
end_hunk_2
