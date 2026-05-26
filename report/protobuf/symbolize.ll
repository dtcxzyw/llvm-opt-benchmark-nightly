inline.NumInlined: 131
inline.NumDeleted: 67
begin_hunk_0_@_ZN4absl12lts_2025051218debugging_internal22GetSectionHeaderByNameEiPKcmP10Elf64_Shdr:bb.a
.lr.ph.i35:                                       ; preds = %.lr.ph.split.us.preheader.i.i29, %.lr.ph.split.us.i.i36
  %i.ae = call i64 @pread(i32 noundef %0, ptr noundef nonnull %i.b, i64 noundef 100, i64 noundef %.028.ph72.i.i30) ; 3 uses
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i35
  %i.ag = icmp eq i64 %i.ae, 0
  br i1 %i.ag, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit48.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = add nsw i64 %i.ae, %.028.ph72.i.i30
  br label %.lr.ph.split.us.i.i36

bb.j:                                             ; preds = %.lr.ph.i35
  %i.ai = tail call ptr @__errno_location() #24
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3  ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 4
  br i1 %i.ak, label %..lr.ph.split.us.i_crit_edge.i45, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit48.thread.sink.split, !llvm.loop !11

..lr.ph.split.us.i_crit_edge.i45:                 ; preds = %bb.j
  br label %.lr.ph.split.us.i.i36, !llvm.loop !11

.lr.ph.split.us.i.i36:                            ; preds = %..lr.ph.split.us.i_crit_edge.i45, %bb.i
  %.sroa.37.7 = phi i64 [ 0, %..lr.ph.split.us.i_crit_edge.i45 ], [ %i.ah, %bb.i ] ; 2 uses
  %.sroa.21.7 = phi i64 [ 0, %..lr.ph.split.us.i_crit_edge.i45 ], [ %.028.ph72.i.i30, %bb.i ] ; 2 uses
  %.not.us.i.i37 = icmp sge i64 %.028.ph72.i.i30, %.sroa.21.7
  %i.al = icmp slt i64 %.028.ph72.i.i30, %.sroa.37.7
  %or.cond.i.i38 = select i1 %.not.us.i.i37, i1 %i.al, i1 false
  br i1 %or.cond.i.i38, label %.outer.i.i39, label %.lr.ph.i35

.outer.i.i39:                                     ; preds = %.lr.ph.split.us.i.i36, %.lr.ph.split.us.preheader.i.i29
  %.sroa.37.8 = phi i64 [ %.sroa.37.6, %.lr.ph.split.us.preheader.i.i29 ], [ %.sroa.37.7, %.lr.ph.split.us.i.i36 ] ; 3 uses
  %.sroa.21.8 = phi i64 [ %.sroa.21.6, %.lr.ph.split.us.preheader.i.i29 ], [ %.sroa.21.7, %.lr.ph.split.us.i.i36 ] ; 3 uses
  %i.am = sub nsw i64 %.028.ph72.i.i30, %.sroa.21.8
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.am
  %i.ao = sub nuw nsw i64 64, %.030.ph70.i.i32
  %i.ap = sub nsw i64 %.sroa.37.8, %.028.ph72.i.i30
  %.sroa.speculated.i.i42 = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 %i.ao) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.029.ph71.i.i31, ptr nonnull align 1 %i.an, i64 %.sroa.speculated.i.i42, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.029.ph71.i.i31, i64 %.sroa.speculated.i.i42
  %i.ar = add nuw nsw i64 %.sroa.speculated.i.i42, %.030.ph70.i.i32 ; 2 uses
  %i.as = add nsw i64 %.sroa.speculated.i.i42, %.028.ph72.i.i30
  %i.at = icmp samesign ult i64 %i.ar, 64
  br i1 %i.at, label %.lr.ph.split.us.preheader.i.i29, label %.preheader

.preheader:                                       ; preds = %.outer.i.i39
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.av = load i16, ptr %i.au, align 4, !tbaa !19 ; 2 uses
  %.not28137.not = icmp eq i16 %i.av, 0
  br i1 %.not28137.not, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit48.thread, label %.lr.ph141

.lr.ph141:                                        ; preds = %.preheader
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ax = load i64, ptr %i.aw, align 8
  %.not77.i = icmp eq i64 %2, 0
  %wide.trip.count = zext i16 %i.av to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph141, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph141 ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %.sroa.21.0139 = phi i64 [ %.sroa.21.8, %.lr.ph141 ], [ %.sroa.21.17115, %bb.s ]
  %.sroa.37.0138 = phi i64 [ %.sroa.37.8, %.lr.ph141 ], [ %.sroa.37.17114, %bb.s ]
  %i.ay = shl nuw nsw i64 %indvars.iv, 6
  %i.az = add nsw i64 %i.x, %i.ay
  br label %.lr.ph.split.us.preheader.i.i49

.lr.ph.split.us.preheader.i.i49:                  ; preds = %.outer.i.i59, %bb.k
  %.sroa.37.10 = phi i64 [ %.sroa.37.0138, %bb.k ], [ %.sroa.37.12, %.outer.i.i59 ] ; 2 uses
  %.sroa.21.10 = phi i64 [ %.sroa.21.0139, %bb.k ], [ %.sroa.21.12, %.outer.i.i59 ] ; 2 uses
  %.028.ph72.i.i50 = phi i64 [ %i.az, %bb.k ], [ %i.bp, %.outer.i.i59 ] ; 10 uses
  %.029.ph71.i.i51 = phi ptr [ %3, %bb.k ], [ %i.bn, %.outer.i.i59 ] ; 2 uses
  %.030.ph70.i.i52 = phi i64 [ 0, %bb.k ], [ %i.bo, %.outer.i.i59 ] ; 2 uses
  %.not.us.i16.i53 = icmp sge i64 %.028.ph72.i.i50, %.sroa.21.10
  %i.ba = icmp slt i64 %.028.ph72.i.i50, %.sroa.37.10
  %or.cond.i17.i54 = and i1 %.not.us.i16.i53, %i.ba
  br i1 %or.cond.i17.i54, label %.outer.i.i59, label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %.lr.ph.split.us.preheader.i.i49, %.lr.ph.split.us.i.i56
  %i.bb = call i64 @pread(i32 noundef %0, ptr noundef nonnull %i.b, i64 noundef 100, i64 noundef %.028.ph72.i.i50) ; 3 uses
  %i.bc = icmp slt i64 %i.bb, 0
  br i1 %i.bc, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i55
  %i.bd = icmp eq i64 %i.bb, 0
  br i1 %i.bd, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit48.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = add nsw i64 %i.bb, %.028.ph72.i.i50
  br label %.lr.ph.split.us.i.i56

bb.n:                                             ; preds = %.lr.ph.i55
  %i.bf = tail call ptr @__errno_location() #24
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3  ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 4
  br i1 %i.bh, label %..lr.ph.split.us.i_crit_edge.i65, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit48.thread.sink.split, !llvm.loop !11

..lr.ph.split.us.i_crit_edge.i65:                 ; preds = %bb.n
  br label %.lr.ph.split.us.i.i56, !llvm.loop !11

.lr.ph.split.us.i.i56:                            ; preds = %..lr.ph.split.us.i_crit_edge.i65, %bb.m
  %.sroa.37.11 = phi i64 [ 0, %..lr.ph.split.us.i_crit_edge.i65 ], [ %i.be, %bb.m ] ; 2 uses
  %.sroa.21.11 = phi i64 [ 0, %..lr.ph.split.us.i_crit_edge.i65 ], [ %.028.ph72.i.i50, %bb.m ] ; 2 uses
  %.not.us.i.i57 = icmp sge i64 %.028.ph72.i.i50, %.sroa.21.11
  %i.bi = icmp slt i64 %.028.ph72.i.i50, %.sroa.37.11
  %or.cond.i.i58 = select i1 %.not.us.i.i57, i1 %i.bi, i1 false
  br i1 %or.cond.i.i58, label %.outer.i.i59, label %.lr.ph.i55

.outer.i.i59:                                     ; preds = %.lr.ph.split.us.i.i56, %.lr.ph.split.us.preheader.i.i49
  %.sroa.37.12 = phi i64 [ %.sroa.37.10, %.lr.ph.split.us.preheader.i.i49 ], [ %.sroa.37.11, %.lr.ph.split.us.i.i56 ] ; 4 uses
  %.sroa.21.12 = phi i64 [ %.sroa.21.10, %.lr.ph.split.us.preheader.i.i49 ], [ %.sroa.21.11, %.lr.ph.split.us.i.i56 ] ; 4 uses
  %i.bj = sub nsw i64 %.028.ph72.i.i50, %.sroa.21.12
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bj
  %i.bl = sub nuw nsw i64 64, %.030.ph70.i.i52
  %i.bm = sub nsw i64 %.sroa.37.12, %.028.ph72.i.i50
  %.sroa.speculated.i.i62 = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bl) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.029.ph71.i.i51, ptr nonnull align 1 %i.bk, i64 %.sroa.speculated.i.i62, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %.029.ph71.i.i51, i64 %.sroa.speculated.i.i62
  %i.bo = add nuw nsw i64 %.sroa.speculated.i.i62, %.030.ph70.i.i52 ; 2 uses
  %i.bp = add nsw i64 %.sroa.speculated.i.i62, %.028.ph72.i.i50
  %i.bq = icmp samesign ult i64 %i.bo, 64
  br i1 %i.bq, label %.lr.ph.split.us.preheader.i.i49, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit68

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit68: ; preds = %.outer.i.i59
  br i1 %.not77.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread110, label %.lr.ph.split.us.preheader.i.preheader

.lr.ph.split.us.preheader.i.preheader:            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit68
  %i.br = load i32, ptr %3, align 8, !tbaa !20
  %i.bs = zext i32 %i.br to i64
  %i.bt = add nsw i64 %i.ax, %i.bs
  br label %.lr.ph.split.us.preheader.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.split.us.preheader.i.preheader, %.outer.i
  %.sroa.37.14 = phi i64 [ %.sroa.37.15.lcssa, %.outer.i ], [ %.sroa.37.12, %.lr.ph.split.us.preheader.i.preheader ] ; 2 uses
  %.sroa.21.14 = phi i64 [ %.sroa.21.15.lcssa, %.outer.i ], [ %.sroa.21.12, %.lr.ph.split.us.preheader.i.preheader ] ; 2 uses
  %.028.ph72.i = phi i64 [ %i.cj, %.outer.i ], [ %i.bt, %.lr.ph.split.us.preheader.i.preheader ] ; 10 uses
  %.029.ph71.i = phi ptr [ %i.ch, %.outer.i ], [ %i.a, %.lr.ph.split.us.preheader.i.preheader ] ; 2 uses
  %.030.ph70.i = phi i64 [ %i.ci, %.outer.i ], [ 0, %.lr.ph.split.us.preheader.i.preheader ] ; 3 uses
  %.not.us.i134 = icmp sge i64 %.028.ph72.i, %.sroa.21.14
  %i.bu = icmp slt i64 %.028.ph72.i, %.sroa.37.14
  %or.cond.i135 = and i1 %.not.us.i134, %i.bu
  br i1 %or.cond.i135, label %.outer.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.split.us.preheader.i, %.lr.ph.split.us.i
  %i.bv = call i64 @pread(i32 noundef %0, ptr noundef nonnull %i.b, i64 noundef 100, i64 noundef %.028.ph72.i) ; 3 uses
  %i.bw = icmp slt i64 %i.bv, 0
  br i1 %i.bw, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.bx = icmp eq i64 %i.bv, 0
  br i1 %i.bx, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = add nsw i64 %i.bv, %.028.ph72.i
  br label %.lr.ph.split.us.i

bb.q:                                             ; preds = %.lr.ph
  %i.bz = tail call ptr @__errno_location() #24
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3  ; 2 uses
  %i.cb = icmp eq i32 %i.ca, 4
  br i1 %i.cb, label %.lr.ph.split.us.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit48.thread.sink.split, !llvm.loop !11

.lr.ph.split.us.i:                                ; preds = %bb.q, %bb.p
  %.sroa.37.16 = phi i64 [ 0, %bb.q ], [ %i.by, %bb.p ] ; 2 uses
  %.sroa.21.16 = phi i64 [ 0, %bb.q ], [ %.028.ph72.i, %bb.p ] ; 2 uses
  %.not.us.i = icmp sge i64 %.028.ph72.i, %.sroa.21.16
  %i.cc = icmp slt i64 %.028.ph72.i, %.sroa.37.16
  %or.cond.i = select i1 %.not.us.i, i1 %i.cc, i1 false
  br i1 %or.cond.i, label %.outer.i, label %.lr.ph

