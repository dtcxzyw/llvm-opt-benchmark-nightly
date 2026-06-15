inline.NumInlined: 13240
inline.NumDeleted: 6779
begin_hunk_0_@_ZN8facebook6hermes3cdp7message7runtime28InspectRequestedNotificationC2Ev:._crit_edge.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.e, ptr %i.f, align 8, !tbaa !45
  %i.g = load ptr, ptr %1, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store i8 0, ptr %i.h, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook6hermes3cdp7message12NotificationE, i64 16), ptr %0, align 8, !tbaa !84
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !44
  %i.k = load ptr, ptr %1, align 8, !tbaa !9      ; 2 uses
  %i.l = load i64, ptr %i.f, align 8, !tbaa !45   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.l, ptr %i.a, align 8, !tbaa !87
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %bb.a, label %._crit_edge.i.i.i

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #21 ; 2 uses
  store ptr %i.n, ptr %i.i, align 8, !tbaa !9
  %i.o = load i64, ptr %i.a, align 8, !tbaa !87
  store i64 %i.o, ptr %i.j, align 8, !tbaa !15
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.a, %._crit_edge.i.i
  %i.p = phi ptr [ %i.n, %bb.a ], [ %i.j, %._crit_edge.i.i ] ; 2 uses
  switch i64 %i.l, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN8facebook6hermes3cdp7message12NotificationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.q = load i8, ptr %i.k, align 1, !tbaa !15
  store i8 %i.q, ptr %i.p, align 1, !tbaa !15
  br label %_ZN8facebook6hermes3cdp7message12NotificationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.k, i64 %i.l, i1 false)
  br label %_ZN8facebook6hermes3cdp7message12NotificationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8facebook6hermes3cdp7message12NotificationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.r = load i64, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.r, ptr %i.s, align 8, !tbaa !45
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.v = load ptr, ptr %1, align 8, !tbaa !9      ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.c
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8facebook6hermes3cdp7message12NotificationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.x = load i64, ptr %i.c, align 8, !tbaa !15
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN8facebook6hermes3cdp7message12NotificationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook6hermes3cdp7message7runtime28InspectRequestedNotificationE, i64 16), ptr %0, align 8, !tbaa !84
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.aa, i8 0, i64 536, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook6hermes3cdp7message7runtime12RemoteObjectE, i64 16), ptr %i.z, align 8, !tbaa !84
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !44
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.ad, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.ae, align 8, !tbaa !305
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 0, ptr %i.af, align 8, !tbaa !305
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i8 0, ptr %i.ag, align 8, !tbaa !305
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i8 0, ptr %i.ah, align 8, !tbaa !487
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !44
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i64 0, ptr %i.ak, align 8, !tbaa !45
  store i8 0, ptr %i.aj, align 8, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 640
  store i8 0, ptr %i.al, align 8, !tbaa !324
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8facebook6hermes3cdp7message7runtime28InspectRequestedNotification7tryMakeEPKN6hermes6parser10JSONObjectE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.994") align 8 captures(none) initializes((0, 8)) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %3 = alloca %"class.std::unique_ptr.125", align 8 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(648) ptr @_Znwm(i64 noundef 648) #23, !noalias !2001 ; 13 uses
  tail call void @_ZN8facebook6hermes3cdp7message7runtime28InspectRequestedNotificationC2Ev(ptr noundef nonnull align 8 dereferenceable(648) %i.a), !noalias !2001
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = tail call noundef zeroext i1 @_ZN8facebook6hermes3cdp7message6assignINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA7_cEEbRT_PKN6hermes6parser10JSONObjectERKT0_(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(7) @.str.38)
  br i1 %i.c, label %bb.b, label %_ZNKSt14default_deleteIN8facebook6hermes3cdp7message7runtime28InspectRequestedNotificationEEclEPS5_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65
  %i.f = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr nonnull @.str.105, i64 6) ; 2 uses
  %i.g = extractvalue { i64, i8 } %i.f, 1
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit, label %_ZNKSt14default_deleteIN8facebook6hermes3cdp7message7runtime28InspectRequestedNotificationEEclEPS5_.exit.i

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit: ; preds = %bb.b
  %i.i = extractvalue { i64, i8 } %i.f, 0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !71   ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZNKSt14default_deleteIN8facebook6hermes3cdp7message7runtime28InspectRequestedNotificationEEclEPS5_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit
  %i.n = load i32, ptr %i.l, align 4, !tbaa !73, !noalias !2004
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %_ZNKSt14default_deleteIN8facebook6hermes3cdp7message7runtime28InspectRequestedNotificationEEclEPS5_.exit.i

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !65
  %i.s = tail call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr nonnull @.str.68, i64 6) ; 2 uses
  %i.t = extractvalue { i64, i8 } %i.s, 1
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i, label %_ZNKSt14default_deleteIN8facebook6hermes3cdp7message7runtime28InspectRequestedNotificationEEclEPS5_.exit.i

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i: ; preds = %bb.d
  %i.v = extractvalue { i64, i8 } %i.s, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !71   ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZNKSt14default_deleteIN8facebook6hermes3cdp7message7runtime28InspectRequestedNotificationEEclEPS5_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !73, !noalias !2007
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZN8facebook6hermes3cdp7message13valueFromJsonINS2_7runtime12RemoteObjectEEENSt9enable_ifIXsr3std10is_base_ofINS2_12SerializableET_EE5valueESt10unique_ptrIS8_St14default_deleteIS8_EEE4typeEPKN6hermes6parser9JSONValueE.exit.i, label %_ZN8facebook6hermes3cdp7message6assignINS2_7runtime12RemoteObjectEA7_cEEbRT_PKN6hermes6parser10JSONObjectERKT0_.exit.thread33

