Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/thread_dispatcher?download=true
inline.NumInlined: 187
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN3tbb6detail2r117thread_dispatcher21try_unregister_clientEPNS1_24thread_dispatcher_clientEmj:bb.a
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !100
  %.not33 = icmp eq i32 %i.ai, 0
  br i1 %.not33, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 220
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !49
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !93
  %i.ap = add i64 %i.ao, -1
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !93
  %i.aq = load ptr, ptr %1, align 8, !tbaa !91    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !92 ; 2 uses
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !91
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !92
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !22 ; 5 uses
  %i.aw = icmp eq ptr %i.av, %1
  %.not.i.i19 = icmp eq ptr %i.av, null
  %or.cond.i = or i1 %i.aw, %.not.i.i19
  br i1 %or.cond.i, label %.lr.ph.preheader.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !44, !nonnull !47, !align !48
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 220
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !49 ; 2 uses
  %.not1415.not.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not1415.not.i.i, label %_ZN3tbb6detail2r117thread_dispatcher13remove_clientERNS1_24thread_dispatcher_clientE.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.k, %bb.j
  %i.bb = phi ptr [ %i.av, %bb.k ], [ null, %bb.j ]
  %.01123.i.i = phi i32 [ %i.ba, %bb.k ], [ 3, %bb.j ]
  %wide.trip.count.i.i = zext i32 %.01123.i.i to i64
  br label %.lr.ph.i.i

bb.l:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN3tbb6detail2r117thread_dispatcher13remove_clientERNS1_24thread_dispatcher_clientE.exit, label %.lr.ph.i.i, !llvm.loop !81

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.l ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %indvars.iv.i.i ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !21 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.bc
  br i1 %i.bf, label %bb.l, label %_ZN3tbb6detail2r117thread_dispatcher13remove_clientERNS1_24thread_dispatcher_clientE.exit

_ZN3tbb6detail2r117thread_dispatcher13remove_clientERNS1_24thread_dispatcher_clientE.exit: ; preds = %bb.l, %.lr.ph.i.i, %bb.k
  %spec.select.i.i = phi ptr [ %i.av, %bb.k ], [ %i.be, %.lr.ph.i.i ], [ %i.bb, %bb.l ]
  store ptr %spec.select.i.i, ptr %i.au, align 8, !tbaa !22
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bh = atomicrmw add ptr %i.bg, i64 1 seq_cst, align 8 ; 0 uses
  %i.bi = atomicrmw and ptr %i.a, i64 -2 seq_cst, align 8
  %i.bj = and i64 %i.bi, 2
  %.not.i20 = icmp eq i64 %i.bj, 0
  br i1 %.not.i20, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN3tbb6detail2r117thread_dispatcher13remove_clientERNS1_24thread_dispatcher_clientE.exit
  call void @_ZN3tbb6detail2r117notify_by_addressEPvm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
  br label %bb.o

bb.n:                                             ; preds = %_ZN3tbb6detail2r117thread_dispatcher13remove_clientERNS1_24thread_dispatcher_clientE.exit
  call void @_ZN3tbb6detail2r121notify_by_address_allEPv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef nonnull %1)
  br label %_ZN3tbb6detail2d18rw_mutex6unlockEv.exit22

.thread:                                          ; preds = %.thread27, %bb.h, %bb.i, %bb.g
  %i.bk = atomicrmw and ptr %i.a, i64 -2 seq_cst, align 8
  %i.bl = and i64 %i.bk, 2
  %.not.i21 = icmp eq i64 %i.bl, 0
  br i1 %.not.i21, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.thread
  call void @_ZN3tbb6detail2r117notify_by_addressEPvm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
  br label %_ZN3tbb6detail2d18rw_mutex6unlockEv.exit22

bb.q:                                             ; preds = %.thread
  call void @_ZN3tbb6detail2r121notify_by_address_allEPv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN3tbb6detail2d18rw_mutex6unlockEv.exit22

