Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/bin?download=true
inline.NumInlined: 55
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@je_bin_update_shard_size:bb.a
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.au, align 4, !tbaa !13
  store <4 x i32> %broadcast.splat, ptr %i.av, align 4, !tbaa !13
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.aw = icmp eq i32 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.aq, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.021.ph = phi i32 [ %.0.i.i, %.lr.ph ], [ %i.ar, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.021 = phi i32 [ %i.az, %scalar.ph ], [ %.021.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ax = zext nneg i32 %.021 to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ax
  store i32 %i.ao, ptr %i.ay, align 4, !tbaa !13
  %i.az = add nuw nsw i32 %.021, 1
  %.not.not = icmp ult i32 %.021, %.0.i.i18
  br i1 %.not.not, label %scalar.ph, label %.loopexit, !llvm.loop !42

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %sz_size2index_compute.exit19, %bb.a
  ret i1 %or.cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @je_bin_shard_sizes_boot(ptr nofree noundef writeonly captures(none) initializes((0, 144)) %0) local_unnamed_addr #1 {
bb.a:
  store <4 x i32> splat (i32 1), ptr %0, align 4, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> splat (i32 1), ptr %i.a, align 4, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i32> splat (i32 1), ptr %i.b, align 4, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x i32> splat (i32 1), ptr %i.c, align 4, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x i32> splat (i32 1), ptr %i.d, align 4, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x i32> splat (i32 1), ptr %i.e, align 4, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x i32> splat (i32 1), ptr %i.f, align 4, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <4 x i32> splat (i32 1), ptr %i.g, align 4, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <4 x i32> splat (i32 1), ptr %i.h, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_bin_init(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call zeroext i1 @je_malloc_mutex_init(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 4096, i32 noundef 0) #14 ; 2 uses
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr null, ptr %i.b, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @je_edata_heap_new(ptr noundef nonnull %i.c) #14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr null, ptr %i.d, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, i8 0, i64 80, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.a
}

declare zeroext i1 @je_malloc_mutex_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @je_edata_heap_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define hidden void @je_bin_prefork(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  tail call void @je_malloc_mutex_prefork(ptr noundef %0, ptr noundef %1) #14
  ret void
}

declare void @je_malloc_mutex_prefork(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @je_bin_postfork_parent(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  tail call void @je_malloc_mutex_postfork_parent(ptr noundef %0, ptr noundef %1) #14
  ret void
}

declare void @je_malloc_mutex_postfork_parent(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @je_bin_postfork_child(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  tail call void @je_malloc_mutex_postfork_child(ptr noundef %0, ptr noundef %1) #14
  ret void
}

declare void @je_malloc_mutex_postfork_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden ptr @je_bin_slab_reg_alloc(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %.0101.i = load i64, ptr %i.a, align 8, !tbaa !27 ; 2 uses
  %i.b = icmp eq i64 %.0101.i, 0
  br i1 %i.b, label %.lr.ph.i, label %bitmap_sfu.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.02.i = phi i32 [ %i.c, %.lr.ph.i ], [ 0, %bb.a ]
  %i.c = add i32 %.02.i, 1                        ; 3 uses
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d
  %.010.i = load i64, ptr %i.e, align 8, !tbaa !27 ; 2 uses
  %i.f = icmp eq i64 %.010.i, 0
  br i1 %i.f, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.g = shl i32 %i.c, 6
  %i.h = zext i32 %i.g to i64
  br label %bitmap_sfu.exit

bitmap_sfu.exit:                                  ; preds = %bb.a, %._crit_edge.loopexit.i
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.h, %._crit_edge.loopexit.i ] ; 2 uses
  %.010.lcssa.i = phi i64 [ %.0101.i, %bb.a ], [ %.010.i, %._crit_edge.loopexit.i ]
  %i.i = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.010.lcssa.i, i1 true) ; 2 uses
  %i.j = add nuw nsw i64 %i.i, %.0.lcssa.i
  %i.k = lshr exact i64 %.0.lcssa.i, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.k ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27
  %i.n = shl nuw i64 1, %i.i
  %i.o = xor i64 %i.n, %i.m
  store i64 %i.o, ptr %i.l, align 8, !tbaa !27
  %i.p = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.p, align 8, !tbaa !30
  %i.q = load i64, ptr %1, align 8, !tbaa !33
  %i.r = mul i64 %i.q, %i.j
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %i.r
  %i.t = load i64, ptr %0, align 8, !tbaa !34
  %i.u = add i64 %i.t, -268435456
  store i64 %i.u, ptr %0, align 8, !tbaa !34
  ret ptr %i.s
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @je_bin_slab_reg_alloc_batch(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.not54 = icmp eq i32 %2, 0
  br i1 %.not54, label %._crit_edge53, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = load i64, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr i8, ptr %0, i64 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge47
  %.052 = phi i32 [ 0, %.preheader.lr.ph ], [ %.1.lcssa, %._crit_edge47 ] ; 2 uses
  %.02951 = phi i32 [ 0, %.preheader.lr.ph ], [ %.lcssa72, %._crit_edge47 ] ; 5 uses
  %.03750 = phi i64 [ %i.b, %.preheader.lr.ph ], [ %.lcssa73, %._crit_edge47 ] ; 2 uses
  %i.d = icmp eq i64 %.03750, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.139 = phi i32 [ %i.e, %.lr.ph ], [ %.052, %.preheader ]
  %i.e = add i32 %.139, 1                         ; 3 uses
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !27   ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !llvm.loop !45

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.138.lcssa = phi i64 [ %.03750, %.preheader ], [ %i.h, %.lr.ph ] ; 5 uses
  %.1.lcssa = phi i32 [ %.052, %.preheader ], [ %i.e, %.lr.ph ] ; 4 uses
  %i.j = shl i32 %.1.lcssa, 6
  %i.k = zext i32 %i.j to i64                     ; 3 uses
  %.val = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.l = ptrtoint ptr %.val to i64                ; 3 uses
  %i.m = load i64, ptr %1, align 8, !tbaa !33     ; 3 uses
  %.not41 = icmp eq i32 %2, %.02951
  br i1 %.not41, label %._crit_edge47.thread, label %.lr.ph46.preheader

._crit_edge47.thread:                             ; preds = %._crit_edge
  %i.n = zext i32 %.1.lcssa to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.n
  store i64 %.138.lcssa, ptr %i.o, align 8, !tbaa !27
  br label %._crit_edge53

.lr.ph46.preheader:                               ; preds = %._crit_edge
  %i.p = sub i32 %2, %.02951
  %i.q = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %.138.lcssa)
  %i.r = trunc nuw nsw i64 %i.q to i32
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.p, i32 %i.r) ; 2 uses
  %.027 = zext nneg i32 %spec.select to i64       ; 3 uses
  %xtraiter = and i64 %.027, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph46.prol.loopexit, label %.lr.ph46.prol

.lr.ph46.prol:                                    ; preds = %.lr.ph46.preheader
  %i.s = add nsw i64 %.027, -1
  %i.t = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.138.lcssa, i1 true) ; 2 uses
  %i.u = shl nuw i64 1, %i.t
  %i.v = xor i64 %i.u, %.138.lcssa                ; 2 uses
  %i.w = or disjoint i64 %i.t, %i.k
  %i.x = mul i64 %i.w, %i.m
  %i.y = add i64 %i.x, %i.l
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = zext i32 %.02951 to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.aa
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !48
  %i.ac = add i32 %.02951, 1                      ; 2 uses
  br label %.lr.ph46.prol.loopexit

.lr.ph46.prol.loopexit:                           ; preds = %.lr.ph46.prol, %.lr.ph46.preheader
  %.lcssa73.unr = phi i64 [ poison, %.lr.ph46.preheader ], [ %i.v, %.lr.ph46.prol ]
  %.lcssa72.unr = phi i32 [ poison, %.lr.ph46.preheader ], [ %i.ac, %.lr.ph46.prol ]
  %.12844.unr = phi i64 [ %.027, %.lr.ph46.preheader ], [ %i.s, %.lr.ph46.prol ]
  %.13043.unr = phi i32 [ %.02951, %.lr.ph46.preheader ], [ %i.ac, %.lr.ph46.prol ]
  %.242.unr = phi i64 [ %.138.lcssa, %.lr.ph46.preheader ], [ %i.v, %.lr.ph46.prol ]
  %i.ad = icmp eq i32 %spec.select, 1
  br i1 %i.ad, label %._crit_edge47, label %.lr.ph46

.lr.ph46:                                         ; preds = %.lr.ph46.prol.loopexit, %.lr.ph46
  %.12844 = phi i64 [ %i.ap, %.lr.ph46 ], [ %.12844.unr, %.lr.ph46.prol.loopexit ]
  %.13043 = phi i32 [ %i.ba, %.lr.ph46 ], [ %.13043.unr, %.lr.ph46.prol.loopexit ] ; 3 uses
  %.242 = phi i64 [ %i.at, %.lr.ph46 ], [ %.242.unr, %.lr.ph46.prol.loopexit ] ; 4 uses
  %i.ae = icmp ne i64 %.242, 0
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.242, i1 true) ; 2 uses
  %i.ag = shl nuw i64 1, %i.af                    ; 2 uses
  %i.ah = xor i64 %i.ag, %.242                    ; 2 uses
  %i.ai = or disjoint i64 %i.af, %i.k
  %i.aj = mul i64 %i.ai, %i.m
  %i.ak = add i64 %i.aj, %i.l
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = zext i32 %.13043 to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.am
  store ptr %i.al, ptr %i.an, align 8, !tbaa !48
  %i.ao = add i32 %.13043, 1
  %i.ap = add nsw i64 %.12844, -2                 ; 2 uses
  %i.aq = icmp ne i64 %i.ag, %.242
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ah, i1 true) ; 2 uses
  %i.as = shl nuw i64 1, %i.ar
  %i.at = xor i64 %i.as, %i.ah                    ; 2 uses
  %i.au = or disjoint i64 %i.ar, %i.k
  %i.av = mul i64 %i.au, %i.m
  %i.aw = add i64 %i.av, %i.l
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = zext i32 %i.ao to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ay
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !48
  %i.ba = add i32 %.13043, 2                      ; 2 uses
  %.not.1 = icmp eq i64 %i.ap, 0
  br i1 %.not.1, label %._crit_edge47, label %.lr.ph46, !llvm.loop !46

