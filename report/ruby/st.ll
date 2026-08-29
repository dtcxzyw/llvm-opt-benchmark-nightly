Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/st?download=true
inline.NumInlined: 263
inline.NumDeleted: 70
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@rb_st_add_direct:bb.a
  %.val = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.c = tail call i64 %.val.val(i64 noundef %1) #24, !inline_history !32 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  %i.e = select i1 %i.d, i64 0, i64 %i.c
  tail call fastcc void @st_add_direct_with_hash(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %i.e)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @rb_st_insert2(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.d = tail call i64 %.val.val(i64 noundef %1) #24, !inline_history !32 ; 2 uses
  %i.e = icmp eq i64 %i.d, -1
  %i.f = select i1 %i.e, i64 0, i64 %i.d          ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 48         ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 32
  %i.k = getelementptr i8, ptr %0, i64 4          ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  tail call fastcc void @rebuild_table_if_necessary(ptr noundef %0)
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.backedge
  %i.n = load i64, ptr %i.h, align 8, !tbaa !33   ; 2 uses
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.p = load i64, ptr %i.j, align 8, !tbaa !34   ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.n
  br i1 %i.q, label %.lr.ph.i, label %.split.thread

.lr.ph.i:                                         ; preds = %bb.b
  %.pre.i = load i32, ptr %i.k, align 4, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %.thread47, %.lr.ph.i
  %.033.i = phi i64 [ %i.p, %.lr.ph.i ], [ %i.ac, %.thread47 ] ; 4 uses
  %i.r = getelementptr [24 x i8], ptr %i.o, i64 %.033.i ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !35
  %i.t = icmp eq i64 %i.s, %i.f
  br i1 %i.t, label %bb.d, label %.thread47

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %i.r, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !37   ; 2 uses
  %i.w = icmp eq i64 %1, %i.v
  br i1 %i.w, label %find_entry.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !38
  %i.z = tail call i32 %i.y(i64 noundef %1, i64 noundef %i.v) #24, !inline_history !39
  %i.aa = icmp eq i32 %i.z, 0
  %.pre39.i = load i32, ptr %i.k, align 4, !tbaa !29
  %i.ab = icmp ne i32 %.pre.i, %.pre39.i          ; 2 uses
  %brmerge.i = select i1 %i.ab, i1 true, i1 %i.aa, !prof !40
  br i1 %brmerge.i, label %.loopexit.split.loop.exit31.i, label %.thread47, !prof !41

.thread47:                                        ; preds = %bb.c, %bb.e
  %i.ac = add i64 %.033.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ac, %i.n
  br i1 %exitcond.not.i, label %.split.thread, label %bb.c, !llvm.loop !42

.loopexit.split.loop.exit31.i:                    ; preds = %bb.e
  br i1 %i.ab, label %.backedge.backedge, label %find_entry.exit, !prof !50

.backedge.backedge:                               ; preds = %.loopexit.split.loop.exit31.i, %bb.f, %find_entry.exit
  br label %.backedge

find_entry.exit:                                  ; preds = %bb.d, %.loopexit.split.loop.exit31.i
  switch i64 %.033.i, label %.split [
    i64 -2, label %.backedge.backedge
    i64 -1, label %.split.thread
  ], !prof !53

.split.thread:                                    ; preds = %find_entry.exit, %bb.b, %.thread47
  %i.ad = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !28
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !28
  br label %bb.h

bb.f:                                             ; preds = %.backedge
  %i.ag = call fastcc i64 @find_table_bin_ptr_and_reserve(ptr noundef nonnull %0, i64 %i.f, i64 noundef %1, ptr noundef %i.a) ; 3 uses
  %i.ah = icmp eq i64 %i.ag, -2
  br i1 %i.ah, label %.backedge.backedge, label %bb.g, !prof !54

bb.g:                                             ; preds = %bb.f
  %i.ai = icmp eq i64 %i.ag, -1
  %i.aj = add i64 %i.ag, -2
  br i1 %i.ai, label %._crit_edge, label %.split

._crit_edge:                                      ; preds = %bb.g
  %.pre = load i64, ptr %i.a, align 8, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %.split.thread
  %i.ak = phi i64 [ %.pre, %._crit_edge ], [ -1, %.split.thread ] ; 5 uses
  %i.al = tail call i64 %3(i64 noundef %1) #24
  %i.am = load i64, ptr %i.h, align 8, !tbaa !33  ; 3 uses
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.h, align 8, !tbaa !33
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.ap = getelementptr [24 x i8], ptr %i.ao, i64 %i.am ; 3 uses
  store i64 %i.f, ptr %i.ap, align 8, !tbaa !35
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  store i64 %i.al, ptr %i.aq, align 8, !tbaa !37
  %i.ar = getelementptr i8, ptr %i.ap, i64 16
  store i64 %2, ptr %i.ar, align 8, !tbaa !52
  %.not = icmp eq i64 %i.ak, -1
  br i1 %.not, label %set_bin.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !26  ; 4 uses
  %i.at = getelementptr i8, ptr %0, i64 2
  %.val36 = load i8, ptr %i.at, align 2, !tbaa !24
  %i.au = add i64 %i.am, 2                        ; 4 uses
  switch i8 %.val36, label %bb.m [
    i8 0, label %bb.j
    i8 1, label %bb.k
    i8 2, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.av = trunc i64 %i.au to i8
  %i.aw = getelementptr i8, ptr %i.as, i64 %i.ak
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !46
  br label %set_bin.exit

bb.k:                                             ; preds = %bb.i
  %i.ax = trunc i64 %i.au to i16
  %i.ay = getelementptr [2 x i8], ptr %i.as, i64 %i.ak
  store i16 %i.ax, ptr %i.ay, align 2, !tbaa !47
  br label %set_bin.exit

bb.l:                                             ; preds = %bb.i
  %i.az = trunc i64 %i.au to i32
  %i.ba = getelementptr [4 x i8], ptr %i.as, i64 %i.ak
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !7
  br label %set_bin.exit

bb.m:                                             ; preds = %bb.i
  %i.bb = getelementptr [8 x i8], ptr %i.as, i64 %i.ak
  store i64 %i.au, ptr %i.bb, align 8, !tbaa !11
  br label %set_bin.exit

.split:                                           ; preds = %find_entry.exit, %bb.g
  %.03246 = phi i64 [ %i.aj, %bb.g ], [ %.033.i, %find_entry.exit ]
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.bd = getelementptr [24 x i8], ptr %i.bc, i64 %.03246
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  store i64 %2, ptr %i.be, align 8, !tbaa !52
  br label %set_bin.exit

set_bin.exit:                                     ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.h, %.split
  %.033 = phi i32 [ 1, %.split ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i32 %.033
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef ptr @rb_st_replace(ptr nofree noundef returned captures(ret: address, provenance) initializes((0, 56)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !56
  %i.a = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val16 = load i8, ptr %1, align 8, !tbaa !19
  %i.d = zext i8 %.val16 to i64
  %i.e = getelementptr [16 x i8], ptr @features, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !25
  %i.h = shl i64 %i.g, 3
  %i.i = tail call noalias nonnull ptr @ruby_xmalloc(i64 noundef %i.h) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ]
  %i.j = getelementptr i8, ptr %0, i64 24         ; 2 uses
  store ptr %.sink, ptr %i.j, align 8, !tbaa !26
  %.val18 = load i8, ptr %1, align 8, !tbaa !19
  %i.k = zext nneg i8 %.val18 to i64
  %i.l = shl i64 24, %i.k
  %i.m = tail call noalias nonnull ptr @ruby_xmalloc(i64 noundef %i.l) #23 ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 48
  store ptr %i.m, ptr %i.n, align 8, !tbaa !27
  %.val17 = load i8, ptr %1, align 8, !tbaa !19
  %i.o = zext i8 %.val17 to i64                   ; 2 uses
  %2 = shl nuw i64 1, %i.o                        ; 2 uses
  %3 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 range(i64 1, 25) 24) ; 2 uses
  %4 = extractvalue { i64, i1 } %3, 1
  br i1 %4, label %bb.d, label %rbimpl_size_mul_or_raise.exit, !prof !54

bb.d:                                             ; preds = %bb.c
  tail call void @ruby_malloc_size_overflow(i64 noundef 24, i64 noundef %2) #22
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.c
  %i.p = getelementptr i8, ptr %1, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27
  %5 = extractvalue { i64, i1 } %3, 0
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.m, ptr noundef nonnull readonly align 1 %i.q, i64 noundef range(i64 1, 0) %5, i1 noundef false) #24
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %ruby_nonempty_memcpy.exit21, label %bb.e

bb.e:                                             ; preds = %rbimpl_size_mul_or_raise.exit
  %i.s = getelementptr [16 x i8], ptr @features, i64 %i.o
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !25
  %i.v = shl i64 %i.u, 3                          ; 2 uses
  %.not.i19 = icmp eq i64 %i.v, 0
  br i1 %.not.i19, label %ruby_nonempty_memcpy.exit21, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.w, ptr noundef nonnull readonly align 1 %i.r, i64 noundef range(i64 1, 0) %i.v, i1 noundef false) #24
  br label %ruby_nonempty_memcpy.exit21

ruby_nonempty_memcpy.exit21:                      ; preds = %bb.f, %bb.e, %rbimpl_size_mul_or_raise.exit
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias noundef nonnull ptr @rb_st_copy(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias nonnull dereferenceable(56) ptr @ruby_xmalloc(i64 noundef 56) #23 ; 2 uses
  %i.b = tail call ptr @rb_st_replace(ptr noundef nonnull %i.a, ptr noundef %0) ; 0 uses
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @rb_st_delete(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @st_general_delete(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @st_general_delete(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !11
  %i.b = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %.val = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.d = tail call i64 %.val.val(i64 noundef %i.a) #24, !inline_history !32 ; 2 uses
  %i.e = icmp eq i64 %i.d, -1
  %i.f = select i1 %i.e, i64 0, i64 %i.d          ; 4 uses
  %i.g = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 48         ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 1          ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 2          ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 4          ; 4 uses
  %i.l = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 32         ; 3 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !26   ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  %i.p = load i64, ptr %1, align 8, !tbaa !11     ; 4 uses
  br i1 %i.o, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.backedge
  %i.q = load i64, ptr %i.l, align 8, !tbaa !33   ; 2 uses
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.s = load i64, ptr %i.m, align 8, !tbaa !34   ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.q
  br i1 %i.t, label %.lr.ph.i, label %find_entry.exit.thread

.lr.ph.i:                                         ; preds = %bb.b
  %.pre.i = load i32, ptr %i.k, align 4, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %.thread, %.lr.ph.i
  %.033.i = phi i64 [ %i.s, %.lr.ph.i ], [ %i.af, %.thread ] ; 4 uses
  %i.u = getelementptr [24 x i8], ptr %i.r, i64 %.033.i ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !35
  %i.w = icmp eq i64 %i.v, %i.f
  br i1 %i.w, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr i8, ptr %i.u, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !37   ; 2 uses
  %i.z = icmp eq i64 %i.p, %i.y
  br i1 %i.z, label %find_entry.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !38
  %i.ac = tail call i32 %i.ab(i64 noundef %i.p, i64 noundef %i.y) #24, !inline_history !39
  %i.ad = icmp eq i32 %i.ac, 0
  %.pre39.i = load i32, ptr %i.k, align 4, !tbaa !29
  %i.ae = icmp ne i32 %.pre.i, %.pre39.i          ; 2 uses
  %brmerge.i = select i1 %i.ae, i1 true, i1 %i.ad, !prof !40
  br i1 %brmerge.i, label %.loopexit.split.loop.exit31.i, label %.thread, !prof !41

.thread:                                          ; preds = %bb.c, %bb.e
  %i.af = add i64 %.033.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.af, %i.q
  br i1 %exitcond.not.i, label %find_entry.exit.thread, label %bb.c, !llvm.loop !42

.loopexit.split.loop.exit31.i:                    ; preds = %bb.e
  br i1 %i.ae, label %.backedge.backedge, label %find_entry.exit, !prof !44

.backedge.backedge:                               ; preds = %.loopexit.split.loop.exit31.i, %.loopexit.split.loop.exit40.i, %find_entry.exit
  br label %.backedge

find_entry.exit:                                  ; preds = %bb.d, %.loopexit.split.loop.exit31.i
  switch i64 %.033.i, label %set_bin.exit [
    i64 -2, label %.backedge.backedge
    i64 -1, label %find_entry.exit.thread
  ], !prof !45

find_entry.exit.thread:                           ; preds = %bb.b, %find_entry.exit, %.thread
  %.not39 = icmp eq ptr %2, null
  br i1 %.not39, label %update_range_for_deleted.exit, label %bb.f

bb.f:                                             ; preds = %find_entry.exit.thread
  store i64 0, ptr %2, align 8, !tbaa !11
  br label %update_range_for_deleted.exit

bb.g:                                             ; preds = %.backedge
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !27
  %.val.i = load i8, ptr %i.i, align 1, !tbaa !22 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %bb.g
  %.val32.i.sink = phi i8 [ %.val32.i, %._crit_edge.i ], [ %.val.i, %bb.g ] ; 2 uses
  %.sink = phi i64 [ %i.bo, %._crit_edge.i ], [ %i.f, %bb.g ]
  %.pre.pre93 = phi ptr [ %.pre.pre94, %._crit_edge.i ], [ %i.n, %bb.g ] ; 3 uses
  %.pre91 = phi ptr [ %.pre, %._crit_edge.i ], [ %i.n, %bb.g ] ; 5 uses
  %.val32.pre.i88 = phi i8 [ %.val32.pre.i89, %._crit_edge.i ], [ %.val.i, %bb.g ] ; 3 uses
  %.033.i42 = phi i64 [ %i.bl, %._crit_edge.i ], [ %i.f, %bb.g ]
  %i.ah = zext nneg i8 %.val32.i.sink to i64
  %notmask.i.i.i.i = shl nsw i64 -1, %i.ah
  %i.ai = xor i64 %notmask.i.i.i.i, -1
  %i.aj = and i64 %.sink, %i.ai                   ; 9 uses
  %.val31.i = load i8, ptr %i.j, align 2, !tbaa !24
  switch i8 %.val31.i, label %bb.l [
    i8 0, label %bb.i
    i8 1, label %bb.j
    i8 2, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr i8, ptr %.pre91, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !46
  %i.am = zext i8 %i.al to i64
  br label %get_bin.exit.i

bb.j:                                             ; preds = %bb.h
  %i.an = getelementptr [2 x i8], ptr %.pre91, i64 %i.aj
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !47
  %i.ap = zext i16 %i.ao to i64
  br label %get_bin.exit.i

bb.k:                                             ; preds = %bb.h
  %i.aq = getelementptr [4 x i8], ptr %.pre91, i64 %i.aj
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7
  %i.as = zext i32 %i.ar to i64
  br label %get_bin.exit.i

bb.l:                                             ; preds = %bb.h
  %i.at = getelementptr [8 x i8], ptr %.pre91, i64 %i.aj
  %i.au = load i64, ptr %i.at, align 8, !tbaa !11
  br label %get_bin.exit.i

get_bin.exit.i:                                   ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.av = phi i64 [ %i.am, %bb.i ], [ %i.ap, %bb.j ], [ %i.as, %bb.k ], [ %i.au, %bb.l ] ; 3 uses
  %i.aw = icmp ult i64 %i.av, 2
  br i1 %i.aw, label %bb.p, label %bb.m

bb.m:                                             ; preds = %get_bin.exit.i
  %i.ax = load i32, ptr %i.k, align 4, !tbaa !29
  %i.ay = getelementptr [24 x i8], ptr %i.ag, i64 %i.av ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 -48
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !35
  %i.bb = icmp eq i64 %i.ba, %i.f
  br i1 %i.bb, label %bb.n, label %._crit_edge.i

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr i8, ptr %i.ay, i64 -40
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !37 ; 2 uses
  %i.be = icmp eq i64 %i.p, %i.bd
  br i1 %i.be, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !38
  %i.bh = tail call i32 %i.bg(i64 noundef %i.p, i64 noundef %i.bd) #24, !inline_history !60
  %i.bi = icmp eq i32 %i.bh, 0
  %.pre.i46 = load i32, ptr %i.k, align 4, !tbaa !29
  %i.bj = icmp ne i32 %i.ax, %.pre.i46            ; 2 uses
  %brmerge.i44 = select i1 %i.bj, i1 true, i1 %i.bi, !prof !40
  br i1 %brmerge.i44, label %.loopexit.split.loop.exit40.i, label %.._crit_edge.i_crit_edge, !prof !41

.._crit_edge.i_crit_edge:                         ; preds = %bb.o
end_hunk_0
begin_hunk_1_@rb_st_hash:bb.a
  %i.bx = xor i64 %i.bw, %i.bv
  %i.by = mul i64 %i.bx, -4658895280553007687     ; 2 uses
  %i.bz = lshr i64 %i.by, 27
  %i.ca = xor i64 %i.bz, %i.by
  %i.cb = mul i64 %i.ca, -7723592293110705685     ; 2 uses
  %i.cc = lshr i64 %i.cb, 31
  %i.cd = xor i64 %i.cc, %i.cb
  ret i64 %i.cd
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i64 @rb_st_hash_uint32(i64 noundef %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = mul i64 %i.a, -8663945395140668459
  %i.c = mul i64 %i.a, 2487297242801635328
  %i.d = lshr i64 %i.b, 31
  %i.e = or disjoint i64 %i.d, %i.c
  %i.f = xor i64 %i.e, %0                         ; 2 uses
  %i.g = mul i64 %i.f, 5545529020109919103
  %i.h = mul i64 %i.f, 4838912824426102784
  %i.i = lshr i64 %i.g, 40
  %i.j = or disjoint i64 %i.i, %i.h
  ret i64 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i64 @rb_st_hash_uint(i64 noundef %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = add i64 %1, %0                           ; 2 uses
  %i.b = mul i64 %i.a, -8663945395140668459
  %i.c = mul i64 %i.a, 2487297242801635328
  %i.d = lshr i64 %i.b, 31
  %i.e = or disjoint i64 %i.d, %i.c
  %i.f = xor i64 %i.e, %0                         ; 2 uses
  %i.g = mul i64 %i.f, 5545529020109919103
  %i.h = mul i64 %i.f, 4838912824426102784
  %i.i = lshr i64 %i.g, 40
  %i.j = or disjoint i64 %i.i, %i.h
  ret i64 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i64 @rb_st_hash_end(i64 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = lshr i64 %0, 30
  %i.b = xor i64 %i.a, %0
  %i.c = mul i64 %i.b, -4658895280553007687       ; 2 uses
  %i.d = lshr i64 %i.c, 27
  %i.e = xor i64 %i.d, %i.c
  %i.f = mul i64 %i.e, -7723592293110705685       ; 2 uses
  %i.g = lshr i64 %i.f, 31
  %i.h = xor i64 %i.g, %i.f
  ret i64 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i64 @rb_st_hash_start(i64 noundef returned %0) local_unnamed_addr #7 {
bb.a:
  ret i64 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local range(i32 -1, 2) i32 @rb_st_locale_insensitive_strcasecmp(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.026 = phi ptr [ %0, %bb.a ], [ %i.f, %bb.d ]  ; 2 uses
  %.025 = phi ptr [ %1, %bb.a ], [ %i.e, %bb.d ]  ; 2 uses
  %i.a = load i8, ptr %.026, align 1, !tbaa !46   ; 4 uses
  %i.b = load i8, ptr %.025, align 1, !tbaa !46   ; 4 uses
  %i.c = icmp eq i8 %i.a, 0                       ; 2 uses
  %i.d = icmp eq i8 %i.b, 0                       ; 2 uses
  %or.cond = select i1 %i.c, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %not. = xor i1 %i.d, true
  %. = sext i1 %not. to i32
  %spec.select35 = select i1 %i.c, i32 %., i32 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %.025, i64 1
  %i.f = getelementptr i8, ptr %.026, i64 1
  %i.g = add i8 %i.a, -65
  %or.cond5 = icmp ult i8 %i.g, 26
  %i.h = or disjoint i8 %i.a, 32
  %spec.select = select i1 %or.cond5, i8 %i.h, i8 %i.a ; 2 uses
  %i.i = add i8 %i.b, -65
  %or.cond8 = icmp ult i8 %i.i, 26
  %i.j = or disjoint i8 %i.b, 32
  %.0 = select i1 %or.cond8, i8 %i.j, i8 %i.b     ; 2 uses
  %.not = icmp eq i8 %spec.select, %.0
  br i1 %.not, label %bb.b, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp sgt i8 %spec.select, %.0
  %.34 = select i1 %i.k, i32 1, i32 -1
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.027 = phi i32 [ %.34, %bb.e ], [ %spec.select35, %bb.c ]
  ret i32 %.027
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local range(i32 -1, 2) i32 @rb_st_locale_insensitive_strncasecmp(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %.not46 = icmp eq i64 %2, 0
  br i1 %.not46, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %bb.d
  %i.a = add nuw i64 %.045, 1                     ; 2 uses
  %i.b = getelementptr i8, ptr %.03044, i64 1
  %i.c = getelementptr i8, ptr %.03143, i64 1
  %exitcond.not = icmp eq i64 %i.a, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !78

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.045 = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ]
  %.03044 = phi ptr [ %i.b, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.03143 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.d = load i8, ptr %.03143, align 1, !tbaa !46 ; 4 uses
  %i.e = load i8, ptr %.03044, align 1, !tbaa !46 ; 4 uses
  %i.f = icmp eq i8 %i.d, 0                       ; 2 uses
  %i.g = icmp eq i8 %i.e, 0                       ; 2 uses
  %or.cond = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %not. = xor i1 %i.g, true
  %. = sext i1 %not. to i32
  %spec.select39 = select i1 %i.f, i32 %., i32 1
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.h = add i8 %i.d, -65
  %or.cond5 = icmp ult i8 %i.h, 26
  %i.i = or disjoint i8 %i.d, 32
  %spec.select = select i1 %or.cond5, i8 %i.i, i8 %i.d ; 2 uses
  %i.j = add i8 %i.e, -65
  %or.cond8 = icmp ult i8 %i.j, 26
  %i.k = or disjoint i8 %i.e, 32
  %.027 = select i1 %or.cond8, i8 %i.k, i8 %i.e   ; 2 uses
  %.not = icmp eq i8 %spec.select, %.027
  br i1 %.not, label %bb.b, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp sgt i8 %spec.select, %.027
  %.38 = select i1 %i.l, i32 1, i32 -1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c, %bb.e
  %.029 = phi i32 [ %.38, %bb.e ], [ %spec.select39, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.029
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @rb_st_numcmp(i64 noundef %0, i64 noundef %1) #7 {
bb.a:
  %i.a = icmp ne i64 %0, %1
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local noundef i64 @rb_st_numhash(i64 noundef %0) #7 {
bb.a:
  %i.a = lshr i64 %0, 11
  %i.b = shl i64 %0, 3
  %i.c = or i64 %i.a, %i.b
  %i.d = lshr i64 %0, 3
  %i.e = xor i64 %i.c, %i.d
  ret i64 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_hash_bulk_insert_into_st_table(i64 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = sdiv i64 %0, 2
  %i.b = tail call ptr @rb_hash_tbl_raw(i64 noundef %2, ptr noundef nonnull @.str, i32 noundef 2320) #24 ; 16 uses
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !33
  %i.e = add i64 %i.d, %i.a                       ; 2 uses
  %.val21.i = load i8, ptr %i.b, align 8, !tbaa !19
  %i.f = zext nneg i8 %.val21.i to i64
  %i.g = shl nuw i64 1, %i.f
  %.not.i = icmp ugt i64 %i.e, %i.g
  br i1 %.not.i, label %bb.b, label %st_expand_table.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.j = tail call noalias nonnull dereferenceable(56) ptr @ruby_xmalloc(i64 noundef 56) #23 ; 7 uses
  %i.k = tail call ptr @rb_st_init_existing_table_with_size(ptr noundef nonnull %i.j, ptr noundef %i.i, i64 noundef %i.e) ; 0 uses
  %.val.i = load i8, ptr %i.b, align 8, !tbaa !19
  %i.l = zext nneg i8 %.val.i to i64
  %3 = shl nuw i64 1, %i.l                        ; 2 uses
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 range(i64 1, 25) 24) ; 2 uses
  %5 = extractvalue { i64, i1 } %4, 1
  br i1 %5, label %bb.c, label %rbimpl_size_mul_or_raise.exit.i, !prof !54

bb.c:                                             ; preds = %bb.b
  tail call void @ruby_malloc_size_overflow(i64 noundef 24, i64 noundef %3) #22
  unreachable

rbimpl_size_mul_or_raise.exit.i:                  ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.b, i64 48       ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27   ; 2 uses
  %6 = extractvalue { i64, i1 } %4, 0
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.p, ptr noundef nonnull readonly align 1 %i.n, i64 noundef range(i64 1, 0) %6, i1 noundef false) #24
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !27
  tail call void @ruby_xfree(ptr noundef %.pre.i) #24
  %i.q = getelementptr i8, ptr %i.b, i64 24       ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26
  tail call void @ruby_xfree(ptr noundef %i.r) #24
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26
  tail call void @ruby_xfree(ptr noundef %i.t) #24
  %i.u = load i8, ptr %i.j, align 8, !tbaa !19
  store i8 %i.u, ptr %i.b, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !22
  %i.x = getelementptr i8, ptr %i.b, i64 1
  store i8 %i.w, ptr %i.x, align 1, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.z = load i8, ptr %i.y, align 2, !tbaa !24
  %i.aa = getelementptr i8, ptr %i.b, i64 2
  store i8 %i.z, ptr %i.aa, align 2, !tbaa !24
  store ptr %i.p, ptr %i.m, align 8, !tbaa !27
  store ptr null, ptr %i.q, align 8, !tbaa !26
  %i.ab = getelementptr i8, ptr %i.b, i64 4       ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !29
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !29
  tail call void @ruby_xfree(ptr noundef nonnull %i.j) #24
  br label %st_expand_table.exit

st_expand_table.exit:                             ; preds = %bb.a, %rbimpl_size_mul_or_raise.exit.i
  %i.ae = getelementptr i8, ptr %i.b, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !28
  %.not = icmp eq i64 %i.af, 0
  br i1 %.not, label %bb.e, label %bb.d, !prof !79

bb.d:                                             ; preds = %st_expand_table.exit
  tail call fastcc void @st_insert_generic(ptr noundef nonnull %i.b, i64 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %st_insert_linear.exit

bb.e:                                             ; preds = %st_expand_table.exit
  %i.ag = icmp slt i64 %0, 3
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = load i64, ptr %1, align 8, !tbaa !11
  %i.ai = getelementptr i8, ptr %1, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !11
  tail call fastcc void @st_insert_single(ptr noundef nonnull %i.b, i64 noundef %2, i64 noundef %i.ah, i64 noundef %i.aj)
  br label %st_insert_linear.exit

bb.g:                                             ; preds = %bb.e
  %i.ak = getelementptr i8, ptr %i.b, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !22
  %i.am = icmp ult i8 %i.al, 5
  br i1 %i.am, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.g, %rb_obj_written.exit12.i
  %.013.i = phi i64 [ %i.ba, %rb_obj_written.exit12.i ], [ 0, %bb.g ] ; 2 uses
  %i.an = getelementptr [8 x i8], ptr %1, i64 %.013.i ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !11 ; 8 uses
  %i.ap = tail call i64 @rb_obj_class(i64 noundef %i.ao) #24
  %i.aq = load i64, ptr @rb_cString, align 8, !tbaa !11
  %i.ar = icmp eq i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.h, label %st_stringify.exit.i

bb.h:                                             ; preds = %.preheader
  %i.as = icmp ne i64 %i.ao, 0
  %i.at = and i64 %i.ao, 7
  %i.au = icmp eq i64 %i.at, 0
  %.not3.i.i.i = and i1 %i.as, %i.au
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %st_stringify.exit.i

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.h
  %i.av = inttoptr i64 %i.ao to ptr
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !80
  %i.ax = and i64 %i.aw, 2048
  %.not.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i, label %bb.i, label %st_stringify.exit.i

bb.i:                                             ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.ay = tail call i64 @rb_hash_key_str(i64 noundef %i.ao) #24
  br label %st_stringify.exit.i

st_stringify.exit.i:                              ; preds = %bb.i, %RB_OBJ_FROZEN.exit.i.i, %bb.h, %.preheader
  %i.az = phi i64 [ %i.ay, %bb.i ], [ %i.ao, %RB_OBJ_FROZEN.exit.i.i ], [ %i.ao, %.preheader ], [ %i.ao, %bb.h ] ; 4 uses
  %i.ba = add i64 %.013.i, 2                      ; 2 uses
  %i.bb = getelementptr i8, ptr %i.an, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !11 ; 4 uses
  %i.bd = tail call i32 @rb_st_insert(ptr noundef nonnull %i.b, i64 noundef %i.az, i64 noundef %i.bc) ; 0 uses
  %i.be = icmp eq i64 %i.az, 0
  %i.bf = and i64 %i.az, 7
  %i.bg = icmp ne i64 %i.bf, 0
  %i.bh = or i1 %i.be, %i.bg
  br i1 %i.bh, label %rb_obj_written.exit.i, label %bb.j

bb.j:                                             ; preds = %st_stringify.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %i.az) #24
  br label %rb_obj_written.exit.i

rb_obj_written.exit.i:                            ; preds = %bb.j, %st_stringify.exit.i
  %i.bi = icmp eq i64 %i.bc, 0
  %i.bj = and i64 %i.bc, 7
  %i.bk = icmp ne i64 %i.bj, 0
  %i.bl = or i1 %i.bi, %i.bk
  br i1 %i.bl, label %rb_obj_written.exit12.i, label %bb.k

bb.k:                                             ; preds = %rb_obj_written.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %i.bc) #24
  br label %rb_obj_written.exit12.i

rb_obj_written.exit12.i:                          ; preds = %bb.k, %rb_obj_written.exit.i
  %i.bm = icmp slt i64 %i.ba, %0
  br i1 %i.bm, label %.preheader, label %st_insert_linear.exit, !llvm.loop !82

bb.l:                                             ; preds = %bb.g
  tail call fastcc void @st_insert_generic(ptr noundef nonnull %i.b, i64 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %st_insert_linear.exit

st_insert_linear.exit:                            ; preds = %rb_obj_written.exit12.i, %bb.f, %bb.l, %bb.d
  ret void
}

declare ptr @rb_hash_tbl_raw(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @st_insert_generic(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.019 = phi i64 [ %i.d, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr [8 x i8], ptr %2, i64 %.019 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !11
  %i.d = add i64 %.019, 2                         ; 2 uses
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11
  tail call fastcc void @st_insert_single(ptr noundef %0, i64 noundef %3, i64 noundef %i.c, i64 noundef %i.f)
  %i.g = icmp slt i64 %i.d, %1
  br i1 %i.g, label %.lr.ph, label %._crit_edge, !llvm.loop !83

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.h = getelementptr i8, ptr %0, i64 1          ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 2
  %i.j = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %i.k = getelementptr i8, ptr %0, i64 32         ; 6 uses
  %i.l = getelementptr i8, ptr %0, i64 40         ; 6 uses
  %i.m = getelementptr i8, ptr %0, i64 48         ; 6 uses
  %i.n = getelementptr i8, ptr %0, i64 4          ; 4 uses
  %i.o = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 16         ; 4 uses
  br label %st_rehash_linear.exit.i

st_rehash_linear.exit.i.backedge:                 ; preds = %bb.x, %bb.f
  br label %st_rehash_linear.exit.i

st_rehash_linear.exit.i:                          ; preds = %st_rehash_linear.exit.i.backedge, %._crit_edge
  %i.q = load i8, ptr %i.h, align 1, !tbaa !22
  %i.r = icmp ult i8 %i.q, 5
  br i1 %i.r, label %bb.b, label %bb.j

bb.b:                                             ; preds = %st_rehash_linear.exit.i
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !26
  tail call void @ruby_xfree(ptr noundef %i.s) #24
  store ptr null, ptr %i.j, align 8, !tbaa !26
  %i.t = load i64, ptr %i.k, align 8, !tbaa !34   ; 2 uses
  %i.u = load i64, ptr %i.l, align 8, !tbaa !33   ; 2 uses
  %i.v = icmp ult i64 %i.t, %i.u
  br i1 %i.v, label %.lr.ph48.i.i, label %st_rehash.exit

.lr.ph48.i.i:                                     ; preds = %bb.b, %.loopexit.i.i
  %i.w = phi i64 [ %i.bj, %.loopexit.i.i ], [ %i.u, %bb.b ] ; 4 uses
  %.03446.i.i = phi i64 [ %.pre52.i.i, %.loopexit.i.i ], [ %i.t, %bb.b ] ; 3 uses
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.y = getelementptr [24 x i8], ptr %i.x, i64 %.03446.i.i ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !35
  %i.aa = icmp ne i64 %i.z, -1
  %.pre52.i.i = add nuw i64 %.03446.i.i, 1        ; 4 uses
  %i.ab = icmp ult i64 %.pre52.i.i, %i.w
  %or.cond.i.i = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph48.i.i
  %i.ac = getelementptr i8, ptr %i.y, i64 8
  br label %bb.c

bb.c:                                             ; preds = %update_range_for_deleted.exit.i.i, %.lr.ph.i.i
  %i.ad = phi i64 [ %i.w, %.lr.ph.i.i ], [ %i.bg, %update_range_for_deleted.exit.i.i ] ; 2 uses
  %i.ae = phi i64 [ %i.w, %.lr.ph.i.i ], [ %i.bh, %update_range_for_deleted.exit.i.i ] ; 2 uses
  %.045.i.i = phi i64 [ %.pre52.i.i, %.lr.ph.i.i ], [ %.0.i.i, %update_range_for_deleted.exit.i.i ] ; 5 uses
  %.0.in44.i.i = phi i64 [ %.03446.i.i, %.lr.ph.i.i ], [ %.045.i.i, %update_range_for_deleted.exit.i.i ]
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.ag = getelementptr [24 x i8], ptr %i.af, i64 %.045.i.i ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !35 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, -1
  br i1 %i.ai, label %update_range_for_deleted.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !29
  %i.ak = load i64, ptr %i.y, align 8, !tbaa !35
  %i.al = icmp eq i64 %i.ak, %i.ah
  br i1 %i.al, label %bb.e, label %update_range_for_deleted.exit.i.i
end_hunk_1
begin_hunk_2_@strhash:bb.a
  call void @llvm.assume(i1 true) [ "align"(ptr %.031.i.epil.init, i64 8) ]
  %i.af = load i64, ptr %.031.i.epil.init, align 8, !tbaa !11 ; 2 uses
  %i.ag = mul i64 %i.af, -8663945395140668459
  %i.ah = mul i64 %i.af, 2487297242801635328
  %i.ai = lshr i64 %i.ag, 31
  %i.aj = or disjoint i64 %i.ai, %i.ah
  %i.ak = xor i64 %i.aj, %.033.i.epil.init        ; 2 uses
  %i.al = mul i64 %i.ak, 5545529020109919103
  %i.am = mul i64 %i.ak, 4838912824426102784
  %i.an = lshr i64 %i.al, 40
  %i.ao = or disjoint i64 %i.an, %i.am
  %i.ap = getelementptr i8, ptr %.031.i.epil.init, i64 8
  %i.aq = add i64 %.036.i.epil.init, -8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %bb.a
  %.137.i = phi i64 [ %i.b, %bb.a ], [ %i.ad, %.loopexit.i.loopexit.unr-lcssa ], [ %i.aq, %.preheader.i.epil.preheader ]
  %.134.i = phi i64 [ 2166136261, %bb.a ], [ %i.ab, %.loopexit.i.loopexit.unr-lcssa ], [ %i.ao, %.preheader.i.epil.preheader ] ; 2 uses
  %.132.i = phi ptr [ %i.a, %bb.a ], [ %i.ac, %.loopexit.i.loopexit.unr-lcssa ], [ %i.ap, %.preheader.i.epil.preheader ] ; 8 uses
  switch i64 %.137.i, label %default.unreachable [
    i64 7, label %bb.b
    i64 6, label %bb.c
    i64 5, label %bb.d
    i64 4, label %bb.e
    i64 3, label %bb.f
    i64 2, label %bb.g
    i64 1, label %bb.h
    i64 0, label %rb_st_hash.exit
  ]

bb.b:                                             ; preds = %.loopexit.i
  %i.ar = getelementptr i8, ptr %.132.i, i64 6
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !46
  %i.at = zext i8 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 48
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit.i
  %.0.i = phi i64 [ %i.au, %bb.b ], [ 0, %.loopexit.i ]
  %i.av = getelementptr i8, ptr %.132.i, i64 5
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !46
  %i.ax = zext i8 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 40
  %i.az = or disjoint i64 %i.ay, %.0.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit.i
  %.1.i = phi i64 [ %i.az, %bb.c ], [ 0, %.loopexit.i ]
  %i.ba = getelementptr i8, ptr %.132.i, i64 4
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !46
  %i.bc = zext i8 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 32
  %i.be = or i64 %i.bd, %.1.i
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit.i
  %.2.i = phi i64 [ %i.be, %bb.d ], [ 0, %.loopexit.i ]
  call void @llvm.assume(i1 true) [ "align"(ptr %.132.i, i64 8) ]
  %i.bf = load i32, ptr %.132.i, align 8, !tbaa !7
  %i.bg = zext i32 %i.bf to i64
  %i.bh = or i64 %.2.i, %i.bg
  br label %bb.i

bb.f:                                             ; preds = %.loopexit.i
  %i.bi = getelementptr i8, ptr %.132.i, i64 2
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !46
  %i.bk = zext i8 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit.i
  %.3.i = phi i64 [ %i.bl, %bb.f ], [ 0, %.loopexit.i ]
  %i.bm = getelementptr i8, ptr %.132.i, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !46
  %i.bo = zext i8 %i.bn to i64
  %i.bp = shl nuw nsw i64 %i.bo, 8
  %i.bq = or disjoint i64 %i.bp, %.3.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.i
  %.4.i = phi i64 [ %i.bq, %bb.g ], [ 0, %.loopexit.i ]
  %i.br = load i8, ptr %.132.i, align 1, !tbaa !46
  %i.bs = zext i8 %i.br to i64
  %i.bt = or i64 %.4.i, %i.bs
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.5.i = phi i64 [ %i.bh, %bb.e ], [ %i.bt, %bb.h ] ; 2 uses
  %i.bu = xor i64 %.5.i, %.134.i
  %i.bv = shl nuw nsw i64 %.5.i, 7
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = mul i64 %i.bw, 5545529020109919103
  br label %rb_st_hash.exit

default.unreachable:                              ; preds = %.loopexit.i
  unreachable

rb_st_hash.exit:                                  ; preds = %.loopexit.i, %bb.i
  %.235.i = phi i64 [ %.134.i, %.loopexit.i ], [ %i.bx, %bb.i ]
  %i.by = xor i64 %.235.i, %i.b                   ; 2 uses
  %i.bz = lshr i64 %i.by, 30
  %i.ca = xor i64 %i.bz, %i.by
  %i.cb = mul i64 %i.ca, -4658895280553007687     ; 2 uses
  %i.cc = lshr i64 %i.cb, 27
  %i.cd = xor i64 %i.cc, %i.cb
  %i.ce = mul i64 %i.cd, -7723592293110705685     ; 2 uses
  %i.cf = lshr i64 %i.ce, 31
  %i.cg = xor i64 %i.cf, %i.ce
  ret i64 %i.cg
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @st_locale_insensitive_strcasecmp_i(i64 noundef %0, i64 noundef %1) #17 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = inttoptr i64 %1 to ptr
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.026.i = phi ptr [ %i.a, %bb.a ], [ %i.h, %bb.d ] ; 2 uses
  %.025.i = phi ptr [ %i.b, %bb.a ], [ %i.g, %bb.d ] ; 2 uses
  %i.c = load i8, ptr %.026.i, align 1, !tbaa !46 ; 4 uses
  %i.d = load i8, ptr %.025.i, align 1, !tbaa !46 ; 4 uses
  %i.e = icmp eq i8 %i.c, 0                       ; 2 uses
  %i.f = icmp eq i8 %i.d, 0                       ; 2 uses
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %not..i = xor i1 %i.f, true
  %..i = sext i1 %not..i to i32
  %spec.select35.i = select i1 %i.e, i32 %..i, i32 1
  br label %rb_st_locale_insensitive_strcasecmp.exit

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %.025.i, i64 1
  %i.h = getelementptr i8, ptr %.026.i, i64 1
  %i.i = add i8 %i.c, -65
  %or.cond5.i = icmp ult i8 %i.i, 26
  %i.j = or disjoint i8 %i.c, 32
  %spec.select.i = select i1 %or.cond5.i, i8 %i.j, i8 %i.c ; 2 uses
  %i.k = add i8 %i.d, -65
  %or.cond8.i = icmp ult i8 %i.k, 26
  %i.l = or disjoint i8 %i.d, 32
  %.0.i = select i1 %or.cond8.i, i8 %i.l, i8 %i.d ; 2 uses
  %.not.i = icmp eq i8 %spec.select.i, %.0.i
  br i1 %.not.i, label %bb.b, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = icmp sgt i8 %spec.select.i, %.0.i
  %.34.i = select i1 %i.m, i32 1, i32 -1
  br label %rb_st_locale_insensitive_strcasecmp.exit

rb_st_locale_insensitive_strcasecmp.exit:         ; preds = %bb.c, %bb.e
  %.027.i = phi i32 [ %.34.i, %bb.e ], [ %spec.select35.i, %bb.c ]
  ret i32 %.027.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @strcasehash(i64 noundef %0) #14 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !46    ; 2 uses
  %.not11 = icmp eq i8 %i.b, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi i8 [ %i.l, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %.0813 = phi i64 [ %i.k, %.lr.ph ], [ 2166136261, %bb.a ]
  %.0912 = phi ptr [ %i.d, %.lr.ph ], [ %i.a, %bb.a ]
  %i.d = getelementptr i8, ptr %.0912, i64 1      ; 2 uses
  %i.e = zext i8 %i.c to i32                      ; 2 uses
  %i.f = add i8 %i.c, -65
  %i.g = icmp ult i8 %i.f, 26
  %i.h = or disjoint i32 %i.e, 32
  %spec.select = select i1 %i.g, i32 %i.h, i32 %i.e
  %i.i = zext nneg i32 %spec.select to i64
  %i.j = xor i64 %.0813, %i.i
  %i.k = mul i64 %i.j, 16777619                   ; 2 uses
  %i.l = load i8, ptr %i.d, align 1, !tbaa !46    ; 2 uses
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !127

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.08.lcssa = phi i64 [ 2166136261, %bb.a ], [ %i.k, %.lr.ph ]
  ret i64 %.08.lcssa
}

; Function Attrs: noreturn
declare void @ruby_malloc_size_overflow(i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #19

; Function Attrs: allocsize(1)
declare nonnull ptr @ruby_xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #20

declare i64 @rb_obj_class(i64 noundef) local_unnamed_addr #5

declare i64 @rb_hash_key_str(i64 noundef) local_unnamed_addr #5

declare void @rb_gc_writebarrier(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nofree norecurse nosync nounwind sspstrong memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind }
attributes #25 = { nounwind allocsize(1) }
attributes #26 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!14, !15, i64 8}
!14 = !{!"st_table", !9, i64 0, !9, i64 1, !9, i64 2, !8, i64 4, !15, i64 8, !12, i64 16, !17, i64 24, !12, i64 32, !12, i64 40, !18, i64 48}
!15 = !{!"p1 _ZTS12st_hash_type", !16, i64 0}
!16 = !{!"any pointer", !9, i64 0}
!17 = !{!"p1 long", !16, i64 0}
!18 = !{!"p1 _ZTS14st_table_entry", !16, i64 0}
!19 = !{!14, !9, i64 0}
!20 = !{!21, !9, i64 1}
!21 = !{!"st_features", !9, i64 0, !9, i64 1, !9, i64 2, !12, i64 8}
!22 = !{!14, !9, i64 1}
!23 = !{!21, !9, i64 2}
!24 = !{!14, !9, i64 2}
!25 = !{!21, !12, i64 8}
!26 = !{!14, !17, i64 24}
!27 = !{!14, !18, i64 48}
!28 = !{!14, !12, i64 16}
!29 = !{!14, !8, i64 4}
!30 = !{!31, !16, i64 8}
!31 = !{!"st_hash_type", !16, i64 0, !16, i64 8}
!32 = distinct !{null}
!33 = !{!14, !12, i64 40}
!34 = !{!14, !12, i64 32}
!35 = !{!36, !12, i64 0}
!36 = !{!"st_table_entry", !12, i64 0, !12, i64 8, !12, i64 16}
!37 = !{!36, !12, i64 8}
!38 = !{!31, !16, i64 0}
!39 = distinct !{null}
!40 = !{!"branch_weights", i32 1, i32 2000}
!41 = !{!"branch_weights", i32 716543353, i32 1430940295}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"branch_weights", i32 2181030, i32 2145302618}
!45 = !{!"branch_weights", i32 2147326926, i32 156722, i32 0}
!46 = !{!9, !9, i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"short", !9, i64 0}
!49 = distinct !{null}
!50 = !{!"branch_weights", i32 2181029, i32 2145302619}
!51 = !{!"branch_weights", i32 1171314867, i32 0, i32 976168781}
!52 = !{!36, !12, i64 16}
!53 = !{!"branch_weights", i32 1073598934, i32 285781, i32 1073598934}
!54 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!55 = !{!"branch_weights", !"expected", i32 2145337238, i32 2146410}
!56 = !{i64 0, i64 1, !46, i64 1, i64 1, !46, i64 2, i64 1, !46, i64 4, i64 4, !7, i64 8, i64 8, !57, i64 16, i64 8, !11, i64 24, i64 8, !58, i64 32, i64 8, !11, i64 40, i64 8, !11, i64 48, i64 8, !59}
!57 = !{!15, !15, i64 0}
!58 = !{!17, !17, i64 0}
!59 = !{!18, !18, i64 0}
!60 = distinct !{null}
!61 = distinct !{!61, !43}
!62 = !{!"branch_weights", i32 4444163, i32 -103010308}
!63 = !{!"branch_weights", i32 6762957, i32 -6762958}
!64 = distinct !{!64, !43}
!65 = !{!"branch_weights", i32 8905992, i32 -8905993}
!66 = !{!"branch_weights", !"expected", i32 2274276, i32 2145209372}
!67 = !{!"branch_weights", !"expected", i32 285779, i32 2147197869}
!68 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !{!"branch_weights", i32 2147421620, i32 62028, i32 0}
!71 = distinct !{!71, !43}
!72 = !{!73, !16, i64 0}
!73 = !{!"functor", !16, i64 0, !12, i64 8}
!74 = !{!73, !12, i64 8}
!75 = distinct !{!75, !43}
!76 = distinct !{!76, !43}
!77 = distinct !{!77, !43}
!78 = distinct !{!78, !43}
!79 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!80 = !{!81, !12, i64 0}
!81 = !{!"RBasic", !12, i64 0, !12, i64 8}
!82 = distinct !{!82, !43}
!83 = distinct !{!83, !43}
!84 = distinct !{null, null}
!85 = distinct !{!85, !43}
!86 = !{i64 0, i64 8, !11, i64 8, i64 8, !11, i64 16, i64 8, !11}
!87 = distinct !{!87, !43}
!88 = distinct !{!88, !43}
!89 = distinct !{null, null}
!90 = distinct !{!90, !43}
!91 = distinct !{!91, !43}
!92 = !{!93, !15, i64 8}
!93 = !{!"set_table", !9, i64 0, !9, i64 1, !9, i64 2, !8, i64 4, !15, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !94, i64 40}
!94 = !{!"p1 _ZTS15set_table_entry", !16, i64 0}
!95 = !{!93, !9, i64 0}
!96 = !{!93, !9, i64 1}
!97 = !{!93, !9, i64 2}
!98 = !{!93, !94, i64 40}
!99 = !{!93, !8, i64 4}
!100 = !{!93, !12, i64 16}
!101 = distinct !{null}
!102 = !{!93, !12, i64 32}
!103 = !{!93, !12, i64 24}
!104 = !{!105, !12, i64 0}
!105 = !{!"set_table_entry", !12, i64 0, !12, i64 8}
!106 = !{!105, !12, i64 8}
!107 = distinct !{null}
!108 = distinct !{!108, !43}
!109 = !{!"branch_weights", i32 2147326925, i32 156723, i32 0}
!110 = distinct !{null}
!111 = !{!"branch_weights", i32 2145209372, i32 4548552, i32 2145209372}
!112 = distinct !{null}
!113 = !{!"branch_weights", i32 2145301935, i32 4363426, i32 2145301935}
!114 = !{i64 0, i64 1, !46, i64 1, i64 1, !46, i64 2, i64 1, !46, i64 4, i64 4, !7, i64 8, i64 8, !57, i64 16, i64 8, !11, i64 24, i64 8, !11, i64 32, i64 8, !11, i64 40, i64 8, !115}
!115 = !{!94, !94, i64 0}
!116 = distinct !{null}
!117 = distinct !{!117, !43}
!118 = !{!"branch_weights", !"expected", i32 285780, i32 2147197868}
!119 = !{!"branch_weights", i32 2147421622, i32 62026, i32 0}
!120 = distinct !{!120, !43}
!121 = !{!122, !16, i64 0}
!122 = !{!"set_functor", !16, i64 0, !12, i64 8}
!123 = !{!122, !12, i64 8}
!124 = distinct !{!124, !43}
!125 = !{i64 0, i64 8, !11, i64 8, i64 8, !11}
!126 = distinct !{!126, !43}
!127 = distinct !{!127, !43}
end_hunk_2