_ZN3tbb6detail2d18rw_mutex6unlockEv.exit22:       ; preds = %bb.o, %bb.q, %bb.p
  %.3 = phi i1 [ true, %bb.o ], [ false, %bb.p ], [ false, %bb.q ]
  ret i1 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN3tbb6detail2r117thread_dispatcher13remove_clientERNS1_24thread_dispatcher_clientE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(152) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44, !nonnull !47, !align !48
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 220
  %i.e = load i32, ptr %i.d, align 4, !tbaa !49
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !93
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !93
  %i.k = load ptr, ptr %1, align 8, !tbaa !91     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !92   ; 2 uses
  store ptr %i.k, ptr %i.m, align 8, !tbaa !91
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !92
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !22   ; 5 uses
  %i.q = icmp eq ptr %i.p, %1
  %.not.i = icmp eq ptr %i.p, null
  %or.cond = or i1 %i.q, %.not.i
  br i1 %or.cond, label %.lr.ph.preheader.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !44, !nonnull !47, !align !48
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 220
  %i.u = load i32, ptr %i.t, align 4, !tbaa !49   ; 2 uses
  %.not1415.not.i = icmp eq i32 %i.u, 0
  br i1 %.not1415.not.i, label %_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a, %bb.b
  %i.v = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ]
  %.01123.i = phi i32 [ %i.u, %bb.b ], [ 3, %bb.a ]
  %wide.trip.count.i = zext i32 %.01123.i to i64
  br label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit, label %.lr.ph.i, !llvm.loop !81

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21   ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.w
  br i1 %i.z, label %bb.c, label %_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit

_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit: ; preds = %bb.c, %.lr.ph.i, %bb.b
  %spec.select.i = phi ptr [ %i.p, %bb.b ], [ %i.v, %bb.c ], [ %i.y, %.lr.ph.i ]
  store ptr %spec.select.i, ptr %i.o, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define hidden void @_ZN3tbb6detail2r117thread_dispatcher14destroy_clientEPNS1_24thread_dispatcher_clientE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(152) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef %1)
  ret void
}

declare void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN3tbb6detail2r117thread_dispatcher15is_client_aliveEPNS1_24thread_dispatcher_clientE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(152) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %.019.ptr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader.preheader
  %.019.ptr.pn = phi ptr [ %.019.ptr, %.preheader.preheader ], [ %.sroa.027.0, %bb.c ]
  %.sroa.027.0.in = getelementptr inbounds nuw i8, ptr %.019.ptr.pn, i64 8
  %.sroa.027.0 = load ptr, ptr %.sroa.027.0.in, align 8, !tbaa !92 ; 3 uses
  %.not33 = icmp eq ptr %.sroa.027.0, %.019.ptr
  br i1 %.not33, label %.preheader.1, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not26 = icmp eq ptr %1, %.sroa.027.0
  br i1 %.not26, label %.loopexit, label %bb.b

.preheader.1:                                     ; preds = %bb.b
  %.019.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.preheader.1
  %.019.ptr.pn.1 = phi ptr [ %.019.ptr.1, %.preheader.1 ], [ %.sroa.027.0.1, %bb.e ]
  %.sroa.027.0.in.1 = getelementptr inbounds nuw i8, ptr %.019.ptr.pn.1, i64 8
  %.sroa.027.0.1 = load ptr, ptr %.sroa.027.0.in.1, align 8, !tbaa !92 ; 3 uses
  %.not33.1 = icmp eq ptr %.sroa.027.0.1, %.019.ptr.1
  br i1 %.not33.1, label %.preheader.2, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not26.1 = icmp eq ptr %1, %.sroa.027.0.1
  br i1 %.not26.1, label %.loopexit, label %bb.d

.preheader.2:                                     ; preds = %bb.d
  %.019.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader.2
  %.019.ptr.pn.2 = phi ptr [ %.019.ptr.2, %.preheader.2 ], [ %.sroa.027.0.2, %bb.f ]
  %.sroa.027.0.in.2 = getelementptr inbounds nuw i8, ptr %.019.ptr.pn.2, i64 8
  %.sroa.027.0.2 = load ptr, ptr %.sroa.027.0.in.2, align 8, !tbaa !92 ; 3 uses
  %.not33.2 = icmp ne ptr %.sroa.027.0.2, %.019.ptr.2 ; 2 uses
  %.not26.2 = icmp ne ptr %1, %.sroa.027.0.2
  %or.cond.not = and i1 %.not26.2, %.not33.2
  br i1 %or.cond.not, label %bb.f, label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.e, %bb.f, %bb.a
  %.5 = phi i1 [ false, %bb.a ], [ true, %bb.e ], [ %.not33.2, %bb.f ], [ true, %bb.c ]
  ret i1 %.5
}

