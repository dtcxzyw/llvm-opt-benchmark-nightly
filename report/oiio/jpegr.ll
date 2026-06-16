inline.NumInlined: 1678
inline.NumDeleted: 808
begin_hunk_0_@"_ZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS2_PNS_25uhdr_gainmap_metadata_extERSt10unique_ptrINS_18uhdr_raw_image_extESt14default_deleteIS6_EEbbENK3$_0clEv":.lr.ph.i.i.i.i
  invoke void @_ZNSt5dequeISt5tupleIJjjEESaIS1_EE16_M_push_back_auxIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.t, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %_ZN8ultrahdr8JobQueue10enqueueJobEjj.exit unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit7.i

_ZNSt11unique_lockISt5mutexED2Ev.exit7.i:         ; preds = %bb.p
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.dc = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #28 ; 0 uses
  br label %.body

_ZN8ultrahdr8JobQueue10enqueueJobEjj.exit:        ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.dd = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #28 ; 0 uses
  call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.v) #28
  %i.de = load i32, ptr %i.q, align 8, !tbaa !183 ; 2 uses
  %i.df = icmp ult i32 %.sroa.speculated, %i.de
  br i1 %i.df, label %bb.m, label %._crit_edge

bb.q:                                             ; preds = %bb.n
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %._crit_edge
  store i8 1, ptr %2, align 8, !tbaa !13
  %i.dh = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #28 ; 0 uses
  call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.v) #28
  %i.di = load ptr, ptr %i.am, align 8, !tbaa !162
  %.not.i.i48 = icmp eq ptr %i.di, null
  br i1 %.not.i.i48, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt25__throw_bad_function_callv() #29
          to label %.noexc49 unwind label %.loopexit.split-lp

.noexc49:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.dj = load ptr, ptr %i.an, align 8, !tbaa !164
  invoke void %i.dj(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNKSt8functionIFvvEEclEv.exit unwind label %.loopexit.split-lp, !inline_history !166

_ZNKSt8functionIFvvEEclEv.exit:                   ; preds = %bb.t
  %i.dk = load ptr, ptr %4, align 8, !tbaa !167   ; 6 uses
  %.not4.i = icmp eq ptr %i.dk, %i.aw
  br i1 %.not4.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNKSt8functionIFvvEEclEv.exit, %.noexc52
  %.sroa.01.05.i = phi ptr [ %i.dl, %.noexc52 ], [ %i.dk, %_ZNKSt8functionIFvvEEclEv.exit ] ; 2 uses
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01.05.i)
          to label %.noexc52 unwind label %.loopexit

.noexc52:                                         ; preds = %.lr.ph.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 8 ; 2 uses
  %.not.i51 = icmp eq ptr %i.dl, %i.aw
  br i1 %.not.i51, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i, label %.lr.ph.i, !llvm.loop !258

bb.u:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i53 = icmp eq ptr %i.dm, %i.aw
  br i1 %.not.i.i.i53, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i, !llvm.loop !259

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i:          ; preds = %.noexc52, %bb.u
  %.05.i.i.i = phi ptr [ %i.dm, %bb.u ], [ %i.dk, %.noexc52 ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %.05.i.i.i, align 8, !tbaa !142
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  call void @_ZSt9terminatev() #32
  unreachable

_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %bb.u, %_ZNKSt8functionIFvvEEclEv.exit
  %.not.i.i1.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i
  %i.dn = ptrtoint ptr %i.dk to i64
  %i.do = sub i64 %i.av, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.do) #30
  br label %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit

_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.dp = load ptr, ptr %i.am, align 8, !tbaa !162 ; 2 uses
  %.not.i54 = icmp eq ptr %i.dp, null
  br i1 %.not.i54, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit
  %i.dq = invoke noundef zeroext i1 %i.dp(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.y ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #32
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.v) #28
  %i.dt = load ptr, ptr %i.t, align 8, !tbaa !260 ; 2 uses
  %.not.i.i.i55 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i55, label %_ZN8ultrahdr8JobQueueD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !261 ; 2 uses
  %i.dx = load ptr, ptr %i.du, align 8, !tbaa !59 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = icmp ult ptr %i.dw, %i.dy
  br i1 %i.dz, label %.lr.ph.i.i.i.i56, label %_ZNSt11_Deque_baseISt5tupleIJjjEESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i.i

