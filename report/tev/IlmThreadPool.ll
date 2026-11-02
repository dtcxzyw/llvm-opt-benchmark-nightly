Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/IlmThreadPool?download=true
inline.NumInlined: 698
inline.NumDeleted: 450
begin_hunk_0_@_ZNSt3__120__shared_ptr_emplaceIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataENS_9allocatorIS3_EEE16__on_zero_sharedEv:bb.a
.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.d, %bb.b ]
  %i.e = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  tail call void @_ZNSt3__16threadD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #25
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.b, %i.e
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.pre1.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !47
  br label %_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.i.i.i.i

_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.i.i.i.i: ; preds = %_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i, %bb.b
  %i.f = phi ptr [ %.pre1.i.i.i.i.i.i, %_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.k) #28
  br label %_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED2B8ne180100Ev.exit.i.i.i.i

_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED2B8ne180100Ev.exit.i.i.i.i: ; preds = %_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i.i.i.i.i, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !66   ; 4 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt3__120__shared_ptr_emplaceIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataENS_9allocatorIS3_EEE21__on_zero_shared_implB8ne180100IS5_TnNS_9enable_ifIXntsr7is_sameINT_10value_typeENS_19__for_overwrite_tagEEE5valueEiE4typeELi0EEEvv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED2B8ne180100Ev.exit.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.m, ptr %i.n, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !63
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.s) #28
  br label %_ZNSt3__120__shared_ptr_emplaceIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataENS_9allocatorIS3_EEE21__on_zero_shared_implB8ne180100IS5_TnNS_9enable_ifIXntsr7is_sameINT_10value_typeENS_19__for_overwrite_tagEEE5valueEiE4typeELi0EEEvv.exit

_ZNSt3__120__shared_ptr_emplaceIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataENS_9allocatorIS3_EEE21__on_zero_shared_implB8ne180100IS5_TnNS_9enable_ifIXntsr7is_sameINT_10value_typeENS_19__for_overwrite_tagEEE5valueEiE4typeELi0EEEvv.exit: ; preds = %_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED2B8ne180100Ev.exit.i.i.i.i, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN13IlmThread_3_49SemaphoreD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(173) %i.t) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt3__120__shared_ptr_emplaceIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataENS_9allocatorIS3_EEE21__on_zero_shared_weakEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 200) #28
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nounwind
declare void @_ZNSt3__16threadD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal void @_ZN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProvider10threadLoopENSt3__110shared_ptrINS0_21DefaultThreadPoolDataEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.val7 = load ptr, ptr %1, align 8, !tbaa !38
  tail call void @_ZN13IlmThread_3_49Semaphore4waitEv(ptr noundef nonnull align 8 dereferenceable(40) %.val7)
  %.val6 = load ptr, ptr %1, align 8, !tbaa !38
  %i.a = getelementptr inbounds nuw i8, ptr %.val6, i64 40 ; 3 uses
  tail call void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %.val5 = load ptr, ptr %1, align 8, !tbaa !38   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val5, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %.val5, i64 88 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62   ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %_ZN13IlmThread_3_412_GLOBAL__N_117handleProcessTaskEPNS_4TaskE.exit, label %bb.b

bb.b:                                             ; preds = %.backedge
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65   ; 6 uses
  store ptr %i.g, ptr %i.d, align 8, !tbaa !62
  tail call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %.backedge.backedge, label %.noexc8

.backedge.backedge:                               ; preds = %bb.b, %.noexc8, %_ZN13IlmThread_3_49TaskGroup13finishOneTaskEv.exit.i, %_ZN13IlmThread_3_412_GLOBAL__N_117handleProcessTaskEPNS_4TaskE.exit
  br label %.backedge

.noexc8:                                          ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29   ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.h), !inline_history !4
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #25, !inline_history !4
  %.not7.i = icmp eq ptr %i.j, null
  br i1 %.not7.i, label %.backedge.backedge, label %bb.c

