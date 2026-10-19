Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ts_tags?download=true
inline.NumInlined: 1136
inline.NumDeleted: 335
begin_hunk_0_@_ZN6cvtestL16isTestTagSkippedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_:bb.a

._crit_edge.i.i.i45:                              ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.at = phi ptr [ %i.ar, %.noexc ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit ] ; 2 uses
  switch i64 %spec.select.i.i.i44, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i45
  %i.au = load i8, ptr %i.ap, align 1, !tbaa !23
  store i8 %i.au, ptr %i.at, align 1, !tbaa !23
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i45
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 1 %i.ap, i64 %spec.select.i.i.i44, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i45
  %i.av = load i64, ptr %i.a, align 8, !tbaa !50, !noalias !143 ; 2 uses
  store i64 %i.av, ptr %i.k, align 8, !tbaa !44, !alias.scope !143
  %i.aw = load ptr, ptr %3, align 8, !tbaa !22, !alias.scope !143
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  store i8 0, ptr %i.ax, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !143
  %i.ay = load i64, ptr %i.i, align 8, !tbaa !44  ; 3 uses
  %i.az = load i64, ptr %i.k, align 8, !tbaa !44  ; 2 uses
  %i.ba = icmp eq i64 %i.ay, %i.az
  br i1 %i.ba, label %bb.k, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.j
  %.pre = load ptr, ptr %3, align 8, !tbaa !22
  br label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.bb = icmp eq i64 %i.ay, 0
  %.pre70 = load ptr, ptr %3, align 8, !tbaa !22  ; 3 uses
  br i1 %i.bb, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = load ptr, ptr %2, align 8, !tbaa !22
  %bcmp.i48 = call i32 @bcmp(ptr %i.bc, ptr %.pre70, i64 %i.ay)
  %i.bd = icmp eq i32 %bcmp.i48, 0
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.k, %bb.l
  %i.be = phi ptr [ %.pre70, %bb.k ], [ %.pre, %..critedge_crit_edge ], [ %.pre70, %bb.l ] ; 2 uses
  %i.bf = phi i1 [ true, %bb.k ], [ false, %..critedge_crit_edge ], [ %i.bd, %bb.l ]
  %i.bg = icmp eq ptr %i.be, %i.j
  br i1 %i.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %.critedge
  %i.bh = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.bh)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.bi = load i64, ptr %i.j, align 8, !tbaa !23
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.bk = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.h
  br i1 %i.bl, label %.critedge39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bm = load i64, ptr %i.h, align 8, !tbaa !23
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #22
  br label %.critedge39

.critedge39:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %i.bf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit49.thread.thread, label %.critedge39..critedge41_crit_edge

.critedge39..critedge41_crit_edge:                ; preds = %.critedge39
  %.pre71 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6cvtestL19getTestTagsSkipListB5cxx11EvE16testSkipWithTagsB5cxx11, i64 8), align 8, !tbaa !17
  %.pre72 = load ptr, ptr @_ZZN6cvtestL19getTestTagsSkipListB5cxx11EvE16testSkipWithTagsB5cxx11, align 8, !tbaa !16
  br label %.critedge41

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit49.thread.thread: ; preds = %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %.critedge39
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
  br label %.critedge43

bb.m:                                             ; preds = %.noexc10.i.i46
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.bp = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.h
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.m
  %i.br = load i64, ptr %i.h, align 8, !tbaa !23
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %i.bo

.critedge41:                                      ; preds = %.critedge39..critedge41_crit_edge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread56, %bb.d
  %i.bt = phi ptr [ %.pre72, %.critedge39..critedge41_crit_edge ], [ %i.l, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread56 ], [ %i.l, %bb.d ] ; 2 uses
  %i.bu = phi ptr [ %.pre71, %.critedge39..critedge41_crit_edge ], [ %i.m, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread56 ], [ %i.m, %bb.d ] ; 2 uses
  %i.bv = add nuw i64 %.03666, 1                  ; 2 uses
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = ashr exact i64 %i.by, 5
  %.not37 = icmp ult i64 %i.bv, %i.bz
  br i1 %.not37, label %bb.b, label %.critedge43, !llvm.loop !141