.lr.ph.i.i.i.i56:                                 ; preds = %bb.z, %.lr.ph.i.i.i.i56
  %.06.i.i.i.i = phi ptr [ %i.eb, %.lr.ph.i.i.i.i56 ], [ %i.dw, %bb.z ] ; 3 uses
  %i.ea = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !42
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef 512) #30
  %i.eb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.ec = icmp ult ptr %.06.i.i.i.i, %i.dx
  br i1 %i.ec, label %.lr.ph.i.i.i.i56, label %_ZNSt11_Deque_baseISt5tupleIJjjEESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i.i, !llvm.loop !60

_ZNSt11_Deque_baseISt5tupleIJjjEESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i56
  %.pre.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !260
  br label %_ZNSt11_Deque_baseISt5tupleIJjjEESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i.i

_ZNSt11_Deque_baseISt5tupleIJjjEESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseISt5tupleIJjjEESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i.i, %bb.z
  %i.ed = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseISt5tupleIJjjEESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i.i.i ], [ %i.dt, %bb.z ]
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !262
  %i.eg = shl i64 %i.ef, 3
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #30
  br label %_ZN8ultrahdr8JobQueueD2Ev.exit

_ZN8ultrahdr8JobQueueD2Ev.exit:                   ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNSt11_Deque_baseISt5tupleIJjjEESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.l, %bb.s, %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.q, %_ZNSt11unique_lockISt5mutexED2Ev.exit7.i, %_ZNSt6threadD2Ev.exit42
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6threadD2Ev.exit42 ], [ %i.db, %_ZNSt11unique_lockISt5mutexED2Ev.exit7.i ], [ %i.dg, %bb.q ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @_ZNSt6vectorISt6threadSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.eh = load ptr, ptr %i.am, align 8, !tbaa !162 ; 2 uses
  %.not.i57 = icmp eq ptr %i.eh, null
  br i1 %.not.i57, label %_ZNSt14_Function_baseD2Ev.exit58, label %bb.aa

bb.aa:                                            ; preds = %.body
  %i.ei = invoke noundef zeroext i1 %i.eh(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit58 unwind label %bb.ab ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  call void @__clang_call_terminate(ptr %i.ek) #32
  unreachable

_ZNSt14_Function_baseD2Ev.exit58:                 ; preds = %bb.aa, %.body, %bb.b
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bb, %bb.b ], [ %.pn.pn, %.body ], [ %.pn.pn, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @_ZN8ultrahdr8JobQueueD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS2_PNS_25uhdr_gainmap_metadata_extERSt10unique_ptrINS_18uhdr_raw_image_extESt14default_deleteIS6_EEbbENK3$_1clEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(133) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::tuple", align 4        ; 6 uses
  %2 = alloca %"class.std::tuple", align 4        ; 6 uses
  %3 = alloca %"struct.ultrahdr::uhdr_memory_block", align 8 ; 7 uses
  %i.a = alloca [3 x float], align 4              ; 11 uses
  %i.b = alloca [3 x float], align 4              ; 11 uses
  %4 = alloca %"class.std::mutex", align 8        ; 5 uses
  %5 = alloca %"class.ultrahdr::JobQueue", align 8 ; 22 uses
  %6 = alloca %"class.std::function", align 8     ; 13 uses
  %7 = alloca %"class.std::vector.36", align 8    ; 14 uses
  %8 = alloca %"class.std::thread", align 8       ; 9 uses
  %9 = alloca %"class.std::function", align 8     ; 13 uses
  %10 = alloca %"class.std::thread", align 8      ; 9 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !196    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !202
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 7 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !203
  %i.i = zext i32 %i.h to i64
  %11 = mul nuw i64 %i.i, %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !67, !range !25, !noundef !26
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = select i1 %i.l, i64 12, i64 4
  %i.n = mul i64 %11, %i.m
  call void @_ZN8ultrahdr17uhdr_memory_blockC1Em(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.n)
  %i.o = load ptr, ptr %3, align 8, !tbaa !104    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) @"__const._ZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS2_PNS_25uhdr_gainmap_metadata_extERSt10unique_ptrINS_18uhdr_raw_image_extESt14default_deleteIS6_EEbbENK3$_1clEv.gainmap_min", i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) @"__const._ZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS2_PNS_25uhdr_gainmap_metadata_extERSt10unique_ptrINS_18uhdr_raw_image_extESt14default_deleteIS6_EEbbENK3$_1clEv.gainmap_max", i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %i.p = call noundef i32 @_ZNSt6thread20hardware_concurrencyEv() #28 ; 3 uses
  %.sroa.speculated.i = call noundef range(i32 1, 0) i32 @llvm.umax.i32(i32 %i.p, i32 1)
  %.sroa.speculated215 = call i32 @llvm.umin.i32(i32 %.sroa.speculated.i, i32 4)
  %i.q = icmp ult i32 %i.p, 2                     ; 2 uses
  %i.r = load i32, ptr %i.g, align 4
  %spec.select = select i1 %i.q, i32 %i.r, i32 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i8 0, ptr %5, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.s, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseISt5tupleIJjjEESaIS1_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.s, i64 noundef 0)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 13 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, i8 0, i64 40, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 6 uses
  call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.u) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load <2 x ptr>, ptr %i.v, align 8, !tbaa !239
  %i.x = load i32, ptr %i.d, align 8, !tbaa !202
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load <2 x ptr>, ptr %i.y, align 8, !tbaa !58
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !58
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !58
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ah = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !58
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !214
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !215, !range !25, !noundef !26
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ao, align 8
  %i.ap = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #31
          to label %bb.c unwind label %bb.e       ; 16 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.c, ptr %i.ap, align 16, !tbaa !240
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store <2 x ptr> %i.w, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !239
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %i.o, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !263
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store i32 %i.x, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !3
  %.sroa.9210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store <2 x ptr> %i.z, ptr %.sroa.9210.0..sroa_idx, align 8, !tbaa !58
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  store <2 x ptr> %i.ab, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !58
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  store <2 x ptr> %i.ad, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !58
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  store <2 x ptr> %i.af, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !58
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 104
  store <2 x ptr> %i.ah, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !58
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 120
  store float %i.aj, ptr %.sroa.19.0..sroa_idx, align 8, !tbaa !236
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 124
  store i8 %i.al, ptr %.sroa.20.0..sroa_idx, align 4, !tbaa !241
  %.sroa.21211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 128
  store ptr %i.a, ptr %.sroa.21211.0..sroa_idx, align 16, !tbaa !263
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 136
  store ptr %i.b, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !263
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 144
  store ptr %4, ptr %.sroa.23.0..sroa_idx, align 16, !tbaa !265
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 152
  store ptr %5, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !135
  store ptr %i.ap, ptr %6, align 8, !tbaa !58
  store ptr @"_ZNSt17_Function_handlerIFvvEZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS4_PNS1_25uhdr_gainmap_metadata_extERSt10unique_ptrINS1_18uhdr_raw_image_extESt14default_deleteIS8_EEbbENK3$_1clEvEUlvE_E9_M_invokeERKSt9_Any_data", ptr %i.an, align 8, !tbaa !164
  store ptr @"_ZNSt17_Function_handlerIFvvEZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS4_PNS1_25uhdr_gainmap_metadata_extERSt10unique_ptrINS1_18uhdr_raw_image_extESt14default_deleteIS8_EEbbENK3$_1clEvEUlvE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation", ptr %i.am, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.aq = add nsw i32 %.sroa.speculated215, -1    ; 2 uses
  %i.ar = icmp ugt i32 %i.p, 1                    ; 2 uses
  br i1 %i.ar, label %.lr.ph, label %.preheader243

