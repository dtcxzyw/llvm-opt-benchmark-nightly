Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/IOHandlerCursesGUI?download=true
inline.NumInlined: 5524
inline.NumDeleted: 2178
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12lldb_private6curses4Menu13DrawMenuTitleERNS0_6WindowEb:bb.a
  %.152 = phi i1 [ false, %bb.j ], [ true, %bb.h ], [ true, %bb.i ]
  br i1 %2, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !123
  %i.bk = tail call i32 @wattr_off(ptr noundef %i.bj, i32 noundef 262144, ptr noundef null) #28 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !85
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %.152, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = load i32, ptr %i.w, align 4, !tbaa !108
  %i.bp = trunc i32 %i.bo to i8
  %i.bq = add i8 %i.bp, -32
  %i.br = icmp ult i8 %i.bq, 95
  br i1 %i.br, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !123
  %i.bv = tail call i32 @wattr_on(ptr noundef %i.bu, i32 noundef 4608, ptr noundef null) #28 ; 0 uses
  %i.bw = load i32, ptr %i.w, align 4, !tbaa !108
  tail call void (ptr, ptr, ...) @_ZN12lldb_private6curses7Surface6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull @.str, i32 noundef %i.bw)
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !123
  %i.by = tail call i32 @wattr_off(ptr noundef %i.bx, i32 noundef 4608, ptr noundef null) #28 ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !123
  %i.cd = tail call i32 @wattr_on(ptr noundef %i.cc, i32 noundef 4608, ptr noundef null) #28 ; 0 uses
  %i.ce = load ptr, ptr %i.bz, align 8, !tbaa !124
  tail call void (ptr, ptr, ...) @_ZN12lldb_private6curses7Surface6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull @.str.1, ptr noundef %i.ce)
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !123
  %i.cg = tail call i32 @wattr_off(ptr noundef %i.cf, i32 noundef 4608, ptr noundef null) #28 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %.loopexit
  ret void
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @toupper(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private6curses7Surface6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ...) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.c = call i32 @vw_printw(ptr noundef %i.b, ptr noundef %1, ptr noundef nonnull %2) #28 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private6curses4Menu18WindowDelegateDrawERNS0_6WindowEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, i1 zeroext %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !111  ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !112  ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 4                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.j = load i32, ptr %i.i, align 4, !tbaa !125
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load i32, ptr %i.k, align 8, !tbaa !106
  switch i32 %i.l, label %bb.e [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !123
  %i.o = tail call i32 @wbkgd(ptr noundef %i.n, i32 noundef 4352) #28 ; 0 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !123
  %i.q = tail call i32 @wmove(ptr noundef %i.p, i32 noundef 0, i32 noundef 0) #28 ; 0 uses
  %.not54 = icmp eq ptr %i.c, %i.d
  br i1 %.not54, label %._crit_edge52, label %.lr.ph51.preheader

.lr.ph51.preheader:                               ; preds = %bb.b
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !123
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !114  ; 2 uses
  %i.t = tail call noundef i32 @getcurx(ptr noundef %.pre) #28
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  store i32 %i.t, ptr %i.u, align 8, !tbaa !126
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !123
  %i.w = tail call i32 @waddnstr(ptr noundef %i.v, ptr noundef nonnull @.str.2, i32 noundef -1) #28 ; 0 uses
  tail call void @_ZN12lldb_private6curses4Menu13DrawMenuTitleERNS0_6WindowEb(ptr noundef nonnull align 8 dereferenceable(176) %i.s, ptr noundef nonnull align 8 dereferenceable(124) %1, i1 noundef zeroext false)
  %exitcond56.peel.not = icmp eq i64 %i.g, 16
  br i1 %exitcond56.peel.not, label %._crit_edge52, label %.lr.ph51.peel.next

._crit_edge52:                                    ; preds = %.lr.ph51.peel.next, %.lr.ph51.preheader, %bb.b
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !123
  %i.y = tail call i32 @waddnstr(ptr noundef %i.x, ptr noundef nonnull @.str.3, i32 noundef -1) #28 ; 0 uses
  br label %bb.e

.lr.ph51.peel.next:                               ; preds = %.lr.ph51.preheader, %.lr.ph51.peel.next
  %.04349 = phi i64 [ %i.aj, %.lr.ph51.peel.next ], [ 1, %.lr.ph51.preheader ] ; 2 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !112
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.04349
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !114 ; 2 uses
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !123
  %i.ad = tail call i32 @waddch(ptr noundef %i.ac, i32 noundef 32) #28 ; 0 uses
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !123
  %i.af = tail call noundef i32 @getcurx(ptr noundef %i.ae) #28
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !126
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !123
  %i.ai = tail call i32 @waddnstr(ptr noundef %i.ah, ptr noundef nonnull @.str.2, i32 noundef -1) #28 ; 0 uses
  tail call void @_ZN12lldb_private6curses4Menu13DrawMenuTitleERNS0_6WindowEb(ptr noundef nonnull align 8 dereferenceable(176) %i.ab, ptr noundef nonnull align 8 dereferenceable(124) %1, i1 noundef zeroext false)
  %i.aj = add nuw i64 %.04349, 1                  ; 2 uses
  %exitcond56.not = icmp eq i64 %i.aj, %i.h
  br i1 %exitcond56.not, label %._crit_edge52, label %.lr.ph51.peel.next, !llvm.loop !735

bb.c:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !123
  %i.am = tail call i32 @werase(ptr noundef %i.al) #28 ; 0 uses
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !123
  %i.ao = tail call i32 @wbkgd(ptr noundef %i.an, i32 noundef 4352) #28 ; 0 uses
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @acs_map, i64 480), align 4, !tbaa !119
  %i.aq = load i32, ptr getelementptr inbounds nuw (i8, ptr @acs_map, i64 452), align 4, !tbaa !119
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !123
  %i.as = tail call i32 @box(ptr noundef %i.ar, i32 noundef %i.ap, i32 noundef %i.aq) #28 ; 0 uses
  %.not53 = icmp eq ptr %i.c, %i.d
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.at = sext i32 %i.j to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.041.lcssa = phi i32 [ 0, %bb.c ], [ %spec.select, %bb.d ]
  %.040.lcssa = phi i32 [ 0, %bb.c ], [ %spec.select44, %bb.d ]
  %i.au = load ptr, ptr %i.ak, align 8, !tbaa !123
  %i.av = tail call i32 @wmove(ptr noundef %i.au, i32 noundef %.040.lcssa, i32 noundef %.041.lcssa) #28 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.047 = phi i64 [ 0, %.lr.ph ], [ %i.ax, %bb.d ] ; 3 uses
  %.04046 = phi i32 [ 0, %.lr.ph ], [ %spec.select44, %bb.d ]
  %.04145 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %bb.d ]
  %i.aw = icmp eq i64 %.047, %i.at                ; 3 uses
  %i.ax = add nuw i64 %.047, 1                    ; 3 uses
  %i.ay = trunc i64 %i.ax to i32                  ; 2 uses
  %i.az = load ptr, ptr %i.ak, align 8, !tbaa !123
  %i.ba = tail call i32 @wmove(ptr noundef %i.az, i32 noundef %i.ay, i32 noundef 3) #28 ; 0 uses
  %spec.select = select i1 %i.aw, i32 2, i32 %.04145 ; 2 uses
  %spec.select44 = select i1 %i.aw, i32 %i.ay, i32 %.04046 ; 2 uses
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !112
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.047
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !114
  tail call void @_ZN12lldb_private6curses4Menu13DrawMenuTitleERNS0_6WindowEb(ptr noundef nonnull align 8 dereferenceable(176) %i.bd, ptr noundef nonnull align 8 dereferenceable(124) %1, i1 noundef zeroext %i.aw)
  %exitcond.not = icmp eq i64 %i.ax, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !736

