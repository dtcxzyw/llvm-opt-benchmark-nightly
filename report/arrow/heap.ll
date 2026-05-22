inline.NumInlined: 83
inline.NumDeleted: 38
begin_hunk_0_@_mi_heap_unsafe_destroy_all:bb.a
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
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !29
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @_mi_arena_from_id(ptr noundef %1) #9 ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %.not22 = icmp eq ptr %i.h, %i.g
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.5, ptr noundef %i.h, ptr noundef %i.g) #9
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default) ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30   ; 3 uses
  %i.k = icmp ne ptr %i.j, null
  %i.l = icmp ne ptr %i.j, @_mi_heap_empty
  %i.m = and i1 %i.k, %i.l
  br i1 %i.m, label %mi_heap_get_default.exit, label %bb.g, !prof !31

bb.g:                                             ; preds = %bb.f
  tail call void @mi_thread_init() #9
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !30
  br label %mi_heap_get_default.exit

mi_heap_get_default.exit:                         ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %i.n, %bb.g ], [ %i.j, %bb.f ]
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
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.af, align 8, !tbaa !61
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.ag, align 8, !tbaa !61
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 536
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.ah, align 8, !tbaa !61
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.ai, align 8, !tbaa !61
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 568
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.aj, align 8, !tbaa !61
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.ak, align 8, !tbaa !61
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 600
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.al, align 8, !tbaa !61
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.am, align 8, !tbaa !61
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 632
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.an, align 8, !tbaa !61
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.ao, align 8, !tbaa !61
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 664
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.ap, align 8, !tbaa !61
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.aq, align 8, !tbaa !61
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 696
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.ar, align 8, !tbaa !61
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.as, align 8, !tbaa !61
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 728
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.at, align 8, !tbaa !61
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.au, align 8, !tbaa !61
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 760
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.av, align 8, !tbaa !61
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.aw, align 8, !tbaa !61
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 792
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.ax, align 8, !tbaa !61
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.ay, align 8, !tbaa !61
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 824
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.az, align 8, !tbaa !61
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.ba, align 8, !tbaa !61
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 856
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.bb, align 8, !tbaa !61
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.bc, align 8, !tbaa !61
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 888
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.bd, align 8, !tbaa !61
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.be, align 8, !tbaa !61
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 920
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.bf, align 8, !tbaa !61
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.bg, align 8, !tbaa !61
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 952
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.bh, align 8, !tbaa !61
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.bi, align 8, !tbaa !61
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 984
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.bj, align 8, !tbaa !61
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.bk, align 8, !tbaa !61
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.bl, align 8, !tbaa !61
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.bm, align 8, !tbaa !61
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.bn, align 8, !tbaa !61
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.bo, align 8, !tbaa !61
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.bp, align 8, !tbaa !61
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.bq, align 8, !tbaa !61
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.br, align 8, !tbaa !61
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.bs, align 8, !tbaa !61
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1144
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.bt, align 8, !tbaa !61
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.bu, align 8, !tbaa !61
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.bv, align 8, !tbaa !61
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.bw, align 8, !tbaa !61
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1208
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.bx, align 8, !tbaa !61
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.by, align 8, !tbaa !61
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1240
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.bz, align 8, !tbaa !61
  store <2 x ptr> <ptr @_mi_page_empty, ptr @_mi_page_empty>, ptr %i.ca, align 8, !tbaa !61
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1256
  store ptr @_mi_page_empty, ptr %i.cb, align 8, !tbaa !61
  %i.cc = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !53
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !54
  store ptr %0, ptr %i.cc, align 8, !tbaa !53
  br label %bb.h

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.str.4.sink = phi ptr [ @.str.3, %bb.b ], [ @.str.4, %bb.c ]
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull %.str.4.sink) #9
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.e, %mi_heap_get_default.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.e ], [ true, %mi_heap_get_default.exit ], [ false, %.sink.split ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @mi_heap_contains_block(ptr noundef readnone captures(address) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %0, @_mi_heap_empty
  %or.cond.not8 = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %1, null
  %or.cond6 = or i1 %or.cond.not8, %i.c
  br i1 %or.cond6, label %mi_heap_of_block.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.e = lshr i64 %i.d, 16
  %i.f = and i64 %i.e, 8191
  %i.g = lshr i64 %i.d, 29
  %i.h = load ptr, ptr @_mi_page_map, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.f
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61
  %i.m = getelementptr i8, ptr %i.l, i64 64
  %.val.i = load ptr, ptr %i.m, align 8, !tbaa !58
  %i.n = icmp eq ptr %0, %.val.i
  br label %mi_heap_of_block.exit

mi_heap_of_block.exit:                            ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.n, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @mi_heap_check_owned(ptr noundef readonly captures(address) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %mi_heap_visit_pages.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne ptr %0, @_mi_heap_empty
  %i.c = ptrtoint ptr %1 to i64
  %i.d = and i64 %i.c, 7
  %.not = icmp eq i64 %i.d, 0
  %or.cond = and i1 %i.b, %.not
  br i1 %or.cond, label %bb.c, label %mi_heap_visit_pages.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.f = load i64, ptr %i.e, align 8, !tbaa !7
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %mi_heap_visit_pages.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1264
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i, %.preheader.i
  %.02229.i = phi i64 [ 0, %.preheader.i ], [ %i.u, %.critedge.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.02229.i
  %.020.i11 = load ptr, ptr %i.i, align 8, !tbaa !61 ; 2 uses
  %.not.i12 = icmp eq ptr %.020.i11, null
  br i1 %.not.i12, label %.critedge.i, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.020.i13, i64 72
  %.020.i = load ptr, ptr %i.j, align 8, !tbaa !61 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %.critedge.i, label %.lr.ph, !llvm.loop !28

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.020.i13 = phi ptr [ %.020.i, %bb.e ], [ %.020.i11, %bb.d ] ; 4 uses
  %i.k = getelementptr i8, ptr %.020.i13, i64 48
  %.val11.i = load ptr, ptr %i.k, align 8, !tbaa !63 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.020.i13, i64 18
  %i.m = load i16, ptr %i.l, align 2, !tbaa !64
  %i.n = zext i16 %i.m to i64
  %i.o = getelementptr i8, ptr %.020.i13, i64 40
  %.val.i = load i64, ptr %i.o, align 8, !tbaa !57
  %i.p = mul i64 %.val.i, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %.val11.i, i64 %i.p
  %i.r = icmp uge ptr %1, %.val11.i
  %i.s = icmp ult ptr %1, %i.q
  %i.t = select i1 %i.r, i1 %i.s, i1 false
  br i1 %i.t, label %mi_heap_visit_pages.exit, label %bb.e, !llvm.loop !28

.critedge.i:                                      ; preds = %bb.e, %bb.d
  %i.u = add nuw nsw i64 %.02229.i, 1             ; 2 uses
  %exitcond.i = icmp eq i64 %i.u, 75
  br i1 %exitcond.i, label %mi_heap_visit_pages.exit, label %bb.d, !llvm.loop !20

mi_heap_visit_pages.exit:                         ; preds = %.critedge.i, %.lr.ph, %bb.c, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ true, %.lr.ph ], [ false, %bb.c ], [ false, %.critedge.i ]
  ret i1 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @mi_check_owned(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %mi_heap_check_owned.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ne ptr %i.b, @_mi_heap_empty
  %i.e = ptrtoint ptr %0 to i64
  %i.f = and i64 %i.e, 7
  %.not.i = icmp eq i64 %i.f, 0
  %or.cond.i = and i1 %.not.i, %i.d
  br i1 %or.cond.i, label %bb.c, label %mi_heap_check_owned.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.h = load i64, ptr %i.g, align 8, !tbaa !7
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %mi_heap_check_owned.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1264
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i.i, %.preheader.i.i
  %.02229.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.w, %.critedge.i.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %.02229.i.i
  %.020.i11.i = load ptr, ptr %i.k, align 8, !tbaa !61 ; 2 uses
  %.not.i12.i = icmp eq ptr %.020.i11.i, null
  br i1 %.not.i12.i, label %.critedge.i.i, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.020.i13.i, i64 72
  %.020.i.i = load ptr, ptr %i.l, align 8, !tbaa !61 ; 2 uses
  %.not.i.i = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %.lr.ph.i, !llvm.loop !28

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.020.i13.i = phi ptr [ %.020.i.i, %bb.e ], [ %.020.i11.i, %bb.d ] ; 4 uses
  %i.m = getelementptr i8, ptr %.020.i13.i, i64 48
  %.val11.i.i = load ptr, ptr %i.m, align 8, !tbaa !63 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.020.i13.i, i64 18
  %i.o = load i16, ptr %i.n, align 2, !tbaa !64
  %i.p = zext i16 %i.o to i64
  %i.q = getelementptr i8, ptr %.020.i13.i, i64 40
  %.val.i.i = load i64, ptr %i.q, align 8, !tbaa !57
  %i.r = mul i64 %.val.i.i, %i.p
  %i.s = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 %i.r
  %i.t = icmp uge ptr %0, %.val11.i.i
  %i.u = icmp ult ptr %0, %i.s
  %i.v = select i1 %i.t, i1 %i.u, i1 false
  br i1 %i.v, label %mi_heap_check_owned.exit, label %bb.e, !llvm.loop !28

.critedge.i.i:                                    ; preds = %bb.e, %bb.d
  %i.w = add nuw nsw i64 %.02229.i.i, 1           ; 2 uses
  %exitcond.i.i = icmp eq i64 %i.w, 75
  br i1 %exitcond.i.i, label %mi_heap_check_owned.exit, label %bb.d, !llvm.loop !20

mi_heap_check_owned.exit:                         ; preds = %.critedge.i.i, %.lr.ph.i, %bb.a, %bb.b, %bb.c
  %.0.i = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ true, %.lr.ph.i ], [ false, %bb.c ], [ false, %.critedge.i.i ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_mi_heap_area_init(ptr noundef writeonly captures(none) initializes((0, 52)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 40
  %.val = load i64, ptr %i.a, align 8, !tbaa !57  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.c = load i16, ptr %i.b, align 4, !tbaa !65
  %i.d = zext i16 %i.c to i64
  %i.e = mul i64 %.val, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.h = load i16, ptr %i.g, align 2, !tbaa !64
  %i.i = zext i16 %i.h to i64
  %i.j = mul i64 %.val, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.j, ptr %i.k, align 8, !tbaa !68
  %i.l = getelementptr i8, ptr %1, i64 48
  %.val17 = load ptr, ptr %i.l, align 8, !tbaa !63
  store ptr %.val17, ptr %0, align 8, !tbaa !69
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i16, ptr %i.m, align 8, !tbaa !27
  %i.o = zext i16 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.o, ptr %i.p, align 8, !tbaa !70
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.val, ptr %i.q, align 8, !tbaa !71
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.val, ptr %i.r, align 8, !tbaa !72
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.t = load i8, ptr %i.s, align 8, !tbaa !73
  %i.u = zext i8 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.u, ptr %i.v, align 8, !tbaa !74
  ret void
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @_mi_heap_area_visit_blocks(ptr noundef %0, ptr noundef %1, ptr noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
end_hunk_0
