Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 372
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_complete16:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !762
  br label %sqlite3ValueText.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.n = and i16 %i.f, 1
  %.not9.i = icmp eq i16 %i.n, 0
  br i1 %.not9.i, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.o = tail call fastcc ptr @valueToText(ptr noundef nonnull %i.b, i8 noundef zeroext 1), !inline_history !1096
  br label %sqlite3ValueText.exit

sqlite3ValueText.exit:                            ; preds = %bb.e, %bb.g
  %.0.i = phi ptr [ %i.m, %bb.e ], [ %i.o, %bb.g ] ; 2 uses
  %.not12 = icmp eq ptr %.0.i, null
  br i1 %.not12, label %.thread, label %bb.h

bb.h:                                             ; preds = %sqlite3ValueText.exit
  %i.p = tail call i32 @sqlite3_complete(ptr noundef nonnull %.0.i)
  br label %.thread

.thread:                                          ; preds = %bb.h, %sqlite3ValueText.exit, %bb.f
  %.019 = phi i32 [ 7, %bb.f ], [ 7, %sqlite3ValueText.exit ], [ %i.p, %bb.h ]
  %i.q = load i16, ptr %i.c, align 4, !tbaa !686
  %i.r = and i16 %i.q, -28672
  %.not.i.i15 = icmp eq i16 %i.r, 0
  br i1 %.not.i.i15, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !684
  %.not3.i.i = icmp eq i32 %i.t, 0
  br i1 %.not3.i.i, label %sqlite3VdbeMemRelease.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread
  tail call fastcc void @vdbeMemClear(ptr noundef nonnull %i.b)
  br label %sqlite3VdbeMemRelease.exit.i

sqlite3VdbeMemRelease.exit.i:                     ; preds = %bb.j, %bb.i
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !683
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.u, ptr noundef nonnull %i.b)
  br label %sqlite3ValueFree.exit

sqlite3ValueFree.exit:                            ; preds = %bb.b, %sqlite3VdbeMemRelease.exit.i, %bb.a
  %.09 = phi i32 [ %i.a, %bb.a ], [ %.019, %sqlite3VdbeMemRelease.exit.i ], [ 7, %bb.b ]
  ret i32 %.09
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @sqlite3_libversion() #3 {
bb.a:
  ret ptr @sqlite3_version
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @sqlite3_libversion_number() #3 {
bb.a:
  ret i32 3053004
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @sqlite3_threadsafe() #3 {
bb.a:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3MemdbInit() unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @sqlite3_initialize(), !inline_history !817
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %sqlite3_vfs_register.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4, !tbaa !710
  %.not.i10 = icmp eq i8 %i.b, 0
  br i1 %.not.i10, label %sqlite3_mutex_enter.exit.thread, label %sqlite3MutexAlloc.exit

sqlite3MutexAlloc.exit:                           ; preds = %bb.b
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 112), align 8, !tbaa !711
  %i.d = tail call ptr %i.c(i32 noundef 2) #57, !inline_history !3338 ; 3 uses
  %.not.i9 = icmp eq ptr %i.d, null
  br i1 %.not.i9, label %sqlite3_mutex_enter.exit.thread, label %bb.c

sqlite3_mutex_enter.exit.thread:                  ; preds = %sqlite3MutexAlloc.exit, %bb.b
  %.0.i27 = load ptr, ptr @vfsList, align 8, !tbaa !712
  br label %sqlite3_vfs_find.exit

bb.c:                                             ; preds = %sqlite3MutexAlloc.exit
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.e(ptr noundef nonnull %i.d) #57, !inline_history !3340
  %.0.i = load ptr, ptr @vfsList, align 8, !tbaa !712
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.f(ptr noundef nonnull %i.d) #57, !inline_history !3341
  br label %sqlite3_vfs_find.exit

sqlite3_vfs_find.exit:                            ; preds = %bb.c, %sqlite3_mutex_enter.exit.thread
  %.010.i = phi ptr [ %.0.i, %bb.c ], [ %.0.i27, %sqlite3_mutex_enter.exit.thread ] ; 3 uses
  %i.g = icmp eq ptr %.010.i, null
  br i1 %i.g, label %sqlite3_vfs_register.exit, label %bb.d

bb.d:                                             ; preds = %sqlite3_vfs_find.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.010.i, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !1291
  store ptr %.010.i, ptr getelementptr inbounds nuw (i8, ptr @memdb_vfs, i64 32), align 8, !tbaa !850
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.i, i32 24)
  store i32 %spec.store.select, ptr getelementptr inbounds nuw (i8, ptr @memdb_vfs, i64 4), align 4, !tbaa !1291
  %i.j = tail call i32 @sqlite3_initialize(), !inline_history !822 ; 2 uses
  %.not.i6 = icmp eq i32 %i.j, 0
  br i1 %.not.i6, label %bb.e, label %sqlite3_vfs_register.exit

bb.e:                                             ; preds = %bb.d
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4, !tbaa !710
  %.not.i18 = icmp eq i8 %i.k, 0
  br i1 %.not.i18, label %sqlite3_mutex_enter.exit17, label %sqlite3MutexAlloc.exit20

sqlite3MutexAlloc.exit20:                         ; preds = %bb.e
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 112), align 8, !tbaa !711
  %i.m = tail call ptr %i.l(i32 noundef 2) #57, !inline_history !3339 ; 3 uses
  %.not.i16 = icmp eq ptr %i.m, null
  br i1 %.not.i16, label %sqlite3_mutex_enter.exit17, label %bb.f

bb.f:                                             ; preds = %sqlite3MutexAlloc.exit20
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.n(ptr noundef nonnull %i.m) #57, !inline_history !3342
  br label %sqlite3_mutex_enter.exit17

sqlite3_mutex_enter.exit17:                       ; preds = %bb.e, %sqlite3MutexAlloc.exit20, %bb.f
  %.not.i1633 = phi i1 [ false, %bb.f ], [ true, %sqlite3MutexAlloc.exit20 ], [ true, %bb.e ]
  %.0.i1932 = phi ptr [ %i.m, %bb.f ], [ null, %sqlite3MutexAlloc.exit20 ], [ null, %bb.e ]
  %i.o = load ptr, ptr @vfsList, align 8          ; 5 uses
  %i.p = icmp eq ptr %i.o, @memdb_vfs
  br i1 %i.p, label %vfsUnlink.exit, label %bb.g

bb.g:                                             ; preds = %sqlite3_mutex_enter.exit17
  %.not.i14 = icmp eq ptr %i.o, null
  br i1 %.not.i14, label %vfsUnlink.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g, %.preheader.i
  %.0.i15 = phi ptr [ %i.r, %.preheader.i ], [ %i.o, %bb.g ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i15, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !739  ; 3 uses
  %.not14.i = icmp eq ptr %i.r, null
  %.not15.i = icmp eq ptr %i.r, @memdb_vfs        ; 2 uses
  %or.cond.i = or i1 %.not14.i, %.not15.i
  br i1 %or.cond.i, label %.critedge.i, label %.preheader.i, !llvm.loop !11

.critedge.i:                                      ; preds = %.preheader.i
  br i1 %.not15.i, label %bb.h, label %vfsUnlink.exit.thread39

bb.h:                                             ; preds = %.critedge.i
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i15, i64 16
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memdb_vfs, i64 16), align 8, !tbaa !739
  store ptr %i.t, ptr %i.s, align 8, !tbaa !739
  br label %vfsUnlink.exit.thread39

vfsUnlink.exit:                                   ; preds = %sqlite3_mutex_enter.exit17
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memdb_vfs, i64 16), align 8, !tbaa !739 ; 3 uses
  store ptr %i.u, ptr @vfsList, align 8, !tbaa !712
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %vfsUnlink.exit.thread, label %vfsUnlink.exit.thread39

vfsUnlink.exit.thread:                            ; preds = %bb.g, %vfsUnlink.exit
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @memdb_vfs, i64 16), align 8, !tbaa !739
  store ptr @memdb_vfs, ptr @vfsList, align 8, !tbaa !712
  br label %bb.i

vfsUnlink.exit.thread39:                          ; preds = %.critedge.i, %bb.h, %vfsUnlink.exit
  %i.w = phi ptr [ %i.u, %vfsUnlink.exit ], [ %i.o, %bb.h ], [ %i.o, %.critedge.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !739
  store ptr %i.y, ptr getelementptr inbounds nuw (i8, ptr @memdb_vfs, i64 16), align 8, !tbaa !739
  store ptr @memdb_vfs, ptr %i.x, align 8, !tbaa !739
  br label %bb.i

bb.i:                                             ; preds = %vfsUnlink.exit.thread39, %vfsUnlink.exit.thread
  br i1 %.not.i1633, label %sqlite3_vfs_register.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.z(ptr noundef nonnull %.0.i1932) #57, !inline_history !3343
  br label %sqlite3_vfs_register.exit

sqlite3_vfs_register.exit:                        ; preds = %bb.a, %bb.d, %bb.i, %bb.j, %sqlite3_vfs_find.exit
  %.0 = phi i32 [ 0, %bb.j ], [ 1, %sqlite3_vfs_find.exit ], [ %i.j, %bb.d ], [ 0, %bb.i ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @sqlite3PCacheBufferSetup(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #22 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @pcache1_g, i64 80), align 8, !tbaa !1299
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, null
  %spec.select19 = select i1 %i.b, i32 0, i32 %2  ; 9 uses
  %i.c = icmp eq i32 %spec.select19, 0            ; 2 uses
  %i.d = and i32 %1, -8
  %i.e = select i1 %i.c, i32 0, i32 %i.d          ; 2 uses
  store i32 %i.e, ptr getelementptr inbounds nuw (i8, ptr @pcache1_g, i64 92), align 4, !tbaa !1300
  store i32 %spec.select19, ptr getelementptr inbounds nuw (i8, ptr @pcache1_g, i64 136), align 8, !tbaa !1301
  store i32 %spec.select19, ptr getelementptr inbounds nuw (i8, ptr @pcache1_g, i64 96), align 8, !tbaa !1302
  %i.f = icmp sgt i32 %spec.select19, 90
  br i1 %i.f, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @pcache1_g, i64 100), align 4, !tbaa !1303
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @pcache1_g, i64 104), align 8, !tbaa !1304
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @pcache1_g, i64 140) monotonic, align 4
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.g = sdiv i32 %spec.select19, 10
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr getelementptr inbounds nuw (i8, ptr @pcache1_g, i64 100), align 4, !tbaa !1303
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @pcache1_g, i64 104), align 8, !tbaa !1304
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @pcache1_g, i64 128), align 8, !tbaa !1305
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @pcache1_g, i64 140) monotonic, align 4
  br i1 %i.c, label %bb.d, label %.lr.ph