.outer.i:                                         ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.preheader.i
  %.sroa.37.15.lcssa = phi i64 [ %.sroa.37.14, %.lr.ph.split.us.preheader.i ], [ %.sroa.37.16, %.lr.ph.split.us.i ] ; 3 uses
  %.sroa.21.15.lcssa = phi i64 [ %.sroa.21.14, %.lr.ph.split.us.preheader.i ], [ %.sroa.21.16, %.lr.ph.split.us.i ] ; 3 uses
  %i.cd = sub nsw i64 %.028.ph72.i, %.sroa.21.15.lcssa
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cd
  %i.cf = sub nsw i64 %2, %.030.ph70.i
  %i.cg = sub nsw i64 %.sroa.37.15.lcssa, %.028.ph72.i
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.cg, i64 %i.cf) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.029.ph71.i, ptr nonnull align 1 %i.ce, i64 %.sroa.speculated.i, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %.029.ph71.i, i64 %.sroa.speculated.i
  %i.ci = add i64 %.sroa.speculated.i, %.030.ph70.i ; 3 uses
  %i.cj = add nsw i64 %.sroa.speculated.i, %.028.ph72.i
  %i.ck = icmp ult i64 %i.ci, %2
  br i1 %i.ck, label %.lr.ph.split.us.preheader.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit: ; preds = %.outer.i, %bb.o
  %.sroa.37.17 = phi i64 [ 0, %bb.o ], [ %.sroa.37.15.lcssa, %.outer.i ]
  %.sroa.21.17 = phi i64 [ 0, %bb.o ], [ %.sroa.21.15.lcssa, %.outer.i ]
  %.2.i = phi i64 [ %.030.ph70.i, %bb.o ], [ %i.ci, %.outer.i ] ; 2 uses
  %i.cl = icmp slt i64 %.2.i, 0
  br i1 %i.cl, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit48.thread, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread110

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread110: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit68, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit
  %.2.i116 = phi i64 [ %.2.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit ], [ 0, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit68 ]
  %.sroa.21.17115 = phi i64 [ %.sroa.21.17, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit ], [ %.sroa.21.12, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit68 ]
  %.sroa.37.17114 = phi i64 [ %.sroa.37.17, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit ], [ %.sroa.37.12, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit68 ]
  %.not27 = icmp eq i64 %.2.i116, %2
  br i1 %.not27, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread110
  %bcmp = call i32 @bcmp(ptr nonnull %i.a, ptr %1, i64 %2)
  %bcmp.fr = freeze i32 %bcmp
  %i.cm = icmp eq i32 %bcmp.fr, 0
  br i1 %i.cm, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit48.thread, label %bb.s

bb.s:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit.thread110, %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit48.thread, label %bb.k, !llvm.loop !28

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit48.thread.sink.split: ; preds = %bb.j, %bb.n, %bb.q
  %.lcssa172.sink = phi i32 [ %i.bg, %bb.n ], [ %i.ca, %bb.q ], [ %i.aj, %bb.j ]
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 70), i32 noundef 540, ptr noundef nonnull @.str.5, i32 noundef %.lcssa172.sink)
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit48.thread

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit48.thread: ; preds = %bb.h, %bb.r, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit, %bb.s, %bb.l, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit48.thread.sink.split, %.preheader
  %.4 = phi i1 [ false, %bb.l ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit48.thread.sink.split ], [ false, %.preheader ], [ false, %bb.s ], [ true, %bb.r ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile14ReadFromOffsetEPvml.exit ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread: ; preds = %bb.d, %.thread39.i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit48.thread
  %.5 = phi i1 [ false, %.thread39.i.i ], [ %.4, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit48.thread ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.t

bb.t:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread, %bb.b
  %.6 = phi i1 [ false, %bb.b ], [ %.5, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i1 %.6
}

declare void @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal25RemoveAllSymbolDecoratorsEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_115g_decorators_muE monotonic, align 4 ; 3 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit, label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit

_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit: ; preds = %bb.a
  %i.c = or disjoint i32 %i.a, 1
  %i.d = cmpxchg ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_115g_decorators_muE, i32 %i.a, i32 %i.c acquire monotonic, align 4
  %i.e = extractvalue { i32, i1 } %i.d, 0
  %.pre.i.i = and i32 %i.e, 1
  %i.f = icmp eq i32 %.pre.i.i, 0
  br i1 %i.f, label %bb.b, label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit

bb.b:                                             ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit
  store i32 0, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116g_num_decoratorsE, align 4, !tbaa !3
  %i.g = load atomic i32, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_115g_decorators_muE monotonic, align 4
  %i.h = and i32 %i.g, 2
  %i.i = atomicrmw xchg ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_115g_decorators_muE, i32 %i.h release, align 4 ; 2 uses
  %.not4.i = icmp ult i32 %i.i, 8
  br i1 %.not4.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_115g_decorators_muE, i32 noundef %i.i) #27
  br label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit

_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit: ; preds = %bb.a, %bb.c, %bb.b, %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit
  %.pre-phi.i.i2 = phi i1 [ true, %bb.c ], [ false, %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit ], [ true, %bb.b ], [ false, %bb.a ]
  ret i1 %.pre-phi.i.i2
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal21RemoveSymbolDecoratorEi(i32 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_115g_decorators_muE monotonic, align 4 ; 3 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit, label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit

_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit: ; preds = %bb.a
  %i.c = or disjoint i32 %i.a, 1
  %i.d = cmpxchg ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_115g_decorators_muE, i32 %i.a, i32 %i.c acquire monotonic, align 4
  %i.e = extractvalue { i32, i1 } %i.d, 0
  %.pre.i.i = and i32 %i.e, 1
  %i.f = icmp eq i32 %.pre.i.i, 0
  br i1 %i.f, label %.preheader12, label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit

.preheader12:                                     ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit
  %i.g = load i32, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116g_num_decoratorsE, align 4, !tbaa !3 ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader12
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 8 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_112g_decoratorsE, i64 %indvars.iv
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !29
  %i.l = icmp eq i32 %i.k, %0
  br i1 %i.l, label %.preheader, label %bb.b

.preheader:                                       ; preds = %.lr.ph
  %i.m = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.n = add nsw i32 %i.g, -1                     ; 4 uses
  %i.o = icmp sgt i32 %i.n, %i.m
  br i1 %i.o, label %.lr.ph17.preheader, label %._crit_edge

.lr.ph17.preheader:                               ; preds = %.preheader
  %wide.trip.count26 = zext nneg i32 %i.n to i64  ; 3 uses
  %i.p = sub nsw i64 %wide.trip.count26, %indvars.iv
  %xtraiter = and i64 %i.p, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph17.prol.loopexit, label %.lr.ph17.prol

.lr.ph17.prol:                                    ; preds = %.lr.ph17.preheader
  %indvars.iv.next24.prol = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_112g_decoratorsE, i64 %indvars.iv.next24.prol
  %i.r = getelementptr inbounds nuw [24 x i8], ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_112g_decoratorsE, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !tbaa.struct !31
  br label %.lr.ph17.prol.loopexit

.lr.ph17.prol.loopexit:                           ; preds = %.lr.ph17.prol, %.lr.ph17.preheader
  %indvars.iv23.unr = phi i64 [ %indvars.iv, %.lr.ph17.preheader ], [ %indvars.iv.next24.prol, %.lr.ph17.prol ]
  %i.s = add nsw i64 %wide.trip.count26, -1
  %i.t = icmp eq i64 %indvars.iv, %i.s
  br i1 %i.t, label %._crit_edge, label %.lr.ph17

.lr.ph17:                                         ; preds = %.lr.ph17.prol.loopexit, %.lr.ph17
  %indvars.iv23 = phi i64 [ %indvars.iv.next24.1, %.lr.ph17 ], [ %indvars.iv23.unr, %.lr.ph17.prol.loopexit ] ; 3 uses
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_112g_decoratorsE, i64 %indvars.iv.next24
  %i.v = getelementptr inbounds nuw [24 x i8], ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_112g_decoratorsE, i64 %indvars.iv23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !tbaa.struct !31
  %indvars.iv.next24.1 = add nuw nsw i64 %indvars.iv23, 2 ; 3 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_112g_decoratorsE, i64 %indvars.iv.next24.1
  %i.x = getelementptr inbounds nuw [24 x i8], ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_112g_decoratorsE, i64 %indvars.iv.next24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !tbaa.struct !31
  %exitcond27.not.1 = icmp eq i64 %indvars.iv.next24.1, %wide.trip.count26
  br i1 %exitcond27.not.1, label %._crit_edge, label %.lr.ph17, !llvm.loop !33

._crit_edge:                                      ; preds = %.lr.ph17.prol.loopexit, %.lr.ph17, %.preheader
  %.1.lcssa = phi i32 [ %i.m, %.preheader ], [ %i.n, %.lr.ph17 ], [ %i.n, %.lr.ph17.prol.loopexit ]
  store i32 %.1.lcssa, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116g_num_decoratorsE, align 4, !tbaa !3
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !34

.loopexit:                                        ; preds = %bb.b, %.preheader12, %._crit_edge
  %i.y = load atomic i32, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_115g_decorators_muE monotonic, align 4
  %i.z = and i32 %i.y, 2
  %i.aa = atomicrmw xchg ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_115g_decorators_muE, i32 %i.z release, align 4 ; 2 uses
  %.not4.i = icmp ult i32 %i.aa, 8
  br i1 %.not4.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  tail call void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_115g_decorators_muE, i32 noundef %i.aa) #27
  br label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit

_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit: ; preds = %bb.a, %bb.c, %.loopexit, %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit
  %.pre-phi.i.i11 = phi i1 [ true, %bb.c ], [ false, %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit ], [ true, %.loopexit ], [ false, %bb.a ]
  ret i1 %.pre-phi.i.i11
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN4absl12lts_2025051218debugging_internal22InstallSymbolDecoratorEPFvPKNS1_19SymbolDecoratorArgsEEPv(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_115g_decorators_muE monotonic, align 4 ; 3 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit, label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit

_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit: ; preds = %bb.a
  %i.c = or disjoint i32 %i.a, 1
  %i.d = cmpxchg ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_115g_decorators_muE, i32 %i.a, i32 %i.c acquire monotonic, align 4
  %i.e = extractvalue { i32, i1 } %i.d, 0
  %.pre.i.i = and i32 %i.e, 1
  %i.f = icmp eq i32 %.pre.i.i, 0
  br i1 %i.f, label %bb.b, label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit

bb.b:                                             ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit
  %i.g = load i32, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116g_num_decoratorsE, align 4, !tbaa !3 ; 3 uses
  %i.h = icmp sgt i32 %i.g, 9
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr @_ZZN4absl12lts_2025051218debugging_internal22InstallSymbolDecoratorEPFvPKNS1_19SymbolDecoratorArgsEEPvE6ticket, align 4, !tbaa !3 ; 3 uses
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr @_ZZN4absl12lts_2025051218debugging_internal22InstallSymbolDecoratorEPFvPKNS1_19SymbolDecoratorArgsEEPvE6ticket, align 4, !tbaa !3
  %i.k = sext i32 %i.g to i64
  %i.l = getelementptr inbounds [24 x i8], ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_112g_decoratorsE, i64 %i.k ; 3 uses
  store ptr %0, ptr %i.l, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !32
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 %i.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !3
  %i.m = add nsw i32 %i.g, 1
  store i32 %i.m, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116g_num_decoratorsE, align 4, !tbaa !3
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.03 = phi i32 [ %i.i, %bb.c ], [ -1, %bb.b ]   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218debugging_internal23RegisterFileMappingHintEPKvS3_mPKc:bb.a
  store i64 %2, ptr %i.x, align 16, !tbaa !39
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.r, ptr %i.y, align 8, !tbaa !40
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j
  %i.z = load atomic i32, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_117g_file_mapping_muE monotonic, align 4
  %i.aa = and i32 %i.z, 2
  %i.ab = atomicrmw xchg ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 %i.aa release, align 4 ; 2 uses
  %.not4.i = icmp ult i32 %i.ab, 8
  br i1 %.not4.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 noundef %i.ab) #27
  br label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit

_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116InitSigSafeArenaEv.exit, %bb.l, %bb.k, %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit
  %.0 = phi i1 [ %i.n, %bb.l ], [ false, %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit ], [ %i.n, %bb.k ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116InitSigSafeArenaEv.exit ]
  ret i1 %.0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef, ptr noundef) local_unnamed_addr #1 section "malloc_hook"

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal18GetFileMappingHintEPPKvS4_PmPPKc(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef writeonly captures(none) %2, ptr noundef writeonly captures(none) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_117g_file_mapping_muE monotonic, align 4 ; 3 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit, label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit

_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit: ; preds = %bb.a
  %i.c = or disjoint i32 %i.a, 1
  %i.d = cmpxchg ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 %i.a, i32 %i.c acquire monotonic, align 4
  %i.e = extractvalue { i32, i1 } %i.d, 0
  %.pre.i.i = and i32 %i.e, 1
  %i.f = icmp eq i32 %.pre.i.i, 0
  br i1 %i.f, label %.preheader, label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit

.preheader:                                       ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit
  %i.g = load i32, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_124g_num_file_mapping_hintsE, align 4, !tbaa !3 ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.i = load ptr, ptr %0, align 8, !tbaa !32
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_120g_file_mapping_hintsE, i64 %indvars.iv ; 4 uses
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !36  ; 2 uses
  %.not = icmp ugt ptr %i.k, %i.i
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %1, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38   ; 2 uses
  %.not18 = icmp ugt ptr %i.l, %i.n
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.k, ptr %0, align 8, !tbaa !32
  store ptr %i.n, ptr %1, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.p = load i64, ptr %i.o, align 16, !tbaa !39
  store i64 %i.p, ptr %2, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !40
  store ptr %i.r, ptr %3, align 8, !tbaa !7
  br label %.loopexit

bb.e:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !42

.loopexit:                                        ; preds = %bb.e, %.preheader, %bb.d
  %i.s = phi i1 [ true, %bb.d ], [ false, %.preheader ], [ false, %bb.e ] ; 2 uses
  %i.t = load atomic i32, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_117g_file_mapping_muE monotonic, align 4
  %i.u = and i32 %i.t, 2
  %i.v = atomicrmw xchg ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 %i.u release, align 4 ; 2 uses
  %.not4.i = icmp ult i32 %i.v, 8
  br i1 %.not4.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit, label %bb.f

bb.f:                                             ; preds = %.loopexit
  tail call void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 noundef %i.v) #27
  br label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit

_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit: ; preds = %bb.a, %bb.f, %.loopexit, %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit
  %.016 = phi i1 [ %i.s, %bb.f ], [ false, %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit ], [ %i.s, %.loopexit ], [ false, %bb.a ]
  ret i1 %.016
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_202505129SymbolizeEPKvPci(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.Elf64_Shdr, align 8         ; 8 uses
  %4 = alloca %struct.Elf64_Shdr, align 8         ; 6 uses
  %5 = alloca %"class.absl::lts_20250512::debugging_internal::(anonymous namespace)::CachingFile", align 8 ; 14 uses
  %6 = alloca %struct.Elf64_Ehdr, align 8         ; 5 uses
  %i.a = alloca [1024 x i8], align 16             ; 17 uses
  %i.b = alloca [100 x i8], align 16              ; 9 uses
  %7 = alloca %struct.Elf64_Phdr, align 8         ; 8 uses
  %8 = alloca %"class.absl::lts_20250512::debugging_internal::VDSOSupport", align 8 ; 5 uses
  %9 = alloca %"struct.absl::lts_20250512::debugging_internal::ElfMemImage::SymbolInfo", align 8 ; 4 uses
  %10 = alloca %"struct.absl::lts_20250512::debugging_internal::SymbolDecoratorArgs", align 8 ; 11 uses
  %i.c = icmp sgt i32 %2, -1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load atomic ptr, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116g_sig_safe_arenaE acquire, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116InitSigSafeArenaEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc8NewArenaEj(i32 noundef 2) ; 2 uses
  %i.g = cmpxchg ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116g_sig_safe_arenaE, ptr null, ptr %i.f release monotonic, align 8
  %i.h = extractvalue { ptr, i1 } %i.g, 1
  br i1 %i.h, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116InitSigSafeArenaEv.exit.i, label %_ZNSt6atomicIPN4absl12lts_2025051213base_internal13LowLevelAlloc5ArenaEE23compare_exchange_strongERS5_S5_St12memory_orderS8_.exit.i.i

_ZNSt6atomicIPN4absl12lts_2025051213base_internal13LowLevelAlloc5ArenaEE23compare_exchange_strongERS5_S5_St12memory_orderS8_.exit.i.i: ; preds = %bb.d
  %i.i = tail call noundef zeroext i1 @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc11DeleteArenaEPNS2_5ArenaE(ptr noundef %i.f) ; 0 uses
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116InitSigSafeArenaEv.exit.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116InitSigSafeArenaEv.exit.i: ; preds = %_ZNSt6atomicIPN4absl12lts_2025051213base_internal13LowLevelAlloc5ArenaEE23compare_exchange_strongERS5_S5_St12memory_orderS8_.exit.i.i, %bb.d, %bb.c
  %i.j = atomicrmw xchg ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_119g_cached_symbolizerE, ptr null acquire, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110SymbolizerC2Ev.exit.loopexit.i, label %_ZN4absl12lts_2025051218debugging_internalL18AllocateSymbolizerEv.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110SymbolizerC2Ev.exit.loopexit.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116InitSigSafeArenaEv.exit.i
  %i.k = tail call i64 @sysconf(i32 noundef 30) #23 ; 2 uses
  %i.l = udiv i64 22559, %i.k
  %i.m = add nuw nsw i64 %i.l, 1
  %i.n = mul i64 %i.m, %i.k
  %i.o = load atomic ptr, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116g_sig_safe_arenaE acquire, align 8
  %i.p = tail call noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %i.n, ptr noundef %i.o) ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(22560) %i.p, i8 0, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i8 1, ptr %i.q, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 25
  store i8 0, ptr %i.r, align 1, !tbaa !48
  %.014.ptr17.i.i = getelementptr i8, ptr %i.p, i64 12320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10240) %.014.ptr17.i.i, i8 0, i64 10240, i1 false)
  br label %_ZN4absl12lts_2025051218debugging_internalL18AllocateSymbolizerEv.exit

_ZN4absl12lts_2025051218debugging_internalL18AllocateSymbolizerEv.exit: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116InitSigSafeArenaEv.exit.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110SymbolizerC2Ev.exit.loopexit.i
  %.0.i = phi ptr [ %i.j, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116InitSigSafeArenaEv.exit.i ], [ %i.p, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110SymbolizerC2Ev.exit.loopexit.i ] ; 17 uses
  %i.s = icmp eq ptr %0, null                     ; 2 uses
  br i1 %i.s, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internalL18AllocateSymbolizerEv.exit
  %i.t = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = lshr i64 %i.t, 9
  %i.w = lshr i64 %i.t, 15
  %i.x = xor i64 %i.v, %i.w
  %i.y = lshr i64 %i.t, 21
  %i.z = xor i64 %i.x, %i.y
  %i.aa = xor i64 %i.z, %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 12320
  %i.ac = and i64 %i.aa, 127
  %i.ad = getelementptr inbounds nuw [80 x i8], ptr %i.ab, i64 %i.ac ; 6 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !32
  %i.af = icmp eq ptr %i.ae, %0
  br i1 %i.af, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !32
  %i.ai = icmp eq ptr %i.ah, %0
  br i1 %i.ai, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !32
  %i.al = icmp eq ptr %i.ak, %0
  br i1 %i.al, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !32
  %i.ao = icmp eq ptr %i.an, %0
  br i1 %i.ao, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.thread.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.01418.lcssa.i.i = phi i64 [ 0, %bb.e ], [ 1, %bb.f ], [ 2, %bb.g ], [ 3, %bb.h ] ; 2 uses
  %.0.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 64 ; 3 uses
  %i.ap = load <4 x i32>, ptr %.0.ptr.i.i.i, align 8, !tbaa !3
  %i.aq = add <4 x i32> %i.ap, splat (i32 1)
  store <4 x i32> %i.aq, ptr %.0.ptr.i.i.i, align 8, !tbaa !3
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.0.ptr.i.i.i, i64 %.01418.lcssa.i.i
  store i32 0, ptr %i.ar, align 4, !tbaa !3
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.01418.lcssa.i.i
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !7  ; 2 uses
  %.not.i22 = icmp eq ptr %i.au, null
  br i1 %.not.i22, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.thread.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.thread.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.i, %bb.h, %_ZN4absl12lts_2025051218debugging_internalL18AllocateSymbolizerEv.exit
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i, i64 26 ; 11 uses
  store i8 0, ptr %i.av, align 2, !tbaa !10
  %i.aw = tail call fastcc noundef ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer11FindObjFileEPKvm(ptr noundef nonnull align 16 dereferenceable(22560) %.0.i, ptr noundef %0) ; 35 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %bb.bl, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.thread.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 6 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !49
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %bb.j, label %bb.aq

bb.j:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !52
  %i.bb = tail call fastcc noundef i32 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_122OpenReadOnlyWithHighFDEPKc(ptr noundef %i.ba) ; 3 uses
  store i32 %i.bb, ptr %i.ax, align 8, !tbaa !49
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.k, label %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exit.thread.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bd = load ptr, ptr %i.aw, align 8, !tbaa !52
  %i.be = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bd, ptr noundef nonnull dereferenceable(15) @.str.21) #25
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bg = load ptr, ptr @_ZN4absl12lts_20250512L11argv0_valueE, align 8, !tbaa !7 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exitthread-pre-split.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = tail call fastcc noundef i32 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_122OpenReadOnlyWithHighFDEPKc(ptr noundef nonnull %i.bg) ; 2 uses
  store i32 %i.bh, ptr %i.ax, align 8, !tbaa !49
  br label %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exit.i.i.i

bb.n:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !53
  %i.bk = load i32, ptr %i.bj, align 1
  %i.bl = icmp ne i32 %i.bk, 1179403647
  %i.bm = zext i1 %i.bl to i32
  %.not.i.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exitthread-pre-split.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bn = tail call fastcc noundef i32 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_122OpenReadOnlyWithHighFDEPKc(ptr noundef nonnull @.str.21) ; 8 uses
  %i.bo = icmp eq i32 %i.bn, -1
  br i1 %i.bo, label %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exitthread-pre-split.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !53 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.bq = call i64 @read(i32 noundef %i.bn, ptr noundef nonnull %i.a, i64 noundef 1024)
  %.not18.i.i.i.i = icmp eq i64 %i.bq, 1024
  br i1 %.not18.i.i.i.i, label %bb.q, label %.critedge.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %bcmp19.i.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(1024) %i.a, ptr noundef nonnull dereferenceable(1024) %i.bp, i64 1024)
  %.not20.i.i.i.i = icmp eq i32 %bcmp19.i.i.i.i, 0
  br i1 %.not20.i.i.i.i, label %bb.r, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %i.br = tail call i32 @close(i32 noundef %i.bn) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exitthread-pre-split.i.i.i

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.bs = call i64 @read(i32 noundef %i.bn, ptr noundef nonnull %i.a, i64 noundef 1024)
  %.not18.1.i.i.i.i = icmp eq i64 %i.bs, 1024
  br i1 %.not18.1.i.i.i.i, label %bb.s, label %.critedge.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 1024
  %bcmp19.1.i.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(1024) %i.a, ptr noundef nonnull dereferenceable(1024) %i.bt, i64 1024)
  %.not20.1.i.i.i.i = icmp eq i32 %bcmp19.1.i.i.i.i, 0
  br i1 %.not20.1.i.i.i.i, label %bb.t, label %.critedge.i.i.i.i

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.bu = call i64 @read(i32 noundef %i.bn, ptr noundef nonnull %i.a, i64 noundef 1024)
  %.not18.2.i.i.i.i = icmp eq i64 %i.bu, 1024
  br i1 %.not18.2.i.i.i.i, label %bb.u, label %.critedge.i.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 2048
  %bcmp19.2.i.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(1024) %i.a, ptr noundef nonnull dereferenceable(1024) %i.bv, i64 1024)
  %.not20.2.i.i.i.i = icmp eq i32 %bcmp19.2.i.i.i.i, 0
  br i1 %.not20.2.i.i.i.i, label %bb.v, label %.critedge.i.i.i.i

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.bw = call i64 @read(i32 noundef %i.bn, ptr noundef nonnull %i.a, i64 noundef 1024)
  %.not18.3.i.i.i.i = icmp eq i64 %i.bw, 1024
  br i1 %.not18.3.i.i.i.i, label %bb.w, label %.critedge.i.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 3072
  %bcmp19.3.i.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(1024) %i.a, ptr noundef nonnull dereferenceable(1024) %i.bx, i64 1024)
  %.not20.3.i.i.i.i = icmp eq i32 %bcmp19.3.i.i.i.i, 0
  br i1 %.not20.3.i.i.i.i, label %.critedge22.i.i.i.i, label %.critedge.i.i.i.i

.critedge22.i.i.i.i:                              ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  store i32 %i.bn, ptr %i.ax, align 8, !tbaa !49
  br label %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exit.i.i.i

_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exitthread-pre-split.i.i.i: ; preds = %.critedge.i.i.i.i, %bb.o, %bb.n, %bb.l
  %.pr.i.i.i = load i32, ptr %i.ax, align 8, !tbaa !49
  br label %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exit.i.i.i