._crit_edge47:                                    ; preds = %.lr.ph46, %.lr.ph46.prol.loopexit
  %.lcssa73 = phi i64 [ %.lcssa73.unr, %.lr.ph46.prol.loopexit ], [ %i.at, %.lr.ph46 ] ; 2 uses
  %.lcssa72 = phi i32 [ %.lcssa72.unr, %.lr.ph46.prol.loopexit ], [ %i.ba, %.lr.ph46 ] ; 2 uses
  %i.bb = zext i32 %.1.lcssa to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bb
  store i64 %.lcssa73, ptr %i.bc, align 8, !tbaa !27
  %i.bd = icmp ult i32 %.lcssa72, %2
  br i1 %i.bd, label %.preheader, label %._crit_edge53, !llvm.loop !47

._crit_edge53:                                    ; preds = %._crit_edge47, %._crit_edge47.thread, %bb.a
  %i.be = zext i32 %2 to i64
  %i.bf = shl nuw nsw i64 %i.be, 28
  %i.bg = load i64, ptr %0, align 8, !tbaa !34
  %i.bh = sub i64 %i.bg, %i.bf
  store i64 %i.bh, ptr %0, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_bin_slabs_nonfull_insert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @je_edata_heap_insert(ptr noundef nonnull %i.a, ptr noundef %1) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !35
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8, !tbaa !35
  ret void
}

