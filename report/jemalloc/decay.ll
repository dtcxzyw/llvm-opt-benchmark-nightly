Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/decay?download=true
inline.NumInlined: 18
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@je_decay_init:bb.a
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.b, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  store atomic i64 %2, ptr %i.c monotonic, align 8
  %i.d = icmp sgt i64 %2, 0
  br i1 %i.d, label %bb.c, label %je_decay_reinit.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.f = mul i64 %2, 1000000
  tail call void @je_nstime_init(ptr noundef nonnull %i.e, i64 noundef %i.f) #8
  tail call void @je_nstime_idivide(ptr noundef nonnull %i.e, i64 noundef 200) #8
  br label %je_decay_reinit.exit

je_decay_reinit.exit:                             ; preds = %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @je_nstime_copy(ptr noundef nonnull %i.g, ptr noundef %1) #8
  %i.h = ptrtoint ptr %0 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.h, ptr %i.i, align 8, !tbaa !17
  tail call fastcc void @decay_deadline_init(ptr noundef nonnull %0)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1608) %i.j, i8 0, i64 1608, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %je_decay_reinit.exit
  ret i1 %i.a
}

declare zeroext i1 @je_malloc_mutex_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @je_decay_ms_valid(i64 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = add i64 %0, 1
  %.0 = icmp ult i64 %i.a, 18446744072002
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden i64 @je_decay_npages_purge_in(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = tail call i64 @je_nstime_ns(ptr noundef nonnull %i.a) #8
  %i.c = tail call i64 @je_nstime_ns(ptr noundef %1) #8
  %i.d = udiv i64 %i.c, %i.b                      ; 2 uses
  %i.e = icmp ugt i64 %i.d, 199
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sub nuw nsw i64 199, %i.d
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @h_steps, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18
  %i.i = sub i64 16777216, %i.h
  %i.j = mul i64 %i.i, %2
  %i.k = lshr i64 %i.j, 24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.k, %bb.b ], [ %2, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare i64 @je_nstime_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_decay_maybe_advance_epoch(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.nstime_t, align 8           ; 8 uses
  %i.a = load ptr, ptr @je_nstime_monotonic, align 8, !tbaa !28
  %i.b = tail call zeroext i1 %i.a() #8, !inline_history !25
  br i1 %i.b, label %decay_maybe_update_time.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.d = tail call i32 @je_nstime_compare(ptr noundef nonnull %i.c, ptr noundef %1) #8
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %decay_maybe_update_time.exit, !prof !29

bb.c:                                             ; preds = %bb.b
  tail call void @je_nstime_copy(ptr noundef nonnull %i.c, ptr noundef %1) #8
  tail call fastcc void @decay_deadline_init(ptr noundef nonnull %0)
  br label %decay_maybe_update_time.exit

decay_maybe_update_time.exit:                     ; preds = %bb.a, %bb.b, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = tail call i32 @je_nstime_compare(ptr noundef nonnull %i.f, ptr noundef %1) #8
  %i.h = icmp slt i32 %i.g, 1                     ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.h

bb.d:                                             ; preds = %decay_maybe_update_time.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @je_nstime_copy(ptr noundef nonnull %3, ptr noundef %1) #8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  call void @je_nstime_subtract(ptr noundef nonnull %3, ptr noundef nonnull %i.i) #8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.k = call i64 @je_nstime_divide(ptr noundef nonnull %3, ptr noundef nonnull %i.j) #8 ; 6 uses
  call void @je_nstime_copy(ptr noundef nonnull %3, ptr noundef nonnull %i.j) #8
  call void @je_nstime_imultiply(ptr noundef nonnull %3, i64 noundef %i.k) #8
  call void @je_nstime_add(ptr noundef nonnull %i.i, ptr noundef nonnull %3) #8
  call fastcc void @decay_deadline_init(ptr noundef nonnull %0)
  %i.l = icmp ugt i64 %i.k, 199
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1592) %i.m, i8 0, i64 1592, i1 false)
  br label %decay_backlog_update.exit

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.k
  %i.o = sub nuw nsw i64 200, %i.k                ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.n, i64 %i.p, i1 false)
  %i.q = icmp samesign ugt i64 %i.k, 1
  br i1 %i.q, label %bb.g, label %decay_backlog_update.exit

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.o
  %i.s = shl nuw nsw i64 %i.k, 3
  %i.t = add nsw i64 %i.s, -8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.r, i8 0, i64 %i.t, i1 false)
  br label %decay_backlog_update.exit