_ZN8facebook6hermes3cdp7message13valueFromJsonINS2_7runtime12RemoteObjectEEENSt9enable_ifIXsr3std10is_base_ofINS2_12SerializableET_EE5valueESt10unique_ptrIS8_St14default_deleteIS8_EEE4typeEPKN6hermes6parser9JSONValueE.exit.i: ; preds = %bb.e
  call void @_ZN8facebook6hermes3cdp7message7runtime12RemoteObject7tryMakeEPKN6hermes6parser10JSONObjectE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.125") align 8 %3, ptr noundef nonnull %i.y)
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !461  ; 4 uses
  %.not.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i, label %_ZN8facebook6hermes3cdp7message6assignINS2_7runtime12RemoteObjectEA7_cEEbRT_PKN6hermes6parser10JSONObjectERKT0_.exit.thread33, label %._crit_edge.i.i

_ZN8facebook6hermes3cdp7message6assignINS2_7runtime12RemoteObjectEA7_cEEbRT_PKN6hermes6parser10JSONObjectERKT0_.exit.thread33: ; preds = %_ZN8facebook6hermes3cdp7message13valueFromJsonINS2_7runtime12RemoteObjectEEENSt9enable_ifIXsr3std10is_base_ofINS2_12SerializableET_EE5valueESt10unique_ptrIS8_St14default_deleteIS8_EEE4typeEPKN6hermes6parser9JSONValueE.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZNKSt14default_deleteIN8facebook6hermes3cdp7message7runtime28InspectRequestedNotificationEEclEPS5_.exit.i