.lr.ph:                                           ; preds = %.thread, %bb.c
  %i.i = sext i32 %i.e to i64                     ; 9 uses
  %i.j = add i32 %spec.select19, -1
  %xtraiter = and i32 %spec.select19, 7           ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.02223.prol = phi ptr [ %.022.prol, %.prol.preheader ], [ null, %.lr.ph ]
  %.022.prol = phi ptr [ %i.l, %.prol.preheader ], [ %0, %.lr.ph ] ; 5 uses
  %.121.prol = phi i32 [ %i.k, %.prol.preheader ], [ %spec.select19, %.lr.ph ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.k = add nsw i32 %.121.prol, -1               ; 2 uses
  store ptr %.02223.prol, ptr %.022.prol, align 8, !tbaa !1307
  %i.l = getelementptr inbounds i8, ptr %.022.prol, i64 %i.i ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !3344

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.022.lcssa.unr = phi ptr [ poison, %.lr.ph ], [ %.022.prol, %.prol.preheader ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph ], [ %i.l, %.prol.preheader ]
  %.02223.unr = phi ptr [ null, %.lr.ph ], [ %.022.prol, %.prol.preheader ]
  %.022.unr = phi ptr [ %0, %.lr.ph ], [ %i.l, %.prol.preheader ]
  %.121.unr = phi i32 [ %spec.select19, %.lr.ph ], [ %i.k, %.prol.preheader ]
  %i.m = icmp ult i32 %i.j, 7
  br i1 %i.m, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.02223 = phi ptr [ %i.t, %.lr.ph.new ], [ %.02223.unr, %.prol.loopexit ]
  %.022 = phi ptr [ %i.v, %.lr.ph.new ], [ %.022.unr, %.prol.loopexit ] ; 3 uses
  %.121 = phi i32 [ %i.u, %.lr.ph.new ], [ %.121.unr, %.prol.loopexit ]
  store ptr %.02223, ptr %.022, align 8, !tbaa !1307
  %i.n = getelementptr inbounds i8, ptr %.022, i64 %i.i ; 3 uses
  store ptr %.022, ptr %i.n, align 8, !tbaa !1307
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 %i.i ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !1307
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 %i.i ; 3 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !1307
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %i.i ; 3 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !1307
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.i ; 3 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !1307
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.i ; 3 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !1307
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.i ; 4 uses
  %i.u = add nsw i32 %.121, -8                    ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !1307
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 %i.i ; 2 uses
  %.not18.7 = icmp eq i32 %i.u, 0
  br i1 %.not18.7, label %._crit_edge, label %.lr.ph.new, !llvm.loop !3345

._crit_edge:                                      ; preds = %.lr.ph.new, %.prol.loopexit
  %.022.lcssa = phi ptr [ %.022.lcssa.unr, %.prol.loopexit ], [ %i.t, %.lr.ph.new ]
  %.lcssa = phi ptr [ %.lcssa.unr, %.prol.loopexit ], [ %i.v, %.lr.ph.new ]
  store ptr %.022.lcssa, ptr getelementptr inbounds nuw (i8, ptr @pcache1_g, i64 128), align 8, !tbaa !1305
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.0.lcssa = phi ptr [ %.lcssa, %._crit_edge ], [ %0, %bb.c ]
  store ptr %.0.lcssa, ptr getelementptr inbounds nuw (i8, ptr @pcache1_g, i64 112), align 8, !tbaa !3346
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @sqlite3_shutdown() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 340), align 4, !tbaa !715
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr @unixBigLock, align 8, !tbaa !740
  tail call void @sqlite3_reset_auto_extension()
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 340), align 4, !tbaa !715
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 356), align 4, !tbaa !736
  %.not1 = icmp eq i32 %i.b, 0
  br i1 %.not1, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 192), align 8, !tbaa !3350 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %sqlite3PcacheShutdown.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 176), align 8, !tbaa !738
  tail call void %i.c(ptr noundef %i.d) #57, !inline_history !3347
  br label %sqlite3PcacheShutdown.exit

sqlite3PcacheShutdown.exit:                       ; preds = %bb.d, %bb.e
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 356), align 4, !tbaa !736
  br label %bb.f

bb.f:                                             ; preds = %sqlite3PcacheShutdown.exit, %bb.c
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 352), align 8, !tbaa !725
  %.not2 = icmp eq i32 %i.e, 0
  br i1 %.not2, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 80), align 8, !tbaa !3351 ; 2 uses
  %.not.i4 = icmp eq ptr %i.f, null
  br i1 %.not.i4, label %sqlite3MallocEnd.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 88), align 8, !tbaa !729
  tail call void %i.f(ptr noundef %i.g) #57, !inline_history !3348
  br label %sqlite3MallocEnd.exit

sqlite3MallocEnd.exit:                            ; preds = %bb.g, %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @mem0, i8 0, i64 32, i1 false)
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 352), align 8, !tbaa !725
  store ptr null, ptr @sqlite3_data_directory, align 8, !tbaa !741
  store ptr null, ptr @sqlite3_temp_directory, align 8, !tbaa !741
  br label %bb.i

bb.i:                                             ; preds = %sqlite3MallocEnd.exit, %bb.f
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 348), align 4, !tbaa !724
  %.not3 = icmp eq i32 %i.h, 0
  br i1 %.not3, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 104), align 8, !tbaa !3352 ; 2 uses
  %.not.i5 = icmp eq ptr %i.i, null
  br i1 %.not.i5, label %sqlite3MutexEnd.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.j = tail call i32 %i.i() #57, !inline_history !3349 ; 0 uses
  br label %sqlite3MutexEnd.exit

sqlite3MutexEnd.exit:                             ; preds = %bb.j, %bb.k
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 348), align 4, !tbaa !724
  br label %bb.l

bb.l:                                             ; preds = %sqlite3MutexEnd.exit, %bb.i
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef range(i32 0, 22) i32 @sqlite3_config(i32 noundef %0, ...) local_unnamed_addr #0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 95 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #57
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 340), align 4, !tbaa !715
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond = icmp ugt i32 %0, 63
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = zext nneg i32 %0 to i64
  %i.c = shl nuw i64 1, %i.b
  %i.d = and i64 %i.c, 16842752
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 21, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.1807, i32 noundef 187811, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !0
  br label %bb.cr

bb.e:                                             ; preds = %bb.c, %bb.a
  call void @llvm.va_start.p0(ptr nonnull %1)
  switch i32 %0, label %bb.cp [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 10, label %bb.i
    i32 11, label %bb.m
    i32 4, label %bb.q
    i32 5, label %bb.u
    i32 9, label %bb.aa
    i32 27, label %bb.ae
    i32 7, label %bb.ai
    i32 24, label %bb.ao
    i32 14, label %bb.cq
    i32 30, label %bb.cl
    i32 18, label %bb.as
    i32 19, label %bb.aw
    i32 13, label %bb.bc
    i32 16, label %bb.bh
    i32 17, label %bb.bm
    i32 20, label %bb.bq
    i32 22, label %bb.bu
    i32 25, label %bb.bz
    i32 26, label %bb.cd
    i32 29, label %bb.ch
  ]

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4, !tbaa !710
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 5), align 1, !tbaa !1308
  br label %bb.cq

bb.g:                                             ; preds = %bb.e
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4, !tbaa !710
end_hunk_0
begin_hunk_1_@btreeEndTransaction:bb.a

bb.k:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.ao(ptr noundef nonnull %i.u) #57, !inline_history !3739
  br label %sqlite3_free.exitthread-pre-split.i

sqlite3_free.exitthread-pre-split.i:              ; preds = %bb.k, %bb.j, %sqlite3_mutex_enter.exit.i.i, %.lr.ph.i15
  %.1.ph.i = phi ptr [ %.020.i, %bb.k ], [ %.020.i, %bb.j ], [ %.020.i, %sqlite3_mutex_enter.exit.i.i ], [ %i.x, %.lr.ph.i15 ] ; 2 uses
  %.pr.i = load ptr, ptr %.1.ph.i, align 8, !tbaa !1464
  br label %sqlite3_free.exit.i

sqlite3_free.exit.i:                              ; preds = %sqlite3_free.exitthread-pre-split.i, %bb.f
  %i.ap = phi ptr [ %.pr.i, %sqlite3_free.exitthread-pre-split.i ], [ %i.y, %bb.f ] ; 2 uses
  %.1.i = phi ptr [ %.1.ph.i, %sqlite3_free.exitthread-pre-split.i ], [ %.020.i, %bb.f ]
  %.not.i16 = icmp eq ptr %i.ap, null
  br i1 %.not.i16, label %._crit_edge.i, label %.lr.ph.i15, !llvm.loop !3741

._crit_edge.i:                                    ; preds = %sqlite3_free.exit.i, %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1463
  %i.as = icmp eq ptr %i.ar, %0
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i
  store ptr null, ptr %i.aq, align 8, !tbaa !1463
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %.pre.pre = load i32, ptr %.phi.trans.insert.phi.trans.insert, align 4, !tbaa !1489
  br label %.sink.split.i

bb.m:                                             ; preds = %._crit_edge.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.au = load i32, ptr %i.at, align 4, !tbaa !1489 ; 2 uses
  %i.av = icmp eq i32 %i.au, 2
  br i1 %i.av, label %.sink.split.i, label %clearAllSharedCacheTableLocks.exit

