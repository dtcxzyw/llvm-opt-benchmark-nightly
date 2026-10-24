Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/static?download=true
inline.NumInlined: 1572
inline.NumDeleted: 309
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 40
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZL12mi_heap_freeP9mi_heap_s:bb.a
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !67
  %i.ah = zext i32 %i.ag to i64
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds i8, ptr %i.ae, i64 %i.ai ; 6 uses
  %i.ak = icmp eq i64 %i.aa, %i.y
  br i1 %i.ak, label %bb.m, label %bb.q, !prof !68

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 14
  %i.am = load i8, ptr %i.al, align 2, !tbaa !69
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %bb.n, label %bb.p, !prof !68

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !63
  %i.aq = ptrtoint ptr %i.ap to i64
  store i64 %i.aq, ptr %0, align 8, !tbaa !65
  store ptr %0, ptr %i.ao, align 8, !tbaa !63
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 2 uses
  %i.as = load i16, ptr %i.ar, align 8, !tbaa !66
  %i.at = add i16 %i.as, -1                       ; 2 uses
  store i16 %i.at, ptr %i.ar, align 8, !tbaa !66
  %i.au = icmp eq i16 %i.at, 0
  br i1 %i.au, label %bb.o, label %mi_free.exit, !prof !61

bb.o:                                             ; preds = %bb.n
  tail call void @_Z15_mi_page_retireP9mi_page_s(ptr noundef nonnull %i.aj) #50, !inline_history !73
  br label %mi_free.exit

bb.p:                                             ; preds = %bb.m
  tail call fastcc void @_ZL21mi_free_generic_localP9mi_page_sP12mi_segment_sPv(ptr noundef nonnull %i.aj, ptr noundef nonnull %0) #50, !inline_history !73
  br label %mi_free.exit

bb.q:                                             ; preds = %bb.l
  tail call fastcc void @_ZL18mi_free_generic_mtP9mi_page_sP12mi_segment_sPv(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.v, ptr noundef nonnull %0) #52, !inline_history !73
  br label %mi_free.exit