bb.c:                                             ; preds = %.noexc8
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !32   ; 3 uses
  %i.r = atomicrmw add ptr %i.q, i32 -1 seq_cst, align 4
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.d, label %_ZN13IlmThread_3_49TaskGroup13finishOneTaskEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  tail call void @_ZN13IlmThread_3_49Semaphore4postEv(ptr noundef nonnull align 8 dereferenceable(40) %i.t)
  br label %_ZN13IlmThread_3_49TaskGroup13finishOneTaskEv.exit.i

_ZN13IlmThread_3_49TaskGroup13finishOneTaskEv.exit.i: ; preds = %bb.d, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.v = atomicrmw add ptr %i.u, i32 -1 seq_cst, align 4 ; 0 uses
  br label %.backedge.backedge

_ZN13IlmThread_3_412_GLOBAL__N_117handleProcessTaskEPNS_4TaskE.exit: ; preds = %.backedge
  %i.w = getelementptr inbounds nuw i8, ptr %.val5, i64 172
  %i.x = load atomic i8, ptr %i.w monotonic, align 4, !range !138, !noundef !68
  %i.y = trunc nuw i8 %i.x to i1
  tail call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25
  br i1 %i.y, label %bb.e, label %.backedge.backedge

bb.e:                                             ; preds = %_ZN13IlmThread_3_412_GLOBAL__N_117handleProcessTaskEPNS_4TaskE.exit
  ret void
}

declare void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

declare void @_ZNSt3__16thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 5 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not = icmp ult i64 %i.h, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not10.i = icmp eq i64 %1, 0
  br i1 %.not10.i, label %_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE18__construct_at_endEm.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %.idx.i = shl i64 %1, 3                         ; 2 uses
  %i.i = getelementptr i8, ptr %i.d, i64 %.idx.i
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %.idx.i, i1 false), !tbaa !56
  br label %_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE18__construct_at_endEm.exit

_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE18__construct_at_endEm.exit: ; preds = %bb.b, %.lr.ph.preheader.i
  %.sroa.6.0.lcssa.i = phi ptr [ %i.d, %bb.b ], [ %i.i, %.lr.ph.preheader.i ]
  store ptr %.sroa.6.0.lcssa.i, ptr %i.c, align 8, !tbaa !46
  br label %_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.f, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 3
  %i.n = add i64 %i.m, %1                         ; 2 uses
  %i.o = icmp ugt i64 %i.n, 2305843009213693951
  br i1 %i.o, label %bb.d, label %_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE11__recommendB8ne180100Em.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #29
  unreachable

_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE11__recommendB8ne180100Em.exit: ; preds = %bb.c
  %i.p = sub i64 %i.e, %i.k                       ; 2 uses
  %.not.i = icmp ult i64 %i.p, 9223372036854775800
  %i.q = ashr exact i64 %i.p, 2
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %i.n)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 2305843009213693951 ; 4 uses
  %i.r = icmp eq i64 %.0.i, 0
  br i1 %i.r, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE11__recommendB8ne180100Em.exit
  %i.s = icmp ugt i64 %.0.i, 2305843009213693951
  br i1 %i.s, label %bb.f, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_6threadEEEEEDaRT_m.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #29
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_6threadEEEEEDaRT_m.exit.i: ; preds = %bb.e
  %i.t = shl nuw i64 %.0.i, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #26
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !46
  %.pre12 = load ptr, ptr %0, align 8, !tbaa !47
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_6threadEEEEEDaRT_m.exit.i, %_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE11__recommendB8ne180100Em.exit
  %i.v = phi ptr [ %.pre12, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_6threadEEEEEDaRT_m.exit.i ], [ %i.j, %_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE11__recommendB8ne180100Em.exit ] ; 6 uses
  %i.w = phi ptr [ %.pre, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_6threadEEEEEDaRT_m.exit.i ], [ %i.d, %_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE11__recommendB8ne180100Em.exit ] ; 3 uses
  %storemerge.i = phi ptr [ %i.u, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_6threadEEEEEDaRT_m.exit.i ], [ null, %_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE11__recommendB8ne180100Em.exit ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.l ; 4 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %storemerge.i, i64 %.0.i ; 2 uses
  %.idx.i8 = shl i64 %1, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 %.idx.i8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.x, i8 0, i64 %.idx.i8, i1 false), !tbaa !56
  %.not27.i.i = icmp eq ptr %i.w, %i.v
  br i1 %.not27.i.i, label %_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE5clearB8ne180100Ev.exit.i.critedge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.sroa.120.028.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %i.w, %bb.g ]
  %i.aa = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %i.x, %bb.g ]
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8 ; 3 uses
  %i.ac = getelementptr inbounds i8, ptr %.sroa.120.028.i.i, i64 -8 ; 4 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !56
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !56
  store i64 0, ptr %i.ac, align 8, !tbaa !56
  %.not.i.i = icmp eq ptr %i.ac, %i.v
  br i1 %.not.i.i, label %bb.h, label %.lr.ph.i.i, !llvm.loop !139

