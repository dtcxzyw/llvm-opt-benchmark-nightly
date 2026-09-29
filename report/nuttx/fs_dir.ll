Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/fs_dir?download=true
inline.NumInlined: 5
inline.NumDeleted: 5
begin_hunk_0_@dir_allocate:bb.a
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = call i32 %i.n(ptr noundef nonnull %i.c, ptr noundef %1, ptr noundef nonnull %i.a) #11, !inline_history !7 ; 2 uses
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %open_mountpoint.exit, label %bb.g

open_mountpoint.exit:                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.a, align 8
  store ptr %i.c, ptr %i.u, align 8
  br label %bb.j

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.f
  %.0.i.ph = phi i32 [ %i.s, %bb.f ], [ -38, %bb.d ], [ -38, %bb.e ], [ -38, %bb.c ]
  call void @lib_put_tempbuffer(ptr noundef nonnull %i.d) #11
  br label %bb.m

bb.h:                                             ; preds = %bb.b
  %i.v = tail call noalias dereferenceable_or_null(24) ptr @zalloc(i64 noundef 24) #12 ; 4 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.i, label %open_pseudodir.exit

open_pseudodir.exit:                              ; preds = %bb.h
  store ptr %i.v, ptr %i.a, align 8
  store ptr %i.c, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.y, ptr %i.z, align 8
  tail call void @inode_addref(ptr noundef %i.y) #11
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @lib_put_tempbuffer(ptr noundef nonnull %i.d) #11
  br label %bb.m