._crit_edge.i.i:                                  ; preds = %_ZN8facebook6hermes3cdp7message13valueFromJsonINS2_7runtime12RemoteObjectEEENSt9enable_ifIXsr3std10is_base_ofINS2_12SerializableET_EE5valueESt10unique_ptrIS8_St14default_deleteIS8_EEE4typeEPKN6hermes6parser9JSONValueE.exit.i
  %i.ac = tail call noundef nonnull align 8 dereferenceable(560) ptr @_ZN8facebook6hermes3cdp7message7runtime12RemoteObjectaSEOS4_(ptr noundef nonnull align 8 dereferenceable(560) %i.p, ptr noundef nonnull align 8 dereferenceable(560) %.pr.i) #21 ; 0 uses
  %i.ad = load ptr, ptr %.pr.i, align 8, !tbaa !84
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(560) %.pr.i) #21, !inline_history !635
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 600 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.ah, ptr %4, align 8, !tbaa !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ah, ptr noundef nonnull align 1 dereferenceable(5) @.str.188, i64 5, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 5, ptr %i.ai, align 8, !tbaa !45
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 21
  store i8 0, ptr %i.aj, align 1, !tbaa !15
  %i.ak = load ptr, ptr %i.q, align 8, !tbaa !65
  %i.al = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr nonnull %i.ah, i64 5) ; 2 uses
  %i.am = extractvalue { i64, i8 } %i.al, 1
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i8, label %_ZN8facebook6hermes3cdp7message12_GLOBAL__N_114assignJsonBlobERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6hermes6parser10JSONObjectERKS9_.exit

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i8: ; preds = %._crit_edge.i.i
  %i.ao = extractvalue { i64, i8 } %i.al, 0
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !71 ; 2 uses
  %.not.i9 = icmp eq ptr %i.aq, null
  br i1 %.not.i9, label %_ZN8facebook6hermes3cdp7message12_GLOBAL__N_114assignJsonBlobERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6hermes6parser10JSONObjectERKS9_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN8facebook6hermes3cdp12jsonValToStrB5cxx11EPKN6hermes6parser9JSONValueE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull %i.aq) #21
  %i.ar = load ptr, ptr %i.ag, align 8, !tbaa !9  ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 616 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  %i.au = load ptr, ptr %2, align 8, !tbaa !9     ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.aw = icmp eq ptr %i.au, %i.av                ; 2 uses
  br i1 %i.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  br i1 %i.aw, label %bb.g, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.f
  br i1 %i.aw, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !45 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  switch i64 %i.ay, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.ba = load i8, ptr %i.au, align 1, !tbaa !15
  store i8 %i.ba, ptr %i.ar, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %i.au, i64 %i.ay, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.bb = load i64, ptr %i.ax, align 8, !tbaa !45 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !45
  %i.bd = load ptr, ptr %i.ag, align 8, !tbaa !9
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb
  store i8 0, ptr %i.be, align 1, !tbaa !15
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  store ptr %i.au, ptr %i.ag, align 8, !tbaa !9
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = load <2 x i64>, ptr %i.bg, align 8, !tbaa !15
  store <2 x i64> %i.bh, ptr %i.bf, align 8, !tbaa !15
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bi = load i64, ptr %i.as, align 8, !tbaa !15
  store ptr %i.au, ptr %i.ag, align 8, !tbaa !9
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.bl = load <2 x i64>, ptr %i.bj, align 8, !tbaa !15
  store <2 x i64> %i.bl, ptr %i.bk, align 8, !tbaa !15
  %.not.i.i10 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i10, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.ar, ptr %2, align 8, !tbaa !9
  store i64 %i.bi, ptr %i.av, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.av, ptr %2, align 8, !tbaa !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.k, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.bm = phi ptr [ %i.ar, %bb.j ], [ %i.av, %bb.k ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bn, align 8, !tbaa !45
  store i8 0, ptr %i.bm, align 1, !tbaa !15
  %i.bo = load ptr, ptr %2, align 8, !tbaa !9     ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !15
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZN8facebook6hermes3cdp7message12_GLOBAL__N_114assignJsonBlobERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6hermes6parser10JSONObjectERKS9_.exit

_ZN8facebook6hermes3cdp7message12_GLOBAL__N_114assignJsonBlobERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6hermes6parser10JSONObjectERKS9_.exit: ; preds = %._crit_edge.i.i, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bt = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ false, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i8 ], [ false, %._crit_edge.i.i ]
  %i.bu = load ptr, ptr %4, align 8, !tbaa !9     ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.ah
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZN8facebook6hermes3cdp7message12_GLOBAL__N_114assignJsonBlobERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6hermes6parser10JSONObjectERKS9_.exit
  %i.bw = load i64, ptr %i.ah, align 8, !tbaa !15
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN8facebook6hermes3cdp7message12_GLOBAL__N_114assignJsonBlobERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6hermes6parser10JSONObjectERKS9_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br i1 %i.bt, label %bb.l, label %_ZNKSt14default_deleteIN8facebook6hermes3cdp7message7runtime28InspectRequestedNotificationEEclEPS5_.exit.i

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 632
  %i.bz = load ptr, ptr %i.q, align 8, !tbaa !65
  %i.ca = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr nonnull @.str.67, i64 18) ; 2 uses
  %i.cb = extractvalue { i64, i8 } %i.ca, 1
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i14, label %_ZNSt10unique_ptrIPN6hermes6parser10JSONObjectESt14default_deleteIS3_EED2Ev.exit

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i14: ; preds = %bb.l
  %i.cd = extractvalue { i64, i8 } %i.ca, 0
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !71 ; 3 uses
  %.not.i15 = icmp eq ptr %i.cf, null
  br i1 %.not.i15, label %_ZNSt10unique_ptrIPN6hermes6parser10JSONObjectESt14default_deleteIS3_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i14
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !73, !noalias !2010
  %i.ch = icmp eq i32 %i.cg, 3
  br i1 %i.ch, label %_ZNKSt14default_deleteIxEclEPx.exit.i.i, label %_ZNKSt14default_deleteIN8facebook6hermes3cdp7message7runtime28InspectRequestedNotificationEEclEPS5_.exit.i