bb.e:                                             ; preds = %bb.a, %._crit_edge, %._crit_edge52
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 3) i32 @_ZN12lldb_private6curses4Menu24WindowDelegateHandleCharERNS0_6WindowEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, i32 noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.6", align 8 ; 23 uses
  %4 = alloca %"struct.lldb_private::curses::Rect", align 4 ; 7 uses
  %5 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !111  ; 6 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !112  ; 18 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4                   ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 9 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !125  ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load i32, ptr %i.k, align 8, !tbaa !106
  switch i32 %i.l, label %.loopexit [
    i32 1, label %bb.b
    i32 2, label %bb.cl
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  switch i32 %2, label %.preheader [
    i32 258, label %bb.c
    i32 259, label %bb.c
    i32 261, label %bb.u
    i32 260, label %bb.af
  ]

.preheader:                                       ; preds = %bb.b
  %.not171 = icmp eq ptr %i.c, %i.d
  br i1 %.not171, label %_ZNSt10shared_ptrIN12lldb_private6curses4MenuEEaSERKS3_.exit, label %.lr.ph170

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.m = trunc i64 %i.h to i32
  %i.n = icmp slt i32 %i.j, %i.m
  br i1 %i.n, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.o = sext i32 %i.j to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.o ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !114  ; 2 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !114
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !118  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN12lldb_private6curses4MenuEEaSERKS3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread: ; preds = %bb.e
  %i.w = load i32, ptr %i.u, align 4, !tbaa !119
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !119
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.e
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !118 ; 8 uses
  %.not8.i.i.i = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.z, align 8, !tbaa !128
  %i.ad = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !129
  %i.ae = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !78
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #28, !inline_history !738
  %i.ah = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !78
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #28, !inline_history !738
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i9.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i9.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !119
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.ac, %bb.i ], [ %i.am, %bb.j ]
  %i.an = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.an, label %bb.k, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !130

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #28
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.t, ptr %i.r, align 8, !tbaa !118
  br label %_ZNSt10shared_ptrIN12lldb_private6curses4MenuEEaSERKS3_.exitthread-pre-split