.critedge43:                                      ; preds = %.critedge41, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit49.thread.thread
  %.not3762 = phi i1 [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit49.thread.thread ], [ false, %bb.a ], [ false, %.critedge41 ]
  ret i1 %.not3762
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6cvtest12applyTestTagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !44
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc noundef zeroext i1 @_ZN6cvtestL16applyTestTagImplERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext true)
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6cvtest13checkTestTagsEv()
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN6cvtestL16applyTestTagImplERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.8", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !44   ; 7 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.37, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN6cvtestL16applyTestTagImplERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb, ptr noundef nonnull @.str.38, i32 noundef 351) #23
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !22     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.j = load i64, ptr %i.h, align 8, !tbaa !23
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn65 = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.af

bb.g:                                             ; preds = %bb.a
  %_ZN6cvtestL21currentDirectTestTagsB5cxx11E._ZN6cvtestL22currentImpliedTestTagsB5cxx11E = select i1 %1, ptr @_ZN6cvtestL21currentDirectTestTagsB5cxx11E, ptr @_ZN6cvtestL22currentImpliedTestTagsB5cxx11E ; 2 uses
  %14 = select i1 %1, ptr getelementptr inbounds nuw (i8, ptr @_ZN6cvtestL21currentDirectTestTagsB5cxx11E, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZN6cvtestL22currentImpliedTestTagsB5cxx11E, i64 8) ; 3 uses
  %i.l = load ptr, ptr %14, align 8, !tbaa !17    ; 10 uses
  %i.m = load ptr, ptr %_ZN6cvtestL21currentDirectTestTagsB5cxx11E._ZN6cvtestL22currentImpliedTestTagsB5cxx11E, align 8, !tbaa !16 ; 3 uses
  %.not209 = icmp eq ptr %i.l, %i.m
  br i1 %.not209, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 5
  %i.r = load ptr, ptr %0, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %.025210 = phi i64 [ %i.y, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.025210 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !44
  %i.v = icmp eq i64 %i.c, %i.u
  br i1 %i.v, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %.lr.ph
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !22
  %bcmp.i = tail call i32 @bcmp(ptr %i.r, ptr %i.w, i64 %i.c)
  %i.x = icmp eq i32 %bcmp.i, 0
  br i1 %i.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit170.thread202, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.y = add nuw i64 %.025210, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %i.q
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !144

.critedge:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %bb.g
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6cvtestL21currentDirectTestTagsB5cxx11E, i64 16), align 8
  %.val203 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6cvtestL22currentImpliedTestTagsB5cxx11E, i64 16), align 8
  %15 = select i1 %1, ptr %.val, ptr %.val203
  %.not.i = icmp eq ptr %i.l, %15
  br i1 %.not.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  store ptr %i.z, ptr %i.l, align 8, !tbaa !49
  %i.aa = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.c, ptr %i.a, align 8, !tbaa !50
  %i.ab = icmp ugt i64 %i.c, 15
  br i1 %i.ab, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.ac = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ac, ptr %i.l, align 8, !tbaa !22
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !50
  store i64 %i.ad, ptr %i.z, align 8, !tbaa !23
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.h
  %i.ae = phi ptr [ %i.ac, %.noexc.i.i ], [ %i.z, %bb.h ] ; 2 uses
  %cond = icmp eq i64 %i.c, 1
  br i1 %cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.af = load i8, ptr %i.aa, align 1, !tbaa !23
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.aa, i64 %i.c, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.j, %bb.i
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !50  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !44
  %i.ai = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.ak = load ptr, ptr %14, align 8, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store ptr %i.al, ptr %14, align 8, !tbaa !17
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.k:                                             ; preds = %.critedge
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %_ZN6cvtestL21currentDirectTestTagsB5cxx11E._ZN6cvtestL22currentImpliedTestTagsB5cxx11E, ptr %i.l, ptr noundef nonnull align 8 dereferenceable(32) %0)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.k
  %i.am = load i64, ptr %i.b, align 8, !tbaa !44  ; 2 uses
  %i.an = icmp eq i64 %i.am, 8
  br i1 %i.an, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread190

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.ao = load ptr, ptr %0, align 8, !tbaa !22
  %i.ap = load i64, ptr %i.ao, align 1
  %i.aq = icmp ne i64 %i.ap, 7090693524977182061
  %i.ar = zext i1 %i.aq to i32
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit112

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.at, ptr %4, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.at, ptr noundef nonnull align 1 dereferenceable(7) @.str.34, i64 7, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 7, ptr %i.au, align 8, !tbaa !44
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 23
  store i8 0, ptr %i.av, align 1, !tbaa !23
  %i.aw = invoke fastcc noundef zeroext i1 @_ZN6cvtestL16applyTestTagImplERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext false)
          to label %bb.l unwind label %bb.m       ; 0 uses

