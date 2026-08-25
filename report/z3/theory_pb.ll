Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/theory_pb?download=true
inline.NumInlined: 3714
inline.NumDeleted: 1173
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN8psort_nwIN3smt9theory_pb10psort_exprEE21mk_at_most_1_bimanderEbjPKN3sat7literalER7svectorIS5_jE:bb.a
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit78 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gq = landingpad { ptr, i32 }
          catch ptr null
  %i.gr = extractvalue { ptr, i32 } %i.gq, 0
  call void @__clang_call_terminate(ptr %i.gr) #27
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit78:       ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit76, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.bg

.split.us:                                        ; preds = %bb.v, %bb.u
  %i.gs = call ptr @__cxa_allocate_exception(i64 40) #26 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %.split.us
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.gs, align 8, !tbaa !677
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 24 ; 3 uses
  store ptr %i.gu, ptr %i.gt, align 8, !tbaa !679
  %i.gv = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.gx = icmp eq ptr %i.gv, %i.gw
  br i1 %i.gx, label %bb.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.av:                                            ; preds = %bb.au
  %i.gy = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !79 ; 3 uses
  %i.ha = icmp ult i64 %i.gz, 16
  call void @llvm.assume(i1 %i.ha)
  %i.hb = add nuw nsw i64 %i.gz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gu, ptr noundef nonnull align 8 dereferenceable(1) %i.gw, i64 %i.hb, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.au
  store ptr %i.gv, ptr %i.gt, align 8, !tbaa !74
  %i.hc = load i64, ptr %i.gw, align 8, !tbaa !80
  store i64 %i.hc, ptr %i.gu, align 8, !tbaa !80
  %.phi.trans.insert.i98 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre.i99 = load i64, ptr %.phi.trans.insert.i98, align 8, !tbaa !79
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.av
  %i.hd = phi i64 [ %i.gz, %bb.av ], [ %.pre.i99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.he = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  store i64 %i.hd, ptr %i.hf, align 8, !tbaa !79
  store ptr %i.gw, ptr %7, align 8, !tbaa !74
  store i64 0, ptr %i.he, align 8, !tbaa !79
  store i8 0, ptr %i.gw, align 8, !tbaa !80
  invoke void @__cxa_throw(ptr nonnull %i.gs, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #29
          to label %bb.ay unwind label %bb.aw

bb.aw:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.hg = landingpad { ptr, i32 }
          cleanup
  %i.hh = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.gw
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.aw
  %i.hj = load i64, ptr %i.gw, align 8, !tbaa !80
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.body

bb.ax:                                            ; preds = %.split.us
  %i.hl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @__cxa_free_exception(ptr %i.gs) #26
  br label %.body

bb.ay:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

.split141.us:                                     ; preds = %bb.ae, %bb.ad, %bb.aa, %bb.z
  %i.hm = call ptr @__cxa_allocate_exception(i64 40) #26 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %.split141.us
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.hm, align 8, !tbaa !677
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 24 ; 3 uses
  store ptr %i.ho, ptr %i.hn, align 8, !tbaa !679
  %i.hp = load ptr, ptr %5, align 8, !tbaa !74    ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.hr = icmp eq ptr %i.hp, %i.hq
  br i1 %i.hr, label %bb.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i106

bb.ba:                                            ; preds = %bb.az
  %i.hs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !79 ; 3 uses
  %i.hu = icmp ult i64 %i.ht, 16
  call void @llvm.assume(i1 %i.hu)
  %i.hv = add nuw nsw i64 %i.ht, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ho, ptr noundef nonnull align 8 dereferenceable(1) %i.hq, i64 %i.hv, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i106: ; preds = %bb.az
  store ptr %i.hp, ptr %i.hn, align 8, !tbaa !74
  %i.hw = load i64, ptr %i.hq, align 8, !tbaa !80
  store i64 %i.hw, ptr %i.ho, align 8, !tbaa !80
  %.phi.trans.insert.i107 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre.i108 = load i64, ptr %.phi.trans.insert.i107, align 8, !tbaa !79
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i109

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i109: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i106, %bb.ba
  %i.hx = phi i64 [ %i.ht, %bb.ba ], [ %.pre.i108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i106 ]
  %i.hy = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  store i64 %i.hx, ptr %i.hz, align 8, !tbaa !79
  store ptr %i.hq, ptr %5, align 8, !tbaa !74
  store i64 0, ptr %i.hy, align 8, !tbaa !79
  store i8 0, ptr %i.hq, align 8, !tbaa !80
  invoke void @__cxa_throw(ptr nonnull %i.hm, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #29
          to label %bb.bd unwind label %bb.bb

bb.bb:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i109
  %i.ia = landingpad { ptr, i32 }
          cleanup
  %i.ib = load ptr, ptr %5, align 8, !tbaa !74    ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.hq
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i110: ; preds = %bb.bb
  %i.id = load i64, ptr %i.hq, align 8, !tbaa !80
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i111: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %.body96

bb.bc:                                            ; preds = %.split141.us
  %i.if = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @__cxa_free_exception(ptr %i.hm) #26
  br label %.body96

bb.bd:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i109
  unreachable

.body96:                                          ; preds = %.split143.us, %bb.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i111, %.split146.us
  %eh.lpad-body97 = phi { ptr, i32 } [ %i.fi, %.split146.us ], [ %i.fh, %.split143.us ], [ %i.ia, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i111 ], [ %i.if, %bb.bc ]
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.body

.body:                                            ; preds = %.body96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %bb.ax, %.split138.us, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.gf, %bb.ao ], [ %eh.lpad-body97, %.body96 ], [ %i.fg, %.split138.us ], [ %i.hg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.hl, %bb.ax ]
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.be

bb.be:                                            ; preds = %bb.l, %bb.m, %.body
  %.pn61.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ay, %bb.m ], [ %i.ax, %bb.l ]
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.f
  %.pn61.pn.pn = phi { ptr, i32 } [ %.pn61.pn, %bb.be ], [ %i.aa, %bb.f ]
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  resume { ptr, i32 } %.pn61.pn.pn

bb.bg:                                            ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit78, %bb.b
  %.sroa.045.0 = phi i32 [ %i.a, %bb.b ], [ %i.v, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit78 ]
  ret i32 %.sroa.045.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE18mk_at_most_1_smallEbjPKN3sat7literalES5_R7svectorIS5_jE(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1, i32 noundef %2, ptr noundef %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::allocator.303", align 1 ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::allocator.303", align 1 ; 4 uses
  %10 = alloca %class.svector.202, align 8        ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::allocator.303", align 1 ; 4 uses
  %13 = alloca %class.svector.202, align 8        ; 7 uses
  %14 = alloca %class.svector.202, align 8        ; 10 uses
  %i.a = icmp eq i32 %2, 1
  br i1 %i.a, label %bb.bk, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not111 = icmp eq i32 %2, 0                    ; 2 uses
  br i1 %.not111, label %._crit_edge, label %.lr.ph105

.lr.ph105:                                        ; preds = %.preheader
  %.scalar = xor i32 %4, 1
  %i.b = insertelement <2 x i32> <i32 2, i32 poison>, i32 %.scalar, i64 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = zext i32 %2 to i64                       ; 2 uses
  %i.f = icmp eq i32 %4, 1
  br label %bb.b

.loopexit:                                        ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEjPKN3sat7literalE.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond124.not = icmp eq i64 %indvars.iv.next122, %i.e
  br i1 %exitcond124.not, label %._crit_edge, label %bb.b, !llvm.loop !1067

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  br i1 %1, label %bb.al, label %bb.bk

bb.b:                                             ; preds = %.lr.ph105, %.loopexit
  %indvars.iv121 = phi i64 [ 0, %.lr.ph105 ], [ %indvars.iv.next122, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph105 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 3 uses
  %i.g = icmp samesign ult i64 %indvars.iv.next122, %i.e
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv121
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit: ; preds = %.lr.ph, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEjPKN3sat7literalE.exit
  %indvars.iv118 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next119, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEjPKN3sat7literalE.exit ] ; 2 uses
  %.sroa.010.0.copyload = load i32, ptr %i.h, align 4, !tbaa !12 ; 2 uses
  switch i32 %.sroa.010.0.copyload, label %bb.d [
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit41
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit41

bb.d:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit
  %i.i = xor i32 %.sroa.010.0.copyload, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit41

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit41: ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit, %bb.c, %bb.d
  %.sroa.06.0.i40 = phi i32 [ %i.i, %bb.d ], [ 0, %bb.c ], [ 1, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit ] ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv118
  %.sroa.08.0.copyload = load i32, ptr %i.j, align 4, !tbaa !12 ; 2 uses
  switch i32 %.sroa.08.0.copyload, label %bb.f [
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit43
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit41
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit43

bb.f:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit41
  %i.k = xor i32 %.sroa.08.0.copyload, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit43

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit43: ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit41, %bb.e, %bb.f
  %.sroa.06.0.i42 = phi i32 [ %i.k, %bb.f ], [ 0, %bb.e ], [ 1, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit41 ] ; 2 uses
  %i.l = icmp eq i32 %.sroa.06.0.i40, 0
  %or.cond = or i1 %i.f, %i.l
  %i.m = icmp eq i32 %.sroa.06.0.i42, 0
  %or.cond222 = or i1 %or.cond, %i.m
  br i1 %or.cond222, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEjPKN3sat7literalE.exit, label %bb.l

split:                                            ; preds = %bb.n, %bb.m
  %i.n = tail call ptr @__cxa_allocate_exception(i64 40) #26 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %split
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.n, align 8, !tbaa !677
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 3 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !679
  %i.q = load ptr, ptr %8, align 8, !tbaa !74     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !79   ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74: ; preds = %bb.g
  store ptr %i.q, ptr %i.o, align 8, !tbaa !74
  %i.x = load i64, ptr %i.r, align 8, !tbaa !80
  store i64 %i.x, ptr %i.p, align 8, !tbaa !80
  %.phi.trans.insert.i75 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.pre.i76 = load i64, ptr %.phi.trans.insert.i75, align 8, !tbaa !79
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i77

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i77: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74, %bb.h
  %i.y = phi i64 [ %i.u, %bb.h ], [ %.pre.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74 ]
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !79
  store ptr %i.r, ptr %8, align 8, !tbaa !74
  store i64 0, ptr %i.z, align 8, !tbaa !79
  store i8 0, ptr %i.r, align 8, !tbaa !80
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #29
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i77
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %8, align 8, !tbaa !74    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.r
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i78: ; preds = %bb.i
  %i.ae = load i64, ptr %i.r, align 8, !tbaa !80
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i79: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %common.resume

bb.j:                                             ; preds = %split
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @__cxa_free_exception(ptr %i.n) #26
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i79, %bb.j, %.body, %.body70
  %common.resume.op = phi { ptr, i32 } [ %.pn, %.body ], [ %eh.lpad-body71, %.body70 ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i79 ], [ %i.ag, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i77
  unreachable

bb.l:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit43
  %i.ah = load <2 x i32>, ptr %i.c, align 8, !tbaa !12
  %i.ai = add <2 x i32> %i.ah, <i32 1, i32 3>
  store <2 x i32> %i.ai, ptr %i.c, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.aj = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16) ; 8 uses
  store i32 2, ptr %i.aj, align 4, !tbaa !12
  %15 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  store ptr %15, ptr %13, align 8, !tbaa !681
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 1, ptr %i.ak, align 4, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 %.sroa.06.0.i40, ptr %i.am, align 4, !tbaa !12
  store <2 x i32> %i.b, ptr %i.al, align 4, !tbaa !12
  %i.an = load i32, ptr %i.aj, align 4, !tbaa !12
  %i.ao = icmp eq i32 %i.an, 2
  br i1 %i.ao, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ap = load i32, ptr %i.aj, align 4, !tbaa !12 ; 3 uses
  %i.aq = mul i32 %i.ap, 3
  %i.ar = add i32 %i.aq, 1
  %i.as = lshr i32 %i.ar, 1                       ; 3 uses
  %i.at = shl i32 %i.as, 2
  %i.au = add i32 %i.at, 8                        ; 2 uses
  %.not.i72.2 = icmp ugt i32 %i.as, %i.ap
  br i1 %.not.i72.2, label %bb.n, label %split

bb.n:                                             ; preds = %bb.m
  %i.av = shl i32 %i.ap, 2
  %i.aw = add i32 %i.av, 8
  %.not27.i81.2 = icmp ugt i32 %i.au, %i.aw
  br i1 %.not27.i81.2, label %_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv.exit82.2, label %split

_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv.exit82.2: ; preds = %bb.n
  %i.ax = zext i32 %i.au to i64
  %i.ay = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ax) ; 3 uses
  %16 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  store ptr %16, ptr %13, align 8, !tbaa !681
  store i32 %i.as, ptr %i.ay, align 4, !tbaa !12
  %.phi.trans.insert.i.i.i.i.2.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %.pre2.i.i.i.i.2.pre = load i32, ptr %.phi.trans.insert.i.i.i.i.2.phi.trans.insert, align 4, !tbaa !12
  br label %bb.o

bb.o:                                             ; preds = %_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv.exit82.2, %bb.l
  %.pn223 = phi ptr [ %16, %_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv.exit82.2 ], [ %15, %bb.l ] ; 5 uses
  %i.az = phi i32 [ %.pre2.i.i.i.i.2.pre, %_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv.exit82.2 ], [ 2, %bb.l ] ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %.pn223, i64 -4
  %i.bb = zext i32 %i.az to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.pn223, i64 %i.bb
  store i32 %.sroa.06.0.i42, ptr %i.bc, align 4, !tbaa !12
  %i.bd = add i32 %i.az, 1
  store i32 %i.bd, ptr %i.ba, align 4, !tbaa !12
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !1053, !nonnull !115, !align !116 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store ptr null, ptr %10, align 8, !tbaa !681
  %i.bf = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %bb.u unwind label %bb.ak      ; 7 uses

split155:                                         ; preds = %bb.aa, %bb.z, %bb.w, %bb.v
  %i.bg = tail call ptr @__cxa_allocate_exception(i64 40) #26 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %split155
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.bg, align 8, !tbaa !677
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 3 uses
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !679
  %i.bj = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !79 ; 3 uses
  %i.bo = icmp ult i64 %i.bn, 16
  call void @llvm.assume(i1 %i.bo)
  %i.bp = add nuw nsw i64 %i.bn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bi, ptr noundef nonnull align 8 dereferenceable(1) %i.bk, i64 %i.bp, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85: ; preds = %bb.p
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !74
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !80
  store i64 %i.bq, ptr %i.bi, align 8, !tbaa !80
  %.phi.trans.insert.i86 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre.i87 = load i64, ptr %.phi.trans.insert.i86, align 8, !tbaa !79
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i88

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i88: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85, %bb.q
  %i.br = phi i64 [ %i.bn, %bb.q ], [ %.pre.i87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 %i.br, ptr %i.bt, align 8, !tbaa !79
  store ptr %i.bk, ptr %6, align 8, !tbaa !74
  store i64 0, ptr %i.bs, align 8, !tbaa !79
  store i8 0, ptr %i.bk, align 8, !tbaa !80
  invoke void @__cxa_throw(ptr nonnull %i.bg, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #29
          to label %bb.t unwind label %bb.r

bb.r:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i88
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.bk
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i89: ; preds = %bb.r
  %i.bx = load i64, ptr %i.bk, align 8, !tbaa !80
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i90: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %.body70

bb.s:                                             ; preds = %split155
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @__cxa_free_exception(ptr %i.bg) #26
  br label %.body70

bb.t:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i88
  unreachable

bb.u:                                             ; preds = %bb.o
  store i32 2, ptr %i.bf, align 4, !tbaa !12
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i32 0, ptr %i.ca, align 4, !tbaa !12
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  store ptr %i.cb, ptr %10, align 8, !tbaa !681
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.cd = load i32, ptr %.pn223, align 4, !tbaa !12
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !12
  store i32 1, ptr %i.cc, align 4, !tbaa !12
  %i.ce = getelementptr inbounds nuw i8, ptr %.pn223, i64 4
  %i.cf = load i32, ptr %i.bf, align 4, !tbaa !12
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.ch = load i32, ptr %i.bf, align 4, !tbaa !12 ; 3 uses
  %i.ci = mul i32 %i.ch, 3
  %i.cj = add i32 %i.ci, 1
  %i.ck = lshr i32 %i.cj, 1                       ; 3 uses
  %i.cl = shl i32 %i.ck, 2
  %i.cm = add i32 %i.cl, 8                        ; 2 uses
  %.not.i83.1 = icmp ugt i32 %i.ck, %i.ch
  br i1 %.not.i83.1, label %bb.w, label %split155

bb.w:                                             ; preds = %bb.v
  %i.cn = shl i32 %i.ch, 2
  %i.co = add i32 %i.cn, 8
  %.not27.i92.1 = icmp ugt i32 %i.cm, %i.co
  br i1 %.not27.i92.1, label %bb.x, label %split155

bb.x:                                             ; preds = %bb.w
  %i.cp = zext i32 %i.cm to i64
  %i.cq = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.bf, i64 noundef %i.cp)
          to label %.noexc69.1 unwind label %bb.ak ; 3 uses

.noexc69.1:                                       ; preds = %bb.x
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  store ptr %i.cr, ptr %10, align 8, !tbaa !681
  store i32 %i.ck, ptr %i.cq, align 4, !tbaa !12
  %.phi.trans.insert.i.i.i.i67.1 = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %.pre2.i.i.i.i68.1 = load i32, ptr %.phi.trans.insert.i.i.i.i67.1, align 4, !tbaa !12
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %.noexc69.1
  %i.cs = phi ptr [ %i.cr, %.noexc69.1 ], [ %i.cb, %bb.u ] ; 5 uses
  %i.ct = phi i32 [ %.pre2.i.i.i.i68.1, %.noexc69.1 ], [ 1, %bb.u ] ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %i.cs, i64 -4
  %i.cv = zext i32 %i.ct to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cv
  %i.cx = load i32, ptr %i.ce, align 4, !tbaa !12
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !12
  %i.cy = add i32 %i.ct, 1                        ; 3 uses
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !12
  %i.cz = getelementptr inbounds nuw i8, ptr %.pn223, i64 8
  %i.da = getelementptr inbounds i8, ptr %i.cs, i64 -8
  %i.db = load i32, ptr %i.da, align 4, !tbaa !12
  %i.dc = icmp eq i32 %i.cy, %i.db
  br i1 %i.dc, label %bb.z, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i61.2

bb.z:                                             ; preds = %bb.y
  %i.dd = getelementptr inbounds i8, ptr %i.cs, i64 -8 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !12 ; 3 uses
  %i.df = mul i32 %i.de, 3
  %i.dg = add i32 %i.df, 1
  %i.dh = lshr i32 %i.dg, 1                       ; 3 uses
  %i.di = shl i32 %i.dh, 2
  %i.dj = add i32 %i.di, 8                        ; 2 uses
  %.not.i83.2 = icmp ugt i32 %i.dh, %i.de
  br i1 %.not.i83.2, label %bb.aa, label %split155

bb.aa:                                            ; preds = %bb.z
  %i.dk = shl i32 %i.de, 2
  %i.dl = add i32 %i.dk, 8
  %.not27.i92.2 = icmp ugt i32 %i.dj, %i.dl
  br i1 %.not27.i92.2, label %bb.ab, label %split155

bb.ab:                                            ; preds = %bb.aa
  %i.dm = zext i32 %i.dj to i64
  %i.dn = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.dd, i64 noundef %i.dm)
          to label %.noexc69.2 unwind label %bb.ak ; 3 uses

.noexc69.2:                                       ; preds = %bb.ab
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  store ptr %i.do, ptr %10, align 8, !tbaa !681
  store i32 %i.dh, ptr %i.dn, align 4, !tbaa !12
  %.phi.trans.insert.i.i.i.i67.2 = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %.pre2.i.i.i.i68.2 = load i32, ptr %.phi.trans.insert.i.i.i.i67.2, align 4, !tbaa !12
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i61.2

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i61.2: ; preds = %.noexc69.2, %bb.y
  %i.dp = phi ptr [ %i.do, %.noexc69.2 ], [ %i.cs, %bb.y ] ; 3 uses
  %i.dq = phi i32 [ %.pre2.i.i.i.i68.2, %.noexc69.2 ], [ %i.cy, %bb.y ] ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %i.dp, i64 -4
  %i.ds = zext i32 %i.dq to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.ds
  %i.du = load i32, ptr %i.cz, align 4, !tbaa !12
  store i32 %i.du, ptr %i.dt, align 4, !tbaa !12
  %i.dv = add i32 %i.dq, 1
  store i32 %i.dv, ptr %i.dr, align 4, !tbaa !12
  %i.dw = load ptr, ptr %i.be, align 8, !tbaa !1057, !nonnull !115, !align !116
  %i.dx = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !1063, !nonnull !115, !align !116
  %i.dz = invoke noundef ptr @_ZN3smt9theory_pb7justifyERK7svectorIN3sat7literalEjE(ptr noundef nonnull align 8 dereferenceable(968) %i.dy, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ac unwind label %bb.ag

bb.ac:                                            ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i61.2
  %i.ea = invoke noundef ptr @_ZN3smt7context9mk_clauseEjPN3sat7literalEPNS_13justificationENS_11clause_kindEPNS_13clause_del_ehE(ptr noundef nonnull align 8 dereferenceable(10728) %i.dw, i32 noundef 3, ptr noundef nonnull %i.dp, ptr noundef %i.dz, i32 noundef 0, ptr noundef null)
          to label %bb.ad unwind label %bb.ag     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.eb = load ptr, ptr %10, align 8, !tbaa !681  ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i5.i, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ec)
          to label %bb.ah unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ed = landingpad { ptr, i32 }
          catch ptr null
  %i.ee = extractvalue { ptr, i32 } %i.ed, 0
  tail call void @__clang_call_terminate(ptr %i.ee) #27
  unreachable

bb.ag:                                            ; preds = %bb.ac, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i61.2
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.body70

bb.ah:                                            ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.eg = load ptr, ptr %13, align 8, !tbaa !681  ; 2 uses
  %.not.i.i13.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i13.i, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.eh)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0
  tail call void @__clang_call_terminate(ptr %i.ej) #27
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit.i:       ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEjPKN3sat7literalE.exit

bb.ak:                                            ; preds = %bb.ab, %bb.x, %bb.o
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.body70

.body70:                                          ; preds = %bb.ak, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i90, %bb.ag
  %eh.lpad-body71 = phi { ptr, i32 } [ %i.ef, %bb.ag ], [ %i.ek, %bb.ak ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i90 ], [ %i.bz, %bb.s ]
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %common.resume

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEjPKN3sat7literalE.exit: ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit43, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit.i
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next119 to i32
  %exitcond.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit, !llvm.loop !1068

bb.al:                                            ; preds = %._crit_edge
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !1059
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.el, align 4, !tbaa !1059
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !1053, !nonnull !115, !align !116
  %i.eq = tail call i32 @_ZN3smt9theory_pb10psort_expr5freshEPKc(ptr noundef nonnull align 8 dereferenceable(88) %i.ep, ptr noundef nonnull @.str.64) ; 3 uses
  br i1 %.not111, label %._crit_edge110, label %.lr.ph109.preheader

.lr.ph109.preheader:                              ; preds = %bb.al
  %wide.trip.count133 = zext i32 %2 to i64        ; 2 uses
  br label %.lr.ph109

._crit_edge110:                                   ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, %bb.al
  switch i32 %i.eq, label %bb.an [
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit45
    i32 1, label %bb.am
  ]

bb.am:                                            ; preds = %._crit_edge110
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit45

bb.an:                                            ; preds = %._crit_edge110
  %i.er = xor i32 %i.eq, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit45

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit45: ; preds = %._crit_edge110, %bb.am, %bb.an
  %.sroa.06.0.i44 = phi i32 [ %i.er, %bb.an ], [ 0, %bb.am ], [ 1, %._crit_edge110 ]
  %i.es = load ptr, ptr %5, align 8, !tbaa !681   ; 4 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit45
  %i.eu = getelementptr inbounds i8, ptr %i.es, i64 -4
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !12 ; 2 uses
  %i.ew = getelementptr inbounds i8, ptr %i.es, i64 -8
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !12
  %i.ey = icmp eq i32 %i.ev, %i.ex
  br i1 %i.ey, label %bb.ap, label %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit

bb.ap:                                            ; preds = %bb.ao, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit45
  call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !681 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !12
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit

_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit: ; preds = %bb.ao, %bb.ap
  %i.ez = phi i32 [ %.pre2.i, %bb.ap ], [ %i.ev, %bb.ao ] ; 2 uses
  %i.fa = phi ptr [ %.pre.i, %bb.ap ], [ %i.es, %bb.ao ] ; 2 uses
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 -4
  %i.fc = zext i32 %i.ez to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.fc
  store i32 %.sroa.06.0.i44, ptr %i.fd, align 4, !tbaa !12
  %i.fe = add i32 %i.ez, 1
  store i32 %i.fe, ptr %i.fb, align 4, !tbaa !12
  br label %bb.bk

.lr.ph109:                                        ; preds = %.lr.ph109.preheader, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit
  %indvars.iv130 = phi i64 [ 0, %.lr.ph109.preheader ], [ %indvars.iv.next131, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  store ptr null, ptr %14, align 8, !tbaa !681
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit unwind label %bb.as

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit: ; preds = %.lr.ph109
  %.pre.i46 = load ptr, ptr %14, align 8, !tbaa !681 ; 3 uses
  %.phi.trans.insert.i47 = getelementptr inbounds i8, ptr %.pre.i46, i64 -4 ; 2 uses
  %.pre2.i48 = load i32, ptr %.phi.trans.insert.i47, align 4, !tbaa !12 ; 2 uses
  %i.ff = zext i32 %.pre2.i48 to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.pre.i46, i64 %i.ff
  store i32 %i.eq, ptr %i.fg, align 4, !tbaa !12
  %i.fh = add i32 %.pre2.i48, 1
  store i32 %i.fh, ptr %.phi.trans.insert.i47, align 4, !tbaa !12
  br label %bb.at

bb.aq:                                            ; preds = %bb.bh
  %i.fi = icmp eq ptr %i.hj, null
  br i1 %i.fi, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
end_hunk_0