bb.j:                                             ; preds = %open_pseudodir.exit, %open_mountpoint.exit
  %i.aa = call i32 @inode_getpath(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 noundef 256) #11 ; 0 uses
  %i.ab = load ptr, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = call i32 (ptr, ptr, ...) @nx_asprintf(ptr noundef nonnull %i.ac, ptr noundef nonnull @.str, ptr noundef nonnull %i.d, ptr noundef %1) #11 ; 3 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %i.a, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr null, ptr %i.ag, align 8
  call void @lib_put_tempbuffer(ptr noundef nonnull %i.d) #11
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store ptr @g_dir_inode, ptr %i.b, align 8
  %i.ah = load ptr, ptr %i.a, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ah, ptr %i.ai, align 8
  call void @inode_addref(ptr noundef nonnull @g_dir_inode) #11
  call void @lib_put_tempbuffer(ptr noundef nonnull %i.d) #11
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l, %bb.k, %bb.i, %bb.g
  %.0 = phi i32 [ -12, %bb.i ], [ %.0.i.ph, %bb.g ], [ %i.ad, %bb.k ], [ %i.ad, %bb.l ], [ -12, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: noredzone optsize
declare dso_local ptr @lib_get_tempbuffer(i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone optsize
declare dso_local void @lib_put_tempbuffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone optsize
declare dso_local i32 @inode_getpath(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone optsize
declare dso_local i32 @nx_asprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noredzone optsize
declare dso_local void @inode_addref(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: noredzone optsize allocsize(0)
declare dso_local noalias ptr @zalloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: noredzone nounwind optsize uwtable
define internal i32 @dir_open(ptr nofree noundef captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 @dir_allocate(ptr noundef %0, ptr noundef %i.d) #13
  ret i32 %i.e
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal i32 @dir_close(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.g = load i16, ptr %i.f, align 4
  %i.h = and i16 %i.g, 15
  %i.i = icmp eq i16 %i.h, 3
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not16 = icmp eq ptr %i.m, null
  br i1 %.not16, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call i32 %i.m(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #11
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @inode_release(ptr noundef nonnull %i.p) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @free(ptr noundef nonnull %i.b) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.c, %bb.f
  %.0 = phi i32 [ %i.n, %bb.c ], [ 0, %bb.b ], [ 0, %bb.f ]
  tail call void @inode_release(ptr noundef nonnull %i.c) #11
  tail call void @free(ptr noundef %i.e) #13
  ret i32 %.0
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal range(i64 -2147483648, 41) i64 @dir_read(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp eq ptr %1, null
  %i.e = icmp ult i64 %2, 40
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.g = load i16, ptr %i.f, align 4
  %i.h = and i16 %i.g, 15
  %i.i = icmp eq i16 %i.h, 3
  br i1 %i.i, label %read_pseudodir.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.o = tail call i64 @strlcpy(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) %i.n, i64 noundef 33) #11 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  store i8 0, ptr %i.p, align 4
  %i.q = load ptr, ptr %i.j, align 8              ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %i.u = load i16, ptr %i.t, align 4
  %i.v = and i16 %i.u, 15                         ; 2 uses
  %switch.tableidx = add nsw i16 %i.v, -1         ; 2 uses
  %i.w = icmp ult i16 %switch.tableidx, 10
  %switch.shifted = lshr i16 1278, %i.v
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond26 = select i1 %i.w, i1 %switch.lobit, i1 false
  br i1 %or.cond26, label %switch.lookup, label %bb.f

switch.lookup:                                    ; preds = %bb.e
  %i.x = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.dir_read, i64 %i.x
  %switch.load = load i8, ptr %switch.gep, align 1
  store i8 %switch.load, ptr %i.p, align 4
  %.pre = load ptr, ptr %i.j, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %switch.lookup, %bb.d
  %i.y = phi ptr [ %.pre, %switch.lookup ], [ %i.q, %bb.e ], [ %i.q, %bb.d ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %.not39.i = icmp eq ptr %i.aa, null
  br i1 %.not39.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  store i8 4, ptr %i.p, align 4
  %.pre.i = load ptr, ptr %i.j, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = phi ptr [ %.pre.i, %bb.h ], [ %i.y, %bb.g ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load i32, ptr %i.af, align 8
  store i32 %i.ag, ptr %1, align 4
  tail call void @inode_lock() #11
  %i.ah = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  store ptr %i.aj, ptr %i.j, align 8
  %.not40.i = icmp eq ptr %i.aj, null
  br i1 %.not40.i, label %read_pseudodir.exit.thread20, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 8 ; 0 uses
  br label %read_pseudodir.exit.thread20

read_pseudodir.exit.thread20:                     ; preds = %bb.i, %bb.j
  tail call void @inode_unlock() #11
  tail call void @inode_release(ptr noundef nonnull %i.ah) #11
  br label %bb.m

read_pseudodir.exit:                              ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 136
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call i32 %i.ap(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %1) #11
  %.fr = freeze i32 %i.aq                         ; 3 uses
  %i.ar = icmp slt i32 %.fr, 0
  br i1 %i.ar, label %bb.k, label %bb.m

bb.k:                                             ; preds = %read_pseudodir.exit
  %i.as = icmp eq i32 %.fr, -2
  br i1 %i.as, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.c, %bb.k
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread
  %i.at = phi i32 [ 0, %.thread ], [ %.fr, %bb.k ]
  %i.au = sext i32 %i.at to i64
  br label %bb.n

bb.m:                                             ; preds = %read_pseudodir.exit.thread20, %read_pseudodir.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m, %bb.l
  %.016 = phi i64 [ 40, %bb.m ], [ %i.au, %bb.l ], [ -22, %bb.a ]
  ret i64 %.016
}

; Function Attrs: noredzone nounwind optsize uwtable
define internal i32 @dir_seek(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) #2 {
bb.a:
  %3 = alloca %struct.dirent, align 4             ; 3 uses
  switch i32 %2, label %bb.n [
    i32 0, label %bb.b
    i32 1, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.e = load i16, ptr %i.d, align 4
  %i.f = and i16 %i.e, 15
  %i.g = icmp eq i16 %i.f, 3
  %i.h = getelementptr i8, ptr %0, i64 8
  %.val = load i32, ptr %i.h, align 8             ; 4 uses
  br i1 %i.g, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.i = icmp slt i32 %1, %.val
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %seek_mountptdir.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call i32 %i.m(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #11, !inline_history !8 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.019.i = phi i32 [ 0, %bb.e ], [ %.val, %bb.c ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %smax.i = tail call i32 @llvm.smax.i32(i32 %.019.i, i32 %1) ; 3 uses
  %exitcond.not.i33.not = icmp slt i32 %.019.i, %1
  br i1 %exitcond.not.i33.not, label %.lr.ph, label %seek_mountptdir.exit

bb.g:                                             ; preds = %.lr.ph
  %i.p = add i32 %.1.i34, 1                       ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.p, %smax.i
  br i1 %exitcond.not.i, label %seek_mountptdir.exit, label %.lr.ph, !llvm.loop !9

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.1.i34 = phi i32 [ %i.p, %bb.g ], [ %.019.i, %bb.f ]
  %i.q = load ptr, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call i32 %i.s(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %3) #11, !inline_history !8 ; 2 uses
  %i.u = icmp sgt i32 %i.t, -1
  br i1 %i.u, label %bb.g, label %.seek_mountptdir.exit.loopexit_crit_edge, !llvm.loop !9

.seek_mountptdir.exit.loopexit_crit_edge:         ; preds = %.lr.ph
  br label %seek_mountptdir.exit, !llvm.loop !9

seek_mountptdir.exit:                             ; preds = %bb.g, %bb.f, %.seek_mountptdir.exit.loopexit_crit_edge, %bb.d
  %.222.i = phi i32 [ -138, %bb.d ], [ %smax.i, %bb.f ], [ %i.t, %.seek_mountptdir.exit.loopexit_crit_edge ], [ %smax.i, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %seek_pseudodir.exit

bb.h:                                             ; preds = %bb.b
  %i.v = icmp slt i32 %1, %.val                   ; 2 uses
  %spec.select = select i1 %i.v, i32 0, i32 %.val ; 3 uses
  %spec.select20 = select i1 %i.v, ptr %i.c, ptr %i.b
  %.0.in.i = getelementptr inbounds nuw i8, ptr %spec.select20, i64 16
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 3 uses
  tail call void @inode_lock() #11
  %i.w = icmp ne ptr %.0.i, null                  ; 2 uses
  %i.x = icmp ne i32 %spec.select, %1
  %i.y = and i1 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.12.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %.0.i, %bb.h ]
  %.1201.i = phi i32 [ %i.z, %.lr.ph.i ], [ %spec.select, %bb.h ]
  %i.z = add nsw i32 %.1201.i, 1                  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.12.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.ac = icmp ne ptr %i.ab, null                 ; 2 uses
  %i.ad = icmp ne i32 %i.z, %1
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %i.ae, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !10

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %.120.lcssa.i = phi i32 [ %spec.select, %bb.h ], [ %i.z, %.lr.ph.i ] ; 2 uses
  %.1.lcssa.i = phi ptr [ %.0.i, %bb.h ], [ %i.ab, %.lr.ph.i ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.w, %bb.h ], [ %i.ac, %.lr.ph.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  store ptr %.1.lcssa.i, ptr %i.af, align 8
  br i1 %.lcssa.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 24
  %i.ai = atomicrmw volatile add ptr %i.ah, i32 1 acq_rel, align 8 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i
  tail call void @inode_unlock() #11
  %.not.i19 = icmp eq ptr %i.ag, null
  br i1 %.not.i19, label %seek_pseudodir.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @inode_release(ptr noundef nonnull %i.ag) #11
  br label %seek_pseudodir.exit

end_hunk_0
