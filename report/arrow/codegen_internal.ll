inline.NumInlined: 760
inline.NumDeleted: 290
begin_hunk_0_@_ZN5arrow7compute8internal14CommonTemporalEPKNS_10TypeHolderEm:bb.a
  %i.ad = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6date64Ev() ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !84 ; 3 uses
  store ptr %i.ae, ptr %4, align 8, !tbaa !84
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !34 ; 4 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !34
  %.not.i.i.i61 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i61, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.ai, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.r:                                             ; preds = %bb.p
  %i.am = atomicrmw volatile add ptr %i.ai, i32 1 acq_rel, align 4 ; 0 uses
  %.pre147 = load ptr, ptr %4, align 8, !tbaa !84
  %.pre148 = load ptr, ptr %i.af, align 8, !tbaa !34
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.o, %bb.q, %bb.r
  %i.an = phi ptr [ null, %bb.o ], [ %i.ah, %bb.q ], [ %.pre148, %bb.r ]
  %i.ao = phi ptr [ %i.ae, %bb.o ], [ %i.ae, %bb.q ], [ %.pre147, %bb.r ] ; 2 uses
  store ptr %i.ao, ptr %0, align 8, !tbaa !113
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !84
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.af, align 8, !tbaa !34
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !34
  store ptr null, ptr %4, align 8, !tbaa !84
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #25
  br label %.thread114

bb.s:                                             ; preds = %bb.n
  br i1 %.141.ph, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.ar = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6date32Ev() ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !84 ; 3 uses
  store ptr %i.as, ptr %5, align 8, !tbaa !84
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !34 ; 4 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !34
  %.not.i.i.i62 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i62, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit64, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i63 = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i63, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.aw, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit64

bb.w:                                             ; preds = %bb.u
  %i.ba = atomicrmw volatile add ptr %i.aw, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %5, align 8, !tbaa !84
  %.pre146 = load ptr, ptr %i.at, align 8, !tbaa !34
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit64

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit64: ; preds = %bb.t, %bb.v, %bb.w
  %i.bb = phi ptr [ null, %bb.t ], [ %i.av, %bb.v ], [ %.pre146, %bb.w ]
  %i.bc = phi ptr [ %i.as, %bb.t ], [ %i.as, %bb.v ], [ %.pre, %bb.w ] ; 2 uses
  store ptr %i.bc, ptr %0, align 8, !tbaa !113
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !84
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.at, align 8, !tbaa !34
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !34
  store ptr null, ptr %5, align 8, !tbaa !84
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #25
  br label %.thread114

bb.x:                                             ; preds = %bb.s
  br i1 %.147.ph, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @_ZN5arrow8durationENS_8TimeUnit4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %6, i32 noundef %.1.ph)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bh = load <2 x ptr>, ptr %6, align 16, !tbaa !38
  %i.bi = load ptr, ptr %6, align 16, !tbaa !84
  store ptr %i.bi, ptr %0, align 8, !tbaa !113
  store ptr null, ptr %i.bg, align 8, !tbaa !34
  store <2 x ptr> %i.bh, ptr %i.bf, align 8, !tbaa !38
  store ptr null, ptr %6, align 16, !tbaa !84
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #25
  br label %.thread114

bb.z:                                             ; preds = %bb.x, %bb.l
  br i1 %.150.ph, label %bb.aa, label %.thread175

bb.aa:                                            ; preds = %bb.z
  switch i32 %.1.ph, label %.thread175 [
    i32 0, label %bb.ab
    i32 1, label %bb.ab
    i32 2, label %bb.ac
    i32 3, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  call void @_ZN5arrow6time32ENS_8TimeUnit4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %7, i32 noundef %.1.ph)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bl = load <2 x ptr>, ptr %7, align 16, !tbaa !38
  %i.bm = load ptr, ptr %7, align 16, !tbaa !84
  store ptr %i.bm, ptr %0, align 8, !tbaa !113
  store ptr null, ptr %i.bk, align 8, !tbaa !34
  store <2 x ptr> %i.bl, ptr %i.bj, align 8, !tbaa !38
  store ptr null, ptr %7, align 16, !tbaa !84
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  br label %.thread114

