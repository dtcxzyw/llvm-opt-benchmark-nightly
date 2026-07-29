inline.NumInlined: 121
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4absl18debugging_internal22GetSectionHeaderByNameEiPKcmP10Elf64_Shdr:bb.a
  %i.bc = icmp slt i64 %i.bb, 0
  br i1 %i.bc, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.lr.ph135
  %i.bd = icmp eq i64 %i.bb, 0
  br i1 %i.bd, label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit39.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = add nsw i64 %i.bb, %.028.ph72.i.i41
  br label %.lr.ph.split.us.i.i44

bb.n:                                             ; preds = %.lr.ph135
  %i.bf = tail call ptr @__errno_location() #22
  %i.bg = load i32, ptr %i.bf, align 4            ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 4
  br i1 %i.bh, label %.lr.ph.split.us.i.i44, label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit39.thread.sink.split, !llvm.loop !5

.lr.ph.split.us.i.i44:                            ; preds = %bb.n, %bb.m
  %.sroa.34.12 = phi i64 [ 0, %bb.n ], [ %i.be, %bb.m ] ; 2 uses
  %.sroa.21.12 = phi i64 [ 0, %bb.n ], [ %.028.ph72.i.i41, %bb.m ] ; 2 uses
  %.not.us.i.i45 = icmp sge i64 %.028.ph72.i.i41, %.sroa.21.12
  %i.bi = icmp slt i64 %.028.ph72.i.i41, %.sroa.34.12
  %or.cond98 = select i1 %.not.us.i.i45, i1 %i.bi, i1 false
  br i1 %or.cond98, label %.outer.i.i48, label %.lr.ph135

.outer.i.i48:                                     ; preds = %.lr.ph.split.us.i.i44, %.lr.ph.split.us.preheader.i.i40
  %.sroa.34.11.lcssa = phi i64 [ %.sroa.34.10, %.lr.ph.split.us.preheader.i.i40 ], [ %.sroa.34.12, %.lr.ph.split.us.i.i44 ] ; 4 uses
  %.sroa.21.11.lcssa = phi i64 [ %.sroa.21.10, %.lr.ph.split.us.preheader.i.i40 ], [ %.sroa.21.12, %.lr.ph.split.us.i.i44 ] ; 4 uses
  %i.bj = sub nsw i64 %.028.ph72.i.i41, %.sroa.21.11.lcssa
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bj
  %i.bl = sub nuw nsw i64 64, %.030.ph70.i.i43
  %i.bm = sub nsw i64 %.sroa.34.11.lcssa, %.028.ph72.i.i41
  %.sroa.speculated.i.i49 = call i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bl) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.029.ph71.i.i42, ptr nonnull align 1 %i.bk, i64 %.sroa.speculated.i.i49, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %.029.ph71.i.i42, i64 %.sroa.speculated.i.i49
  %i.bo = add nuw nsw i64 %.sroa.speculated.i.i49, %.030.ph70.i.i43 ; 2 uses
  %i.bp = add nsw i64 %.sroa.speculated.i.i49, %.028.ph72.i.i41
  %i.bq = icmp samesign ult i64 %i.bo, 64
  br i1 %i.bq, label %.lr.ph.split.us.preheader.i.i40, label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit50

_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit50: ; preds = %.outer.i.i48
  br i1 %.not74.i, label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread86, label %.lr.ph.split.us.preheader.i.preheader

.lr.ph.split.us.preheader.i.preheader:            ; preds = %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit50
  %i.br = load i32, ptr %3, align 8
  %i.bs = zext i32 %i.br to i64
  %i.bt = add nsw i64 %i.ax, %i.bs
  br label %.lr.ph.split.us.preheader.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.split.us.preheader.i.preheader, %.outer.i
  %.sroa.34.14 = phi i64 [ %.sroa.34.15.lcssa, %.outer.i ], [ %.sroa.34.11.lcssa, %.lr.ph.split.us.preheader.i.preheader ] ; 2 uses
  %.sroa.21.14 = phi i64 [ %.sroa.21.15.lcssa, %.outer.i ], [ %.sroa.21.11.lcssa, %.lr.ph.split.us.preheader.i.preheader ] ; 2 uses
  %.028.ph72.i = phi i64 [ %i.cj, %.outer.i ], [ %i.bt, %.lr.ph.split.us.preheader.i.preheader ] ; 10 uses
  %.029.ph71.i = phi ptr [ %i.ch, %.outer.i ], [ %i.a, %.lr.ph.split.us.preheader.i.preheader ] ; 2 uses
  %.030.ph70.i = phi i64 [ %i.ci, %.outer.i ], [ 0, %.lr.ph.split.us.preheader.i.preheader ] ; 3 uses
  %.not.us.i138 = icmp sge i64 %.028.ph72.i, %.sroa.21.14
  %i.bu = icmp slt i64 %.028.ph72.i, %.sroa.34.14
  %or.cond99139 = and i1 %.not.us.i138, %i.bu
  br i1 %or.cond99139, label %.outer.i, label %.lr.ph140

.lr.ph140:                                        ; preds = %.lr.ph.split.us.preheader.i, %.lr.ph.split.us.i
  %i.bv = call i64 @pread64(i32 noundef %0, ptr noundef nonnull %i.b, i64 noundef 100, i64 noundef %.028.ph72.i) #21 ; 3 uses
  %i.bw = icmp slt i64 %i.bv, 0
  br i1 %i.bw, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.lr.ph140
  %i.bx = icmp eq i64 %i.bv, 0
  br i1 %i.bx, label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = add nsw i64 %i.bv, %.028.ph72.i
  br label %.lr.ph.split.us.i

bb.q:                                             ; preds = %.lr.ph140
  %i.bz = tail call ptr @__errno_location() #22
  %i.ca = load i32, ptr %i.bz, align 4            ; 2 uses
  %i.cb = icmp eq i32 %i.ca, 4
  br i1 %i.cb, label %.lr.ph.split.us.i, label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit39.thread.sink.split, !llvm.loop !5

.lr.ph.split.us.i:                                ; preds = %bb.q, %bb.p
  %.sroa.34.16 = phi i64 [ 0, %bb.q ], [ %i.by, %bb.p ] ; 2 uses
  %.sroa.21.16 = phi i64 [ 0, %bb.q ], [ %.028.ph72.i, %bb.p ] ; 2 uses
  %.not.us.i = icmp sge i64 %.028.ph72.i, %.sroa.21.16
  %i.cc = icmp slt i64 %.028.ph72.i, %.sroa.34.16
  %or.cond99 = select i1 %.not.us.i, i1 %i.cc, i1 false
  br i1 %or.cond99, label %.outer.i, label %.lr.ph140

.outer.i:                                         ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.preheader.i
  %.sroa.34.15.lcssa = phi i64 [ %.sroa.34.14, %.lr.ph.split.us.preheader.i ], [ %.sroa.34.16, %.lr.ph.split.us.i ] ; 3 uses
  %.sroa.21.15.lcssa = phi i64 [ %.sroa.21.14, %.lr.ph.split.us.preheader.i ], [ %.sroa.21.16, %.lr.ph.split.us.i ] ; 3 uses
  %i.cd = sub nsw i64 %.028.ph72.i, %.sroa.21.15.lcssa
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cd
  %i.cf = sub nsw i64 %2, %.030.ph70.i
  %i.cg = sub nsw i64 %.sroa.34.15.lcssa, %.028.ph72.i
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.cg, i64 %i.cf) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.029.ph71.i, ptr nonnull align 1 %i.ce, i64 %.sroa.speculated.i, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %.029.ph71.i, i64 %.sroa.speculated.i
  %i.ci = add i64 %.sroa.speculated.i, %.030.ph70.i ; 3 uses
  %i.cj = add nsw i64 %.sroa.speculated.i, %.028.ph72.i
  %i.ck = icmp ult i64 %i.ci, %2
  br i1 %i.ck, label %.lr.ph.split.us.preheader.i, label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit

_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit: ; preds = %.outer.i, %bb.o
  %.sroa.34.17 = phi i64 [ 0, %bb.o ], [ %.sroa.34.15.lcssa, %.outer.i ]
  %.sroa.21.17 = phi i64 [ 0, %bb.o ], [ %.sroa.21.15.lcssa, %.outer.i ]
  %.2.i = phi i64 [ %.030.ph70.i, %bb.o ], [ %i.ci, %.outer.i ] ; 2 uses
  %i.cl = icmp slt i64 %.2.i, 0
  br i1 %i.cl, label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit39.thread, label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread86

_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread86: ; preds = %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit50, %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit
  %.2.i92 = phi i64 [ %.2.i, %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit ], [ 0, %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit50 ]
  %.sroa.21.1791 = phi i64 [ %.sroa.21.17, %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit ], [ %.sroa.21.11.lcssa, %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit50 ]
  %.sroa.34.1790 = phi i64 [ %.sroa.34.17, %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit ], [ %.sroa.34.11.lcssa, %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit50 ]
  %.not27 = icmp eq i64 %.2.i92, %2
  br i1 %.not27, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread86
  %bcmp = call i32 @bcmp(ptr nonnull %i.a, ptr %1, i64 %2)
  %i.cm = icmp eq i32 %bcmp, 0
  br i1 %i.cm, label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit39.thread, label %bb.s

bb.s:                                             ; preds = %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread86, %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit39.thread, label %bb.k, !llvm.loop !9

_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit39.thread.sink.split: ; preds = %bb.j, %bb.n, %bb.q
  %.lcssa178.sink = phi i32 [ %i.bg, %bb.n ], [ %i.ca, %bb.q ], [ %i.aj, %bb.j ]
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 52), i32 noundef 518, ptr noundef nonnull @.str.6, i32 noundef %.lcssa178.sink) #21
  br label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit39.thread

_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit39.thread: ; preds = %bb.h, %bb.r, %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit, %bb.s, %bb.l, %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit39.thread.sink.split, %.preheader
  %.4 = phi i1 [ false, %bb.l ], [ false, %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit39.thread.sink.split ], [ false, %.preheader ], [ false, %bb.s ], [ true, %bb.r ], [ false, %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread

_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread: ; preds = %bb.d, %.thread39.i.i, %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit, %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit39.thread
  %.5 = phi i1 [ false, %.thread39.i.i ], [ %.4, %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit39.thread ], [ false, %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.t

bb.t:                                             ; preds = %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread, %bb.b
  %.6 = phi i1 [ false, %bb.b ], [ %.5, %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i1 %.6
}

declare void @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4absl18debugging_internal25RemoveAllSymbolDecoratorsEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN4absl18debugging_internal12_GLOBAL__N_115g_decorators_muE monotonic, align 4 ; 3 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZN4absl13base_internal8SpinLock8try_lockEv.exit, label %_ZN4absl13base_internal8SpinLock6unlockEv.exit

_ZN4absl13base_internal8SpinLock8try_lockEv.exit: ; preds = %bb.a
  %i.c = or disjoint i32 %i.a, 1
  %i.d = cmpxchg ptr @_ZN4absl18debugging_internal12_GLOBAL__N_115g_decorators_muE, i32 %i.a, i32 %i.c acquire monotonic, align 4
  %i.e = extractvalue { i32, i1 } %i.d, 0
  %.pre.i.i = and i32 %i.e, 1
  %i.f = icmp eq i32 %.pre.i.i, 0
  br i1 %i.f, label %bb.b, label %_ZN4absl13base_internal8SpinLock6unlockEv.exit

bb.b:                                             ; preds = %_ZN4absl13base_internal8SpinLock8try_lockEv.exit
  store i32 0, ptr @_ZN4absl18debugging_internal12_GLOBAL__N_116g_num_decoratorsE, align 4
  %i.g = load atomic i32, ptr @_ZN4absl18debugging_internal12_GLOBAL__N_115g_decorators_muE monotonic, align 4
  %i.h = and i32 %i.g, 2
  %i.i = atomicrmw xchg ptr @_ZN4absl18debugging_internal12_GLOBAL__N_115g_decorators_muE, i32 %i.h release, align 4 ; 2 uses
  %.not4.i = icmp ult i32 %i.i, 8
  br i1 %.not4.i, label %_ZN4absl13base_internal8SpinLock6unlockEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4absl13base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl18debugging_internal12_GLOBAL__N_115g_decorators_muE, i32 noundef %i.i) #25
  br label %_ZN4absl13base_internal8SpinLock6unlockEv.exit

_ZN4absl13base_internal8SpinLock6unlockEv.exit:   ; preds = %bb.a, %bb.c, %bb.b, %_ZN4absl13base_internal8SpinLock8try_lockEv.exit
  %.pre-phi.i.i2 = phi i1 [ true, %bb.c ], [ false, %_ZN4absl13base_internal8SpinLock8try_lockEv.exit ], [ true, %bb.b ], [ false, %bb.a ]
  ret i1 %.pre-phi.i.i2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4absl18debugging_internal21RemoveSymbolDecoratorEi(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN4absl18debugging_internal12_GLOBAL__N_115g_decorators_muE monotonic, align 4 ; 3 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZN4absl13base_internal8SpinLock8try_lockEv.exit, label %_ZN4absl13base_internal8SpinLock6unlockEv.exit

_ZN4absl13base_internal8SpinLock8try_lockEv.exit: ; preds = %bb.a
  %i.c = or disjoint i32 %i.a, 1
  %i.d = cmpxchg ptr @_ZN4absl18debugging_internal12_GLOBAL__N_115g_decorators_muE, i32 %i.a, i32 %i.c acquire monotonic, align 4
  %i.e = extractvalue { i32, i1 } %i.d, 0
  %.pre.i.i = and i32 %i.e, 1
  %i.f = icmp eq i32 %.pre.i.i, 0
  br i1 %i.f, label %.preheader12, label %_ZN4absl13base_internal8SpinLock6unlockEv.exit

.preheader12:                                     ; preds = %_ZN4absl13base_internal8SpinLock8try_lockEv.exit
  %i.g = load i32, ptr @_ZN4absl18debugging_internal12_GLOBAL__N_116g_num_decoratorsE, align 4 ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader12
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 8 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr @_ZN4absl18debugging_internal12_GLOBAL__N_112g_decoratorsE, i64 %indvars.iv
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp eq i32 %i.k, %0
  br i1 %i.l, label %.preheader, label %bb.b

.preheader:                                       ; preds = %.lr.ph
  %i.m = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.n = add nsw i32 %i.g, -1                     ; 4 uses
  %i.o = icmp sgt i32 %i.n, %i.m
  br i1 %i.o, label %.lr.ph17.preheader, label %._crit_edge

.lr.ph17.preheader:                               ; preds = %.preheader
  %wide.trip.count26 = zext nneg i32 %i.n to i64  ; 3 uses
  %1 = sub nsw i64 %wide.trip.count26, %indvars.iv
  %xtraiter = and i64 %1, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph17.prol.loopexit, label %.lr.ph17.prol

.lr.ph17.prol:                                    ; preds = %.lr.ph17.preheader
  %indvars.iv.next24.prol = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %2 = getelementptr inbounds nuw [24 x i8], ptr @_ZN4absl18debugging_internal12_GLOBAL__N_112g_decoratorsE, i64 %indvars.iv.next24.prol
  %3 = getelementptr inbounds nuw [24 x i8], ptr @_ZN4absl18debugging_internal12_GLOBAL__N_112g_decoratorsE, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  br label %.lr.ph17.prol.loopexit

.lr.ph17.prol.loopexit:                           ; preds = %.lr.ph17.prol, %.lr.ph17.preheader
  %indvars.iv23.unr = phi i64 [ %indvars.iv, %.lr.ph17.preheader ], [ %indvars.iv.next24.prol, %.lr.ph17.prol ]
  %4 = add nsw i64 %wide.trip.count26, -1
  %5 = icmp eq i64 %indvars.iv, %4
  br i1 %5, label %._crit_edge, label %.lr.ph17

.lr.ph17:                                         ; preds = %.lr.ph17.prol.loopexit, %.lr.ph17
  %indvars.iv23 = phi i64 [ %indvars.iv.next24.1, %.lr.ph17 ], [ %indvars.iv23.unr, %.lr.ph17.prol.loopexit ] ; 3 uses
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %6 = getelementptr inbounds nuw [24 x i8], ptr @_ZN4absl18debugging_internal12_GLOBAL__N_112g_decoratorsE, i64 %indvars.iv.next24
  %7 = getelementptr inbounds nuw [24 x i8], ptr @_ZN4absl18debugging_internal12_GLOBAL__N_112g_decoratorsE, i64 %indvars.iv23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %indvars.iv.next24.1 = add nuw nsw i64 %indvars.iv23, 2 ; 3 uses
  %8 = getelementptr inbounds nuw [24 x i8], ptr @_ZN4absl18debugging_internal12_GLOBAL__N_112g_decoratorsE, i64 %indvars.iv.next24.1
  %9 = getelementptr inbounds nuw [24 x i8], ptr @_ZN4absl18debugging_internal12_GLOBAL__N_112g_decoratorsE, i64 %indvars.iv.next24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %exitcond27.not.1 = icmp eq i64 %indvars.iv.next24.1, %wide.trip.count26
  br i1 %exitcond27.not.1, label %._crit_edge, label %.lr.ph17, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph17.prol.loopexit, %.lr.ph17, %.preheader
  %.1.lcssa = phi i32 [ %i.m, %.preheader ], [ %i.n, %.lr.ph17 ], [ %i.n, %.lr.ph17.prol.loopexit ]
  store i32 %.1.lcssa, ptr @_ZN4absl18debugging_internal12_GLOBAL__N_116g_num_decoratorsE, align 4
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !11

.loopexit:                                        ; preds = %bb.b, %.preheader12, %._crit_edge
  %i.p = load atomic i32, ptr @_ZN4absl18debugging_internal12_GLOBAL__N_115g_decorators_muE monotonic, align 4
  %i.q = and i32 %i.p, 2
  %i.r = atomicrmw xchg ptr @_ZN4absl18debugging_internal12_GLOBAL__N_115g_decorators_muE, i32 %i.q release, align 4 ; 2 uses
  %.not4.i = icmp ult i32 %i.r, 8
  br i1 %.not4.i, label %_ZN4absl13base_internal8SpinLock6unlockEv.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  tail call void @_ZN4absl13base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl18debugging_internal12_GLOBAL__N_115g_decorators_muE, i32 noundef %i.r) #25
  br label %_ZN4absl13base_internal8SpinLock6unlockEv.exit

_ZN4absl13base_internal8SpinLock6unlockEv.exit:   ; preds = %bb.a, %bb.c, %.loopexit, %_ZN4absl13base_internal8SpinLock8try_lockEv.exit
  %.pre-phi.i.i11 = phi i1 [ true, %bb.c ], [ false, %_ZN4absl13base_internal8SpinLock8try_lockEv.exit ], [ true, %.loopexit ], [ false, %bb.a ]
  ret i1 %.pre-phi.i.i11
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN4absl18debugging_internal22InstallSymbolDecoratorEPFvPKNS0_19SymbolDecoratorArgsEEPv(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN4absl18debugging_internal12_GLOBAL__N_115g_decorators_muE monotonic, align 4 ; 3 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZN4absl13base_internal8SpinLock8try_lockEv.exit, label %_ZN4absl13base_internal8SpinLock6unlockEv.exit

_ZN4absl13base_internal8SpinLock8try_lockEv.exit: ; preds = %bb.a
  %i.c = or disjoint i32 %i.a, 1
  %i.d = cmpxchg ptr @_ZN4absl18debugging_internal12_GLOBAL__N_115g_decorators_muE, i32 %i.a, i32 %i.c acquire monotonic, align 4
  %i.e = extractvalue { i32, i1 } %i.d, 0
  %.pre.i.i = and i32 %i.e, 1
  %i.f = icmp eq i32 %.pre.i.i, 0
  br i1 %i.f, label %bb.b, label %_ZN4absl13base_internal8SpinLock6unlockEv.exit

bb.b:                                             ; preds = %_ZN4absl13base_internal8SpinLock8try_lockEv.exit
  %i.g = load i32, ptr @_ZN4absl18debugging_internal12_GLOBAL__N_116g_num_decoratorsE, align 4 ; 3 uses
  %i.h = icmp sgt i32 %i.g, 9
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr @_ZZN4absl18debugging_internal22InstallSymbolDecoratorEPFvPKNS0_19SymbolDecoratorArgsEEPvE6ticket, align 4 ; 3 uses
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr @_ZZN4absl18debugging_internal22InstallSymbolDecoratorEPFvPKNS0_19SymbolDecoratorArgsEEPvE6ticket, align 4
  %i.k = sext i32 %i.g to i64
  %i.l = getelementptr inbounds [24 x i8], ptr @_ZN4absl18debugging_internal12_GLOBAL__N_112g_decoratorsE, i64 %i.k ; 3 uses
  store ptr %0, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 %i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = add nsw i32 %i.g, 1
  store i32 %i.m, ptr @_ZN4absl18debugging_internal12_GLOBAL__N_116g_num_decoratorsE, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.03 = phi i32 [ %i.i, %bb.c ], [ -1, %bb.b ]   ; 2 uses
  %i.n = load atomic i32, ptr @_ZN4absl18debugging_internal12_GLOBAL__N_115g_decorators_muE monotonic, align 4
  %i.o = and i32 %i.n, 2
  %i.p = atomicrmw xchg ptr @_ZN4absl18debugging_internal12_GLOBAL__N_115g_decorators_muE, i32 %i.o release, align 4 ; 2 uses
  %.not4.i = icmp ult i32 %i.p, 8
  br i1 %.not4.i, label %_ZN4absl13base_internal8SpinLock6unlockEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4absl13base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl18debugging_internal12_GLOBAL__N_115g_decorators_muE, i32 noundef %i.p) #25
  br label %_ZN4absl13base_internal8SpinLock6unlockEv.exit

_ZN4absl13base_internal8SpinLock6unlockEv.exit:   ; preds = %bb.a, %bb.e, %bb.d, %_ZN4absl13base_internal8SpinLock8try_lockEv.exit
  %.0 = phi i32 [ %.03, %bb.e ], [ -2, %_ZN4absl13base_internal8SpinLock8try_lockEv.exit ], [ %.03, %bb.d ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4absl18debugging_internal23RegisterFileMappingHintEPKvS2_mPKc(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp ugt ptr %0, %1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not22 = icmp eq ptr %3, null
  br i1 %.not22, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #24
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4absl13base_internal16InitSigSafeArenaEv() #21
  %i.a = load atomic i32, ptr @_ZN4absl18debugging_internal12_GLOBAL__N_117g_file_mapping_muE monotonic, align 4 ; 3 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZN4absl13base_internal8SpinLock8try_lockEv.exit, label %_ZN4absl13base_internal8SpinLock6unlockEv.exit

_ZN4absl13base_internal8SpinLock8try_lockEv.exit: ; preds = %bb.e
  %i.c = or disjoint i32 %i.a, 1
  %i.d = cmpxchg ptr @_ZN4absl18debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 %i.a, i32 %i.c acquire monotonic, align 4
  %i.e = extractvalue { i32, i1 } %i.d, 0
  %.pre.i.i = and i32 %i.e, 1
  %i.f = icmp eq i32 %.pre.i.i, 0
  br i1 %i.f, label %bb.f, label %_ZN4absl13base_internal8SpinLock6unlockEv.exit

bb.f:                                             ; preds = %_ZN4absl13base_internal8SpinLock8try_lockEv.exit
  %i.g = load i32, ptr @_ZN4absl18debugging_internal12_GLOBAL__N_124g_num_file_mapping_hintsE, align 4
  %i.h = icmp slt i32 %i.g, 8                     ; 3 uses
  br i1 %i.h, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #23
  %i.j = add i64 %i.i, 1                          ; 2 uses
  %i.k = tail call noundef ptr @_ZN4absl13base_internal12SigSafeArenaEv() #21
  %i.l = tail call noundef ptr @_ZN4absl13base_internal13LowLevelAlloc14AllocWithArenaEmPNS1_5ArenaE(i64 noundef %i.j, ptr noundef %i.k) #21 ; 3 uses
  %.not23 = icmp eq ptr %i.l, null
  br i1 %.not23, label %bb.h, label %bb.i, !prof !12

bb.h:                                             ; preds = %bb.g
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 52), i32 noundef 1674, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #21
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str, i32 noundef 1674, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18debugging_internal23RegisterFileMappingHintEPKvS2_mPKc) #24
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 1 %3, i64 %i.j, i1 false)
  %i.m = load i32, ptr @_ZN4absl18debugging_internal12_GLOBAL__N_124g_num_file_mapping_hintsE, align 4 ; 2 uses
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr @_ZN4absl18debugging_internal12_GLOBAL__N_124g_num_file_mapping_hintsE, align 4
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds [32 x i8], ptr @_ZN4absl18debugging_internal12_GLOBAL__N_120g_file_mapping_hintsE, i64 %i.o ; 4 uses
  store ptr %0, ptr %i.p, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %2, ptr %i.r, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.l, ptr %i.s, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i
  %i.t = load atomic i32, ptr @_ZN4absl18debugging_internal12_GLOBAL__N_117g_file_mapping_muE monotonic, align 4
  %i.u = and i32 %i.t, 2
  %i.v = atomicrmw xchg ptr @_ZN4absl18debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 %i.u release, align 4 ; 2 uses
  %.not4.i = icmp ult i32 %i.v, 8
  br i1 %.not4.i, label %_ZN4absl13base_internal8SpinLock6unlockEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4absl13base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl18debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 noundef %i.v) #25
  br label %_ZN4absl13base_internal8SpinLock6unlockEv.exit