declare void @je_edata_heap_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @je_bin_slabs_nonfull_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @je_edata_heap_remove(ptr noundef nonnull %i.a, ptr noundef %1) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !35
  %i.d = add i64 %i.c, -1
  store i64 %i.d, ptr %i.b, align 8, !tbaa !35
  ret void
}

declare void @je_edata_heap_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @je_bin_slabs_nonfull_tryget(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = tail call ptr @je_edata_heap_remove_first(ptr noundef nonnull %i.a) #14 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !36
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.d, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !35
  %i.i = add i64 %i.h, -1
  store i64 %i.i, ptr %i.g, align 8, !tbaa !35
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.b
}

declare ptr @je_edata_heap_remove_first(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @je_bin_slabs_full_insert(i1 noundef zeroext %0, ptr nofree noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #7 {
bb.a:
  br i1 %0, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  store ptr %2, ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !37
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %edata_list_active_append.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37
  store ptr %i.g, ptr %i.b, align 8, !tbaa !37
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %2, ptr %i.i, align 8, !tbaa !37
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37
  store ptr %i.l, ptr %i.c, align 8, !tbaa !37
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr %i.m, ptr %i.p, align 8, !tbaa !37
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr %2, ptr %i.r, align 8, !tbaa !37
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !37
  br label %edata_list_active_append.exit

edata_list_active_append.exit:                    ; preds = %bb.b, %bb.c
  %i.s = phi ptr [ %.pre.i, %bb.c ], [ %2, %bb.b ]
  store ptr %i.s, ptr %i.a, align 8, !tbaa !26
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %edata_list_active_append.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @je_bin_slabs_full_remove(i1 noundef zeroext %0, ptr nofree noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #7 {
bb.a:
  br i1 %0, label %edata_list_active_remove.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = icmp eq ptr %i.b, %2
  br i1 %i.c, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !26
  %i.f = icmp eq ptr %i.e, %2
  br i1 %i.f, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
end_hunk_0
