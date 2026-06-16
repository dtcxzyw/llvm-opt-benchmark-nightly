inline.NumInlined: 83
inline.NumDeleted: 38
begin_hunk_0_@mi_heap_new_ex:bb.a
  br i1 %i.e, label %mi_heap_get_backing.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void @mi_thread_init() #9
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !30
  br label %mi_heap_get_backing.exit

mi_heap_get_backing.exit:                         ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.b, %bb.a ]
  %i.g = load ptr, ptr %.0.i.i, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29
  %i.k = tail call ptr @_mi_heap_create(i32 noundef %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %i.j)
  ret ptr %i.k
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_heap_new_in_arena(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 3 uses
  %i.c = icmp ne ptr %i.b, null
  %i.d = icmp ne ptr %i.b, @_mi_heap_empty
  %i.e = and i1 %i.c, %i.d
  br i1 %i.e, label %mi_heap_new_ex.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void @mi_thread_init() #9
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !30
  br label %mi_heap_new_ex.exit

mi_heap_new_ex.exit:                              ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.f, %bb.b ], [ %i.b, %bb.a ]
  %i.g = load ptr, ptr %.0.i.i.i, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29
  %i.k = tail call ptr @_mi_heap_create(i32 noundef 0, i1 noundef zeroext false, ptr noundef %0, ptr noundef %i.j)
  ret ptr %i.k
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_heap_new() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_mi_arena_id_none() #9
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default) ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 3 uses
  %i.d = icmp ne ptr %i.c, null
  %i.e = icmp ne ptr %i.c, @_mi_heap_empty
  %i.f = and i1 %i.d, %i.e
  br i1 %i.f, label %mi_heap_new_ex.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void @mi_thread_init() #9
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !30
  br label %mi_heap_new_ex.exit

mi_heap_new_ex.exit:                              ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.g, %bb.b ], [ %i.c, %bb.a ]
  %i.h = load ptr, ptr %.0.i.i.i, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.l = tail call ptr @_mi_heap_create(i32 noundef 0, i1 noundef zeroext true, ptr noundef %i.a, ptr noundef %i.k)
  ret ptr %i.l
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @_mi_heap_memid_is_suitable(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly byval(%struct.mi_memid_s) align 8 captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.c = tail call zeroext i1 @_mi_arena_memid_is_suitable(ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %1, ptr noundef %i.b) #9
  ret i1 %i.c
}

declare zeroext i1 @_mi_arena_memid_is_suitable(ptr noundef byval(%struct.mi_memid_s) align 8, ptr noundef) local_unnamed_addr #2

