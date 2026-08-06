begin_hunk_0_@nstime_sum:bb.a
.critedge:                                        ; preds = %nstime_is_unset.exit
  %i.k = getelementptr i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %0, i64 8          ; 8 uses
  %i.n = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.l, i32 %i.i) ; 2 uses
  %i.o = extractvalue { i32, i1 } %i.n, 1
  %i.p = extractvalue { i32, i1 } %i.n, 0
  store i32 %i.p, ptr %i.m, align 8
  br i1 %i.o, label %bb.c, label %bb.d

nstime_is_unset.exit.thread:                      ; preds = %nstime_is_unset.exit, %bb.b
  store i64 0, ptr %0, align 8
  %i.q = getelementptr i8, ptr %0, i64 8
  store i32 2147483647, ptr %i.q, align 8
  br label %bb.n

bb.c:                                             ; preds = %.critedge
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str, i32 noundef 5, ptr noundef nonnull @.str.1, i64 noundef 153, ptr noundef nonnull @__func__.nstime_sum, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3)
  store i32 0, ptr %i.m, align 8
  %i.r = tail call ptr @__errno_location() #14
  store i32 22, ptr %i.r, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  %i.s = load i64, ptr %1, align 8
  %i.t = load i64, ptr %2, align 8
  %i.u = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.s, i64 %i.t) ; 2 uses
  %i.v = extractvalue { i64, i1 } %i.u, 1
  %i.w = extractvalue { i64, i1 } %i.u, 0         ; 5 uses
  store i64 %i.w, ptr %0, align 8
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = load i64, ptr %1, align 8
  %i.y = icmp sgt i64 %i.x, 0                     ; 2 uses
  %. = select i1 %i.y, i64 9223372036854775807, i64 -9223372036854775808
  %.35 = select i1 %i.y, i32 999999999, i32 -999999999
  store i64 %., ptr %0, align 8
  store i32 %.35, ptr %i.m, align 8
  %i.z = tail call ptr @__errno_location() #14
  store i32 34, ptr %i.z, align 4
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.aa = load i32, ptr %i.m, align 8             ; 6 uses
  %i.ab = icmp sgt i32 %i.aa, 999999999
  br i1 %i.ab, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp sgt i32 %i.aa, 0
  %i.ad = icmp slt i64 %i.w, 0
  %or.cond = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = add nsw i32 %i.aa, -1000000000
  store i32 %i.ae, ptr %i.m, align 8
  %i.af = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.w, i64 1) ; 2 uses
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  %i.ah = extractvalue { i64, i1 } %i.af, 0
  store i64 %i.ah, ptr %0, align 8
  br i1 %i.ag, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  store i64 9223372036854775807, ptr %0, align 8
  store i32 999999999, ptr %i.m, align 8
  %i.ai = tail call ptr @__errno_location() #14
  store i32 34, ptr %i.ai, align 4
  br label %bb.n

bb.j:                                             ; preds = %bb.g
  %i.aj = icmp slt i32 %i.aa, -999999999
  br i1 %i.aj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = icmp slt i32 %i.aa, 0
  %i.al = icmp sgt i64 %i.w, 0
  %or.cond40 = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond40, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.am = add nsw i32 %i.aa, 1000000000
  store i32 %i.am, ptr %i.m, align 8
  %i.an = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.w, i64 -1) ; 2 uses
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  %i.ap = extractvalue { i64, i1 } %i.an, 0
  store i64 %i.ap, ptr %0, align 8
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i64 -9223372036854775808, ptr %0, align 8
  store i32 -999999999, ptr %i.m, align 8
  %i.aq = tail call ptr @__errno_location() #14
  store i32 34, ptr %i.aq, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.h, %bb.m, %bb.i, %bb.e, %nstime_is_unset.exit.thread
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define range(i32 -1, 2) i32 @nstime_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %nstime_is_unset.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 2147483647
  br i1 %i.e, label %bb.c, label %nstime_is_unset.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %1, align 8
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %nstime_is_unset.exit25

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp ne i32 %i.i, 2147483647
  %spec.select = sext i1 %i.j to i32
  br label %nstime_is_unset.exit25

nstime_is_unset.exit:                             ; preds = %bb.b, %bb.a
  %i.k = load i64, ptr %1, align 8                ; 3 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.e, label %nstime_is_unset.exit27

bb.e:                                             ; preds = %nstime_is_unset.exit
  %i.m = getelementptr i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 8
  %i.o = icmp eq i32 %i.n, 2147483647
  br i1 %i.o, label %nstime_is_unset.exit25, label %nstime_is_unset.exit27

