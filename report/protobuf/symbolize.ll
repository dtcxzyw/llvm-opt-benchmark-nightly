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
  br i1 %.not28137.not, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_111CachingFile19ReadFromOffsetExactEPvml.exit48.thread, label %.lr.ph142

.lr.ph142:                                        ; preds = %.preheader
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ax = load i64, ptr %i.aw, align 8
  %.not77.i = icmp eq i64 %2, 0
  %wide.trip.count = zext i16 %i.av to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph142, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph142 ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %.sroa.21.0139 = phi i64 [ %.sroa.21.8, %.lr.ph142 ], [ %.sroa.21.17115, %bb.s ]
  %.sroa.37.0138 = phi i64 [ %.sroa.37.8, %.lr.ph142 ], [ %.sroa.37.17114, %bb.s ]
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
begin_hunk_1_@_ZN4absl12lts_202505129SymbolizeEPKvPci:bb.a
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
end_hunk_1
