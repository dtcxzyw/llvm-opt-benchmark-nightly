inline.NumInlined: 2270
inline.NumDeleted: 1313
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZZN11OpenImageIO4v3_111thread_pool4Impl10set_threadEiENKUlvE_clEv:bb.a
_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i.i.i: ; preds = %bb.ad, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i.i.i
  %.sroa.0.2.i.i.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i.i.i, %bb.ad ], [ %i.co, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i.i.i ]
  %i.cq = load volatile i8, ptr %i.u, align 8, !tbaa !124, !range !71, !noundef !72
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %.preheader.i.i.i.i.i.i.backedge, label %bb.ae

.preheader.i.i.i.i.i.i.backedge:                  ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i.i.i, %bb.ae
  br label %.preheader.i.i.i.i.i.i, !llvm.loop !125

bb.ae:                                            ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i.i.i
  %i.cs = atomicrmw xchg ptr %i.u, i8 1 acquire, align 1
  %.0.in.i.not.i.i.i.i.i.i.i = icmp eq i8 %i.cs, 0
  br i1 %.0.in.i.not.i.i.i.i.i.i.i, label %_ZNSt11unique_lockIN11OpenImageIO4v3_110spin_mutexEEC2ERS2_.exit.i.i.i, label %.preheader.i.i.i.i.i.i.backedge

_ZNSt11unique_lockIN11OpenImageIO4v3_110spin_mutexEEC2ERS2_.exit.i.i.i: ; preds = %bb.ae, %.noexc32
  %i.ct = load ptr, ptr %i.ad, align 8, !tbaa !127
  %i.cu = load ptr, ptr %i.ae, align 8, !tbaa !127 ; 4 uses
  %.not.i.i30.not = icmp eq ptr %i.ct, %i.cu      ; 2 uses
  br i1 %.not.i.i30.not, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %_ZNSt11unique_lockIN11OpenImageIO4v3_110spin_mutexEEC2ERS2_.exit.i.i.i
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !130
  %i.cw = load ptr, ptr %i.av, align 8, !tbaa !132
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -8
  %.not.i.i.i.i.i31 = icmp eq ptr %i.cu, %i.cx
  br i1 %.not.i.i.i.i.i31, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  br label %_ZN11OpenImageIO4v3_13pvt15ThreadsafeQueueIPSt8functionIFviEEE3popERS6_.exit.thread.i.i

bb.ah:                                            ; preds = %bb.af
  %i.cz = load ptr, ptr %i.aw, align 8, !tbaa !133
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef 512) #29
  %i.da = load ptr, ptr %i.ax, align 8, !tbaa !134
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  store ptr %i.db, ptr %i.ax, align 8, !tbaa !126
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !135 ; 3 uses
  store ptr %i.dc, ptr %i.aw, align 8, !tbaa !128
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 512
  store ptr %i.dd, ptr %i.av, align 8, !tbaa !129
  br label %_ZN11OpenImageIO4v3_13pvt15ThreadsafeQueueIPSt8functionIFviEEE3popERS6_.exit.thread.i.i

_ZN11OpenImageIO4v3_13pvt15ThreadsafeQueueIPSt8functionIFviEEE3popERS6_.exit.thread.i.i: ; preds = %bb.ah, %bb.ag
  %storemerge.i.i.i.i.i = phi ptr [ %i.cy, %bb.ag ], [ %i.dc, %bb.ah ]
  store ptr %storemerge.i.i.i.i.i, ptr %i.ae, align 8, !tbaa !136
  store atomic i8 0, ptr %i.u release, align 8
  br label %_ZNSt18condition_variable4waitIZZN11OpenImageIO4v3_111thread_pool4Impl10set_threadEiENKUlvE_clEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit

bb.ai:                                            ; preds = %_ZNSt11unique_lockIN11OpenImageIO4v3_110spin_mutexEEC2ERS2_.exit.i.i.i
  store atomic i8 0, ptr %i.u release, align 8
  %i.de = load atomic i8, ptr %i.bc seq_cst, align 8, !range !71, !noundef !72
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %_ZNSt18condition_variable4waitIZZN11OpenImageIO4v3_111thread_pool4Impl10set_threadEiENKUlvE_clEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit, label %_ZZZN11OpenImageIO4v3_111thread_pool4Impl10set_threadEiENKUlvE_clEvENKUlvE_clEv.exit.i

_ZZZN11OpenImageIO4v3_111thread_pool4Impl10set_threadEiENKUlvE_clEvENKUlvE_clEv.exit.i: ; preds = %bb.ai
  %i.dg = load atomic i8, ptr %i.t seq_cst, align 1, !range !71, !noundef !72
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %_ZNSt18condition_variable4waitIZZN11OpenImageIO4v3_111thread_pool4Impl10set_threadEiENKUlvE_clEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZZZN11OpenImageIO4v3_111thread_pool4Impl10set_threadEiENKUlvE_clEvENKUlvE_clEv.exit.i
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, ptr noundef nonnull align 8 dereferenceable(9) %5)
          to label %.noexc32 unwind label %bb.am, !llvm.loop !414