_ZN4absl13base_internal8SpinLock6unlockEv.exit:   ; preds = %bb.e, %bb.k, %bb.j, %_ZN4absl13base_internal8SpinLock8try_lockEv.exit
  %.0 = phi i1 [ %i.h, %bb.k ], [ false, %_ZN4absl13base_internal8SpinLock8try_lockEv.exit ], [ %i.h, %bb.j ], [ false, %bb.e ]
  ret i1 %.0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

declare void @_ZN4absl13base_internal16InitSigSafeArenaEv() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare noundef ptr @_ZN4absl13base_internal13LowLevelAlloc14AllocWithArenaEmPNS1_5ArenaE(i64 noundef, ptr noundef) local_unnamed_addr #1 section "malloc_hook"

declare noundef ptr @_ZN4absl13base_internal12SigSafeArenaEv() local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4absl18debugging_internal18GetFileMappingHintEPPKvS3_PmPPKc(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN4absl18debugging_internal12_GLOBAL__N_117g_file_mapping_muE monotonic, align 4 ; 3 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZN4absl13base_internal8SpinLock8try_lockEv.exit, label %_ZN4absl13base_internal8SpinLock6unlockEv.exit

_ZN4absl13base_internal8SpinLock8try_lockEv.exit: ; preds = %bb.a
  %i.c = or disjoint i32 %i.a, 1
  %i.d = cmpxchg ptr @_ZN4absl18debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 %i.a, i32 %i.c acquire monotonic, align 4
  %i.e = extractvalue { i32, i1 } %i.d, 0
  %.pre.i.i = and i32 %i.e, 1
  %i.f = icmp eq i32 %.pre.i.i, 0
  br i1 %i.f, label %.preheader, label %_ZN4absl13base_internal8SpinLock6unlockEv.exit

.preheader:                                       ; preds = %_ZN4absl13base_internal8SpinLock8try_lockEv.exit
  %i.g = load i32, ptr @_ZN4absl18debugging_internal12_GLOBAL__N_124g_num_file_mapping_hintsE, align 4 ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.i = load ptr, ptr %0, align 8
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr @_ZN4absl18debugging_internal12_GLOBAL__N_120g_file_mapping_hintsE, i64 %indvars.iv ; 4 uses
  %i.k = load ptr, ptr %i.j, align 16             ; 2 uses
  %.not = icmp ugt ptr %i.k, %i.i
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %1, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not18 = icmp ugt ptr %i.l, %i.n
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.k, ptr %0, align 8
  store ptr %i.n, ptr %1, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.p = load i64, ptr %i.o, align 16
  store i64 %i.p, ptr %2, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  store ptr %i.r, ptr %3, align 8
  br label %.loopexit

bb.e:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !13

.loopexit:                                        ; preds = %bb.e, %.preheader, %bb.d
  %i.s = phi i1 [ true, %bb.d ], [ false, %.preheader ], [ false, %bb.e ] ; 2 uses
  %i.t = load atomic i32, ptr @_ZN4absl18debugging_internal12_GLOBAL__N_117g_file_mapping_muE monotonic, align 4
  %i.u = and i32 %i.t, 2
  %i.v = atomicrmw xchg ptr @_ZN4absl18debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 %i.u release, align 4 ; 2 uses
  %.not4.i = icmp ult i32 %i.v, 8
  br i1 %.not4.i, label %_ZN4absl13base_internal8SpinLock6unlockEv.exit, label %bb.f

bb.f:                                             ; preds = %.loopexit
  tail call void @_ZN4absl13base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl18debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 noundef %i.v) #25
  br label %_ZN4absl13base_internal8SpinLock6unlockEv.exit

_ZN4absl13base_internal8SpinLock6unlockEv.exit:   ; preds = %bb.a, %bb.f, %.loopexit, %_ZN4absl13base_internal8SpinLock8try_lockEv.exit
  %.016 = phi i1 [ %i.s, %bb.f ], [ false, %_ZN4absl13base_internal8SpinLock8try_lockEv.exit ], [ %i.s, %.loopexit ], [ false, %bb.a ]
  ret i1 %.016
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4absl9SymbolizeEPKvPci(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.Elf64_Shdr, align 8         ; 8 uses
  %4 = alloca %struct.Elf64_Shdr, align 8         ; 6 uses
  %5 = alloca %"class.absl::debugging_internal::(anonymous namespace)::CachingFile", align 8 ; 14 uses
  %6 = alloca %struct.Elf64_Ehdr, align 8         ; 5 uses
  %i.a = alloca [1024 x i8], align 16             ; 17 uses
  %i.b = alloca [100 x i8], align 16              ; 9 uses
  %7 = alloca %struct.Elf64_Phdr, align 8         ; 8 uses
  %8 = alloca %"class.absl::debugging_internal::VDSOSupport", align 8 ; 5 uses
  %9 = alloca %"struct.absl::debugging_internal::ElfMemImage::SymbolInfo", align 8 ; 4 uses
  %10 = alloca %"struct.absl::debugging_internal::SymbolDecoratorArgs", align 8 ; 11 uses
  %i.c = icmp sgt i32 %2, -1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #24
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4absl13base_internal16InitSigSafeArenaEv() #21
  %i.d = atomicrmw xchg ptr @_ZN4absl18debugging_internal12_GLOBAL__N_119g_cached_symbolizerE, ptr null acquire, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN4absl18debugging_internal12_GLOBAL__N_110SymbolizerC2Ev.exit.loopexit.i, label %_ZN4absl18debugging_internalL18AllocateSymbolizerEv.exit

_ZN4absl18debugging_internal12_GLOBAL__N_110SymbolizerC2Ev.exit.loopexit.i: ; preds = %bb.c
  %i.e = tail call i64 @sysconf(i32 noundef 30) #21 ; 2 uses
  %i.f = udiv i64 22559, %i.e
  %i.g = add nuw nsw i64 %i.f, 1
  %i.h = mul i64 %i.g, %i.e
  %i.i = tail call noundef ptr @_ZN4absl13base_internal12SigSafeArenaEv() #21
  %i.j = tail call noundef ptr @_ZN4absl13base_internal13LowLevelAlloc14AllocWithArenaEmPNS1_5ArenaE(i64 noundef %i.h, ptr noundef %i.i) #21 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(22560) %i.j, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i8 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 25
  store i8 0, ptr %i.l, align 1
  %.014.ptr17.i.i = getelementptr i8, ptr %i.j, i64 12320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10240) %.014.ptr17.i.i, i8 0, i64 10240, i1 false)
  br label %_ZN4absl18debugging_internalL18AllocateSymbolizerEv.exit

_ZN4absl18debugging_internalL18AllocateSymbolizerEv.exit: ; preds = %bb.c, %_ZN4absl18debugging_internal12_GLOBAL__N_110SymbolizerC2Ev.exit.loopexit.i
  %.0.i = phi ptr [ %i.d, %bb.c ], [ %i.j, %_ZN4absl18debugging_internal12_GLOBAL__N_110SymbolizerC2Ev.exit.loopexit.i ] ; 17 uses
  %i.m = icmp eq ptr %0, null                     ; 2 uses
  br i1 %i.m, label %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %_ZN4absl18debugging_internalL18AllocateSymbolizerEv.exit
  %i.n = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.o = lshr i64 %i.n, 3
  %i.p = lshr i64 %i.n, 9
  %i.q = lshr i64 %i.n, 15
  %i.r = xor i64 %i.p, %i.q
  %i.s = lshr i64 %i.n, 21
  %i.t = xor i64 %i.r, %i.s
  %i.u = xor i64 %i.t, %i.o
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 12320
  %i.w = and i64 %i.u, 127
  %i.x = getelementptr inbounds nuw [80 x i8], ptr %i.v, i64 %i.w ; 6 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = icmp eq ptr %i.y, %0
  br i1 %i.z, label %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp eq ptr %i.ab, %0
  br i1 %i.ac, label %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = icmp eq ptr %i.ae, %0
  br i1 %i.af, label %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = icmp eq ptr %i.ah, %0
  br i1 %i.ai, label %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.i, label %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.thread.i

_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.01418.lcssa.i.i = phi i64 [ 0, %bb.d ], [ 1, %bb.e ], [ 2, %bb.f ], [ 3, %bb.g ] ; 2 uses
  %.0.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 3 uses
  %i.aj = load <4 x i32>, ptr %.0.ptr.i.i.i, align 8
  %i.ak = add <4 x i32> %i.aj, splat (i32 1)
  store <4 x i32> %i.ak, ptr %.0.ptr.i.i.i, align 8
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.0.ptr.i.i.i, i64 %.01418.lcssa.i.i
  store i32 0, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.01418.lcssa.i.i
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not.i22 = icmp eq ptr %i.ao, null
  br i1 %.not.i22, label %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.thread.i, label %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit

_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.thread.i: ; preds = %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.i, %bb.g, %_ZN4absl18debugging_internalL18AllocateSymbolizerEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i, i64 26 ; 11 uses
  store i8 0, ptr %i.ap, align 2
  %i.aq = tail call fastcc noundef ptr @_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer11FindObjFileEPKvm(ptr noundef nonnull align 16 dereferenceable(22560) %.0.i, ptr noundef %0) ; 35 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %bb.bk, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.thread.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 6 uses
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.i, label %bb.ap

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %i.aq, align 8
  %i.av = tail call fastcc noundef i32 @_ZN4absl18debugging_internal12_GLOBAL__N_122OpenReadOnlyWithHighFDEPKc(ptr noundef %i.au) ; 3 uses
  store i32 %i.av, ptr %i.ar, align 8
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.j, label %_ZN4absl18debugging_internalL22MaybeOpenFdFromSelfExeEPNS0_12_GLOBAL__N_17ObjFileE.exit.thread.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %i.aq, align 8
  %i.ay = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ax, ptr noundef nonnull dereferenceable(15) @.str.22) #23
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ba = load ptr, ptr @_ZN4abslL11argv0_valueE, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i, label %_ZN4absl18debugging_internalL22MaybeOpenFdFromSelfExeEPNS0_12_GLOBAL__N_17ObjFileE.exitthread-pre-split.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = tail call fastcc noundef i32 @_ZN4absl18debugging_internal12_GLOBAL__N_122OpenReadOnlyWithHighFDEPKc(ptr noundef nonnull %i.ba) ; 2 uses
  store i32 %i.bb, ptr %i.ar, align 8
  br label %_ZN4absl18debugging_internalL22MaybeOpenFdFromSelfExeEPNS0_12_GLOBAL__N_17ObjFileE.exit.i.i.i

bb.m:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = load i32, ptr %i.bd, align 1
  %i.bf = icmp ne i32 %i.be, 1179403647
  %i.bg = zext i1 %i.bf to i32
  %.not.i.i.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i.i, label %bb.n, label %_ZN4absl18debugging_internalL22MaybeOpenFdFromSelfExeEPNS0_12_GLOBAL__N_17ObjFileE.exitthread-pre-split.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.bh = tail call fastcc noundef i32 @_ZN4absl18debugging_internal12_GLOBAL__N_122OpenReadOnlyWithHighFDEPKc(ptr noundef nonnull @.str.22) ; 8 uses
  %i.bi = icmp eq i32 %i.bh, -1
  br i1 %i.bi, label %_ZN4absl18debugging_internalL22MaybeOpenFdFromSelfExeEPNS0_12_GLOBAL__N_17ObjFileE.exitthread-pre-split.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = load ptr, ptr %i.bc, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.bk = call i64 @read(i32 noundef %i.bh, ptr noundef nonnull %i.a, i64 noundef 1024) #21
  %.not18.i.i.i.i = icmp eq i64 %i.bk, 1024
  br i1 %.not18.i.i.i.i, label %bb.p, label %.critedge.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %bcmp19.i.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(1024) %i.a, ptr noundef nonnull dereferenceable(1024) %i.bj, i64 1024)
  %.not20.i.i.i.i = icmp eq i32 %bcmp19.i.i.i.i, 0
  br i1 %.not20.i.i.i.i, label %bb.q, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %i.bl = tail call i32 @close(i32 noundef %i.bh) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZN4absl18debugging_internalL22MaybeOpenFdFromSelfExeEPNS0_12_GLOBAL__N_17ObjFileE.exitthread-pre-split.i.i.i

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.bm = call i64 @read(i32 noundef %i.bh, ptr noundef nonnull %i.a, i64 noundef 1024) #21
  %.not18.1.i.i.i.i = icmp eq i64 %i.bm, 1024
  br i1 %.not18.1.i.i.i.i, label %bb.r, label %.critedge.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 1024
  %bcmp19.1.i.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(1024) %i.a, ptr noundef nonnull dereferenceable(1024) %i.bn, i64 1024)
  %.not20.1.i.i.i.i = icmp eq i32 %bcmp19.1.i.i.i.i, 0
  br i1 %.not20.1.i.i.i.i, label %bb.s, label %.critedge.i.i.i.i

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.bo = call i64 @read(i32 noundef %i.bh, ptr noundef nonnull %i.a, i64 noundef 1024) #21
  %.not18.2.i.i.i.i = icmp eq i64 %i.bo, 1024
  br i1 %.not18.2.i.i.i.i, label %bb.t, label %.critedge.i.i.i.i

end_hunk_0
begin_hunk_1_@_ZN4absl9SymbolizeEPKvPci:bb.a
  %.0.i.i.i.i = select i1 %or.cond.i.not.i.i.i, i32 -1, i32 %i.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.ct = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  store i32 %.0.i.i.i.i, ptr %i.ct, align 4
  br i1 %or.cond.i.not.i.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4absl18debugging_internalL14FileGetElfTypeEPNS0_12_GLOBAL__N_111CachingFileE.exit.i.i.i
  %i.cu = load ptr, ptr %i.aq, align 8
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 52), i32 noundef 1418, ptr noundef nonnull @.str.24, ptr noundef %i.cu, i32 noundef -1) #21
  br label %.thread115.i.i.i

bb.ab:                                            ; preds = %_ZN4absl18debugging_internalL14FileGetElfTypeEPNS0_12_GLOBAL__N_111CachingFileE.exit.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  br label %.lr.ph.split.us.preheader.i.i.i.i.i

.lr.ph.split.us.preheader.i.i.i.i.i:              ; preds = %.outer.i.i.i.i.i, %bb.ab
  %.sroa.27.5.i.i.i = phi i64 [ %.sroa.27.4.i.i.i, %bb.ab ], [ %.sroa.27.6.lcssa.i.i.i, %.outer.i.i.i.i.i ] ; 2 uses
  %.sroa.17.5.i.i.i = phi i64 [ %.sroa.17.4.i.i.i, %bb.ab ], [ %.sroa.17.6.lcssa.i.i.i, %.outer.i.i.i.i.i ] ; 2 uses
  %.028.ph72.i.i.i.i.i = phi i64 [ 0, %bb.ab ], [ %i.dl, %.outer.i.i.i.i.i ] ; 10 uses
  %.029.ph71.i.i.i.i.i = phi ptr [ %i.cv, %bb.ab ], [ %i.dj, %.outer.i.i.i.i.i ] ; 2 uses
  %.030.ph70.i.i.i.i.i = phi i64 [ 0, %bb.ab ], [ %i.dk, %.outer.i.i.i.i.i ] ; 2 uses
  %.not.us.i.i152.i.i.i = icmp sge i64 %.028.ph72.i.i.i.i.i, %.sroa.17.5.i.i.i
  %i.cw = icmp slt i64 %.028.ph72.i.i.i.i.i, %.sroa.27.5.i.i.i
  %or.cond117153.i.i.i = and i1 %.not.us.i.i152.i.i.i, %i.cw
  br i1 %or.cond117153.i.i.i, label %.outer.i.i.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.split.us.preheader.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i
  %i.cx = call i64 @pread64(i32 noundef %i.bx, ptr noundef nonnull %i.b, i64 noundef 100, i64 noundef %.028.ph72.i.i.i.i.i) #21 ; 3 uses
  %i.cy = icmp slt i64 %i.cx, 0
  br i1 %i.cy, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i.i
  %i.cz = icmp eq i64 %i.cx, 0
  br i1 %i.cz, label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.da = add nuw nsw i64 %i.cx, %.028.ph72.i.i.i.i.i
  br label %.lr.ph.split.us.i.i.i.i.i

bb.ae:                                            ; preds = %.lr.ph.i.i.i
  %i.db = tail call ptr @__errno_location() #22
  %i.dc = load i32, ptr %i.db, align 4            ; 2 uses
  %i.dd = icmp eq i32 %i.dc, 4
  br i1 %i.dd, label %.lr.ph.split.us.i.i.i.i.i, label %.thread39.i.i.i.i.i, !llvm.loop !5

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %bb.ae, %bb.ad
  %.sroa.27.7.i.i.i = phi i64 [ 0, %bb.ae ], [ %i.da, %bb.ad ] ; 2 uses
  %.sroa.17.7.i.i.i = phi i64 [ 0, %bb.ae ], [ %.028.ph72.i.i.i.i.i, %bb.ad ] ; 2 uses
  %.not.us.i.i.i.i.i = icmp samesign uge i64 %.028.ph72.i.i.i.i.i, %.sroa.17.7.i.i.i
  %i.de = icmp slt i64 %.028.ph72.i.i.i.i.i, %.sroa.27.7.i.i.i
  %or.cond117.i.i.i = select i1 %.not.us.i.i.i.i.i, i1 %i.de, i1 false
  br i1 %or.cond117.i.i.i, label %.outer.i.i.i.i.i, label %.lr.ph.i.i.i

.outer.i.i.i.i.i:                                 ; preds = %.lr.ph.split.us.i.i.i.i.i, %.lr.ph.split.us.preheader.i.i.i.i.i
  %.sroa.27.6.lcssa.i.i.i = phi i64 [ %.sroa.27.5.i.i.i, %.lr.ph.split.us.preheader.i.i.i.i.i ], [ %.sroa.27.7.i.i.i, %.lr.ph.split.us.i.i.i.i.i ] ; 3 uses
  %.sroa.17.6.lcssa.i.i.i = phi i64 [ %.sroa.17.5.i.i.i, %.lr.ph.split.us.preheader.i.i.i.i.i ], [ %.sroa.17.7.i.i.i, %.lr.ph.split.us.i.i.i.i.i ] ; 3 uses
  %i.df = sub nsw i64 %.028.ph72.i.i.i.i.i, %.sroa.17.6.lcssa.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.df
  %i.dh = sub nuw nsw i64 64, %.030.ph70.i.i.i.i.i
  %i.di = sub nsw i64 %.sroa.27.6.lcssa.i.i.i, %.028.ph72.i.i.i.i.i
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.di, i64 %i.dh) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.029.ph71.i.i.i.i.i, ptr nonnull align 1 %i.dg, i64 %.sroa.speculated.i.i.i.i.i, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %.029.ph71.i.i.i.i.i, i64 %.sroa.speculated.i.i.i.i.i
  %i.dk = add nuw nsw i64 %.sroa.speculated.i.i.i.i.i, %.030.ph70.i.i.i.i.i ; 2 uses
  %i.dl = add nuw nsw i64 %.sroa.speculated.i.i.i.i.i, %.028.ph72.i.i.i.i.i
  %i.dm = icmp samesign ult i64 %i.dk, 64
  br i1 %i.dm, label %.lr.ph.split.us.preheader.i.i.i.i.i, label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.i.i.i