bb.h:                                             ; preds = %.lr.ph.i.i
  store ptr %i.ab, ptr %0, align 8, !tbaa !67
  store ptr %i.z, ptr %i.c, align 8, !tbaa !67
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !67
  store ptr %i.y, ptr %i.a, align 8, !tbaa !67
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %.lr.ph.i.i.i.i
  %i.af = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %i.w, %bb.h ]
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8 ; 3 uses
  tail call void @_ZNSt3__16threadD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #25
  %.not.i.i.i.i = icmp eq ptr %i.v, %i.ag
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE5clearB8ne180100Ev.exit.i.critedge: ; preds = %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !67
  store ptr %i.z, ptr %i.c, align 8, !tbaa !67
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !67
  store ptr %i.y, ptr %i.a, align 8, !tbaa !67
  br label %_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE5clearB8ne180100Ev.exit.i

_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE5clearB8ne180100Ev.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE5clearB8ne180100Ev.exit.i.critedge
  %.sroa.16.0 = phi ptr [ %i.ah, %_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE5clearB8ne180100Ev.exit.i.critedge ], [ %i.ae, %.lr.ph.i.i.i.i ]
  %.not.i9 = icmp eq ptr %i.v, null
  br i1 %.not.i9, label %_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE5clearB8ne180100Ev.exit.i
  %i.ai = ptrtoint ptr %.sroa.16.0 to i64
  %i.aj = ptrtoint ptr %i.v to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.ak) #28
  br label %_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED2Ev.exit

_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED2Ev.exit: ; preds = %bb.i, %_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE5clearB8ne180100Ev.exit.i, %_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE18__construct_at_endEm.exit
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #21 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.1) #29
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef %0) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #25
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12length_error, i64 16), ptr %0, align 8, !tbaa !24
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

declare void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZNSt3__120__throw_system_errorEiPKc(i32 noundef, ptr noundef) local_unnamed_addr #22

; Function Attrs: nounwind
declare void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare void @_ZNSt3__115__thread_structC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal noalias noundef ptr @_ZNSt3__114__thread_proxyB8ne180100INS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvNS_10shared_ptrINS8_21DefaultThreadPoolDataEEEEPS9_SC_EEEEEPvSH_(ptr noundef %0) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__1::shared_ptr.27", align 16 ; 5 uses
  %2 = alloca %"class.std::__1::unique_ptr.65", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %0, ptr %2, align 8, !tbaa !53
  %i.a = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__119__thread_local_dataEv()
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !49
  store ptr null, ptr %0, align 8, !tbaa !49
  %i.c = load i32, ptr %i.a, align 4, !tbaa !143
  %i.d = tail call noundef i32 @pthread_setspecific(i32 noundef %i.c, ptr noundef %i.b) #25 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.val.i = load i64, ptr %i.e, align 8, !tbaa !144 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load i64, ptr %i.h, align 8, !tbaa !144
  %.val4.i = load ptr, ptr %i.f, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.i = getelementptr inbounds i8, ptr %.val4.i, i64 %.val3.i ; 2 uses
  %i.j = and i64 %.val.i, 1
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !24
  %i.l = getelementptr i8, ptr %i.k, i64 %.val.i
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load ptr, ptr %i.m, align 8, !nosanitize !68
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = inttoptr i64 %.val.i to ptr
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi ptr [ %i.n, %bb.c ], [ %i.o, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load <2 x ptr>, ptr %i.g, align 8, !tbaa !40
  store <2 x ptr> %i.s, ptr %1, align 16, !tbaa !40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr nofree noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %.val6.i.i = load ptr, ptr %i.q, align 8, !tbaa !39 ; 5 uses
  %.not.i.i.i = icmp eq ptr %.val6.i.i, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 8
  %i.u = atomicrmw add ptr %i.t, i64 -1 acq_rel, align 8
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %.val6.i.i, align 8, !tbaa !24
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(24) %.val6.i.i) #25, !inline_history !140
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %.val6.i.i) #25
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  %.val.i.i = load ptr, ptr %i.q, align 8, !tbaa !39
  call fastcc void @_ZNSt3__110shared_ptrIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataEED2B8ne180100Ev(ptr %.val.i.i) #25
  br label %.body

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %.val.i.i.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !39 ; 5 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__112__tuple_leafILm3ENS_10shared_ptrIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataEEELb0EED2Ev.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 8
  %i.ab = atomicrmw add ptr %i.aa, i64 -1 acq_rel, align 8
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.l, label %_ZNSt3__112__tuple_leafILm3ENS_10shared_ptrIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataEEELb0EED2Ev.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.ad = load ptr, ptr %.val.i.i.i.i.i, align 8, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i) #25, !inline_history !141
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i) #25
  br label %_ZNSt3__112__tuple_leafILm3ENS_10shared_ptrIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataEEELb0EED2Ev.exit.i.i.i.i.i