decay_backlog_update.exit:                        ; preds = %bb.e, %bb.f, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !30
  %spec.select.i = call i64 @llvm.usub.sat.i64(i64 %2, i64 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1768
  store i64 %spec.select.i, ptr %i.w, align 8, !tbaa !18
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %decay_backlog_update.exit
  %index = phi i64 [ 0, %decay_backlog_update.exit ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %decay_backlog_update.exit ], [ %i.ad, %vector.body ]
  %vec.phi23 = phi <2 x i64> [ zeroinitializer, %decay_backlog_update.exit ], [ %i.ae, %vector.body ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <2 x i64>, ptr %i.x, align 8, !tbaa !18
  %wide.load24 = load <2 x i64>, ptr %i.y, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @h_steps, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load25 = load <2 x i64>, ptr %i.z, align 16, !tbaa !18
  %wide.load26 = load <2 x i64>, ptr %i.aa, align 16, !tbaa !18
  %i.ab = mul <2 x i64> %wide.load25, %wide.load
  %i.ac = mul <2 x i64> %wide.load26, %wide.load24
  %i.ad = add <2 x i64> %i.ab, %vec.phi           ; 2 uses
  %i.ae = add <2 x i64> %i.ac, %vec.phi23         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, 200
  br i1 %i.af, label %decay_backlog_npages_limit.exit, label %vector.body, !llvm.loop !26

decay_backlog_npages_limit.exit:                  ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ae, %i.ad
  %i.ag = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  %i.ah = lshr i64 %i.ag, 24                      ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !31
  %. = call i64 @llvm.umax.i64(i64 %i.ah, i64 %2)
  store i64 %., ptr %i.u, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.h

bb.h:                                             ; preds = %decay_maybe_update_time.exit, %decay_backlog_npages_limit.exit
  ret i1 %i.h
}

declare void @je_nstime_subtract(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @je_nstime_divide(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @je_nstime_imultiply(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @je_nstime_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i64 @je_decay_ns_until_purge(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = tail call i64 @je_nstime_ns(ptr noundef nonnull %i.d) #8 ; 4 uses
  %i.f = icmp eq i64 %1, 0
  br i1 %i.f, label %.preheader76, label %.thread

.preheader76:                                     ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.h
  %3 = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %4, align 8, !tbaa !18
  %.not.a = icmp eq i64 %i.h, 0
  br i1 %.not.a, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !18
  %.not.1 = icmp eq i64 %i.k, 0
  br i1 %.not.1, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !18
  %.not.2 = icmp eq i64 %i.n, 0
  br i1 %.not.2, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !18
  %.not.3 = icmp eq i64 %i.q, 0
  br i1 %.not.3, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %.not.4 = icmp eq i64 %indvars.iv.next.4, 200
  br i1 %.not.4, label %.loopexit, label %bb.h, !llvm.loop !32

bb.h:                                             ; preds = %bb.g, %.preheader76
  %indvars.iv = phi i64 [ 0, %.preheader76 ], [ %indvars.iv.next.4, %bb.g ] ; 6 uses
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %6 = load i64, ptr %5, align 8, !tbaa !18
  %exitcond.not.4 = icmp eq i64 %6, 0
  br i1 %exitcond.not.4, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.h, %bb.c, %bb.d, %bb.e, %bb.f, %bb.b
  %.not60 = icmp ugt i64 %1, %2
  br i1 %.not60, label %.preheader.i.preheader, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.r = mul i64 %i.e, 200
  br label %.loopexit

.preheader.i.preheader:                           ; preds = %.thread
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.u = load i64, ptr %i.t, align 8, !tbaa !18
  %i.v = mul i64 %i.u, 165
  %i.w = load i64, ptr %i.s, align 8, !tbaa !18
  %i.x = mul i64 %i.w, 20
  %i.y = add i64 %i.v, %i.x
  %i.z = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.y, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader.i.preheader
  %index = phi i64 [ 0, %.preheader.i.preheader ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.z, %.preheader.i.preheader ], [ %i.ak, %vector.body ]
  %vec.phi103 = phi <2 x i64> [ zeroinitializer, %.preheader.i.preheader ], [ %i.al, %vector.body ]
  %i.aa = or disjoint i64 %index, 2               ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load = load <2 x i64>, ptr %i.ab, align 8, !tbaa !18
  %wide.load104.a = load <2 x i64>, ptr %i.ac, align 8, !tbaa !18
  %i.ad = getelementptr [8 x i8], ptr @h_steps, i64 %i.aa ; 3 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %wide.load105.a = load <2 x i64>, ptr %i.ad, align 16, !tbaa !18 ; 2 uses
  %wide.load106 = load <2 x i64>, ptr %i.ae, align 16, !tbaa !18
  %i.af = getelementptr i8, ptr %i.ad, i64 -16
  %wide.load107 = load <2 x i64>, ptr %i.af, align 16, !tbaa !18
  %i.ag = sub <2 x i64> %wide.load105.a, %wide.load107
  %i.ah = sub <2 x i64> %wide.load106, %wide.load105.a
  %i.ai = mul <2 x i64> %i.ag, %wide.load
  %i.aj = mul <2 x i64> %i.ah, %wide.load104.a
  %i.ak = add <2 x i64> %i.ai, %vec.phi           ; 2 uses
  %i.al = add <2 x i64> %i.aj, %vec.phi103        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, 196
  br i1 %i.am, label %.preheader.i, label %vector.body, !llvm.loop !33

.preheader.i:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.al, %i.ak
  %i.an = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !18
  %i.aq = mul i64 %i.ap, 533
  %i.ar = add i64 %i.aq, %i.an
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1768
  %i.at = load i64, ptr %i.as, align 8, !tbaa !18
  %i.au = mul i64 %i.at, 166
  %i.av = add i64 %i.au, %i.ar
  %i.aw = lshr i64 %i.av, 24                      ; 3 uses
  %i.ax = icmp ugt i64 %i.aw, %2
  br i1 %i.ax, label %bb.j, label %vector.body111

vector.body111:                                   ; preds = %.preheader.i, %vector.body111
  %index112 = phi i64 [ %index.next119, %vector.body111 ], [ 0, %.preheader.i ] ; 3 uses
  %vec.phi113 = phi <2 x i64> [ %i.be, %vector.body111 ], [ zeroinitializer, %.preheader.i ]
  %vec.phi114 = phi <2 x i64> [ %i.bf, %vector.body111 ], [ zeroinitializer, %.preheader.i ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index112 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load115.a = load <2 x i64>, ptr %i.ay, align 8, !tbaa !18
  %wide.load116.a = load <2 x i64>, ptr %i.az, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr @h_steps, i64 %index112 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load117 = load <2 x i64>, ptr %i.ba, align 16, !tbaa !18
  %wide.load118 = load <2 x i64>, ptr %i.bb, align 16, !tbaa !18
  %i.bc = mul <2 x i64> %wide.load117, %wide.load115.a
  %i.bd = mul <2 x i64> %wide.load118, %wide.load116.a
  %i.be = add <2 x i64> %i.bc, %vec.phi113        ; 2 uses
  %i.bf = add <2 x i64> %i.bd, %vec.phi114        ; 2 uses
  %index.next119 = add nuw i64 %index112, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next119, 200
  br i1 %i.bg, label %decay_npurge_after_interval.exit65, label %vector.body111, !llvm.loop !34

bb.j:                                             ; preds = %.preheader.i
  %i.bh = shl i64 %i.e, 1
  br label %.loopexit

decay_npurge_after_interval.exit65:               ; preds = %vector.body111
  %bin.rdx121 = add <2 x i64> %i.bf, %i.be
  %i.bi = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx121)
  %i.bj = lshr i64 %i.bi, 24                      ; 3 uses
  %i.bk = icmp ult i64 %i.bj, %2
  br i1 %i.bk, label %bb.k, label %.preheader

.preheader:                                       ; preds = %decay_npurge_after_interval.exit65
  %i.bl = add nuw nsw i64 %i.aw, %2
  %i.bm = icmp samesign ult i64 %i.bl, %i.bj
  br i1 %i.bm, label %.lr.ph.i, label %._crit_edge

bb.k:                                             ; preds = %decay_npurge_after_interval.exit65
  %i.bn = mul i64 %i.e, 200
  br label %.loopexit

.lr.ph.i:                                         ; preds = %.preheader, %decay_npurge_after_interval.exit73
  %.04386 = phi i64 [ %..043, %decay_npurge_after_interval.exit73 ], [ %i.bj, %.preheader ]
  %.04485 = phi i64 [ %.044., %decay_npurge_after_interval.exit73 ], [ %i.aw, %.preheader ]
  %.04684 = phi i64 [ %..046, %decay_npurge_after_interval.exit73 ], [ 200, %.preheader ] ; 2 uses
  %.04883 = phi i64 [ %.048., %decay_npurge_after_interval.exit73 ], [ 2, %.preheader ] ; 2 uses
  %i.bo = add nuw i64 %.04684, %.04883            ; 3 uses
  %i.bp = lshr i64 %i.bo, 1                       ; 10 uses
  %min.iters.check138 = icmp ult i64 %i.bo, 8
  br i1 %min.iters.check138, label %scalar.ph137.preheader, label %vector.ph139

vector.ph139:                                     ; preds = %.lr.ph.i
  %n.vec140 = and i64 %i.bp, 9223372036854775804  ; 3 uses
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph139
  %index142 = phi i64 [ 0, %vector.ph139 ], [ %index.next149, %vector.body141 ] ; 3 uses
  %vec.phi143 = phi <2 x i64> [ zeroinitializer, %vector.ph139 ], [ %i.bw, %vector.body141 ]
  %vec.phi144 = phi <2 x i64> [ zeroinitializer, %vector.ph139 ], [ %i.bx, %vector.body141 ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index142 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %wide.load145.a = load <2 x i64>, ptr %i.bq, align 8, !tbaa !18
  %wide.load146.a = load <2 x i64>, ptr %i.br, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr @h_steps, i64 %index142 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load147 = load <2 x i64>, ptr %i.bs, align 16, !tbaa !18
  %wide.load148 = load <2 x i64>, ptr %i.bt, align 16, !tbaa !18
  %i.bu = mul <2 x i64> %wide.load147, %wide.load145.a
  %i.bv = mul <2 x i64> %wide.load148, %wide.load146.a
  %i.bw = add <2 x i64> %i.bu, %vec.phi143        ; 2 uses
  %i.bx = add <2 x i64> %i.bv, %vec.phi144        ; 2 uses
  %index.next149 = add nuw i64 %index142, 4       ; 2 uses
  %i.by = icmp eq i64 %index.next149, %n.vec140
  br i1 %i.by, label %middle.block150, label %vector.body141, !llvm.loop !35

middle.block150:                                  ; preds = %vector.body141
  %bin.rdx151 = add <2 x i64> %i.bx, %i.bw
  %i.bz = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx151) ; 2 uses
  %cmp.n152 = icmp eq i64 %i.bp, %n.vec140
  br i1 %cmp.n152, label %.preheader.i69, label %scalar.ph137.preheader

scalar.ph137.preheader:                           ; preds = %.lr.ph.i, %middle.block150
  %.018.i66.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.bz, %middle.block150 ]
  %.01517.i67.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec140, %middle.block150 ]
  br label %scalar.ph137

.preheader.i69:                                   ; preds = %scalar.ph137, %middle.block150
  %.lcssa = phi i64 [ %i.bz, %middle.block150 ], [ %i.cy, %scalar.ph137 ] ; 3 uses
  %i.ca = icmp ult i64 %i.bo, 400
  br i1 %i.ca, label %.lr.ph22.i.preheader, label %decay_npurge_after_interval.exit73

.lr.ph22.i.preheader:                             ; preds = %.preheader.i69
  %i.cb = sub nsw i64 200, %i.bp                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.cb, 4
  br i1 %min.iters.check, label %.lr.ph22.i.preheader155, label %vector.ph123

vector.ph123:                                     ; preds = %.lr.ph22.i.preheader
  %n.vec = and i64 %i.cb, -4                      ; 3 uses
  %i.cc = add nsw i64 %i.bp, %n.vec
  %i.cd = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.lcssa, i64 0
  br label %vector.body124

vector.body124:                                   ; preds = %vector.body124, %vector.ph123
  %index125 = phi i64 [ 0, %vector.ph123 ], [ %index.next134, %vector.body124 ] ; 3 uses
  %vec.phi126 = phi <2 x i64> [ %i.cd, %vector.ph123 ], [ %i.cp, %vector.body124 ]
  %vec.phi127 = phi <2 x i64> [ zeroinitializer, %vector.ph123 ], [ %i.cq, %vector.body124 ]
  %i.ce = add nuw i64 %i.bp, %index125            ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %wide.load128.a = load <2 x i64>, ptr %i.cf, align 8, !tbaa !18
  %wide.load129.a = load <2 x i64>, ptr %i.cg, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr @h_steps, i64 %i.ce ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %wide.load130.a = load <2 x i64>, ptr %i.ch, align 8, !tbaa !18
  %wide.load131.a = load <2 x i64>, ptr %i.ci, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr @h_steps, i64 %index125 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load132 = load <2 x i64>, ptr %i.cj, align 16, !tbaa !18
  %wide.load133 = load <2 x i64>, ptr %i.ck, align 16, !tbaa !18
  %i.cl = sub <2 x i64> %wide.load130.a, %wide.load132
  %i.cm = sub <2 x i64> %wide.load131.a, %wide.load133
  %i.cn = mul <2 x i64> %i.cl, %wide.load128.a
  %i.co = mul <2 x i64> %i.cm, %wide.load129.a
  %i.cp = add <2 x i64> %i.cn, %vec.phi126        ; 2 uses
  %i.cq = add <2 x i64> %i.co, %vec.phi127        ; 2 uses
  %index.next134 = add nuw i64 %index125, 4       ; 2 uses
  %i.cr = icmp eq i64 %index.next134, %n.vec
  br i1 %i.cr, label %middle.block135, label %vector.body124, !llvm.loop !36

middle.block135:                                  ; preds = %vector.body124
  %bin.rdx136 = add <2 x i64> %i.cq, %i.cp
  %i.cs = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx136) ; 2 uses
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %decay_npurge_after_interval.exit73, label %.lr.ph22.i.preheader155

.lr.ph22.i.preheader155:                          ; preds = %.lr.ph22.i.preheader, %middle.block135
  %.121.i70.ph = phi i64 [ %.lcssa, %.lr.ph22.i.preheader ], [ %i.cs, %middle.block135 ]
  %.11620.i71.ph = phi i64 [ %i.bp, %.lr.ph22.i.preheader ], [ %i.cc, %middle.block135 ]
  br label %.lr.ph22.i

scalar.ph137:                                     ; preds = %scalar.ph137.preheader, %scalar.ph137
  %.018.i66 = phi i64 [ %i.cy, %scalar.ph137 ], [ %.018.i66.ph, %scalar.ph137.preheader ]
  %.01517.i67 = phi i64 [ %i.cz, %scalar.ph137 ], [ %.01517.i67.ph, %scalar.ph137.preheader ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.01517.i67
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr @h_steps, i64 %.01517.i67
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !18
  %i.cx = mul i64 %i.cw, %i.cu
  %i.cy = add i64 %i.cx, %.018.i66                ; 2 uses
  %i.cz = add nuw nsw i64 %.01517.i67, 1          ; 2 uses
  %exitcond.not.i68 = icmp eq i64 %i.cz, %i.bp
  br i1 %exitcond.not.i68, label %.preheader.i69, label %scalar.ph137, !llvm.loop !37

.lr.ph22.i:                                       ; preds = %.lr.ph22.i.preheader155, %.lr.ph22.i
  %.121.i70 = phi i64 [ %i.dj, %.lr.ph22.i ], [ %.121.i70.ph, %.lr.ph22.i.preheader155 ]
  %.11620.i71 = phi i64 [ %i.dk, %.lr.ph22.i ], [ %.11620.i71.ph, %.lr.ph22.i.preheader155 ] ; 4 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.11620.i71
  %i.db = load i64, ptr %i.da, align 8, !tbaa !18
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr @h_steps, i64 %.11620.i71
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !18
  %i.de = sub nuw nsw i64 %.11620.i71, %i.bp
  %i.df = getelementptr inbounds nuw [8 x i8], ptr @h_steps, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !18
  %i.dh = sub i64 %i.dd, %i.dg
  %i.di = mul i64 %i.dh, %i.db
  %i.dj = add i64 %i.di, %.121.i70                ; 2 uses
  %i.dk = add nuw nsw i64 %.11620.i71, 1          ; 2 uses
  %exitcond26.not.i72 = icmp eq i64 %i.dk, 200
  br i1 %exitcond26.not.i72, label %decay_npurge_after_interval.exit73, label %.lr.ph22.i, !llvm.loop !38

decay_npurge_after_interval.exit73:               ; preds = %.lr.ph22.i, %middle.block135, %.preheader.i69
  %.1.lcssa.i = phi i64 [ %.lcssa, %.preheader.i69 ], [ %i.cs, %middle.block135 ], [ %i.dj, %.lr.ph22.i ]
  %i.dl = lshr i64 %.1.lcssa.i, 24                ; 3 uses
  %i.dm = icmp ugt i64 %i.dl, %2                  ; 4 uses
  %.048. = select i1 %i.dm, i64 %.04883, i64 %i.bp ; 3 uses
  %..046 = select i1 %i.dm, i64 %i.bp, i64 %.04684 ; 3 uses
  %.044. = select i1 %i.dm, i64 %.04485, i64 %i.dl ; 2 uses
  %..043 = select i1 %i.dm, i64 %i.dl, i64 %.04386 ; 2 uses
  %i.dn = add nuw nsw i64 %.044., %2
  %i.do = icmp ult i64 %i.dn, %..043
  %i.dp = add nuw i64 %.048., 2
  %i.dq = icmp ult i64 %i.dp, %..046
  %i.dr = select i1 %i.do, i1 %i.dq, i1 false
  br i1 %i.dr, label %.lr.ph.i, label %._crit_edge.loopexit, !llvm.loop !39

._crit_edge.loopexit:                             ; preds = %decay_npurge_after_interval.exit73
  %i.ds = add nuw i64 %..046, %.048.
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.dt = phi i64 [ 202, %.preheader ], [ %i.ds, %._crit_edge.loopexit ]
  %i.du = mul i64 %i.dt, %i.e
  %i.dv = lshr i64 %i.du, 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.i, %._crit_edge, %bb.k, %bb.j, %bb.a
  %.3 = phi i64 [ -1, %bb.a ], [ %i.r, %bb.i ], [ %i.dv, %._crit_edge ], [ %i.bh, %bb.j ], [ %i.bn, %bb.k ], [ -1, %bb.g ]
  ret i64 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

declare i32 @je_nstime_compare(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"malloc_mutex_s", !8, i64 0}
!13 = !{!"_Bool", !8, i64 0}
!14 = !{!"long", !8, i64 0}
!15 = !{!"", !14, i64 0}
!16 = !{!"decay_s", !12, i64 0, !13, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !14, i64 144, !15, i64 152, !14, i64 160, !14, i64 168, !8, i64 176, !14, i64 1776}
!17 = !{!16, !14, i64 144}
!18 = !{!14, !14, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = distinct !{!22, !19}
!23 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!24 = !{!16, !13, i64 112}
!25 = distinct !{null}
!26 = distinct !{!26, !19, !20, !21}
!27 = !{!"any pointer", !8, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!30 = !{!16, !14, i64 168}
!31 = !{!16, !14, i64 160}
!32 = distinct !{!32, !19}
!33 = distinct !{!33, !19, !20, !21}
!34 = distinct !{!34, !19, !20, !21}
!35 = distinct !{!35, !19, !20, !21}
!36 = distinct !{!36, !19, !20, !21}
!37 = distinct !{!37, !19, !21, !20}
!38 = distinct !{!38, !19, !21, !20}
!39 = distinct !{!39, !19}
end_hunk_0
