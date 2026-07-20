inline.NumInlined: 1333
inline.NumDeleted: 686
begin_hunk_0_@"_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEEEE6_M_runEv":bb.a
  %i.eh = add nsw i32 %i.eg, -1                   ; 2 uses
  store i32 %i.eh, ptr %i.ef, align 4, !tbaa !146
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.al, label %bb.am, !prof !44

bb.al:                                            ; preds = %_ZN5arrow8internal12_GLOBAL__N_14TaskD2Ev.exit40.i.i.i.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 136
  call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ej) #32
  br label %bb.am

.body.i.i.i.i.i.i:                                ; preds = %_ZN5arrow6StatusD2Ev.exit23.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i, %_ZNSt10unique_ptrIN5arrow8internal6FnOnceIFvvEE4ImplESt14default_deleteIS5_EED2Ev.exit4.i.i.i.i.i.i.i
  %.pn8.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ay, %_ZNSt10unique_ptrIN5arrow8internal6FnOnceIFvvEE4ImplESt14default_deleteIS5_EED2Ev.exit4.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit23.i.i.i.i.i.i ], [ %lpad.loopexit.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i ]
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_14TaskD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.ax

bb.am:                                            ; preds = %bb.al, %_ZN5arrow8internal12_GLOBAL__N_14TaskD2Ev.exit40.i.i.i.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 232 ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ek, align 8, !tbaa !42 ; 2 uses
  %i.el = getelementptr i8, ptr %i.ee, i64 240
  %.val13.i.i.i.i.i.i = load ptr, ptr %i.el, align 8, !tbaa !42
  %i.em = icmp eq ptr %.val.i.i.i.i.i.i, %.val13.i.i.i.i.i.i
  br i1 %i.em, label %.critedge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !365

.critedge.i.i.i.i.i.i:                            ; preds = %bb.am, %bb.g, %.lr.ph.i.i.i.i.i.i, %bb.f
  %.lcssa57.i.i.i.i.i.i = phi ptr [ %i.u, %bb.f ], [ %i.ee, %bb.am ], [ %i.z, %bb.g ], [ %i.z, %.lr.ph.i.i.i.i.i.i ] ; 8 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.lcssa57.i.i.i.i.i.i, i64 280
  %i.eo = load i8, ptr %i.en, align 8, !tbaa !193, !range !48, !noundef !49
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.eq = getelementptr i8, ptr %.lcssa57.i.i.i.i.i.i, i64 200
  %.val16.val.val.i.i.i.i.i.i = load i64, ptr %i.eq, align 8, !tbaa !208
  %i.er = getelementptr i8, ptr %.lcssa57.i.i.i.i.i.i, i64 272
  %.val16.val.val18.i.i.i.i.i.i = load i32, ptr %i.er, align 8, !tbaa !207
  %i.es = sext i32 %.val16.val.val18.i.i.i.i.i.i to i64
  %i.et = icmp ugt i64 %.val16.val.val.i.i.i.i.i.i, %i.es
  br i1 %i.et, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eu = getelementptr inbounds nuw i8, ptr %.lcssa57.i.i.i.i.i.i, i64 40
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.eu, ptr noundef nonnull align 8 dereferenceable(9) %1)
          to label %bb.f unwind label %.loopexit51.i.i.i.i.i.i, !llvm.loop !366

bb.ap:                                            ; preds = %bb.an, %.critedge.i.i.i.i.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 16 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.lcssa57.i.i.i.i.i.i, i64 216 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !202 ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.lcssa57.i.i.i.i.i.i, i64 224
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !316
  %.not.i.i41.i.i.i.i.i.i = icmp eq ptr %i.ex, %i.ez
  br i1 %.not.i.i41.i.i.i.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i64 0, ptr %i.ex, align 8, !tbaa !15
  %i.fa = load i64, ptr %i.ev, align 8, !tbaa !105
  store i64 %i.fa, ptr %i.ex, align 8, !tbaa !105
  store i64 0, ptr %i.ev, align 8, !tbaa !105
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store ptr %i.fb, ptr %i.ew, align 8, !tbaa !202
  br label %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit.i.i.i.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.fc = getelementptr inbounds nuw i8, ptr %.lcssa57.i.i.i.i.i.i, i64 208
  invoke void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.fc, ptr %i.ex, ptr noundef nonnull align 8 dereferenceable(8) %i.ev)
          to label %._ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit_crit_edge.i.i.i.i.i.i unwind label %.loopexit.split-lp52.i.i.i.i.i.i

._ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit_crit_edge.i.i.i.i.i.i: ; preds = %bb.ar
  %.pre78.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !333
  br label %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit.i.i.i.i.i.i

_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit.i.i.i.i.i.i: ; preds = %._ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit_crit_edge.i.i.i.i.i.i, %bb.aq
  %i.fd = phi ptr [ %.pre78.i.i.i.i.i.i, %._ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit_crit_edge.i.i.i.i.i.i ], [ %.lcssa57.i.i.i.i.i.i, %bb.aq ] ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 200 ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !208
  %i.fg = add i64 %i.ff, -1
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !208
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.copyload.i.i.i.i.i) #32
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ev, align 8, !tbaa !105
  %.not.i.i.i.i43.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i43.i.i.i.i.i.i, label %_ZNSt7__cxx114listISt6threadSaIS1_EE5eraseESt20_List_const_iteratorIS1_E.exit.i.i.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit.i.i.i.i.i.i
  call void @_ZSt9terminatev() #30
  unreachable

_ZNSt7__cxx114listISt6threadSaIS1_EE5eraseESt20_List_const_iteratorIS1_E.exit.i.i.i.i.i.i: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.copyload.i.i.i.i.i, i64 noundef 24) #34
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 280
  %i.fi = load i8, ptr %i.fh, align 8, !tbaa !193, !range !48, !noundef !49
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZNSt7__cxx114listISt6threadSaIS1_EE5eraseESt20_List_const_iteratorIS1_E.exit.i.i.i.i.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fd, i64 88
  call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.fk) #32
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZNSt7__cxx114listISt6threadSaIS1_EE5eraseESt20_List_const_iteratorIS1_E.exit.i.i.i.i.i.i
  %i.fl = load i8, ptr %i.p, align 8, !tbaa !109, !range !48, !noundef !49
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.av, label %bb.ba

bb.av:                                            ; preds = %bb.au
  %i.fn = load ptr, ptr %1, align 8, !tbaa !106   ; 2 uses
  %.not.i.i44.i.i.i.i.i.i = icmp eq ptr %i.fn, null
  br i1 %.not.i.i44.i.i.i.i.i.i, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fo = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.fn) #32 ; 0 uses
  br label %bb.ba

bb.ax:                                            ; preds = %.body.i.i.i.i.i.i, %.loopexit.split-lp52.i.i.i.i.i.i, %.loopexit51.i.i.i.i.i.i
  %.pn11.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn8.pn.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %lpad.loopexit53.i.i.i.i.i.i, %.loopexit51.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp54.i.i.i.i.i.i, %.loopexit.split-lp52.i.i.i.i.i.i ]
  %i.fp = load i8, ptr %i.p, align 8, !tbaa !109, !range !48, !noundef !49
  %i.fq = trunc nuw i8 %i.fp to i1
  br i1 %i.fq, label %bb.ay, label %_ZNSt11unique_lockISt5mutexED2Ev.exit46.i.i.i.i.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.fr = load ptr, ptr %1, align 8, !tbaa !106   ; 2 uses
  %.not.i.i45.i.i.i.i.i.i = icmp eq ptr %i.fr, null
  br i1 %.not.i.i45.i.i.i.i.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit46.i.i.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fs = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.fr) #32 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit46.i.i.i.i.i.i

_ZNSt11unique_lockISt5mutexED2Ev.exit46.i.i.i.i.i.i: ; preds = %bb.az, %bb.ay, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %.body.i.i.i.i.i

