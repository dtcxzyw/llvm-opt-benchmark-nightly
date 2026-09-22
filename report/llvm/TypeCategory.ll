Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TypeCategory?download=true
inline.NumInlined: 1812
inline.NumDeleted: 843
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN12lldb_private24TieredFormatterContainerINS_17SyntheticChildrenEE27GetTypeNameSpecifierAtIndexEm:bb.a
bb.ab:                                            ; preds = %_ZNSt12__shared_ptrIN12lldb_private19FormattersContainerINS0_17SyntheticChildrenEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %.loopexit

bb.ac:                                            ; preds = %bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !71
  %i.ci = add nsw i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cf, align 4, !tbaa !71
  br label %_ZNSt10shared_ptrIN12lldb_private19FormattersContainerINS0_17SyntheticChildrenEEEEC2ERKS4_.exit

bb.ae:                                            ; preds = %bb.ac
  %i.cj = atomicrmw volatile add ptr %i.cf, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12lldb_private19FormattersContainerINS0_17SyntheticChildrenEEEEC2ERKS4_.exit

_ZNSt10shared_ptrIN12lldb_private19FormattersContainerINS0_17SyntheticChildrenEEEEC2ERKS4_.exit: ; preds = %bb.a, %bb.ad, %bb.ae
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.cl = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ck) #18 ; 2 uses
  %.not.i.i.i15 = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i.i15, label %_ZN12lldb_private19FormattersContainerINS_17SyntheticChildrenEE8GetCountEv.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt10shared_ptrIN12lldb_private19FormattersContainerINS0_17SyntheticChildrenEEEEC2ERKS4_.exit.2, %_ZNSt10shared_ptrIN12lldb_private19FormattersContainerINS0_17SyntheticChildrenEEEEC2ERKS4_.exit.1, %_ZNSt10shared_ptrIN12lldb_private19FormattersContainerINS0_17SyntheticChildrenEEEEC2ERKS4_.exit
  %.lcssa27 = phi i32 [ %i.cl, %_ZNSt10shared_ptrIN12lldb_private19FormattersContainerINS0_17SyntheticChildrenEEEEC2ERKS4_.exit ], [ %i.m, %_ZNSt10shared_ptrIN12lldb_private19FormattersContainerINS0_17SyntheticChildrenEEEEC2ERKS4_.exit.1 ], [ %i.be, %_ZNSt10shared_ptrIN12lldb_private19FormattersContainerINS0_17SyntheticChildrenEEEEC2ERKS4_.exit.2 ]
  tail call void @_ZSt20__throw_system_errori(i32 noundef %.lcssa27) #19
  unreachable

_ZN12lldb_private19FormattersContainerINS_17SyntheticChildrenEE8GetCountEv.exit: ; preds = %_ZNSt10shared_ptrIN12lldb_private19FormattersContainerINS0_17SyntheticChildrenEEEEC2ERKS4_.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !135
  %i.co = load ptr, ptr %i.a, align 8, !tbaa !136
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = sdiv exact i64 %i.cr, 80
  %i.ct = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ck) #18 ; 0 uses
  %i.cu = and i64 %i.cs, 4294967295
  %.not14 = icmp ult i64 %2, %i.cu                ; 2 uses
  br i1 %.not14, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN12lldb_private19FormattersContainerINS_17SyntheticChildrenEE8GetCountEv.exit
  tail call void @_ZN12lldb_private19FormattersContainerINS_17SyntheticChildrenEE27GetTypeNameSpecifierAtIndexEm(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.49") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 noundef %2)
  br label %bb.aj

bb.ah:                                            ; preds = %_ZN12lldb_private19FormattersContainerINS_17SyntheticChildrenEE8GetCountEv.exit
  %i.cv = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ck) #18 ; 2 uses
  %.not.i.i.i16 = icmp eq i32 %i.cv, 0
  br i1 %.not.i.i.i16, label %_ZN12lldb_private19FormattersContainerINS_17SyntheticChildrenEE8GetCountEv.exit17, label %bb.ai

bb.ai:                                            ; preds = %bb.s, %bb.f, %bb.ah
  %.lcssa = phi i32 [ %i.cv, %bb.ah ], [ %i.w, %bb.f ], [ %i.bo, %bb.s ]
  tail call void @_ZSt20__throw_system_errori(i32 noundef %.lcssa) #19
  unreachable