_ZNSt3__112__tuple_leafILm3ENS_10shared_ptrIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataEEELb0EED2Ev.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.ag = load ptr, ptr %0, align 8, !tbaa !49    ; 3 uses
  store ptr null, ptr %0, align 8, !tbaa !49
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvNS_10shared_ptrINS7_21DefaultThreadPoolDataEEEEPS8_SB_EEENS3_ISF_EEED2B8ne180100Ev.exit, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclB8ne180100EPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt3__114default_deleteINS_15__thread_structEEclB8ne180100EPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt3__112__tuple_leafILm3ENS_10shared_ptrIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataEEELb0EED2Ev.exit.i.i.i.i.i
  call void @_ZNSt3__115__thread_structD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 8) #28
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvNS_10shared_ptrINS7_21DefaultThreadPoolDataEEEEPS8_SB_EEENS3_ISF_EEED2B8ne180100Ev.exit

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvNS_10shared_ptrINS7_21DefaultThreadPoolDataEEEEPS8_SB_EEENS3_ISF_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__112__tuple_leafILm3ENS_10shared_ptrIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataEEELb0EED2Ev.exit.i.i.i.i.i, %_ZNKSt3__114default_deleteINS_15__thread_structEEclB8ne180100EPS1_.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret ptr null

bb.m:                                             ; preds = %bb.a
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %bb.m ], [ %i.z, %bb.i ]
  call fastcc void @_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvNS_10shared_ptrINS7_21DefaultThreadPoolDataEEEEPS8_SB_EEENS3_ISF_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvNS_10shared_ptrINS7_21DefaultThreadPoolDataEEEEPS8_SB_EEENS3_ISF_EEED2B8ne180100Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !147    ; 5 uses
  store ptr null, ptr %0, align 8, !tbaa !147
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvNS_10shared_ptrINS7_21DefaultThreadPoolDataEEEEPS8_SB_EEENS3_ISF_EEE5resetB8ne180100EPSF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.val.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !39 ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__112__tuple_leafILm3ENS_10shared_ptrIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataEEELb0EED2Ev.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %_ZNSt3__112__tuple_leafILm3ENS_10shared_ptrIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataEEELb0EED2Ev.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %.val.i.i.i.i, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i) #25, !inline_history !146
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i) #25
  br label %_ZNSt3__112__tuple_leafILm3ENS_10shared_ptrIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataEEELb0EED2Ev.exit.i.i.i.i

_ZNSt3__112__tuple_leafILm3ENS_10shared_ptrIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataEEELb0EED2Ev.exit.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !49   ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !49
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvNS_10shared_ptrINS7_21DefaultThreadPoolDataEEEEPS8_SB_EEEEclB8ne180100EPSF_.exit.i, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclB8ne180100EPS1_.exit.i.i.i.i.i.i.i