_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exit.i.i.i: ; preds = %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exitthread-pre-split.i.i.i, %.critedge22.i.i.i.i, %bb.m
  %i.by = phi i32 [ %.pr.i.i.i, %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exitthread-pre-split.i.i.i ], [ %i.bn, %.critedge22.i.i.i.i ], [ %i.bh, %bb.m ] ; 2 uses
  %i.bz = icmp slt i32 %i.by, 0
  br i1 %i.bz, label %bb.x, label %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exit.thread.i.i.i

bb.x:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exit.i.i.i
  %i.ca = load ptr, ptr %i.aw, align 8, !tbaa !52
  %i.cb = tail call ptr @__errno_location() #24
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 70), i32 noundef 1430, ptr noundef nonnull @.str.22, ptr noundef %i.ca, i32 noundef %i.cc)
  br label %_ZN4absl12lts_2025051218debugging_internalL22MaybeInitializeObjFileEPNS1_12_GLOBAL__N_17ObjFileE.exit.i.i

_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exit.thread.i.i.i: ; preds = %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exit.i.i.i, %bb.j
  %i.cd = phi i32 [ %i.by, %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exit.i.i.i ], [ %i.bb, %bb.j ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  br label %.lr.ph.split.us.preheader.i.i77.i.i.i

.lr.ph.split.us.preheader.i.i77.i.i.i:            ; preds = %.outer.i.i87.i.i.i, %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exit.thread.i.i.i
  %.sroa.30.9.i.i.i = phi i64 [ 0, %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exit.thread.i.i.i ], [ %.sroa.30.11.i.i.i, %.outer.i.i87.i.i.i ] ; 2 uses
  %.sroa.17.9.i.i.i = phi i64 [ 0, %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exit.thread.i.i.i ], [ %.sroa.17.11.i.i.i, %.outer.i.i87.i.i.i ] ; 2 uses
  %.028.ph72.i.i78.i.i.i = phi i64 [ 0, %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exit.thread.i.i.i ], [ %i.ct, %.outer.i.i87.i.i.i ] ; 10 uses
  %.029.ph71.i.i79.i.i.i = phi ptr [ %6, %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exit.thread.i.i.i ], [ %i.cr, %.outer.i.i87.i.i.i ] ; 2 uses
  %.030.ph70.i.i80.i.i.i = phi i64 [ 0, %_ZN4absl12lts_2025051218debugging_internalL22MaybeOpenFdFromSelfExeEPNS1_12_GLOBAL__N_17ObjFileE.exit.thread.i.i.i ], [ %i.cs, %.outer.i.i87.i.i.i ] ; 3 uses
  %.not.us.i16.i81.i.i.i = icmp sge i64 %.028.ph72.i.i78.i.i.i, %.sroa.17.9.i.i.i
  %i.ce = icmp slt i64 %.028.ph72.i.i78.i.i.i, %.sroa.30.9.i.i.i
  %or.cond.i17.i82.i.i.i = and i1 %.not.us.i16.i81.i.i.i, %i.ce
  br i1 %or.cond.i17.i82.i.i.i, label %.outer.i.i87.i.i.i, label %.lr.ph.i83.i.i.i

.lr.ph.i83.i.i.i:                                 ; preds = %.lr.ph.split.us.preheader.i.i77.i.i.i, %.lr.ph.split.us.i.i84.i.i.i
  %i.cf = call i64 @pread(i32 noundef %i.cd, ptr noundef nonnull %i.b, i64 noundef 100, i64 noundef %.028.ph72.i.i78.i.i.i) ; 3 uses
  %i.cg = icmp slt i64 %i.cf, 0
  br i1 %i.cg, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i83.i.i.i
  %i.ch = icmp eq i64 %i.cf, 0
  br i1 %i.ch, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit96.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = add nuw nsw i64 %i.cf, %.028.ph72.i.i78.i.i.i
  br label %.lr.ph.split.us.i.i84.i.i.i

bb.aa:                                            ; preds = %.lr.ph.i83.i.i.i
  %i.cj = tail call ptr @__errno_location() #24
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !3  ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 4
  br i1 %i.cl, label %..lr.ph.split.us.i_crit_edge.i93.i.i.i, label %.thread39.i.i92.i.i.i, !llvm.loop !11

..lr.ph.split.us.i_crit_edge.i93.i.i.i:           ; preds = %bb.aa
  br label %.lr.ph.split.us.i.i84.i.i.i, !llvm.loop !11

.lr.ph.split.us.i.i84.i.i.i:                      ; preds = %..lr.ph.split.us.i_crit_edge.i93.i.i.i, %bb.z
  %.sroa.30.10.i.i.i = phi i64 [ 0, %..lr.ph.split.us.i_crit_edge.i93.i.i.i ], [ %i.ci, %bb.z ] ; 2 uses
  %.sroa.17.10.i.i.i = phi i64 [ 0, %..lr.ph.split.us.i_crit_edge.i93.i.i.i ], [ %.028.ph72.i.i78.i.i.i, %bb.z ] ; 2 uses
  %.not.us.i.i85.i.i.i = icmp samesign uge i64 %.028.ph72.i.i78.i.i.i, %.sroa.17.10.i.i.i
  %i.cm = icmp slt i64 %.028.ph72.i.i78.i.i.i, %.sroa.30.10.i.i.i
  %or.cond.i.i86.i.i.i = select i1 %.not.us.i.i85.i.i.i, i1 %i.cm, i1 false
  br i1 %or.cond.i.i86.i.i.i, label %.outer.i.i87.i.i.i, label %.lr.ph.i83.i.i.i

.outer.i.i87.i.i.i:                               ; preds = %.lr.ph.split.us.i.i84.i.i.i, %.lr.ph.split.us.preheader.i.i77.i.i.i
  %.sroa.30.11.i.i.i = phi i64 [ %.sroa.30.9.i.i.i, %.lr.ph.split.us.preheader.i.i77.i.i.i ], [ %.sroa.30.10.i.i.i, %.lr.ph.split.us.i.i84.i.i.i ] ; 3 uses
  %.sroa.17.11.i.i.i = phi i64 [ %.sroa.17.9.i.i.i, %.lr.ph.split.us.preheader.i.i77.i.i.i ], [ %.sroa.17.10.i.i.i, %.lr.ph.split.us.i.i84.i.i.i ] ; 3 uses
  %i.cn = sub nsw i64 %.028.ph72.i.i78.i.i.i, %.sroa.17.11.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cn
  %i.cp = sub nuw nsw i64 64, %.030.ph70.i.i80.i.i.i
  %i.cq = sub nsw i64 %.sroa.30.11.i.i.i, %.028.ph72.i.i78.i.i.i
  %.sroa.speculated.i.i90.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.cq, i64 %i.cp) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.029.ph71.i.i79.i.i.i, ptr nonnull align 1 %i.co, i64 %.sroa.speculated.i.i90.i.i.i, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %.029.ph71.i.i79.i.i.i, i64 %.sroa.speculated.i.i90.i.i.i
  %i.cs = add nuw nsw i64 %.sroa.speculated.i.i90.i.i.i, %.030.ph70.i.i80.i.i.i ; 3 uses
  %i.ct = add nuw nsw i64 %.sroa.speculated.i.i90.i.i.i, %.028.ph72.i.i78.i.i.i
  %i.cu = icmp samesign ult i64 %i.cs, 64
  br i1 %i.cu, label %.lr.ph.split.us.preheader.i.i77.i.i.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit96.i.i.i

.thread39.i.i92.i.i.i:                            ; preds = %bb.aa
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 70), i32 noundef 540, ptr noundef nonnull @.str.5, i32 noundef %i.ck)
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit96.i.i.i
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_202505129SymbolizeEPKvPci:bb.a
  %.sroa.17.5.i.i.i = phi i64 [ %.sroa.17.0173.i.i.i, %bb.ag ], [ %.sroa.17.7.i.i.i, %.outer.i.i67.i.i.i ] ; 2 uses
  %.028.ph72.i.i58.i.i.i = phi i64 [ %.044176.i.i.i, %bb.ag ], [ %i.et, %.outer.i.i67.i.i.i ] ; 10 uses
  %.029.ph71.i.i59.i.i.i = phi ptr [ %7, %bb.ag ], [ %i.er, %.outer.i.i67.i.i.i ] ; 2 uses
  %.030.ph70.i.i60.i.i.i = phi i64 [ 0, %bb.ag ], [ %i.es, %.outer.i.i67.i.i.i ] ; 3 uses
  %.not.us.i16.i61.i.i.i = icmp sge i64 %.028.ph72.i.i58.i.i.i, %.sroa.17.5.i.i.i
  %i.ee = icmp slt i64 %.028.ph72.i.i58.i.i.i, %.sroa.30.5.i.i.i
  %or.cond.i17.i62.i.i.i = and i1 %.not.us.i16.i61.i.i.i, %i.ee
  br i1 %or.cond.i17.i62.i.i.i, label %.outer.i.i67.i.i.i, label %.lr.ph.i63.i.i.i

.lr.ph.i63.i.i.i:                                 ; preds = %.lr.ph.split.us.preheader.i.i57.i.i.i, %.lr.ph.split.us.i.i64.i.i.i
  %i.ef = call i64 @pread(i32 noundef %i.cd, ptr noundef nonnull %i.b, i64 noundef 100, i64 noundef %.028.ph72.i.i58.i.i.i) ; 3 uses
  %i.eg = icmp slt i64 %i.ef, 0
  br i1 %i.eg, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i63.i.i.i
  %i.eh = icmp eq i64 %i.ef, 0
  br i1 %i.eh, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit76.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ei = add nsw i64 %i.ef, %.028.ph72.i.i58.i.i.i
  br label %.lr.ph.split.us.i.i64.i.i.i

bb.aj:                                            ; preds = %.lr.ph.i63.i.i.i
  %i.ej = tail call ptr @__errno_location() #24
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3  ; 2 uses
  %i.el = icmp eq i32 %i.ek, 4
  br i1 %i.el, label %..lr.ph.split.us.i_crit_edge.i73.i.i.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit76.thread.i.i.i, !llvm.loop !11

..lr.ph.split.us.i_crit_edge.i73.i.i.i:           ; preds = %bb.aj
  br label %.lr.ph.split.us.i.i64.i.i.i, !llvm.loop !11

.lr.ph.split.us.i.i64.i.i.i:                      ; preds = %..lr.ph.split.us.i_crit_edge.i73.i.i.i, %bb.ai
  %.sroa.30.6.i.i.i = phi i64 [ 0, %..lr.ph.split.us.i_crit_edge.i73.i.i.i ], [ %i.ei, %bb.ai ] ; 2 uses
  %.sroa.17.6.i.i.i = phi i64 [ 0, %..lr.ph.split.us.i_crit_edge.i73.i.i.i ], [ %.028.ph72.i.i58.i.i.i, %bb.ai ] ; 2 uses
  %.not.us.i.i65.i.i.i = icmp sge i64 %.028.ph72.i.i58.i.i.i, %.sroa.17.6.i.i.i
  %i.em = icmp slt i64 %.028.ph72.i.i58.i.i.i, %.sroa.30.6.i.i.i
  %or.cond.i.i66.i.i.i = select i1 %.not.us.i.i65.i.i.i, i1 %i.em, i1 false
  br i1 %or.cond.i.i66.i.i.i, label %.outer.i.i67.i.i.i, label %.lr.ph.i63.i.i.i