.lr.ph:                                           ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.f

.preheader243:                                    ; preds = %_ZNSt6threadD2Ev.exit, %bb.c
  %i.au = phi ptr [ null, %bb.c ], [ %i.co, %_ZNSt6threadD2Ev.exit ] ; 2 uses
  %i.av = phi ptr [ null, %bb.c ], [ %i.cp, %_ZNSt6threadD2Ev.exit ] ; 4 uses
  %i.aw = load i32, ptr %i.g, align 4, !tbaa !203 ; 2 uses
  %.not = icmp eq i32 %i.aw, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph261

.lr.ph261:                                        ; preds = %.preheader243
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 72
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.e:                                             ; preds = %bb.b
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit156

bb.f:                                             ; preds = %.lr.ph, %_ZNSt6threadD2Ev.exit
  %i.bc = phi ptr [ null, %.lr.ph ], [ %i.cn, %_ZNSt6threadD2Ev.exit ] ; 11 uses
  %i.bd = phi ptr [ null, %.lr.ph ], [ %i.co, %_ZNSt6threadD2Ev.exit ] ; 5 uses
  %i.be = phi ptr [ null, %.lr.ph ], [ %i.cp, %_ZNSt6threadD2Ev.exit ] ; 4 uses
  %.059259 = phi i32 [ 0, %.lr.ph ], [ %i.cq, %_ZNSt6threadD2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  invoke void @_ZNSt6threadC2IRSt8functionIFvvEEJEvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq ptr %i.be, %i.bd
  br i1 %.not.i.i, label %bb.h, label %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit.thread

_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit.thread: ; preds = %bb.g
  store i64 0, ptr %i.be, align 8, !tbaa !140
  %i.bf = load i64, ptr %8, align 8, !tbaa !142
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !142
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  store ptr %i.bg, ptr %i.as, align 8, !tbaa !136
  br label %_ZNSt6threadD2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.bh = ptrtoint ptr %i.bd to i64               ; 3 uses
  %i.bi = ptrtoint ptr %i.bc to i64               ; 3 uses
  %i.bj = sub i64 %i.bh, %i.bi                    ; 4 uses
  %i.bk = icmp eq i64 %i.bj, 9223372036854775800
  br i1 %i.bk, label %bb.i, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.76) #29
          to label %.noexc163 unwind label %.loopexit.split-lp245