_ZNKSt3__114default_deleteINS_15__thread_structEEclB8ne180100EPS1_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt3__112__tuple_leafILm3ENS_10shared_ptrIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataEEELb0EED2Ev.exit.i.i.i.i
  tail call void @_ZNSt3__115__thread_structD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.i) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 8) #28
  br label %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvNS_10shared_ptrINS7_21DefaultThreadPoolDataEEEEPS8_SB_EEEEclB8ne180100EPSF_.exit.i

_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvNS_10shared_ptrINS7_21DefaultThreadPoolDataEEEEPS8_SB_EEEEclB8ne180100EPSF_.exit.i: ; preds = %_ZNKSt3__114default_deleteINS_15__thread_structEEclB8ne180100EPS1_.exit.i.i.i.i.i.i.i, %_ZNSt3__112__tuple_leafILm3ENS_10shared_ptrIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataEEELb0EED2Ev.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #28
  br label %_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvNS_10shared_ptrINS7_21DefaultThreadPoolDataEEEEPS8_SB_EEENS3_ISF_EEE5resetB8ne180100EPSF_.exit

_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvNS_10shared_ptrINS7_21DefaultThreadPoolDataEEEEPS8_SB_EEENS3_ISF_EEE5resetB8ne180100EPSF_.exit: ; preds = %bb.a, %_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvNS_10shared_ptrINS7_21DefaultThreadPoolDataEEEEPS8_SB_EEEEclB8ne180100EPSF_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !49     ; 3 uses
  store ptr null, ptr %0, align 8, !tbaa !49
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetB8ne180100EPS1_.exit, label %_ZNKSt3__114default_deleteINS_15__thread_structEEclB8ne180100EPS1_.exit.i

_ZNKSt3__114default_deleteINS_15__thread_structEEclB8ne180100EPS1_.exit.i: ; preds = %bb.a
  tail call void @_ZNSt3__115__thread_structD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #28
  br label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetB8ne180100EPS1_.exit

_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetB8ne180100EPS1_.exit: ; preds = %bb.a, %_ZNKSt3__114default_deleteINS_15__thread_structEEclB8ne180100EPS1_.exit.i
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__119__thread_local_dataEv() local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_setspecific(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt3__115__thread_structD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIPN13IlmThread_3_44TaskENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #21 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.1) #29
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { nofree nounwind }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nounwind }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { noreturn nounwind }
attributes #28 = { builtin nounwind }
attributes #29 = { noreturn }