.outer.i.i67.i.i.i:                               ; preds = %.lr.ph.split.us.i.i64.i.i.i, %.lr.ph.split.us.preheader.i.i57.i.i.i
  %.sroa.30.7.i.i.i = phi i64 [ %.sroa.30.5.i.i.i, %.lr.ph.split.us.preheader.i.i57.i.i.i ], [ %.sroa.30.6.i.i.i, %.lr.ph.split.us.i.i64.i.i.i ] ; 3 uses
  %.sroa.17.7.i.i.i = phi i64 [ %.sroa.17.5.i.i.i, %.lr.ph.split.us.preheader.i.i57.i.i.i ], [ %.sroa.17.6.i.i.i, %.lr.ph.split.us.i.i64.i.i.i ] ; 3 uses
  %i.en = sub nsw i64 %.028.ph72.i.i58.i.i.i, %.sroa.17.7.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.en
  %i.ep = sub nuw nsw i64 56, %.030.ph70.i.i60.i.i.i
  %i.eq = sub nsw i64 %.sroa.30.7.i.i.i, %.028.ph72.i.i58.i.i.i
  %.sroa.speculated.i.i70.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.eq, i64 %i.ep) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.029.ph71.i.i59.i.i.i, ptr nonnull align 1 %i.eo, i64 %.sroa.speculated.i.i70.i.i.i, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %.029.ph71.i.i59.i.i.i, i64 %.sroa.speculated.i.i70.i.i.i
  %i.es = add nuw nsw i64 %.sroa.speculated.i.i70.i.i.i, %.030.ph70.i.i60.i.i.i ; 3 uses
  %i.et = add nsw i64 %.sroa.speculated.i.i70.i.i.i, %.028.ph72.i.i58.i.i.i
  %i.eu = icmp samesign ult i64 %i.es, 56
  br i1 %i.eu, label %.lr.ph.split.us.preheader.i.i57.i.i.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit76.i.i.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit76.thread.i.i.i: ; preds = %bb.aj
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 70), i32 noundef 540, ptr noundef nonnull @.str.5, i32 noundef %i.ek)
  br label %.loopexit.i.i.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit76.i.i.i: ; preds = %.outer.i.i67.i.i.i, %bb.ah
  %.sroa.30.8.i.i.i = phi i64 [ 0, %bb.ah ], [ %.sroa.30.7.i.i.i, %.outer.i.i67.i.i.i ]
  %.sroa.17.8.i.i.i = phi i64 [ 0, %bb.ah ], [ %.sroa.17.7.i.i.i, %.outer.i.i67.i.i.i ]
  %.2.i.i71.i.i.i = phi i64 [ %.030.ph70.i.i60.i.i.i, %bb.ah ], [ %i.es, %.outer.i.i67.i.i.i ]
  %i.ev = icmp eq i64 %.2.i.i71.i.i.i, 56
  br i1 %i.ev, label %bb.ak, label %.loopexit.i.i.i

bb.ak:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit76.i.i.i
  %i.ew = add nsw i64 %.044176.i.i.i, %i.eb
  %i.ex = load i32, ptr %7, align 8, !tbaa !58
  %.not54.i.i.i = icmp eq i32 %i.ex, 1
  br i1 %.not54.i.i.i, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.ey = load i32, ptr %i.ec, align 4, !tbaa !60
  %i.ez = and i32 %i.ey, 5
  %.not55.i.i.i = icmp eq i32 %i.ez, 5
  br i1 %.not55.i.i.i, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.fa = icmp ult i64 %.046175.i.i.i, 4
  br i1 %i.fa, label %bb.an, label %.thread150.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.fb = add nuw nsw i64 %.046175.i.i.i, 1
  %i.fc = getelementptr inbounds nuw [56 x i8], ptr %i.ed, i64 %.046175.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fc, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false)
  br label %bb.ao

.thread150.i.i.i:                                 ; preds = %bb.am
  %i.fd = load ptr, ptr %i.aw, align 8, !tbaa !52
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 70), i32 noundef 1483, ptr noundef nonnull @.str.26, ptr noundef %i.fd, i64 noundef %.046175.i.i.i, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an, %bb.al, %bb.ak
  %.248.ph.i.i.i = phi i64 [ %.046175.i.i.i, %bb.ak ], [ %.046175.i.i.i, %bb.al ], [ %i.fb, %bb.an ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.fe = add nuw nsw i32 %.050174.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.fe, %i.dw
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %bb.ag, !llvm.loop !61

.loopexit.i.i.i:                                  ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit76.i.i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit76.thread.i.i.i
  %i.ff = load ptr, ptr %i.aw, align 8, !tbaa !52
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 70), i32 noundef 1457, ptr noundef nonnull @.str.25, ptr noundef %i.ff, i32 noundef %.050174.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.thread152.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ao
  %i.fg = icmp eq i64 %.248.ph.i.i.i, 0
  br i1 %i.fg, label %._crit_edge.thread.i.i.i, label %bb.ap

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.i.i.i
  %i.fh = load ptr, ptr %i.aw, align 8, !tbaa !52
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 70), i32 noundef 1489, ptr noundef nonnull @.str.27, ptr noundef %i.fh)
  br label %.thread152.i.i.i

.thread152.i.i.i:                                 ; preds = %._crit_edge.thread.i.i.i, %.loopexit.i.i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %_ZN4absl12lts_2025051218debugging_internalL22MaybeInitializeObjFileEPNS1_12_GLOBAL__N_17ObjFileE.exit.i.i

bb.ap:                                            ; preds = %._crit_edge.i.i.i, %.thread150.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !53
  %i.fk = ptrtoint ptr %i.fj to i64               ; 7 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.aw, i64 36
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !54
  %i.fn = icmp eq i32 %i.fm, 3
  br i1 %i.fn, label %bb.ar, label %bb.bb

bb.ar:                                            ; preds = %bb.aq
  %i.fo = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !62 ; 2 uses
  %.not57.i.i = icmp ugt i64 %i.fp, %i.fk
  br i1 %.not57.i.i, label %bb.bb, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fq = sub nuw i64 %i.fk, %i.fp                ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.aw, i64 104 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !58
  switch i32 %i.fs, label %bb.az [
    i32 1, label %bb.ba
    i32 0, label %.thread.thread.i.i
  ], !prof !63

bb.at:                                            ; preds = %bb.ba
  %i.ft = getelementptr inbounds nuw i8, ptr %i.aw, i64 160 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !58
  switch i32 %i.fu, label %bb.az [
    i32 1, label %bb.au
    i32 0, label %.thread.thread.i.i
  ], !prof !63

bb.au:                                            ; preds = %bb.at
  %i.fv = getelementptr inbounds nuw i8, ptr %i.aw, i64 176
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !64
  %i.fx = add i64 %i.fw, %i.fk
  %i.fy = getelementptr inbounds nuw i8, ptr %i.aw, i64 200
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !65
  %i.ga = add i64 %i.fx, %i.fz
  %i.gb = inttoptr i64 %i.ga to ptr
  %.not84.1.i.i = icmp ult ptr %0, %i.gb
  br i1 %.not84.1.i.i, label %.thread.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gc = getelementptr inbounds nuw i8, ptr %i.aw, i64 216 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !58
  switch i32 %i.gd, label %bb.az [
    i32 1, label %bb.aw
    i32 0, label %.thread.thread.i.i
  ], !prof !63

bb.aw:                                            ; preds = %bb.av
  %i.ge = getelementptr inbounds nuw i8, ptr %i.aw, i64 232
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !64
  %i.gg = add i64 %i.gf, %i.fk
  %i.gh = getelementptr inbounds nuw i8, ptr %i.aw, i64 256
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !65
  %i.gj = add i64 %i.gg, %i.gi
  %i.gk = inttoptr i64 %i.gj to ptr
  %.not84.2.i.i = icmp ult ptr %0, %i.gk
  br i1 %.not84.2.i.i, label %.thread.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gl = getelementptr inbounds nuw i8, ptr %i.aw, i64 272 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !58
  switch i32 %i.gm, label %bb.az [
    i32 1, label %bb.ay
    i32 0, label %.thread.thread.i.i
  ], !prof !63

bb.ay:                                            ; preds = %bb.ax
  %i.gn = getelementptr inbounds nuw i8, ptr %i.aw, i64 288
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !64
  %i.gp = add i64 %i.go, %i.fk
  %i.gq = getelementptr inbounds nuw i8, ptr %i.aw, i64 312
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !65
  %i.gs = add i64 %i.gp, %i.gr
  %.fr11.i = freeze i64 %i.gs
  %i.gt = inttoptr i64 %.fr11.i to ptr
  %.not84.3.i.i = icmp ult ptr %0, %i.gt
  br i1 %.not84.3.i.i, label %.thread.i.i, label %.thread.thread.i.i

bb.az:                                            ; preds = %bb.ax, %bb.av, %bb.at, %bb.as
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 70), i32 noundef 1525, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9)
  unreachable

bb.ba:                                            ; preds = %bb.as
  %i.gu = getelementptr inbounds nuw i8, ptr %i.aw, i64 120
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !64
  %i.gw = add i64 %i.gv, %i.fk
  %i.gx = getelementptr inbounds nuw i8, ptr %i.aw, i64 144
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !65
  %i.gz = add i64 %i.gw, %i.gy
  %i.ha = inttoptr i64 %i.gz to ptr
  %.not84.i.i = icmp ult ptr %0, %i.ha
  br i1 %.not84.i.i, label %.thread.i.i, label %bb.at

.thread.thread.i.i:                               ; preds = %bb.ay, %bb.ax, %bb.av, %bb.at, %bb.as
  %i.hb = load ptr, ptr %i.aw, align 8, !tbaa !52
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 70), i32 noundef 1538, ptr noundef nonnull @.str.10, ptr noundef %i.hb, ptr noundef %0, i64 noundef %i.fk)
  br label %bb.bb

.thread.i.i:                                      ; preds = %bb.ba, %bb.ay, %bb.aw, %bb.au
  %.250.i.i = phi ptr [ %i.fr, %bb.ba ], [ %i.ft, %bb.au ], [ %i.gc, %bb.aw ], [ %i.gl, %bb.ay ] ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.250.i.i, i64 16
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !64
  %i.he = getelementptr inbounds nuw i8, ptr %.250.i.i, i64 8
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !66
  %.neg.i.i = sub i64 %i.fq, %i.hd
  %i.hg = add i64 %.neg.i.i, %i.hf
  br label %bb.bb

bb.bb:                                            ; preds = %.thread.i.i, %.thread.thread.i.i, %bb.ar, %bb.aq
  %.1.i.i = phi i64 [ 0, %bb.aq ], [ 0, %bb.ar ], [ %i.fq, %.thread.thread.i.i ], [ %i.hg, %.thread.i.i ] ; 5 uses
  %i.hh = load i32, ptr %i.ax, align 8, !tbaa !49 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.0.i, i64 11296 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.hj = getelementptr inbounds nuw i8, ptr %.0.i, i64 3098
  store i32 %i.hh, ptr %5, align 8, !tbaa !67
  %i.hk = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr %i.hj, ptr %i.hk, align 8, !tbaa !69
  %i.hl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i64 8192, ptr %i.hl, align 8, !tbaa !70
  %i.hm = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hm, i8 0, i64 16, i1 false)
  %i.hn = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.aw, i64 100 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.aw, i64 80 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.hs = load i16, ptr %i.ho, align 4, !tbaa !71
  %i.ht = load i64, ptr %i.hp, align 8, !tbaa !72
  %i.hu = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL22GetSectionHeaderByTypeEPNS1_12_GLOBAL__N_111CachingFileEtljP10Elf64_ShdrPcm(ptr noundef %5, i16 noundef zeroext %i.hs, i64 noundef %i.ht, i32 noundef 2, ptr noundef %3, ptr noundef nonnull %i.hi)
  br i1 %i.hu, label %bb.bc, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread.i60.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.hv = load i64, ptr %i.hp, align 8, !tbaa !72
  %i.hw = load i32, ptr %i.hq, align 8, !tbaa !73
  %i.hx = zext i32 %i.hw to i64
  %i.hy = shl nuw nsw i64 %i.hx, 6
  %i.hz = add i64 %i.hy, %i.hv
  %i.ia = load i32, ptr %5, align 8
  %i.ib = load ptr, ptr %i.hk, align 8            ; 2 uses
  %i.ic = load i64, ptr %i.hl, align 8
  %.pre.i.i.i = load i64, ptr %i.hm, align 8, !tbaa !74
  %.pre43.i.i.i = load i64, ptr %i.hr, align 8
  br label %.lr.ph.split.us.preheader.i.i.i61.i.i

.lr.ph.split.us.preheader.i.i.i61.i.i:            ; preds = %.outer.i.i.i71.i.i, %bb.bc
  %i.id = phi i64 [ %.pre43.i.i.i, %bb.bc ], [ %i.iq, %.outer.i.i.i71.i.i ] ; 2 uses
  %i.ie = phi i64 [ %.pre.i.i.i, %bb.bc ], [ %i.ir, %.outer.i.i.i71.i.i ] ; 2 uses
  %.028.ph72.i.i.i62.i.i = phi i64 [ %i.hz, %bb.bc ], [ %i.iy, %.outer.i.i.i71.i.i ] ; 11 uses
  %.029.ph71.i.i.i63.i.i = phi ptr [ %4, %bb.bc ], [ %i.iw, %.outer.i.i.i71.i.i ] ; 2 uses
  %.030.ph70.i.i.i64.i.i = phi i64 [ 0, %bb.bc ], [ %i.ix, %.outer.i.i.i71.i.i ] ; 2 uses
  %.not.us.i16.i.i65.i.i = icmp sge i64 %.028.ph72.i.i.i62.i.i, %i.ie
  %i.if = icmp slt i64 %.028.ph72.i.i.i62.i.i, %i.id
  %or.cond.i17.i.i66.i.i = select i1 %.not.us.i16.i.i65.i.i, i1 %i.if, i1 false
  br i1 %or.cond.i17.i.i66.i.i, label %.outer.i.i.i71.i.i, label %.lr.ph.i.i67.i.i

