Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/hashmap?download=true
inline.NumInlined: 25
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@hashmap_add:bb.a
bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %.02022.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %i.ai, %bb.f ] ; 4 uses
  %i.ai = load ptr, ptr %.02022.i, align 8, !tbaa !34 ; 2 uses
  %i.aj = getelementptr i8, ptr %.02022.i, i64 8
  %.020.val.i = load i32, ptr %i.aj, align 8, !tbaa !38
  %i.ak = and i32 %.020.val.i, %i.ah
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.al ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !32
  store ptr %i.an, ptr %.02022.i, align 8, !tbaa !34
  store ptr %.02022.i, ptr %i.am, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.f, !llvm.loop !43

._crit_edge.i:                                    ; preds = %bb.f, %.lr.ph25.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %rehash.exit, label %.lr.ph25.i, !llvm.loop !44

rehash.exit:                                      ; preds = %._crit_edge.i, %bb.e
  tail call void @free(ptr noundef nonnull %i.f) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %rehash.exit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @hashmap_remove(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 28         ; 4 uses
  %.val.i = load i32, ptr %i.b, align 4, !tbaa !21
  %i.c = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val12.i = load i32, ptr %i.c, align 8, !tbaa !38
  %i.d = add i32 %.val.i, -1
  %i.e = and i32 %.val12.i, %i.d
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !32   ; 4 uses
  %.not16.i = icmp eq ptr %i.i, null
  %i.j = icmp eq ptr %i.i, %1
  %or.cond17.i = or i1 %.not16.i, %i.j
  br i1 %or.cond17.i, label %find_entry_ptr.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %entry_equals.exit.thread.i, %.lr.ph.i
  %i.l = phi ptr [ %i.i, %.lr.ph.i ], [ %i.u, %entry_equals.exit.thread.i ] ; 3 uses
  %.018.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.t, %entry_equals.exit.thread.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !38
  %i.o = load i32, ptr %i.c, align 8, !tbaa !38
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %entry_equals.exit.i, label %entry_equals.exit.thread.i

entry_equals.exit.i:                              ; preds = %bb.c
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.s = tail call i32 %i.q(ptr noundef %i.r, ptr noundef nonnull %i.l, ptr noundef nonnull %1, ptr noundef %2) #15, !inline_history !39
  %.not.i.not.i = icmp eq i32 %i.s, 0
  %.pr = load ptr, ptr %.018.i, align 8, !tbaa !32 ; 2 uses
  br i1 %.not.i.not.i, label %find_entry_ptr.exit, label %entry_equals.exit.thread.i

entry_equals.exit.thread.i:                       ; preds = %entry_equals.exit.i, %bb.c
  %i.t = phi ptr [ %i.l, %bb.c ], [ %.pr, %entry_equals.exit.i ] ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !32   ; 4 uses
  %.not.i = icmp eq ptr %i.u, null
  %i.v = icmp eq ptr %i.u, %1
  %or.cond.i = or i1 %.not.i, %i.v
  br i1 %or.cond.i, label %find_entry_ptr.exit, label %bb.c, !llvm.loop !40

find_entry_ptr.exit:                              ; preds = %entry_equals.exit.thread.i, %entry_equals.exit.i, %bb.b
  %i.w = phi ptr [ %i.i, %bb.b ], [ %i.u, %entry_equals.exit.thread.i ], [ %.pr, %entry_equals.exit.i ] ; 6 uses
  %.0.lcssa.i = phi ptr [ %i.g, %bb.b ], [ %i.t, %entry_equals.exit.thread.i ], [ %.018.i, %entry_equals.exit.i ]
  %.not18 = icmp eq ptr %i.w, null
  br i1 %.not18, label %bb.h, label %bb.d

bb.d:                                             ; preds = %find_entry_ptr.exit
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !34
  store ptr %i.x, ptr %.0.lcssa.i, align 8, !tbaa !32
  store ptr null, ptr %i.w, align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i8, ptr %i.y, align 8
  %i.aa = and i8 %i.z, 1
  %.not19 = icmp eq i8 %i.aa, 0
  br i1 %.not19, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !37
  %i.ad = add i32 %i.ac, -1                       ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !37
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !31
  %i.ag = icmp ult i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ah = load i32, ptr %i.b, align 4, !tbaa !21  ; 5 uses
  %i.ai = lshr i32 %i.ah, 2                       ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  store i32 %i.ai, ptr %i.b, align 4, !tbaa !21
  %i.ak = zext nneg i32 %i.ai to i64
  %i.al = tail call ptr @xcalloc(i64 noundef %i.ak, i64 noundef 8) #15 ; 2 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !29
  %.lhs.trunc = and i32 %i.ah, -4                 ; 2 uses
  %i.am = udiv i32 %.lhs.trunc, 5
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.am, ptr %i.an, align 8, !tbaa !30
  %i.ao = icmp ult i32 %i.ah, 260
  %i.ap = udiv i32 %.lhs.trunc, 25
  %.sink.i.i = select i1 %i.ao, i32 0, i32 %i.ap
  store i32 %.sink.i.i, ptr %i.ae, align 4, !tbaa !31
  %.not27.i = icmp eq i32 %i.ah, 0
  br i1 %.not27.i, label %rehash.exit, label %.lr.ph25.preheader.i

.lr.ph25.preheader.i:                             ; preds = %bb.f
  %wide.trip.count.i = zext i32 %i.ah to i64
  br label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %._crit_edge.i, %.lr.ph25.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph25.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !32 ; 2 uses
  %.not21.i = icmp eq ptr %i.ar, null
  br i1 %.not21.i, label %._crit_edge.i, label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.lr.ph25.i
  %.val.i21 = load i32, ptr %i.b, align 4, !tbaa !21
  %i.as = add i32 %.val.i21, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i20
  %.02022.i = phi ptr [ %i.ar, %.lr.ph.i20 ], [ %i.at, %bb.g ] ; 4 uses
  %i.at = load ptr, ptr %.02022.i, align 8, !tbaa !34 ; 2 uses
  %i.au = getelementptr i8, ptr %.02022.i, i64 8
  %.020.val.i = load i32, ptr %i.au, align 8, !tbaa !38
  %i.av = and i32 %.020.val.i, %i.as
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aw ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !32
  store ptr %i.ay, ptr %.02022.i, align 8, !tbaa !34
  store ptr %.02022.i, ptr %i.ax, align 8, !tbaa !32
  %.not.i22 = icmp eq ptr %i.at, null
  br i1 %.not.i22, label %._crit_edge.i, label %bb.g, !llvm.loop !43

._crit_edge.i:                                    ; preds = %bb.g, %.lr.ph25.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %rehash.exit, label %.lr.ph25.i, !llvm.loop !44

rehash.exit:                                      ; preds = %._crit_edge.i, %bb.f
  tail call void @free(ptr noundef %i.aj) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %rehash.exit, %bb.e, %find_entry_ptr.exit, %bb.a
  %.0 = phi ptr [ null, %find_entry_ptr.exit ], [ null, %bb.a ], [ %i.w, %bb.e ], [ %i.w, %rehash.exit ], [ %i.w, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @hashmap_put(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @hashmap_remove(ptr noundef %0, ptr noundef %1, ptr noundef null)
  tail call void @hashmap_add(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @hashmap_iter_init(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 20)) %1) local_unnamed_addr #8 {
bb.a:
  store ptr %0, ptr %1, align 8, !tbaa !45
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.a, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !49
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @hashmap_iter_next(ptr nofree noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.015 = load ptr, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %.not16 = icmp eq ptr %.015, null
  br i1 %.not16, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !21   ; 2 uses
  %.promoted = load i32, ptr %i.b, align 8, !tbaa !48 ; 2 uses
  %exitcond.not23.not = icmp ult i32 %.promoted, %i.e
  br i1 %exitcond.not23.not, label %.lr.ph25, label %.loopexit

.lr.ph25:                                         ; preds = %.lr.ph
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !29
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.c
  store i32 %2, ptr %i.b, align 8, !tbaa !48
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi ptr [ %.015, %bb.a ], [ %.0, %._crit_edge.loopexit ] ; 2 uses
  %i.g = load ptr, ptr %.0.lcssa, align 8, !tbaa !34
  store ptr %i.g, ptr %i.a, align 8, !tbaa !49
  br label %.loopexit

bb.b:                                             ; preds = %bb.c
  %.not12 = icmp ult i32 %2, %i.e
  br i1 %.not12, label %bb.c, label %.loopexit.loopexit

bb.c:                                             ; preds = %.lr.ph25, %bb.b
  %1 = phi i32 [ %2, %bb.b ], [ %.promoted, %.lr.ph25 ] ; 2 uses
  %2 = add nuw i32 %1, 1                          ; 4 uses
  %3 = zext i32 %1 to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %3
  %.0 = load ptr, ptr %i.h, align 8, !tbaa !32    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %bb.b, label %._crit_edge.loopexit

.loopexit.loopexit:                               ; preds = %bb.b
  store i32 %2, ptr %i.b, align 8, !tbaa !48
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.lr.ph, %._crit_edge
  %.014 = phi ptr [ %.0.lcssa, %._crit_edge ], [ null, %.lr.ph ], [ null, %.loopexit.loopexit ]
  ret ptr %.014
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @memintern(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.pool_entry, align 8         ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @memintern.map, i64 28), align 4, !tbaa !21
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @memintern.map, i8 0, i64 48, i1 false)
  store ptr @pool_entry_cmp, ptr getelementptr inbounds nuw (i8, ptr @memintern.map, i64 8), align 8, !tbaa !26
  store i32 64, ptr getelementptr inbounds nuw (i8, ptr @memintern.map, i64 28), align 4, !tbaa !21
  %i.b = tail call ptr @xcalloc(i64 noundef 64, i64 noundef 8) #15
  store ptr %i.b, ptr @memintern.map, align 8, !tbaa !29
  store i32 51, ptr getelementptr inbounds nuw (i8, ptr @memintern.map, i64 32), align 8, !tbaa !30
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @memintern.map, i64 36), align 4, !tbaa !31
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @memintern.map, i64 40), align 8
  %i.d = or i8 %i.c, 1
  store i8 %i.d, ptr getelementptr inbounds nuw (i8, ptr @memintern.map, i64 40), align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not7.i = icmp eq i64 %1, 0
  br i1 %.not7.i, label %memhash.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.e = icmp ult i64 %1, 4
  br i1 %i.e, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %1, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.059.i = phi ptr [ %0, %.lr.ph.i.preheader.new ], [ %i.u, %.lr.ph.i ] ; 5 uses
  %.068.i = phi i32 [ -2128831035, %.lr.ph.i.preheader.new ], [ %i.y, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.f = getelementptr inbounds nuw i8, ptr %.059.i, i64 1
  %i.g = load i8, ptr %.059.i, align 1, !tbaa !12
  %i.h = zext i8 %i.g to i32
  %i.i = mul i32 %.068.i, 16777619
  %i.j = xor i32 %i.i, %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %.059.i, i64 2
  %i.l = load i8, ptr %i.f, align 1, !tbaa !12
  %i.m = zext i8 %i.l to i32
  %i.n = mul i32 %i.j, 16777619
  %i.o = xor i32 %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %.059.i, i64 3
  %i.q = load i8, ptr %i.k, align 1, !tbaa !12
  %i.r = zext i8 %i.q to i32
  %i.s = mul i32 %i.o, 16777619
  %i.t = xor i32 %i.s, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %.059.i, i64 4 ; 2 uses
  %i.v = load i8, ptr %i.p, align 1, !tbaa !12
  %i.w = zext i8 %i.v to i32
  %i.x = mul i32 %i.t, 16777619
  %i.y = xor i32 %i.x, %i.w                       ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %memhash.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !16

memhash.exit.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %memhash.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %memhash.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.059.i.epil.init = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.u, %memhash.exit.loopexit.unr-lcssa ]
  %.068.i.epil.init = phi i32 [ -2128831035, %.lr.ph.i.preheader ], [ %i.y, %memhash.exit.loopexit.unr-lcssa ]
  %lcmp.mod34 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.059.i.epil = phi ptr [ %i.z, %.lr.ph.i.epil ], [ %.059.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.068.i.epil = phi i32 [ %i.ad, %.lr.ph.i.epil ], [ %.068.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %.059.i.epil, i64 1
  %i.aa = load i8, ptr %.059.i.epil, align 1, !tbaa !12
  %i.ab = zext i8 %i.aa to i32
  %i.ac = mul i32 %.068.i.epil, 16777619
  %i.ad = xor i32 %i.ac, %i.ab                    ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %memhash.exit, label %.lr.ph.i.epil, !llvm.loop !50

memhash.exit:                                     ; preds = %memhash.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.c
  %.06.lcssa.i = phi i32 [ -2128831035, %bb.c ], [ %i.y, %memhash.exit.loopexit.unr-lcssa ], [ %i.ad, %.lr.ph.i.epil ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 %.06.lcssa.i, ptr %i.ae, align 8, !tbaa !38
  store ptr null, ptr %2, align 8, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %1, ptr %i.af, align 8, !tbaa !51
  %i.ag = load ptr, ptr @memintern.map, align 8, !tbaa !29 ; 2 uses
  %.not.i16 = icmp eq ptr %i.ag, null
  br i1 %.not.i16, label %hashmap_get.exit.thread, label %bb.d

bb.d:                                             ; preds = %memhash.exit
  %.val.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @memintern.map, i64 28), align 4, !tbaa !21
  %i.ah = add i32 %.val.i.i, -1
  %i.ai = and i32 %i.ah, %.06.lcssa.i
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.aj ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !32 ; 4 uses
  %.not16.i.i = icmp eq ptr %i.al, null
  %i.am = icmp eq ptr %i.al, %2
  %or.cond17.i.i = or i1 %.not16.i.i, %i.am
  br i1 %or.cond17.i.i, label %hashmap_get.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %entry_equals.exit.thread.i.i
  %i.an = phi ptr [ %i.aw, %entry_equals.exit.thread.i.i ], [ %i.al, %bb.d ] ; 3 uses
  %.018.i.i = phi ptr [ %i.av, %entry_equals.exit.thread.i.i ], [ %i.ak, %bb.d ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !38
  %i.aq = load i32, ptr %i.ae, align 8, !tbaa !38
  %i.ar = icmp eq i32 %i.ap, %i.aq
  br i1 %i.ar, label %entry_equals.exit.i.i, label %entry_equals.exit.thread.i.i

entry_equals.exit.i.i:                            ; preds = %.lr.ph.i.i
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memintern.map, i64 8), align 8, !tbaa !26
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memintern.map, i64 16), align 8, !tbaa !27
  %i.au = call i32 %i.as(ptr noundef %i.at, ptr noundef nonnull %i.an, ptr noundef nonnull %2, ptr noundef %0) #15, !inline_history !53
  %.not.i.not.i.i = icmp eq i32 %i.au, 0
  %.pre.pre.i = load ptr, ptr %.018.i.i, align 8, !tbaa !32 ; 2 uses
  br i1 %.not.i.not.i.i, label %hashmap_get.exit, label %entry_equals.exit.thread.i.i

entry_equals.exit.thread.i.i:                     ; preds = %entry_equals.exit.i.i, %.lr.ph.i.i
  %i.av = phi ptr [ %i.an, %.lr.ph.i.i ], [ %.pre.pre.i, %entry_equals.exit.i.i ] ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !32 ; 4 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  %i.ax = icmp eq ptr %i.aw, %2
  %or.cond.i.i = or i1 %.not.i.i, %i.ax
  br i1 %or.cond.i.i, label %hashmap_get.exit, label %.lr.ph.i.i, !llvm.loop !40

hashmap_get.exit:                                 ; preds = %entry_equals.exit.thread.i.i, %entry_equals.exit.i.i, %bb.d
  %.0.i = phi ptr [ %i.al, %bb.d ], [ %i.aw, %entry_equals.exit.thread.i.i ], [ %.pre.pre.i, %entry_equals.exit.i.i ] ; 2 uses
  %.not15 = icmp eq ptr %.0.i, null
  br i1 %.not15, label %hashmap_get.exit.thread, label %bb.g

hashmap_get.exit.thread:                          ; preds = %memhash.exit, %hashmap_get.exit
  %i.ay = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 24) ; 2 uses
  %i.az = extractvalue { i64, i1 } %i.ay, 1
  br i1 %i.az, label %bb.e, label %st_add.exit