mi_free.exit:                                     ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.k, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z27_mi_heap_unsafe_destroy_allP9mi_heap_s(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !177
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !200  ; 2 uses
  %.not10 = icmp eq ptr %i.d, null
  br i1 %.not10, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %mi_heap_destroy.exit
  %.011 = phi ptr [ %i.f, %mi_heap_destroy.exit ], [ %i.d, %bb.b ] ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.011, i64 232
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !201  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.011, i64 240
  %i.h = load i8, ptr %i.g, align 8, !tbaa !188, !range !113, !noundef !114
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %.not9 = icmp eq ptr %.011, @_mi_heap_empty
  br i1 %.not9, label %mi_heap_destroy.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_Z22_mi_heap_destroy_pagesP9mi_heap_s(ptr noundef nonnull %.011)
  tail call fastcc void @_ZL12mi_heap_freeP9mi_heap_s(ptr noundef nonnull %.011)
  br label %mi_heap_destroy.exit

bb.e:                                             ; preds = %.lr.ph
  tail call void @_Z22_mi_heap_destroy_pagesP9mi_heap_s(ptr noundef nonnull %.011)
  br label %mi_heap_destroy.exit

mi_heap_destroy.exit:                             ; preds = %bb.d, %bb.c, %bb.e
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !25

.loopexit:                                        ; preds = %mi_heap_destroy.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @mi_heap_set_default(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %0, @_mi_heap_empty
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %_Z27_mi_heap_set_default_directP9mi_heap_s.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default) ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76   ; 2 uses
  store ptr %0, ptr %i.c, align 8, !tbaa !76
  %i.e = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !97 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, -1
  br i1 %.not.i.i, label %_Z27_mi_heap_set_default_directP9mi_heap_s.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @pthread_setspecific(i32 noundef %i.e, ptr noundef nonnull %0) #50 ; 0 uses
  br label %_Z27_mi_heap_set_default_directP9mi_heap_s.exit

_Z27_mi_heap_set_default_directP9mi_heap_s.exit:  ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.d, %bb.c ], [ %i.d, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_Z27_mi_heap_set_default_directP9mi_heap_s(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  store ptr %0, ptr %i.a, align 8, !tbaa !76
  %i.b = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !97 ; 2 uses
  %.not.i = icmp eq i32 %i.b, -1
  br i1 %.not.i, label %_Z38_mi_prim_thread_associate_default_heapP9mi_heap_s.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @pthread_setspecific(i32 noundef %i.b, ptr noundef %0) #50 ; 0 uses
  br label %_Z38_mi_prim_thread_associate_default_heapP9mi_heap_s.exit

_Z38_mi_prim_thread_associate_default_heapP9mi_heap_s.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @mi_heap_contains_block(ptr nofree noundef readnone captures(address) %0, ptr noundef %1) local_unnamed_addr #23 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %0, @_mi_heap_empty
  %or.cond.not8 = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %1, null
  %or.cond6 = or i1 %or.cond.not8, %i.c
  br i1 %or.cond6, label %_ZL16mi_heap_of_blockPKv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.e = add i64 %i.d, -1                         ; 2 uses
  %i.f = and i64 %i.e, -33554432
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = icmp slt i64 %i.e, 33554432
  %i.i = select i1 %i.h, ptr null, ptr %i.g       ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_main, i64 32), align 32, !tbaa !199
  %i.l = xor i64 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.n = load i64, ptr %i.m, align 32, !tbaa !203
  %.not.i = icmp eq i64 %i.l, %i.n
  br i1 %.not.i, label %bb.c, label %_ZL16mi_heap_of_blockPKv.exit, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.o = sub i64 %i.d, %i.j
  %i.p = lshr i64 %i.o, 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 288
  %i.r = getelementptr inbounds nuw [96 x i8], ptr %i.q, i64 %i.p ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !67
  %i.u = zext i32 %i.t to i64
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.y = load atomic i64, ptr %i.x monotonic, align 8
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = icmp eq ptr %0, %i.z
  br label %_ZL16mi_heap_of_blockPKv.exit

_ZL16mi_heap_of_blockPKv.exit:                    ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.aa, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @mi_heap_check_owned(ptr nofree noundef readonly captures(address) %0, ptr noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZL19mi_heap_visit_pagesP9mi_heap_sPFbS0_P15mi_page_queue_sP9mi_page_sPvS5_ES5_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne ptr %0, @_mi_heap_empty
  %i.c = ptrtoint ptr %1 to i64
  %i.d = and i64 %i.c, 7
  %.not = icmp eq i64 %i.d, 0
  %or.cond = and i1 %i.b, %.not
  br i1 %or.cond, label %bb.c, label %_ZL19mi_heap_visit_pagesP9mi_heap_sPFbS0_P15mi_page_queue_sP9mi_page_sPvS5_ES5_S5_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = load i64, ptr %i.e, align 8, !tbaa !190
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZL19mi_heap_visit_pagesP9mi_heap_sPFbS0_P15mi_page_queue_sP9mi_page_sPvS5_ES5_S5_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1280
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i, %.preheader.i
  %.02229.i = phi i64 [ 0, %.preheader.i ], [ %i.r, %.critedge.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.02229.i
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.0.i.in = phi ptr [ %i.i, %bb.d ], [ %2, %.lr.ph ]
  %.0.i = load ptr, ptr %.0.i.in, align 8, !tbaa !77 ; 5 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %.critedge.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %2 = getelementptr inbounds nuw i8, ptr %.0.i, i64 72
  %i.j = getelementptr i8, ptr %.0.i, i64 48
  %.val11.i = load ptr, ptr %i.j, align 8, !tbaa !59 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 10
  %i.l = load i16, ptr %i.k, align 2, !tbaa !71
  %i.m = zext i16 %i.l to i64
  %i.n = getelementptr i8, ptr %.0.i, i64 40
  %.val.i = load i64, ptr %i.n, align 8, !tbaa !62
  %i.o = mul i64 %.val.i, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %.val11.i, i64 %i.o
  %3 = icmp ult ptr %1, %.val11.i
  %4 = icmp uge ptr %1, %i.p
  %i.q = select i1 %3, i1 true, i1 %4
  br i1 %i.q, label %bb.e, label %_ZL19mi_heap_visit_pagesP9mi_heap_sPFbS0_P15mi_page_queue_sP9mi_page_sPvS5_ES5_S5_.exit, !llvm.loop !18

.critedge.i:                                      ; preds = %bb.e
  %i.r = add nuw nsw i64 %.02229.i, 1             ; 2 uses
  %exitcond.i = icmp eq i64 %i.r, 75
  br i1 %exitcond.i, label %_ZL19mi_heap_visit_pagesP9mi_heap_sPFbS0_P15mi_page_queue_sP9mi_page_sPvS5_ES5_S5_.exit, label %bb.d, !llvm.loop !19

_ZL19mi_heap_visit_pagesP9mi_heap_sPFbS0_P15mi_page_queue_sP9mi_page_sPvS5_ES5_S5_.exit: ; preds = %.critedge.i, %.lr.ph, %bb.c, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ true, %.lr.ph ], [ false, %bb.c ], [ false, %.critedge.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @mi_check_owned(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 4 uses
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
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.h = load i64, ptr %i.g, align 8, !tbaa !190
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %mi_heap_check_owned.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1280
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i.i, %.preheader.i.i
  %.02229.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.t, %.critedge.i.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.02229.i.i
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.i, %bb.d
  %.0.i.in.i = phi ptr [ %i.k, %bb.d ], [ %1, %.lr.ph.i ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !77 ; 5 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %1 = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 72
  %i.l = getelementptr i8, ptr %.0.i.i, i64 48
  %.val11.i.i = load ptr, ptr %i.l, align 8, !tbaa !59 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 10
  %i.n = load i16, ptr %i.m, align 2, !tbaa !71
  %i.o = zext i16 %i.n to i64
  %i.p = getelementptr i8, ptr %.0.i.i, i64 40
  %.val.i.i = load i64, ptr %i.p, align 8, !tbaa !62
  %i.q = mul i64 %.val.i.i, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 %i.q
  %2 = icmp ult ptr %0, %.val11.i.i
  %3 = icmp uge ptr %0, %i.r
  %i.s = select i1 %2, i1 true, i1 %3
  br i1 %i.s, label %bb.e, label %mi_heap_check_owned.exit, !llvm.loop !18

.critedge.i.i:                                    ; preds = %bb.e
  %i.t = add nuw nsw i64 %.02229.i.i, 1           ; 2 uses
  %exitcond.i.i = icmp eq i64 %i.t, 75
  br i1 %exitcond.i.i, label %mi_heap_check_owned.exit, label %bb.d, !llvm.loop !19

mi_heap_check_owned.exit:                         ; preds = %.critedge.i.i, %.lr.ph.i, %bb.a, %bb.b, %bb.c
  %.0.i = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ true, %.lr.ph.i ], [ false, %bb.c ], [ false, %.critedge.i.i ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_Z18_mi_heap_area_initP14mi_heap_area_sP9mi_page_s(ptr nofree noundef writeonly captures(none) initializes((0, 52)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 40
  %.val = load i64, ptr %i.a, align 8, !tbaa !62  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load i16, ptr %i.b, align 4, !tbaa !141
  %i.d = zext i16 %i.c to i64
  %i.e = mul i64 %.val, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !143
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.h = load i16, ptr %i.g, align 2, !tbaa !71
  %i.i = zext i16 %i.h to i64
  %i.j = mul i64 %.val, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.j, ptr %i.k, align 8, !tbaa !144
  %i.l = getelementptr i8, ptr %1, i64 48
  %.val18 = load ptr, ptr %i.l, align 8, !tbaa !59
  store ptr %.val18, ptr %0, align 8, !tbaa !145
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load i16, ptr %i.m, align 8, !tbaa !66
  %i.o = zext i16 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.o, ptr %i.p, align 8, !tbaa !146
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.val, ptr %i.q, align 8, !tbaa !147
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.val, ptr %i.r, align 8, !tbaa !148
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.t = load i8, ptr %i.s, align 1, !tbaa !149
  %i.u = zext i8 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.u, ptr %i.v, align 8, !tbaa !150
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_Z26_mi_heap_area_visit_blocksPK14mi_heap_area_sP9mi_page_sPFbPK9mi_heap_sS1_PvmS7_ES7_(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [128 x i64], align 16             ; 6 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.e = load atomic i64, ptr %i.d monotonic, align 8 ; 3 uses
  %i.f = and i64 %i.e, 3
  %i.g = cmpxchg weak ptr %i.d, i64 %i.e, i64 %i.f acq_rel acquire, align 8 ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %._crit_edge.i.i, label %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i

_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i: ; preds = %bb.b, %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i
  %i.i = phi { i64, i1 } [ %i.l, %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i ], [ %i.g, %bb.b ]
  %i.j = extractvalue { i64, i1 } %i.i, 0         ; 3 uses
  %i.k = and i64 %i.j, 3
  %i.l = cmpxchg weak ptr %i.d, i64 %i.j, i64 %i.k acq_rel acquire, align 8 ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  br i1 %i.m, label %._crit_edge.i.i, label %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i, %bb.b
  %.025.lcssa.i.i = phi i64 [ %i.e, %bb.b ], [ %i.j, %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i ]
  %i.n = and i64 %.025.lcssa.i.i, -4              ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr                 ; 3 uses
  %i.p = icmp eq i64 %i.n, 0
  br i1 %i.p, label %_ZL28_mi_page_thread_free_collectP9mi_page_s.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.r = load i16, ptr %i.q, align 2, !tbaa !71   ; 2 uses
  %i.s = zext i16 %i.r to i64                     ; 2 uses
  %.0.val30.i.i = load i64, ptr %i.o, align 8, !tbaa !65 ; 2 uses
  %i.t = icmp ne i64 %.0.val30.i.i, 0
  %i.u = icmp ne i16 %i.r, 0
  %i.v = select i1 %i.t, i1 %i.u, i1 false
  br i1 %i.v, label %.lr.ph.i.i, label %._crit_edge34.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.val32.i.i = phi i64 [ %.0.val.i.i, %.lr.ph.i.i ], [ %.0.val30.i.i, %bb.c ]
  %.02031.i.i = phi i64 [ %i.x, %.lr.ph.i.i ], [ 1, %bb.c ] ; 2 uses
  %i.w = inttoptr i64 %.0.val32.i.i to ptr        ; 2 uses
  %i.x = add nuw nsw i64 %.02031.i.i, 1           ; 2 uses
  %.0.val.i.i = load i64, ptr %i.w, align 8, !tbaa !65 ; 2 uses
  %i.y = icmp ne i64 %.0.val.i.i, 0
  %i.z = icmp samesign ult i64 %.02031.i.i, %i.s
  %i.aa = select i1 %i.y, i1 %i.z, i1 false
  br i1 %i.aa, label %.lr.ph.i.i, label %._crit_edge34.i.i, !llvm.loop !1

._crit_edge34.i.i:                                ; preds = %.lr.ph.i.i, %bb.c
  %.020.lcssa.i.i = phi i64 [ 1, %bb.c ], [ %i.x, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.i.i = phi ptr [ %i.o, %bb.c ], [ %i.w, %.lr.ph.i.i ]
  %i.ab = icmp samesign ugt i64 %.020.lcssa.i.i, %i.s
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge34.i.i
  tail call void (i32, ptr, ...) @_Z17_mi_error_messageiPKcz(i32 noundef 14, ptr noundef nonnull @.str.175)
  br label %_ZL28_mi_page_thread_free_collectP9mi_page_s.exit.i

bb.e:                                             ; preds = %._crit_edge34.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !63
  %i.ae = ptrtoint ptr %i.ad to i64
  store i64 %i.ae, ptr %.0.lcssa.i.i, align 8, !tbaa !65
  store ptr %i.o, ptr %i.ac, align 8, !tbaa !63
  %i.af = trunc nuw i64 %.020.lcssa.i.i to i16
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !66
  %i.ai = sub i16 %i.ah, %i.af
  store i16 %i.ai, ptr %i.ag, align 8, !tbaa !66
  br label %_ZL28_mi_page_thread_free_collectP9mi_page_s.exit.i

_ZL28_mi_page_thread_free_collectP9mi_page_s.exit.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !63 ; 3 uses
  %.not22.i = icmp eq ptr %i.ak, null
  br i1 %.not22.i, label %_Z21_mi_page_free_collectP9mi_page_sb.exit, label %bb.f

bb.f:                                             ; preds = %_ZL28_mi_page_thread_free_collectP9mi_page_s.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !72 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %.sink.split.i, label %.preheader.i, !prof !68

.preheader.i:                                     ; preds = %bb.f, %.preheader.i
  %.0.i = phi ptr [ %i.ao, %.preheader.i ], [ %i.ak, %bb.f ] ; 2 uses
  %.0.val.i = load i64, ptr %.0.i, align 8, !tbaa !65 ; 2 uses
  %i.ao = inttoptr i64 %.0.val.i to ptr
  %.not23.i = icmp eq i64 %.0.val.i, 0
  br i1 %.not23.i, label %bb.g, label %.preheader.i, !llvm.loop !3

bb.g:                                             ; preds = %.preheader.i
  %i.ap = ptrtoint ptr %i.am to i64
  store i64 %i.ap, ptr %.0.i, align 8, !tbaa !65
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %bb.f
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !72
  store ptr null, ptr %i.aj, align 8, !tbaa !63
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 15 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = and i8 %i.ar, -2
  store i8 %i.as, ptr %i.aq, align 1
  br label %_Z21_mi_page_free_collectP9mi_page_sb.exit

_Z21_mi_page_free_collectP9mi_page_sb.exit:       ; preds = %_ZL28_mi_page_thread_free_collectP9mi_page_s.exit.i, %.sink.split.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.au = load i16, ptr %i.at, align 8, !tbaa !66 ; 2 uses
  %i.av = icmp eq i16 %i.au, 0
  br i1 %i.av, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_Z21_mi_page_free_collectP9mi_page_sb.exit
  %i.aw = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ax = add i64 %i.aw, -1                       ; 2 uses
  %i.ay = and i64 %i.ax, -33554432
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = icmp slt i64 %i.ax, 33554432
  %i.bb = select i1 %i.ba, ptr null, ptr %i.az    ; 2 uses
  %i.bc = getelementptr i8, ptr %1, i64 40
  %.val.i = load i64, ptr %i.bc, align 8, !tbaa !62 ; 20 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 288
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.aw, %i.be
  %i.bg = sdiv exact i64 %i.bf, 96
  %i.bh = shl i64 %i.bg, 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh ; 2 uses
  %i.bj = add i64 %.val.i, -1                     ; 2 uses
  %or.cond.i.i = icmp ult i64 %i.bj, 65536
  br i1 %or.cond.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bk = load i32, ptr %1, align 8, !tbaa !140
  %i.bl = zext i32 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 16
  %i.bn = ptrtoint ptr %i.bi to i64
  %i.bo = urem i64 %i.bn, %.val.i
  %i.bp = sub nsw i64 %.val.i, %i.bo              ; 3 uses
  %i.bq = icmp uge i64 %i.bp, %.val.i
  %i.br = add nuw nsw i64 %i.bp, %.val.i
  %.not.i.i = icmp ult i64 %i.bm, %i.br
  %or.cond35.i.i = select i1 %i.bq, i1 true, i1 %.not.i.i
  %.0.i.i = select i1 %or.cond35.i.i, i64 0, i64 %i.bp
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1.i.i = phi i64 [ %.0.i.i, %bb.i ], [ 0, %bb.h ] ; 3 uses
  %i.bs = icmp ugt i64 %.val.i, 7
  br i1 %i.bs, label %bb.k, label %_Z22_mi_segment_page_startPK12mi_segment_sPK9mi_page_sPm.exit

bb.k:                                             ; preds = %bb.j
end_hunk_0