bb.ba:                                            ; preds = %bb.aw, %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  %i.ft = load ptr, ptr %i.f, align 8, !tbaa !34  ; 8 uses
  %.not.i.i3.i.i.i.i.i = icmp eq ptr %i.ft, null
  br i1 %.not.i.i3.i.i.i.i.i, label %"_ZNSt6thread8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEEclEv.exit", label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 4 uses
  %i.fv = load atomic i64, ptr %i.fu acquire, align 8 ; 2 uses
  %i.fw = icmp eq i64 %i.fv, 4294967297
  %i.fx = trunc i64 %i.fv to i32                  ; 2 uses
  br i1 %i.fw, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.fu, align 8, !tbaa !12
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 12
  store i32 0, ptr %i.fy, align 4, !tbaa !14
  %i.fz = load ptr, ptr %i.ft, align 8, !tbaa !7
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8
  call void %i.gb(ptr noundef nonnull align 8 dereferenceable(16) %i.ft) #32, !inline_history !367
  %i.gc = load ptr, ptr %i.ft, align 8, !tbaa !7
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(16) %i.ft) #32, !inline_history !367
  br label %"_ZNSt6thread8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEEclEv.exit"

bb.bd:                                            ; preds = %bb.bb
  %i.gf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i4.i.i.i.i.i = icmp eq i8 %i.gf, 0
  br i1 %.not.i.i.i4.i.i.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gg = add nsw i32 %i.fx, -1
  store i32 %i.gg, ptr %i.fu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.gh = atomicrmw volatile add ptr %i.fu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.fx, %bb.be ], [ %i.gh, %bb.bf ]
  %i.gi = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.gi, label %bb.bg, label %"_ZNSt6thread8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEEclEv.exit", !prof !44

bb.bg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ft) #32
  br label %"_ZNSt6thread8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEEclEv.exit"

bb.bh:                                            ; preds = %bb.e
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.bh, %_ZNSt11unique_lockISt5mutexED2Ev.exit46.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.gj, %bb.bh ], [ %.pn11.i.i.i.i.i.i, %_ZNSt11unique_lockISt5mutexED2Ev.exit46.i.i.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow8internal10ThreadPool5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #32
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i.i

"_ZNSt6thread8_InvokerISt5tupleIJZN5arrow8internal10ThreadPool21LaunchWorkersUnlockedEiE3$_0EEEclEv.exit": ; preds = %bb.ba, %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = ptrtoint ptr %1 to i64                     ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !202  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !201    ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #33
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !105
  store i64 %i.r, ptr %i.q, align 8, !tbaa !105
  store i64 0, ptr %2, align 8, !tbaa !105
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %4 = ptrtoint ptr %1 to i64
  %i.s = sub i64 %4, %i.e
  %i.t = add i64 %i.s, -8                         ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader62, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.w = add i64 %3, -8
  %i.x = sub i64 %i.w, %i.e
  %i.y = and i64 %i.x, -8
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.z
  %scevgep35 = getelementptr i8, ptr %i.c, i64 %i.z
  %bound0 = icmp ult ptr %i.p, %scevgep35
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader62, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.p, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.c, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ad ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.c, i64 %i.ad ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.ae = getelementptr i8, ptr %next.gep36, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !105, !alias.scope !373, !noalias !368
  %wide.load37 = load <2 x i64>, ptr %i.ae, align 8, !tbaa !105, !alias.scope !373, !noalias !368
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !105, !alias.scope !376, !noalias !373
  store <2 x i64> %wide.load37, ptr %i.af, align 8, !tbaa !105, !alias.scope !376, !noalias !373
  store <2 x i64> zeroinitializer, ptr %next.gep36, align 8, !tbaa !105, !alias.scope !373, !noalias !368
  store <2 x i64> zeroinitializer, ptr %i.ae, align 8, !tbaa !105, !alias.scope !373, !noalias !368
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !378

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.preheader62

.lr.ph.i.i.i.preheader62:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader62, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader62 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader62 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.ah = load i64, ptr %.0911.i.i.i, align 8, !tbaa !105, !alias.scope !371, !noalias !368
  store i64 %i.ah, ptr %.012.i.i.i, align 8, !tbaa !105, !alias.scope !368, !noalias !371
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !105, !alias.scope !371, !noalias !368
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !381

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit ], [ %i.ab, %middle.block ], [ %i.aj, %.lr.ph.i.i.i ] ; 2 uses
  %i.ak = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %5 = ptrtoint ptr %1 to i64
  %i.al = sub i64 %i.d, %5
  %i.am = add i64 %i.al, -8                       ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %i.am, 184
  br i1 %min.iters.check46, label %.lr.ph.i.i.i17.preheader61, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.ap = add i64 %i.d, -8
  %i.aq = sub i64 %i.ap, %3
  %i.ar = and i64 %i.aq, -8                       ; 2 uses
  %i.as = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ar
  %scevgep40 = getelementptr i8, ptr %i.as, i64 16
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  %scevgep41 = getelementptr i8, ptr %i.at, i64 8
  %bound042 = icmp ult ptr %i.ak, %scevgep41
  %bound143 = icmp ult ptr %1, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.lr.ph.i.i.i17.preheader61, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec49 = and i64 %i.ao, 4611686018427387900   ; 3 uses
  %i.au = shl i64 %n.vec49, 3                     ; 2 uses
  %i.av = getelementptr i8, ptr %i.ak, i64 %i.au  ; 2 uses
  %i.aw = getelementptr i8, ptr %1, i64 %i.au
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph47
  %index51 = phi i64 [ 0, %vector.ph47 ], [ %index.next56, %vector.body50 ] ; 2 uses
  %i.ax = shl i64 %index51, 3                     ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.ak, i64 %i.ax ; 2 uses
  %next.gep53 = getelementptr i8, ptr %1, i64 %i.ax ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %i.ay = getelementptr i8, ptr %next.gep53, i64 16 ; 2 uses
  %wide.load54 = load <2 x i64>, ptr %next.gep53, align 8, !tbaa !105, !alias.scope !387, !noalias !382
  %wide.load55 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !105, !alias.scope !387, !noalias !382
  %i.az = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x i64> %wide.load54, ptr %next.gep52, align 8, !tbaa !105, !alias.scope !390, !noalias !387
  store <2 x i64> %wide.load55, ptr %i.az, align 8, !tbaa !105, !alias.scope !390, !noalias !387
  store <2 x i64> zeroinitializer, ptr %next.gep53, align 8, !tbaa !105, !alias.scope !387, !noalias !382
  store <2 x i64> zeroinitializer, ptr %i.ay, align 8, !tbaa !105, !alias.scope !387, !noalias !382
  %index.next56 = add nuw i64 %index51, 4         ; 2 uses
  %i.ba = icmp eq i64 %index.next56, %n.vec49
  br i1 %i.ba, label %middle.block57, label %vector.body50, !llvm.loop !392