; Function Attrs: mustprogress sspstrong uwtable
define hidden noundef ptr @_ZN3tbb6detail2r117thread_dispatcher14client_in_needEPNS1_14intrusive_listINS1_24thread_dispatcher_clientEEEPS4_(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(152) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address, ret: address, provenance) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %.lr.ph.preheader.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44, !nonnull !47, !align !48
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 220
  %i.d = load i32, ptr %i.c, align 4, !tbaa !49   ; 2 uses
  %.not1415.not.i = icmp eq i32 %i.d, 0
  br i1 %.not1415.not.i, label %_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a, %bb.b
  %.01123.i = phi i32 [ %i.d, %bb.b ], [ 3, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count.i = zext i32 %.01123.i to i64
  br label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit, label %.lr.ph.i, !llvm.loop !81

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %indvars.iv.i ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.f
  br i1 %i.i, label %bb.c, label %_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit

_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit: ; preds = %bb.c, %.lr.ph.i
  %spec.select.i = phi ptr [ %2, %bb.c ], [ %i.h, %.lr.ph.i ] ; 3 uses
  %.not = icmp eq ptr %spec.select.i, null
  br i1 %.not, label %.loopexit31, label %_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit._ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit.thread_crit_edge

_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit._ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit.thread_crit_edge: ; preds = %_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !44
  %.phi.trans.insert34 = getelementptr inbounds nuw i8, ptr %.pre, i64 220
  %.pre35 = load i32, ptr %.phi.trans.insert34, align 4, !tbaa !49
  br label %_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit.thread

_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit.thread: ; preds = %_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit._ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit.thread_crit_edge, %bb.b
  %i.j = phi i32 [ %.pre35, %_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit._ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit.thread_crit_edge ], [ 0, %bb.b ]
  %spec.select.i29 = phi ptr [ %spec.select.i, %_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit._ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit.thread_crit_edge ], [ %2, %bb.b ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit.thread
  %.sroa.023.0 = phi ptr [ %spec.select.i29, %_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit.thread ], [ %.sroa.023.1, %bb.e ] ; 3 uses
  %.018 = phi i32 [ %i.j, %_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit.thread ], [ %.220, %bb.e ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.023.0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !92   ; 2 uses
  %i.m = zext i32 %.018 to i64
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.m
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.d, %.preheader
  %.119 = phi i32 [ %i.q, %.preheader ], [ %.018, %bb.d ]
  %i.p = add i32 %.119, 1
  %i.q = urem i32 %i.p, 3                         ; 3 uses
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21   ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.s
  br i1 %i.v, label %.preheader, label %.loopexit, !llvm.loop !101

.loopexit:                                        ; preds = %.preheader, %bb.d
  %.sroa.023.1 = phi ptr [ %i.l, %bb.d ], [ %i.u, %.preheader ] ; 2 uses
  %.220 = phi i32 [ %.018, %bb.d ], [ %i.q, %.preheader ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.023.0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !44, !nonnull !47, !align !48
  %i.y = tail call noundef zeroext i1 @_ZN3tbb6detail2r15arena8try_joinEv(ptr noundef nonnull align 128 dereferenceable(768) %i.x)
  br i1 %i.y, label %.loopexit31, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %.not30 = icmp eq ptr %.sroa.023.1, %spec.select.i29
  br i1 %.not30, label %.loopexit31, label %bb.d, !llvm.loop !102

.loopexit31:                                      ; preds = %.loopexit, %bb.e, %_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit
  %.3 = phi ptr [ null, %_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit ], [ null, %bb.e ], [ %.sroa.023.0, %.loopexit ]
  ret ptr %.3
}

; Function Attrs: mustprogress sspstrong uwtable
define hidden noundef ptr @_ZN3tbb6detail2r117thread_dispatcher14client_in_needEPNS1_24thread_dispatcher_clientE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nofree noundef readonly captures(address, ret: address, provenance) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::rw_scoped_lock", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.b, align 8, !tbaa !97
  store ptr %i.a, ptr %2, align 8, !tbaa !94
  tail call void @_ZN3tbb6detail2d18rw_mutex11lock_sharedEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN3tbb6detail2r117thread_dispatcher15is_client_aliveEPNS1_24thread_dispatcher_clientE.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.a
  %.019.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader.preheader.i
  %.019.ptr.pn.i = phi ptr [ %.019.ptr.i, %.preheader.preheader.i ], [ %.sroa.027.0.i, %bb.c ]
  %.sroa.027.0.in.i = getelementptr inbounds nuw i8, ptr %.019.ptr.pn.i, i64 8
  %.sroa.027.0.i = load ptr, ptr %.sroa.027.0.in.i, align 8, !tbaa !92 ; 3 uses
  %.not33.i = icmp eq ptr %.sroa.027.0.i, %.019.ptr.i
  br i1 %.not33.i, label %.preheader.1.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not26.i = icmp eq ptr %1, %.sroa.027.0.i
  br i1 %.not26.i, label %.loopexit40, label %bb.b

.preheader.1.i:                                   ; preds = %bb.b
  %.019.ptr.1.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.preheader.1.i
  %.019.ptr.pn.1.i = phi ptr [ %.019.ptr.1.i, %.preheader.1.i ], [ %.sroa.027.0.1.i, %bb.e ]
  %.sroa.027.0.in.1.i = getelementptr inbounds nuw i8, ptr %.019.ptr.pn.1.i, i64 8
  %.sroa.027.0.1.i = load ptr, ptr %.sroa.027.0.in.1.i, align 8, !tbaa !92 ; 3 uses
  %.not33.1.i = icmp eq ptr %.sroa.027.0.1.i, %.019.ptr.1.i
  br i1 %.not33.1.i, label %.preheader.2.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not26.1.i = icmp eq ptr %1, %.sroa.027.0.1.i
  br i1 %.not26.1.i, label %.loopexit40, label %bb.d

.preheader.2.i:                                   ; preds = %bb.d
  %.019.ptr.2.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.preheader.2.i
  %.019.ptr.pn.2.i = phi ptr [ %.019.ptr.2.i, %.preheader.2.i ], [ %.sroa.027.0.2.i, %bb.g ]
  %.sroa.027.0.in.2.i = getelementptr inbounds nuw i8, ptr %.019.ptr.pn.2.i, i64 8
  %.sroa.027.0.2.i = load ptr, ptr %.sroa.027.0.in.2.i, align 8, !tbaa !92 ; 3 uses
  %.not33.2.i = icmp eq ptr %.sroa.027.0.2.i, %.019.ptr.2.i
  br i1 %.not33.2.i, label %_ZN3tbb6detail2r117thread_dispatcher15is_client_aliveEPNS1_24thread_dispatcher_clientE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not26.2.i = icmp eq ptr %1, %.sroa.027.0.2.i
  br i1 %.not26.2.i, label %.loopexit40, label %bb.f

.loopexit40:                                      ; preds = %bb.c, %bb.e, %bb.g
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44, !nonnull !47, !align !48
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 220
  %i.f = load i32, ptr %i.e, align 4, !tbaa !49   ; 2 uses
  %.not1415.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not1415.not.i.i, label %_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit.thread.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.loopexit40
  %wide.trip.count.i.i = zext i32 %i.f to i64
  br label %.lr.ph.i.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit.i, label %.lr.ph.i.i, !llvm.loop !81

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.h ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %.019.ptr.i, i64 %indvars.iv.i.i ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %bb.h, label %_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit.i

_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit.i: ; preds = %.lr.ph.i.i, %bb.h
  %spec.select.i.i = phi ptr [ %1, %bb.h ], [ %i.i, %.lr.ph.i.i ] ; 3 uses
  %.not.i5 = icmp eq ptr %spec.select.i.i, null
  br i1 %.not.i5, label %.loopexit63, label %_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit._ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit.thread_crit_edge.i

_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit._ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit.thread_crit_edge.i: ; preds = %_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !44
  %.phi.trans.insert34.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 220
  %.pre35.i = load i32, ptr %.phi.trans.insert34.i, align 4, !tbaa !49
  br label %_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit.thread.i

_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit.thread.i: ; preds = %_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit._ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit.thread_crit_edge.i, %.loopexit40
  %i.k = phi i32 [ %.pre35.i, %_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit._ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit.thread_crit_edge.i ], [ 0, %.loopexit40 ]
  %spec.select.i29.i = phi ptr [ %spec.select.i.i, %_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit._ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit.thread_crit_edge.i ], [ %1, %.loopexit40 ] ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit.thread.i
  %.sroa.023.0.i = phi ptr [ %spec.select.i29.i, %_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit.thread.i ], [ %.sroa.023.1.i, %bb.j ] ; 3 uses
  %.018.i = phi i32 [ %i.k, %_ZN3tbb6detail2r117thread_dispatcher18select_next_clientEPNS1_24thread_dispatcher_clientE.exit.thread.i ], [ %.220.i, %bb.j ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.023.0.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !92   ; 2 uses
  %i.n = zext i32 %.018.i to i64
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.019.ptr.i, i64 %i.n
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %.preheader.i, label %.loopexit.i
end_hunk_0