bb.l:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ax = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.at
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.l
  %i.az = load i64, ptr %i.at, align 8, !tbaa !23
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.pr.pre = load i64, ptr %i.b, align 8, !tbaa !44
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread190

bb.m:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.at
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.m
  %i.be = load i64, ptr %i.at, align 8, !tbaa !23
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.af

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread190: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.bg = phi i64 [ %i.am, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ], [ %.pr.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ] ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 7
  br i1 %i.bh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit76, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread195

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit76: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread190
  %i.bi = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 1
  %i.bk = xor i32 %i.bj, 1601004909
  %i.bl = getelementptr i8, ptr %i.bi, i64 3
  %i.bm = load i32, ptr %i.bl, align 1
  %i.bn = xor i32 %i.bm, 1650931295
  %i.bo = or i32 %i.bk, %i.bn
  %i.bp = icmp ne i32 %i.bo, 0
  %i.bq = zext i1 %i.bp to i32
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit76.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit76.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit76
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.bs, ptr %5, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.bs, ptr noundef nonnull align 1 dereferenceable(7) @.str.40, i64 7, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 7, ptr %i.bt, align 8, !tbaa !44
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 23
  store i8 0, ptr %i.bu, align 1, !tbaa !23
  %i.bv = invoke fastcc noundef zeroext i1 @_ZN6cvtestL16applyTestTagImplERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext false)
          to label %bb.n unwind label %bb.o       ; 0 uses

bb.n:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit76.thread
  %i.bw = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bs
  br i1 %i.bx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit76.thread191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.n
  %i.by = load i64, ptr %i.bs, align 8, !tbaa !23
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #22
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit76.thread191

bb.o:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit76.thread
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bs
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.o
  %i.cd = load i64, ptr %i.bs, align 8, !tbaa !23
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.af

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit76.thread191: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.pre = load i64, ptr %i.b, align 8, !tbaa !44  ; 2 uses
  %i.cf = icmp eq i64 %.pre, 7
  br i1 %i.cf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread195

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit76, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit76.thread191
  %i.cg = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 1
  %i.ci = xor i32 %i.ch, 1601004909
  %i.cj = getelementptr i8, ptr %i.cg, i64 3
  %i.ck = load i32, ptr %i.cj, align 1
  %i.cl = xor i32 %i.ck, 1650930271
  %i.cm = or i32 %i.ci, %i.cl
  %i.cn = icmp ne i32 %i.cm, 0
  %i.co = zext i1 %i.cn to i32
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.cq, ptr %6, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.cq, ptr noundef nonnull align 1 dereferenceable(7) @.str.41, i64 7, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 7, ptr %i.cr, align 8, !tbaa !44
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 23
  store i8 0, ptr %i.cs, align 1, !tbaa !23
  %i.ct = invoke fastcc noundef zeroext i1 @_ZN6cvtestL16applyTestTagImplERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.p unwind label %bb.q       ; 0 uses

bb.p:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88.thread
  %i.cu = load ptr, ptr %6, align 8, !tbaa !22    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.cq
  br i1 %i.cv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88.thread192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
end_hunk_0