middle.block57:                                   ; preds = %vector.body50
  %cmp.n58 = icmp eq i64 %i.ao, %n.vec49
  br i1 %cmp.n58, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, label %.lr.ph.i.i.i17.preheader61

.lr.ph.i.i.i17.preheader61:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block57
  %.012.i.i.i18.ph = phi ptr [ %i.ak, %vector.memcheck39 ], [ %i.ak, %.lr.ph.i.i.i17.preheader ], [ %i.av, %middle.block57 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.aw, %middle.block57 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader61, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bd, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader61 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.bc, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %i.bb = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !105, !alias.scope !385, !noalias !382
  store i64 %i.bb, ptr %.012.i.i.i18, align 8, !tbaa !105, !alias.scope !382, !noalias !385
  store i64 0, ptr %.0911.i.i.i19, align 8, !tbaa !105, !alias.scope !385, !noalias !382
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.bc, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !393

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block57, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ak, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.av, %middle.block57 ], [ %i.bd, %.lr.ph.i.i.i17 ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !316
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bh) #34
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !201
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !202
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !316
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #10

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !234  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(33) %i.b) #32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN5arrow8internal10ThreadPoolELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr null
}

declare void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #24 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !260  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !260  ; 7 uses
  %i.e = add i64 %i.d, %i.b                       ; 5 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !237    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.h = icmp eq ptr %i.f, %i.g                   ; 2 uses
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8, !tbaa !41
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %i.l = icmp ugt i64 %i.e, %i.k
  %.pre = load ptr, ptr %2, align 8, !tbaa !237   ; 4 uses
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %.pre, %i.m
  br i1 %i.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13: ; preds = %bb.b
  %i.o = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.o)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12: ; preds = %bb.b
  %i.p = load i64, ptr %i.m, align 8, !tbaa !41
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
  %i.q = phi i64 [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13 ]
  %.not = icmp ugt i64 %i.e, %i.q
  br i1 %.not, label %bb.d, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14
  %i.r = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !258
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !237  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15

bb.c:                                             ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !260  ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15: ; preds = %.critedge
  store ptr %i.t, ptr %0, align 8, !tbaa !237
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !41
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !41
end_hunk_0