.thread39.i.i.i.i.i:                              ; preds = %bb.ae
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 52), i32 noundef 518, ptr noundef nonnull @.str.6, i32 noundef %i.dc) #21
  br label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread.i.i.i

_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread.i.i.i: ; preds = %bb.ac, %.thread39.i.i.i.i.i
  %i.dn = load ptr, ptr %i.aq, align 8
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 52), i32 noundef 1424, ptr noundef nonnull @.str.25, ptr noundef %i.dn) #21
  br label %.thread115.i.i.i

_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.i.i.i: ; preds = %.outer.i.i.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  %i.dp = load i16, ptr %i.do, align 8            ; 2 uses
  %i.dq = zext i16 %i.dp to i32
  %.not168.i.i.i = icmp eq i16 %i.dp, 0
  br i1 %.not168.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph166.i.i.i

.lr.ph166.i.i.i:                                  ; preds = %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.aq, i64 94
  %i.du = load i16, ptr %i.dt, align 2
  %i.dv = zext i16 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.aq, i64 104
  br label %bb.af

bb.af:                                            ; preds = %bb.an, %.lr.ph166.i.i.i
  %.044165.i.i.i = phi i64 [ %i.ds, %.lr.ph166.i.i.i ], [ %i.eq, %bb.an ] ; 2 uses
  %.046164.i.i.i = phi i64 [ 0, %.lr.ph166.i.i.i ], [ %.248.ph.i.i.i, %bb.an ] ; 6 uses
  %.050163.i.i.i = phi i32 [ 0, %.lr.ph166.i.i.i ], [ %i.ey, %bb.an ] ; 2 uses
  %.sroa.17.0162.i.i.i = phi i64 [ %.sroa.17.6.lcssa.i.i.i, %.lr.ph166.i.i.i ], [ %.sroa.17.12.i.i.i, %bb.an ]
  %.sroa.27.0161.i.i.i = phi i64 [ %.sroa.27.6.lcssa.i.i.i, %.lr.ph166.i.i.i ], [ %.sroa.27.12.i.i.i, %bb.an ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  br label %.lr.ph.split.us.preheader.i.i57.i.i.i

.lr.ph.split.us.preheader.i.i57.i.i.i:            ; preds = %.outer.i.i65.i.i.i, %bb.af
  %.sroa.27.9.i.i.i = phi i64 [ %.sroa.27.0161.i.i.i, %bb.af ], [ %.sroa.27.10.lcssa.i.i.i, %.outer.i.i65.i.i.i ] ; 2 uses
  %.sroa.17.9.i.i.i = phi i64 [ %.sroa.17.0162.i.i.i, %bb.af ], [ %.sroa.17.10.lcssa.i.i.i, %.outer.i.i65.i.i.i ] ; 2 uses
  %.028.ph72.i.i58.i.i.i = phi i64 [ %.044165.i.i.i, %bb.af ], [ %i.en, %.outer.i.i65.i.i.i ] ; 10 uses
  %.029.ph71.i.i59.i.i.i = phi ptr [ %7, %bb.af ], [ %i.el, %.outer.i.i65.i.i.i ] ; 2 uses
  %.030.ph70.i.i60.i.i.i = phi i64 [ 0, %bb.af ], [ %i.em, %.outer.i.i65.i.i.i ] ; 3 uses
  %.not.us.i.i62156.i.i.i = icmp sge i64 %.028.ph72.i.i58.i.i.i, %.sroa.17.9.i.i.i
  %i.dy = icmp slt i64 %.028.ph72.i.i58.i.i.i, %.sroa.27.9.i.i.i
  %or.cond118157.i.i.i = and i1 %.not.us.i.i62156.i.i.i, %i.dy
  br i1 %or.cond118157.i.i.i, label %.outer.i.i65.i.i.i, label %.lr.ph158.i.i.i

.lr.ph158.i.i.i:                                  ; preds = %.lr.ph.split.us.preheader.i.i57.i.i.i, %.lr.ph.split.us.i.i61.i.i.i
  %i.dz = call i64 @pread64(i32 noundef %i.bx, ptr noundef nonnull %i.b, i64 noundef 100, i64 noundef %.028.ph72.i.i58.i.i.i) #21 ; 3 uses
  %i.ea = icmp slt i64 %i.dz, 0
  br i1 %i.ea, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph158.i.i.i
  %i.eb = icmp eq i64 %i.dz, 0
  br i1 %i.eb, label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit67.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ec = add nsw i64 %i.dz, %.028.ph72.i.i58.i.i.i
  br label %.lr.ph.split.us.i.i61.i.i.i

bb.ai:                                            ; preds = %.lr.ph158.i.i.i
  %i.ed = tail call ptr @__errno_location() #22
  %i.ee = load i32, ptr %i.ed, align 4            ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 4
  br i1 %i.ef, label %.lr.ph.split.us.i.i61.i.i.i, label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit67.thread.i.i.i, !llvm.loop !5

.lr.ph.split.us.i.i61.i.i.i:                      ; preds = %bb.ai, %bb.ah
  %.sroa.27.11.i.i.i = phi i64 [ 0, %bb.ai ], [ %i.ec, %bb.ah ] ; 2 uses
  %.sroa.17.11.i.i.i = phi i64 [ 0, %bb.ai ], [ %.028.ph72.i.i58.i.i.i, %bb.ah ] ; 2 uses
  %.not.us.i.i62.i.i.i = icmp sge i64 %.028.ph72.i.i58.i.i.i, %.sroa.17.11.i.i.i
  %i.eg = icmp slt i64 %.028.ph72.i.i58.i.i.i, %.sroa.27.11.i.i.i
  %or.cond118.i.i.i = select i1 %.not.us.i.i62.i.i.i, i1 %i.eg, i1 false
  br i1 %or.cond118.i.i.i, label %.outer.i.i65.i.i.i, label %.lr.ph158.i.i.i

.outer.i.i65.i.i.i:                               ; preds = %.lr.ph.split.us.i.i61.i.i.i, %.lr.ph.split.us.preheader.i.i57.i.i.i
  %.sroa.27.10.lcssa.i.i.i = phi i64 [ %.sroa.27.9.i.i.i, %.lr.ph.split.us.preheader.i.i57.i.i.i ], [ %.sroa.27.11.i.i.i, %.lr.ph.split.us.i.i61.i.i.i ] ; 3 uses
  %.sroa.17.10.lcssa.i.i.i = phi i64 [ %.sroa.17.9.i.i.i, %.lr.ph.split.us.preheader.i.i57.i.i.i ], [ %.sroa.17.11.i.i.i, %.lr.ph.split.us.i.i61.i.i.i ] ; 3 uses
  %i.eh = sub nsw i64 %.028.ph72.i.i58.i.i.i, %.sroa.17.10.lcssa.i.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.eh
  %i.ej = sub nuw nsw i64 56, %.030.ph70.i.i60.i.i.i
  %i.ek = sub nsw i64 %.sroa.27.10.lcssa.i.i.i, %.028.ph72.i.i58.i.i.i
  %.sroa.speculated.i.i66.i.i.i = call i64 @llvm.umin.i64(i64 %i.ek, i64 %i.ej) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.029.ph71.i.i59.i.i.i, ptr nonnull align 1 %i.ei, i64 %.sroa.speculated.i.i66.i.i.i, i1 false)
  %i.el = getelementptr inbounds nuw i8, ptr %.029.ph71.i.i59.i.i.i, i64 %.sroa.speculated.i.i66.i.i.i
  %i.em = add nuw nsw i64 %.sroa.speculated.i.i66.i.i.i, %.030.ph70.i.i60.i.i.i ; 3 uses
  %i.en = add nsw i64 %.sroa.speculated.i.i66.i.i.i, %.028.ph72.i.i58.i.i.i
  %i.eo = icmp samesign ult i64 %i.em, 56
  br i1 %i.eo, label %.lr.ph.split.us.preheader.i.i57.i.i.i, label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit67.i.i.i

_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit67.thread.i.i.i: ; preds = %bb.ai
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 52), i32 noundef 518, ptr noundef nonnull @.str.6, i32 noundef %i.ee) #21
  br label %.loopexit.i.i.i

_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit67.i.i.i: ; preds = %.outer.i.i65.i.i.i, %bb.ag
  %.sroa.27.12.i.i.i = phi i64 [ 0, %bb.ag ], [ %.sroa.27.10.lcssa.i.i.i, %.outer.i.i65.i.i.i ]
  %.sroa.17.12.i.i.i = phi i64 [ 0, %bb.ag ], [ %.sroa.17.10.lcssa.i.i.i, %.outer.i.i65.i.i.i ]
  %.2.i.i63.i.i.i = phi i64 [ %.030.ph70.i.i60.i.i.i, %bb.ag ], [ %i.em, %.outer.i.i65.i.i.i ]
  %i.ep = icmp eq i64 %.2.i.i63.i.i.i, 56
  br i1 %i.ep, label %bb.aj, label %.loopexit.i.i.i

bb.aj:                                            ; preds = %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit67.i.i.i
  %i.eq = add nsw i64 %.044165.i.i.i, %i.dv
  %i.er = load i32, ptr %7, align 8
  %.not54.i.i.i = icmp eq i32 %i.er, 1
  br i1 %.not54.i.i.i, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.es = load i32, ptr %i.dw, align 4
  %i.et = and i32 %i.es, 5
  %.not55.i.i.i = icmp eq i32 %i.et, 5
  br i1 %.not55.i.i.i, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.eu = icmp ult i64 %.046164.i.i.i, 4
  br i1 %i.eu, label %bb.am, label %.thread113.i.i.i

bb.am:                                            ; preds = %bb.al
  %i.ev = add nuw nsw i64 %.046164.i.i.i, 1
  %i.ew = getelementptr inbounds nuw [56 x i8], ptr %i.dx, i64 %.046164.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ew, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false)
  br label %bb.an

.thread113.i.i.i:                                 ; preds = %bb.al
  %i.ex = load ptr, ptr %i.aq, align 8
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 52), i32 noundef 1462, ptr noundef nonnull @.str.27, ptr noundef %i.ex, i64 noundef %.046164.i.i.i, i64 noundef 4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.ao

bb.an:                                            ; preds = %bb.am, %bb.ak, %bb.aj
  %.248.ph.i.i.i = phi i64 [ %.046164.i.i.i, %bb.aj ], [ %.046164.i.i.i, %bb.ak ], [ %i.ev, %bb.am ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.ey = add nuw nsw i32 %.050163.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.ey, %i.dq
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %bb.af, !llvm.loop !14

.loopexit.i.i.i:                                  ; preds = %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit67.i.i.i, %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit67.thread.i.i.i
  %i.ez = load ptr, ptr %i.aq, align 8
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 52), i32 noundef 1435, ptr noundef nonnull @.str.26, ptr noundef %i.ez, i32 noundef %.050163.i.i.i) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %.thread115.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.an
  %i.fa = icmp eq i64 %.248.ph.i.i.i, 0
  br i1 %i.fa, label %._crit_edge.thread.i.i.i, label %bb.ao

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.i.i.i
  %i.fb = load ptr, ptr %i.aq, align 8
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 52), i32 noundef 1468, ptr noundef nonnull @.str.28, ptr noundef %i.fb) #21
  br label %.thread115.i.i.i

.thread115.i.i.i:                                 ; preds = %._crit_edge.thread.i.i.i, %.loopexit.i.i.i, %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %_ZN4absl18debugging_internalL22MaybeInitializeObjFileEPNS0_12_GLOBAL__N_17ObjFileE.exit.i.i

bb.ao:                                            ; preds = %._crit_edge.i.i.i, %.thread113.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.h
  %i.fc = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = ptrtoint ptr %i.fd to i64               ; 7 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  %i.fg = load i32, ptr %i.ff, align 4
  %i.fh = icmp eq i32 %i.fg, 3
  br i1 %i.fh, label %bb.aq, label %bb.ba

bb.aq:                                            ; preds = %bb.ap
  %i.fi = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.fj = load i64, ptr %i.fi, align 8            ; 2 uses
  %.not57.i.i = icmp ugt i64 %i.fj, %i.fe
  br i1 %.not57.i.i, label %bb.ba, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fk = sub nuw i64 %i.fe, %i.fj                ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.aq, i64 104 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 8
  switch i32 %i.fm, label %bb.ay [
    i32 1, label %bb.az
    i32 0, label %.thread.thread.i.i
  ], !prof !15

bb.as:                                            ; preds = %bb.az
  %i.fn = getelementptr inbounds nuw i8, ptr %i.aq, i64 160 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 8
  switch i32 %i.fo, label %bb.ay [
    i32 1, label %bb.at
    i32 0, label %.thread.thread.i.i
  ], !prof !15

bb.at:                                            ; preds = %bb.as
  %i.fp = getelementptr inbounds nuw i8, ptr %i.aq, i64 176
  %i.fq = load i64, ptr %i.fp, align 8
  %i.fr = add i64 %i.fq, %i.fe
  %i.fs = getelementptr inbounds nuw i8, ptr %i.aq, i64 200
  %i.ft = load i64, ptr %i.fs, align 8
  %i.fu = add i64 %i.fr, %i.ft
  %i.fv = inttoptr i64 %i.fu to ptr
  %.not80.1.i.i = icmp ult ptr %0, %i.fv
  br i1 %.not80.1.i.i, label %.thread.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fw = getelementptr inbounds nuw i8, ptr %i.aq, i64 216 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 8
  switch i32 %i.fx, label %bb.ay [
    i32 1, label %bb.av
    i32 0, label %.thread.thread.i.i
  ], !prof !15

bb.av:                                            ; preds = %bb.au
  %i.fy = getelementptr inbounds nuw i8, ptr %i.aq, i64 232
  %i.fz = load i64, ptr %i.fy, align 8
  %i.ga = add i64 %i.fz, %i.fe
  %i.gb = getelementptr inbounds nuw i8, ptr %i.aq, i64 256
  %i.gc = load i64, ptr %i.gb, align 8
  %i.gd = add i64 %i.ga, %i.gc
  %i.ge = inttoptr i64 %i.gd to ptr
  %.not80.2.i.i = icmp ult ptr %0, %i.ge
  br i1 %.not80.2.i.i, label %.thread.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gf = getelementptr inbounds nuw i8, ptr %i.aq, i64 272 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 8
  switch i32 %i.gg, label %bb.ay [
    i32 1, label %bb.ax
    i32 0, label %.thread.thread.i.i
  ], !prof !15

bb.ax:                                            ; preds = %bb.aw
  %i.gh = getelementptr inbounds nuw i8, ptr %i.aq, i64 288
  %i.gi = load i64, ptr %i.gh, align 8
  %i.gj = add i64 %i.gi, %i.fe
  %i.gk = getelementptr inbounds nuw i8, ptr %i.aq, i64 312
  %i.gl = load i64, ptr %i.gk, align 8
  %i.gm = add i64 %i.gj, %i.gl
  %i.gn = inttoptr i64 %i.gm to ptr
  %.not80.3.i.i = icmp ult ptr %0, %i.gn
  br i1 %.not80.3.i.i, label %.thread.i.i, label %.thread.thread.i.i

bb.ay:                                            ; preds = %bb.aw, %bb.au, %bb.as, %bb.ar
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 52), i32 noundef 1504, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #21
  call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str, i32 noundef 1504, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer17GetUncachedSymbolEPKv) #24
  unreachable

bb.az:                                            ; preds = %bb.ar
  %i.go = getelementptr inbounds nuw i8, ptr %i.aq, i64 120
  %i.gp = load i64, ptr %i.go, align 8
  %i.gq = add i64 %i.gp, %i.fe
  %i.gr = getelementptr inbounds nuw i8, ptr %i.aq, i64 144
  %i.gs = load i64, ptr %i.gr, align 8
  %i.gt = add i64 %i.gq, %i.gs
  %i.gu = inttoptr i64 %i.gt to ptr
  %.not80.i.i = icmp ult ptr %0, %i.gu
  br i1 %.not80.i.i, label %.thread.i.i, label %bb.as

.thread.thread.i.i:                               ; preds = %bb.ax, %bb.aw, %bb.au, %bb.as, %bb.ar
  %i.gv = load ptr, ptr %i.aq, align 8
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 52), i32 noundef 1518, ptr noundef nonnull @.str.11, ptr noundef %i.gv, ptr noundef %0, i64 noundef %i.fe) #21
  br label %bb.ba

.thread.i.i:                                      ; preds = %bb.az, %bb.ax, %bb.av, %bb.at
  %.250.i.i = phi ptr [ %i.fl, %bb.az ], [ %i.fn, %bb.at ], [ %i.fw, %bb.av ], [ %i.gf, %bb.ax ] ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.250.i.i, i64 16
  %i.gx = load i64, ptr %i.gw, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %.250.i.i, i64 8
  %i.gz = load i64, ptr %i.gy, align 8
  %.neg.i.i = sub i64 %i.fk, %i.gx
  %i.ha = add i64 %.neg.i.i, %i.gz
  br label %bb.ba

bb.ba:                                            ; preds = %.thread.i.i, %.thread.thread.i.i, %bb.aq, %bb.ap
  %.1.i.i = phi i64 [ 0, %bb.ap ], [ 0, %bb.aq ], [ %i.fk, %.thread.thread.i.i ], [ %i.ha, %.thread.i.i ] ; 5 uses
  %i.hb = load i32, ptr %i.ar, align 8            ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.0.i, i64 11296 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.hd = getelementptr inbounds nuw i8, ptr %.0.i, i64 3098
  store i32 %i.hb, ptr %5, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr %i.hd, ptr %i.he, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i64 8192, ptr %i.hf, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hg, i8 0, i64 16, i1 false)
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.aq, i64 100 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.aq, i64 80 ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.hm = load i16, ptr %i.hi, align 4
  %i.hn = load i64, ptr %i.hj, align 8
  %i.ho = call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL22GetSectionHeaderByTypeEPNS0_12_GLOBAL__N_111CachingFileEtljP10Elf64_ShdrPcm(ptr noundef %5, i16 noundef zeroext %i.hm, i64 noundef %i.hn, i32 noundef 2, ptr noundef %3, ptr noundef nonnull %i.hc)
  br i1 %i.ho, label %bb.bb, label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread.i60.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.hp = load i64, ptr %i.hj, align 8
  %i.hq = load i32, ptr %i.hk, align 8
  %i.hr = zext i32 %i.hq to i64
  %i.hs = shl nuw nsw i64 %i.hr, 6
  %i.ht = add i64 %i.hs, %i.hp
  %i.hu = load i32, ptr %5, align 8
  %i.hv = load ptr, ptr %i.he, align 8            ; 2 uses
  %i.hw = load i64, ptr %i.hf, align 8
  %.pre.pre.i.i.i = load i64, ptr %i.hg, align 8
  %.pre50.pre.i.i.i = load i64, ptr %i.hl, align 8
  br label %.lr.ph.split.us.preheader.i.i.i61.i.i

.lr.ph.split.us.preheader.i.i.i61.i.i:            ; preds = %.outer.i.i.i69.i.i, %bb.bb
  %.pre50.i.i.i = phi i64 [ %.pre50.pre.i.i.i, %bb.bb ], [ %.pre5055.i.lcssa.i.i, %.outer.i.i.i69.i.i ] ; 2 uses
  %.pre.i.i.i = phi i64 [ %.pre.pre.i.i.i, %bb.bb ], [ %.pre53.i.lcssa.i.i, %.outer.i.i.i69.i.i ] ; 2 uses
  %.028.ph72.i.i.i62.i.i = phi i64 [ %i.ht, %bb.bb ], [ %i.io, %.outer.i.i.i69.i.i ] ; 11 uses
  %.029.ph71.i.i.i63.i.i = phi ptr [ %4, %bb.bb ], [ %i.im, %.outer.i.i.i69.i.i ] ; 2 uses
  %.030.ph70.i.i.i64.i.i = phi i64 [ 0, %bb.bb ], [ %i.in, %.outer.i.i.i69.i.i ] ; 2 uses
  %.not.us.i.i.i66112.i.i = icmp sge i64 %.028.ph72.i.i.i62.i.i, %.pre.i.i.i
  %i.hx = icmp slt i64 %.028.ph72.i.i.i62.i.i, %.pre50.i.i.i
  %or.cond.i67113.i.i = select i1 %.not.us.i.i.i66112.i.i, i1 %i.hx, i1 false
  br i1 %or.cond.i67113.i.i, label %.outer.i.i.i69.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split.us.preheader.i.i.i61.i.i, %.lr.ph.split.us.i.i.i65.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hg, i8 0, i64 16, i1 false)
  %i.hy = call i64 @pread64(i32 noundef %i.hu, ptr noundef %i.hv, i64 noundef %i.hw, i64 noundef %.028.ph72.i.i.i62.i.i) #21 ; 3 uses
  %i.hz = icmp slt i64 %i.hy, 0
  br i1 %i.hz, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i
  %i.ia = icmp eq i64 %i.hy, 0
  br i1 %i.ia, label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread.i60.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store i64 %.028.ph72.i.i.i62.i.i, ptr %i.hg, align 8
  %i.ib = add nsw i64 %i.hy, %.028.ph72.i.i.i62.i.i ; 2 uses
  store i64 %i.ib, ptr %i.hl, align 8
  br label %.lr.ph.split.us.i.i.i65.i.i

bb.be:                                            ; preds = %.lr.ph.i.i
  %i.ic = tail call ptr @__errno_location() #22
  %i.id = load i32, ptr %i.ic, align 4            ; 2 uses
  %i.ie = icmp eq i32 %i.id, 4
  br i1 %i.ie, label %.lr.ph.split.us.i.i.i65.i.i, label %.thread39.i.i.i68.i.i, !llvm.loop !5