.lr.ph.i.i67.i.i:                                 ; preds = %.lr.ph.split.us.preheader.i.i.i61.i.i, %.lr.ph.split.us.i.i.i68.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hm, i8 0, i64 16, i1 false)
  %i.ig = tail call i64 @pread(i32 noundef %i.ia, ptr noundef %i.ib, i64 noundef %i.ic, i64 noundef %.028.ph72.i.i.i62.i.i) ; 3 uses
  %i.ih = icmp slt i64 %i.ig, 0
  br i1 %i.ih, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.i.i67.i.i
  %i.ii = icmp eq i64 %i.ig, 0
  br i1 %i.ii, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread.i60.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store i64 %.028.ph72.i.i.i62.i.i, ptr %i.hm, align 8, !tbaa !74
  %i.ij = add nsw i64 %i.ig, %.028.ph72.i.i.i62.i.i ; 2 uses
  store i64 %i.ij, ptr %i.hr, align 8, !tbaa !75
  br label %.lr.ph.split.us.i.i.i68.i.i

bb.bf:                                            ; preds = %.lr.ph.i.i67.i.i
  %i.ik = tail call ptr @__errno_location() #24
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !3  ; 2 uses
  %i.im = icmp eq i32 %i.il, 4
  br i1 %i.im, label %..lr.ph.split.us.i_crit_edge.i.i75.i.i, label %.thread39.i.i.i74.i.i, !llvm.loop !11

..lr.ph.split.us.i_crit_edge.i.i75.i.i:           ; preds = %bb.bf
  br label %.lr.ph.split.us.i.i.i68.i.i, !llvm.loop !11

.lr.ph.split.us.i.i.i68.i.i:                      ; preds = %..lr.ph.split.us.i_crit_edge.i.i75.i.i, %bb.be
  %i.in = phi i64 [ 0, %..lr.ph.split.us.i_crit_edge.i.i75.i.i ], [ %i.ij, %bb.be ] ; 2 uses
  %i.io = phi i64 [ 0, %..lr.ph.split.us.i_crit_edge.i.i75.i.i ], [ %.028.ph72.i.i.i62.i.i, %bb.be ] ; 2 uses
  %.not.us.i.i.i69.i.i = icmp sge i64 %.028.ph72.i.i.i62.i.i, %i.io
  %i.ip = icmp slt i64 %.028.ph72.i.i.i62.i.i, %i.in
  %or.cond.i.i.i70.i.i = select i1 %.not.us.i.i.i69.i.i, i1 %i.ip, i1 false
  br i1 %or.cond.i.i.i70.i.i, label %.outer.i.i.i71.i.i, label %.lr.ph.i.i67.i.i

.outer.i.i.i71.i.i:                               ; preds = %.lr.ph.split.us.i.i.i68.i.i, %.lr.ph.split.us.preheader.i.i.i61.i.i
  %i.iq = phi i64 [ %i.id, %.lr.ph.split.us.preheader.i.i.i61.i.i ], [ %i.in, %.lr.ph.split.us.i.i.i68.i.i ] ; 2 uses
  %i.ir = phi i64 [ %i.ie, %.lr.ph.split.us.preheader.i.i.i61.i.i ], [ %i.io, %.lr.ph.split.us.i.i.i68.i.i ] ; 2 uses
  %i.is = sub nsw i64 %.028.ph72.i.i.i62.i.i, %i.ir
  %i.it = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.is
  %i.iu = sub nuw nsw i64 64, %.030.ph70.i.i.i64.i.i
  %i.iv = sub nsw i64 %i.iq, %.028.ph72.i.i.i62.i.i
  %.sroa.speculated.i.i.i72.i.i = tail call i64 @llvm.umin.i64(i64 %i.iv, i64 %i.iu) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.029.ph71.i.i.i63.i.i, ptr align 1 %i.it, i64 %.sroa.speculated.i.i.i72.i.i, i1 false)
  %i.iw = getelementptr inbounds nuw i8, ptr %.029.ph71.i.i.i63.i.i, i64 %.sroa.speculated.i.i.i72.i.i
  %i.ix = add nuw nsw i64 %.sroa.speculated.i.i.i72.i.i, %.030.ph70.i.i.i64.i.i ; 2 uses
  %i.iy = add nsw i64 %.sroa.speculated.i.i.i72.i.i, %.028.ph72.i.i.i62.i.i
  %i.iz = icmp samesign ult i64 %i.ix, 64
  br i1 %i.iz, label %.lr.ph.split.us.preheader.i.i.i61.i.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.i73.i.i

.thread39.i.i.i74.i.i:                            ; preds = %bb.bf
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 70), i32 noundef 540, ptr noundef nonnull @.str.5, i32 noundef %i.il)
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread.i60.i.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.i73.i.i: ; preds = %.outer.i.i.i71.i.i
  %.val.i.i.i = load i64, ptr %i.hn, align 8
  %i.ja = call fastcc noundef i32 @_ZN4absl12lts_2025051218debugging_internalL10FindSymbolEPKvPNS1_12_GLOBAL__N_111CachingFileEPcmlPK10Elf64_ShdrSA_SA_S7_m(ptr noundef readnone %0, ptr noundef %5, ptr noundef nonnull %i.av, i64 noundef %.1.i.i, i64 %.val.i.i.i, ptr noundef %3, ptr noundef nonnull %i.hi) ; 2 uses
  %.not32.i.i.i = icmp eq i32 %i.ja, 1
  br i1 %.not32.i.i.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread.i60.i.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS2_7ObjFileEPKvlPcmS9_m.exit.i.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread.i60.i.i: ; preds = %bb.bd, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.i73.i.i, %.thread39.i.i.i74.i.i, %bb.bb
  %i.jb = load i16, ptr %i.ho, align 4, !tbaa !71
  %i.jc = load i64, ptr %i.hp, align 8, !tbaa !72
  %i.jd = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL22GetSectionHeaderByTypeEPNS1_12_GLOBAL__N_111CachingFileEtljP10Elf64_ShdrPcm(ptr noundef %5, i16 noundef zeroext %i.jb, i64 noundef %i.jc, i32 noundef 11, ptr noundef %3, ptr noundef nonnull %i.hi)
  br i1 %i.jd, label %bb.bg, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS2_7ObjFileEPKvlPcmS9_m.exit.thread.i.i

bb.bg:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread.i60.i.i
  %i.je = load i64, ptr %i.hp, align 8, !tbaa !72
  %i.jf = load i32, ptr %i.hq, align 8, !tbaa !73
  %i.jg = zext i32 %i.jf to i64
  %i.jh = shl nuw nsw i64 %i.jg, 6
  %i.ji = add i64 %i.jh, %i.je
  %i.jj = load i32, ptr %5, align 8
  %i.jk = load ptr, ptr %i.hk, align 8            ; 2 uses
  %i.jl = load i64, ptr %i.hl, align 8
  %.pre44.i.i.i = load i64, ptr %i.hm, align 8, !tbaa !74
  %.pre45.i.i.i = load i64, ptr %i.hr, align 8
  br label %.lr.ph.split.us.preheader.i.i.1.i.i.i

.lr.ph.split.us.preheader.i.i.1.i.i.i:            ; preds = %.outer.i.i.1.i.i.i, %bb.bg
  %i.jm = phi i64 [ %.pre45.i.i.i, %bb.bg ], [ %i.jz, %.outer.i.i.1.i.i.i ] ; 2 uses
  %i.jn = phi i64 [ %.pre44.i.i.i, %bb.bg ], [ %i.ka, %.outer.i.i.1.i.i.i ] ; 2 uses
  %.028.ph72.i.i.1.i.i.i = phi i64 [ %i.ji, %bb.bg ], [ %i.kh, %.outer.i.i.1.i.i.i ] ; 11 uses
  %.029.ph71.i.i.1.i.i.i = phi ptr [ %4, %bb.bg ], [ %i.kf, %.outer.i.i.1.i.i.i ] ; 2 uses
  %.030.ph70.i.i.1.i.i.i = phi i64 [ 0, %bb.bg ], [ %i.kg, %.outer.i.i.1.i.i.i ] ; 2 uses
  %.not.us.i16.i.1.i.i.i = icmp sge i64 %.028.ph72.i.i.1.i.i.i, %i.jn
  %i.jo = icmp slt i64 %.028.ph72.i.i.1.i.i.i, %i.jm
  %or.cond.i17.i.1.i.i.i = select i1 %.not.us.i16.i.1.i.i.i, i1 %i.jo, i1 false
  br i1 %or.cond.i17.i.1.i.i.i, label %.outer.i.i.1.i.i.i, label %.lr.ph.i.1.i.i.i

.lr.ph.i.1.i.i.i:                                 ; preds = %.lr.ph.split.us.preheader.i.i.1.i.i.i, %.lr.ph.split.us.i.i.1.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hm, i8 0, i64 16, i1 false)
  %i.jp = tail call i64 @pread(i32 noundef %i.jj, ptr noundef %i.jk, i64 noundef %i.jl, i64 noundef %.028.ph72.i.i.1.i.i.i) ; 3 uses
  %i.jq = icmp slt i64 %i.jp, 0
  br i1 %i.jq, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i.1.i.i.i
  %i.jr = icmp eq i64 %i.jp, 0
  br i1 %i.jr, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS2_7ObjFileEPKvlPcmS9_m.exit.thread.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store i64 %.028.ph72.i.i.1.i.i.i, ptr %i.hm, align 8, !tbaa !74
  %i.js = add nsw i64 %i.jp, %.028.ph72.i.i.1.i.i.i ; 2 uses
  store i64 %i.js, ptr %i.hr, align 8, !tbaa !75
  br label %.lr.ph.split.us.i.i.1.i.i.i

bb.bj:                                            ; preds = %.lr.ph.i.1.i.i.i
  %i.jt = tail call ptr @__errno_location() #24
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !3  ; 2 uses
  %i.jv = icmp eq i32 %i.ju, 4
  br i1 %i.jv, label %..lr.ph.split.us.i_crit_edge.i.1.i.i.i, label %.thread39.i.i.1.i.i.i, !llvm.loop !11

.thread39.i.i.1.i.i.i:                            ; preds = %bb.bj
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 70), i32 noundef 540, ptr noundef nonnull @.str.5, i32 noundef %i.ju)
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS2_7ObjFileEPKvlPcmS9_m.exit.thread.i.i

..lr.ph.split.us.i_crit_edge.i.1.i.i.i:           ; preds = %bb.bj
  br label %.lr.ph.split.us.i.i.1.i.i.i, !llvm.loop !11

.lr.ph.split.us.i.i.1.i.i.i:                      ; preds = %..lr.ph.split.us.i_crit_edge.i.1.i.i.i, %bb.bi
  %i.jw = phi i64 [ 0, %..lr.ph.split.us.i_crit_edge.i.1.i.i.i ], [ %i.js, %bb.bi ] ; 2 uses
  %i.jx = phi i64 [ 0, %..lr.ph.split.us.i_crit_edge.i.1.i.i.i ], [ %.028.ph72.i.i.1.i.i.i, %bb.bi ] ; 2 uses
  %.not.us.i.i.1.i.i.i = icmp sge i64 %.028.ph72.i.i.1.i.i.i, %i.jx
  %i.jy = icmp slt i64 %.028.ph72.i.i.1.i.i.i, %i.jw
  %or.cond.i.i.1.i.i.i = select i1 %.not.us.i.i.1.i.i.i, i1 %i.jy, i1 false
  br i1 %or.cond.i.i.1.i.i.i, label %.outer.i.i.1.i.i.i, label %.lr.ph.i.1.i.i.i