_ZNKSt14default_deleteIxEclEPx.exit.i.i:          ; preds = %bb.m
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !77, !noalias !2010
  %i.ck = fptosi double %i.cj to i64
  store i64 %i.ck, ptr %i.by, align 8
  br label %_ZNSt10unique_ptrIPN6hermes6parser10JSONObjectESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIPN6hermes6parser10JSONObjectESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIxEclEPx.exit.i.i, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i14, %bb.l
  %.sink.i = phi i8 [ 1, %_ZNKSt14default_deleteIxEclEPx.exit.i.i ], [ 0, %bb.l ], [ 0, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i14 ]
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  store i8 %.sink.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.cl = ptrtoint ptr %i.a to i64
  store i64 %i.cl, ptr %0, align 8, !tbaa !2013
  br label %_ZNSt10unique_ptrIN8facebook6hermes3cdp7message7runtime28InspectRequestedNotificationESt14default_deleteIS5_EED2Ev.exit

_ZNKSt14default_deleteIN8facebook6hermes3cdp7message7runtime28InspectRequestedNotificationEEclEPS5_.exit.i: ; preds = %bb.c, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN8facebook6hermes3cdp7message6assignINS2_7runtime12RemoteObjectEA7_cEEbRT_PKN6hermes6parser10JSONObjectERKT0_.exit.thread33, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i, %bb.d, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit, %bb.b, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !2015
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !84
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(648) %i.a) #21, !inline_history !2017
  br label %_ZNSt10unique_ptrIN8facebook6hermes3cdp7message7runtime28InspectRequestedNotificationESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIN8facebook6hermes3cdp7message7runtime28InspectRequestedNotificationESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIPN6hermes6parser10JSONObjectESt14default_deleteIS3_EED2Ev.exit, %_ZNKSt14default_deleteIN8facebook6hermes3cdp7message7runtime28InspectRequestedNotificationEEclEPS5_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK8facebook6hermes3cdp7message7runtime28InspectRequestedNotification9toJsonValERN6hermes6parser11JSONFactoryE(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 align 2 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.llvh::SmallVector", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.llvh::SmallVector.388", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 14 uses
  store i32 0, ptr %i.d, align 8, !tbaa !315
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  store i32 3, ptr %i.e, align 4, !tbaa !346
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.f, ptr noundef nonnull align 1 dereferenceable(6) @.str.68, i64 6, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 6, ptr %i.g, align 8, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 22
  store i8 0, ptr %i.h, align 2, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = call noundef ptr @_ZN6hermes6parser11JSONFactory9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr nonnull %i.f, i64 6) #21
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !84
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(560) %i.i, ptr noundef nonnull align 8 dereferenceable(120) %1) #21, !inline_history !654
  %i.o = load i32, ptr %i.d, align 8, !tbaa !315  ; 2 uses
  %i.p = load i32, ptr %i.e, align 4, !tbaa !346
  %.not.i.i = icmp ult i32 %i.o, %i.p
  br i1 %.not.i.i, label %_ZN8facebook6hermes3cdp7message3putINS2_7runtime12RemoteObjectEEEvRN4llvh15SmallVectorImplISt4pairIPN6hermes6parser10JSONStringEPNSA_9JSONValueEEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RNSA_11JSONFactoryE.exit, label %bb.a, !prof !347

bb.a:                                             ; preds = %._crit_edge.i.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.c, i64 noundef 0, i64 noundef 16) #21
  %.pre.i.i = load i32, ptr %i.d, align 8, !tbaa !315
  br label %_ZN8facebook6hermes3cdp7message3putINS2_7runtime12RemoteObjectEEEvRN4llvh15SmallVectorImplISt4pairIPN6hermes6parser10JSONStringEPNSA_9JSONValueEEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RNSA_11JSONFactoryE.exit

_ZN8facebook6hermes3cdp7message3putINS2_7runtime12RemoteObjectEEEvRN4llvh15SmallVectorImplISt4pairIPN6hermes6parser10JSONStringEPNSA_9JSONValueEEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RNSA_11JSONFactoryE.exit: ; preds = %._crit_edge.i.i, %bb.a
  %i.q = phi i32 [ %.pre.i.i, %bb.a ], [ %i.o, %._crit_edge.i.i ]
  %i.r = load ptr, ptr %2, align 8, !tbaa !25
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.s ; 2 uses
  store ptr %i.j, ptr %i.t, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx.i, align 1
  %i.u = load i32, ptr %i.d, align 8, !tbaa !315
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.d, align 8, !tbaa !315
  %i.w = load ptr, ptr %3, align 8, !tbaa !9      ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.f
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8facebook6hermes3cdp7message3putINS2_7runtime12RemoteObjectEEEvRN4llvh15SmallVectorImplISt4pairIPN6hermes6parser10JSONStringEPNSA_9JSONValueEEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RNSA_11JSONFactoryE.exit
  %i.y = load i64, ptr %i.f, align 8, !tbaa !15
  %i.z = add i64 %i.y, 1
end_hunk_0