.lr.ph.split.us.i.i.i65.i.i:                      ; preds = %bb.be, %bb.bd
  %i.if = phi i64 [ 0, %bb.be ], [ %i.ib, %bb.bd ] ; 2 uses
  %i.ig = phi i64 [ 0, %bb.be ], [ %.028.ph72.i.i.i62.i.i, %bb.bd ] ; 2 uses
  %.not.us.i.i.i66.i.i = icmp sge i64 %.028.ph72.i.i.i62.i.i, %i.ig
  %i.ih = icmp slt i64 %.028.ph72.i.i.i62.i.i, %i.if
  %or.cond.i67.i.i = select i1 %.not.us.i.i.i66.i.i, i1 %i.ih, i1 false
  br i1 %or.cond.i67.i.i, label %.outer.i.i.i69.i.i, label %.lr.ph.i.i

.outer.i.i.i69.i.i:                               ; preds = %.lr.ph.split.us.i.i.i65.i.i, %.lr.ph.split.us.preheader.i.i.i61.i.i
  %.pre5055.i.lcssa.i.i = phi i64 [ %.pre50.i.i.i, %.lr.ph.split.us.preheader.i.i.i61.i.i ], [ %i.if, %.lr.ph.split.us.i.i.i65.i.i ] ; 2 uses
  %.pre53.i.lcssa.i.i = phi i64 [ %.pre.i.i.i, %.lr.ph.split.us.preheader.i.i.i61.i.i ], [ %i.ig, %.lr.ph.split.us.i.i.i65.i.i ] ; 2 uses
  %i.ii = sub nsw i64 %.028.ph72.i.i.i62.i.i, %.pre53.i.lcssa.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.ii
  %i.ik = sub nuw nsw i64 64, %.030.ph70.i.i.i64.i.i
  %i.il = sub nsw i64 %.pre5055.i.lcssa.i.i, %.028.ph72.i.i.i62.i.i
  %.sroa.speculated.i.i.i70.i.i = call i64 @llvm.umin.i64(i64 %i.il, i64 %i.ik) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.029.ph71.i.i.i63.i.i, ptr align 1 %i.ij, i64 %.sroa.speculated.i.i.i70.i.i, i1 false)
  %i.im = getelementptr inbounds nuw i8, ptr %.029.ph71.i.i.i63.i.i, i64 %.sroa.speculated.i.i.i70.i.i
  %i.in = add nuw nsw i64 %.sroa.speculated.i.i.i70.i.i, %.030.ph70.i.i.i64.i.i ; 2 uses
  %i.io = add nsw i64 %.sroa.speculated.i.i.i70.i.i, %.028.ph72.i.i.i62.i.i
  %i.ip = icmp samesign ult i64 %i.in, 64
  br i1 %i.ip, label %.lr.ph.split.us.preheader.i.i.i61.i.i, label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.i71.i.i

.thread39.i.i.i68.i.i:                            ; preds = %bb.be
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 52), i32 noundef 518, ptr noundef nonnull @.str.6, i32 noundef %i.id) #21
  br label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread.i60.i.i

_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.i71.i.i: ; preds = %.outer.i.i.i69.i.i
  %.val.i.i.i = load i64, ptr %i.hh, align 8
  %i.iq = call fastcc noundef i32 @_ZN4absl18debugging_internalL10FindSymbolEPKvPNS0_12_GLOBAL__N_111CachingFileEPcmlPK10Elf64_ShdrS9_S9_S6_m(ptr noundef readnone %0, ptr noundef %5, ptr noundef nonnull %i.ap, i64 noundef %.1.i.i, i64 %.val.i.i.i, ptr noundef %3, ptr noundef nonnull %i.hc) ; 2 uses
  %.not32.i.i.i = icmp eq i32 %i.iq, 1
  br i1 %.not32.i.i.i, label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread.i60.i.i, label %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS1_7ObjFileEPKvlPcmS8_m.exit.i.i

_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread.i60.i.i: ; preds = %bb.bc, %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.i71.i.i, %.thread39.i.i.i68.i.i, %bb.ba
  %i.ir = load i16, ptr %i.hi, align 4
  %i.is = load i64, ptr %i.hj, align 8
  %i.it = call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL22GetSectionHeaderByTypeEPNS0_12_GLOBAL__N_111CachingFileEtljP10Elf64_ShdrPcm(ptr noundef %5, i16 noundef zeroext %i.ir, i64 noundef %i.is, i32 noundef 11, ptr noundef %3, ptr noundef nonnull %i.hc)
  br i1 %i.it, label %bb.bf, label %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS1_7ObjFileEPKvlPcmS8_m.exit.thread.i.i

bb.bf:                                            ; preds = %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread.i60.i.i
  %i.iu = load i64, ptr %i.hj, align 8
  %i.iv = load i32, ptr %i.hk, align 8
  %i.iw = zext i32 %i.iv to i64
  %i.ix = shl nuw nsw i64 %i.iw, 6
  %i.iy = add i64 %i.ix, %i.iu
  %i.iz = load i32, ptr %5, align 8
  %i.ja = load ptr, ptr %i.he, align 8            ; 2 uses
  %i.jb = load i64, ptr %i.hf, align 8
  %.pre51.pre.i.i.i = load i64, ptr %i.hg, align 8
  %.pre52.pre.i.i.i = load i64, ptr %i.hl, align 8
  br label %.lr.ph.split.us.preheader.i.i.1.i.i.i

.lr.ph.split.us.preheader.i.i.1.i.i.i:            ; preds = %.outer.i.i.1.i.i.i, %bb.bf
  %.pre52.i.i.i = phi i64 [ %.pre52.pre.i.i.i, %bb.bf ], [ %.pre5259.i.lcssa.i.i, %.outer.i.i.1.i.i.i ] ; 2 uses
  %.pre51.i.i.i = phi i64 [ %.pre51.pre.i.i.i, %bb.bf ], [ %.pre5157.i.lcssa.i.i, %.outer.i.i.1.i.i.i ] ; 2 uses
  %.028.ph72.i.i.1.i.i.i = phi i64 [ %i.iy, %bb.bf ], [ %i.jt, %.outer.i.i.1.i.i.i ] ; 11 uses
  %.029.ph71.i.i.1.i.i.i = phi ptr [ %4, %bb.bf ], [ %i.jr, %.outer.i.i.1.i.i.i ] ; 2 uses
  %.030.ph70.i.i.1.i.i.i = phi i64 [ 0, %bb.bf ], [ %i.js, %.outer.i.i.1.i.i.i ] ; 2 uses
  %.not.us.i.i.1.i115.i.i = icmp sge i64 %.028.ph72.i.i.1.i.i.i, %.pre51.i.i.i
  %i.jc = icmp slt i64 %.028.ph72.i.i.1.i.i.i, %.pre52.i.i.i
  %or.cond.1.i116.i.i = select i1 %.not.us.i.i.1.i115.i.i, i1 %i.jc, i1 false
  br i1 %or.cond.1.i116.i.i, label %.outer.i.i.1.i.i.i, label %.lr.ph117.i.i

.lr.ph117.i.i:                                    ; preds = %.lr.ph.split.us.preheader.i.i.1.i.i.i, %.lr.ph.split.us.i.i.1.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hg, i8 0, i64 16, i1 false)
  %i.jd = call i64 @pread64(i32 noundef %i.iz, ptr noundef %i.ja, i64 noundef %i.jb, i64 noundef %.028.ph72.i.i.1.i.i.i) #21 ; 3 uses
  %i.je = icmp slt i64 %i.jd, 0
  br i1 %i.je, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph117.i.i
  %i.jf = icmp eq i64 %i.jd, 0
  br i1 %i.jf, label %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS1_7ObjFileEPKvlPcmS8_m.exit.thread.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store i64 %.028.ph72.i.i.1.i.i.i, ptr %i.hg, align 8
  %i.jg = add nsw i64 %i.jd, %.028.ph72.i.i.1.i.i.i ; 2 uses
  store i64 %i.jg, ptr %i.hl, align 8
  br label %.lr.ph.split.us.i.i.1.i.i.i

bb.bi:                                            ; preds = %.lr.ph117.i.i
  %i.jh = tail call ptr @__errno_location() #22
  %i.ji = load i32, ptr %i.jh, align 4            ; 2 uses
  %i.jj = icmp eq i32 %i.ji, 4
  br i1 %i.jj, label %.lr.ph.split.us.i.i.1.i.i.i, label %.thread39.i.i.1.i.i.i, !llvm.loop !5

.thread39.i.i.1.i.i.i:                            ; preds = %bb.bi
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 52), i32 noundef 518, ptr noundef nonnull @.str.6, i32 noundef %i.ji) #21
  br label %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS1_7ObjFileEPKvlPcmS8_m.exit.thread.i.i

.lr.ph.split.us.i.i.1.i.i.i:                      ; preds = %bb.bi, %bb.bh
  %i.jk = phi i64 [ 0, %bb.bi ], [ %i.jg, %bb.bh ] ; 2 uses
  %i.jl = phi i64 [ 0, %bb.bi ], [ %.028.ph72.i.i.1.i.i.i, %bb.bh ] ; 2 uses
  %.not.us.i.i.1.i.i.i = icmp sge i64 %.028.ph72.i.i.1.i.i.i, %i.jl
  %i.jm = icmp slt i64 %.028.ph72.i.i.1.i.i.i, %i.jk
  %or.cond.1.i.i.i = select i1 %.not.us.i.i.1.i.i.i, i1 %i.jm, i1 false
  br i1 %or.cond.1.i.i.i, label %.outer.i.i.1.i.i.i, label %.lr.ph117.i.i

.outer.i.i.1.i.i.i:                               ; preds = %.lr.ph.split.us.i.i.1.i.i.i, %.lr.ph.split.us.preheader.i.i.1.i.i.i
  %.pre5259.i.lcssa.i.i = phi i64 [ %.pre52.i.i.i, %.lr.ph.split.us.preheader.i.i.1.i.i.i ], [ %i.jk, %.lr.ph.split.us.i.i.1.i.i.i ] ; 2 uses
  %.pre5157.i.lcssa.i.i = phi i64 [ %.pre51.i.i.i, %.lr.ph.split.us.preheader.i.i.1.i.i.i ], [ %i.jl, %.lr.ph.split.us.i.i.1.i.i.i ] ; 2 uses
  %i.jn = sub nsw i64 %.028.ph72.i.i.1.i.i.i, %.pre5157.i.lcssa.i.i
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jn
  %i.jp = sub nuw nsw i64 64, %.030.ph70.i.i.1.i.i.i
  %i.jq = sub nsw i64 %.pre5259.i.lcssa.i.i, %.028.ph72.i.i.1.i.i.i
  %.sroa.speculated.i.i.1.i.i.i = call i64 @llvm.umin.i64(i64 %i.jq, i64 %i.jp) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.029.ph71.i.i.1.i.i.i, ptr align 1 %i.jo, i64 %.sroa.speculated.i.i.1.i.i.i, i1 false)
  %i.jr = getelementptr inbounds nuw i8, ptr %.029.ph71.i.i.1.i.i.i, i64 %.sroa.speculated.i.i.1.i.i.i
  %i.js = add nuw nsw i64 %.sroa.speculated.i.i.1.i.i.i, %.030.ph70.i.i.1.i.i.i ; 2 uses
  %i.jt = add nsw i64 %.sroa.speculated.i.i.1.i.i.i, %.028.ph72.i.i.1.i.i.i
  %i.ju = icmp samesign ult i64 %i.js, 64
  br i1 %i.ju, label %.lr.ph.split.us.preheader.i.i.1.i.i.i, label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.1.i.i.i

_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.1.i.i.i: ; preds = %.outer.i.i.1.i.i.i
  %.val.1.i.i.i = load i64, ptr %i.hh, align 8
  %i.jv = call fastcc noundef i32 @_ZN4absl18debugging_internalL10FindSymbolEPKvPNS0_12_GLOBAL__N_111CachingFileEPcmlPK10Elf64_ShdrS9_S9_S6_m(ptr noundef readnone %0, ptr noundef %5, ptr noundef nonnull %i.ap, i64 noundef %.1.i.i, i64 %.val.1.i.i.i, ptr noundef %3, ptr noundef nonnull %i.hc) ; 2 uses
  %.not32.1.i.i.i = icmp eq i32 %i.jv, 1
  br i1 %.not32.1.i.i.i, label %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS1_7ObjFileEPKvlPcmS8_m.exit.thread.i.i, label %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS1_7ObjFileEPKvlPcmS8_m.exit.i.i

_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS1_7ObjFileEPKvlPcmS8_m.exit.thread.i.i: ; preds = %bb.bg, %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.1.i.i.i, %.thread39.i.i.1.i.i.i, %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread.i60.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN4absl18debugging_internalL22MaybeInitializeObjFileEPNS0_12_GLOBAL__N_17ObjFileE.exit.i.i

_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS1_7ObjFileEPKvlPcmS8_m.exit.i.i: ; preds = %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.1.i.i.i, %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.i71.i.i
  %spec.select.i.i.i = phi i32 [ %i.jv, %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.1.i.i.i ], [ %i.iq, %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.i71.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.jw = icmp eq i32 %spec.select.i.i.i, 3
  br i1 %i.jw, label %bb.bj, label %_ZN4absl18debugging_internalL22MaybeInitializeObjFileEPNS0_12_GLOBAL__N_17ObjFileE.exit.i.i

bb.bj:                                            ; preds = %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS1_7ObjFileEPKvlPcmS8_m.exit.i.i
  call fastcc void @_ZN4absl18debugging_internalL15DemangleInplaceEPcmS1_m(ptr noundef %i.ap, ptr noundef %i.hc)
  br label %_ZN4absl18debugging_internalL22MaybeInitializeObjFileEPNS0_12_GLOBAL__N_17ObjFileE.exit.i.i

bb.bk:                                            ; preds = %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @_ZN4absl18debugging_internal11VDSOSupportC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %8) #21
  %i.jx = load ptr, ptr %8, align 8
  %.not81.i.i = icmp eq ptr %i.jx, null
  br i1 %.not81.i.i, label %bb.bq, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.jy = call noundef zeroext i1 @_ZNK4absl18debugging_internal11VDSOSupport21LookupSymbolByAddressEPKvPNS0_11ElfMemImage10SymbolInfoE(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef %0, ptr noundef nonnull %9) #21
  br i1 %i.jy, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  %i.jz = load ptr, ptr %9, align 8               ; 2 uses
  %i.ka = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jz) #23
  %i.kb = add i64 %i.ka, 1                        ; 2 uses
  %i.kc = icmp ugt i64 %i.kb, 3071
  br i1 %i.kc, label %bb.bn, label %bb.bo, !prof !12

bb.bn:                                            ; preds = %bb.bm
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 52), i32 noundef 1545, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #21
  call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str, i32 noundef 1545, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer17GetUncachedSymbolEPKv) #24
  unreachable

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ap, ptr nonnull align 1 %i.jz, i64 %i.kb, i1 false)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %_ZN4absl18debugging_internalL22MaybeInitializeObjFileEPNS0_12_GLOBAL__N_17ObjFileE.exit.i.i

_ZN4absl18debugging_internalL22MaybeInitializeObjFileEPNS0_12_GLOBAL__N_17ObjFileE.exit.i.i: ; preds = %bb.bq, %bb.bj, %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS1_7ObjFileEPKvlPcmS8_m.exit.i.i, %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS1_7ObjFileEPKvlPcmS8_m.exit.thread.i.i, %.thread115.i.i.i, %bb.w
  %.047.i.i = phi i32 [ -1, %bb.bq ], [ %i.hb, %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS1_7ObjFileEPKvlPcmS8_m.exit.i.i ], [ %i.hb, %bb.bj ], [ -1, %bb.w ], [ -1, %.thread115.i.i.i ], [ %i.hb, %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS1_7ObjFileEPKvlPcmS8_m.exit.thread.i.i ]
  %.2.i7.i = phi i64 [ 0, %bb.bq ], [ %.1.i.i, %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS1_7ObjFileEPKvlPcmS8_m.exit.i.i ], [ %.1.i.i, %bb.bj ], [ 0, %bb.w ], [ 0, %.thread115.i.i.i ], [ %.1.i.i, %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS1_7ObjFileEPKvlPcmS8_m.exit.thread.i.i ]
  %i.kd = load atomic i32, ptr @_ZN4absl18debugging_internal12_GLOBAL__N_115g_decorators_muE monotonic, align 4 ; 3 uses
  %i.ke = and i32 %i.kd, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.ke, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4absl13base_internal8SpinLock8try_lockEv.exit.i.i, label %_ZN4absl13base_internal8SpinLock6unlockEv.exit.i.i

_ZN4absl13base_internal8SpinLock8try_lockEv.exit.i.i: ; preds = %_ZN4absl18debugging_internalL22MaybeInitializeObjFileEPNS0_12_GLOBAL__N_17ObjFileE.exit.i.i
  %i.kf = or disjoint i32 %i.kd, 1
  %i.kg = cmpxchg ptr @_ZN4absl18debugging_internal12_GLOBAL__N_115g_decorators_muE, i32 %i.kd, i32 %i.kf acquire monotonic, align 4
  %i.kh = extractvalue { i32, i1 } %i.kg, 0
  %.pre.i.i.i.i = and i32 %i.kh, 1
  %i.ki = icmp eq i32 %.pre.i.i.i.i, 0
  br i1 %i.ki, label %bb.br, label %_ZN4absl13base_internal8SpinLock6unlockEv.exit.i.i

bb.br:                                            ; preds = %_ZN4absl13base_internal8SpinLock8try_lockEv.exit.i.i
  %i.kj = load i32, ptr @_ZN4absl18debugging_internal12_GLOBAL__N_116g_num_decoratorsE, align 4
  %i.kk = icmp sgt i32 %i.kj, 0
  br i1 %i.kk, label %.lr.ph121.preheader.i.i, label %bb.bs

.lr.ph121.preheader.i.i:                          ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr %0, ptr %10, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %.2.i7.i, ptr %i.kl, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %.047.i.i, ptr %i.km, align 8
  %i.kn = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.ap, ptr %i.kn, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 3072, ptr %i.ko, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.kq = getelementptr inbounds nuw i8, ptr %.0.i, i64 11296
  store ptr %i.kq, ptr %i.kp, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i64 1024, ptr %i.kr, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %10, i64 56
  br label %.lr.ph121.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph121.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.bs

.lr.ph121.i.i:                                    ; preds = %.lr.ph121.i.i, %.lr.ph121.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph121.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph121.i.i ] ; 2 uses
  %i.kt = getelementptr inbounds nuw [24 x i8], ptr @_ZN4absl18debugging_internal12_GLOBAL__N_112g_decoratorsE, i64 %indvars.iv.i.i ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8
  store ptr %i.kv, ptr %i.ks, align 8
  %i.kw = load ptr, ptr %i.kt, align 8
  call void %i.kw(ptr noundef nonnull %10) #21, !inline_history !16
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.kx = load i32, ptr @_ZN4absl18debugging_internal12_GLOBAL__N_116g_num_decoratorsE, align 4
  %i.ky = sext i32 %i.kx to i64
  %i.kz = icmp slt i64 %indvars.iv.next.i.i, %i.ky
  br i1 %i.kz, label %.lr.ph121.i.i, label %._crit_edge.i.i, !llvm.loop !17

bb.bs:                                            ; preds = %._crit_edge.i.i, %bb.br
  %i.la = load atomic i32, ptr @_ZN4absl18debugging_internal12_GLOBAL__N_115g_decorators_muE monotonic, align 4
  %i.lb = and i32 %i.la, 2
  %i.lc = atomicrmw xchg ptr @_ZN4absl18debugging_internal12_GLOBAL__N_115g_decorators_muE, i32 %i.lb release, align 4 ; 2 uses
  %.not4.i.i.i = icmp ult i32 %i.lc, 8
  br i1 %.not4.i.i.i, label %_ZN4absl13base_internal8SpinLock6unlockEv.exit.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @_ZN4absl13base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl18debugging_internal12_GLOBAL__N_115g_decorators_muE, i32 noundef %i.lc) #25
  br label %_ZN4absl13base_internal8SpinLock6unlockEv.exit.i.i

_ZN4absl13base_internal8SpinLock6unlockEv.exit.i.i: ; preds = %bb.bt, %bb.bs, %_ZN4absl13base_internal8SpinLock8try_lockEv.exit.i.i, %_ZN4absl18debugging_internalL22MaybeInitializeObjFileEPNS0_12_GLOBAL__N_17ObjFileE.exit.i.i
  %i.ld = load i8, ptr %i.ap, align 2
  %i.le = icmp eq i8 %i.ld, 0
  br i1 %i.le, label %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit.thread, label %bb.bu

bb.bu:                                            ; preds = %_ZN4absl13base_internal8SpinLock6unlockEv.exit.i.i
  %i.lf = getelementptr inbounds nuw i8, ptr %.0.i, i64 3097
  store i8 0, ptr %i.lf, align 1
  br i1 %i.m, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  call void @abort() #24
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.lg = ptrtoint ptr %0 to i64                  ; 4 uses
  %i.lh = lshr i64 %i.lg, 3
  %i.li = lshr i64 %i.lg, 9
  %i.lj = lshr i64 %i.lg, 15
  %i.lk = xor i64 %i.li, %i.lj
  %i.ll = lshr i64 %i.lg, 21
  %i.lm = xor i64 %i.lk, %i.ll
  %i.ln = xor i64 %i.lm, %i.lh
  %i.lo = getelementptr inbounds nuw i8, ptr %.0.i, i64 12320
  %i.lp = and i64 %i.ln, 127
  %i.lq = getelementptr inbounds nuw [80 x i8], ptr %i.lo, i64 %i.lp ; 14 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 64 ; 4 uses
  %i.ls = load ptr, ptr %i.lq, align 8
  %i.lt = icmp eq ptr %i.ls, null
  %.pre.i73.i.i = load i32, ptr %i.lr, align 8    ; 4 uses
  br i1 %i.lt, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.bw
  %.04063.lcssa.i.i.i = phi i64 [ 0, %bb.bw ], [ 1, %bb.bz ], [ 2, %bb.ca ], [ 3, %bb.cb ] ; 3 uses
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %.04063.lcssa.i.i.i
  %i.lv = add i32 %.pre.i73.i.i, 1
  store i32 %i.lv, ptr %i.lr, align 8
  %.0.ptr.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lq, i64 68 ; 2 uses
  %i.lw = load <2 x i32>, ptr %.0.ptr.1.i.i.i.i, align 4
  %i.lx = add <2 x i32> %i.lw, splat (i32 1)
  store <2 x i32> %i.lx, ptr %.0.ptr.1.i.i.i.i, align 4
  %.0.ptr.3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lq, i64 76 ; 2 uses
  %i.ly = load i32, ptr %.0.ptr.3.i.i.i.i, align 4
  %i.lz = add i32 %i.ly, 1
  store i32 %i.lz, ptr %.0.ptr.3.i.i.i.i, align 4
  store ptr %0, ptr %i.lu, align 8
  %i.ma = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ap) #23
  %i.mb = add i64 %i.ma, 1                        ; 2 uses
  %i.mc = call noundef ptr @_ZN4absl13base_internal12SigSafeArenaEv() #21
  %i.md = call noundef ptr @_ZN4absl13base_internal13LowLevelAlloc14AllocWithArenaEmPNS1_5ArenaE(i64 noundef %i.mb, ptr noundef %i.mc) #21 ; 4 uses
  %.not.i.i74.i.i = icmp eq ptr %i.md, null
  br i1 %.not.i.i74.i.i, label %bb.by, label %bb.cc, !prof !12

