Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/regcache-maple?download=true
inline.NumInlined: 24
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@regcache_maple_sync:bb.a
.loopexit:                                        ; preds = %bb.f, %._crit_edge.thread, %bb.d, %bb.a
  %.4 = phi i32 [ %i.ac, %bb.d ], [ 0, %bb.a ], [ %i.ai, %bb.f ], [ 0, %._crit_edge.thread ]
  call void @__rcu_read_unlock() #11
  store i8 0, ptr %i.l, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i32 %.4
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @regcache_maple_drop(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.ma_state, align 8           ; 18 uses
  %i.a = getelementptr i8, ptr %0, i64 560
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store ptr %i.b, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.d = zext i32 %1 to i64                       ; 3 uses
  store i64 %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.f = zext i32 %2 to i64                       ; 6 uses
  store i64 %i.f, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.k, i8 0, i64 12, i1 false)
  tail call void @_raw_spin_lock(ptr noundef %i.b) #11
  %i.l = call ptr @mas_find(ptr noundef nonnull %3, i64 noundef %i.f) #11 ; 2 uses
  %.not70 = icmp eq ptr %i.l, null
  br i1 %.not70, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = add i32 %1, -1
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr i8, ptr %0, i64 56         ; 4 uses
  %i.p = add i32 %2, 1
  %i.q = zext i32 %i.p to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %i.r = phi ptr [ %i.l, %.lr.ph ], [ %i.an, %bb.j ] ; 3 uses
  %.03374 = phi i64 [ 0, %.lr.ph ], [ %.134, %bb.j ]
  %.03573 = phi i64 [ 0, %.lr.ph ], [ %.136, %bb.j ]
  %.03772 = phi i64 [ 0, %.lr.ph ], [ %.138, %bb.j ]
  %.03971 = phi i64 [ 0, %.lr.ph ], [ %.140, %bb.j ]
  %i.s = load ptr, ptr %3, align 8
  call void @_raw_spin_unlock(ptr noundef %i.s) #11
  %i.t = load i64, ptr %i.c, align 8              ; 3 uses
  %i.u = icmp ult i64 %i.t, %i.d
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = sub nuw nsw i64 %i.d, %i.t
  %i.w = load i32, ptr %i.o, align 8
  %i.x = call ptr @kmemdup_array(ptr noundef nonnull %i.r, i64 noundef %i.v, i64 noundef 8, i32 noundef %i.w) #14 ; 2 uses
  %.not64 = icmp eq ptr %i.x, null
  br i1 %.not64, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.147 = phi ptr [ %i.x, %bb.c ], [ null, %bb.b ] ; 4 uses
  %.140 = phi i64 [ %i.t, %bb.c ], [ %.03971, %bb.b ] ; 2 uses
  %.138 = phi i64 [ %i.n, %bb.c ], [ %.03772, %bb.b ] ; 2 uses
  %i.y = load i64, ptr %i.e, align 8              ; 3 uses
  %i.z = icmp ugt i64 %i.y, %i.f
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = load i64, ptr %i.c, align 8
  %i.ab = sub i64 %i.f, %i.aa
  %i.ac = getelementptr [8 x i8], ptr %i.r, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %i.ae = sub nuw i64 %i.y, %i.f
  %i.af = load i32, ptr %i.o, align 8
  %i.ag = call ptr @kmemdup_array(ptr noundef %i.ad, i64 noundef %i.ae, i64 noundef 8, i32 noundef %i.af) #14 ; 2 uses
  %.not65 = icmp eq ptr %i.ag, null
  br i1 %.not65, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.142 = phi ptr [ %i.ag, %bb.e ], [ null, %bb.d ] ; 4 uses
  %.136 = phi i64 [ %i.q, %bb.e ], [ %.03573, %bb.d ] ; 2 uses
  %.134 = phi i64 [ %i.y, %bb.e ], [ %.03374, %bb.d ] ; 2 uses
  call void @kfree(ptr noundef nonnull %i.r) #11
  %i.ah = load ptr, ptr %3, align 8
  call void @_raw_spin_lock(ptr noundef %i.ah) #11
  %i.ai = call ptr @mas_erase(ptr noundef nonnull %3) #11 ; 0 uses
  %.not66 = icmp eq ptr %.147, null
  br i1 %.not66, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.j, align 8
  store ptr null, ptr %i.g, align 8
  store i64 %.140, ptr %i.c, align 8
  store i64 %.138, ptr %i.e, align 8
  %i.aj = load i32, ptr %i.o, align 8
  %i.ak = call i32 @mas_store_gfp(ptr noundef nonnull %3, ptr noundef nonnull %.147, i32 noundef %i.aj) #11 ; 2 uses
  %.not67 = icmp eq i32 %i.ak, 0
  br i1 %.not67, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not68 = icmp eq ptr %.142, null
  br i1 %.not68, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.j, align 8
  store ptr null, ptr %i.g, align 8
  store i64 %.136, ptr %i.c, align 8
  store i64 %.134, ptr %i.e, align 8
  %i.al = load i32, ptr %i.o, align 8
  %i.am = call i32 @mas_store_gfp(ptr noundef nonnull %3, ptr noundef nonnull %.142, i32 noundef %i.al) #11 ; 2 uses
  %.not69 = icmp eq i32 %i.am, 0
  br i1 %.not69, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = call ptr @mas_find(ptr noundef nonnull %3, i64 noundef %i.f) #11 ; 2 uses
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.g, %bb.i, %bb.j, %bb.a
  %.349 = phi ptr [ null, %bb.a ], [ null, %bb.i ], [ null, %bb.j ], [ %.147, %bb.g ]
  %.344 = phi ptr [ null, %bb.a ], [ %.142, %bb.i ], [ null, %bb.j ], [ %.142, %bb.g ]
  %.3 = phi i32 [ 0, %bb.a ], [ %i.am, %bb.i ], [ 0, %bb.j ], [ %i.ak, %bb.g ]
  %i.ao = load ptr, ptr %3, align 8
  call void @_raw_spin_unlock(ptr noundef %i.ao) #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.c, %._crit_edge
  %.450 = phi ptr [ %.349, %._crit_edge ], [ %.147, %bb.e ], [ null, %bb.c ]
  %.445 = phi ptr [ %.344, %._crit_edge ], [ null, %bb.c ], [ null, %bb.e ]
  %.4 = phi i32 [ %.3, %._crit_edge ], [ -12, %bb.c ], [ -12, %bb.e ]
  call void @kfree(ptr noundef %.450) #11
  call void @kfree(ptr noundef %.445) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @mas_find(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__mt_destroy(ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @regcache_maple_insert_block(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.ma_state, align 8           ; 14 uses
  %i.a = getelementptr i8, ptr %0, i64 560
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.b, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = sext i32 %2 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %i.j, align 8
  store i64 -1, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 76
  %i.n = sub i32 %2, %1
  %i.o = add i32 %i.n, 1                          ; 5 uses
  %i.p = getelementptr i8, ptr %0, i64 56         ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.m, i8 0, i64 12, i1 false)
  %i.q = icmp slt i32 %i.o, 0
  br i1 %i.q, label %_kmalloc_array_noprof.exit.thread, label %_kmalloc_array_noprof.exit, !prof !11

_kmalloc_array_noprof.exit:                       ; preds = %bb.a
  %i.r = load i32, ptr %i.p, align 8
  %i.s = zext nneg i32 %i.o to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef %i.t, i32 noundef %i.r) #13 ; 8 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %_kmalloc_array_noprof.exit.thread, label %.preheader

.preheader:                                       ; preds = %_kmalloc_array_noprof.exit
  store i64 0, ptr %i.c, align 8, !annotation !24
  %.not38 = icmp eq i32 %i.o, 0
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.v = getelementptr i8, ptr %0, i64 544
  %i.w = load ptr, ptr %i.v, align 8              ; 5 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.x = icmp ult i32 %i.o, 4
  br i1 %i.x, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  %i.z = add i32 %1, %i.y
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr [8 x i8], ptr %i.w, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 4
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv
  store i64 %i.ae, ptr %i.af, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ah = add i32 %1, %i.ag
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr [8 x i8], ptr %i.w, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv.next
  store i64 %i.am, ptr %i.an, align 8
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ao = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.ap = add i32 %1, %i.ao
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr [8 x i8], ptr %i.w, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv.next.1
  store i64 %i.au, ptr %i.av, align 8
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.aw = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %i.ax = add i32 %1, %i.aw
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr [8 x i8], ptr %i.w, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv.next.2
  store i64 %i.bc, ptr %i.bd, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !22

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod42 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod42)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.be = trunc nuw nsw i64 %indvars.iv.epil to i32
  %i.bf = add i32 %1, %i.be
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr [8 x i8], ptr %i.w, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 4
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv.epil
  store i64 %i.bk, ptr %i.bl, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !23

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %.preheader
  tail call void @_raw_spin_lock(ptr noundef %i.b) #11
  %i.bm = getelementptr i8, ptr %0, i64 544
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %i.e
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr [8 x i8], ptr %i.bn, i64 %i.g
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = zext i32 %i.bs to i64
  store i32 1, ptr %i.l, align 8
  store ptr null, ptr %i.h, align 8
  store i64 %i.bq, ptr %i.d, align 8
  store i64 %i.bt, ptr %i.f, align 8
  %i.bu = load i32, ptr %i.p, align 8
  %i.bv = call i32 @mas_store_gfp(ptr noundef nonnull %3, ptr noundef nonnull %i.u, i32 noundef %i.bu) #11 ; 2 uses
  %i.bw = load ptr, ptr %3, align 8
  call void @_raw_spin_unlock(ptr noundef %i.bw) #11
  %.not34 = icmp eq i32 %i.bv, 0
  br i1 %.not34, label %_kmalloc_array_noprof.exit.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  call void @kfree(ptr noundef nonnull %i.u) #11
  br label %_kmalloc_array_noprof.exit.thread