.noexc163:                                        ; preds = %bb.i
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.h
  %i.bl = ashr exact i64 %i.bj, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bm = add nsw i64 %.sroa.speculated.i.i, %i.bl ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bl
  %i.bo = call i64 @llvm.umin.i64(i64 %i.bm, i64 1152921504606846975)
  %i.bp = select i1 %i.bn, i64 1152921504606846975, i64 %i.bo ; 3 uses
  %.not.i.i160 = icmp ne i64 %i.bp, 0
  call void @llvm.assume(i1 %.not.i.i160)
  %i.bq = shl nuw nsw i64 %i.bp, 3
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #31
          to label %.noexc164 unwind label %.loopexit244 ; 11 uses

.noexc164:                                        ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bj
  %i.bt = load i64, ptr %8, align 8, !tbaa !142
  store i64 %i.bt, ptr %i.bs, align 8, !tbaa !142
  store i64 0, ptr %8, align 8, !tbaa !142
  %.not10.i.i.i.i = icmp eq ptr %i.bc, %i.bd
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i, label %.lr.ph.i.i.i.i161.preheader

.lr.ph.i.i.i.i161.preheader:                      ; preds = %.noexc164
  %i.bu = add i64 %i.bh, -8
  %i.bv = sub i64 %i.bu, %i.bi                    ; 2 uses
  %i.bw = lshr i64 %i.bv, 3
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bv, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i161.preheader403, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i161.preheader
  %scevgep = getelementptr i8, ptr %i.br, i64 8
  %i.by = add i64 %i.bh, -8
  %i.bz = sub i64 %i.by, %i.bi
  %i.ca = and i64 %i.bz, -8                       ; 2 uses
  %scevgep364 = getelementptr i8, ptr %scevgep, i64 %i.ca
  %scevgep365 = getelementptr i8, ptr %i.bc, i64 8
  %scevgep366 = getelementptr i8, ptr %scevgep365, i64 %i.ca
  %bound0 = icmp ult ptr %i.br, %scevgep366
  %bound1 = icmp ult ptr %i.bc, %scevgep364
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i161.preheader403, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bx, 4611686018427387900     ; 3 uses
  %i.cb = shl i64 %n.vec, 3                       ; 2 uses
  %i.cc = getelementptr i8, ptr %i.br, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bc, i64 %i.cb
end_hunk_0