bb.by:                                            ; preds = %bb.bx
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 52), i32 noundef 318, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #21
  call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str, i32 noundef 318, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer10CopyStringEPKc) #24
  unreachable

bb.bz:                                            ; preds = %bb.bw
  %i.me = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.mf = load ptr, ptr %i.me, align 8
  %i.mg = icmp eq ptr %i.mf, null
  br i1 %i.mg, label %bb.bx, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lq, i64 68 ; 2 uses
  %i.mi = load i32, ptr %i.mh, align 4            ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.mk = load ptr, ptr %i.mj, align 8
  %i.ml = icmp eq ptr %i.mk, null
  br i1 %i.ml, label %bb.bx, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  %i.mn = load ptr, ptr %i.mm, align 8
  %i.mo = icmp eq ptr %i.mn, null
  br i1 %i.mo, label %bb.bx, label %bb.cd

bb.cc:                                            ; preds = %bb.bx
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.md, ptr nonnull readonly align 2 %i.ap, i64 %i.mb, i1 false)
  %i.mp = getelementptr inbounds nuw i8, ptr %i.lq, i64 32
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %.04063.lcssa.i.i.i
  store ptr %i.md, ptr %i.mq, align 8
  br label %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer19InsertSymbolInCacheEPKvPKc.exit.i.i

bb.cd:                                            ; preds = %bb.cb
  %i.mr = getelementptr inbounds nuw i8, ptr %i.lq, i64 72 ; 2 uses
  %i.ms = load i32, ptr %i.mr, align 8            ; 3 uses
  %.146.1.i.i.i = call i32 @llvm.umax.i32(i32 %i.mi, i32 %.pre.i73.i.i) ; 2 uses
  %.not49.2.not.i.i.i = icmp ult i32 %i.ms, %.146.1.i.i.i
  %.not49.1.not.i.i.i = icmp uge i32 %i.mi, %.pre.i73.i.i
  %.144.1.i.i.i = zext i1 %.not49.1.not.i.i.i to i64
  %.144.2.i.i.i = select i1 %.not49.2.not.i.i.i, i64 %.144.1.i.i.i, i64 2
  %.146.2.i.i.i = call i32 @llvm.umax.i32(i32 %i.ms, i32 %.146.1.i.i.i)
  %i.mt = getelementptr inbounds nuw i8, ptr %i.lq, i64 76 ; 2 uses
  %i.mu = load i32, ptr %i.mt, align 4            ; 2 uses
  %.not49.3.not.i.i.i = icmp ult i32 %i.mu, %.146.2.i.i.i
  %.144.3.i.i.i = select i1 %.not49.3.not.i.i.i, i64 %.144.2.i.i.i, i64 3 ; 3 uses
  %i.mv = add i32 %.pre.i73.i.i, 1
  store i32 %i.mv, ptr %i.lr, align 8
  %i.mw = add i32 %i.mi, 1
  store i32 %i.mw, ptr %i.mh, align 4
  %i.mx = add i32 %i.ms, 1
  store i32 %i.mx, ptr %i.mr, align 8
  %i.my = add i32 %i.mu, 1
  store i32 %i.my, ptr %i.mt, align 4
  %i.mz = getelementptr inbounds nuw i8, ptr %i.lq, i64 32
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.mz, i64 %.144.3.i.i.i ; 2 uses
  %i.nb = load ptr, ptr %i.na, align 8
  call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.nb) #21
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %.144.3.i.i.i
  store ptr %0, ptr %i.nc, align 8
  %i.nd = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ap) #23
  %i.ne = add i64 %i.nd, 1                        ; 2 uses
  %i.nf = call noundef ptr @_ZN4absl13base_internal12SigSafeArenaEv() #21
  %i.ng = call noundef ptr @_ZN4absl13base_internal13LowLevelAlloc14AllocWithArenaEmPNS1_5ArenaE(i64 noundef %i.ne, ptr noundef %i.nf) #21 ; 4 uses
  %.not.i54.i.i.i = icmp eq ptr %i.ng, null
  br i1 %.not.i54.i.i.i, label %bb.ce, label %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer10CopyStringEPKc.exit55.i.i.i, !prof !12

bb.ce:                                            ; preds = %bb.cd
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 52), i32 noundef 318, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #21
  call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str, i32 noundef 318, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer10CopyStringEPKc) #24
  unreachable

_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer10CopyStringEPKc.exit55.i.i.i: ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ng, ptr nonnull readonly align 2 %i.ap, i64 %i.ne, i1 false)
  store ptr %i.ng, ptr %i.na, align 8
  br label %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer19InsertSymbolInCacheEPKvPKc.exit.i.i

_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer19InsertSymbolInCacheEPKvPKc.exit.i.i: ; preds = %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer10CopyStringEPKc.exit55.i.i.i, %bb.cc
  %.04063.lcssa.sink.i.i.i = phi i64 [ %.04063.lcssa.i.i.i, %bb.cc ], [ %.144.3.i.i.i, %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer10CopyStringEPKc.exit55.i.i.i ]
  %.1.i.i.i = phi ptr [ %i.md, %bb.cc ], [ %i.ng, %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer10CopyStringEPKc.exit55.i.i.i ]
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %.04063.lcssa.sink.i.i.i
  store i32 0, ptr %i.nh, align 4
  br label %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit

_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit: ; preds = %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.i, %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer19InsertSymbolInCacheEPKvPKc.exit.i.i
  %.0.i21 = phi ptr [ %i.ao, %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.i ], [ %.1.i.i.i, %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer19InsertSymbolInCacheEPKvPKc.exit.i.i ]
  %.not33 = icmp eq i32 %2, 0
  br i1 %.not33, label %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit.thread, label %bb.cf

bb.cf:                                            ; preds = %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit
  %i.ni = zext nneg i32 %2 to i64                 ; 3 uses
  %i.nj = call ptr @strncpy(ptr noundef %1, ptr noundef nonnull %.0.i21, i64 noundef %i.ni) #21 ; 0 uses
  %i.nk = add nsw i64 %i.ni, -1                   ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 %i.nk ; 2 uses
  %i.nm = load i8, ptr %i.nl, align 1
  %.not = icmp eq i8 %i.nm, 0
  br i1 %.not, label %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit.thread, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.nk, i64 3) ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 %i.ni
  %i.no = sub nsw i64 0, %.sroa.speculated
  %i.np = getelementptr inbounds i8, ptr %i.nn, i64 %i.no
  %i.nq = getelementptr inbounds i8, ptr %i.np, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nq, ptr nonnull align 1 @_ZZN4absl9SymbolizeEPKvPciE9kEllipsis, i64 %.sroa.speculated, i1 false)
  store i8 0, ptr %i.nl, align 1
  br label %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit.thread

_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit.thread: ; preds = %_ZN4absl13base_internal8SpinLock6unlockEv.exit.i.i, %bb.cf, %bb.cg, %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit
  %or.cond32 = phi i1 [ false, %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit ], [ true, %bb.cf ], [ true, %bb.cg ], [ false, %_ZN4absl13base_internal8SpinLock6unlockEv.exit.i.i ]
  %i.nr = cmpxchg ptr @_ZN4absl18debugging_internal12_GLOBAL__N_119g_cached_symbolizerE, ptr null, ptr %.0.i release monotonic, align 8
  %i.ns = extractvalue { ptr, i1 } %i.nr, 1
  br i1 %i.ns, label %_ZN4absl18debugging_internalL14FreeSymbolizerEPNS0_12_GLOBAL__N_110SymbolizerE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit.thread, %.preheader.i.i
  %.0.idx21.i.i = phi i64 [ %.0.add.i.i, %.preheader.i.i ], [ 12320, %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit.thread ] ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.0.idx21.i.i ; 4 uses
  %.015.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.nt, i64 32
  %i.nu = load ptr, ptr %.015.ptr.i.i, align 8
  call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.nu) #21
  %.015.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.nt, i64 40
  %i.nv = load ptr, ptr %.015.ptr.1.i.i, align 8
  call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.nv) #21
  %.015.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %i.nt, i64 48
  %i.nw = load ptr, ptr %.015.ptr.2.i.i, align 8
  call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.nw) #21
  %.015.ptr.3.i.i = getelementptr inbounds nuw i8, ptr %i.nt, i64 56
  %i.nx = load ptr, ptr %.015.ptr.3.i.i, align 8
  call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.nx) #21
  %.0.add.i.i = add nuw nsw i64 %.0.idx21.i.i, 80 ; 2 uses
  %.not.i.i23 = icmp eq i64 %.0.add.i.i, 22560
  br i1 %.not.i.i23, label %bb.ch, label %.preheader.i.i

bb.ch:                                            ; preds = %.preheader.i.i
  %.val8.i.i.i = load i64, ptr %.0.i, align 8
  %.not9.i.i.i = icmp eq i64 %.val8.i.i.i, 0
  br i1 %.not9.i.i.i, label %_ZN4absl18debugging_internal12_GLOBAL__N_110SymbolizerD2Ev.exit.i, label %.lr.ph.i.i.i24

.lr.ph.i.i.i24:                                   ; preds = %bb.ch
  %i.ny = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ck, %.lr.ph.i.i.i24
  %.010.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i24 ], [ %i.of, %bb.ck ] ; 2 uses
  %.val7.i.i.i = load ptr, ptr %i.ny, align 8
  %i.nz = getelementptr inbounds nuw [328 x i8], ptr %.val7.i.i.i, i64 %.010.i.i.i ; 2 uses
  %i.oa = load ptr, ptr %i.nz, align 8
  call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.oa) #21
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 32
  %i.oc = load i32, ptr %i.ob, align 8            ; 2 uses
  %i.od = icmp sgt i32 %i.oc, -1
  br i1 %i.od, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.oe = call i32 @close(i32 noundef %i.oc) #21  ; 0 uses
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.of = add i64 %.010.i.i.i, 1                  ; 2 uses
  %.val.i.i.i25 = load i64, ptr %.0.i, align 8
  %.not.i.i.i26 = icmp eq i64 %i.of, %.val.i.i.i25
  br i1 %.not.i.i.i26, label %_ZN4absl18debugging_internal12_GLOBAL__N_110SymbolizerD2Ev.exit.i, label %bb.ci, !llvm.loop !18

_ZN4absl18debugging_internal12_GLOBAL__N_110SymbolizerD2Ev.exit.i: ; preds = %bb.ck, %bb.ch
  store i64 0, ptr %.0.i, align 8
  %i.og = getelementptr inbounds nuw i8, ptr %.0.i, i64 25
  store i8 0, ptr %i.og, align 1
  %i.oh = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %.val.i.i = load ptr, ptr %i.oh, align 8
  call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %.val.i.i) #21
  call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef nonnull %.0.i) #21
  br label %_ZN4absl18debugging_internalL14FreeSymbolizerEPNS0_12_GLOBAL__N_110SymbolizerE.exit

_ZN4absl18debugging_internalL14FreeSymbolizerEPNS0_12_GLOBAL__N_110SymbolizerE.exit: ; preds = %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit.thread, %_ZN4absl18debugging_internal12_GLOBAL__N_110SymbolizerD2Ev.exit.i
  ret i1 %or.cond32
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @AbslInternalGetFileMappingHint(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN4absl18debugging_internal12_GLOBAL__N_117g_file_mapping_muE monotonic, align 4 ; 3 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZN4absl13base_internal8SpinLock8try_lockEv.exit.i, label %_ZN4absl18debugging_internal18GetFileMappingHintEPPKvS3_PmPPKc.exit

_ZN4absl13base_internal8SpinLock8try_lockEv.exit.i: ; preds = %bb.a
  %i.c = or disjoint i32 %i.a, 1
  %i.d = cmpxchg ptr @_ZN4absl18debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 %i.a, i32 %i.c acquire monotonic, align 4
  %i.e = extractvalue { i32, i1 } %i.d, 0
  %.pre.i.i.i = and i32 %i.e, 1
  %i.f = icmp eq i32 %.pre.i.i.i, 0
  br i1 %i.f, label %.preheader.i, label %_ZN4absl18debugging_internal18GetFileMappingHintEPPKvS3_PmPPKc.exit

.preheader.i:                                     ; preds = %_ZN4absl13base_internal8SpinLock8try_lockEv.exit.i
  %i.g = load i32, ptr @_ZN4absl18debugging_internal12_GLOBAL__N_124g_num_file_mapping_hintsE, align 4 ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.i = load ptr, ptr %0, align 8
  %wide.trip.count.i = zext nneg i32 %i.g to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr @_ZN4absl18debugging_internal12_GLOBAL__N_120g_file_mapping_hintsE, i64 %indvars.iv.i ; 4 uses
  %i.k = load ptr, ptr %i.j, align 16             ; 2 uses
  %.not.i = icmp ugt ptr %i.k, %i.i
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %1, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not18.i = icmp ugt ptr %i.l, %i.n
  br i1 %.not18.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.k, ptr %0, align 8
  store ptr %i.n, ptr %1, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.p = load i64, ptr %i.o, align 16
  store i64 %i.p, ptr %2, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  store ptr %i.r, ptr %3, align 8
  br label %.loopexit.i

bb.e:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.b, !llvm.loop !13

.loopexit.i:                                      ; preds = %bb.e, %bb.d, %.preheader.i
  %i.s = phi i1 [ true, %bb.d ], [ false, %.preheader.i ], [ false, %bb.e ] ; 2 uses
  %i.t = load atomic i32, ptr @_ZN4absl18debugging_internal12_GLOBAL__N_117g_file_mapping_muE monotonic, align 4
  %i.u = and i32 %i.t, 2
  %i.v = atomicrmw xchg ptr @_ZN4absl18debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 %i.u release, align 4 ; 2 uses
  %.not4.i.i = icmp ult i32 %i.v, 8
  br i1 %.not4.i.i, label %_ZN4absl18debugging_internal18GetFileMappingHintEPPKvS3_PmPPKc.exit, label %bb.f

bb.f:                                             ; preds = %.loopexit.i
  tail call void @_ZN4absl13base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl18debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 noundef %i.v) #25
  br label %_ZN4absl18debugging_internal18GetFileMappingHintEPPKvS3_PmPPKc.exit

_ZN4absl18debugging_internal18GetFileMappingHintEPPKvS3_PmPPKc.exit: ; preds = %bb.a, %_ZN4absl13base_internal8SpinLock8try_lockEv.exit.i, %.loopexit.i, %bb.f
  %.016.i = phi i1 [ %i.s, %bb.f ], [ false, %_ZN4absl13base_internal8SpinLock8try_lockEv.exit.i ], [ %i.s, %.loopexit.i ], [ false, %bb.a ]
  ret i1 %.016.i
}

declare i64 @pread64(i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: cold
declare void @_ZN4absl13base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer11FindObjFileEPKvm(ptr noundef nonnull align 16 dereferenceable(22560) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 11296 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.e = load i8, ptr %i.a, align 8, !range !19, !noundef !20
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %.thread43

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr %i.b, align 1, !range !19, !noundef !20
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 1
  %i.i = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL11ReadAddrMapEPFbPKcPKvS4_mPvES5_S5_m(ptr noundef %0, ptr noundef %i.c)
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.m, %bb.c
  store i8 0, ptr %i.a, align 8
  br label %.thread43

bb.e:                                             ; preds = %bb.c, %bb.b
  %.val37 = load i64, ptr %0, align 16            ; 3 uses
  %.not50 = icmp eq i64 %.val37, 0                ; 2 uses
  br i1 %.not50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %.val39 = load ptr, ptr %i.d, align 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.02648 = phi i64 [ %.val37, %.lr.ph ], [ %.127, %bb.f ] ; 2 uses
  %.02847 = phi i64 [ 0, %.lr.ph ], [ %.129, %bb.f ] ; 2 uses
  %i.j = add i64 %.02648, %.02847
  %i.k = lshr i64 %i.j, 1                         ; 3 uses
  %i.l = getelementptr inbounds nuw [328 x i8], ptr %.val39, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp ult ptr %1, %i.n                    ; 2 uses
  %i.p = add nuw i64 %i.k, 1
  %.129 = select i1 %i.o, i64 %.02847, i64 %i.p   ; 3 uses
  %.127 = select i1 %i.o, i64 %i.k, i64 %.02648   ; 2 uses
  %i.q = icmp ult i64 %.129, %.127
  br i1 %i.q, label %bb.f, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.f, %bb.e
  %.028.lcssa = phi i64 [ 0, %bb.e ], [ %.129, %bb.f ] ; 2 uses
  %.not = icmp eq i64 %.028.lcssa, %.val37
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %.val38 = load ptr, ptr %i.d, align 16
  %i.r = getelementptr inbounds nuw [328 x i8], ptr %.val38, i64 %.028.lcssa ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp ugt ptr %i.t, %1
  br i1 %i.u, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.p, %bb.g
  tail call void @abort() #24
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %.not35 = icmp ult ptr %1, %i.w
  br i1 %.not35, label %bb.j, label %.thread43

bb.j:                                             ; preds = %bb.i, %._crit_edge
  br i1 %.not50, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.010.i = phi i64 [ %i.ad, %bb.l ], [ 0, %bb.j ] ; 2 uses
  %.val7.i = load ptr, ptr %i.d, align 16
  %i.x = getelementptr inbounds nuw [328 x i8], ptr %.val7.i, i64 %.010.i ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  tail call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.y) #21
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.aa = load i32, ptr %i.z, align 8             ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, -1
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  %i.ac = tail call i32 @close(i32 noundef %i.aa) #21 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %i.ad = add i64 %.010.i, 1                      ; 2 uses
  %.val.i = load i64, ptr %0, align 16
  %.not.i = icmp eq i64 %i.ad, %.val.i
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !18

.loopexit:                                        ; preds = %bb.l, %bb.j
  store i64 0, ptr %0, align 16
  store i8 0, ptr %i.b, align 1
  %i.ae = load i8, ptr %i.a, align 8, !range !19, !noundef !20
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.m, label %.thread43

bb.m:                                             ; preds = %.loopexit
  store i8 1, ptr %i.b, align 1
  %i.ag = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL11ReadAddrMapEPFbPKcPKvS4_mPvES5_S5_m(ptr noundef %0, ptr noundef %i.c)
  br i1 %i.ag, label %bb.n, label %bb.d

bb.n:                                             ; preds = %bb.m
  %.val37.1.pre = load i64, ptr %0, align 16      ; 3 uses
  %.not50.1 = icmp eq i64 %.val37.1.pre, 0        ; 2 uses
  br i1 %.not50.1, label %._crit_edge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.n
  %.val39.1 = load ptr, ptr %i.d, align 16
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.1
  %.02648.1 = phi i64 [ %.val37.1.pre, %.lr.ph.1 ], [ %.127.1, %bb.o ] ; 2 uses
  %.02847.1 = phi i64 [ 0, %.lr.ph.1 ], [ %.129.1, %bb.o ] ; 2 uses
  %i.ah = add i64 %.02648.1, %.02847.1
  %i.ai = lshr i64 %i.ah, 1                       ; 3 uses
  %i.aj = getelementptr inbounds nuw [328 x i8], ptr %.val39.1, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = icmp ult ptr %1, %i.al                  ; 2 uses
  %i.an = add nuw i64 %i.ai, 1
  %.129.1 = select i1 %i.am, i64 %.02847.1, i64 %i.an ; 3 uses
  %.127.1 = select i1 %i.am, i64 %i.ai, i64 %.02648.1 ; 2 uses
  %i.ao = icmp ult i64 %.129.1, %.127.1
  br i1 %i.ao, label %bb.o, label %._crit_edge.1, !llvm.loop !21

._crit_edge.1:                                    ; preds = %bb.o, %bb.n
  %.028.lcssa.1 = phi i64 [ 0, %bb.n ], [ %.129.1, %bb.o ] ; 2 uses
  %.not.1 = icmp eq i64 %.028.lcssa.1, %.val37.1.pre
  br i1 %.not.1, label %bb.r, label %bb.p

bb.p:                                             ; preds = %._crit_edge.1
  %.val38.1 = load ptr, ptr %i.d, align 16
  %i.ap = getelementptr inbounds nuw [328 x i8], ptr %.val38.1, i64 %.028.lcssa.1 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = icmp ugt ptr %i.ar, %1
  br i1 %i.as, label %bb.q, label %bb.h

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  %.not35.1 = icmp ult ptr %1, %i.au
  br i1 %.not35.1, label %bb.r, label %.thread43

bb.r:                                             ; preds = %bb.q, %._crit_edge.1
  br i1 %.not50.1, label %.loopexit.1, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.r, %bb.t
  %.010.i.1 = phi i64 [ %i.bb, %bb.t ], [ 0, %bb.r ] ; 2 uses
  %.val7.i.1 = load ptr, ptr %i.d, align 16
  %i.av = getelementptr inbounds nuw [328 x i8], ptr %.val7.i.1, i64 %.010.i.1 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.aw) #21
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ay = load i32, ptr %i.ax, align 8            ; 2 uses
  %i.az = icmp sgt i32 %i.ay, -1
  br i1 %i.az, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i.1
  %i.ba = tail call i32 @close(i32 noundef %i.ay) #21 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i.1
  %i.bb = add i64 %.010.i.1, 1                    ; 2 uses
  %.val.i.1 = load i64, ptr %0, align 16
  %.not.i.1 = icmp eq i64 %i.bb, %.val.i.1
  br i1 %.not.i.1, label %.loopexit.1, label %.lr.ph.i.1, !llvm.loop !18