_kmalloc_array_noprof.exit.thread:                ; preds = %bb.a, %._crit_edge, %bb.d, %_kmalloc_array_noprof.exit
  %.0 = phi i32 [ -12, %_kmalloc_array_noprof.exit ], [ %i.bv, %bb.d ], [ 0, %._crit_edge ], [ -12, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @mas_store_gfp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @mas_walk(ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_lock() local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @regcache_reg_needs_sync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @regcache_maple_sync_block(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 104
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  tail call void @mas_pause(ptr noundef %2) #11
  tail call void @__rcu_read_unlock() #11
  %i.c = sub i32 %4, %3                           ; 2 uses
  %i.d = icmp ugt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @regmap_can_raw_write(ptr noundef %0) #11
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = zext i32 %i.c to i64                     ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 %i.b) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %_kmalloc_array_noprof.exit.thread, label %_kmalloc_array_noprof.exit, !prof !11

_kmalloc_array_noprof.exit:                       ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 56
  %i.j = load i32, ptr %i.i, align 8
  %i.k = extractvalue { i64, i1 } %i.g, 0
  %i.l = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef %i.k, i32 noundef %i.j) #13 ; 4 uses
  %.not51 = icmp eq ptr %i.l, null
  br i1 %.not51, label %_kmalloc_array_noprof.exit.thread, label %bb.d

bb.d:                                             ; preds = %_kmalloc_array_noprof.exit
  %i.m = zext i32 %4 to i64
  %i.n = icmp ult i32 %3, %4
  br i1 %i.n, label %.lr.ph58, label %._crit_edge

.lr.ph58:                                         ; preds = %bb.d
  %i.o = zext i32 %3 to i64
  %i.p = getelementptr i8, ptr %2, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph58, %bb.e
  %.057 = phi i64 [ %i.o, %.lr.ph58 ], [ %i.x, %bb.e ] ; 3 uses
  %i.q = trunc nuw i64 %.057 to i32
  %i.r = sub nuw i32 %i.q, %3
  %i.s = load i64, ptr %i.p, align 8
  %i.t = sub i64 %.057, %i.s
  %i.u = getelementptr [8 x i8], ptr %1, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8
  %i.w = trunc i64 %i.v to i32
  tail call void @regcache_set_val(ptr noundef %0, ptr noundef nonnull %i.l, i32 noundef %i.r, i32 noundef %i.w) #11
  %i.x = add nuw nsw i64 %.057, 1                 ; 2 uses
  %exitcond59.not = icmp eq i64 %i.x, %i.m
  br i1 %exitcond59.not, label %._crit_edge, label %bb.e, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %i.y = mul i64 %i.b, %i.f
  %i.z = tail call i32 @_regmap_raw_write(ptr noundef %0, i32 noundef %3, ptr noundef nonnull %i.l, i64 noundef %i.y, i1 noundef zeroext false) #11
  tail call void @kfree(ptr noundef nonnull %i.l) #11
  br label %_kmalloc_array_noprof.exit.thread

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.aa = zext i32 %4 to i64
  %i.ab = icmp ult i32 %3, %4
  br i1 %i.ab, label %.lr.ph, label %_kmalloc_array_noprof.exit.thread

.lr.ph:                                           ; preds = %bb.f
  %i.ac = zext i32 %3 to i64
  %i.ad = getelementptr i8, ptr %2, i64 8
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %i.ae = add nuw nsw i64 %.154, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.aa
  br i1 %exitcond.not, label %_kmalloc_array_noprof.exit.thread, label %bb.h, !llvm.loop !27

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %.154 = phi i64 [ %i.ac, %.lr.ph ], [ %i.ae, %bb.g ] ; 3 uses
  %i.af = trunc nuw i64 %.154 to i32
  %i.ag = load i64, ptr %i.ad, align 8
end_hunk_0