.outer.i.i.1.i.i.i:                               ; preds = %.lr.ph.split.us.i.i.1.i.i.i, %.lr.ph.split.us.preheader.i.i.1.i.i.i
  %i.jz = phi i64 [ %i.jm, %.lr.ph.split.us.preheader.i.i.1.i.i.i ], [ %i.jw, %.lr.ph.split.us.i.i.1.i.i.i ] ; 2 uses
  %i.ka = phi i64 [ %i.jn, %.lr.ph.split.us.preheader.i.i.1.i.i.i ], [ %i.jx, %.lr.ph.split.us.i.i.1.i.i.i ] ; 2 uses
  %i.kb = sub nsw i64 %.028.ph72.i.i.1.i.i.i, %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.kb
  %i.kd = sub nuw nsw i64 64, %.030.ph70.i.i.1.i.i.i
  %i.ke = sub nsw i64 %i.jz, %.028.ph72.i.i.1.i.i.i
  %.sroa.speculated.i.i.1.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ke, i64 %i.kd) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.029.ph71.i.i.1.i.i.i, ptr align 1 %i.kc, i64 %.sroa.speculated.i.i.1.i.i.i, i1 false)
  %i.kf = getelementptr inbounds nuw i8, ptr %.029.ph71.i.i.1.i.i.i, i64 %.sroa.speculated.i.i.1.i.i.i
  %i.kg = add nuw nsw i64 %.sroa.speculated.i.i.1.i.i.i, %.030.ph70.i.i.1.i.i.i ; 2 uses
  %i.kh = add nsw i64 %.sroa.speculated.i.i.1.i.i.i, %.028.ph72.i.i.1.i.i.i
  %i.ki = icmp samesign ult i64 %i.kg, 64
  br i1 %i.ki, label %.lr.ph.split.us.preheader.i.i.1.i.i.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.1.i.i.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.1.i.i.i: ; preds = %.outer.i.i.1.i.i.i
  %.val.1.i.i.i = load i64, ptr %i.hn, align 8
  %i.kj = call fastcc noundef i32 @_ZN4absl12lts_2025051218debugging_internalL10FindSymbolEPKvPNS1_12_GLOBAL__N_111CachingFileEPcmlPK10Elf64_ShdrSA_SA_S7_m(ptr noundef readnone %0, ptr noundef %5, ptr noundef nonnull %i.av, i64 noundef %.1.i.i, i64 %.val.1.i.i.i, ptr noundef %3, ptr noundef nonnull %i.hi) ; 2 uses
  %.not32.1.i.i.i = icmp eq i32 %i.kj, 1
  br i1 %.not32.1.i.i.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS2_7ObjFileEPKvlPcmS9_m.exit.thread.i.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS2_7ObjFileEPKvlPcmS9_m.exit.i.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS2_7ObjFileEPKvlPcmS9_m.exit.thread.i.i: ; preds = %bb.bh, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.1.i.i.i, %.thread39.i.i.1.i.i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.thread.i60.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN4absl12lts_2025051218debugging_internalL22MaybeInitializeObjFileEPNS1_12_GLOBAL__N_17ObjFileE.exit.i.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS2_7ObjFileEPKvlPcmS9_m.exit.i.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.1.i.i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.i73.i.i
  %spec.select.i.i.i = phi i32 [ %i.kj, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.1.i.i.i ], [ %i.ja, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit.i73.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.kk = icmp eq i32 %spec.select.i.i.i, 3
  br i1 %i.kk, label %bb.bk, label %_ZN4absl12lts_2025051218debugging_internalL22MaybeInitializeObjFileEPNS1_12_GLOBAL__N_17ObjFileE.exit.i.i

bb.bk:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS2_7ObjFileEPKvlPcmS9_m.exit.i.i
  tail call fastcc void @_ZN4absl12lts_2025051218debugging_internalL15DemangleInplaceEPcmS2_m(ptr noundef %i.av, ptr noundef %i.hi)
  br label %_ZN4absl12lts_2025051218debugging_internalL22MaybeInitializeObjFileEPNS1_12_GLOBAL__N_17ObjFileE.exit.i.i

bb.bl:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZN4absl12lts_2025051218debugging_internal11VDSOSupportC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %8)
  %i.kl = load ptr, ptr %8, align 8, !tbaa !76
  %.not85.i.i = icmp eq ptr %i.kl, null
  br i1 %.not85.i.i, label %bb.br, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.km = call noundef zeroext i1 @_ZNK4absl12lts_2025051218debugging_internal11VDSOSupport21LookupSymbolByAddressEPKvPNS1_11ElfMemImage10SymbolInfoE(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef %0, ptr noundef nonnull %9)
  br i1 %i.km, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  %i.kn = load ptr, ptr %9, align 8, !tbaa !79    ; 2 uses
  %i.ko = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kn) #25
  %i.kp = add i64 %i.ko, 1                        ; 2 uses
  %i.kq = icmp ugt i64 %i.kp, 3071
  br i1 %i.kq, label %bb.bo, label %bb.bp, !prof !35

bb.bo:                                            ; preds = %bb.bn
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 70), i32 noundef 1565, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12)
  unreachable

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.av, ptr nonnull align 1 %i.kn, i64 %i.kp, i1 false)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZN4absl12lts_2025051218debugging_internalL22MaybeInitializeObjFileEPNS1_12_GLOBAL__N_17ObjFileE.exit.i.i

_ZN4absl12lts_2025051218debugging_internalL22MaybeInitializeObjFileEPNS1_12_GLOBAL__N_17ObjFileE.exit.i.i: ; preds = %bb.br, %bb.bk, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS2_7ObjFileEPKvlPcmS9_m.exit.i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS2_7ObjFileEPKvlPcmS9_m.exit.thread.i.i, %.thread152.i.i.i, %bb.x
  %.047.i.i = phi i32 [ -1, %bb.br ], [ %i.hh, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS2_7ObjFileEPKvlPcmS9_m.exit.i.i ], [ %i.hh, %bb.bk ], [ -1, %bb.x ], [ -1, %.thread152.i.i.i ], [ %i.hh, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS2_7ObjFileEPKvlPcmS9_m.exit.thread.i.i ]
  %.2.i7.i = phi i64 [ 0, %bb.br ], [ %.1.i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS2_7ObjFileEPKvlPcmS9_m.exit.i.i ], [ %.1.i.i, %bb.bk ], [ 0, %bb.x ], [ 0, %.thread152.i.i.i ], [ %.1.i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer23GetSymbolFromObjectFileERKNS2_7ObjFileEPKvlPcmS9_m.exit.thread.i.i ]
  %i.kr = load atomic i32, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_115g_decorators_muE monotonic, align 4 ; 3 uses
  %i.ks = and i32 %i.kr, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.ks, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit.i.i

_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit.i.i: ; preds = %_ZN4absl12lts_2025051218debugging_internalL22MaybeInitializeObjFileEPNS1_12_GLOBAL__N_17ObjFileE.exit.i.i
  %i.kt = or disjoint i32 %i.kr, 1
  %i.ku = cmpxchg ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_115g_decorators_muE, i32 %i.kr, i32 %i.kt acquire monotonic, align 4
  %i.kv = extractvalue { i32, i1 } %i.ku, 0
  %.pre.i.i.i.i = and i32 %i.kv, 1
  %i.kw = icmp eq i32 %.pre.i.i.i.i, 0
  br i1 %i.kw, label %bb.bs, label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit.i.i

bb.bs:                                            ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit.i.i
  %i.kx = load i32, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116g_num_decoratorsE, align 4, !tbaa !3
  %i.ky = icmp sgt i32 %i.kx, 0
  br i1 %i.ky, label %.lr.ph.preheader.i.i, label %bb.bt

.lr.ph.preheader.i.i:                             ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store ptr %0, ptr %10, align 8, !tbaa !81
  %i.kz = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %.2.i7.i, ptr %i.kz, align 8, !tbaa !83
  %i.la = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %.047.i.i, ptr %i.la, align 8, !tbaa !84
  %i.lb = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.av, ptr %i.lb, align 8, !tbaa !85
  %i.lc = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 3072, ptr %i.lc, align 8, !tbaa !86
  %i.ld = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.le = getelementptr inbounds nuw i8, ptr %.0.i, i64 11296
  store ptr %i.le, ptr %i.ld, align 8, !tbaa !87
  %i.lf = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i64 1024, ptr %i.lf, align 8, !tbaa !88
  %i.lg = getelementptr inbounds nuw i8, ptr %10, i64 56
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.bt

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.lh = getelementptr inbounds nuw [24 x i8], ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_112g_decoratorsE, i64 %indvars.iv.i.i ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !89
  store ptr %i.lj, ptr %i.lg, align 8, !tbaa !90
  %i.lk = load ptr, ptr %i.lh, align 8, !tbaa !91
  call void %i.lk(ptr noundef nonnull %10), !inline_history !92
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ll = load i32, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116g_num_decoratorsE, align 4, !tbaa !3
  %i.lm = sext i32 %i.ll to i64
  %i.ln = icmp slt i64 %indvars.iv.next.i.i, %i.lm
  br i1 %i.ln, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !93

bb.bt:                                            ; preds = %._crit_edge.i.i, %bb.bs
  %i.lo = load atomic i32, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_115g_decorators_muE monotonic, align 4
  %i.lp = and i32 %i.lo, 2
  %i.lq = atomicrmw xchg ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_115g_decorators_muE, i32 %i.lp release, align 4 ; 2 uses
  %.not4.i.i.i = icmp ult i32 %i.lq, 8
  br i1 %.not4.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_115g_decorators_muE, i32 noundef %i.lq) #27
  br label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit.i.i

_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit.i.i: ; preds = %bb.bu, %bb.bt, %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit.i.i, %_ZN4absl12lts_2025051218debugging_internalL22MaybeInitializeObjFileEPNS1_12_GLOBAL__N_17ObjFileE.exit.i.i
  %i.lr = load i8, ptr %i.av, align 2, !tbaa !10
  %i.ls = icmp eq i8 %i.lr, 0
  br i1 %i.ls, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit.thread, label %bb.bv

bb.bv:                                            ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit.i.i
  %i.lt = getelementptr inbounds nuw i8, ptr %.0.i, i64 3097
  store i8 0, ptr %i.lt, align 1, !tbaa !10
  br i1 %i.s, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  call void @abort() #28
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.lu = ptrtoint ptr %0 to i64                  ; 4 uses
  %i.lv = lshr i64 %i.lu, 3
  %i.lw = lshr i64 %i.lu, 9
  %i.lx = lshr i64 %i.lu, 15
  %i.ly = xor i64 %i.lw, %i.lx
  %i.lz = lshr i64 %i.lu, 21
  %i.ma = xor i64 %i.ly, %i.lz
  %i.mb = xor i64 %i.ma, %i.lv
  %i.mc = getelementptr inbounds nuw i8, ptr %.0.i, i64 12320
  %i.md = and i64 %i.mb, 127
  %i.me = getelementptr inbounds nuw [80 x i8], ptr %i.mc, i64 %i.md ; 14 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 64 ; 4 uses
  %i.mg = load ptr, ptr %i.me, align 8, !tbaa !32
  %i.mh = icmp eq ptr %i.mg, null
  %.pre.i77.i.i = load i32, ptr %i.mf, align 8, !tbaa !3 ; 4 uses
  br i1 %i.mh, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.cc, %bb.cb, %bb.ca, %bb.bx
  %.04063.lcssa.i.i.i = phi i64 [ 0, %bb.bx ], [ 1, %bb.ca ], [ 2, %bb.cb ], [ 3, %bb.cc ] ; 3 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %.04063.lcssa.i.i.i
  %i.mj = add i32 %.pre.i77.i.i, 1
  store i32 %i.mj, ptr %i.mf, align 8, !tbaa !3
  %.0.ptr.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.me, i64 68 ; 2 uses
  %i.mk = load <2 x i32>, ptr %.0.ptr.1.i.i.i.i, align 4, !tbaa !3
  %i.ml = add <2 x i32> %i.mk, splat (i32 1)
  store <2 x i32> %i.ml, ptr %.0.ptr.1.i.i.i.i, align 4, !tbaa !3
  %.0.ptr.3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.me, i64 76 ; 2 uses
  %i.mm = load i32, ptr %.0.ptr.3.i.i.i.i, align 4, !tbaa !3
  %i.mn = add i32 %i.mm, 1
  store i32 %i.mn, ptr %.0.ptr.3.i.i.i.i, align 4, !tbaa !3
  store ptr %0, ptr %i.mi, align 8, !tbaa !32
  %i.mo = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.av) #25
  %i.mp = add i64 %i.mo, 1                        ; 2 uses
  %i.mq = load atomic ptr, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116g_sig_safe_arenaE acquire, align 8
  %i.mr = call noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %i.mp, ptr noundef %i.mq) ; 4 uses
  %.not.i.i78.i.i = icmp eq ptr %i.mr, null
  br i1 %.not.i.i78.i.i, label %bb.bz, label %bb.cd, !prof !35

bb.bz:                                            ; preds = %bb.by
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 70), i32 noundef 340, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4)
  unreachable

bb.ca:                                            ; preds = %bb.bx
  %i.ms = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !32
  %i.mu = icmp eq ptr %i.mt, null
  br i1 %i.mu, label %bb.by, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.mv = getelementptr inbounds nuw i8, ptr %i.me, i64 68 ; 2 uses
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !3  ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !32
  %i.mz = icmp eq ptr %i.my, null
  br i1 %i.mz, label %bb.by, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.na = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !32
  %i.nc = icmp eq ptr %i.nb, null
  br i1 %i.nc, label %bb.by, label %bb.ce