.loopexit.1:                                      ; preds = %bb.t, %bb.r
  store i64 0, ptr %0, align 16
  store i8 0, ptr %i.b, align 1
  br label %.thread43

.thread43:                                        ; preds = %bb.i, %bb.a, %.loopexit, %bb.q, %.loopexit.1, %bb.d
  %i.bc = phi ptr [ null, %bb.d ], [ null, %.loopexit.1 ], [ %i.r, %bb.i ], [ null, %bb.a ], [ null, %.loopexit ], [ %i.ap, %bb.q ]
  ret ptr %i.bc
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4absl18debugging_internalL15DemangleInplaceEPcmS1_m(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #12 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl18debugging_internal8DemangleEPKcPcm(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef 1024) #21
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23 ; 2 uses
  %i.c = add i64 %i.b, 1                          ; 2 uses
  %i.d = icmp ult i64 %i.c, 3073
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ult i64 %i.b, 1024
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #24
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.a
  ret void
}

declare void @_ZN4absl18debugging_internal11VDSOSupportC1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

declare noundef zeroext i1 @_ZNK4absl18debugging_internal11VDSOSupport21LookupSymbolByAddressEPKvPNS0_11ElfMemImage10SymbolInfoE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL11ReadAddrMapEPFbPKcPKvS4_mPvES5_S5_m(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1) unnamed_addr #12 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call i32 @getpid() #21
  %i.c = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 80, ptr noundef nonnull @.str.14, i32 noundef %i.b) #21 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.d = call fastcc noundef i32 @_ZN4absl18debugging_internal12_GLOBAL__N_122OpenReadOnlyWithHighFDEPKc(ptr noundef nonnull %i.a) ; 4 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__errno_location() #22
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp eq i32 %i.g, 4
  br i1 %i.h, label %bb.b, label %.thread72, !llvm.loop !22

.thread72:                                        ; preds = %bb.c
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 52), i32 noundef 1097, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.a, i32 noundef %i.g) #21
  br label %_ZN4absl18debugging_internal12_GLOBAL__N_114FileDescriptorD2Ev.exit

.critedge:                                        ; preds = %bb.b, %.critedge.backedge
  %.sroa.18.0 = phi ptr [ %i.z, %.critedge.backedge ], [ %1, %bb.b ]
  %.sroa.22.0 = phi ptr [ %.sroa.22.1, %.critedge.backedge ], [ %1, %bb.b ] ; 4 uses
  %i.i = icmp eq ptr %1, %.sroa.22.0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.j = tail call fastcc noundef i64 @_ZN4absl18debugging_internalL14ReadPersistentEiPvm(i32 noundef %i.d, ptr noundef nonnull %1, i64 noundef 1024) ; 2 uses
  %i.k = icmp slt i64 %i.j, 1
  br i1 %i.k, label %_ZN4absl18debugging_internal12_GLOBAL__N_110LineReader8ReadLineEPPKcS5_.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  br label %bb.h

bb.e:                                             ; preds = %.critedge
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.18.0, i64 1 ; 5 uses
  %.not.i = icmp ugt ptr %i.m, %.sroa.22.0
  br i1 %.not.i, label %bb.f, label %_ZNK4absl18debugging_internal12_GLOBAL__N_110LineReader15HasCompleteLineEv.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @abort() #24
  unreachable

_ZNK4absl18debugging_internal12_GLOBAL__N_110LineReader15HasCompleteLineEv.exit.i: ; preds = %bb.e
  %i.n = ptrtoint ptr %.sroa.22.0 to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  %i.q = tail call noundef ptr @memchr(ptr noundef nonnull %i.m, i32 noundef 10, i64 noundef %i.p) #23
  %.not23.i = icmp eq ptr %i.q, null
  br i1 %.not23.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK4absl18debugging_internal12_GLOBAL__N_110LineReader15HasCompleteLineEv.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %i.m, i64 %i.p, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.s = sub i64 1024, %i.p
  %i.t = tail call fastcc noundef i64 @_ZN4absl18debugging_internalL14ReadPersistentEiPvm(i32 noundef %i.d, ptr noundef nonnull %i.r, i64 noundef %i.s) ; 2 uses
  %i.u = icmp slt i64 %i.t, 1
  br i1 %i.u, label %_ZN4absl18debugging_internal12_GLOBAL__N_110LineReader8ReadLineEPPKcS5_.exit.thread, label %.thread22.i

.thread22.i:                                      ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  br label %bb.h

bb.h:                                             ; preds = %.thread22.i, %_ZNK4absl18debugging_internal12_GLOBAL__N_110LineReader15HasCompleteLineEv.exit.i, %.thread.i
  %.sroa.13.0 = phi ptr [ %1, %.thread.i ], [ %1, %.thread22.i ], [ %i.m, %_ZNK4absl18debugging_internal12_GLOBAL__N_110LineReader15HasCompleteLineEv.exit.i ] ; 9 uses
  %.sroa.22.1 = phi ptr [ %i.l, %.thread.i ], [ %i.v, %.thread22.i ], [ %.sroa.22.0, %_ZNK4absl18debugging_internal12_GLOBAL__N_110LineReader15HasCompleteLineEv.exit.i ] ; 2 uses
  %i.w = ptrtoint ptr %.sroa.22.1 to i64
  %i.x = ptrtoint ptr %.sroa.13.0 to i64          ; 2 uses
  %i.y = sub i64 %i.w, %i.x
  %i.z = tail call noundef ptr @memchr(ptr noundef nonnull %.sroa.13.0, i32 noundef 10, i64 noundef %i.y) #23 ; 20 uses
  %i.aa = ptrtoaddr ptr %i.z to i64               ; 5 uses
  %i.ab = icmp eq ptr %i.z, null
  br i1 %i.ab, label %_ZN4absl18debugging_internal12_GLOBAL__N_110LineReader8ReadLineEPPKcS5_.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.z, align 1
  %i.ac = icmp ult ptr %.sroa.13.0, %i.z
  br i1 %i.ac, label %.lr.ph.preheader.i.i, label %switch.early.test._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.i
  %i.ad = sub i64 %i.aa, %i.x
  %scevgep.i.i = getelementptr i8, ptr %.sroa.13.0, i64 %i.ad
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %.lr.ph.preheader.i.i
  %.02536.i.i = phi i64 [ %i.an, %bb.j ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %.02635.i.i = phi ptr [ %i.ao, %bb.j ], [ %.sroa.13.0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ae = load i8, ptr %.02635.i.i, align 1
  %.fr34.i.i = freeze i8 %i.ae                    ; 4 uses
  %i.af = sext i8 %.fr34.i.i to i64               ; 2 uses
  %i.ag = add i8 %.fr34.i.i, -48
  %or.cond.i.i = icmp ult i8 %i.ag, 10
  br i1 %or.cond.i.i, label %bb.j, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %.lr.ph.i.i
  switch i8 %.fr34.i.i, label %switch.early.test._crit_edge.i.loopexit.i [
    i8 102, label %bb.j
    i8 101, label %bb.j
    i8 100, label %bb.j
    i8 99, label %bb.j
    i8 98, label %bb.j
    i8 97, label %bb.j
    i8 70, label %bb.j
    i8 69, label %bb.j
    i8 68, label %bb.j
    i8 67, label %bb.j
    i8 66, label %bb.j
    i8 65, label %bb.j
  ]

bb.j:                                             ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %.lr.ph.i.i
  %i.ah = shl i64 %.02536.i.i, 4
  %i.ai = icmp samesign ult i8 %.fr34.i.i, 65
  %i.aj = add nsw i64 %i.af, -48
  %i.ak = and i64 %i.af, 15
  %i.al = add nuw nsw i64 %i.ak, 9
  %i.am = select i1 %i.ai, i64 %i.aj, i64 %i.al
  %i.an = or i64 %i.am, %i.ah                     ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.02635.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.ao, %i.z
  br i1 %exitcond.not.i.i, label %switch.early.test._crit_edge.i.loopexit.i, label %.lr.ph.i.i, !llvm.loop !23

switch.early.test._crit_edge.i.loopexit.i:        ; preds = %bb.j, %switch.early.test.i.i
  %.026.lcssa.i.ph.i = phi ptr [ %.02635.i.i, %switch.early.test.i.i ], [ %scevgep.i.i, %bb.j ]
  %.025.lcssa.i.ph.i = phi i64 [ %.02536.i.i, %switch.early.test.i.i ], [ %i.an, %bb.j ]
  %i.ap = inttoptr i64 %.025.lcssa.i.ph.i to ptr
  br label %switch.early.test._crit_edge.i.i

switch.early.test._crit_edge.i.i:                 ; preds = %switch.early.test._crit_edge.i.loopexit.i, %bb.i
  %.026.lcssa.i.i = phi ptr [ %.sroa.13.0, %bb.i ], [ %.026.lcssa.i.ph.i, %switch.early.test._crit_edge.i.loopexit.i ] ; 4 uses
  %.025.lcssa.i.i = phi ptr [ null, %bb.i ], [ %i.ap, %switch.early.test._crit_edge.i.loopexit.i ] ; 2 uses
  %.not.i.i = icmp ugt ptr %.026.lcssa.i.i, %i.z
  br i1 %.not.i.i, label %bb.k, label %_ZN4absl18debugging_internalL6GetHexEPKcS2_PPKv.exit

bb.k:                                             ; preds = %switch.early.test._crit_edge.i.i
  tail call void @abort() #24
  unreachable

_ZN4absl18debugging_internalL6GetHexEPKcS2_PPKv.exit: ; preds = %switch.early.test._crit_edge.i.i
  %i.aq = icmp eq ptr %.026.lcssa.i.i, %i.z
  br i1 %i.aq, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN4absl18debugging_internalL6GetHexEPKcS2_PPKv.exit
  %i.ar = load i8, ptr %.026.lcssa.i.i, align 1
  %.not = icmp eq i8 %i.ar, 45
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN4absl18debugging_internalL6GetHexEPKcS2_PPKv.exit, %bb.l
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 52), i32 noundef 1124, ptr noundef nonnull @.str.16, ptr noundef nonnull %.sroa.13.0) #21
  br label %_ZN4absl18debugging_internal12_GLOBAL__N_110LineReader8ReadLineEPPKcS5_.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %.026.lcssa.i.i, i64 1 ; 5 uses
  %i.at = icmp ult ptr %i.as, %i.z
  br i1 %i.at, label %.lr.ph.preheader.i.i39, label %switch.early.test._crit_edge.i.i35

.lr.ph.preheader.i.i39:                           ; preds = %bb.n
  %i.au = ptrtoaddr ptr %i.as to i64
  %i.av = sub i64 %i.aa, %i.au
  %scevgep.i.i40 = getelementptr i8, ptr %i.as, i64 %i.av
  br label %.lr.ph.i.i41

.lr.ph.i.i41:                                     ; preds = %bb.o, %.lr.ph.preheader.i.i39
  %.02536.i.i42 = phi i64 [ %i.bf, %bb.o ], [ 0, %.lr.ph.preheader.i.i39 ] ; 2 uses
  %.02635.i.i43 = phi ptr [ %i.bg, %bb.o ], [ %i.as, %.lr.ph.preheader.i.i39 ] ; 3 uses
  %i.aw = load i8, ptr %.02635.i.i43, align 1
  %.fr34.i.i44 = freeze i8 %i.aw                  ; 4 uses
  %i.ax = sext i8 %.fr34.i.i44 to i64             ; 2 uses
  %i.ay = add i8 %.fr34.i.i44, -48
  %or.cond.i.i45 = icmp ult i8 %i.ay, 10
  br i1 %or.cond.i.i45, label %bb.o, label %switch.early.test.i.i46

switch.early.test.i.i46:                          ; preds = %.lr.ph.i.i41
  switch i8 %.fr34.i.i44, label %switch.early.test._crit_edge.i.loopexit.i48 [
    i8 102, label %bb.o
    i8 101, label %bb.o
    i8 100, label %bb.o
    i8 99, label %bb.o
    i8 98, label %bb.o
    i8 97, label %bb.o
    i8 70, label %bb.o
    i8 69, label %bb.o
    i8 68, label %bb.o
    i8 67, label %bb.o
    i8 66, label %bb.o
    i8 65, label %bb.o
  ]

bb.o:                                             ; preds = %switch.early.test.i.i46, %switch.early.test.i.i46, %switch.early.test.i.i46, %switch.early.test.i.i46, %switch.early.test.i.i46, %switch.early.test.i.i46, %switch.early.test.i.i46, %switch.early.test.i.i46, %switch.early.test.i.i46, %switch.early.test.i.i46, %switch.early.test.i.i46, %switch.early.test.i.i46, %.lr.ph.i.i41
  %i.az = shl i64 %.02536.i.i42, 4
  %i.ba = icmp samesign ult i8 %.fr34.i.i44, 65
  %i.bb = add nsw i64 %i.ax, -48
  %i.bc = and i64 %i.ax, 15
  %i.bd = add nuw nsw i64 %i.bc, 9
  %i.be = select i1 %i.ba, i64 %i.bb, i64 %i.bd
  %i.bf = or i64 %i.be, %i.az                     ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.02635.i.i43, i64 1 ; 2 uses
  %exitcond.not.i.i47 = icmp eq ptr %i.bg, %i.z
  br i1 %exitcond.not.i.i47, label %switch.early.test._crit_edge.i.loopexit.i48, label %.lr.ph.i.i41, !llvm.loop !23

switch.early.test._crit_edge.i.loopexit.i48:      ; preds = %bb.o, %switch.early.test.i.i46
  %.026.lcssa.i.ph.i49 = phi ptr [ %.02635.i.i43, %switch.early.test.i.i46 ], [ %scevgep.i.i40, %bb.o ]
  %.025.lcssa.i.ph.i50 = phi i64 [ %.02536.i.i42, %switch.early.test.i.i46 ], [ %i.bf, %bb.o ]
  %i.bh = inttoptr i64 %.025.lcssa.i.ph.i50 to ptr
  br label %switch.early.test._crit_edge.i.i35

switch.early.test._crit_edge.i.i35:               ; preds = %switch.early.test._crit_edge.i.loopexit.i48, %bb.n
  %.026.lcssa.i.i36 = phi ptr [ %i.as, %bb.n ], [ %.026.lcssa.i.ph.i49, %switch.early.test._crit_edge.i.loopexit.i48 ] ; 8 uses
  %.025.lcssa.i.i37 = phi ptr [ null, %bb.n ], [ %i.bh, %switch.early.test._crit_edge.i.loopexit.i48 ] ; 2 uses
  %.026.lcssa.i.i36111 = ptrtoaddr ptr %.026.lcssa.i.i36 to i64
  %.not.i.i38 = icmp ugt ptr %.026.lcssa.i.i36, %i.z
  br i1 %.not.i.i38, label %bb.p, label %_ZN4absl18debugging_internalL6GetHexEPKcS2_PPKv.exit51

bb.p:                                             ; preds = %switch.early.test._crit_edge.i.i35
  tail call void @abort() #24
  unreachable

_ZN4absl18debugging_internalL6GetHexEPKcS2_PPKv.exit51: ; preds = %switch.early.test._crit_edge.i.i35
  %i.bi = icmp eq ptr %.026.lcssa.i.i36, %i.z
  br i1 %i.bi, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN4absl18debugging_internalL6GetHexEPKcS2_PPKv.exit51
  %i.bj = load i8, ptr %.026.lcssa.i.i36, align 1
  %.not29 = icmp eq i8 %i.bj, 32
  br i1 %.not29, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN4absl18debugging_internalL6GetHexEPKcS2_PPKv.exit51, %bb.q
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 52), i32 noundef 1133, ptr noundef nonnull @.str.16, ptr noundef nonnull %.sroa.13.0) #21
  br label %_ZN4absl18debugging_internal12_GLOBAL__N_110LineReader8ReadLineEPPKcS5_.exit.thread

bb.s:                                             ; preds = %bb.q
  %.ptr75 = getelementptr inbounds nuw i8, ptr %.026.lcssa.i.i36, i64 1 ; 3 uses
  %i.bk = icmp ult ptr %.ptr75, %i.z
  br i1 %i.bk, label %.lr.ph.preheader, label %.critedge2.thread

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.bl = sub i64 %i.aa, %.026.lcssa.i.i36111     ; 3 uses
  %scevgep = getelementptr i8, ptr %.026.lcssa.i.i36, i64 %i.bl
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.t
  %storemerge.ptr89 = phi ptr [ %storemerge.ptr, %bb.t ], [ %.ptr75, %.lr.ph.preheader ] ; 2 uses
  %storemerge.idx88 = phi i64 [ %storemerge.add, %bb.t ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %i.bm = load i8, ptr %storemerge.ptr89, align 1
  %.not30 = icmp eq i8 %i.bm, 32
  br i1 %.not30, label %.critedge2, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %storemerge.add = add nuw i64 %storemerge.idx88, 1 ; 3 uses
  %storemerge.ptr = getelementptr inbounds nuw i8, ptr %.026.lcssa.i.i36, i64 %storemerge.add
  %exitcond.not = icmp eq i64 %storemerge.add, %i.bl
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph, !llvm.loop !24

.critedge2:                                       ; preds = %.lr.ph, %bb.t
  %storemerge.idx.lcssa.ph = phi i64 [ %storemerge.idx88, %.lr.ph ], [ %i.bl, %bb.t ]
  %storemerge.ptr.lcssa.ph = phi ptr [ %storemerge.ptr89, %.lr.ph ], [ %scevgep, %bb.t ] ; 2 uses
  %i.bn = icmp samesign ult i64 %storemerge.idx.lcssa.ph, 5
  %i.bo = icmp eq ptr %storemerge.ptr.lcssa.ph, %i.z
  %or.cond = select i1 %i.bo, i1 true, i1 %i.bn
  br i1 %or.cond, label %.critedge2.thread, label %bb.u

.critedge2.thread:                                ; preds = %bb.s, %.critedge2
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 52), i32 noundef 1145, ptr noundef nonnull @.str.17, ptr noundef nonnull %.sroa.13.0) #21
  br label %_ZN4absl18debugging_internal12_GLOBAL__N_110LineReader8ReadLineEPPKcS5_.exit.thread

bb.u:                                             ; preds = %.critedge2
  %i.bp = load i8, ptr %.ptr75, align 1
  %i.bq = icmp eq i8 %i.bp, 114
  br i1 %i.bq, label %_ZN4absl18debugging_internalL16ShouldUseMappingEPKc.exit, label %.critedge.backedge

_ZN4absl18debugging_internalL16ShouldUseMappingEPKc.exit: ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %.026.lcssa.i.i36, i64 3
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = icmp eq i8 %i.bs, 120
  br i1 %i.bt, label %bb.v, label %.critedge.backedge