_ZN12lldb_private19FormattersContainerINS_17SyntheticChildrenEE8GetCountEv.exit17: ; preds = %bb.ah
  %i.cw = load ptr, ptr %i.cm, align 8, !tbaa !135
  %i.cx = load ptr, ptr %i.a, align 8, !tbaa !136
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = sdiv exact i64 %i.da, 80
  %i.dc = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ck) #18 ; 0 uses
  %i.dd = and i64 %i.db, 4294967295
  %i.de = sub i64 %2, %i.dd
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN12lldb_private19FormattersContainerINS_17SyntheticChildrenEE8GetCountEv.exit17, %bb.ag
  %.113 = phi i64 [ %2, %bb.ag ], [ %i.de, %_ZN12lldb_private19FormattersContainerINS_17SyntheticChildrenEE8GetCountEv.exit17 ] ; 4 uses
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN12lldb_private19FormattersContainerINS0_17SyntheticChildrenEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.dg = load atomic i64, ptr %i.df acquire, align 8 ; 2 uses
  %i.dh = icmp eq i64 %i.dg, 4294967297
  %i.di = trunc i64 %i.dg to i32                  ; 2 uses
  br i1 %i.dh, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.df, align 8, !tbaa !55
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.dj, align 4, !tbaa !56
  %i.dk = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8
  tail call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18, !inline_history !6
  %i.dn = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load ptr, ptr %i.do, align 8
  tail call void %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18, !inline_history !6
  br label %_ZNSt12__shared_ptrIN12lldb_private19FormattersContainerINS0_17SyntheticChildrenEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.am:                                            ; preds = %bb.ak
  %i.dq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i18 = icmp eq i8 %i.dq, 0
  br i1 %.not.i.i.i18, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dr = add nsw i32 %i.di, -1
  store i32 %i.dr, ptr %i.df, align 8, !tbaa !71
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.ds = atomicrmw volatile add ptr %i.df, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i = phi i32 [ %i.di, %bb.an ], [ %i.ds, %bb.ao ]
  %i.dt = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dt, label %bb.ap, label %_ZNSt12__shared_ptrIN12lldb_private19FormattersContainerINS0_17SyntheticChildrenEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18
  br label %_ZNSt12__shared_ptrIN12lldb_private19FormattersContainerINS0_17SyntheticChildrenEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private19FormattersContainerINS0_17SyntheticChildrenEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.aj, %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ap
  br i1 %.not14, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %_ZNSt12__shared_ptrIN12lldb_private19FormattersContainerINS0_17SyntheticChildrenEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIN12lldb_private19FormattersContainerINS0_17SyntheticChildrenEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1, %_ZNSt12__shared_ptrIN12lldb_private19FormattersContainerINS0_17SyntheticChildrenEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2, %bb.ab
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private16TypeCategoryImpl6EnableEbj(ptr noundef nonnull align 8 dereferenceable(284) %0, i1 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #18 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #19
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %bb.a
  %i.c = zext i1 %1 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 %i.c, ptr %i.d, align 8, !tbaa !46
  br i1 %1, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 %2, ptr %i.e, align 8, !tbaa !276
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47   ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #18 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private16TypeCategoryImpl14GetDescriptionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(284) %1) local_unnamed_addr #0 align 2 {
.lr.ph.preheader:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.lldb_private::StreamString", align 8 ; 8 uses
  %3 = alloca %"class.lldb_private::StreamString", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN12lldb_private12StreamStringC1Eb(ptr noundef nonnull align 8 dereferenceable(120) %2, i1 noundef zeroext false) #18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !163
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.e = load i8, ptr %i.d, align 8, !tbaa !46, !range !101, !noundef !102
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = select i1 %i.f, ptr @.str.1, ptr @.str.2
  %i.h = call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull @.str, ptr noundef %i.c, ptr noundef nonnull %i.g) #18 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZN12lldb_private12StreamStringC1Eb(ptr noundef nonnull align 8 dereferenceable(120) %3, i1 noundef zeroext false) #18
  %i.i = call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull @.str.3) #18 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 5 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !97   ; 2 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !97
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN12lldb_private16TypeCategoryImpl18GetLanguageAtIndexEm.exit.thread.peel, label %_ZN12lldb_private16TypeCategoryImpl18GetLanguageAtIndexEm.exit.peel