.sink.split.i:                                    ; preds = %bb.m, %bb.l
  %.pre = phi i32 [ %.pre.pre, %bb.l ], [ 2, %bb.m ]
  %.sink26.i = phi i16 [ -193, %bb.l ], [ -129, %bb.m ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 8, !tbaa !1036
  %i.ay = and i16 %i.ax, %.sink26.i
  store i16 %i.ay, ptr %i.aw, align 8, !tbaa !1036
  br label %clearAllSharedCacheTableLocks.exit

clearAllSharedCacheTableLocks.exit:               ; preds = %bb.m, %.sink.split.i
  %i.az = phi i32 [ %i.au, %bb.m ], [ %.pre, %.sink.split.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.bb = add nsw i32 %i.az, -1                   ; 2 uses
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !1489
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.n, label %.thread

bb.n:                                             ; preds = %clearAllSharedCacheTableLocks.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i8 0, ptr %i.bd, align 4, !tbaa !984
  br label %.thread

.thread:                                          ; preds = %bb.a, %clearAllSharedCacheTableLocks.exit, %bb.n
  store i8 0, ptr %i.e, align 8, !tbaa !977
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !984
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.o, label %unlockBtreeIfUnused.exit

bb.o:                                             ; preds = %.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !987 ; 2 uses
  %.not.i17 = icmp eq ptr %i.bi, null
  br i1 %.not.i17, label %unlockBtreeIfUnused.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr null, ptr %i.bh, align 8, !tbaa !987
  %i.bj = getelementptr i8, ptr %i.bi, i64 112
  %.val.i = load ptr, ptr %i.bj, align 8, !tbaa !1010 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !896 ; 2 uses
  tail call fastcc void @sqlite3PcacheRelease(ptr noundef %.val.i), !inline_history !142
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 288
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !632
  %i.bo = getelementptr i8, ptr %i.bn, i64 24
  %.val.i.i.i.i = load i64, ptr %i.bo, align 8, !tbaa !1068
  %i.bp = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.bp, label %bb.q, label %unlockBtreeIfUnused.exit

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @pagerUnlockAndRollback(ptr noundef nonnull %i.bl), !inline_history !143
  br label %unlockBtreeIfUnused.exit

unlockBtreeIfUnused.exit:                         ; preds = %bb.q, %bb.p, %bb.o, %.thread, %downgradeAllSharedCacheTableLocks.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @incrVacuumStep(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = alloca ptr, align 8                      ; 9 uses
  %i.h = icmp ult i32 %2, 2
  br i1 %i.h, label %ptrmapPageno.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i32, ptr %i.i, align 8, !tbaa !1061
  %i.k = udiv i32 %i.j, 5
  %i.l = add nuw nsw i32 %i.k, 1
  %i.m = add i32 %2, -2                           ; 2 uses
  %i.n = urem i32 %i.m, %i.l
  %i.o = sub nuw i32 %i.m, %i.n                   ; 2 uses
  %i.p = load i32, ptr @sqlite3PendingByte, align 4, !tbaa !570
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.r = load i32, ptr %i.q, align 4, !tbaa !657
  %i.s = udiv i32 %i.p, %i.r
  %i.t = add nuw i32 %i.o, 1
  %i.u = icmp eq i32 %i.t, %i.s
  %spec.select.v.i = select i1 %i.u, i32 3, i32 2
  %spec.select.i = add i32 %spec.select.v.i, %i.o
  br label %ptrmapPageno.exit

ptrmapPageno.exit:                                ; preds = %bb.a, %bb.b
  %.010.i = phi i32 [ %spec.select.i, %bb.b ], [ 0, %bb.a ]
  %i.v = icmp eq i32 %.010.i, %2
  br i1 %i.v, label %bb.ab, label %bb.c

bb.c:                                             ; preds = %ptrmapPageno.exit
  %i.w = load i32, ptr @sqlite3PendingByte, align 4, !tbaa !570
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.y = load i32, ptr %i.x, align 4, !tbaa !657
  %i.z = udiv i32 %i.w, %i.y
  %i.aa = add i32 %i.z, 1
  %.not = icmp eq i32 %2, %i.aa
  br i1 %.not, label %bb.ab, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #57
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !987
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !989 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 36
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !733
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 37
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !733
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 38
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !733
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 39
  %i.am = load i8, ptr %i.al, align 1, !tbaa !733
  %i.an = or i8 %i.ai, %i.ag
  %i.ao = or i8 %i.an, %i.ak
  %i.ap = or i8 %i.ao, %i.am
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = call fastcc i32 @ptrmapGet(ptr noundef nonnull %0, i32 noundef %2, ptr noundef %i.a, ptr noundef nonnull %i.b) ; 2 uses
  %.not66 = icmp eq i32 %i.ar, 0
  br i1 %.not66, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.as = load i8, ptr %i.a, align 1, !tbaa !733  ; 2 uses
  switch i8 %i.as, label %bb.k [
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 77284, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.at = icmp eq i32 %3, 0
  br i1 %i.at, label %bb.i, label %.thread93

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #57
  %i.au = call fastcc i32 @allocateBtreePage(ptr noundef nonnull %0, ptr noundef %i.d, ptr noundef %i.c, i32 noundef %2, i8 noundef zeroext 1) ; 2 uses
  %.not70 = icmp eq i32 %i.au, 0
  br i1 %.not70, label %bb.j, label %.critedge72

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !1514
  call fastcc void @releasePage(ptr noundef %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #57
  br label %.thread93

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #57
  %i.aw = call fastcc i32 @btreeGetPage(ptr noundef nonnull %0, i32 noundef %2, ptr noundef %i.f, i32 noundef 0) ; 2 uses
  %.not67 = icmp eq i32 %i.aw, 0
  br i1 %.not67, label %bb.l, label %.thread97

bb.l:                                             ; preds = %bb.k
  %i.ax = icmp eq i32 %3, 0                       ; 3 uses
  %spec.select = select i1 %i.ax, i8 2, i8 0
  %spec.select73 = select i1 %i.ax, i32 %1, i32 0
  %i.ay = getelementptr i8, ptr %0, i64 64        ; 2 uses
  br i1 %i.ax, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #57
  %.val.us = load i32, ptr %i.ay, align 8, !tbaa !997
  %i.az = call fastcc i32 @allocateBtreePage(ptr noundef nonnull %0, ptr noundef %i.g, ptr noundef %i.e, i32 noundef %1, i8 noundef zeroext 2) ; 2 uses
  %.not68.us = icmp eq i32 %i.az, 0
  br i1 %.not68.us, label %bb.m, label %.split105.us

bb.m:                                             ; preds = %.split.us
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !1514 ; 2 uses
  %.not.i75.us = icmp eq ptr %i.ba, null
  br i1 %.not.i75.us, label %releasePage.exit78.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr i8, ptr %i.ba, i64 112
  %.val.i76.us = load ptr, ptr %i.bb, align 8, !tbaa !1010 ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i76.us, i64 52
  %i.bd = load i16, ptr %i.bc, align 4, !tbaa !895
  %i.be = and i16 %i.bd, 32
  %.not.i.i.i77.us = icmp eq i16 %i.be, 0
  br i1 %.not.i.i.i77.us, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.i76.us, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !896 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 152 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !897
  %i.bj = add nsw i32 %i.bi, -1
  store i32 %i.bj, ptr %i.bh, align 8, !tbaa !897
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 168 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !898
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i76.us, i64 32
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !899
  store ptr %.val.i76.us, ptr %i.bk, align 8, !tbaa !898
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !900 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.val.i76.us, i64 48
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !901
  %i.br = add i32 %i.bq, -1
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 200
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !630
  %i.bv = mul nsw i64 %i.bu, %i.bs
  %i.bw = getelementptr inbounds nuw i8, ptr %.val.i76.us, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !894
  %i.by = load ptr, ptr %i.bo, align 8, !tbaa !863
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 144
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !903
  %i.cb = call i32 %i.ca(ptr noundef nonnull %i.bo, i64 noundef %i.bv, ptr noundef %i.bx) #57, !inline_history !193 ; 0 uses
  br label %releasePage.exit78.us

bb.p:                                             ; preds = %bb.n
  call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val.i76.us)
  br label %releasePage.exit78.us

releasePage.exit78.us:                            ; preds = %bb.p, %bb.o, %bb.m
  %i.cc = load i32, ptr %i.e, align 4, !tbaa !570 ; 2 uses
  %i.cd = icmp ugt i32 %i.cc, %.val.us
  br i1 %i.cd, label %.split107.us, label %.split109.us

.split109.us:                                     ; preds = %releasePage.exit78.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #57
  br label %.split109

.split:                                           ; preds = %bb.l, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #57
  %.val = load i32, ptr %i.ay, align 8, !tbaa !997
  %i.ce = call fastcc i32 @allocateBtreePage(ptr noundef nonnull %0, ptr noundef %i.g, ptr noundef %i.e, i32 noundef %spec.select73, i8 noundef zeroext %spec.select) ; 2 uses
  %.not68 = icmp eq i32 %i.ce, 0
  br i1 %.not68, label %bb.t, label %.split105.us

.split105.us:                                     ; preds = %.split, %.split.us
  %.us-phi = phi i32 [ %i.az, %.split.us ], [ %i.ce, %.split ] ; 3 uses
  %i.cf = load ptr, ptr %i.f, align 8, !tbaa !1514 ; 2 uses
  %.not.i = icmp eq ptr %i.cf, null
  br i1 %.not.i, label %releasePage.exit.thread, label %bb.q

bb.q:                                             ; preds = %.split105.us
  %i.cg = getelementptr i8, ptr %i.cf, i64 112
  %.val.i = load ptr, ptr %i.cg, align 8, !tbaa !1010 ; 7 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val.i, i64 52
  %i.ci = load i16, ptr %i.ch, align 4, !tbaa !895
  %i.cj = and i16 %i.ci, 32
  %.not.i.i.i = icmp eq i16 %i.cj, 0
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ck = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !896 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 152 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !897
  %i.co = add nsw i32 %i.cn, -1
  store i32 %i.co, ptr %i.cm, align 8, !tbaa !897
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 168 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !898
  %i.cr = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !899
  store ptr %.val.i, ptr %i.cp, align 8, !tbaa !898
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !900 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.val.i, i64 48
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !901
  %i.cw = add i32 %i.cv, -1
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cl, i64 200
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !630
  %i.da = mul nsw i64 %i.cz, %i.cx
  %i.db = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !894
  %i.dd = load ptr, ptr %i.ct, align 8, !tbaa !863
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 144
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !903
  %i.dg = call i32 %i.df(ptr noundef nonnull %i.ct, i64 noundef %i.da, ptr noundef %i.dc) #57, !inline_history !193 ; 0 uses
  br label %releasePage.exit.thread

bb.s:                                             ; preds = %bb.q
  call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val.i)
  br label %releasePage.exit.thread

bb.t:                                             ; preds = %.split
  %i.dh = load ptr, ptr %i.g, align 8, !tbaa !1514 ; 2 uses
  %.not.i75 = icmp eq ptr %i.dh, null
  br i1 %.not.i75, label %releasePage.exit78, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.di = getelementptr i8, ptr %i.dh, i64 112
  %.val.i76 = load ptr, ptr %i.di, align 8, !tbaa !1010 ; 7 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.val.i76, i64 52
  %i.dk = load i16, ptr %i.dj, align 4, !tbaa !895
  %i.dl = and i16 %i.dk, 32
  %.not.i.i.i77 = icmp eq i16 %i.dl, 0
  br i1 %.not.i.i.i77, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dm = getelementptr inbounds nuw i8, ptr %.val.i76, i64 40
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !896 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 152 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !897
  %i.dq = add nsw i32 %i.dp, -1
  store i32 %i.dq, ptr %i.do, align 8, !tbaa !897
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 168 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !898
  %i.dt = getelementptr inbounds nuw i8, ptr %.val.i76, i64 32
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !899
  store ptr %.val.i76, ptr %i.dr, align 8, !tbaa !898
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 72
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !900 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.val.i76, i64 48
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !901
  %i.dy = add i32 %i.dx, -1
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dn, i64 200
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !630
  %i.ec = mul nsw i64 %i.eb, %i.dz
  %i.ed = getelementptr inbounds nuw i8, ptr %.val.i76, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !894
  %i.ef = load ptr, ptr %i.dv, align 8, !tbaa !863
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 144
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !903
  %i.ei = call i32 %i.eh(ptr noundef nonnull %i.dv, i64 noundef %i.ec, ptr noundef %i.ee) #57, !inline_history !193 ; 0 uses
  br label %releasePage.exit78

bb.w:                                             ; preds = %bb.u
  call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val.i76)
  br label %releasePage.exit78

releasePage.exit78:                               ; preds = %bb.t, %bb.v, %bb.w
  %i.ej = load i32, ptr %i.e, align 4, !tbaa !570 ; 3 uses
  %i.ek = icmp ugt i32 %i.ej, %.val
  br i1 %i.ek, label %.split107.us, label %bb.aa

.split107.us:                                     ; preds = %releasePage.exit78, %releasePage.exit78.us
  %i.el = load ptr, ptr %i.f, align 8, !tbaa !1514 ; 2 uses
  %.not.i79 = icmp eq ptr %i.el, null
  br i1 %.not.i79, label %releasePage.exit82, label %bb.x

bb.x:                                             ; preds = %.split107.us
  %i.em = getelementptr i8, ptr %i.el, i64 112
  %.val.i80 = load ptr, ptr %i.em, align 8, !tbaa !1010 ; 7 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.val.i80, i64 52
  %i.eo = load i16, ptr %i.en, align 4, !tbaa !895
  %i.ep = and i16 %i.eo, 32
  %.not.i.i.i81 = icmp eq i16 %i.ep, 0
  br i1 %.not.i.i.i81, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eq = getelementptr inbounds nuw i8, ptr %.val.i80, i64 40
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !896 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 152 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !897
  %i.eu = add nsw i32 %i.et, -1
  store i32 %i.eu, ptr %i.es, align 8, !tbaa !897
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 168 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !898
  %i.ex = getelementptr inbounds nuw i8, ptr %.val.i80, i64 32
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !899
  store ptr %.val.i80, ptr %i.ev, align 8, !tbaa !898
  %i.ey = getelementptr inbounds nuw i8, ptr %i.er, i64 72
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !900 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.val.i80, i64 48
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !901
  %i.fc = add i32 %i.fb, -1
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.er, i64 200
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !630
  %i.fg = mul nsw i64 %i.ff, %i.fd
  %i.fh = getelementptr inbounds nuw i8, ptr %.val.i80, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !894
  %i.fj = load ptr, ptr %i.ez, align 8, !tbaa !863
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 144
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !903
  %i.fm = call i32 %i.fl(ptr noundef nonnull %i.ez, i64 noundef %i.fg, ptr noundef %i.fi) #57, !inline_history !193 ; 0 uses
  br label %releasePage.exit82

bb.z:                                             ; preds = %bb.x
  call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val.i80)
  br label %releasePage.exit82

releasePage.exit82:                               ; preds = %.split107.us, %bb.y, %bb.z
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 77336, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %releasePage.exit.thread

releasePage.exit.thread:                          ; preds = %releasePage.exit82, %.split105.us, %bb.r, %bb.s
  %.256.ph = phi i32 [ %.us-phi, %bb.s ], [ %.us-phi, %bb.r ], [ %.us-phi, %.split105.us ], [ 11, %releasePage.exit82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #57
  br label %.thread97

bb.aa:                                            ; preds = %releasePage.exit78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #57
  %i.fn = icmp ugt i32 %i.ej, %1
  br i1 %i.fn, label %.split, label %.split109, !llvm.loop !3742

.critedge72:                                      ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #57
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.g, %bb.e, %.critedge72
  %.5.ph = phi i32 [ %i.au, %.critedge72 ], [ %i.ar, %bb.e ], [ 11, %bb.g ], [ 101, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #57
  br label %bb.af

.thread93:                                        ; preds = %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #57
  br label %bb.ab

.thread97:                                        ; preds = %releasePage.exit.thread, %bb.k
  %.357.ph = phi i32 [ %i.aw, %bb.k ], [ %.256.ph, %releasePage.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #57
  br label %bb.af

.split109:                                        ; preds = %bb.aa, %.split109.us
  %.us-phi110 = phi i32 [ %i.cc, %.split109.us ], [ %i.ej, %bb.aa ]
  %i.fo = load ptr, ptr %i.f, align 8, !tbaa !1514 ; 2 uses
  %i.fp = load i32, ptr %i.b, align 4, !tbaa !570
  %i.fq = call fastcc i32 @relocatePage(ptr noundef nonnull %0, ptr noundef %i.fo, i8 noundef zeroext %i.as, i32 noundef %i.fp, i32 noundef %.us-phi110, i32 noundef %3) ; 2 uses
  call fastcc void @releasePage(ptr noundef %i.fo)
  %.not69 = icmp eq i32 %i.fq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #57
  br i1 %.not69, label %bb.ab, label %bb.af
end_hunk_1
begin_hunk_2_@sqlite3InitCallback:bb.a
bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.r, align 1, !tbaa !733   ; 2 uses
  %i.t = and i8 %i.s, -33
  %i.u = icmp eq i8 %i.t, 67
  br i1 %i.u, label %bb.h, label %bb.x

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !733
  %i.x = and i8 %i.w, -33
  %i.y = icmp eq i8 %i.x, 82
  br i1 %i.y, label %bb.i, label %bb.x

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 196 ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !963
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #57
  %i.ac = trunc i32 %i.d to i8
  store i8 %i.ac, ptr %i.aa, align 4, !tbaa !963
  %i.ad = load i8, ptr %i.o, align 1, !tbaa !733  ; 2 uses
  %i.ae = add i8 %i.ad, -48
  %.not21.i = icmp ult i8 %i.ae, 10
  br i1 %.not21.i, label %.lr.ph.i, label %sqlite3GetUInt32.exit.thread

.lr.ph.i:                                         ; preds = %bb.i, %bb.j
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.j ], [ 0, %bb.i ]
  %i.af = phi i8 [ %i.am, %bb.j ], [ %i.ad, %bb.i ]
  %.01422.i = phi i64 [ %i.aj, %bb.j ], [ 0, %bb.i ]
  %i.ag = mul i64 %.01422.i, 10
  %i.ah = zext nneg i8 %i.af to i64
  %i.ai = add nsw i64 %i.ah, -48
  %i.aj = add nsw i64 %i.ai, %i.ag                ; 3 uses
  %i.ak = icmp ugt i64 %i.aj, 4294967296
  br i1 %i.ak, label %sqlite3GetUInt32.exit.thread, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv.next.i
  %i.am = load i8, ptr %i.al, align 1, !tbaa !733 ; 3 uses
  %i.an = add i8 %i.am, -58
  %.not.i = icmp ult i8 %i.an, -10
  br i1 %.not.i, label %sqlite3GetUInt32.exit, label %.lr.ph.i, !llvm.loop !4226

sqlite3GetUInt32.exit.thread:                     ; preds = %.lr.ph.i, %bb.i
  store i32 0, ptr %i.z, align 4, !tbaa !570
  br label %bb.m

sqlite3GetUInt32.exit:                            ; preds = %bb.j
  %i.ao = trunc i64 %i.aj to i32                  ; 2 uses
  %.not17.i.not = icmp eq i8 %i.am, 0             ; 2 uses
  %spec.select.i = select i1 %.not17.i.not, i32 %i.ao, i32 0
  store i32 %spec.select.i, ptr %i.z, align 4, !tbaa !570
  br i1 %.not17.i.not, label %bb.k, label %bb.m

bb.k:                                             ; preds = %sqlite3GetUInt32.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !1753 ; 2 uses
  %i.ar = icmp ult i32 %i.aq, %i.ao
  br i1 %i.ar, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.as = icmp ne i32 %i.aq, 0
  %i.at = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 9), align 1
  %i.au = icmp ne i8 %i.at, 0
  %or.cond = select i1 %i.as, i1 %i.au, i1 false
  br i1 %or.cond, label %bb.n, label %bb.o

bb.m:                                             ; preds = %sqlite3GetUInt32.exit.thread, %sqlite3GetUInt32.exit
  %.old = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 9), align 1, !tbaa !1377
  %.old1.not = icmp eq i8 %.old, 0
  br i1 %.old1.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  tail call fastcc void @corruptSchema(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.394)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l, %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 198 ; 3 uses
  %i.aw = load i8, ptr %i.av, align 2
  %i.ax = and i8 %i.aw, -2
  store i8 %i.ax, ptr %i.av, align 2
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 200 ; 2 uses
  store ptr %2, ptr %i.ay, align 8, !tbaa !1352
  store ptr null, ptr %i.a, align 8, !tbaa !889
  %i.az = load ptr, ptr %i.q, align 8, !tbaa !741
  %i.ba = call fastcc i32 @sqlite3Prepare(ptr noundef nonnull %i.b, ptr noundef %i.az, i32 noundef -1, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef null) ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !932 ; 5 uses
  store i8 %i.ab, ptr %i.aa, align 4, !tbaa !963
  %.not81 = icmp eq i32 %i.bc, 0
  br i1 %.not81, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = load i8, ptr %i.av, align 2
  %i.be = and i8 %i.bd, 1
  %.not82 = icmp eq i8 %i.be, 0
  br i1 %.not82, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !1754
  %i.bh = icmp sgt i32 %i.bc, %i.bg
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 %i.bc, ptr %i.bf, align 4, !tbaa !1754
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  switch i32 %i.bc, label %bb.u [
    i32 7, label %bb.t
    i32 9, label %bb.w
  ]

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @sqlite3OomFault(ptr noundef nonnull %i.b)
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bi = and i32 %i.bc, 255
  %.not84 = icmp eq i32 %i.bi, 6
  br i1 %.not84, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = tail call ptr @sqlite3_errmsg(ptr noundef nonnull %i.b)
  tail call fastcc void @corruptSchema(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %i.bj)
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %bb.p, %bb.u, %bb.v, %bb.t, %bb.o
  store ptr @sqlite3StdType, ptr %i.ay, align 8, !tbaa !1352
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !889
  %i.bl = tail call i32 @sqlite3_finalize(ptr noundef %i.bk) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #57
  br label %sqlite3IndexHasDuplicateRootPage.exit.thread

bb.x:                                             ; preds = %bb.h, %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !741 ; 2 uses
  %i.bo = icmp ne ptr %i.bn, null
  %.not80 = icmp eq i8 %i.s, 0
  %or.cond133 = and i1 %i.bo, %.not80
  br i1 %or.cond133, label %.thread103, label %bb.y

.thread:                                          ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !741 ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.y, label %.thread103

bb.y:                                             ; preds = %.thread, %bb.x
  tail call fastcc void @corruptSchema(ptr noundef nonnull %0, ptr noundef %2, ptr noundef null)
  br label %sqlite3IndexHasDuplicateRootPage.exit.thread

.thread103:                                       ; preds = %bb.x, %.thread
  %i.bs = phi ptr [ %i.bq, %.thread ], [ %i.bn, %bb.x ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !605
  %i.bv = sext i32 %i.d to i64
  %i.bw = getelementptr inbounds [32 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !875
  %i.by = tail call fastcc ptr @sqlite3FindIndex(ptr noundef nonnull %i.b, ptr noundef nonnull %i.bs, ptr noundef %i.bx) ; 4 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.thread103
  tail call fastcc void @corruptSchema(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.395)
  br label %sqlite3IndexHasDuplicateRootPage.exit.thread

bb.aa:                                            ; preds = %.thread103
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 88 ; 2 uses
  %i.cb = load i8, ptr %i.o, align 1, !tbaa !733  ; 2 uses
  %i.cc = add i8 %i.cb, -48
  %.not21.i85 = icmp ult i8 %i.cc, 10
  br i1 %.not21.i85, label %.lr.ph.i88, label %sqlite3GetUInt32.exit97.thread

.lr.ph.i88:                                       ; preds = %bb.aa, %bb.ab
  %indvars.iv.i89 = phi i64 [ %indvars.iv.next.i91, %bb.ab ], [ 0, %bb.aa ]
  %i.cd = phi i8 [ %i.ck, %bb.ab ], [ %i.cb, %bb.aa ]
  %.01422.i90 = phi i64 [ %i.ch, %bb.ab ], [ 0, %bb.aa ]
  %i.ce = mul i64 %.01422.i90, 10
  %i.cf = zext nneg i8 %i.cd to i64
  %i.cg = add nsw i64 %i.cf, -48
  %i.ch = add nsw i64 %i.cg, %i.ce                ; 3 uses
  %i.ci = icmp ugt i64 %i.ch, 4294967296
  br i1 %i.ci, label %sqlite3GetUInt32.exit97.thread, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i88
  %indvars.iv.next.i91 = add nuw nsw i64 %indvars.iv.i89, 1 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv.next.i91
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !733 ; 3 uses
  %i.cl = add i8 %i.ck, -58
  %.not.i92 = icmp ult i8 %i.cl, -10
  br i1 %.not.i92, label %sqlite3GetUInt32.exit97, label %.lr.ph.i88, !llvm.loop !4226

sqlite3GetUInt32.exit97.thread:                   ; preds = %.lr.ph.i88, %bb.aa
  store i32 0, ptr %i.ca, align 4, !tbaa !570
  br label %bb.af

sqlite3GetUInt32.exit97:                          ; preds = %bb.ab
  %i.cm = trunc i64 %i.ch to i32                  ; 2 uses
  %.not17.i94 = icmp ne i8 %i.ck, 0               ; 2 uses
  %spec.select.i95 = select i1 %.not17.i94, i32 0, i32 %i.cm ; 3 uses
  store i32 %spec.select.i95, ptr %i.ca, align 4, !tbaa !570
  %i.cn = icmp ult i32 %spec.select.i95, 2
  %or.cond109 = or i1 %.not17.i94, %i.cn
  br i1 %or.cond109, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %sqlite3GetUInt32.exit97
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !1753
  %i.cq = icmp ult i32 %i.cp, %i.cm
  br i1 %i.cq, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cr = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !1257
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %.09.i = load ptr, ptr %i.ct, align 8, !tbaa !1157 ; 2 uses
  %.not10.i = icmp eq ptr %.09.i, null
  br i1 %.not10.i, label %sqlite3IndexHasDuplicateRootPage.exit.thread, label %.lr.ph.i98

bb.ae:                                            ; preds = %.lr.ph.i98
  %i.cu = getelementptr inbounds nuw i8, ptr %.011.i, i64 40
  %.0.i = load ptr, ptr %i.cu, align 8, !tbaa !1157 ; 2 uses
  %.not.i100 = icmp eq ptr %.0.i, null
  br i1 %.not.i100, label %sqlite3IndexHasDuplicateRootPage.exit.thread, label %.lr.ph.i98, !llvm.loop !239

.lr.ph.i98:                                       ; preds = %bb.ad, %bb.ae
  %.011.i = phi ptr [ %.0.i, %bb.ae ], [ %.09.i, %bb.ad ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.011.i, i64 88
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !1802
  %i.cx = icmp ne i32 %i.cw, %spec.select.i95
  %.not8.i = icmp eq ptr %.011.i, %i.by
  %or.cond.i = or i1 %.not8.i, %i.cx
  br i1 %or.cond.i, label %bb.ae, label %sqlite3IndexHasDuplicateRootPage.exit

sqlite3IndexHasDuplicateRootPage.exit:            ; preds = %.lr.ph.i98
  %i.cy = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 9), align 1
  %.not110 = icmp eq i8 %i.cy, 0
  br i1 %.not110, label %sqlite3IndexHasDuplicateRootPage.exit.thread, label %bb.ag

bb.af:                                            ; preds = %sqlite3GetUInt32.exit97.thread, %bb.ac, %sqlite3GetUInt32.exit97
  %.old2 = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 9), align 1, !tbaa !1377
  %.old3.not = icmp eq i8 %.old2, 0
  br i1 %.old3.not, label %sqlite3IndexHasDuplicateRootPage.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %sqlite3IndexHasDuplicateRootPage.exit, %bb.af
  tail call fastcc void @corruptSchema(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.394)
  br label %sqlite3IndexHasDuplicateRootPage.exit.thread

sqlite3IndexHasDuplicateRootPage.exit.thread:     ; preds = %bb.ae, %bb.ad, %bb.e, %bb.y, %bb.w, %sqlite3IndexHasDuplicateRootPage.exit, %bb.ag, %bb.af, %bb.z, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 0, %bb.z ], [ 0, %bb.af ], [ 0, %bb.ag ], [ 0, %sqlite3IndexHasDuplicateRootPage.exit ], [ 0, %bb.w ], [ 0, %bb.y ], [ 0, %bb.e ], [ 0, %bb.ad ], [ 0, %bb.ae ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3AnalysisLoad(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.analysisInfo, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #57
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !605  ; 2 uses
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !642  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.042 = load ptr, ptr %i.g, align 8, !tbaa !646 ; 2 uses
  %.not43 = icmp eq ptr %.042, null
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.044 = phi ptr [ %.0, %.lr.ph ], [ %.042, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.044, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !648
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1084
  %i.l = and i32 %i.k, -17
  store i32 %i.l, ptr %i.j, align 8, !tbaa !1084
  %.0 = load ptr, ptr %.044, align 8, !tbaa !646  ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !4227

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %.145 = load ptr, ptr %i.m, align 8, !tbaa !646 ; 2 uses
  %.not3446 = icmp eq ptr %.145, null
  br i1 %.not3446, label %._crit_edge50, label %.lr.ph49

.lr.ph49:                                         ; preds = %._crit_edge, %.lr.ph49
  %.147 = phi ptr [ %.1, %.lr.ph49 ], [ %.145, %._crit_edge ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.147, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !648
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 99 ; 2 uses
  %i.q = load i16, ptr %i.p, align 1
  %i.r = and i16 %i.q, -129
  store i16 %i.r, ptr %i.p, align 1
  %.1 = load ptr, ptr %.147, align 8, !tbaa !646  ; 2 uses
  %.not34 = icmp eq ptr %.1, null
  br i1 %.not34, label %._crit_edge50.loopexit, label %.lr.ph49, !llvm.loop !4228

._crit_edge50.loopexit:                           ; preds = %.lr.ph49
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !605
  br label %._crit_edge50

._crit_edge50:                                    ; preds = %._crit_edge50.loopexit, %._crit_edge
  %i.s = phi ptr [ %.pre, %._crit_edge50.loopexit ], [ %i.b, %._crit_edge ]
  store ptr %0, ptr %2, align 8, !tbaa !1811
  %i.t = getelementptr inbounds [32 x i8], ptr %i.s, i64 %i.c
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !875  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !1812
  %i.w = tail call fastcc ptr @sqlite3FindTable(ptr noundef nonnull %0, ptr noundef nonnull @.str.406, ptr noundef %i.u) ; 2 uses
  %.not35 = icmp eq ptr %i.w, null
  br i1 %.not35, label %sqlite3DbFreeNN.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge50
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 63
  %i.y = load i8, ptr %i.x, align 1, !tbaa !1147
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.c, label %sqlite3DbFreeNN.exit

bb.c:                                             ; preds = %bb.b
  %i.aa = tail call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.407, ptr noundef %i.u) ; 13 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %sqlite3DbFreeNN.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = call i32 @sqlite3_exec(ptr noundef nonnull %0, ptr noundef nonnull %i.aa, ptr noundef nonnull @analysisLoader, ptr noundef nonnull %2, ptr noundef null) ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !641
  %i.af = icmp ult ptr %i.aa, %i.ae
  br i1 %i.af, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !696
  %.not22.i = icmp ult ptr %i.aa, %i.ah
  br i1 %.not22.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !601
  store ptr %i.aj, ptr %i.aa, align 8, !tbaa !597
  store ptr %i.aa, ptr %i.ai, align 8, !tbaa !601
  br label %sqlite3DbFreeNN.exit

bb.g:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !640
  %.not23.i62 = icmp ult ptr %i.aa, %i.al
  br i1 %.not23.i62, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !599
  store ptr %i.an, ptr %i.aa, align 8, !tbaa !597
  store ptr %i.aa, ptr %i.am, align 8, !tbaa !599
  br label %sqlite3DbFreeNN.exit

bb.i:                                             ; preds = %bb.g, %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !639
  %.not24.i = icmp eq ptr %i.ap, null
  br i1 %.not24.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call fastcc void @measureAllocationSize(ptr noundef nonnull %0, ptr noundef nonnull %i.aa)
  br label %sqlite3DbFreeNN.exit

bb.k:                                             ; preds = %bb.i
  %i.aq = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  call void %i.as(ptr noundef nonnull %i.ar) #57, !inline_history !949
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.m, %bb.l
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.au = call i32 %i.at(ptr noundef nonnull %i.aa) #57, !inline_history !37
  %i.av = sext i32 %i.au to i64
  %i.aw = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.ax = sub nsw i64 %i.aw, %i.av
  store i64 %i.ax, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.az = add nsw i64 %i.ay, -1
  store i64 %i.az, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  call void %i.ba(ptr noundef nonnull %i.aa) #57, !inline_history !950
  %i.bb = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i4.i.i, label %sqlite3DbFreeNN.exit, label %bb.n

bb.n:                                             ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  call void %i.bc(ptr noundef nonnull %i.bb) #57, !inline_history !951
  br label %sqlite3DbFreeNN.exit

bb.o:                                             ; preds = %bb.k
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  call void %i.bd(ptr noundef nonnull %i.aa) #57, !inline_history !950
  br label %sqlite3DbFreeNN.exit

sqlite3DbFreeNN.exit:                             ; preds = %bb.o, %bb.n, %sqlite3_mutex_enter.exit.i.i, %bb.j, %bb.h, %bb.f, %bb.c, %bb.b, %._crit_edge50
  %.031 = phi i32 [ 0, %._crit_edge50 ], [ 7, %bb.c ], [ 0, %bb.b ], [ %i.ac, %bb.f ], [ %i.ac, %bb.h ], [ %i.ac, %bb.j ], [ %i.ac, %sqlite3_mutex_enter.exit.i.i ], [ %i.ac, %bb.n ], [ %i.ac, %bb.o ] ; 2 uses
  %.251 = load ptr, ptr %i.m, align 8, !tbaa !646 ; 2 uses
  %.not3652 = icmp eq ptr %.251, null
  br i1 %.not3652, label %._crit_edge56, label %.lr.ph55

.lr.ph55:                                         ; preds = %sqlite3DbFreeNN.exit, %sqlite3DefaultRowEst.exit
  %.253 = phi ptr [ %.2, %sqlite3DefaultRowEst.exit ], [ %.251, %sqlite3DbFreeNN.exit ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.253, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !648 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 99
  %i.bh = load i16, ptr %i.bg, align 1
  %i.bi = and i16 %i.bh, 128
  %.not37 = icmp eq i16 %i.bi, 0
  br i1 %.not37, label %bb.p, label %sqlite3DefaultRowEst.exit

bb.p:                                             ; preds = %.lr.ph55
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1813 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 94 ; 3 uses
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !1160
end_hunk_2
begin_hunk_3_@fkParentIsModified:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !570  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph37, label %.critedge

.lr.ph37:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 54
  %i.e = load i16, ptr %i.d, align 2, !tbaa !1151 ; 3 uses
  %.not2934 = icmp sgt i16 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %.not2934, label %.lr.ph37.split, label %.critedge

.lr.ph37.split:                                   ; preds = %.lr.ph37
  %.not51 = icmp eq i32 %3, 0
  %wide.trip.count84 = zext nneg i32 %i.b to i64  ; 2 uses
  %wide.trip.count74 = zext nneg i16 %i.e to i64  ; 2 uses
  %wide.trip.count79 = zext nneg i16 %i.e to i64  ; 2 uses
  br i1 %.not51, label %.lr.ph, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph37.split, %..critedge30_crit_edge.us
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %..critedge30_crit_edge.us ], [ 0, %.lr.ph37.split ] ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv66
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2091
  %.fr52 = freeze ptr %i.j                        ; 2 uses
  %.not.us = icmp eq ptr %.fr52, null
  br i1 %.not.us, label %.lr.ph.split.us.us, label %.lr.ph.split.us38

.lr.ph.split.us38:                                ; preds = %.lr.ph.us, %sqlite3StrICmp.exit.us40
  %indvars.iv = phi i64 [ %indvars.iv.next, %sqlite3StrICmp.exit.us40 ], [ 0, %.lr.ph.us ] ; 4 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !570
  %i.m = icmp sgt i32 %i.l, -1
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us38
  %i.n = load i16, ptr %i.f, align 4, !tbaa !1190
  %i.o = sext i16 %i.n to i64
  %i.p = icmp eq i64 %indvars.iv, %i.o
  br i1 %i.p, label %bb.c, label %sqlite3StrICmp.exit.us40

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us38
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !1150
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1154
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.013.i.us = phi ptr [ %i.s, %bb.c ], [ %i.ad, %bb.g ] ; 2 uses
  %.012.i.us = phi ptr [ %.fr52, %bb.c ], [ %i.ae, %bb.g ] ; 2 uses
  %i.t = load i8, ptr %.013.i.us, align 1, !tbaa !733 ; 3 uses
  %i.u = load i8, ptr %.012.i.us, align 1, !tbaa !733 ; 2 uses
  %i.v = icmp eq i8 %i.t, %i.u
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = zext i8 %i.t to i64
  %i.x = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !733
  %i.z = zext i8 %i.u to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !733
  %.not.i.us = icmp eq i8 %i.y, %i.ab
  br i1 %.not.i.us, label %bb.g, label %sqlite3StrICmp.exit.us40

bb.f:                                             ; preds = %bb.d
  %i.ac = icmp eq i8 %i.t, 0
  br i1 %i.ac, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.us, i64 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.us, i64 1
  br label %bb.d

sqlite3StrICmp.exit.us40:                         ; preds = %bb.e, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count74
  br i1 %exitcond.not, label %..critedge30_crit_edge.us, label %.lr.ph.split.us38, !llvm.loop !5461

.lr.ph.split.us.us:                               ; preds = %.lr.ph.us, %sqlite3StrICmp.exit.us.us46
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %sqlite3StrICmp.exit.us.us46 ], [ 0, %.lr.ph.us ] ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv61
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !570
  %i.ah = icmp sgt i32 %i.ag, -1
  br i1 %i.ah, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us.us
  %i.ai = load i16, ptr %i.f, align 4, !tbaa !1190
  %i.aj = sext i16 %i.ai to i64
  %i.ak = icmp eq i64 %indvars.iv61, %i.aj
  br i1 %i.ak, label %bb.i, label %sqlite3StrICmp.exit.us.us46

bb.i:                                             ; preds = %bb.h, %.lr.ph.split.us.us
  %i.al = load ptr, ptr %i.g, align 8, !tbaa !1150
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %indvars.iv61
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 14
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !1365
  %i.ap = and i16 %i.ao, 1
  %.not28.us.us45 = icmp eq i16 %i.ap, 0
  br i1 %.not28.us.us45, label %sqlite3StrICmp.exit.us.us46, label %.critedge

sqlite3StrICmp.exit.us.us46:                      ; preds = %bb.i, %bb.h
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count79
  br i1 %exitcond65.not, label %..critedge30_crit_edge.us, label %.lr.ph.split.us.us, !llvm.loop !5461

..critedge30_crit_edge.us:                        ; preds = %sqlite3StrICmp.exit.us40, %sqlite3StrICmp.exit.us.us46
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next67, %wide.trip.count84
  br i1 %exitcond70.not, label %.critedge, label %.lr.ph.us, !llvm.loop !5462

.lr.ph:                                           ; preds = %.lr.ph37.split, %..critedge30_crit_edge
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %..critedge30_crit_edge ], [ 0, %.lr.ph37.split ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv81
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2091
  %.fr = freeze ptr %i.as                         ; 2 uses
  %.not = icmp eq ptr %.fr, null
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %sqlite3StrICmp.exit.us.us
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %sqlite3StrICmp.exit.us.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv76
  %i.au = load i32, ptr %i.at, align 4, !tbaa !570
  %i.av = icmp sgt i32 %i.au, -1
  br i1 %i.av, label %bb.j, label %sqlite3StrICmp.exit.us.us

bb.j:                                             ; preds = %.lr.ph.split.us
  %i.aw = load ptr, ptr %i.g, align 8, !tbaa !1150
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %indvars.iv76
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 14
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !1365
  %i.ba = and i16 %i.az, 1
  %.not28.us.us = icmp eq i16 %i.ba, 0
  br i1 %.not28.us.us, label %sqlite3StrICmp.exit.us.us, label %.critedge

sqlite3StrICmp.exit.us.us:                        ; preds = %.lr.ph.split.us, %bb.j
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count79
  br i1 %exitcond80.not, label %..critedge30_crit_edge, label %.lr.ph.split.us, !llvm.loop !5461

.lr.ph.split:                                     ; preds = %.lr.ph, %sqlite3StrICmp.exit
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %sqlite3StrICmp.exit ], [ 0, %.lr.ph ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv71
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !570
  %i.bd = icmp sgt i32 %i.bc, -1
  br i1 %i.bd, label %bb.k, label %sqlite3StrICmp.exit

bb.k:                                             ; preds = %.lr.ph.split
  %i.be = load ptr, ptr %i.g, align 8, !tbaa !1150
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %indvars.iv71
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1154
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %bb.k
  %.013.i = phi ptr [ %i.bg, %bb.k ], [ %i.br, %bb.o ] ; 2 uses
  %.012.i = phi ptr [ %.fr, %bb.k ], [ %i.bs, %bb.o ] ; 2 uses
  %i.bh = load i8, ptr %.013.i, align 1, !tbaa !733 ; 3 uses
  %i.bi = load i8, ptr %.012.i, align 1, !tbaa !733 ; 2 uses
  %i.bj = icmp eq i8 %i.bh, %i.bi
  br i1 %i.bj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bk = icmp eq i8 %i.bh, 0
  br i1 %i.bk, label %.critedge, label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bl = zext i8 %i.bh to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !733
  %i.bo = zext i8 %i.bi to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !733
  %.not.i = icmp eq i8 %i.bn, %i.bq
  br i1 %.not.i, label %bb.o, label %sqlite3StrICmp.exit

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %.013.i, i64 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i, i64 1
  br label %bb.l

sqlite3StrICmp.exit:                              ; preds = %bb.n, %.lr.ph.split
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, %wide.trip.count74
  br i1 %exitcond75.not, label %..critedge30_crit_edge, label %.lr.ph.split, !llvm.loop !5461

..critedge30_crit_edge:                           ; preds = %sqlite3StrICmp.exit, %sqlite3StrICmp.exit.us.us
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count84
  br i1 %exitcond85.not, label %.critedge, label %.lr.ph, !llvm.loop !5462

.critedge:                                        ; preds = %..critedge30_crit_edge.us, %bb.i, %bb.f, %..critedge30_crit_edge, %bb.j, %bb.m, %bb.a, %.lr.ph37
  %.5 = phi i32 [ 1, %bb.m ], [ 1, %bb.j ], [ 0, %bb.a ], [ 1, %bb.f ], [ 0, %.lr.ph37 ], [ 1, %bb.i ], [ 0, %..critedge30_crit_edge ], [ 0, %..critedge30_crit_edge.us ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3TriggerColmask(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 1, 4) %4, ptr noundef nonnull %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %2, null                    ; 2 uses
  %7 = select i1 %.not, i32 129, i32 130          ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 63
  %i.b = load i8, ptr %i.a, align 1, !tbaa !1147
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not2438 = icmp eq ptr %1, null
  br i1 %.not2438, label %.loopexit, label %.lr.ph42

.lr.ph42:                                         ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.e = zext nneg i32 %3 to i64                  ; 2 uses
  br i1 %.not, label %.lr.ph42.split.us, label %.lr.ph42.split

.lr.ph42.split.us:                                ; preds = %.lr.ph42, %checkColumnOverlap.exit.thread.us
  %.040.us = phi ptr [ %i.ac, %checkColumnOverlap.exit.thread.us ], [ %1, %.lr.ph42 ] ; 6 uses
  %.02139.us = phi i32 [ %.2.us, %checkColumnOverlap.exit.thread.us ], [ 0, %.lr.ph42 ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.040.us, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !2200
  %8 = zext i8 %i.g to i32
  %i.h = icmp eq i32 %7, %8
  br i1 %i.h, label %bb.b, label %checkColumnOverlap.exit.thread.us

bb.b:                                             ; preds = %.lr.ph42.split.us
  %i.i = getelementptr inbounds nuw i8, ptr %.040.us, i64 17
  %i.j = load i8, ptr %i.i, align 1, !tbaa !2201
  %i.k = zext i8 %i.j to i32
  %i.l = and i32 %4, %i.k
  %.not25.us = icmp eq i32 %i.l, 0
  br i1 %.not25.us, label %checkColumnOverlap.exit.thread.us, label %checkColumnOverlap.exit.us

checkColumnOverlap.exit.us:                       ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.040.us, i64 18
  %i.n = load i8, ptr %i.m, align 2, !tbaa !665
  %.not27.us = icmp eq i8 %i.n, 0
  br i1 %.not27.us, label %bb.c, label %checkColumnOverlap.exit.thread.us

bb.c:                                             ; preds = %checkColumnOverlap.exit.us
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !2049 ; 2 uses
  %.not.i.us = icmp eq ptr %i.o, null
  %..i.us = select i1 %.not.i.us, ptr %0, ptr %i.o
  %i.p = getelementptr inbounds nuw i8, ptr %..i.us, i64 176
  %.0.i35.us = load ptr, ptr %i.p, align 8, !tbaa !2437 ; 2 uses
  %.not19.i36.us = icmp eq ptr %.0.i35.us, null
  br i1 %.not19.i36.us, label %getRowTrigger.exit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.c, %.critedge2.i.us
  %.0.i37.us = phi ptr [ %.0.i.us, %.critedge2.i.us ], [ %.0.i35.us, %bb.c ] ; 4 uses
  %i.q = load ptr, ptr %.0.i37.us, align 8, !tbaa !2438
  %.not20.i.us = icmp eq ptr %i.q, %.040.us
  br i1 %.not20.i.us, label %bb.d, label %.critedge2.i.us

bb.d:                                             ; preds = %.lr.ph.us
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i37.us, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !2439
  %.not21.i.us = icmp eq i32 %i.s, %6
  br i1 %.not21.i.us, label %getRowTrigger.exit.thread.us, label %.critedge2.i.us

.critedge2.i.us:                                  ; preds = %bb.d, %.lr.ph.us
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i37.us, i64 8
  %.0.i.us = load ptr, ptr %i.t, align 8, !tbaa !2437 ; 2 uses
  %.not19.i.us = icmp eq ptr %.0.i.us, null
  br i1 %.not19.i.us, label %getRowTrigger.exit.us, label %.lr.ph.us, !llvm.loop !433

getRowTrigger.exit.us:                            ; preds = %.critedge2.i.us, %bb.c
  %i.u = tail call fastcc ptr @codeRowTrigger(ptr noundef %0, ptr noundef nonnull %.040.us, ptr noundef nonnull %5, i32 noundef %6), !inline_history !438 ; 2 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !981
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 84
  store i32 -1, ptr %i.w, align 4, !tbaa !797
  %.not28.us = icmp eq ptr %i.u, null
  br i1 %.not28.us, label %checkColumnOverlap.exit.thread.us, label %getRowTrigger.exit.thread.us

getRowTrigger.exit.thread.us:                     ; preds = %bb.d, %getRowTrigger.exit.us
  %.1.i33.us = phi ptr [ %i.u, %getRowTrigger.exit.us ], [ %.0.i37.us, %bb.d ]
  %i.x = getelementptr inbounds nuw i8, ptr %.1.i33.us, i64 28
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.e
  %i.z = load i32, ptr %i.y, align 4, !tbaa !570
  %i.aa = or i32 %i.z, %.02139.us
  br label %checkColumnOverlap.exit.thread.us

checkColumnOverlap.exit.thread.us:                ; preds = %getRowTrigger.exit.thread.us, %getRowTrigger.exit.us, %checkColumnOverlap.exit.us, %bb.b, %.lr.ph42.split.us
  %.2.us = phi i32 [ %.02139.us, %.lr.ph42.split.us ], [ -1, %checkColumnOverlap.exit.us ], [ %.02139.us, %getRowTrigger.exit.us ], [ %.02139.us, %bb.b ], [ %i.aa, %getRowTrigger.exit.thread.us ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.040.us, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1764 ; 2 uses
  %.not24.us = icmp eq ptr %i.ac, null
  br i1 %.not24.us, label %.loopexit, label %.lr.ph42.split.us, !llvm.loop !434

.lr.ph42.split:                                   ; preds = %.lr.ph42, %checkColumnOverlap.exit.thread
  %.040 = phi ptr [ %i.bz, %checkColumnOverlap.exit.thread ], [ %1, %.lr.ph42 ] ; 7 uses
  %.02139 = phi i32 [ %.2, %checkColumnOverlap.exit.thread ], [ 0, %.lr.ph42 ] ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.040, i64 16
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !2200
  %9 = zext i8 %i.ae to i32
  %i.af = icmp eq i32 %7, %9
  br i1 %i.af, label %bb.e, label %checkColumnOverlap.exit.thread

bb.e:                                             ; preds = %.lr.ph42.split
  %i.ag = getelementptr inbounds nuw i8, ptr %.040, i64 17
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !2201
  %i.ai = zext i8 %i.ah to i32
  %i.aj = and i32 %4, %i.ai
  %.not25 = icmp eq i32 %i.aj, 0
  br i1 %.not25, label %checkColumnOverlap.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.040, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !670 ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %checkColumnOverlap.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.an = load i32, ptr %2, align 8, !tbaa !570   ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph.i, label %checkColumnOverlap.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ap = load i32, ptr %i.al, align 8, !tbaa !570 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %wide.trip.count.i.i = zext nneg i32 %i.ap to i64
  br i1 %i.aq, label %.lr.ph.i.preheader.i, label %checkColumnOverlap.exit.thread

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %i.an to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %sqlite3IdListIndex.exit.thread.loopexit.i, %.lr.ph.i.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.i ], [ %indvars.iv.next.i, %sqlite3IdListIndex.exit.thread.loopexit.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1999
  br label %bb.g

bb.g:                                             ; preds = %sqlite3StrICmp.exit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %sqlite3StrICmp.exit.i.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i.i
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1827
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.g
  %.013.i.i.i = phi ptr [ %i.aw, %bb.g ], [ %i.bh, %bb.k ] ; 2 uses
  %.012.i.i.i = phi ptr [ %i.au, %bb.g ], [ %i.bi, %bb.k ] ; 2 uses
  %i.ax = load i8, ptr %.013.i.i.i, align 1, !tbaa !733 ; 3 uses
  %i.ay = load i8, ptr %.012.i.i.i, align 1, !tbaa !733 ; 2 uses
  %i.az = icmp eq i8 %i.ax, %i.ay
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ba = icmp eq i8 %i.ax, 0
  br i1 %i.ba, label %checkColumnOverlap.exit, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bb = zext i8 %i.ax to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !733
  %i.be = zext i8 %i.ay to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !733
  %.not.i.i.i = icmp eq i8 %i.bd, %i.bg
  br i1 %.not.i.i.i, label %bb.k, label %sqlite3StrICmp.exit.i.i

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 1
  br label %bb.h

sqlite3StrICmp.exit.i.i:                          ; preds = %bb.j
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %sqlite3IdListIndex.exit.thread.loopexit.i, label %bb.g, !llvm.loop !380

sqlite3IdListIndex.exit.thread.loopexit.i:        ; preds = %sqlite3StrICmp.exit.i.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %checkColumnOverlap.exit.thread, label %.lr.ph.i.i, !llvm.loop !437

checkColumnOverlap.exit:                          ; preds = %bb.i, %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %.040, i64 18
  %i.bk = load i8, ptr %i.bj, align 2, !tbaa !665
  %.not27 = icmp eq i8 %i.bk, 0
  br i1 %.not27, label %bb.l, label %checkColumnOverlap.exit.thread

bb.l:                                             ; preds = %checkColumnOverlap.exit
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !2049 ; 2 uses
  %.not.i = icmp eq ptr %i.bl, null
  %..i = select i1 %.not.i, ptr %0, ptr %i.bl
  %i.bm = getelementptr inbounds nuw i8, ptr %..i, i64 176
  %.0.i35 = load ptr, ptr %i.bm, align 8, !tbaa !2437 ; 2 uses
  %.not19.i36 = icmp eq ptr %.0.i35, null
  br i1 %.not19.i36, label %getRowTrigger.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.critedge2.i
  %.0.i37 = phi ptr [ %.0.i, %.critedge2.i ], [ %.0.i35, %bb.l ] ; 4 uses
  %i.bn = load ptr, ptr %.0.i37, align 8, !tbaa !2438
  %.not20.i = icmp eq ptr %i.bn, %.040
  br i1 %.not20.i, label %bb.m, label %.critedge2.i

bb.m:                                             ; preds = %.lr.ph
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i37, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !2439
  %.not21.i = icmp eq i32 %i.bp, %6
  br i1 %.not21.i, label %getRowTrigger.exit.thread, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.m, %.lr.ph
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i37, i64 8
  %.0.i = load ptr, ptr %i.bq, align 8, !tbaa !2437 ; 2 uses
  %.not19.i = icmp eq ptr %.0.i, null
  br i1 %.not19.i, label %getRowTrigger.exit, label %.lr.ph, !llvm.loop !433

getRowTrigger.exit:                               ; preds = %.critedge2.i, %bb.l
  %i.br = tail call fastcc ptr @codeRowTrigger(ptr noundef %0, ptr noundef nonnull %.040, ptr noundef nonnull %5, i32 noundef %6), !inline_history !438 ; 2 uses
  %i.bs = load ptr, ptr %0, align 8, !tbaa !981
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 84
  store i32 -1, ptr %i.bt, align 4, !tbaa !797
  %.not28 = icmp eq ptr %i.br, null
  br i1 %.not28, label %checkColumnOverlap.exit.thread, label %getRowTrigger.exit.thread

getRowTrigger.exit.thread:                        ; preds = %bb.m, %getRowTrigger.exit
  %.1.i33 = phi ptr [ %i.br, %getRowTrigger.exit ], [ %.0.i37, %bb.m ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.1.i33, i64 28
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.e
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !570
  %i.bx = or i32 %i.bw, %.02139
  br label %checkColumnOverlap.exit.thread

checkColumnOverlap.exit.thread:                   ; preds = %sqlite3IdListIndex.exit.thread.loopexit.i, %.lr.ph.i, %.preheader.i, %getRowTrigger.exit, %getRowTrigger.exit.thread, %checkColumnOverlap.exit, %.lr.ph42.split, %bb.e
  %.2 = phi i32 [ %.02139, %.lr.ph42.split ], [ -1, %checkColumnOverlap.exit ], [ %.02139, %getRowTrigger.exit ], [ %.02139, %bb.e ], [ %i.bx, %getRowTrigger.exit.thread ], [ %.02139, %.preheader.i ], [ %.02139, %.lr.ph.i ], [ %.02139, %sqlite3IdListIndex.exit.thread.loopexit.i ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.040, i64 64
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1764 ; 2 uses
  %.not24 = icmp eq ptr %i.bz, null
  br i1 %.not24, label %.loopexit, label %.lr.ph42.split, !llvm.loop !434

.loopexit:                                        ; preds = %checkColumnOverlap.exit.thread, %checkColumnOverlap.exit.thread.us, %.preheader, %bb.a
  %.022 = phi i32 [ -1, %bb.a ], [ 0, %.preheader ], [ %.2.us, %checkColumnOverlap.exit.thread.us ], [ %.2, %checkColumnOverlap.exit.thread ]
  ret i32 %.022
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3FkOldmask(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !981
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !917
  %i.e = and i64 %i.d, 16384
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.loopexit34, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 63
  %i.g = load i8, ptr %i.f, align 1, !tbaa !1147
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %.loopexit34

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.02440 = load ptr, ptr %i.i, align 8, !tbaa !733 ; 2 uses
  %.not3041 = icmp eq ptr %.02440, null
  br i1 %.not3041, label %._crit_edge44, label %.preheader36

.preheader36:                                     ; preds = %bb.c, %._crit_edge
  %.02443 = phi ptr [ %.024, %._crit_edge ], [ %.02440, %bb.c ] ; 3 uses
  %.02642 = phi i32 [ %.127.lcssa, %._crit_edge ], [ 0, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02443, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !570  ; 4 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader36
  %i.m = getelementptr inbounds nuw i8, ptr %.02443, i64 64 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.k to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.n = icmp eq i32 %i.k, 1
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.d ] ; 3 uses
  %.12738 = phi i32 [ %.02642, %.lr.ph.new ], [ %i.aa, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.d ]
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 8, !tbaa !1156 ; 2 uses
  %i.q = icmp sgt i32 %i.p, 31
  %i.r = shl nuw i32 1, %i.p
  %i.s = or i32 %i.r, %.12738
  %i.t = select i1 %i.q, i32 -1, i32 %i.s
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !1156 ; 2 uses
  %i.x = icmp sgt i32 %i.w, 31
  %i.y = shl nuw i32 1, %i.w
end_hunk_3
begin_hunk_4_@sqlite3VdbeMultiLoad
define internal void @sqlite3VdbeMultiLoad(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 -2147483645, -2147483648) %1, ptr nofree noundef readonly captures(none) %2, ...) unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #57
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.f = zext i32 %1 to i64                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %sqlite3VdbeAddOp4.exit, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %sqlite3VdbeAddOp4.exit ], [ 0, %bb.a ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.h = load i8, ptr %i.g, align 1, !tbaa !733
  switch i8 %i.h, label %sqlite3VdbeAddOp2.exit24 [
    i8 0, label %bb.r
    i8 115, label %bb.c
    i8 105, label %bb.l
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 16               ; 3 uses
  %i.j = icmp ult i32 %i.i, 41
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.b, align 16
  %i.l = zext nneg i32 %i.i to i64
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l
  %i.n = add nuw nsw i32 %i.i, 8
  store i32 %i.n, ptr %3, align 16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 8
  store ptr %i.p, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %i.m, %bb.d ], [ %i.o, %bb.e ]
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !741  ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  %i.t = select i1 %i.s, i32 77, i32 118          ; 2 uses
  %i.u = add nuw i64 %indvars.iv, %i.f            ; 2 uses
  %i.v = load i32, ptr %i.c, align 8, !tbaa !703  ; 4 uses
  %i.w = load i32, ptr %i.d, align 4, !tbaa !1165
  %.not.i.i = icmp sgt i32 %i.w, %i.v
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = trunc i64 %i.u to i32
  %i.y = call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef range(i32 -1, 511) %i.t, i32 noundef 0, i32 noundef %i.x, i32 noundef 0), !inline_history !2033
  br label %sqlite3VdbeAddOp3.exit.i

bb.h:                                             ; preds = %bb.f
  %i.z = add nsw i32 %i.v, 1
  store i32 %i.z, ptr %i.c, align 8, !tbaa !703
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !702
  %i.ab = sext i32 %i.v to i64
  %i.ac = getelementptr inbounds [32 x i8], ptr %i.aa, i64 %i.ab ; 6 uses
  %i.ad = trunc nuw nsw i32 %i.t to i8
  store i8 %i.ad, ptr %i.ac, align 8, !tbaa !929
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  store i16 0, ptr %i.ae, align 2, !tbaa !930
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 0, ptr %i.af, align 4, !tbaa !926
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = trunc i64 %i.u to i32
  store i32 %i.ah, ptr %i.ag, align 8, !tbaa !927
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store i8 0, ptr %i.aj, align 1, !tbaa !1167
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ai, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp3.exit.i

sqlite3VdbeAddOp3.exit.i:                         ; preds = %bb.h, %bb.g
  %.0.i.i = phi i32 [ %i.y, %bb.g ], [ %i.v, %bb.h ] ; 2 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !679
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 103
  %i.am = load i8, ptr %i.al, align 1, !tbaa !918
  %.not.i9.i = icmp eq i8 %i.am, 0
  br i1 %.not.i9.i, label %bb.i, label %sqlite3VdbeAddOp4.exit

bb.i:                                             ; preds = %sqlite3VdbeAddOp3.exit.i
  %i.an = icmp slt i32 %.0.i.i, 0
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = load i32, ptr %i.c, align 8, !tbaa !703
  %i.ap = add nsw i32 %i.ao, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i10.i = phi i32 [ %i.ap, %bb.j ], [ %.0.i.i, %bb.i ]
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !702
  %i.ar = sext i32 %.0.i10.i to i64
  %i.as = getelementptr inbounds [32 x i8], ptr %i.aq, i64 %i.ar
  call fastcc void @vdbeChangeP4Full(ptr noundef nonnull readonly %0, ptr noundef %i.as, ptr noundef %i.r, i32 noundef 0), !inline_history !2034
  br label %sqlite3VdbeAddOp4.exit

bb.l:                                             ; preds = %bb.b
  %i.at = load i32, ptr %3, align 16              ; 3 uses
  %i.au = icmp ult i32 %i.at, 41
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.av = load ptr, ptr %i.b, align 16
  %i.aw = zext nneg i32 %i.at to i64
  %i.ax = getelementptr i8, ptr %i.av, i64 %i.aw
  %i.ay = add nuw nsw i32 %i.at, 8
  store i32 %i.ay, ptr %3, align 16
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.az = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  store ptr %i.ba, ptr %i.a, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bb = phi ptr [ %i.ax, %bb.m ], [ %i.az, %bb.n ]
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !570 ; 2 uses
  %i.bd = add nuw i64 %indvars.iv, %i.f           ; 2 uses
  %i.be = load i32, ptr %i.c, align 8, !tbaa !703 ; 3 uses
  %i.bf = load i32, ptr %i.d, align 4, !tbaa !1165
  %.not.i.i18 = icmp sgt i32 %i.bf, %i.be
  br i1 %.not.i.i18, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = trunc i64 %i.bd to i32
  %i.bh = call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef 73, i32 noundef %i.bc, i32 noundef %i.bg, i32 noundef 0), !inline_history !1197 ; 0 uses
  br label %sqlite3VdbeAddOp4.exit

bb.q:                                             ; preds = %bb.o
  %i.bi = add nsw i32 %i.be, 1
  store i32 %i.bi, ptr %i.c, align 8, !tbaa !703
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !702
  %i.bk = sext i32 %i.be to i64
  %i.bl = getelementptr inbounds [32 x i8], ptr %i.bj, i64 %i.bk ; 6 uses
  store i8 73, ptr %i.bl, align 8, !tbaa !929
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  store i16 0, ptr %i.bm, align 2, !tbaa !930
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 %i.bc, ptr %i.bn, align 4, !tbaa !926
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bp = trunc i64 %i.bd to i32
  store i32 %i.bp, ptr %i.bo, align 8, !tbaa !927
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i8 0, ptr %i.br, align 1, !tbaa !1167
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bq, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp4.exit

sqlite3VdbeAddOp4.exit:                           ; preds = %bb.q, %bb.p, %bb.k, %sqlite3VdbeAddOp3.exit.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.b, !llvm.loop !5598

bb.r:                                             ; preds = %bb.b
  %i.bs = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.bt = load i32, ptr %i.c, align 8, !tbaa !703 ; 3 uses
  %i.bu = load i32, ptr %i.d, align 4, !tbaa !1165
  %.not.i.i21 = icmp sgt i32 %i.bu, %i.bt
  br i1 %.not.i.i21, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bv = call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef 86, i32 noundef %1, i32 noundef %i.bs, i32 noundef 0), !inline_history !1197 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit24

bb.t:                                             ; preds = %bb.r
  %i.bw = add nsw i32 %i.bt, 1
  store i32 %i.bw, ptr %i.c, align 8, !tbaa !703
  %i.bx = load ptr, ptr %i.e, align 8, !tbaa !702
  %i.by = sext i32 %i.bt to i64
  %i.bz = getelementptr inbounds [32 x i8], ptr %i.bx, i64 %i.by ; 6 uses
  store i8 86, ptr %i.bz, align 8, !tbaa !929
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  store i16 0, ptr %i.ca, align 2, !tbaa !930
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store i32 %1, ptr %i.cb, align 4, !tbaa !926
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i32 %i.bs, ptr %i.cc, align 8, !tbaa !927
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  store i8 0, ptr %i.ce, align 1, !tbaa !1167
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cd, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit24

sqlite3VdbeAddOp2.exit24:                         ; preds = %bb.b, %bb.t, %bb.s
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #57
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pragmaFunclistLine(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %3, 0                       ; 2 uses
  %spec.store.select = select i1 %.not, i32 3934208, i32 -1 ; 2 uses
  %.not1720 = icmp eq ptr %1, null
  br i1 %.not1720, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  br i1 %.not, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.e
  %.01621.us = phi ptr [ %i.t, %bb.e ], [ %1, %.lr.ph ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.01621.us, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1339
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.d = getelementptr inbounds nuw i8, ptr %.01621.us, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1104 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01621.us, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1341
  %.not18.us = icmp eq ptr %i.g, null
  br i1 %.not18.us, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.01621.us, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1340
  %.not19.us = icmp eq ptr %i.i, null
  %.str.1067..str.1132.us = select i1 %.not19.us, ptr @.str.1067, ptr @.str.1132
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.us = phi ptr [ @.str.1131, %bb.b ], [ %.str.1067..str.1132.us, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %.01621.us, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !732
  %i.l = and i32 %i.e, 3
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @pragmaFunclistLine.azEnc, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !741
  %i.p = load i16, ptr %.01621.us, align 8, !tbaa !1338
  %i.q = sext i16 %i.p to i32
  %4 = and i32 %i.e, %spec.store.select
  %i.r = xor i32 %4, 2097152
  tail call void (ptr, i32, ptr, ...) @sqlite3VdbeMultiLoad(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1133, ptr noundef %i.k, i32 noundef %2, ptr noundef nonnull %.0.us, ptr noundef %i.o, i32 noundef %i.q, i32 noundef %i.r)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.us
  %i.s = getelementptr inbounds nuw i8, ptr %.01621.us, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !734  ; 2 uses
  %.not17.us = icmp eq ptr %i.t, null
  br i1 %.not17.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !5599

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.j
  %.01621 = phi ptr [ %i.ap, %bb.j ], [ %1, %.lr.ph ] ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01621, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1339
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split
  %i.x = getelementptr inbounds nuw i8, ptr %.01621, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !1104 ; 3 uses
  %i.z = and i32 %i.y, 262144
  %.not22 = icmp eq i32 %i.z, 0
  br i1 %.not22, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.01621, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1341
  %.not18 = icmp eq ptr %i.ab, null
  br i1 %.not18, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.01621, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1340
  %.not19 = icmp eq ptr %i.ad, null
  %.str.1067..str.1132 = select i1 %.not19, ptr @.str.1067, ptr @.str.1132
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi ptr [ @.str.1131, %bb.g ], [ %.str.1067..str.1132, %bb.h ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.01621, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !732
  %i.ag = and i32 %i.y, 3
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr @pragmaFunclistLine.azEnc, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !741
  %i.ak = load i16, ptr %.01621, align 8, !tbaa !1338
  %i.al = sext i16 %i.ak to i32
  %i.am = and i32 %i.y, %spec.store.select
  %i.an = xor i32 %i.am, 2097152
  tail call void (ptr, i32, ptr, ...) @sqlite3VdbeMultiLoad(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1133, ptr noundef %i.af, i32 noundef %2, ptr noundef nonnull %.0, ptr noundef %i.aj, i32 noundef %i.al, i32 noundef %i.an)
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %.lr.ph.split, %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.01621, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !734 ; 2 uses
  %.not17 = icmp eq ptr %i.ap, null
  br i1 %.not17, label %._crit_edge, label %.lr.ph.split, !llvm.loop !5599

._crit_edge:                                      ; preds = %bb.e, %bb.j, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3RegisterLikeFunctions(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  %likeInfoNorm.likeInfoAlt = select i1 %.not, ptr @likeInfoNorm, ptr @likeInfoAlt ; 2 uses
  %. = select i1 %.not, i32 4, i32 12             ; 2 uses
  %i.a = tail call fastcc i32 @sqlite3CreateFunc(ptr noundef %0, ptr noundef nonnull @.str.935, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %likeInfoNorm.likeInfoAlt, ptr noundef nonnull @likeFunc, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) ; 0 uses
  %i.b = tail call fastcc ptr @sqlite3FindFunction(ptr noundef %0, ptr noundef nonnull @.str.935, i32 noundef 2, i8 noundef zeroext 1, i8 noundef zeroext 0)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1104
  %.masked = and i32 %i.d, -2097157
  %i.e = or i32 %.masked, %.
  store i32 %i.e, ptr %i.c, align 4, !tbaa !1104
  %i.f = tail call fastcc i32 @sqlite3CreateFunc(ptr noundef %0, ptr noundef nonnull @.str.935, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %likeInfoNorm.likeInfoAlt, ptr noundef nonnull @likeFunc, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) ; 0 uses
  %i.g = tail call fastcc ptr @sqlite3FindFunction(ptr noundef %0, ptr noundef nonnull @.str.935, i32 noundef 3, i8 noundef zeroext 1, i8 noundef zeroext 0)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !1104
  %.masked.1 = and i32 %i.i, -2097157
  %i.j = or i32 %.masked.1, %.
  store i32 %i.j, ptr %i.h, align 4, !tbaa !1104
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2147483647) i32 @integrityCheckResultRow(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !703  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1165
  %.not.i.i = icmp sgt i32 %i.d, %i.b
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef 86, i32 noundef 3, i32 noundef 1, i32 noundef 0), !inline_history !1197 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit

bb.c:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.b, 1
  store i32 %i.f, ptr %i.a, align 8, !tbaa !703
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !702
  %i.i = sext i32 %i.b to i64
  %i.j = getelementptr inbounds [32 x i8], ptr %i.h, i64 %i.i ; 6 uses
  store i8 86, ptr %i.j, align 8, !tbaa !929
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i16 0, ptr %i.k, align 2, !tbaa !930
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 3, ptr %i.l, align 4, !tbaa !926
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 1, ptr %i.m, align 8, !tbaa !927
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 0, ptr %i.o, align 1, !tbaa !1167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.n, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.b, %bb.c
  %.val = load i32, ptr %i.a, align 8, !tbaa !703 ; 5 uses
  %i.p = add nsw i32 %.val, 2                     ; 2 uses
  %i.q = load i32, ptr %i.c, align 4, !tbaa !1165
  %.not.i = icmp sgt i32 %i.q, %.val
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %sqlite3VdbeAddOp2.exit
  %i.r = tail call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef 61, i32 noundef 1, i32 noundef %i.p, i32 noundef 1), !inline_history !1880
  br label %sqlite3VdbeAddOp3.exit

bb.e:                                             ; preds = %sqlite3VdbeAddOp2.exit
  %i.s = add nsw i32 %.val, 1
  store i32 %i.s, ptr %i.a, align 8, !tbaa !703
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !702
  %i.v = sext i32 %.val to i64
  %i.w = getelementptr inbounds [32 x i8], ptr %i.u, i64 %i.v ; 7 uses
  store i8 61, ptr %i.w, align 8, !tbaa !929
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store i16 0, ptr %i.x, align 2, !tbaa !930
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 1, ptr %i.y, align 4, !tbaa !926
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 %i.p, ptr %i.z, align 8, !tbaa !927
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 1, ptr %i.aa, align 4, !tbaa !928
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store i8 0, ptr %i.ac, align 1, !tbaa !1167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %bb.d, %bb.e
  %.0.i = phi i32 [ %i.r, %bb.d ], [ %.val, %bb.e ]
  %i.ad = load i32, ptr %i.a, align 8, !tbaa !703 ; 3 uses
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !1165
  %.not.i.i4 = icmp sgt i32 %i.ae, %i.ad
  br i1 %.not.i.i4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %sqlite3VdbeAddOp3.exit
  %i.af = tail call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef 72, i32 noundef 0, i32 noundef 0, i32 noundef 0), !inline_history !2025 ; 0 uses
  br label %sqlite3VdbeAddOp0.exit

bb.g:                                             ; preds = %sqlite3VdbeAddOp3.exit
  %i.ag = add nsw i32 %i.ad, 1
  store i32 %i.ag, ptr %i.a, align 8, !tbaa !703
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !702
  %i.aj = sext i32 %i.ad to i64
  %i.ak = getelementptr inbounds [32 x i8], ptr %i.ai, i64 %i.aj ; 2 uses
  store i8 72, ptr %i.ak, align 8, !tbaa !929
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.al, i8 0, i64 31, i1 false)
  br label %sqlite3VdbeAddOp0.exit

sqlite3VdbeAddOp0.exit:                           ; preds = %bb.f, %bb.g
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define internal void @likeFunc(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.compareInfo, align 4        ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !761
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !683
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !735
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1112 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #57
  %i.h = load ptr, ptr %2, align 8, !tbaa !761    ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.j = load i16, ptr %i.i, align 4, !tbaa !686  ; 2 uses
  %i.k = and i16 %i.j, 2
  %.not.i.i = icmp eq i16 %i.k, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 22
  %i.m = load i8, ptr %i.l, align 2, !tbaa !787
  %i.n = icmp eq i8 %i.m, 1
  br i1 %i.n, label %bb.c, label %.thread.i.i

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !1094
  br label %sqlite3_value_bytes.exit

.thread.i.i:                                      ; preds = %bb.b, %bb.a
  %i.q = zext i16 %i.j to i32                     ; 3 uses
  %i.r = and i32 %i.q, 16
  %.not20.i.i = icmp eq i32 %i.r, 0
  br i1 %.not20.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.thread.i.i
  %i.s = and i32 %i.q, 1024
  %.not22.i.i = icmp eq i32 %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !1094 ; 2 uses
  br i1 %.not22.i.i, label %sqlite3_value_bytes.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %i.h, align 8, !tbaa !733
  %i.w = add nsw i32 %i.v, %i.u
  br label %sqlite3_value_bytes.exit

bb.f:                                             ; preds = %.thread.i.i
  %i.x = and i32 %i.q, 1
  %.not21.i.i = icmp eq i32 %i.x, 0
  br i1 %.not21.i.i, label %bb.g, label %sqlite3_value_bytes.exit

bb.g:                                             ; preds = %bb.f
  %i.y = tail call fastcc i32 @valueBytes(ptr noundef nonnull %i.h, i8 noundef zeroext 1), !inline_history !89
  br label %sqlite3_value_bytes.exit

sqlite3_value_bytes.exit:                         ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i.i = phi i32 [ %i.p, %bb.c ], [ %i.u, %bb.d ], [ %i.w, %bb.e ], [ 0, %bb.f ], [ %i.y, %bb.g ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !570
  %i.ab = icmp sgt i32 %.0.i.i, %i.aa
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %sqlite3_value_bytes.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.ac, align 4, !tbaa !570
  %i.ad = load ptr, ptr %0, align 8, !tbaa !761
  %i.ae = tail call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.ad, ptr noundef nonnull @.str.1139, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !1105 ; 0 uses
end_hunk_4