!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !17}
!1 = distinct !{null, null, null, null}
!2 = distinct !{ptr @_ZNSt3__110shared_ptrIN13IlmThread_3_418ThreadPoolProviderEED2B8ne180100Ev, null, null}
!3 = distinct !{null, null}
!4 = distinct !{null}
!5 = distinct !{!5, !17}
!6 = distinct !{!6, !17}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"_ZTSNSt3__122__cxx_atomic_base_implIiEE", !11, i64 0}
!16 = !{!15, !11, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"any pointer", !11, i64 0}
!19 = !{!"p1 _ZTSN13IlmThread_3_418ThreadPoolProviderE", !18, i64 0}
!20 = !{!"p1 _ZTSNSt3__119__shared_weak_countE", !18, i64 0}
!21 = !{!"_ZTSNSt3__110shared_ptrIN13IlmThread_3_418ThreadPoolProviderEEE", !19, i64 0, !20, i64 8}
!22 = !{!21, !19, i64 0}
!23 = !{!"vtable pointer", !10, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!21, !20, i64 8}
!26 = !{!19, !19, i64 0}
!27 = !{!"p1 _ZTSN13IlmThread_3_49TaskGroupE", !18, i64 0}
!28 = !{!"_ZTSN13IlmThread_3_44TaskE", !27, i64 8}
!29 = !{!28, !27, i64 8}
!30 = !{!"p1 _ZTSN13IlmThread_3_49TaskGroup4DataE", !18, i64 0}
!31 = !{!"_ZTSN13IlmThread_3_49TaskGroupE", !30, i64 0}
!32 = !{!31, !30, i64 0}
!33 = !{!"p1 _ZTSN13IlmThread_3_410ThreadPool4DataE", !18, i64 0}
!34 = !{!"_ZTSN13IlmThread_3_410ThreadPoolE", !33, i64 8}
!35 = !{!34, !33, i64 8}
!36 = !{!"p1 _ZTSN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataE", !18, i64 0}
!37 = !{!"_ZTSNSt3__110shared_ptrIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataEEE", !36, i64 0, !20, i64 8}
!38 = !{!37, !36, i64 0}
!39 = !{!37, !20, i64 8}
!40 = !{!18, !18, i64 0}
!41 = !{!"branch_weights", i32 1, i32 1048575}
!42 = !{!"p1 _ZTSNSt3__16threadE", !18, i64 0}
!43 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EEE", !42, i64 0}
!44 = !{!"_ZTSNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEEE", !43, i64 0}
!45 = !{!"_ZTSNSt3__16vectorINS_6threadENS_9allocatorIS1_EEEE", !42, i64 0, !42, i64 8, !44, i64 16}
!46 = !{!45, !42, i64 8}
!47 = !{!45, !42, i64 0}
!48 = !{!"p1 _ZTSNSt3__115__thread_structE", !18, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!"p1 _ZTSN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderE", !18, i64 0}
!51 = !{!"p1 _ZTSNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvNS_10shared_ptrINS7_21DefaultThreadPoolDataEEEEPS8_SB_EEE", !18, i64 0}
!52 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvNS_10shared_ptrINS8_21DefaultThreadPoolDataEEEEPS9_SC_EEELi0ELb0EEE", !51, i64 0}
!53 = !{!52, !51, i64 0}
!54 = !{!"long", !11, i64 0}
!55 = !{!"_ZTSNSt3__16threadE", !54, i64 0}
!56 = !{!55, !54, i64 0}
!57 = !{!"any p2 pointer", !18, i64 0}
!58 = !{!"p2 _ZTSN13IlmThread_3_44TaskE", !57, i64 0}
!59 = !{!"_ZTSNSt3__122__compressed_pair_elemIPPN13IlmThread_3_44TaskELi0ELb0EEE", !58, i64 0}
!60 = !{!"_ZTSNSt3__117__compressed_pairIPPN13IlmThread_3_44TaskENS_9allocatorIS3_EEEE", !59, i64 0}
!61 = !{!"_ZTSNSt3__16vectorIPN13IlmThread_3_44TaskENS_9allocatorIS3_EEEE", !58, i64 0, !58, i64 8, !60, i64 16}
!62 = !{!61, !58, i64 8}
!63 = !{!58, !58, i64 0}
!64 = !{!"p1 _ZTSN13IlmThread_3_44TaskE", !18, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!61, !58, i64 0}
!67 = !{!42, !42, i64 0}
!68 = !{}
!69 = distinct !{!69, i1 true, !"_ZNSt3__115atomic_exchangeB8ne180100IN13IlmThread_3_418ThreadPoolProviderEEENS_10shared_ptrIT_EEPS5_S5_"}
!70 = distinct !{!70, !69, !"_ZNSt3__115atomic_exchangeB8ne180100IN13IlmThread_3_418ThreadPoolProviderEEENS_10shared_ptrIT_EEPS5_S5_: argument 0"}
!71 = !{!70}
!72 = !{!20, !20, i64 0}
!73 = distinct !{!73, i1 true, !"_ZNK13IlmThread_3_410ThreadPool4Data11getProviderEv"}
!74 = distinct !{!74, !73, !"_ZNK13IlmThread_3_410ThreadPool4Data11getProviderEv: argument 0"}
!75 = distinct !{!75, i1 true, !"_ZNSt3__111atomic_loadB8ne180100IN13IlmThread_3_418ThreadPoolProviderEEENS_10shared_ptrIT_EEPKS5_"}
!76 = distinct !{!76, !75, !"_ZNSt3__111atomic_loadB8ne180100IN13IlmThread_3_418ThreadPoolProviderEEENS_10shared_ptrIT_EEPKS5_: argument 0"}
!77 = distinct !{!77, i1 true, !"_ZNSt3__111make_sharedB8ne180100IN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEJRiEvEENS_10shared_ptrIT_EEDpOT0_"}
!78 = distinct !{!78, !77, !"_ZNSt3__111make_sharedB8ne180100IN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEJRiEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!79 = distinct !{!79, i1 true, !"_ZNSt3__115allocate_sharedB8ne180100IN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderENS_9allocatorIS3_EEJRiEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!80 = distinct !{!80, !79, !"_ZNSt3__115allocate_sharedB8ne180100IN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderENS_9allocatorIS3_EEJRiEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!81 = distinct !{!81, i1 true, !"_ZNSt3__111make_sharedB8ne180100IN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataEJEvEENS_10shared_ptrIT_EEDpOT0_"}
!82 = distinct !{!82, !81, !"_ZNSt3__111make_sharedB8ne180100IN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataEJEvEENS_10shared_ptrIT_EEDpOT0_: argument 0"}
!83 = distinct !{!83, i1 true, !"_ZNSt3__115allocate_sharedB8ne180100IN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataENS_9allocatorIS3_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_"}
!84 = distinct !{!84, !83, !"_ZNSt3__115allocate_sharedB8ne180100IN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataENS_9allocatorIS3_EEJEvEENS_10shared_ptrIT_EERKT0_DpOT1_: argument 0"}
!85 = distinct !{!85, i1 true, !"_ZNSt3__110shared_ptrIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataEE27__create_with_control_blockB8ne180100IS3_NS_20__shared_ptr_emplaceIS3_NS_9allocatorIS3_EEEEEES4_PT_PT0_"}
!86 = distinct !{!86, !85, !"_ZNSt3__110shared_ptrIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataEE27__create_with_control_blockB8ne180100IS3_NS_20__shared_ptr_emplaceIS3_NS_9allocatorIS3_EEEEEES4_PT_PT0_: argument 0"}
!87 = !{!74}
!88 = !{!76}
!89 = !{!76, !74}
!90 = !{!80, !78}
!91 = !{!82}
!92 = !{!84}
!93 = !{!84, !82, !80, !78}
!94 = !{!86, !84, !82}
!95 = distinct !{ptr @_ZN13IlmThread_3_410ThreadPool4DataD2Ev, ptr @_ZNSt3__110shared_ptrIN13IlmThread_3_418ThreadPoolProviderEED2B8ne180100Ev, null, null}
!96 = distinct !{!96, i1 true, !"_ZNK13IlmThread_3_410ThreadPool4Data11getProviderEv"}
!97 = distinct !{!97, !96, !"_ZNK13IlmThread_3_410ThreadPool4Data11getProviderEv: argument 0"}
!98 = distinct !{!98, i1 true, !"_ZNSt3__111atomic_loadB8ne180100IN13IlmThread_3_418ThreadPoolProviderEEENS_10shared_ptrIT_EEPKS5_"}
!99 = distinct !{!99, !98, !"_ZNSt3__111atomic_loadB8ne180100IN13IlmThread_3_418ThreadPoolProviderEEENS_10shared_ptrIT_EEPKS5_: argument 0"}
!100 = !{!97}
!101 = !{!99}
!102 = !{!99, !97}
!103 = distinct !{!103, i1 true, !"_ZNK13IlmThread_3_410ThreadPool4Data11getProviderEv"}
!104 = distinct !{!104, !103, !"_ZNK13IlmThread_3_410ThreadPool4Data11getProviderEv: argument 0"}
!105 = distinct !{!105, i1 true, !"_ZNSt3__111atomic_loadB8ne180100IN13IlmThread_3_418ThreadPoolProviderEEENS_10shared_ptrIT_EEPKS5_"}
!106 = distinct !{!106, !105, !"_ZNSt3__111atomic_loadB8ne180100IN13IlmThread_3_418ThreadPoolProviderEEENS_10shared_ptrIT_EEPKS5_: argument 0"}
!107 = !{!104}
!108 = !{!106}
!109 = !{!106, !104}
!110 = distinct !{null}
!111 = !{!"p1 omnipotent char", !18, i64 0}
!112 = !{!"_ZTSSt9type_info", !111, i64 8}
!113 = !{!112, !111, i64 8}
!114 = !{ptr @_ZNSt3__120__shared_ptr_emplaceIN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderENS_9allocatorIS3_EEED2Ev}
!115 = distinct !{null, null, null}
!116 = distinct !{ptr @_ZNSt3__110shared_ptrIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataEED2B8ne180100Ev, null, null}
!117 = distinct !{ptr @_ZN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderD2Ev, ptr @_ZNSt3__110shared_ptrIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataEED2B8ne180100Ev, null, null}
!118 = !{ptr @_ZN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderD2Ev}
!119 = distinct !{!119, !17}
!120 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEE", !48, i64 0}
!121 = !{!120, !48, i64 0}
!122 = !{!"_ZTSNSt3__112__tuple_leafILm1EMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvNS_10shared_ptrINS2_21DefaultThreadPoolDataEEEELb0EEE", !11, i64 0}
!123 = !{!122, !11, i64 0}
!124 = !{!"_ZTSNSt3__112__tuple_leafILm2EPN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderELb0EEE", !50, i64 0}
!125 = !{!124, !50, i64 0}
!126 = !{!54, !54, i64 0}
!127 = distinct !{!127, i1 true, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPPN13IlmThread_3_44TaskEEES7_S7_EENS_4pairIT0_T2_EES9_T1_SA_"}
!128 = distinct !{!128, !127, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPPN13IlmThread_3_44TaskEEES7_S7_EENS_4pairIT0_T2_EES9_T1_SA_: argument 0"}
!129 = distinct !{!129, i1 true, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPPN13IlmThread_3_44TaskEEESA_SA_EENS_4pairIT2_T4_EESC_T3_SD_"}
!130 = distinct !{!130, !129, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPPN13IlmThread_3_44TaskEEESA_SA_EENS_4pairIT2_T4_EESC_T3_SD_: argument 0"}
!131 = distinct !{!131, i1 true, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPPN13IlmThread_3_44TaskEEESC_SC_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISE_SG_EESE_SF_SG_"}
!132 = distinct !{!132, !131, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPPN13IlmThread_3_44TaskEEESC_SC_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISE_SG_EESE_SF_SG_: argument 0"}
!133 = distinct !{!133, i1 true, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPPN13IlmThread_3_44TaskEEES9_S9_EENS_4pairIT_T1_EESB_T0_SC_"}
!134 = distinct !{!134, !133, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPPN13IlmThread_3_44TaskEEES9_S9_EENS_4pairIT_T1_EESB_T0_SC_: argument 0"}
!135 = distinct !{!135, !17}
!136 = !{!134, !132, !130, !128}
!137 = !{ptr @_ZNSt3__120__shared_ptr_emplaceIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataENS_9allocatorIS3_EEED2Ev}
!138 = !{i8 0, i8 2}
!139 = distinct !{!139, !17}
!140 = distinct !{null, null, ptr @_ZNSt3__110shared_ptrIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataEED2B8ne180100Ev, null, null}
!141 = distinct !{ptr @_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEMN13IlmThread_3_412_GLOBAL__N_125DefaultThreadPoolProviderEFvNS_10shared_ptrINS7_21DefaultThreadPoolDataEEEEPS8_SB_EEENS3_ISF_EEED2B8ne180100Ev, null, null, null, null, null, ptr @_ZNSt3__110shared_ptrIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataEED2B8ne180100Ev, null, null}
!142 = !{!"_ZTSNSt3__121__thread_specific_ptrINS_15__thread_structEEE", !12, i64 0}
!143 = !{!142, !12, i64 0}
!144 = !{!11, !11, i64 0}
!145 = !{!50, !50, i64 0}
!146 = distinct !{null, null, null, null, null, ptr @_ZNSt3__110shared_ptrIN13IlmThread_3_412_GLOBAL__N_121DefaultThreadPoolDataEED2B8ne180100Ev, null, null}
!147 = !{!51, !51, i64 0}
end_hunk_0