bb.v:                                             ; preds = %_ZN4absl18debugging_internalL16ShouldUseMappingEPKc.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %storemerge.ptr.lcssa.ph, i64 1 ; 5 uses
  %i.bv = icmp ult ptr %i.bu, %i.z
  br i1 %i.bv, label %.lr.ph.preheader.i, label %switch.early.test._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.v
  %i.bw = ptrtoaddr ptr %i.bu to i64
  %i.bx = sub i64 %i.aa, %i.bw
  %scevgep.i = getelementptr i8, ptr %i.bu, i64 %i.bx
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w, %.lr.ph.preheader.i
  %.02536.i = phi i64 [ %i.ch, %bb.w ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.02635.i = phi ptr [ %i.ci, %bb.w ], [ %i.bu, %.lr.ph.preheader.i ] ; 3 uses
  %i.by = load i8, ptr %.02635.i, align 1
  %.fr34.i = freeze i8 %i.by                      ; 4 uses
  %i.bz = sext i8 %.fr34.i to i64                 ; 2 uses
  %i.ca = add i8 %.fr34.i, -48
  %or.cond.i = icmp ult i8 %i.ca, 10
  br i1 %or.cond.i, label %bb.w, label %switch.early.test.i

switch.early.test.i:                              ; preds = %.lr.ph.i
  switch i8 %.fr34.i, label %switch.early.test._crit_edge.i [
    i8 102, label %bb.w
    i8 101, label %bb.w
    i8 100, label %bb.w
    i8 99, label %bb.w
    i8 98, label %bb.w
    i8 97, label %bb.w
    i8 70, label %bb.w
    i8 69, label %bb.w
    i8 68, label %bb.w
    i8 67, label %bb.w
    i8 66, label %bb.w
    i8 65, label %bb.w
  ]

bb.w:                                             ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %.lr.ph.i
  %i.cb = shl i64 %.02536.i, 4
  %i.cc = icmp samesign ult i8 %.fr34.i, 65
  %i.cd = add nsw i64 %i.bz, -48
  %i.ce = and i64 %i.bz, 15
  %i.cf = add nuw nsw i64 %i.ce, 9
  %i.cg = select i1 %i.cc, i64 %i.cd, i64 %i.cf
  %i.ch = or i64 %i.cg, %i.cb                     ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.02635.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ci, %i.z
  br i1 %exitcond.not.i, label %switch.early.test._crit_edge.i, label %.lr.ph.i, !llvm.loop !23

switch.early.test._crit_edge.i:                   ; preds = %bb.w, %switch.early.test.i, %bb.v
  %.026.lcssa.i = phi ptr [ %i.bu, %bb.v ], [ %scevgep.i, %bb.w ], [ %.02635.i, %switch.early.test.i ] ; 4 uses
  %.025.lcssa.i = phi i64 [ 0, %bb.v ], [ %i.ch, %bb.w ], [ %.02536.i, %switch.early.test.i ]
  %.026.lcssa.i112 = ptrtoaddr ptr %.026.lcssa.i to i64
  %.not.i52 = icmp ugt ptr %.026.lcssa.i, %i.z
  br i1 %.not.i52, label %bb.x, label %_ZN4absl18debugging_internalL6GetHexEPKcS2_Pm.exit.preheader

_ZN4absl18debugging_internalL6GetHexEPKcS2_Pm.exit.preheader: ; preds = %switch.early.test._crit_edge.i
  %storemerge3194 = getelementptr inbounds nuw i8, ptr %.026.lcssa.i, i64 1 ; 3 uses
  %i.cj = icmp ult ptr %storemerge3194, %i.z
  br i1 %i.cj, label %.lr.ph97.preheader, label %._crit_edge

.lr.ph97.preheader:                               ; preds = %_ZN4absl18debugging_internalL6GetHexEPKcS2_Pm.exit.preheader
  %i.ck = sub i64 %i.aa, %.026.lcssa.i112
  %scevgep113 = getelementptr i8, ptr %.026.lcssa.i, i64 %i.ck
  br label %.lr.ph97

bb.x:                                             ; preds = %switch.early.test._crit_edge.i
  tail call void @abort() #24
  unreachable

.lr.ph97:                                         ; preds = %.lr.ph97.preheader, %_ZN4absl18debugging_internalL6GetHexEPKcS2_Pm.exit
  %storemerge3196 = phi ptr [ %storemerge31, %_ZN4absl18debugging_internalL6GetHexEPKcS2_Pm.exit ], [ %storemerge3194, %.lr.ph97.preheader ] ; 3 uses
  %.01695 = phi i32 [ %.117, %_ZN4absl18debugging_internalL6GetHexEPKcS2_Pm.exit ], [ 0, %.lr.ph97.preheader ] ; 3 uses
  %i.cl = load i8, ptr %storemerge3196, align 1
  %i.cm = icmp eq i8 %i.cl, 32
  br i1 %i.cm, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph97
  %i.cn = add nsw i32 %.01695, 1
  br label %_ZN4absl18debugging_internalL6GetHexEPKcS2_Pm.exit

bb.z:                                             ; preds = %.lr.ph97
  %i.co = icmp sgt i32 %.01695, 1
  br i1 %i.co, label %._crit_edge, label %_ZN4absl18debugging_internalL6GetHexEPKcS2_Pm.exit

_ZN4absl18debugging_internalL6GetHexEPKcS2_Pm.exit: ; preds = %bb.z, %bb.y
  %.117 = phi i32 [ %i.cn, %bb.y ], [ %.01695, %bb.z ]
  %storemerge31 = getelementptr inbounds nuw i8, ptr %storemerge3196, i64 1 ; 2 uses
  %exitcond114.not = icmp eq ptr %storemerge31, %i.z
  br i1 %exitcond114.not, label %._crit_edge, label %.lr.ph97, !llvm.loop !25

._crit_edge:                                      ; preds = %_ZN4absl18debugging_internalL6GetHexEPKcS2_Pm.exit, %bb.z, %_ZN4absl18debugging_internalL6GetHexEPKcS2_Pm.exit.preheader
  %storemerge31.lcssa = phi ptr [ %storemerge3194, %_ZN4absl18debugging_internalL6GetHexEPKcS2_Pm.exit.preheader ], [ %storemerge3196, %bb.z ], [ %scevgep113, %_ZN4absl18debugging_internalL6GetHexEPKcS2_Pm.exit ] ; 3 uses
  %i.cp = load atomic i32, ptr @_ZN4absl18debugging_internal12_GLOBAL__N_117g_file_mapping_muE monotonic, align 4 ; 3 uses
  %i.cq = and i32 %i.cp, 1
  %.not.i.i.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i.i.i, label %_ZN4absl13base_internal8SpinLock8try_lockEv.exit.i, label %_ZN4absl18debugging_internal18GetFileMappingHintEPPKvS3_PmPPKc.exit.thread

_ZN4absl13base_internal8SpinLock8try_lockEv.exit.i: ; preds = %._crit_edge
  %i.cr = or disjoint i32 %i.cp, 1
  %i.cs = cmpxchg ptr @_ZN4absl18debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 %i.cp, i32 %i.cr acquire monotonic, align 4
  %i.ct = extractvalue { i32, i1 } %i.cs, 0
  %.pre.i.i.i = and i32 %i.ct, 1
  %i.cu = icmp eq i32 %.pre.i.i.i, 0
  br i1 %i.cu, label %.preheader.i, label %_ZN4absl18debugging_internal18GetFileMappingHintEPPKvS3_PmPPKc.exit.thread

.preheader.i:                                     ; preds = %_ZN4absl13base_internal8SpinLock8try_lockEv.exit.i
  %i.cv = load i32, ptr @_ZN4absl18debugging_internal12_GLOBAL__N_124g_num_file_mapping_hintsE, align 4 ; 2 uses
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %.lr.ph.i53, label %.loopexit.i

.lr.ph.i53:                                       ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.cv to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %.lr.ph.i53
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i53 ], [ %indvars.iv.next.i, %bb.ac ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr @_ZN4absl18debugging_internal12_GLOBAL__N_120g_file_mapping_hintsE, i64 %indvars.iv.i ; 4 uses
  %i.cy = load ptr, ptr %i.cx, align 16           ; 3 uses
  %.not.i54 = icmp ugt ptr %i.cy, %.025.lcssa.i.i
  br i1 %.not.i54, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.da = load ptr, ptr %i.cz, align 8            ; 3 uses
  %.not18.i = icmp ugt ptr %.025.lcssa.i.i37, %i.da
  br i1 %.not18.i, label %bb.ac, label %.loopexit.i.thread

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i55 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i55, label %.loopexit.i, label %bb.aa, !llvm.loop !13

.loopexit.i:                                      ; preds = %bb.ac, %.preheader.i
  %i.db = load atomic i32, ptr @_ZN4absl18debugging_internal12_GLOBAL__N_117g_file_mapping_muE monotonic, align 4
  %i.dc = and i32 %i.db, 2
  %i.dd = atomicrmw xchg ptr @_ZN4absl18debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 %i.dc release, align 4 ; 2 uses
  %.not4.i.i = icmp ult i32 %i.dd, 8
  br i1 %.not4.i.i, label %_ZN4absl18debugging_internal18GetFileMappingHintEPPKvS3_PmPPKc.exit.thread, label %bb.ad

.loopexit.i.thread:                               ; preds = %bb.ab
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.df = load i64, ptr %i.de, align 16           ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  %i.di = load atomic i32, ptr @_ZN4absl18debugging_internal12_GLOBAL__N_117g_file_mapping_muE monotonic, align 4
  %i.dj = and i32 %i.di, 2
  %i.dk = atomicrmw xchg ptr @_ZN4absl18debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 %i.dj release, align 4 ; 2 uses
  %.not4.i.i141 = icmp ult i32 %i.dk, 8
  br i1 %.not4.i.i141, label %_ZN4absl18debugging_internal18GetFileMappingHintEPPKvS3_PmPPKc.exit.thread150, label %.thread

.thread:                                          ; preds = %.loopexit.i.thread
  tail call void @_ZN4absl13base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl18debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 noundef %i.dk) #25
  br label %_ZN4absl18debugging_internal18GetFileMappingHintEPPKvS3_PmPPKc.exit.thread150

bb.ad:                                            ; preds = %.loopexit.i
  tail call void @_ZN4absl13base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl18debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 noundef %i.dd) #25
  br label %_ZN4absl18debugging_internal18GetFileMappingHintEPPKvS3_PmPPKc.exit.thread

_ZN4absl18debugging_internal18GetFileMappingHintEPPKvS3_PmPPKc.exit.thread: ; preds = %bb.ad, %.loopexit.i, %._crit_edge, %_ZN4absl13base_internal8SpinLock8try_lockEv.exit.i
  %i.dl = icmp eq ptr %storemerge31.lcssa, %i.z
  br i1 %i.dl, label %.critedge.backedge, label %bb.ae

bb.ae:                                            ; preds = %_ZN4absl18debugging_internal18GetFileMappingHintEPPKvS3_PmPPKc.exit.thread
  %i.dm = load i8, ptr %storemerge31.lcssa, align 1
  %i.dn = icmp eq i8 %i.dm, 91
  br i1 %i.dn, label %.critedge.backedge, label %_ZN4absl18debugging_internal18GetFileMappingHintEPPKvS3_PmPPKc.exit.thread150

_ZN4absl18debugging_internal18GetFileMappingHintEPPKvS3_PmPPKc.exit.thread150: ; preds = %.thread, %.loopexit.i.thread, %bb.ae
  %.159 = phi i64 [ %.025.lcssa.i, %bb.ae ], [ %i.df, %.thread ], [ %i.df, %.loopexit.i.thread ]
  %.12957 = phi ptr [ %.025.lcssa.i.i37, %bb.ae ], [ %i.da, %.thread ], [ %i.da, %.loopexit.i.thread ]
  %.13155 = phi ptr [ %.025.lcssa.i.i, %bb.ae ], [ %i.cy, %.thread ], [ %i.cy, %.loopexit.i.thread ]
  %.352 = phi ptr [ %storemerge31.lcssa, %bb.ae ], [ %i.dh, %.thread ], [ %i.dh, %.loopexit.i.thread ]
  %i.do = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer15RegisterObjFileEPKcPKvS6_mPv(ptr noundef %.352, ptr noundef %.13155, ptr noundef %.12957, i64 noundef %.159, ptr noundef nonnull %0)
  br i1 %i.do, label %.critedge.backedge, label %_ZN4absl18debugging_internal12_GLOBAL__N_110LineReader8ReadLineEPPKcS5_.exit.thread

.critedge.backedge:                               ; preds = %_ZN4absl18debugging_internal18GetFileMappingHintEPPKvS3_PmPPKc.exit.thread150, %bb.u, %bb.ae, %_ZN4absl18debugging_internal18GetFileMappingHintEPPKvS3_PmPPKc.exit.thread, %_ZN4absl18debugging_internalL16ShouldUseMappingEPKc.exit
  br label %.critedge, !llvm.loop !26

_ZN4absl18debugging_internal12_GLOBAL__N_110LineReader8ReadLineEPPKcS5_.exit.thread: ; preds = %_ZN4absl18debugging_internal18GetFileMappingHintEPPKvS3_PmPPKc.exit.thread150, %bb.d, %bb.h, %bb.g, %bb.m, %bb.r, %.critedge2.thread
  %.6 = phi i1 [ false, %.critedge2.thread ], [ false, %bb.m ], [ false, %bb.r ], [ true, %bb.g ], [ true, %bb.h ], [ true, %bb.d ], [ true, %_ZN4absl18debugging_internal18GetFileMappingHintEPPKvS3_PmPPKc.exit.thread150 ]
  %i.dp = tail call i32 @close(i32 noundef %i.d) #21 ; 0 uses
  br label %_ZN4absl18debugging_internal12_GLOBAL__N_114FileDescriptorD2Ev.exit

_ZN4absl18debugging_internal12_GLOBAL__N_114FileDescriptorD2Ev.exit: ; preds = %.thread72, %_ZN4absl18debugging_internal12_GLOBAL__N_110LineReader8ReadLineEPPKcS5_.exit.thread
  %.674 = phi i1 [ false, %.thread72 ], [ %.6, %_ZN4absl18debugging_internal12_GLOBAL__N_110LineReader8ReadLineEPPKcS5_.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i1 %.674
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer15RegisterObjFileEPKcPKvS6_mPv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %.val = load i64, ptr %4, align 8               ; 5 uses
  %.not = icmp eq i64 %.val, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %4, i64 16
  %.val51 = load ptr, ptr %i.a, align 8
  %i.b = getelementptr [328 x i8], ptr %.val51, i64 %.val ; 5 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -328     ; 3 uses
  %i.d = getelementptr i8, ptr %i.b, i64 -312     ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = icmp ugt ptr %i.e, %2
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ptrtoint ptr %2 to i64
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = load ptr, ptr %i.c, align 8
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 52), i32 noundef 1254, ptr noundef nonnull @.str.20, i64 noundef %i.g, ptr noundef %0, i64 noundef %i.h, ptr noundef %i.i) #21
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.j = icmp eq ptr %i.e, %2
  br i1 %i.j, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %i.b, i64 -320
  %i.l = load ptr, ptr %i.k, align 8
  %.not49 = icmp eq ptr %i.l, %1
  %.pre = load ptr, ptr %i.c, align 8             ; 2 uses
  br i1 %.not49, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.pre, ptr noundef nonnull dereferenceable(1) %0) #23
  %.not50 = icmp eq i32 %i.m, 0
  br i1 %.not50, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.n = ptrtoint ptr %2 to i64                   ; 2 uses
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 52), i32 noundef 1263, ptr noundef nonnull @.str.21, i64 noundef %i.n, ptr noundef %0, i64 noundef %i.n, ptr noundef %.pre) #21
  br label %.critedge

bb.h:                                             ; preds = %bb.d
  %i.o = icmp eq ptr %i.e, %1
  br i1 %i.o, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr i8, ptr %i.b, i64 -320
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = getelementptr i8, ptr %i.b, i64 -304
  %i.t = load i64, ptr %i.s, align 8
  %i.u = sub i64 %i.r, %i.t
  %i.v = ptrtoint ptr %1 to i64
  %i.w = sub i64 %i.v, %3
  %i.x = icmp eq i64 %i.u, %i.w
  br i1 %i.x, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %i.c, align 8
  %i.z = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(1) %0) #23
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %2, ptr %i.d, align 8
  br label %.critedge

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = icmp eq i64 %.val, %i.ac
  br i1 %i.ad, label %bb.m, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.l
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %_ZN4absl18debugging_internal12_GLOBAL__N_17AddrMap3AddEv.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = shl i64 %.val, 1
  %i.af = add i64 %i.ae, 50                       ; 2 uses
  %i.ag = mul i64 %i.af, 328
  %i.ah = tail call noundef ptr @_ZN4absl13base_internal12SigSafeArenaEv() #21
  %i.ai = tail call noundef ptr @_ZN4absl13base_internal13LowLevelAlloc14AllocWithArenaEmPNS1_5ArenaE(i64 noundef %i.ag, ptr noundef %i.ah) #21 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = load i64, ptr %i.ab, align 8
  %i.am = mul i64 %i.al, 328
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ai, ptr nonnull align 8 %i.ak, i64 %i.am, i1 false)
  %i.an = load ptr, ptr %i.aj, align 8
  tail call void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.an) #21
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store ptr %i.ai, ptr %i.aj, align 8
  store i64 %i.af, ptr %i.ab, align 8
  %.pre5.i = load i64, ptr %4, align 8
  br label %_ZN4absl18debugging_internal12_GLOBAL__N_17AddrMap3AddEv.exit

_ZN4absl18debugging_internal12_GLOBAL__N_17AddrMap3AddEv.exit: ; preds = %._crit_edge.i, %bb.o
  %i.ao = phi i64 [ %.val, %._crit_edge.i ], [ %.pre5.i, %bb.o ] ; 2 uses
  %i.ap = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ai, %bb.o ]
  %i.aq = add i64 %i.ao, 1
  store i64 %i.aq, ptr %4, align 8
  %i.ar = getelementptr inbounds nuw [328 x i8], ptr %i.ap, i64 %i.ao ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.ar, i8 0, i64 32, i1 false)
  store i32 -1, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 36 ; 2 uses
  store i32 -1, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.au, i8 0, i64 288, i1 false)
  %i.av = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #23
  %i.aw = add i64 %i.av, 1                        ; 2 uses
  %i.ax = tail call noundef ptr @_ZN4absl13base_internal12SigSafeArenaEv() #21
  %i.ay = tail call noundef ptr @_ZN4absl13base_internal13LowLevelAlloc14AllocWithArenaEmPNS1_5ArenaE(i64 noundef %i.aw, ptr noundef %i.ax) #21 ; 3 uses
  %.not.i52 = icmp eq ptr %i.ay, null
  br i1 %.not.i52, label %bb.p, label %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer10CopyStringEPKc.exit, !prof !12

bb.p:                                             ; preds = %_ZN4absl18debugging_internal12_GLOBAL__N_17AddrMap3AddEv.exit
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 52), i32 noundef 318, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #21
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str, i32 noundef 318, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer10CopyStringEPKc) #24
  unreachable

_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer10CopyStringEPKc.exit: ; preds = %_ZN4absl18debugging_internal12_GLOBAL__N_17AddrMap3AddEv.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull readonly align 1 %0, i64 %i.aw, i1 false)
  store ptr %i.ay, ptr %i.ar, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %1, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %2, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store i64 %3, ptr %i.bb, align 8
  store i32 -1, ptr %i.at, align 4
  store i32 -1, ptr %i.as, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.f, %bb.k, %bb.g, %_ZN4absl18debugging_internal12_GLOBAL__N_110Symbolizer10CopyStringEPKc.exit
  ret i1 true
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN4absl18debugging_internal12_GLOBAL__N_122OpenReadOnlyWithHighFDEPKc(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4absl18debugging_internal12_GLOBAL__N_122OpenReadOnlyWithHighFDEPKcE7high_fd acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl18debugging_internal12_GLOBAL__N_122OpenReadOnlyWithHighFDEPKcE7high_fd) #21
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call fastcc noundef i32 @"_ZZN4absl18debugging_internal12_GLOBAL__N_122OpenReadOnlyWithHighFDEPKcENK3$_0clEv"()
  store i32 %i.d, ptr @_ZZN4absl18debugging_internal12_GLOBAL__N_122OpenReadOnlyWithHighFDEPKcE7high_fd, align 4
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl18debugging_internal12_GLOBAL__N_122OpenReadOnlyWithHighFDEPKcE7high_fd) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load i32, ptr @_ZZN4absl18debugging_internal12_GLOBAL__N_122OpenReadOnlyWithHighFDEPKcE7high_fd, align 4
  %i.f = icmp sgt i32 %i.e, 999
  %i.g = tail call i32 (ptr, i32, ...) @open64(ptr noundef %0, i32 noundef 524288) #21 ; 8 uses
  br i1 %i.f, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %.not13 = icmp eq i32 %i.g, -1
  br i1 %.not13, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load i32, ptr @_ZZN4absl18debugging_internal12_GLOBAL__N_122OpenReadOnlyWithHighFDEPKcE7high_fd, align 4 ; 2 uses
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.j = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %i.g, i32 noundef 1030, i32 noundef %i.h) #21 ; 2 uses
  %.not14 = icmp eq i32 %i.j, -1
  br i1 %.not14, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  %i.k = load i32, ptr @_ZZN4absl18debugging_internal12_GLOBAL__N_122OpenReadOnlyWithHighFDEPKcE7high_fd, align 4
  %i.l = tail call ptr @__errno_location() #22
  %i.m = load i32, ptr %i.l, align 4
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 52), i32 noundef 396, ptr noundef nonnull @.str.18, i32 noundef %i.g, i32 noundef %i.k, i32 noundef %i.m) #21
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = tail call i32 @close(i32 noundef %i.g) #21 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.e, %bb.f, %.thread, %bb.h
  %.2 = phi i32 [ -1, %bb.e ], [ %i.j, %bb.h ], [ %i.g, %.thread ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  ret i32 %.2
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef range(i32 -2147483648, 2001) i32 @"_ZZN4absl18debugging_internal12_GLOBAL__N_122OpenReadOnlyWithHighFDEPKcENK3$_0clEv"() unnamed_addr #15 align 2 {
bb.a:
  %0 = alloca %struct.rlimit, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = call i32 @getrlimit64(i32 noundef 7, ptr noundef nonnull %0) #21 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  %i.c = load i64, ptr %0, align 8                ; 3 uses
  %i.d = icmp ugt i64 %i.c, 1999
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %i.c to i32
  %i.f = call i32 @llvm.smin.i32(i32 %i.e, i32 3000)
  %.sroa.speculated = add nsw i32 %i.f, -1000
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 52), i32 noundef 379, ptr noundef nonnull @.str.19, i32 noundef %i.a, i64 noundef %i.c) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %.sroa.speculated, %bb.b ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #21
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #14

; Function Attrs: nofree
declare noundef i32 @open64(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #16

declare i32 @fcntl64(i32 noundef, i32 noundef, ...) local_unnamed_addr #1

declare i32 @close(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nounwind
declare i32 @getrlimit64(i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i64 -1, -9223372036854775808) i64 @_ZN4absl18debugging_internalL14ReadPersistentEiPvm(i32 noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, -1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp sgt i64 %2, -1
  br i1 %i.b, label %.preheader32, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #24
  unreachable

.preheader32:                                     ; preds = %bb.c, %.critedge25
  %.019 = phi i64 [ %i.l, %.critedge25 ], [ 0, %bb.c ] ; 5 uses
  %i.c = icmp ult i64 %.019, %2
  br i1 %i.c, label %.preheader, label %.thread29

.preheader:                                       ; preds = %.preheader32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.019
  %i.e = sub nuw nsw i64 %2, %.019
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.f
  %i.f = tail call i64 @read(i32 noundef %0, ptr noundef %i.d, i64 noundef %i.e) #21 ; 3 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.f, label %.critedge25

bb.f:                                             ; preds = %bb.e
  %i.h = tail call ptr @__errno_location() #22
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = icmp eq i32 %i.i, 4
  br i1 %i.j, label %bb.e, label %.thread, !llvm.loop !28

.thread:                                          ; preds = %bb.f
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 52), i32 noundef 480, ptr noundef nonnull @.str.6, i32 noundef %i.i) #21
  br label %bb.h

.critedge25:                                      ; preds = %bb.e
  %i.k = icmp eq i64 %i.f, 0
  %i.l = add nuw i64 %i.f, %.019                  ; 2 uses
  br i1 %i.k, label %.thread29, label %.preheader32

.thread29:                                        ; preds = %.critedge25, %.preheader32
  %.221 = phi i64 [ %.019, %.preheader32 ], [ %i.l, %.critedge25 ] ; 2 uses
  %.not = icmp ugt i64 %.221, %2
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread29
  tail call void @abort() #24
  unreachable

bb.h:                                             ; preds = %.thread, %.thread29
  %.2 = phi i64 [ -1, %.thread ], [ %.221, %.thread29 ]
  ret i64 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare void @_ZN4absl13base_internal13LowLevelAlloc4FreeEPv(ptr noundef) local_unnamed_addr #1 section "malloc_hook"

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL22GetSectionHeaderByTypeEPNS0_12_GLOBAL__N_111CachingFileEtljP10Elf64_ShdrPcm(ptr nofree noundef nonnull captures(none) %0, i16 noundef zeroext %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef nonnull writeonly captures(none) %4, ptr nofree noundef nonnull captures(none) %5) unnamed_addr #12 {
bb.a:
  %i.a = zext i16 %1 to i32
  %.not5688.not = icmp eq i16 %1, 0
  br i1 %.not5688.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = zext i16 %1 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %.04589 = phi i64 [ 0, %.lr.ph ], [ %i.aq, %bb.m ] ; 3 uses
  %i.g = sub i64 %i.b, %.04589
  %i.h = shl i64 %i.g, 6                          ; 2 uses
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 1024) ; 4 uses
  %i.j = shl i64 %.04589, 6
  %i.k = add nsw i64 %i.j, %2                     ; 3 uses
  %.not74.i = icmp eq i64 %i.h, 0
  br i1 %.not74.i, label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread, label %.lr.ph.split.us.preheader.i