declare i64 @_mi_random_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @mi_heap_set_numa_affinity(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @_mi_os_numa_node_count() #9
  %i.d = srem i32 %1, %i.c
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.e = phi i32 [ %i.d, %bb.c ], [ -1, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.e, ptr %i.f, align 8, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare i32 @_mi_os_numa_node_count() local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @_mi_heap_by_tag(ptr nofree noundef readonly captures(ret: address, provenance) %0, i8 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 226
  %i.b = load i8, ptr %i.a, align 2, !tbaa !42
  %i.c = icmp eq i8 %i.b, %1
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.01014 = load ptr, ptr %i.e, align 8, !tbaa !30 ; 2 uses
  %.not15 = icmp eq ptr %.01014, null
  br i1 %.not15, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.01016 = phi ptr [ %.010, %bb.c ], [ %.01014, %bb.b ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01016, i64 226
  %i.g = load i8, ptr %i.f, align 2, !tbaa !42
  %i.h = icmp eq i8 %i.g, %1
  br i1 %i.h, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.01016, i64 208
  %.010 = load ptr, ptr %i.i, align 8, !tbaa !30  ; 2 uses
  %.not = icmp eq ptr %.010, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !56

.loopexit:                                        ; preds = %bb.c, %.lr.ph, %bb.b, %bb.a
  %.1 = phi ptr [ %0, %bb.a ], [ null, %bb.b ], [ null, %bb.c ], [ %.01016, %.lr.ph ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_heap_destroy_pages(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %mi_heap_visit_pages.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load i64, ptr %i.b, align 8, !tbaa !7
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %mi_heap_visit_pages.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1264
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i, %.preheader.i
  %.02229.i = phi i64 [ 0, %.preheader.i ], [ %i.s, %.critedge.i ] ; 2 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %.02229.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %.not.i2 = icmp eq ptr %i.g, null
  br i1 %.not.i2, label %.critedge.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_mi_heap_page_destroy.exit
  %.020.i3 = phi ptr [ %i.i, %_mi_heap_page_destroy.exit ], [ %i.g, %bb.c ] ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.020.i3, i64 72 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %i.j = getelementptr i8, ptr %.020.i3, i64 40
  %.val.i = load i64, ptr %i.j, align 8, !tbaa !57 ; 2 uses
  %i.k = icmp ugt i64 %.val.i, 65536
  br i1 %i.k, label %bb.d, label %_mi_heap_page_destroy.exit

bb.d:                                             ; preds = %.lr.ph
  %i.l = load ptr, ptr %0, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 288
  tail call void @__mi_stat_decrease(ptr noundef nonnull %i.m, i64 noundef %.val.i) #9
  br label %_mi_heap_page_destroy.exit

_mi_heap_page_destroy.exit:                       ; preds = %.lr.ph, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.020.i3, i64 16
  store i16 0, ptr %i.n, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.o = load atomic i64, ptr %.020.i3 monotonic, align 8
  %i.p = and i64 %i.o, 3
  %i.q = getelementptr inbounds nuw i8, ptr %.020.i3, i64 64
  store ptr null, ptr %i.q, align 8, !tbaa !58
  store atomic i64 %i.p, ptr %.020.i3 release, align 8
  %i.r = load ptr, ptr %0, align 8, !tbaa !29
  tail call void @_mi_arenas_page_free(ptr noundef nonnull %.020.i3, ptr noundef %i.r) #9
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %.critedge.i, label %.lr.ph, !llvm.loop !28

.critedge.i:                                      ; preds = %_mi_heap_page_destroy.exit, %bb.c
  %i.s = add nuw nsw i64 %.02229.i, 1             ; 2 uses
  %exitcond.i = icmp eq i64 %i.s, 75
  br i1 %exitcond.i, label %mi_heap_visit_pages.exit, label %bb.c, !llvm.loop !20

mi_heap_visit_pages.exit:                         ; preds = %.critedge.i, %bb.a, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1032) %i.t, i8 0, i64 1032, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.u, i64 8) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2400) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(2400) getelementptr inbounds nuw (i8, ptr @_mi_heap_empty, i64 1264), i64 range(i64 2400, 3689) 2400, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 0, ptr %i.v, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mi_heap_destroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %0, @_mi_heap_empty
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %mi_heap_delete.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load i8, ptr %i.c, align 8, !tbaa !46, !range !50, !noundef !51
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.1, ptr noundef nonnull %0) #9
  tail call fastcc void @mi_heap_collect_ex(ptr noundef nonnull %0, i32 noundef 2)
  %i.f = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %i.i = icmp eq ptr %i.h, %0
  br i1 %i.i, label %mi_heap_delete.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30
  %i.l = icmp eq ptr %0, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_mi_heap_set_default_direct(ptr noundef %i.h) #9
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = phi ptr [ %.pre.i.i, %bb.e ], [ %i.f, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.020.i.i = phi ptr [ null, %bb.f ], [ %.0.i.i, %bb.g ] ; 2 uses
  %.0.in.i.i = phi ptr [ %i.n, %bb.f ], [ %i.r, %bb.g ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8, !tbaa !30 ; 5 uses
  %i.o = icmp ne ptr %.0.i.i, %0
  %i.p = icmp ne ptr %.0.i.i, null
  %i.q = and i1 %i.o, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 208
  br i1 %i.q, label %bb.g, label %bb.h, !llvm.loop !59

bb.h:                                             ; preds = %bb.g
  %i.s = icmp eq ptr %.0.i.i, %0
  br i1 %i.s, label %bb.i, label %mi_heap_delete.exit.sink.split

bb.i:                                             ; preds = %bb.h
  %.not.i.i = icmp eq ptr %.020.i.i, null
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !54   ; 2 uses
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 208
  store ptr %i.u, ptr %i.v, align 8, !tbaa !54
  br label %mi_heap_delete.exit.sink.split

bb.k:                                             ; preds = %bb.i
  store ptr %i.u, ptr %i.n, align 8, !tbaa !53
  br label %mi_heap_delete.exit.sink.split

bb.l:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !7
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_mi_heap_destroy_pages.exit.thread, label %.preheader.i.i

_mi_heap_destroy_pages.exit.thread:               ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1032) %i.z, i8 0, i64 1032, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1264
  br label %bb.o

.preheader.i.i:                                   ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.critedge.i.i, %.preheader.i.i
  %.02229.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.ap, %.critedge.i.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %.02229.i.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !17 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.ad, null
  br i1 %.not.i2.i, label %.critedge.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %_mi_heap_page_destroy.exit.i
  %.020.i3.i = phi ptr [ %i.af, %_mi_heap_page_destroy.exit.i ], [ %i.ad, %bb.m ] ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.020.i3.i, i64 72 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !22 ; 2 uses
  %i.ag = getelementptr i8, ptr %.020.i3.i, i64 40
  %.val.i.i = load i64, ptr %i.ag, align 8, !tbaa !57 ; 2 uses
  %i.ah = icmp ugt i64 %.val.i.i, 65536
  br i1 %i.ah, label %bb.n, label %_mi_heap_page_destroy.exit.i

bb.n:                                             ; preds = %.lr.ph.i
  %i.ai = load ptr, ptr %0, align 8, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 288
  tail call void @__mi_stat_decrease(ptr noundef nonnull %i.aj, i64 noundef %.val.i.i) #9
  br label %_mi_heap_page_destroy.exit.i

_mi_heap_page_destroy.exit.i:                     ; preds = %bb.n, %.lr.ph.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.020.i3.i, i64 16
  store i16 0, ptr %i.ak, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  %i.al = load atomic i64, ptr %.020.i3.i monotonic, align 8
  %i.am = and i64 %i.al, 3
  %i.an = getelementptr inbounds nuw i8, ptr %.020.i3.i, i64 64
  store ptr null, ptr %i.an, align 8, !tbaa !58
  store atomic i64 %i.am, ptr %.020.i3.i release, align 8
  %i.ao = load ptr, ptr %0, align 8, !tbaa !29
  tail call void @_mi_arenas_page_free(ptr noundef nonnull %.020.i3.i, ptr noundef %i.ao) #9
  %.not.i.i7 = icmp eq ptr %i.af, null
  br i1 %.not.i.i7, label %.critedge.i.i, label %.lr.ph.i, !llvm.loop !28

.critedge.i.i:                                    ; preds = %_mi_heap_page_destroy.exit.i, %bb.m
  %i.ap = add nuw nsw i64 %.02229.i.i, 1          ; 2 uses
  %exitcond.i.i = icmp eq i64 %i.ap, 75
  br i1 %exitcond.i.i, label %_mi_heap_destroy_pages.exit, label %bb.m, !llvm.loop !20

_mi_heap_destroy_pages.exit:                      ; preds = %.critedge.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1032) %i.aq, i8 0, i64 1032, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %_mi_heap_destroy_pages.exit, %_mi_heap_destroy_pages.exit.thread
  %.sink14 = phi ptr [ %i.ab, %_mi_heap_destroy_pages.exit ], [ %i.aa, %_mi_heap_destroy_pages.exit.thread ] ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sink14, i64 8) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2400) %.sink14, ptr noundef nonnull readonly align 8 dereferenceable(2400) getelementptr inbounds nuw (i8, ptr @_mi_heap_empty, i64 1264), i64 range(i64 2400, 3689) 2400, i1 false)
  store i64 0, ptr %i.w, align 8, !tbaa !7
  %i.ar = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !32 ; 2 uses
  %i.au = icmp eq ptr %i.at, %0
  br i1 %i.au, label %mi_heap_delete.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !30
  %i.ax = icmp eq ptr %0, %i.aw
  br i1 %i.ax, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @_mi_heap_set_default_direct(ptr noundef %i.at) #9
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !29
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ay = phi ptr [ %.pre.i, %bb.q ], [ %i.ar, %bb.p ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.020.i = phi ptr [ null, %bb.r ], [ %.0.i, %bb.s ] ; 2 uses
  %.0.in.i = phi ptr [ %i.az, %bb.r ], [ %i.bd, %bb.s ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !30 ; 5 uses
  %i.ba = icmp ne ptr %.0.i, %0
  %i.bb = icmp ne ptr %.0.i, null
  %i.bc = and i1 %i.ba, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i, i64 208
  br i1 %i.bc, label %bb.s, label %bb.t, !llvm.loop !59

bb.t:                                             ; preds = %bb.s
  %i.be = icmp eq ptr %.0.i, %0
  br i1 %i.be, label %bb.u, label %mi_heap_delete.exit.sink.split

bb.u:                                             ; preds = %bb.t
  %.not.i = icmp eq ptr %.020.i, null
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !54 ; 2 uses
  br i1 %.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %.020.i, i64 208
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !54
  br label %mi_heap_delete.exit.sink.split

bb.w:                                             ; preds = %bb.u
  store ptr %i.bg, ptr %i.az, align 8, !tbaa !53
  br label %mi_heap_delete.exit.sink.split

mi_heap_delete.exit.sink.split:                   ; preds = %bb.t, %bb.v, %bb.w, %bb.h, %bb.j, %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 3664
  tail call void @_mi_meta_free(ptr noundef nonnull %0, i64 noundef 3688, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.bi) #9
  br label %mi_heap_delete.exit

mi_heap_delete.exit:                              ; preds = %mi_heap_delete.exit.sink.split, %bb.o, %bb.c, %bb.a
  ret void
}

declare void @_mi_warning_message(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @mi_heap_delete(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %0, @_mi_heap_empty
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %mi_heap_free.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @mi_heap_collect_ex(ptr noundef nonnull %0, i32 noundef 2)
  %i.c = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32   ; 2 uses
  %i.f = icmp eq ptr %i.e, %0
  br i1 %i.f, label %mi_heap_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.i = icmp eq ptr %0, %i.h
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_mi_heap_set_default_direct(ptr noundef %i.e) #9
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = phi ptr [ %.pre.i, %bb.d ], [ %i.c, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.020.i = phi ptr [ null, %bb.e ], [ %.0.i, %bb.f ] ; 2 uses
  %.0.in.i = phi ptr [ %i.k, %bb.e ], [ %i.o, %bb.f ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !30 ; 5 uses
  %i.l = icmp ne ptr %.0.i, %0
  %i.m = icmp ne ptr %.0.i, null
  %i.n = and i1 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 208
  br i1 %i.n, label %bb.f, label %bb.g, !llvm.loop !59

bb.g:                                             ; preds = %bb.f
  %i.p = icmp eq ptr %.0.i, %0
  br i1 %i.p, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp eq ptr %.020.i, null
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !54   ; 2 uses
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %.020.i, i64 208
  store ptr %i.r, ptr %i.s, align 8, !tbaa !54
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store ptr %i.r, ptr %i.k, align 8, !tbaa !53
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3664
  tail call void @_mi_meta_free(ptr noundef nonnull %0, i64 noundef 3688, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.t) #9
  br label %mi_heap_free.exit

mi_heap_free.exit:                                ; preds = %bb.k, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_heap_unsafe_destroy_all(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53   ; 2 uses
  %.not9 = icmp eq ptr %i.d, null
  br i1 %.not9, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.g
  %.010 = phi ptr [ %i.f, %bb.g ], [ %i.d, %bb.b ] ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.010, i64 208
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.010, i64 224
  %i.h = load i8, ptr %i.g, align 8, !tbaa !46, !range !50, !noundef !51
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  tail call void @mi_heap_destroy(ptr noundef nonnull %.010)
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.010, i64 168 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !7
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_mi_heap_destroy_pages.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.010, i64 1264
  br label %bb.e

bb.e:                                             ; preds = %.critedge.i.i, %.preheader.i.i
  %.02229.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.aa, %.critedge.i.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.02229.i.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17   ; 2 uses
  %.not.i2.i = icmp eq ptr %i.o, null
  br i1 %.not.i2.i, label %.critedge.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %_mi_heap_page_destroy.exit.i
  %.020.i3.i = phi ptr [ %i.q, %_mi_heap_page_destroy.exit.i ], [ %i.o, %bb.e ] ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.020.i3.i, i64 72 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22   ; 2 uses
  %i.r = getelementptr i8, ptr %.020.i3.i, i64 40
  %.val.i.i = load i64, ptr %i.r, align 8, !tbaa !57 ; 2 uses
  %i.s = icmp ugt i64 %.val.i.i, 65536
  br i1 %i.s, label %bb.f, label %_mi_heap_page_destroy.exit.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.t = load ptr, ptr %.010, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 288
  tail call void @__mi_stat_decrease(ptr noundef nonnull %i.u, i64 noundef %.val.i.i) #9
  br label %_mi_heap_page_destroy.exit.i

_mi_heap_page_destroy.exit.i:                     ; preds = %bb.f, %.lr.ph.i
  %i.v = getelementptr inbounds nuw i8, ptr %.020.i3.i, i64 16
  store i16 0, ptr %i.v, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.w = load atomic i64, ptr %.020.i3.i monotonic, align 8
  %i.x = and i64 %i.w, 3
  %i.y = getelementptr inbounds nuw i8, ptr %.020.i3.i, i64 64
  store ptr null, ptr %i.y, align 8, !tbaa !58
  store atomic i64 %i.x, ptr %.020.i3.i release, align 8
  %i.z = load ptr, ptr %.010, align 8, !tbaa !29
  tail call void @_mi_arenas_page_free(ptr noundef nonnull %.020.i3.i, ptr noundef %i.z) #9
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %.critedge.i.i, label %.lr.ph.i, !llvm.loop !28

.critedge.i.i:                                    ; preds = %_mi_heap_page_destroy.exit.i, %bb.e
  %i.aa = add nuw nsw i64 %.02229.i.i, 1          ; 2 uses
  %exitcond.i.i = icmp eq i64 %i.aa, 75
  br i1 %exitcond.i.i, label %_mi_heap_destroy_pages.exit, label %bb.e, !llvm.loop !20

_mi_heap_destroy_pages.exit:                      ; preds = %.critedge.i.i, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.010, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1032) %i.ab, i8 0, i64 1032, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.010, i64 1264 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ac, i64 8) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2400) %i.ac, ptr noundef nonnull readonly align 8 dereferenceable(2400) getelementptr inbounds nuw (i8, ptr @_mi_heap_empty, i64 1264), i64 range(i64 2400, 3689) 2400, i1 false)
  store i64 0, ptr %i.j, align 8, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %_mi_heap_destroy_pages.exit, %bb.c
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !60

.loopexit:                                        ; preds = %bb.g, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_heap_set_default(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %0, @_mi_heap_empty
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  tail call void @_mi_heap_set_default_direct(ptr noundef nonnull %0) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare void @_mi_heap_set_default_direct(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @mi_heap_unload(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %0, @_mi_heap_empty
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.2) #9
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @mi_heap_collect_ex(ptr noundef nonnull %0, i32 noundef 2)
  %i.f = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %i.i = icmp eq ptr %i.h, %0
  br i1 %i.i, label %mi_heap_free.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30
  %i.l = icmp eq ptr %0, %i.k
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_mi_heap_set_default_direct(ptr noundef %i.h) #9
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = phi ptr [ %.pre.i, %bb.f ], [ %i.f, %bb.e ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.020.i = phi ptr [ null, %bb.g ], [ %.0.i, %bb.h ] ; 2 uses
  %.0.in.i = phi ptr [ %i.n, %bb.g ], [ %i.r, %bb.h ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !30 ; 5 uses
  %i.o = icmp ne ptr %.0.i, %0
  %i.p = icmp ne ptr %.0.i, null
  %i.q = and i1 %i.o, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i, i64 208
  br i1 %i.q, label %bb.h, label %bb.i, !llvm.loop !59

bb.i:                                             ; preds = %bb.h
  %i.s = icmp eq ptr %.0.i, %0
  br i1 %i.s, label %bb.j, label %mi_heap_free.exit

bb.j:                                             ; preds = %bb.i
  %.not.i = icmp eq ptr %.020.i, null
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !54   ; 2 uses
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %.020.i, i64 208
  store ptr %i.u, ptr %i.v, align 8, !tbaa !54
  br label %mi_heap_free.exit

bb.l:                                             ; preds = %bb.j
  store ptr %i.u, ptr %i.n, align 8, !tbaa !53
  br label %mi_heap_free.exit

mi_heap_free.exit:                                ; preds = %bb.i, %bb.k, %bb.l, %bb.d
  store ptr null, ptr %0, align 8, !tbaa !29
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %mi_heap_free.exit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @mi_heap_reload(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %0, @_mi_heap_empty
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.3) #9
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !29
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.4) #9
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.g = tail call ptr @_mi_arena_from_id(ptr noundef %1) #9 ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %.not22 = icmp eq ptr %i.h, %i.g
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.5, ptr noundef %i.h, ptr noundef %i.g) #9
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default) ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30   ; 3 uses
  %i.k = icmp ne ptr %i.j, null
  %i.l = icmp ne ptr %i.j, @_mi_heap_empty
  %i.m = and i1 %i.k, %i.l
  br i1 %i.m, label %mi_heap_get_default.exit, label %bb.i, !prof !31

bb.i:                                             ; preds = %bb.h
  tail call void @mi_thread_init() #9
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !30
  br label %mi_heap_get_default.exit

mi_heap_get_default.exit:                         ; preds = %bb.h, %bb.i
  %.0.i = phi ptr [ %i.n, %bb.i ], [ %i.j, %bb.h ]
  %i.o = load ptr, ptr %.0.i, align 8, !tbaa !29  ; 2 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 248
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.p, align 8, !tbaa !61
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.q, align 8, !tbaa !61
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 280
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.r, align 8, !tbaa !61
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.s, align 8, !tbaa !61
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 312
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.t, align 8, !tbaa !61
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.u, align 8, !tbaa !61
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 344
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.v, align 8, !tbaa !61
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.w, align 8, !tbaa !61
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 376
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.x, align 8, !tbaa !61
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.y, align 8, !tbaa !61
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 408
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.z, align 8, !tbaa !61
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.aa, align 8, !tbaa !61
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 440
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.ab, align 8, !tbaa !61
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.ac, align 8, !tbaa !61
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 472
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.ad, align 8, !tbaa !61
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.ae, align 8, !tbaa !61
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 504
end_hunk_0