_ZNSt18condition_variable4waitIZZN11OpenImageIO4v3_111thread_pool4Impl10set_threadEiENKUlvE_clEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit: ; preds = %_ZZZN11OpenImageIO4v3_111thread_pool4Impl10set_threadEiENKUlvE_clEvENKUlvE_clEv.exit.i, %bb.ai, %_ZN11OpenImageIO4v3_13pvt15ThreadsafeQueueIPSt8functionIFviEEE3popERS6_.exit.thread.i.i
  %.4 = phi ptr [ %i.cv, %_ZN11OpenImageIO4v3_13pvt15ThreadsafeQueueIPSt8functionIFviEEE3popERS6_.exit.thread.i.i ], [ %.146.lcssa, %bb.ai ], [ %.146.lcssa, %_ZZZN11OpenImageIO4v3_111thread_pool4Impl10set_threadEiENKUlvE_clEvENKUlvE_clEv.exit.i ]
  %i.di = atomicrmw sub ptr %i.ba, i32 1 seq_cst, align 4 ; 0 uses
  %i.dj = load i8, ptr %i.az, align 8, !tbaa !413, !range !71, !noundef !72
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.ak, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.ak:                                            ; preds = %_ZNSt18condition_variable4waitIZZN11OpenImageIO4v3_111thread_pool4Impl10set_threadEiENKUlvE_clEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit
  %i.dl = load ptr, ptr %5, align 8, !tbaa !410   ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i33, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dm = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.dl) #30 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt18condition_variable4waitIZZN11OpenImageIO4v3_111thread_pool4Impl10set_threadEiENKUlvE_clEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit, %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %.not.i.i30.not, label %bb.ap, label %bb.l

bb.am:                                            ; preds = %bb.aj
  %i.dn = landingpad { ptr, i32 }
          cleanup
  %i.do = load i8, ptr %i.az, align 8, !tbaa !413, !range !71, !noundef !72
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.an, label %_ZNSt11unique_lockISt5mutexED2Ev.exit35

bb.an:                                            ; preds = %bb.am
  %i.dq = load ptr, ptr %5, align 8, !tbaa !410   ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i34, label %_ZNSt11unique_lockISt5mutexED2Ev.exit35, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dr = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.dq) #30 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit35

_ZNSt11unique_lockISt5mutexED2Ev.exit35:          ; preds = %bb.am, %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %common.resume

bb.ap:                                            ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  call void @_ZN11OpenImageIO4v3_111thread_pool4Impl17deregister_workerENSt6thread2idE(ptr noundef nonnull align 8 dereferenceable(321) %i.b, i64 %i.c)
  br label %bb.at

.critedge:                                        ; preds = %bb.o
  %i.ds = load ptr, ptr %4, align 8, !tbaa !130   ; 5 uses
  %.not.i36 = icmp eq ptr %i.ds, null
  br i1 %.not.i36, label %_ZNSt10unique_ptrISt8functionIFviEESt14default_deleteIS2_EED2Ev.exit39, label %bb.aq

bb.aq:                                            ; preds = %.critedge
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !142 ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i37, label %_ZNKSt14default_deleteISt8functionIFviEEEclEPS2_.exit.i38, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dv = invoke noundef zeroext i1 %i.du(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, ptr noundef nonnull align 8 dereferenceable(32) %i.ds, i32 noundef 3)
          to label %_ZNKSt14default_deleteISt8functionIFviEEEclEPS2_.exit.i38 unwind label %bb.as ; 0 uses

bb.as:                                            ; preds = %bb.ar
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #31
  unreachable

_ZNKSt14default_deleteISt8functionIFviEEEclEPS2_.exit.i38: ; preds = %bb.ar, %bb.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef 32) #29
  br label %_ZNSt10unique_ptrISt8functionIFviEESt14default_deleteIS2_EED2Ev.exit39

_ZNSt10unique_ptrISt8functionIFviEESt14default_deleteIS2_EED2Ev.exit39: ; preds = %.critedge, %_ZNKSt14default_deleteISt8functionIFviEEEclEPS2_.exit.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.at

bb.at:                                            ; preds = %_ZNSt10unique_ptrISt8functionIFviEESt14default_deleteIS2_EED2Ev.exit39, %bb.ap
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrISt8functionIFviEESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !130    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !142  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNKSt14default_deleteISt8functionIFviEEEclEPS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef 3)
          to label %_ZNKSt14default_deleteISt8functionIFviEEEclEPS2_.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #31
  unreachable