_ZN12lldb_private16TypeCategoryImpl18GetLanguageAtIndexEm.exit.peel: ; preds = %.lr.ph.preheader
  %i.o = load i32, ptr %i.l, align 4, !tbaa !99   ; 2 uses
  %.not.peel = icmp ne i32 %i.o, 0
  br label %_ZN12lldb_private16TypeCategoryImpl18GetLanguageAtIndexEm.exit.thread.peel

_ZN12lldb_private16TypeCategoryImpl18GetLanguageAtIndexEm.exit.thread.peel: ; preds = %_ZN12lldb_private16TypeCategoryImpl18GetLanguageAtIndexEm.exit.peel, %.lr.ph.preheader
  %.0.i813.peel = phi i32 [ %i.o, %_ZN12lldb_private16TypeCategoryImpl18GetLanguageAtIndexEm.exit.peel ], [ 0, %.lr.ph.preheader ]
  %i.p = phi i1 [ %.not.peel, %_ZN12lldb_private16TypeCategoryImpl18GetLanguageAtIndexEm.exit.peel ], [ false, %.lr.ph.preheader ] ; 2 uses
  %i.q = call noundef ptr @_ZN12lldb_private8Language22GetNameForLanguageTypeEN4lldb12LanguageTypeE(i32 noundef %.0.i813.peel) #18
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !97
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = icmp ugt i64 %i.v, 4
  %i.x = select i1 %i.w, ptr @.str.5, ptr @.str.6
  %i.y = call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull @.str.4, ptr noundef %i.q, ptr noundef nonnull %i.x) #18 ; 0 uses
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !97   ; 2 uses
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !97
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = icmp ult i64 %i.ad, 5
  br i1 %i.ae, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN12lldb_private16TypeCategoryImpl18GetLanguageAtIndexEm.exit.thread.peel
  %.lcssa = phi i1 [ %i.p, %_ZN12lldb_private16TypeCategoryImpl18GetLanguageAtIndexEm.exit.thread.peel ], [ %spec.select15, %.lr.ph ]
  br i1 %.lcssa, label %bb.a, label %.critedge

.lr.ph:                                           ; preds = %_ZN12lldb_private16TypeCategoryImpl18GetLanguageAtIndexEm.exit.thread.peel, %.lr.ph
  %i.af = phi ptr [ %i.av, %.lr.ph ], [ %i.z, %_ZN12lldb_private16TypeCategoryImpl18GetLanguageAtIndexEm.exit.thread.peel ]
  %.018 = phi i1 [ %spec.select15, %.lr.ph ], [ %i.p, %_ZN12lldb_private16TypeCategoryImpl18GetLanguageAtIndexEm.exit.thread.peel ]
  %.0717 = phi i64 [ %i.aj, %.lr.ph ], [ 1, %_ZN12lldb_private16TypeCategoryImpl18GetLanguageAtIndexEm.exit.thread.peel ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.0717
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !99 ; 2 uses
  %.not = icmp ne i32 %i.ah, 0
  %spec.select15 = select i1 %.not, i1 true, i1 %.018 ; 2 uses
  %i.ai = call noundef ptr @_ZN12lldb_private8Language22GetNameForLanguageTypeEN4lldb12LanguageTypeE(i32 noundef %i.ah) #18
  %i.aj = add nuw i64 %.0717, 1                   ; 3 uses
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !97  ; 2 uses
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !97  ; 2 uses
  %i.am = icmp ne ptr %i.ak, %i.al
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2
  %i.ar = icmp ugt i64 %i.aq, %i.aj
  %i.as = select i1 %i.am, i1 %i.ar, i1 false
  %i.at = select i1 %i.as, ptr @.str.5, ptr @.str.6
  %i.au = call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull @.str.4, ptr noundef %i.ai, ptr noundef nonnull %i.at) #18 ; 0 uses
  %i.av = load ptr, ptr %i.j, align 8, !tbaa !97  ; 3 uses
  %i.aw = load ptr, ptr %i.k, align 8, !tbaa !97  ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 2
  %i.bc = icmp ule i64 %i.bb, %i.aj
  %.not22 = select i1 %i.ax, i1 true, i1 %i.bc
  br i1 %.not22, label %._crit_edge, label %.lr.ph, !llvm.loop !277