bb.cd:                                            ; preds = %bb.by
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mr, ptr nonnull readonly align 2 %i.av, i64 %i.mp, i1 false)
  %i.nd = getelementptr inbounds nuw i8, ptr %i.me, i64 32
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %.04063.lcssa.i.i.i
  store ptr %i.mr, ptr %i.ne, align 8, !tbaa !7
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer19InsertSymbolInCacheEPKvPKc.exit.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.nf = getelementptr inbounds nuw i8, ptr %i.me, i64 72 ; 2 uses
  %i.ng = load i32, ptr %i.nf, align 8, !tbaa !3  ; 3 uses
  %.146.1.i.i.i = call i32 @llvm.umax.i32(i32 %i.mw, i32 %.pre.i77.i.i) ; 2 uses
  %.not49.2.not.i.i.i = icmp ult i32 %i.ng, %.146.1.i.i.i
  %.not49.1.not.i.i.i = icmp uge i32 %i.mw, %.pre.i77.i.i
  %.144.1.i.i.i = zext i1 %.not49.1.not.i.i.i to i64
  %.144.2.i.i.i = select i1 %.not49.2.not.i.i.i, i64 %.144.1.i.i.i, i64 2
  %.146.2.i.i.i = call i32 @llvm.umax.i32(i32 %i.ng, i32 %.146.1.i.i.i)
  %i.nh = getelementptr inbounds nuw i8, ptr %i.me, i64 76 ; 2 uses
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !3  ; 2 uses
  %.not49.3.not.i.i.i = icmp ult i32 %i.ni, %.146.2.i.i.i
  %.144.3.i.i.i = select i1 %.not49.3.not.i.i.i, i64 %.144.2.i.i.i, i64 3 ; 3 uses
  %i.nj = add i32 %.pre.i77.i.i, 1
  store i32 %i.nj, ptr %i.mf, align 8, !tbaa !3
  %i.nk = add i32 %i.mw, 1
  store i32 %i.nk, ptr %i.mv, align 4, !tbaa !3
  %i.nl = add i32 %i.ng, 1
  store i32 %i.nl, ptr %i.nf, align 8, !tbaa !3
  %i.nm = add i32 %i.ni, 1
  store i32 %i.nm, ptr %i.nh, align 4, !tbaa !3
  %i.nn = getelementptr inbounds nuw i8, ptr %i.me, i64 32
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %.144.3.i.i.i ; 2 uses
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !7
  call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.np)
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %.144.3.i.i.i
  store ptr %0, ptr %i.nq, align 8, !tbaa !32
  %i.nr = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.av) #25
  %i.ns = add i64 %i.nr, 1                        ; 2 uses
  %i.nt = load atomic ptr, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116g_sig_safe_arenaE acquire, align 8
  %i.nu = call noundef ptr @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %i.ns, ptr noundef %i.nt) ; 4 uses
  %.not.i54.i.i.i = icmp eq ptr %i.nu, null
  br i1 %.not.i54.i.i.i, label %bb.cf, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer10CopyStringEPKc.exit55.i.i.i, !prof !35

bb.cf:                                            ; preds = %bb.ce
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 70), i32 noundef 340, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4)
  unreachable

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer10CopyStringEPKc.exit55.i.i.i: ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nu, ptr nonnull readonly align 2 %i.av, i64 %i.ns, i1 false)
  store ptr %i.nu, ptr %i.no, align 8, !tbaa !7
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer19InsertSymbolInCacheEPKvPKc.exit.i.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer19InsertSymbolInCacheEPKvPKc.exit.i.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer10CopyStringEPKc.exit55.i.i.i, %bb.cd
  %.04063.lcssa.sink.i.i.i = phi i64 [ %.04063.lcssa.i.i.i, %bb.cd ], [ %.144.3.i.i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer10CopyStringEPKc.exit55.i.i.i ]
  %.1.i.i.i = phi ptr [ %i.mr, %bb.cd ], [ %i.nu, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer10CopyStringEPKc.exit55.i.i.i ]
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %.04063.lcssa.sink.i.i.i
  store i32 0, ptr %i.nv, align 4, !tbaa !3
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer19InsertSymbolInCacheEPKvPKc.exit.i.i
  %.0.i21 = phi ptr [ %i.au, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer17FindSymbolInCacheEPKv.exit.i ], [ %.1.i.i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer19InsertSymbolInCacheEPKvPKc.exit.i.i ]
  %.not33 = icmp eq i32 %2, 0
  br i1 %.not33, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit.thread, label %bb.cg

bb.cg:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit
  %i.nw = zext nneg i32 %2 to i64                 ; 3 uses
  %i.nx = call ptr @strncpy(ptr noundef %1, ptr noundef nonnull %.0.i21, i64 noundef %i.nw) #23 ; 0 uses
  %i.ny = add nsw i64 %i.nw, -1                   ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 %i.ny ; 2 uses
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !10
  %.not = icmp eq i8 %i.oa, 0
  br i1 %.not, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit.thread, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.ny, i64 3) ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 %i.nw
  %i.oc = sub nsw i64 0, %.sroa.speculated
  %i.od = getelementptr inbounds i8, ptr %i.ob, i64 %i.oc
  %i.oe = getelementptr inbounds i8, ptr %i.od, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.oe, ptr nonnull align 1 @_ZZN4absl12lts_202505129SymbolizeEPKvPciE9kEllipsis, i64 %.sroa.speculated, i1 false)
  store i8 0, ptr %i.nz, align 1, !tbaa !10
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit.thread

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit.thread: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit.i.i, %bb.cg, %bb.ch, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit
  %or.cond32 = phi i1 [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit ], [ true, %bb.cg ], [ true, %bb.ch ], [ false, %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit.i.i ]
  %i.of = cmpxchg ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_119g_cached_symbolizerE, ptr null, ptr %.0.i release monotonic, align 8
  %i.og = extractvalue { ptr, i1 } %i.of, 1
  br i1 %i.og, label %_ZN4absl12lts_2025051218debugging_internalL14FreeSymbolizerEPNS1_12_GLOBAL__N_110SymbolizerE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit.thread, %bb.co
  %.0.idx23.i.i = phi i64 [ %.0.add.i.i, %bb.co ], [ 12320, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit.thread ] ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.0.idx23.i.i ; 4 uses
  %.015.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.oh, i64 32
  %i.oi = load ptr, ptr %.015.ptr.i.i, align 8, !tbaa !7
  invoke void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.oi)
          to label %bb.cl unwind label %.loopexit.split-lp.i.i

bb.ci:                                            ; preds = %bb.co
  %.val8.i.i.i = load i64, ptr %.0.i, align 8, !tbaa !94
  %.not9.i.i.i = icmp eq i64 %.val8.i.i.i, 0
  br i1 %.not9.i.i.i, label %.loopexit20.i.i, label %.lr.ph.i.i.i24

.lr.ph.i.i.i24:                                   ; preds = %bb.ci
  %i.oj = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  br label %bb.cj

bb.cj:                                            ; preds = %.noexc19.i.i, %.lr.ph.i.i.i24
  %.010.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i24 ], [ %i.oq, %.noexc19.i.i ] ; 2 uses
  %.val7.i.i.i = load ptr, ptr %i.oj, align 8, !tbaa !95
  %i.ok = getelementptr inbounds nuw [328 x i8], ptr %.val7.i.i.i, i64 %.010.i.i.i ; 2 uses
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !52
  invoke void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.ol)
          to label %.noexc.i.i unwind label %.loopexit.i.i

.noexc.i.i:                                       ; preds = %bb.cj
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 32
  %i.on = load i32, ptr %i.om, align 8, !tbaa !49 ; 2 uses
  %i.oo = icmp sgt i32 %i.on, -1
  br i1 %i.oo, label %bb.ck, label %.noexc19.i.i

bb.ck:                                            ; preds = %.noexc.i.i
  %i.op = invoke i32 @close(i32 noundef %i.on)
          to label %.noexc19.i.i unwind label %.loopexit.i.i ; 0 uses

.noexc19.i.i:                                     ; preds = %bb.ck, %.noexc.i.i
  %i.oq = add i64 %.010.i.i.i, 1                  ; 2 uses
  %.val.i.i.i25 = load i64, ptr %.0.i, align 8, !tbaa !94
  %.not.i.i.i26 = icmp eq i64 %i.oq, %.val.i.i.i25
  br i1 %.not.i.i.i26, label %.loopexit20.i.i, label %bb.cj, !llvm.loop !96

bb.cl:                                            ; preds = %.preheader.i.i
  %.015.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.oh, i64 40
  %i.or = load ptr, ptr %.015.ptr.1.i.i, align 8, !tbaa !7
  invoke void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.or)
          to label %bb.cm unwind label %.loopexit.split-lp.i.i

bb.cm:                                            ; preds = %bb.cl
  %.015.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %i.oh, i64 48
  %i.os = load ptr, ptr %.015.ptr.2.i.i, align 8, !tbaa !7
  invoke void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.os)
          to label %bb.cn unwind label %.loopexit.split-lp.i.i

bb.cn:                                            ; preds = %bb.cm
  %.015.ptr.3.i.i = getelementptr inbounds nuw i8, ptr %i.oh, i64 56
  %i.ot = load ptr, ptr %.015.ptr.3.i.i, align 8, !tbaa !7
  invoke void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %i.ot)
          to label %bb.co unwind label %.loopexit.split-lp.i.i

bb.co:                                            ; preds = %bb.cn
  %.0.add.i.i = add nuw nsw i64 %.0.idx23.i.i, 80 ; 2 uses
  %.not.i.i23 = icmp eq i64 %.0.add.i.i, 22560
  br i1 %.not.i.i23, label %bb.ci, label %.preheader.i.i

.loopexit20.i.i:                                  ; preds = %.noexc19.i.i, %bb.ci
  store i64 0, ptr %.0.i, align 8, !tbaa !94
  %i.ou = getelementptr inbounds nuw i8, ptr %.0.i, i64 25
  store i8 0, ptr %i.ou, align 1, !tbaa !48
  %i.ov = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %.val.i.i = load ptr, ptr %i.ov, align 8, !tbaa !95
  invoke void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef %.val.i.i)
          to label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110SymbolizerD2Ev.exit.i unwind label %bb.cp

bb.cp:                                            ; preds = %.loopexit20.i.i
  %i.ow = landingpad { ptr, i32 }
          catch ptr null
  %i.ox = extractvalue { ptr, i32 } %i.ow, 0
  call void @__clang_call_terminate(ptr %i.ox) #28
  unreachable

.loopexit.i.i:                                    ; preds = %bb.ck, %bb.cj
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.cq

.loopexit.split-lp.i.i:                           ; preds = %bb.cn, %bb.cm, %bb.cl, %.preheader.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.cq

bb.cq:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  %i.oy = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.oy) #28
  unreachable

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110SymbolizerD2Ev.exit.i: ; preds = %.loopexit20.i.i
  call void @_ZN4absl12lts_2025051213base_internal13LowLevelAlloc4FreeEPv(ptr noundef nonnull %.0.i)
  br label %_ZN4absl12lts_2025051218debugging_internalL14FreeSymbolizerEPNS1_12_GLOBAL__N_110SymbolizerE.exit

_ZN4absl12lts_2025051218debugging_internalL14FreeSymbolizerEPNS1_12_GLOBAL__N_110SymbolizerE.exit: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110Symbolizer9GetSymbolEPKv.exit.thread, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110SymbolizerD2Ev.exit.i
  ret i1 %or.cond32
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @AbslInternalGetFileMappingHint(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef writeonly captures(none) %2, ptr noundef writeonly captures(none) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_117g_file_mapping_muE monotonic, align 4 ; 3 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit.i, label %_ZN4absl12lts_2025051218debugging_internal18GetFileMappingHintEPPKvS4_PmPPKc.exit

_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit.i: ; preds = %bb.a
  %i.c = or disjoint i32 %i.a, 1
  %i.d = cmpxchg ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_117g_file_mapping_muE, i32 %i.a, i32 %i.c acquire monotonic, align 4
  %i.e = extractvalue { i32, i1 } %i.d, 0
  %.pre.i.i.i = and i32 %i.e, 1
  %i.f = icmp eq i32 %.pre.i.i.i, 0
  br i1 %i.f, label %.preheader.i, label %_ZN4absl12lts_2025051218debugging_internal18GetFileMappingHintEPPKvS4_PmPPKc.exit

.preheader.i:                                     ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock7TryLockEv.exit.i
  %i.g = load i32, ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_124g_num_file_mapping_hintsE, align 4, !tbaa !3 ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.i = load ptr, ptr %0, align 8, !tbaa !32
  %wide.trip.count.i = zext nneg i32 %i.g to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_120g_file_mapping_hintsE, i64 %indvars.iv.i ; 4 uses
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !36  ; 2 uses
  %.not.i = icmp ugt ptr %i.k, %i.i
  br i1 %.not.i, label %bb.e, label %bb.c
end_hunk_2