_ZNKSt14default_deleteISt8functionIFviEEEclEPS2_.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #29
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt14default_deleteISt8functionIFviEEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #21

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #15

declare void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #16

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIPSt8functionIFviEESaIS3_EE16_M_push_back_auxIJRKS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !126  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !126
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !127
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !128
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !129
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !127
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 1152921504606846975
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !356
  %i.ag = load ptr, ptr %0, align 8, !tbaa !353
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIPSt8functionIFviEESaIS3_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIPSt8functionIFviEESaIS3_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIPSt8functionIFviEESaIS3_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIPSt8functionIFviEESaIS3_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %2 = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #28 ; 4 uses
  %3 = load ptr, ptr %i.c, align 8, !tbaa !354
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %2, ptr %i.am, align 8, !tbaa !135
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !150
  %i.ao = load ptr, ptr %1, align 8, !tbaa !130
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !130
  store ptr %i.am, ptr %i.c, align 8, !tbaa !126
  store ptr %2, ptr %i.o, align 8, !tbaa !128
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !129
  store ptr %2, ptr %i.a, align 8, !tbaa !150
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIPSt8functionIFviEESaIS3_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !134  ; 8 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !356  ; 5 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !353
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !415

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPPSt8functionIFviEES5_ET0_T_S7_S6_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPPSt8functionIFviEES5_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !135
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !135
  br label %_ZSt4copyIPPPSt8functionIFviEES5_ET0_T_S7_S6_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !415

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPPSt8functionIFviEES5_ET0_T_S7_S6_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPPSt8functionIFviEES5_ET0_T_S7_S6_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !135
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !135
  br label %_ZSt4copyIPPPSt8functionIFviEES5_ET0_T_S7_S6_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE15_M_allocate_mapEm.exit, !prof !92

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #28 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.m, label %bb.n, !prof !415

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPPSt8functionIFviEES5_ET0_T_S7_S6_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.o, label %_ZSt4copyIPPPSt8functionIFviEES5_ET0_T_S7_S6_.exit24

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !135
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !135
  br label %_ZSt4copyIPPPSt8functionIFviEES5_ET0_T_S7_S6_.exit24

_ZSt4copyIPPPSt8functionIFviEES5_ET0_T_S7_S6_.exit24: ; preds = %bb.m, %bb.n, %bb.o
  %i.bc = load ptr, ptr %0, align 8, !tbaa !353
  %i.bd = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bd) #29
  store ptr %i.aq, ptr %0, align 8, !tbaa !353
  store i64 %i.am, ptr %i.k, align 8, !tbaa !356
  br label %_ZSt4copyIPPPSt8functionIFviEES5_ET0_T_S7_S6_.exit

_ZSt4copyIPPPSt8functionIFviEES5_ET0_T_S7_S6_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPPSt8functionIFviEES5_ET0_T_S7_S6_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPPSt8functionIFviEES5_ET0_T_S7_S6_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !126
  %i.be = load ptr, ptr %.0, align 8, !tbaa !135  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !128
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 512
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !129
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !126
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !135 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !128
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 512
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !129
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E11insert_implIS4_JRKSt21piecewise_construct_tSt5tupleIJRKS4_EESN_IJEEEEES2_INSI_14robin_iteratorILb0EEEbERKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(74) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit unwind label %bb.b ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #31
  unreachable

_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit: ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !360    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62   ; 2 uses
  %.057 = and i64 %i.a, %i.d                      ; 3 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.057 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i16, ptr %i.h, align 4, !tbaa !57
  %.not58 = icmp slt i16 %i.i, 0
  br i1 %.not58, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !77
  br label %bb.c

.preheader:                                       ; preds = %bb.d, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit
  %.034.lcssa = phi i16 [ 0, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit ], [ %i.o, %bb.d ] ; 2 uses
  %.0.lcssa = phi i64 [ %.057, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit ], [ %.0, %bb.d ]
  %i.j = tail call noundef zeroext i1 @_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22rehash_on_extreme_loadEs(ptr noundef nonnull align 8 dereferenceable(74) %0, i16 noundef signext %.034.lcssa)
  br i1 %i.j, label %.lr.ph69, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %i.k = phi ptr [ %i.g, %.lr.ph ], [ %i.p, %bb.d ] ; 2 uses
  %.060 = phi i64 [ %.057, %.lr.ph ], [ %.0, %bb.d ]
  %.03459 = phi i16 [ 0, %.lr.ph ], [ %i.o, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.l, align 8, !tbaa !77
  %i.m = icmp eq i64 %.sroa.01.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  br i1 %i.m, label %.loopexit49, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %.060, 1
  %i.o = add i16 %.03459, 1                       ; 3 uses
end_hunk_0