bb.l:                                             ; preds = %bb.c
  %i.ao = icmp eq ptr %i.d, %i.c
  br i1 %i.ao, label %_ZNSt10shared_ptrIN12lldb_private6curses4MenuEEaSERKS3_.exitthread-pre-split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !114 ; 2 uses
  store ptr %i.ap, ptr %3, align 8, !tbaa !114
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !118 ; 3 uses
  %.not.i.i.i86 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i86, label %_ZNSt10shared_ptrIN12lldb_private6curses4MenuEEaSERKS3_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i88 = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i.i88, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i89, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i89.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i89.thread: ; preds = %bb.n
  %i.av = load i32, ptr %i.at, align 4, !tbaa !119
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.at, align 4, !tbaa !119
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i94

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i89: ; preds = %bb.n
  %i.ax = atomicrmw volatile add ptr %i.at, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i95 = load ptr, ptr %i.aq, align 8, !tbaa !118 ; 8 uses
  %.not8.i.i.i90 = icmp eq ptr %.pr.pre.i.i.i95, null
  br i1 %.not8.i.i.i90, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i94, label %bb.o

bb.o:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i89
  %i.ay = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i95, i64 8 ; 4 uses
  %i.az = load atomic i64, ptr %i.ay acquire, align 8 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 4294967297
  %i.bb = trunc i64 %i.az to i32                  ; 2 uses
  br i1 %i.ba, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.ay, align 8, !tbaa !128
  %i.bc = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i95, i64 12
  store i32 0, ptr %i.bc, align 4, !tbaa !129
  %i.bd = load ptr, ptr %.pr.pre.i.i.i95, align 8, !tbaa !78
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i95) #28, !inline_history !738
  %i.bg = load ptr, ptr %.pr.pre.i.i.i95, align 8, !tbaa !78
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i95) #28, !inline_history !738
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i94

bb.q:                                             ; preds = %bb.o
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i9.i.i.i91 = icmp eq i8 %i.bj, 0
  br i1 %.not.i9.i.i.i91, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = add nsw i32 %i.bb, -1
  store i32 %i.bk, ptr %i.ay, align 8, !tbaa !119
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i92

bb.s:                                             ; preds = %bb.q
  %i.bl = atomicrmw volatile add ptr %i.ay, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i92

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i92: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i93 = phi i32 [ %i.bb, %bb.r ], [ %i.bl, %bb.s ]
  %i.bm = icmp eq i32 %.0.i.i.i.i.i93, 1
  br i1 %i.bm, label %bb.t, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i94, !prof !130

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i92
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i95) #28
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i94

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i94: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i89.thread, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i92, %bb.p, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i89
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !118
  br label %_ZNSt10shared_ptrIN12lldb_private6curses4MenuEEaSERKS3_.exitthread-pre-split

bb.u:                                             ; preds = %bb.b
  %i.bn = add nsw i32 %i.j, 1                     ; 2 uses
  %i.bo = trunc i64 %i.h to i32                   ; 2 uses
  %.not82 = icmp slt i32 %i.bn, %i.bo
  %spec.select = select i1 %.not82, i32 %i.bn, i32 0 ; 3 uses
  store i32 %spec.select, ptr %i.i, align 4, !tbaa !125
  %i.bp = icmp slt i32 %spec.select, %i.bo
  br i1 %i.bp, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.bq = sext i32 %spec.select to i64
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.bq ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !114 ; 2 uses
  store ptr %i.bs, ptr %3, align 8, !tbaa !114
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !118 ; 3 uses
  %.not.i.i.i97 = icmp eq ptr %i.bv, null
end_hunk_0
begin_hunk_1_@_ZN12lldb_private6curses4Menu24WindowDelegateHandleCharERNS0_6WindowEi:bb.a
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hu, i64 104 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !118 ; 2 uses
  %.not.i.i.i.i134152 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i.i134152, label %_ZNSt12__shared_ptrIN12lldb_private6curses14WindowDelegateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread

bb.br:                                            ; preds = %_ZNSt10shared_ptrIN12lldb_private6curses14WindowDelegateEEC2INS1_4MenuEvEERKS_IT_E.exit
  %i.ij = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i135 = icmp eq i8 %i.ij, 0
  br i1 %.not.i.i.i.i.i135, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ik = load i32, ptr %i.hy, align 4, !tbaa !119
  %i.il = add nsw i32 %i.ik, 1
  store i32 %i.il, ptr %i.hy, align 4, !tbaa !119
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.im = atomicrmw volatile add ptr %i.hy, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.ie, align 8, !tbaa !118
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.bt, %bb.bs
  %i.in = phi ptr [ %.pr.pre.i.i.i.i, %bb.bt ], [ %i.if, %bb.bs ] ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.in, null
  br i1 %.not8.i.i.i.i, label %_ZN12lldb_private6curses6Window11SetDelegateERKSt10shared_ptrINS0_14WindowDelegateEE.exit.thread223, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread

_ZN12lldb_private6curses6Window11SetDelegateERKSt10shared_ptrINS0_14WindowDelegateEE.exit.thread223: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.hx, ptr %i.ie, align 8, !tbaa !118
  br label %_ZN12lldb_private6curses6Window11SetDelegateERKSt10shared_ptrINS0_14WindowDelegateEE.exit.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread: ; preds = %_ZNSt10shared_ptrIN12lldb_private6curses14WindowDelegateEEC2INS1_4MenuEvEERKS_IT_E.exit.thread, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.io = phi ptr [ %i.in, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i ], [ %i.ii, %_ZNSt10shared_ptrIN12lldb_private6curses14WindowDelegateEEC2INS1_4MenuEvEERKS_IT_E.exit.thread ] ; 7 uses
  %i.ip = phi ptr [ %i.ie, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i ], [ %i.ih, %_ZNSt10shared_ptrIN12lldb_private6curses14WindowDelegateEEC2INS1_4MenuEvEERKS_IT_E.exit.thread ]
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 8 ; 4 uses
  %i.ir = load atomic i64, ptr %i.iq acquire, align 8 ; 2 uses
  %i.is = icmp eq i64 %i.ir, 4294967297
  %i.it = trunc i64 %i.ir to i32                  ; 2 uses
  br i1 %i.is, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread
  store i32 0, ptr %i.iq, align 8, !tbaa !128
  %i.iu = getelementptr inbounds nuw i8, ptr %i.io, i64 12
  store i32 0, ptr %i.iu, align 4, !tbaa !129
  %i.iv = load ptr, ptr %i.io, align 8, !tbaa !78
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8
  call void %i.ix(ptr noundef nonnull align 8 dereferenceable(16) %i.io) #28, !inline_history !3
  %i.iy = load ptr, ptr %i.io, align 8, !tbaa !78
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  %i.ja = load ptr, ptr %i.iz, align 8
  call void %i.ja(ptr noundef nonnull align 8 dereferenceable(16) %i.io) #28, !inline_history !3
  br label %_ZN12lldb_private6curses6Window11SetDelegateERKSt10shared_ptrINS0_14WindowDelegateEE.exit

bb.bv:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread
  %i.jb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i9.i.i.i.i = icmp eq i8 %i.jb, 0
  br i1 %.not.i9.i.i.i.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jc = add nsw i32 %i.it, -1
  store i32 %i.jc, ptr %i.iq, align 8, !tbaa !119
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i136

bb.bx:                                            ; preds = %bb.bv
  %i.jd = atomicrmw volatile add ptr %i.iq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i136

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i136: ; preds = %bb.bx, %bb.bw
  %.0.i.i.i.i.i.i137 = phi i32 [ %i.it, %bb.bw ], [ %i.jd, %bb.bx ]
  %i.je = icmp eq i32 %.0.i.i.i.i.i.i137, 1
  br i1 %i.je, label %bb.by, label %_ZN12lldb_private6curses6Window11SetDelegateERKSt10shared_ptrINS0_14WindowDelegateEE.exit, !prof !130

bb.by:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i136
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.io) #28
  br label %_ZN12lldb_private6curses6Window11SetDelegateERKSt10shared_ptrINS0_14WindowDelegateEE.exit

_ZN12lldb_private6curses6Window11SetDelegateERKSt10shared_ptrINS0_14WindowDelegateEE.exit: ; preds = %bb.bu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i136, %bb.by
  store ptr %i.hx, ptr %i.ip, align 8, !tbaa !118
  br i1 %.not.i.i.i132, label %_ZNSt12__shared_ptrIN12lldb_private6curses14WindowDelegateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZN12lldb_private6curses6Window11SetDelegateERKSt10shared_ptrINS0_14WindowDelegateEE.exit.thread