nstime_is_unset.exit27:                           ; preds = %bb.e, %nstime_is_unset.exit
  %i.p = icmp eq i64 %i.a, %i.k
  br i1 %i.p, label %bb.f, label %bb.h

bb.f:                                             ; preds = %nstime_is_unset.exit27
  %i.q = getelementptr i8, ptr %0, i64 8
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 8
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp eq i32 %i.r, %i.t
  br i1 %i.u, label %nstime_is_unset.exit25, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = icmp sgt i32 %i.r, %i.t
  %i.w = select i1 %i.v, i32 1, i32 -1
  br label %nstime_is_unset.exit25

bb.h:                                             ; preds = %nstime_is_unset.exit27
  %i.x = icmp sgt i64 %i.a, %i.k
  %i.y = select i1 %i.x, i32 1, i32 -1
  br label %nstime_is_unset.exit25

nstime_is_unset.exit25:                           ; preds = %bb.d, %bb.e, %bb.c, %bb.f, %bb.h, %bb.g
  %.0 = phi i32 [ %i.y, %bb.h ], [ 0, %bb.f ], [ %i.w, %bb.g ], [ %spec.select, %bb.d ], [ 1, %bb.e ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @nstime_hash(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = load i64, ptr %0, align 8
  store i64 %i.b, ptr %i.a, align 8
  %i.c = call i32 @g_int64_hash(ptr noundef nonnull %i.a)
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = call i32 @g_int_hash(ptr noundef %i.d)
  %i.f = xor i32 %i.e, %i.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %i.f
}

; Function Attrs: null_pointer_is_valid
declare i32 @g_int64_hash(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare i32 @g_int_hash(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @nstime_rounded(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct.nstime_t, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %2, 3                       ; 3 uses
  %4 = icmp ult i32 %2, 4
  br i1 %4, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %2, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.01011.epil.init = phi i32 [ 1000000000, %.lr.ph.preheader ], [ %i.h, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod14 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.01011.epil = phi i32 [ %5, %.lr.ph.epil ], [ %.01011.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %5 = udiv i32 %.01011.epil, 10                  ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !6

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.010.lcssa = phi i32 [ 1000000000, %bb.a ], [ %i.h, %._crit_edge.loopexit.unr-lcssa ], [ %5, %.lr.ph.epil ] ; 2 uses
  %i.a = udiv i32 %.010.lcssa, 10
  %i.b = mul nuw nsw i32 %i.a, 5
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.b, ptr %i.c, align 8
  call void @nstime_sum(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  %i.d = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %.fr = freeze i32 %i.e                          ; 2 uses
  %i.f = urem i32 %.fr, %.010.lcssa
  %i.g = sub nuw i32 %.fr, %i.f
  store i32 %i.g, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01011 = phi i32 [ 1000000000, %.lr.ph.preheader.new ], [ %i.h, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.h = udiv i32 %.01011, 10000                  ; 3 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @filetime_to_nstime(ptr nofree noundef writeonly captures(none) initializes((0, 12)) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = udiv i64 %1, 10000000
  %i.b = urem i64 %1, 10000000
  %i.c = trunc nuw nsw i64 %i.b to i32
  %i.d = mul nuw nsw i32 %i.c, 100
  %i.e = add nsw i64 %i.a, -11644473600
  store i64 %i.e, ptr %0, align 8
  %i.f = getelementptr i8, ptr %0, i64 8
  store i32 %i.d, ptr %i.f, align 8
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @filetime_ns_to_nstime(ptr nofree noundef writeonly captures(none) initializes((0, 12)) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = udiv i64 %1, 1000000000
  %i.b = urem i64 %1, 1000000000
  %i.c = trunc nuw nsw i64 %i.b to i32
  %i.d = add nsw i64 %i.a, -11644473600
  store i64 %i.d, ptr %0, align 8
  %i.e = getelementptr i8, ptr %0, i64 8
  store i32 %i.c, ptr %i.e, align 8
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @filetime_1sec_to_nstime(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %1, -1                      ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i64 %1, -11644473600
  store i64 %i.b, ptr %0, align 8
  %i.c = getelementptr i8, ptr %0, i64 8
  store i32 0, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @iso8601_to_nstime(ptr nofree noundef writeonly captures(none) initializes((0, 12)) %0, ptr nofree noundef readonly captures(ret: address, provenance) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 14 uses
  %i.a = alloca i32, align 4                      ; 16 uses
  %i.b = alloca i32, align 4                      ; 15 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i32 0, ptr %i.d, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 noundef 0, i64 noundef 56, i1 noundef false) #15
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 -1, ptr %i.e, align 8
  store i64 0, ptr %0, align 8
  %i.f = getelementptr i8, ptr %0, i64 8          ; 3 uses
  store i32 2147483647, ptr %i.f, align 8
  %i.g = load ptr, ptr @g_ascii_table, align 8    ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.i = load i8, ptr %1, align 1                 ; 2 uses
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr [2 x i8], ptr %i.g, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2
  %i.m = and i16 %i.l, 8
  %.not71 = icmp eq i16 %i.m, 0
  br i1 %.not71, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %1, i64 1
  %i.o = load i8, ptr %i.n, align 1               ; 2 uses
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr [2 x i8], ptr %i.g, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2
  %i.s = and i16 %i.r, 8
  %.not71.1 = icmp eq i16 %i.s, 0
  br i1 %.not71.1, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %1, i64 2
  %i.u = load i8, ptr %i.t, align 1               ; 2 uses
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr [2 x i8], ptr %i.g, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2
  %i.y = and i16 %i.x, 8
  %.not71.2 = icmp eq i16 %i.y, 0
  br i1 %.not71.2, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr i8, ptr %1, i64 3
  %i.aa = load i8, ptr %i.z, align 1              ; 2 uses
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr [2 x i8], ptr %i.g, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = and i16 %i.ad, 8
  %.not71.3 = icmp eq i16 %i.ae, 0
  br i1 %.not71.3, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = sext i8 %i.i to i32
  %i.ag = mul nsw i32 %i.af, 10
  %i.ah = sext i8 %i.o to i32
  %i.ai = add nsw i32 %i.ag, %i.ah
  %i.aj = mul nsw i32 %i.ai, 10
  %i.ak = sext i8 %i.u to i32
  %i.al = add nsw i32 %i.aj, %i.ak
  %i.am = mul nsw i32 %i.al, 10
  %i.an = getelementptr i8, ptr %1, i64 4         ; 2 uses
  %i.ao = sext i8 %i.aa to i32
  %i.ap = add nsw i32 %i.am, %i.ao
  %i.aq = load i8, ptr %i.an, align 1             ; 2 uses
  %i.ar = icmp eq i8 %i.aq, 45                    ; 4 uses
  br i1 %i.ar, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %cond = icmp eq i32 %2, 1
  br i1 %cond, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr i8, ptr %1, i64 5
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.at = zext i8 %i.aq to i64
  %i.au = getelementptr [2 x i8], ptr %i.g, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2
  %i.aw = and i16 %i.av, 8
  %.not = icmp eq i16 %i.aw, 0
  %cond2 = icmp eq i32 %2, 0
  %or.cond72 = or i1 %cond2, %.not
  br i1 %or.cond72, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ax = phi ptr [ @.str.4, %bb.g ], [ @.str.5, %bb.h ]
  %.1 = phi ptr [ %i.as, %bb.g ], [ %i.an, %bb.h ] ; 2 uses
  %i.ay = add i32 %i.ap, -55228
  store i32 %i.ay, ptr %i.h, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bb = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %.1, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.az, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.a) #15
  %i.bc = icmp sgt i32 %i.bb, 1
  br i1 %i.bc, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.bd = load i32, ptr %i.az, align 8
  %i.be = add i32 %i.bd, -1
  store i32 %i.be, ptr %i.az, align 8
  %i.bf = load i32, ptr %i.a, align 4
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr i8, ptr %.1, i64 %i.bg    ; 3 uses
  %i.bi = load i8, ptr %i.bh, align 1
  switch i8 %i.bi, label %bb.l [
    i8 84, label %bb.k
    i8 32, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.bj = getelementptr i8, ptr %i.bh, i64 1
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  br i1 %i.ar, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2 = phi ptr [ %i.bj, %bb.k ], [ %i.bh, %bb.l ] ; 2 uses
  %i.bk = select i1 %i.ar, ptr @.str.6, ptr @.str.5
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bn = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %.2, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.a) #15
  %i.bo = icmp sgt i32 %i.bn, 1
  br i1 %i.bo, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.bp = load i32, ptr %i.a, align 4
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr i8, ptr %.2, i64 %i.bq    ; 4 uses
  %i.bs = load i8, ptr %i.br, align 1             ; 2 uses
  br i1 %i.ar, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.bt = icmp eq i8 %i.bs, 58
  br i1 %i.bt, label %bb.p, label %bb.ae

.critedge:                                        ; preds = %bb.n
  %i.bu = zext i8 %i.bs to i64
  %i.bv = getelementptr [2 x i8], ptr %i.g, i64 %i.bu
end_hunk_0
begin_hunk_1_@mktime
; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @unix_epoch_to_nstime(ptr nofree noundef writeonly captures(none) initializes((0, 12)) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i32 0, ptr %i.d, align 4
  store i64 0, ptr %0, align 8
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  store i32 2147483647, ptr %i.e, align 8
  %i.f = call zeroext i1 @ws_strtoi64(ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  br i1 %i.f, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8              ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.g, ptr %0, align 8
  %i.i = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.j = load i8, ptr %i.i, align 1
  switch i8 %i.j, label %bb.p [
    i8 46, label %bb.d
    i8 44, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.k = getelementptr i8, ptr %i.i, i64 1        ; 2 uses
  store ptr %i.k, ptr %i.b, align 8
  %i.l = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.k, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #15
  %i.m = icmp sgt i32 %i.l, 0
  %.pre10 = load i32, ptr %i.d, align 4           ; 11 uses
  br i1 %i.m, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre11 = load ptr, ptr %i.b, align 8
  br label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.n = add i32 %.pre10, -1000000000
  %or.cond = icmp ult i32 %i.n, -999999999
  %.pre = load i32, ptr %i.c, align 4             ; 3 uses
  br i1 %or.cond, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  switch i32 %.pre, label %bb.o [
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.l
    i32 7, label %bb.m
    i32 8, label %bb.n
  ]

bb.g:                                             ; preds = %bb.f
  %i.o = mul i32 %.pre10, 100000000
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.p = mul i32 %.pre10, 10000000
  br label %bb.o

bb.i:                                             ; preds = %bb.f
  %i.q = mul i32 %.pre10, 1000000
  br label %bb.o

bb.j:                                             ; preds = %bb.f
  %i.r = mul i32 %.pre10, 100000
  br label %bb.o

bb.k:                                             ; preds = %bb.f
  %i.s = mul i32 %.pre10, 10000
  br label %bb.o

bb.l:                                             ; preds = %bb.f
  %i.t = mul i32 %.pre10, 1000
  br label %bb.o

bb.m:                                             ; preds = %bb.f
  %i.u = mul i32 %.pre10, 100
  br label %bb.o

bb.n:                                             ; preds = %bb.f
  %i.v = mul i32 %.pre10, 10
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.f
  %i.w = phi i32 [ %i.o, %bb.g ], [ %i.p, %bb.h ], [ %i.q, %bb.i ], [ %i.r, %bb.j ], [ %i.s, %bb.k ], [ %i.t, %bb.l ], [ %i.u, %bb.m ], [ %i.v, %bb.n ], [ %.pre10, %bb.f ], [ 0, %bb.e ]
  %i.x = phi i32 [ 1, %bb.g ], [ 2, %bb.h ], [ 3, %bb.i ], [ 4, %bb.j ], [ 5, %bb.k ], [ 6, %bb.l ], [ 7, %bb.m ], [ 8, %bb.n ], [ %.pre, %bb.f ], [ %.pre, %bb.e ]
  %i.y = load ptr, ptr %i.b, align 8
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr i8, ptr %i.y, i64 %i.z
  br label %bb.p

bb.p:                                             ; preds = %bb.c, %._crit_edge, %bb.o
  %i.ab = phi ptr [ %.pre11, %._crit_edge ], [ %i.aa, %bb.o ], [ %i.i, %bb.c ]
  %i.ac = phi i32 [ %.pre10, %._crit_edge ], [ %i.w, %bb.o ], [ 0, %bb.c ]
  store i32 %i.ac, ptr %i.e, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.b, %bb.a, %bb.p
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.ab, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %.0
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_strtoi64(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i64 @nstime_to_iso8601(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.a = call ptr @gmtime_r(ptr noundef %2, ptr noundef nonnull %3) #15 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call i64 @strftime(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #15 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 %i.c
  %i.f = sub i64 %1, %i.c
  %i.g = getelementptr i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %i.e, i64 noundef %i.f, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.14, i32 noundef %i.h)
  %i.j = sext i32 %i.i to i64
  %i.k = add i64 %i.c, %i.j
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ %i.k, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i64 %.0
}

; Function Attrs: nounwind null_pointer_is_valid
declare ptr @gmtime_r(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @nstime_to_unix(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  tail call void @display_signed_time(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef 9)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @display_signed_time(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
end_hunk_1