bb.a:                                             ; preds = %._crit_edge
  %i.bd = call { ptr, i64 } @_ZNK12lldb_private12StreamString9GetStringEv(ptr noundef nonnull align 8 dereferenceable(120) %3) #18 ; 2 uses
  %i.be = extractvalue { ptr, i64 } %i.bd, 0
  %i.bf = extractvalue { ptr, i64 } %i.bd, 1
  %i.bg = call noundef i64 @_ZN12lldb_private6Stream10PutCStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr %i.be, i64 %i.bf) #18 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %._crit_edge
  %i.bh = call noundef i64 @_ZN12lldb_private6Stream7PutCharEc(ptr noundef nonnull align 8 dereferenceable(88) %2, i8 noundef signext 41) #18 ; 0 uses
  %i.bi = call { ptr, i64 } @_ZNK12lldb_private12StreamString9GetStringEv(ptr noundef nonnull align 8 dereferenceable(120) %2) #18 ; 2 uses
  %i.bj = extractvalue { ptr, i64 } %i.bi, 0      ; 3 uses
  %i.bk = extractvalue { ptr, i64 } %i.bi, 1      ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bl, ptr %0, align 8, !tbaa !118
  %i.bm = icmp eq ptr %i.bj, null
  %i.bn = icmp ne i64 %i.bk, 0
  %or.cond.i.i.i = and i1 %i.bm, %i.bn
  br i1 %or.cond.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.critedge
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.7) #19
  unreachable

bb.c:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !164
  %i.bo = icmp ugt i64 %i.bk, 15
  br i1 %i.bo, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.bp = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #18 ; 2 uses
  store ptr %i.bp, ptr %0, align 8, !tbaa !128
  %i.bq = load i64, ptr %i.a, align 8, !tbaa !164
  store i64 %i.bq, ptr %i.bl, align 8, !tbaa !70
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %bb.c
  %i.br = phi ptr [ %i.bp, %bb.d ], [ %i.bl, %bb.c ] ; 2 uses
  switch i64 %i.bk, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bs = load i8, ptr %i.bj, align 1, !tbaa !70
  store i8 %i.bs, ptr %i.br, align 1, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr align 1 %i.bj, i64 %i.bk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.e, %bb.f
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !164 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !121
  %i.bv = load ptr, ptr %0, align 8, !tbaa !128
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bt
  store i8 0, ptr %i.bw, align 1, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @_ZN12lldb_private12StreamStringD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN12lldb_private12StreamStringD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

declare void @_ZN12lldb_private12StreamStringC1Eb(ptr noundef nonnull align 8 dereferenceable(120), i1 noundef zeroext) unnamed_addr #5

declare noundef i64 @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ...) local_unnamed_addr #5

declare noundef ptr @_ZN12lldb_private8Language22GetNameForLanguageTypeEN4lldb12LanguageTypeE(i32 noundef) local_unnamed_addr #5

declare noundef i64 @_ZN12lldb_private6Stream10PutCStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88), ptr, i64) local_unnamed_addr #5

declare { ptr, i64 } @_ZNK12lldb_private12StreamString9GetStringEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #5

declare noundef i64 @_ZN12lldb_private6Stream7PutCharEc(ptr noundef nonnull align 8 dereferenceable(88), i8 noundef signext) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN12lldb_private12StreamStringD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120)) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !inline_history !279
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !71   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !71
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !inline_history !279
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #8

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private19FormattersContainerINS0_14TypeFormatImplEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private19FormattersContainerINS0_14TypeFormatImplEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt6vectorISt4pairIN12lldb_private11TypeMatcherESt10shared_ptrINS1_14TypeFormatImplEEESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(72) %i.a) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private19FormattersContainerINS0_14TypeFormatImplEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN12lldb_private19FormattersContainerINS1_14TypeFormatImplEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