_ZN12lldb_private6curses6Window11SetDelegateERKSt10shared_ptrINS0_14WindowDelegateEE.exit.thread: ; preds = %_ZNSt10shared_ptrIN12lldb_private6curses14WindowDelegateEEC2INS1_4MenuEvEERKS_IT_E.exit, %_ZN12lldb_private6curses6Window11SetDelegateERKSt10shared_ptrINS0_14WindowDelegateEE.exit.thread223, %_ZN12lldb_private6curses6Window11SetDelegateERKSt10shared_ptrINS0_14WindowDelegateEE.exit
  %i.jf = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 4 uses
  %i.jg = load atomic i64, ptr %i.jf acquire, align 8 ; 2 uses
  %i.jh = icmp eq i64 %i.jg, 4294967297
  %i.ji = trunc i64 %i.jg to i32                  ; 2 uses
  br i1 %i.jh, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %_ZN12lldb_private6curses6Window11SetDelegateERKSt10shared_ptrINS0_14WindowDelegateEE.exit.thread
  store i32 0, ptr %i.jf, align 8, !tbaa !128
  %i.jj = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  store i32 0, ptr %i.jj, align 4, !tbaa !129
  %i.jk = load ptr, ptr %i.hx, align 8, !tbaa !78
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8
  call void %i.jm(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #28, !inline_history !4
  %i.jn = load ptr, ptr %i.hx, align 8, !tbaa !78
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  %i.jp = load ptr, ptr %i.jo, align 8
  call void %i.jp(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #28, !inline_history !4
  br label %_ZNSt12__shared_ptrIN12lldb_private6curses14WindowDelegateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ca:                                            ; preds = %_ZN12lldb_private6curses6Window11SetDelegateERKSt10shared_ptrINS0_14WindowDelegateEE.exit.thread
  %i.jq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i139 = icmp eq i8 %i.jq, 0
  br i1 %.not.i.i.i139, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jr = add nsw i32 %i.ji, -1
  store i32 %i.jr, ptr %i.jf, align 8, !tbaa !119
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140

bb.cc:                                            ; preds = %bb.ca
  %i.js = atomicrmw volatile add ptr %i.jf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140: ; preds = %bb.cc, %bb.cb
  %.0.i.i.i.i141 = phi i32 [ %i.ji, %bb.cb ], [ %i.js, %bb.cc ]
  %i.jt = icmp eq i32 %.0.i.i.i.i141, 1
  br i1 %i.jt, label %bb.cd, label %_ZNSt12__shared_ptrIN12lldb_private6curses14WindowDelegateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.cd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #28
  br label %_ZNSt12__shared_ptrIN12lldb_private6curses14WindowDelegateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private6curses14WindowDelegateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN12lldb_private6curses14WindowDelegateEEC2INS1_4MenuEvEERKS_IT_E.exit.thread, %_ZN12lldb_private6curses6Window11SetDelegateERKSt10shared_ptrINS0_14WindowDelegateEE.exit, %bb.bz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.ce

bb.ce:                                            ; preds = %_ZNSt10shared_ptrIN12lldb_private6curses4MenuEEaSERKS3_.exit, %_ZNSt12__shared_ptrIN12lldb_private6curses14WindowDelegateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.166221 = phi i32 [ %.166, %_ZNSt10shared_ptrIN12lldb_private6curses4MenuEEaSERKS3_.exit ], [ %.166220, %_ZNSt12__shared_ptrIN12lldb_private6curses14WindowDelegateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.ju = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !118 ; 8 uses
  %.not.i.i142 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i142, label %_ZNSt12__shared_ptrIN12lldb_private6curses4MenuELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8 ; 4 uses
  %i.jx = load atomic i64, ptr %i.jw acquire, align 8 ; 2 uses
  %i.jy = icmp eq i64 %i.jx, 4294967297
  %i.jz = trunc i64 %i.jx to i32                  ; 2 uses
  br i1 %i.jy, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  store i32 0, ptr %i.jw, align 8, !tbaa !128
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jv, i64 12
  store i32 0, ptr %i.ka, align 4, !tbaa !129
  %i.kb = load ptr, ptr %i.jv, align 8, !tbaa !78
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.kd = load ptr, ptr %i.kc, align 8
  call void %i.kd(ptr noundef nonnull align 8 dereferenceable(16) %i.jv) #28, !inline_history !5
  %i.ke = load ptr, ptr %i.jv, align 8, !tbaa !78
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %i.kg = load ptr, ptr %i.kf, align 8
  call void %i.kg(ptr noundef nonnull align 8 dereferenceable(16) %i.jv) #28, !inline_history !5
  br label %_ZNSt12__shared_ptrIN12lldb_private6curses4MenuELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ch:                                            ; preds = %bb.cf
  %i.kh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i143 = icmp eq i8 %i.kh, 0
  br i1 %.not.i.i.i143, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ki = add nsw i32 %i.jz, -1
  store i32 %i.ki, ptr %i.jw, align 8, !tbaa !119
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i144

bb.cj:                                            ; preds = %bb.ch
  %i.kj = atomicrmw volatile add ptr %i.jw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i144

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i144: ; preds = %bb.cj, %bb.ci
  %.0.i.i.i.i145 = phi i32 [ %i.jz, %bb.ci ], [ %i.kj, %bb.cj ]
  %i.kk = icmp eq i32 %.0.i.i.i.i145, 1
  br i1 %i.kk, label %bb.ck, label %_ZNSt12__shared_ptrIN12lldb_private6curses4MenuELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.ck:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i144
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jv) #28
  br label %_ZNSt12__shared_ptrIN12lldb_private6curses4MenuELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private6curses4MenuELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ce, %bb.cg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i144, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.loopexit

bb.cl:                                            ; preds = %bb.a
  switch i32 %2, label %.preheader157 [
    i32 258, label %bb.cm
    i32 259, label %bb.co
    i32 10, label %bb.cr
    i32 27, label %bb.cu
  ]

.preheader157:                                    ; preds = %bb.cl
  %.not81167.not = icmp eq ptr %i.c, %i.d
  br i1 %.not81167.not, label %.loopexit, label %.lr.ph

bb.cm:                                            ; preds = %bb.cl
  %i.kl = icmp ugt i64 %i.h, 1
  br i1 %i.kl, label %.preheader158, label %.loopexit

.preheader158:                                    ; preds = %bb.cm, %bb.cn
  %i.km = phi i32 [ %9, %bb.cn ], [ %i.j, %bb.cm ]
  %i.kn = add nsw i32 %i.km, 1                    ; 4 uses
  store i32 %i.kn, ptr %i.i, align 4, !tbaa !125
  %.not78 = icmp eq i32 %i.kn, %i.j
  br i1 %.not78, label %.loopexit, label %6

6:                                                ; preds = %.preheader158
  %7 = sext i32 %i.kn to i64
  %.not79 = icmp ugt i64 %i.h, %7
  br i1 %.not79, label %bb.cn, label %8

8:                                                ; preds = %6
  store i32 0, ptr %i.i, align 4, !tbaa !125
  br label %bb.cn

bb.cn:                                            ; preds = %8, %6
  %9 = phi i32 [ 0, %8 ], [ %i.kn, %6 ]           ; 2 uses
  %i.ko = sext i32 %9 to i64
  %i.kp = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.ko
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !114
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 80
  %i.ks = load i32, ptr %i.kr, align 8, !tbaa !106
  %i.kt = icmp eq i32 %i.ks, 3
  br i1 %i.kt, label %.preheader158, label %.loopexit, !llvm.loop !740

bb.co:                                            ; preds = %bb.cl
  %i.ku = icmp ugt i64 %i.h, 1
  br i1 %i.ku, label %.preheader160, label %.loopexit

.preheader160:                                    ; preds = %bb.co
  %i.kv = trunc i64 %i.h to i32
  %i.kw = add i32 %i.kv, -1                       ; 2 uses
  br label %bb.cp

bb.cp:                                            ; preds = %.preheader160, %bb.cq
  %i.kx = phi i32 [ %i.j, %.preheader160 ], [ %13, %bb.cq ] ; 2 uses
  %i.ky = add nsw i32 %i.kx, -1                   ; 3 uses
  store i32 %i.ky, ptr %i.i, align 4, !tbaa !125
  %.not = icmp eq i32 %i.ky, %i.j
  br i1 %.not, label %.loopexit, label %10

10:                                               ; preds = %bb.cp
  %11 = icmp slt i32 %i.kx, 1
  br i1 %11, label %12, label %bb.cq

12:                                               ; preds = %10
  store i32 %i.kw, ptr %i.i, align 4, !tbaa !125
  br label %bb.cq

bb.cq:                                            ; preds = %12, %10
  %13 = phi i32 [ %i.kw, %12 ], [ %i.ky, %10 ]    ; 2 uses
  %i.kz = sext i32 %13 to i64
  %i.la = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.kz
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !114
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 80
  %i.ld = load i32, ptr %i.lc, align 8, !tbaa !106
  %i.le = icmp eq i32 %i.ld, 3
  br i1 %i.le, label %bb.cp, label %.loopexit, !llvm.loop !741

bb.cr:                                            ; preds = %bb.cl
  %i.lf = sext i32 %i.j to i64                    ; 2 uses
  %i.lg = icmp ugt i64 %i.h, %i.lf
  br i1 %i.lg, label %bb.cs, label %.loopexit

bb.cs:                                            ; preds = %bb.cr
  %i.lh = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.lf
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !114 ; 2 uses
  %i.lj = tail call noundef i32 @_ZN12lldb_private6curses4Menu13ActionPrivateERS1_(ptr noundef nonnull align 8 dereferenceable(176) %i.li, ptr noundef nonnull align 8 dereferenceable(176) %i.li)
  %i.lk = icmp eq i32 %i.lj, 2
  br i1 %i.lk, label %.loopexit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !148
  %i.ln = tail call noundef zeroext i1 @_ZN12lldb_private6curses6Window15RemoveSubWindowEPS1_(ptr noundef nonnull align 8 dereferenceable(124) %i.lm, ptr noundef nonnull %1) ; 0 uses
  br label %.loopexit

bb.cu:                                            ; preds = %bb.cl
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !148
  %i.lq = tail call noundef zeroext i1 @_ZN12lldb_private6curses6Window15RemoveSubWindowEPS1_(ptr noundef nonnull align 8 dereferenceable(124) %i.lp, ptr noundef nonnull %1) ; 0 uses
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader157, %bb.cv
  %.0168 = phi i64 [ %i.mb, %bb.cv ], [ 0, %.preheader157 ] ; 3 uses
  %i.lr = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.0168
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !114 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 84
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !108
  %.not80 = icmp eq i32 %i.lu, %2
  br i1 %.not80, label %.thread153, label %bb.cv

.thread153:                                       ; preds = %.lr.ph
  %i.lv = trunc i64 %.0168 to i32
  store i32 %i.lv, ptr %i.i, align 4, !tbaa !125
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !148
  %i.ly = tail call noundef zeroext i1 @_ZN12lldb_private6curses6Window15RemoveSubWindowEPS1_(ptr noundef nonnull align 8 dereferenceable(124) %i.lx, ptr noundef nonnull %1) ; 0 uses
  %i.lz = tail call noundef i32 @_ZN12lldb_private6curses4Menu13ActionPrivateERS1_(ptr noundef nonnull align 8 dereferenceable(176) %i.ls, ptr noundef nonnull align 8 dereferenceable(176) %i.ls)
  %i.ma = icmp eq i32 %i.lz, 2
  %. = select i1 %i.ma, i32 2, i32 1
  br label %.loopexit

bb.cv:                                            ; preds = %.lr.ph
  %i.mb = add nuw i64 %.0168, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.mb, %i.h
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !742

.critedge:                                        ; preds = %_ZNSt10shared_ptrIN12lldb_private6curses4MenuEEaSERKS3_.exit.thread
  %i.mc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !118 ; 8 uses
  %.not.i.i146 = icmp eq ptr %i.md, null
  br i1 %.not.i.i146, label %_ZNSt12__shared_ptrIN12lldb_private6curses4MenuELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit150, label %bb.cw

bb.cw:                                            ; preds = %.critedge
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8 ; 4 uses
  %i.mf = load atomic i64, ptr %i.me acquire, align 8 ; 2 uses
  %i.mg = icmp eq i64 %i.mf, 4294967297
  %i.mh = trunc i64 %i.mf to i32                  ; 2 uses
  br i1 %i.mg, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  store i32 0, ptr %i.me, align 8, !tbaa !128
  %i.mi = getelementptr inbounds nuw i8, ptr %i.md, i64 12
  store i32 0, ptr %i.mi, align 4, !tbaa !129
  %i.mj = load ptr, ptr %i.md, align 8, !tbaa !78
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %i.ml = load ptr, ptr %i.mk, align 8
  call void %i.ml(ptr noundef nonnull align 8 dereferenceable(16) %i.md) #28, !inline_history !5
  %i.mm = load ptr, ptr %i.md, align 8, !tbaa !78
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 24
  %i.mo = load ptr, ptr %i.mn, align 8
  call void %i.mo(ptr noundef nonnull align 8 dereferenceable(16) %i.md) #28, !inline_history !5
  br label %_ZNSt12__shared_ptrIN12lldb_private6curses4MenuELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit150

bb.cy:                                            ; preds = %bb.cw
  %i.mp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i147 = icmp eq i8 %i.mp, 0
  br i1 %.not.i.i.i147, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.mq = add nsw i32 %i.mh, -1
  store i32 %i.mq, ptr %i.me, align 8, !tbaa !119
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i148

bb.da:                                            ; preds = %bb.cy
  %i.mr = atomicrmw volatile add ptr %i.me, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i148

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i148: ; preds = %bb.da, %bb.cz
  %.0.i.i.i.i149 = phi i32 [ %i.mh, %bb.cz ], [ %i.mr, %bb.da ]
  %i.ms = icmp eq i32 %.0.i.i.i.i149, 1
  br i1 %i.ms, label %bb.db, label %_ZNSt12__shared_ptrIN12lldb_private6curses4MenuELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit150, !prof !130

bb.db:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i148
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.md) #28
  br label %_ZNSt12__shared_ptrIN12lldb_private6curses4MenuELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit150

_ZNSt12__shared_ptrIN12lldb_private6curses4MenuELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit150: ; preds = %.critedge, %bb.cx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i148, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.loopexit

.loopexit:                                        ; preds = %bb.cp, %bb.cq, %.preheader158, %bb.cn, %bb.cv, %.preheader157, %.thread153, %bb.cm, %bb.co, %bb.cr, %_ZNSt12__shared_ptrIN12lldb_private6curses4MenuELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.a, %bb.cs, %_ZNSt12__shared_ptrIN12lldb_private6curses4MenuELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit150, %bb.cu, %bb.ct
  %.4 = phi i32 [ 2, %bb.cs ], [ 2, %_ZNSt12__shared_ptrIN12lldb_private6curses4MenuELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit150 ], [ 0, %bb.a ], [ 1, %bb.cu ], [ %., %.thread153 ], [ 0, %bb.cr ], [ 1, %bb.ct ], [ 1, %.preheader158 ], [ 0, %.preheader157 ], [ %.166221, %_ZNSt12__shared_ptrIN12lldb_private6curses4MenuELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ 0, %bb.cm ], [ 0, %bb.co ], [ 0, %bb.cv ], [ 1, %bb.cn ], [ 1, %bb.cq ], [ 1, %bb.cp ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIN12lldb_private6curses4MenuEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !114
  store ptr %i.a, ptr %0, align 8, !tbaa !114
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118  ; 4 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !118  ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12lldb_private6curses4MenuELN9__gnu_cxx12_Lock_policyE2EEaSERKS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not7.i.i = icmp eq ptr %i.d, null
  br i1 %.not7.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %i.f, align 4, !tbaa !119
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !119
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !118
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %i.k = phi ptr [ %i.e, %bb.b ], [ %i.e, %bb.d ], [ %.pr.pre.i.i, %bb.e ] ; 8 uses
  %.not8.i.i = icmp eq ptr %i.k, null
  br i1 %.not8.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.l, align 8, !tbaa !128
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !129
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !78
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #28, !inline_history !743
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !78
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #28, !inline_history !743
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i9.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i9.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !119
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.o, %bb.i ], [ %i.y, %bb.j ]
  %i.z = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.z, label %bb.k, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i, !prof !130

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #28
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !118
  br label %_ZNSt12__shared_ptrIN12lldb_private6curses4MenuELN9__gnu_cxx12_Lock_policyE2EEaSERKS5_.exit

_ZNSt12__shared_ptrIN12lldb_private6curses4MenuELN9__gnu_cxx12_Lock_policyE2EEaSERKS5_.exit: ; preds = %bb.a, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12lldb_private6curses6Window15RemoveSubWindowEPS1_(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !151  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !151  ; 2 uses
  %.not30 = icmp eq ptr %i.d, %i.c
  br i1 %.not30, label %_ZN12lldb_private6curses6Window5TouchEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.j
  %.0929 = phi i64 [ %i.ao, %bb.j ], [ 0, %bb.a ] ; 5 uses
  %.sroa.020.028 = phi ptr [ %i.an, %bb.j ], [ %i.d, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.sroa.020.028, align 8, !tbaa !136
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %bb.b, label %bb.j

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !152  ; 3 uses
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = icmp eq i64 %.0929, %i.i
  br i1 %i.j, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp ne i32 %i.h, -1
  %i.k = icmp ult i64 %.0929, %i.i
  %or.cond = select i1 %.not, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = add i32 %i.h, -1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d
  %.sink = phi i32 [ %i.l, %bb.d ], [ -1, %bb.b ]
  store i32 %.sink, ptr %i.g, align 4, !tbaa !152
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !153  ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = icmp eq i64 %.0929, %i.o
  br i1 %i.p, label %.sink.split46, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not16 = icmp ne i32 %i.n, -1
  %i.q = icmp ult i64 %.0929, %i.o
  %or.cond18 = select i1 %.not16, i1 %i.q, i1 false
  br i1 %or.cond18, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = add i32 %i.n, -1
  br label %.sink.split46

.sink.split46:                                    ; preds = %bb.e, %bb.g
  %.sink47 = phi i32 [ %i.r, %bb.g ], [ -1, %bb.e ]
  store i32 %.sink47, ptr %i.m, align 8, !tbaa !153
  br label %bb.h

bb.h:                                             ; preds = %.sink.split46, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !123
  %i.u = tail call i32 @werase(ptr noundef %i.t) #28 ; 0 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !151  ; 2 uses
  %i.w = ptrtoint ptr %.sroa.020.028 to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 %i.y
  %i.aa = tail call ptr @_ZNSt6vectorISt10shared_ptrIN12lldb_private6curses6WindowEESaIS4_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS4_S6_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.z) ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 1, ptr %i.ab, align 1, !tbaa !154
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !148 ; 2 uses
  %.not17 = icmp eq ptr %i.ad, null
  br i1 %.not17, label %bb.i, label %tailrecurse.i

tailrecurse.i:                                    ; preds = %bb.h, %tailrecurse.i
  %.tr.i = phi ptr [ %i.aj, %tailrecurse.i ], [ %i.ad, %bb.h ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr.i, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !123 ; 2 uses
  %i.ag = tail call i32 @getmaxy(ptr noundef %i.af) #28, !inline_history !6
  %i.ah = tail call i32 @wtouchln(ptr noundef %i.af, i32 noundef 0, i32 noundef %i.ag, i32 noundef 1) #28, !inline_history !6 ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr.i, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !148 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %_ZN12lldb_private6curses6Window5TouchEv.exit, label %tailrecurse.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr @stdscr, align 8, !tbaa !155 ; 2 uses
  %i.al = tail call i32 @getmaxy(ptr noundef %i.ak) #28
  %i.am = tail call i32 @wtouchln(ptr noundef %i.ak, i32 noundef 0, i32 noundef %i.al, i32 noundef 1) #28 ; 0 uses
  br label %_ZN12lldb_private6curses6Window5TouchEv.exit

bb.j:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.020.028, i64 16 ; 2 uses
  %i.ao = add i64 %.0929, 1
  %.not31 = icmp eq ptr %i.an, %i.c
  br i1 %.not31, label %_ZN12lldb_private6curses6Window5TouchEv.exit, label %.lr.ph, !llvm.loop !744

_ZN12lldb_private6curses6Window5TouchEv.exit:     ; preds = %bb.j, %tailrecurse.i, %bb.a, %bb.i
  %i.ap = phi i1 [ true, %tailrecurse.i ], [ true, %bb.i ], [ false, %bb.a ], [ false, %bb.j ]
  ret i1 %i.ap
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_1