.lr.ph.split.us.preheader.i:                      ; preds = %bb.b, %.outer.i
  %.028.ph72.i = phi i64 [ %i.af, %.outer.i ], [ %i.k, %bb.b ] ; 8 uses
  %.029.ph71.i = phi ptr [ %i.ad, %.outer.i ], [ %5, %bb.b ] ; 2 uses
  %.030.ph70.i = phi i64 [ %i.ae, %.outer.i ], [ 0, %bb.b ] ; 3 uses
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.backedge, %.lr.ph.split.us.preheader.i
  %i.l = load i64, ptr %i.c, align 8              ; 2 uses
  %.not.us.i = icmp slt i64 %.028.ph72.i, %i.l
  br i1 %.not.us.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us.i
  %i.m = load i64, ptr %i.d, align 8              ; 2 uses
  %i.n = icmp slt i64 %.028.ph72.i, %i.m
  br i1 %i.n, label %.outer.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.split.us.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.o = load i32, ptr %0, align 8
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = load i64, ptr %i.f, align 8
  %i.r = tail call i64 @pread64(i32 noundef %i.o, ptr noundef %i.p, i64 noundef %i.q, i64 noundef %.028.ph72.i) #21 ; 3 uses
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %.028.ph72.i, ptr %i.c, align 8
  %i.u = add nsw i64 %i.r, %.028.ph72.i
  store i64 %i.u, ptr %i.d, align 8
  br label %.lr.ph.split.us.i.backedge

bb.g:                                             ; preds = %bb.d
  %i.v = tail call ptr @__errno_location() #22
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %i.x = icmp eq i32 %i.w, 4
  br i1 %i.x, label %.lr.ph.split.us.i.backedge, label %.thread39.i

.lr.ph.split.us.i.backedge:                       ; preds = %bb.g, %bb.f
  br label %.lr.ph.split.us.i, !llvm.loop !5

.outer.i:                                         ; preds = %bb.c
  %i.y = load ptr, ptr %i.e, align 8
  %i.z = sub nsw i64 %.028.ph72.i, %i.l
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 %i.z
  %i.ab = sub nsw i64 %i.i, %.030.ph70.i
  %i.ac = sub nsw i64 %i.m, %.028.ph72.i
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ab) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.029.ph71.i, ptr align 1 %i.aa, i64 %.sroa.speculated.i, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.029.ph71.i, i64 %.sroa.speculated.i
  %i.ae = add i64 %.sroa.speculated.i, %.030.ph70.i ; 3 uses
  %i.af = add nsw i64 %.sroa.speculated.i, %.028.ph72.i
  %i.ag = icmp ult i64 %i.ae, %i.i
  br i1 %i.ag, label %.lr.ph.split.us.preheader.i, label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit

.thread39.i:                                      ; preds = %bb.g
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 52), i32 noundef 518, ptr noundef nonnull @.str.6, i32 noundef %i.w) #21
  br label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread

_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit: ; preds = %.outer.i, %bb.e
  %.2.i = phi i64 [ %.030.ph70.i, %bb.e ], [ %i.ae, %.outer.i ] ; 6 uses
  %i.ah = icmp slt i64 %.2.i, 1
  br i1 %i.ah, label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread, label %bb.h

_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread: ; preds = %bb.b, %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit, %.thread39.i
  %.2.i59 = phi i64 [ -1, %.thread39.i ], [ 0, %bb.b ], [ %.2.i, %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit ]
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 52), i32 noundef 573, ptr noundef nonnull @.str.30, i64 noundef %i.i, i64 noundef %i.k, i64 noundef %.2.i59) #21
  br label %.thread

bb.h:                                             ; preds = %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit
  %i.ai = and i64 %.2.i, 63
  %.not = icmp eq i64 %i.ai, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 52), i32 noundef 582, ptr noundef nonnull @.str.31, i64 noundef %i.i, i64 noundef %i.k, i64 noundef %.2.i, i64 noundef 64) #21
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.aj = lshr exact i64 %.2.i, 6                 ; 2 uses
  %i.ak = icmp samesign ult i64 %.2.i, 1088
  br i1 %i.ak, label %.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @abort() #24
  unreachable

bb.l:                                             ; preds = %.preheader
  %i.al = add nuw nsw i64 %.087, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.al, %i.aj
  br i1 %exitcond.not, label %bb.m, label %.preheader, !llvm.loop !29

.preheader:                                       ; preds = %bb.j, %bb.l
  %.087 = phi i64 [ %i.al, %bb.l ], [ 0, %bb.j ]  ; 2 uses
  %i.am = getelementptr inbounds nuw [64 x i8], ptr %5, i64 %.087 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = icmp eq i32 %i.ao, %3
  br i1 %i.ap, label %.thread63, label %bb.l

.thread63:                                        ; preds = %.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %i.am, i64 64, i1 false)
  br label %.thread

bb.m:                                             ; preds = %bb.l
  %i.aq = add i64 %i.aj, %.04589                  ; 2 uses
  %i.ar = trunc i64 %i.aq to i32
  %.not56 = icmp slt i32 %i.ar, %i.a
  br i1 %.not56, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.m, %bb.a, %bb.i, %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread, %.thread63
  %.3 = phi i1 [ true, %.thread63 ], [ false, %bb.i ], [ false, %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread ], [ false, %bb.a ], [ false, %bb.m ]
  ret i1 %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef range(i32 1, 4) i32 @_ZN4absl18debugging_internalL10FindSymbolEPKvPNS0_12_GLOBAL__N_111CachingFileEPcmlPK10Elf64_ShdrS9_S9_S6_m(ptr nofree noundef readnone captures(address) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull %2, i64 noundef %3, i64 %.24.val, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull captures(none) %5) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = udiv i64 %i.b, %i.d                      ; 2 uses
  %.not51 = icmp ugt i64 %i.d, %i.b
  br i1 %.not51, label %._crit_edge48.thread, label %.lr.ph.lr.ph.i.lr.ph

.lr.ph.lr.ph.i.lr.ph:                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.lr.ph.lr.ph.i

._crit_edge48:                                    ; preds = %._crit_edge
  %i.k = trunc nuw i8 %.166.lcssa to i1
  br i1 %i.k, label %bb.r, label %._crit_edge48.thread

.lr.ph.lr.ph.i:                                   ; preds = %.lr.ph.lr.ph.i.lr.ph, %._crit_edge
  %.06547 = phi i8 [ 0, %.lr.ph.lr.ph.i.lr.ph ], [ %.166.lcssa, %._crit_edge ] ; 2 uses
  %.06846 = phi i64 [ 0, %.lr.ph.lr.ph.i.lr.ph ], [ %i.ar, %._crit_edge ] ; 3 uses
  %.sroa.0.045 = phi i32 [ 0, %.lr.ph.lr.ph.i.lr.ph ], [ %.sroa.0.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.52.044 = phi i64 [ 0, %.lr.ph.lr.ph.i.lr.ph ], [ %.sroa.52.1.lcssa, %._crit_edge ] ; 2 uses
  %i.l = sub nuw i64 %i.e, %.06846
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.l, i64 42) ; 2 uses
  %i.m = mul nuw nsw i64 %.sroa.speculated, 24    ; 2 uses
  %i.n = load i64, ptr %i.f, align 8
  %i.o = load i64, ptr %i.c, align 8
  %i.p = mul i64 %i.o, %.06846
  %i.q = add i64 %i.p, %i.n
  br label %.lr.ph.split.us.preheader.i

.lr.ph.split.us.preheader.i:                      ; preds = %.outer.i, %.lr.ph.lr.ph.i
  %.028.ph72.i = phi i64 [ %i.q, %.lr.ph.lr.ph.i ], [ %i.al, %.outer.i ] ; 8 uses
  %.029.ph71.i = phi ptr [ %5, %.lr.ph.lr.ph.i ], [ %i.aj, %.outer.i ] ; 2 uses
  %.030.ph70.i = phi i64 [ 0, %.lr.ph.lr.ph.i ], [ %i.ak, %.outer.i ] ; 3 uses
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.backedge, %.lr.ph.split.us.preheader.i
  %i.r = load i64, ptr %i.g, align 8              ; 2 uses
  %.not.us.i = icmp slt i64 %.028.ph72.i, %i.r
  br i1 %.not.us.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.i
  %i.s = load i64, ptr %i.h, align 8              ; 2 uses
  %i.t = icmp slt i64 %.028.ph72.i, %i.s
  br i1 %i.t, label %.outer.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.u = load i32, ptr %1, align 8
  %i.v = load ptr, ptr %i.i, align 8
  %i.w = load i64, ptr %i.j, align 8
  %i.x = tail call i64 @pread64(i32 noundef %i.u, ptr noundef %i.v, i64 noundef %i.w, i64 noundef %.028.ph72.i) #21 ; 3 uses
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %.028.ph72.i, ptr %i.g, align 8
  %i.aa = add nsw i64 %i.x, %.028.ph72.i
  store i64 %i.aa, ptr %i.h, align 8
  br label %.lr.ph.split.us.i.backedge

bb.f:                                             ; preds = %bb.c
  %i.ab = tail call ptr @__errno_location() #22
  %i.ac = load i32, ptr %i.ab, align 4            ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 4
  br i1 %i.ad, label %.lr.ph.split.us.i.backedge, label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread7

.lr.ph.split.us.i.backedge:                       ; preds = %bb.f, %bb.e
  br label %.lr.ph.split.us.i, !llvm.loop !5

.outer.i:                                         ; preds = %bb.b
  %i.ae = load ptr, ptr %i.i, align 8
  %i.af = sub nsw i64 %.028.ph72.i, %i.r
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 %i.af
  %i.ah = sub nsw i64 %i.m, %.030.ph70.i
  %i.ai = sub nsw i64 %i.s, %.028.ph72.i
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 %i.ah) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.029.ph71.i, ptr align 1 %i.ag, i64 %.sroa.speculated.i, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %.029.ph71.i, i64 %.sroa.speculated.i
  %i.ak = add i64 %.sroa.speculated.i, %.030.ph70.i ; 3 uses
  %i.al = add nsw i64 %.sroa.speculated.i, %.028.ph72.i
  %i.am = icmp ult i64 %i.ak, %i.m
  br i1 %i.am, label %.lr.ph.split.us.preheader.i, label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit

_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread7: ; preds = %bb.f
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 52), i32 noundef 518, ptr noundef nonnull @.str.6, i32 noundef %i.ac) #21
  br label %.loopexit

_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit: ; preds = %.outer.i, %bb.d
  %.2.i = phi i64 [ %.030.ph70.i, %bb.d ], [ %i.ak, %.outer.i ] ; 4 uses
  %i.an = icmp sgt i64 %.2.i, -1
  br i1 %i.an, label %bb.g, label %.loopexit

.loopexit:                                        ; preds = %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit, %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread7
  tail call void @abort() #24
  unreachable

bb.g:                                             ; preds = %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit
  %i.ao = urem i64 %.2.i, 24
  %i.ap = udiv i64 %.2.i, 24                      ; 3 uses
  %i.aq = icmp eq i64 %i.ao, 0
  br i1 %i.aq, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @abort() #24
  unreachable

.thread:                                          ; preds = %bb.g
  %.not = icmp samesign ugt i64 %i.ap, %.sroa.speculated
  br i1 %.not, label %bb.i, label %.preheader

.preheader:                                       ; preds = %.thread
  %.not52 = icmp samesign ult i64 %.2.i, 24
  br i1 %.not52, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %.thread
  tail call void @abort() #24
  unreachable

._crit_edge:                                      ; preds = %bb.q, %.preheader
  %.sroa.52.1.lcssa = phi i64 [ %.sroa.52.044, %.preheader ], [ %.sroa.52.2, %bb.q ]
  %.sroa.0.1.lcssa = phi i32 [ %.sroa.0.045, %.preheader ], [ %.sroa.0.2, %bb.q ] ; 2 uses
  %.166.lcssa = phi i8 [ %.06547, %.preheader ], [ %.267, %bb.q ] ; 2 uses
  %i.ar = add i64 %i.ap, %.06846                  ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.e
  br i1 %i.as, label %.lr.ph.lr.ph.i, label %._crit_edge48, !llvm.loop !30

.lr.ph:                                           ; preds = %.preheader, %bb.q
  %.16641 = phi i8 [ %.267, %bb.q ], [ %.06547, %.preheader ] ; 5 uses
  %.06940 = phi i64 [ %i.bm, %bb.q ], [ 0, %.preheader ] ; 2 uses
  %.sroa.0.139 = phi i32 [ %.sroa.0.2, %bb.q ], [ %.sroa.0.045, %.preheader ] ; 5 uses
  %.sroa.52.138 = phi i64 [ %.sroa.52.2, %bb.q ], [ %.sroa.52.044, %.preheader ] ; 6 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %.06940 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.au, align 8            ; 2 uses
  %i.aw = add nsw i64 %i.av, %3                   ; 2 uses
  %i.ax = inttoptr i64 %i.aw to ptr               ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.az = load i64, ptr %i.ay, align 8            ; 3 uses
  %i.ba = add nsw i64 %i.az, %i.aw
  %i.bb = inttoptr i64 %i.ba to ptr               ; 2 uses
  %.not78 = icmp eq i64 %i.av, 0
  br i1 %.not78, label %bb.q, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 6
  %i.bd = load i16, ptr %i.bc, align 2
  %.not79 = icmp eq i16 %i.bd, 0
  br i1 %.not79, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.bf = load i8, ptr %i.be, align 4
  %i.bg = and i8 %i.bf, 15
  %.not80 = icmp eq i8 %i.bg, 6
  br i1 %.not80, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not81 = icmp uge ptr %0, %i.ax
  %i.bh = icmp ult ptr %0, %i.bb
  %or.cond = and i1 %.not81, %i.bh
  br i1 %or.cond, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = icmp eq ptr %0, %i.ax
  %i.bj = icmp eq ptr %0, %i.bb
  %or.cond82 = and i1 %i.bi, %i.bj
  br i1 %or.cond82, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bk = trunc nuw i8 %.16641 to i1
  br i1 %i.bk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.not.i = icmp ne i64 %i.az, 0
  %i.bl = icmp eq i64 %.sroa.52.138, 0
  %spec.select.i = select i1 %.not.i, i1 true, i1 %i.bl
  br i1 %spec.select.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.0.0.copyload = load i32, ptr %i.at, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.m, %bb.k, %bb.j, %.lr.ph
  %.sroa.52.2 = phi i64 [ %.sroa.52.138, %.lr.ph ], [ %.sroa.52.138, %bb.j ], [ %.sroa.52.138, %bb.k ], [ %i.az, %bb.p ], [ %.sroa.52.138, %bb.o ], [ %.sroa.52.138, %bb.m ] ; 2 uses
  %.sroa.0.2 = phi i32 [ %.sroa.0.139, %.lr.ph ], [ %.sroa.0.139, %bb.j ], [ %.sroa.0.139, %bb.k ], [ %.sroa.0.0.copyload, %bb.p ], [ %.sroa.0.139, %bb.o ], [ %.sroa.0.139, %bb.m ] ; 2 uses
  %.267 = phi i8 [ %.16641, %.lr.ph ], [ %.16641, %bb.j ], [ %.16641, %bb.k ], [ 1, %bb.p ], [ 1, %bb.o ], [ %.16641, %bb.m ] ; 2 uses
  %i.bm = add nuw nsw i64 %.06940, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bm, %i.ap
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !31

bb.r:                                             ; preds = %._crit_edge48
  %i.bn = zext i32 %.sroa.0.1.lcssa to i64
  %i.bo = add nsw i64 %.24.val, %i.bn             ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.lr.ph.split.us.preheader.i86

.lr.ph.split.us.preheader.i86:                    ; preds = %.outer.i94, %bb.r
  %.028.ph72.i87 = phi i64 [ %i.bo, %bb.r ], [ %i.cn, %.outer.i94 ] ; 8 uses
  %.029.ph71.i88 = phi ptr [ %2, %bb.r ], [ %i.cl, %.outer.i94 ] ; 2 uses
  %.030.ph70.i89 = phi i64 [ 0, %bb.r ], [ %i.cm, %.outer.i94 ] ; 3 uses
  br label %.lr.ph.split.us.i90

.lr.ph.split.us.i90:                              ; preds = %.lr.ph.split.us.i90.backedge, %.lr.ph.split.us.preheader.i86
  %i.bt = load i64, ptr %i.bp, align 8            ; 2 uses
  %.not.us.i91 = icmp slt i64 %.028.ph72.i87, %i.bt
  br i1 %.not.us.i91, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.split.us.i90
  %i.bu = load i64, ptr %i.bq, align 8            ; 2 uses
  %i.bv = icmp slt i64 %.028.ph72.i87, %i.bu
  br i1 %i.bv, label %.outer.i94, label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.split.us.i90
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false)
  %i.bw = load i32, ptr %1, align 8
  %i.bx = load ptr, ptr %i.br, align 8
  %i.by = load i64, ptr %i.bs, align 8
  %i.bz = tail call i64 @pread64(i32 noundef %i.bw, ptr noundef %i.bx, i64 noundef %i.by, i64 noundef %.028.ph72.i87) #21 ; 3 uses
  %i.ca = icmp slt i64 %i.bz, 0
  br i1 %i.ca, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = icmp eq i64 %i.bz, 0
  br i1 %i.cb, label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit96, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i64 %.028.ph72.i87, ptr %i.bp, align 8
  %i.cc = add nsw i64 %i.bz, %.028.ph72.i87
  store i64 %i.cc, ptr %i.bq, align 8
  br label %.lr.ph.split.us.i90.backedge

bb.w:                                             ; preds = %bb.t
  %i.cd = tail call ptr @__errno_location() #22
  %i.ce = load i32, ptr %i.cd, align 4            ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 4
  br i1 %i.cf, label %.lr.ph.split.us.i90.backedge, label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit96.thread

.lr.ph.split.us.i90.backedge:                     ; preds = %bb.w, %bb.v
  br label %.lr.ph.split.us.i90, !llvm.loop !5

.outer.i94:                                       ; preds = %bb.s
  %i.cg = load ptr, ptr %i.br, align 8
  %i.ch = sub nsw i64 %.028.ph72.i87, %i.bt
  %i.ci = getelementptr inbounds i8, ptr %i.cg, i64 %i.ch
  %i.cj = sub nuw nsw i64 3072, %.030.ph70.i89
  %i.ck = sub nsw i64 %i.bu, %.028.ph72.i87
  %.sroa.speculated.i95 = tail call i64 @llvm.umin.i64(i64 %i.ck, i64 %i.cj) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.029.ph71.i88, ptr align 1 %i.ci, i64 %.sroa.speculated.i95, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %.029.ph71.i88, i64 %.sroa.speculated.i95
  %i.cm = add nuw nsw i64 %.sroa.speculated.i95, %.030.ph70.i89 ; 3 uses
  %i.cn = add nsw i64 %.sroa.speculated.i95, %.028.ph72.i87
  %i.co = icmp samesign ult i64 %i.cm, 3072
  br i1 %i.co, label %.lr.ph.split.us.preheader.i86, label %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit96

_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit96.thread: ; preds = %bb.w
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 52), i32 noundef 518, ptr noundef nonnull @.str.6, i32 noundef %i.ce) #21
  br label %bb.x

_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit96: ; preds = %.outer.i94, %bb.u
  %.2.i92 = phi i64 [ %.030.ph70.i89, %bb.u ], [ %i.cm, %.outer.i94 ] ; 4 uses
  %i.cp = icmp slt i64 %.2.i92, 1
  br i1 %i.cp, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit96.thread, %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit96
  %.2.i9212 = phi i64 [ -1, %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit96.thread ], [ 0, %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit96 ]
  %.val84 = load i32, ptr %1, align 8
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 52), i32 noundef 863, ptr noundef nonnull @.str.32, i32 noundef %.val84, i64 noundef %i.bo, i64 noundef %.2.i9212) #21
  br label %._crit_edge48.thread

bb.y:                                             ; preds = %_ZN4absl18debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit96
  %i.cq = icmp samesign ugt i64 %.2.i92, 3072
  br i1 %i.cq, label %bb.z, label %bb.aa, !prof !12

bb.z:                                             ; preds = %bb.y
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 52), i32 noundef 867, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #21
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str, i32 noundef 867, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl18debugging_internalL10FindSymbolEPKvPNS0_12_GLOBAL__N_111CachingFileEPcmlPK10Elf64_ShdrS9_S9_S6_m) #24
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cr = tail call noundef ptr @memchr(ptr noundef nonnull %2, i32 noundef 0, i64 noundef %.2.i92) #23
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.ab, label %._crit_edge48.thread

bb.ab:                                            ; preds = %bb.aa
  %i.ct = getelementptr i8, ptr %2, i64 %.2.i92
  %i.cu = getelementptr i8, ptr %i.ct, i64 -1
  store i8 0, ptr %i.cu, align 1
  br label %._crit_edge48.thread

._crit_edge48.thread:                             ; preds = %bb.a, %._crit_edge48, %bb.x, %bb.ab, %bb.aa
  %.1 = phi i32 [ 3, %bb.aa ], [ 1, %bb.x ], [ 2, %bb.ab ], [ 1, %._crit_edge48 ], [ 1, %bb.a ]
  ret i32 %.1
}

declare noundef zeroext i1 @_ZN4absl18debugging_internal8DemangleEPKcPcm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind }
attributes #22 = { nounwind willreturn memory(none) }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { noreturn nounwind }
attributes #25 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{null}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!16 = distinct !{null, null}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = !{i8 0, i8 2}
!20 = !{}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6}
!27 = !{!"branch_weights", i32 1, i32 1048575}
!28 = distinct !{!28, !6}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, !6}
end_hunk_1