bb.e:                                             ; preds = %hashmap_get.exit.thread
  call void (ptr, ...) @die(ptr noundef nonnull @.str.1, i64 noundef 24, i64 noundef %1) #16
  unreachable

st_add.exit:                                      ; preds = %hashmap_get.exit.thread
  %i.ba = extractvalue { i64, i1 } %i.ay, 0       ; 2 uses
  %i.bb = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ba, i64 1) ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 1
  br i1 %i.bc, label %bb.f, label %st_add.exit17

bb.f:                                             ; preds = %st_add.exit
  call void (ptr, ...) @die(ptr noundef nonnull @.str.1, i64 noundef %i.ba, i64 noundef 1) #16
  unreachable

st_add.exit17:                                    ; preds = %st_add.exit
  %i.bd = extractvalue { i64, i1 } %i.bb, 0
  %i.be = call ptr @xcalloc(i64 noundef 1, i64 noundef %i.bd) #15 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bf, ptr align 1 %0, i64 %1, i1 false)
  %i.bg = load i32, ptr %i.ae, align 8, !tbaa !38
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !38
  store ptr null, ptr %i.be, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 %1, ptr %i.bi, align 8, !tbaa !51
  call void @hashmap_add(ptr noundef nonnull @memintern.map, ptr noundef nonnull %i.be)
  br label %bb.g

bb.g:                                             ; preds = %st_add.exit17, %hashmap_get.exit
  %.0 = phi ptr [ %.0.i, %hashmap_get.exit ], [ %i.be, %st_add.exit17 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret ptr %i.bj
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @pool_entry_cmp(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.a, %3
  br i1 %.not, label %bb.d, label %bb.b

end_hunk_0