bb.ac:                                            ; preds = %bb.aa, %bb.aa
  call void @_ZN5arrow6time64ENS_8TimeUnit4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %8, i32 noundef %.1.ph)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bp = load <2 x ptr>, ptr %8, align 16, !tbaa !38
  %i.bq = load ptr, ptr %8, align 16, !tbaa !84
  store ptr %i.bq, ptr %0, align 8, !tbaa !113
  store ptr null, ptr %i.bo, align 8, !tbaa !34
  store <2 x ptr> %i.bp, ptr %i.bn, align 8, !tbaa !38
  store ptr null, ptr %8, align 16, !tbaa !84
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #25
  br label %.thread114

.thread175:                                       ; preds = %bb.a, %bb.aa, %bb.z
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.thread114

.thread114:                                       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread99, %bb.i, %bb.k, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit64, %bb.y, %bb.ab, %bb.ac, %.thread175
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6date64Ev() local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6date32Ev() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute8internal12CommonBinaryEPKNS_10TypeHolderEm(ptr dead_on_unwind noalias writable writeonly sret(%"struct.arrow::TypeHolder") align 8 captures(none) %0, ptr noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %.idx = mul nuw nsw i64 %2, 24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not75 = icmp eq i64 %2, 0
  br i1 %.not75, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.079 = phi i1 [ %.1.ph, %bb.f ], [ true, %bb.a ] ; 2 uses
  %.01678 = phi ptr [ %i.e, %bb.f ], [ %1, %bb.a ] ; 2 uses
  %.01777 = phi i8 [ %.118.ph, %bb.f ], [ 1, %bb.a ] ; 3 uses
  %.02076 = phi i1 [ %.121.ph, %bb.f ], [ true, %bb.a ]
  %i.b = load ptr, ptr %.01678, align 8, !tbaa !113
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !98
  switch i32 %i.d, label %bb.g [
    i32 13, label %bb.f
    i32 14, label %bb.b
    i32 15, label %bb.c
    i32 34, label %bb.d
    i32 35, label %bb.e
  ]

bb.b:                                             ; preds = %.lr.ph
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.c, %bb.d, %.lr.ph
  %.121.ph = phi i1 [ false, %.lr.ph ], [ false, %bb.d ], [ %.02076, %bb.c ], [ false, %bb.b ], [ false, %bb.e ] ; 2 uses
  %.118.ph = phi i8 [ %.01777, %.lr.ph ], [ 0, %bb.d ], [ %.01777, %bb.c ], [ %.01777, %bb.b ], [ 0, %bb.e ] ; 2 uses
  %.1.ph = phi i1 [ %.079, %.lr.ph ], [ %.079, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.e ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.01678, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.e, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !183

bb.g:                                             ; preds = %.lr.ph
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.aa

._crit_edge:                                      ; preds = %bb.f
  %3 = trunc nuw i8 %.118.ph to i1                ; 2 uses
  br i1 %.121.ph, label %._crit_edge.thread, label %bb.h

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.aa

bb.h:                                             ; preds = %._crit_edge
  br i1 %.1.ph, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  br i1 %3, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4utf8Ev() ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !84   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !34   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.l = load i32, ptr %i.j, align 4, !tbaa !3
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !3
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.n = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.m, %bb.l, %bb.j
  store ptr %i.g, ptr %0, align 8, !tbaa !113
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.o, align 8, !tbaa !84
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.p, align 8, !tbaa !34
  br label %bb.aa

bb.n:                                             ; preds = %bb.i
  %i.q = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow10large_utf8Ev() ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !84   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !34   ; 3 uses
  %.not.i.i.i24 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i24, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit31, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i25 = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i25, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.w = load i32, ptr %i.u, align 4, !tbaa !3
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !3
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit31

bb.q:                                             ; preds = %bb.o
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit31

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit31: ; preds = %bb.q, %bb.p, %bb.n
  store ptr %i.r, ptr %0, align 8, !tbaa !113
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.z, align 8, !tbaa !84
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %i.aa, align 8, !tbaa !34
  br label %bb.aa

bb.r:                                             ; preds = %bb.h
  br i1 %3, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.ab = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6binaryEv() ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !84 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i32 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i32, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit39, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i33 = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i33, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !3
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit39

bb.v:                                             ; preds = %bb.t
  %i.aj = atomicrmw volatile add ptr %i.af, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit39

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit39: ; preds = %bb.v, %bb.u, %bb.s
  store ptr %i.ac, ptr %0, align 8, !tbaa !113
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ak, align 8, !tbaa !84
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ae, ptr %i.al, align 8, !tbaa !34
  br label %bb.aa

bb.w:                                             ; preds = %bb.r
  %i.am = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow12large_binaryEv() ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !84 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i40 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i40, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit47, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i41 = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i41, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.aq, align 4, !tbaa !3
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit47

bb.z:                                             ; preds = %bb.x
  %i.au = atomicrmw volatile add ptr %i.aq, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit47

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit47: ; preds = %bb.z, %bb.y, %bb.w
  store ptr %i.an, ptr %0, align 8, !tbaa !113
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.av, align 8, !tbaa !84
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ap, ptr %i.aw, align 8, !tbaa !34
  br label %bb.aa

bb.aa:                                            ; preds = %bb.g, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit47, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit39, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit31, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %._crit_edge.thread
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4utf8Ev() local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow10large_utf8Ev() local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6binaryEv() local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow12large_binaryEv() local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5arrow7compute8internal17CastableToDecimalERKNS_8DataTypeE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !98   ; 3 uses
  %.off.i = add i32 %i.b, -2
  %switch.i = icmp ult i32 %.off.i, 11
  br i1 %switch.i, label %_ZN5arrow10is_decimalENS_4Type4typeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %i.b, 45
  br i1 %i.c, label %switch.lookup, label %_ZN5arrow10is_decimalENS_4Type4typeE.exit

switch.lookup:                                    ; preds = %bb.b
  %switch.cast = zext nneg i32 %i.b to i45
  %switch.downshift = lshr i45 -8796067856384, %switch.cast
  %switch.masked = trunc i45 %switch.downshift to i1
  br label %_ZN5arrow10is_decimalENS_4Type4typeE.exit

_ZN5arrow10is_decimalENS_4Type4typeE.exit:        ; preds = %bb.b, %switch.lookup, %bb.a
  %i.d = phi i1 [ true, %bb.a ], [ %switch.masked, %switch.lookup ], [ false, %bb.b ]
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute8internal21CastBinaryDecimalArgsENS1_16DecimalPromotionEPSt6vectorINS_10TypeHolderESaIS4_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef zeroext %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Result.42", align 8  ; 12 uses
  %4 = alloca %"class.arrow::Result.42", align 8  ; 12 uses
  %5 = alloca %"class.arrow::Result.38", align 8  ; 13 uses
  %6 = alloca %"class.std::shared_ptr", align 8   ; 6 uses
  %7 = alloca %"class.arrow::Result.38", align 8  ; 13 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !79     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !113  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !98   ; 6 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !98 ; 5 uses
  switch i32 %i.f, label %_ZN5arrow10is_decimalENS_4Type4typeE.exit [
    i32 43, label %bb.b
    i32 44, label %bb.b
    i32 23, label %bb.b
    i32 24, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %.off.i.i = add i32 %.pre, -2
  %switch.i.i = icmp ult i32 %.off.i.i, 11
  br i1 %switch.i.i, label %_ZN5arrow10is_decimalENS_4Type4typeE.exit, label %bb.c

end_hunk_0
