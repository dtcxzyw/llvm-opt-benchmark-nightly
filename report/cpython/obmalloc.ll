inline.NumInlined: 1359
inline.NumDeleted: 295
begin_hunk_0_@_mi_random_next:bb.a
  store i32 0, ptr %i.h, align 4, !tbaa !7
  %i.j = load i32, ptr %i.a, align 4, !tbaa !175
  %i.k = add i32 %i.j, -1                         ; 3 uses
  store i32 %i.k, ptr %i.a, align 4, !tbaa !175
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.c, label %chacha_next32.exit2

bb.c:                                             ; preds = %chacha_next32.exit
  tail call fastcc void @chacha_block(ptr noundef nonnull %0)
  store i32 16, ptr %i.a, align 4, !tbaa !175
  br label %chacha_next32.exit2

chacha_next32.exit2:                              ; preds = %chacha_next32.exit, %bb.c
  %i.m = phi i32 [ 16, %bb.c ], [ %i.k, %chacha_next32.exit ]
  %i.n = zext i32 %i.i to i64
  %i.o = shl nuw i64 %i.n, 32
  %i.p = sub nsw i32 16, %i.m
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr [4 x i8], ptr %i.e, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7
  store i32 0, ptr %i.r, align 4, !tbaa !7
  %i.t = load i32, ptr %i.a, align 4, !tbaa !175
  %i.u = add i32 %i.t, -1
  store i32 %i.u, ptr %i.a, align 4, !tbaa !175
  %i.v = zext i32 %i.s to i64
  %i.w = or disjoint i64 %i.o, %i.v
  ret i64 %i.w
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_heap_destroy_pages(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %mi_heap_visit_pages.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 3024
  %i.c = load i64, ptr %i.b, align 8, !tbaa !196
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %mi_heap_visit_pages.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 1040
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i, %.preheader.i
  %.02229.i = phi i64 [ 0, %.preheader.i ], [ %i.bd, %.critedge.i ] ; 2 uses
  %i.f = getelementptr [24 x i8], ptr %i.e, i64 %.02229.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64   ; 2 uses
  %.not.i8 = icmp eq ptr %i.g, null
  br i1 %.not.i8, label %.critedge.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_mi_heap_page_destroy.exit
  %.020.i9 = phi ptr [ %i.i, %_mi_heap_page_destroy.exit ], [ %i.g, %bb.c ] ; 6 uses
  %i.h = getelementptr i8, ptr %.020.i9, i64 56   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !197  ; 2 uses
  %i.j = tail call zeroext i1 @_mi_page_try_use_delayed_free(ptr noundef nonnull %.020.i9, i32 noundef 3, i1 noundef zeroext false)
  br i1 %i.j, label %mi_page_block_size.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph
  %i.k = getelementptr i8, ptr %.020.i9, i64 40   ; 10 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge.4.i, %.lr.ph.i.i.preheader
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.i2

.critedge.i2:                                     ; preds = %bb.h, %.lr.ph.i.i
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 3 uses
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.m, 3
  switch i32 %i.n, label %bb.h [
    i32 1, label %.critedge.outer.1.i
    i32 3, label %mi_page_block_size.exit.i
  ], !prof !208

.critedge.outer.1.i:                              ; preds = %.critedge.i2
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.1.i

.critedge.1.i:                                    ; preds = %bb.d, %.critedge.outer.1.i
  %i.o = load atomic i64, ptr %i.k acquire, align 8 ; 3 uses
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 3
  switch i32 %i.q, label %bb.d [
    i32 1, label %.critedge.outer.2.i
    i32 3, label %mi_page_block_size.exit.i
  ], !prof !208

.critedge.outer.2.i:                              ; preds = %.critedge.1.i
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.2.i

bb.d:                                             ; preds = %.critedge.1.i
  %i.r = or i64 %i.o, 3
  %i.s = cmpxchg weak ptr %i.k, i64 %i.o, i64 %i.r release monotonic, align 8
  %i.t = extractvalue { i64, i1 } %i.s, 1
  br i1 %i.t, label %mi_page_block_size.exit.i, label %.critedge.1.i, !llvm.loop !76

.critedge.2.i:                                    ; preds = %bb.e, %.critedge.outer.2.i
  %i.u = load atomic i64, ptr %i.k acquire, align 8 ; 3 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.v, 3
  switch i32 %i.w, label %bb.e [
    i32 1, label %.critedge.outer.3.i
    i32 3, label %mi_page_block_size.exit.i
  ], !prof !208

.critedge.outer.3.i:                              ; preds = %.critedge.2.i
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.3.i

bb.e:                                             ; preds = %.critedge.2.i
  %i.x = or i64 %i.u, 3
  %i.y = cmpxchg weak ptr %i.k, i64 %i.u, i64 %i.x release monotonic, align 8
  %i.z = extractvalue { i64, i1 } %i.y, 1
  br i1 %i.z, label %mi_page_block_size.exit.i, label %.critedge.2.i, !llvm.loop !76

.critedge.3.i:                                    ; preds = %bb.f, %.critedge.outer.3.i
  %i.aa = load atomic i64, ptr %i.k acquire, align 8 ; 3 uses
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = and i32 %i.ab, 3
  switch i32 %i.ac, label %bb.f [
    i32 1, label %.critedge.outer.4.i
    i32 3, label %mi_page_block_size.exit.i
  ], !prof !208

.critedge.outer.4.i:                              ; preds = %.critedge.3.i
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.4.i

bb.f:                                             ; preds = %.critedge.3.i
  %i.ad = or i64 %i.aa, 3
  %i.ae = cmpxchg weak ptr %i.k, i64 %i.aa, i64 %i.ad release monotonic, align 8
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  br i1 %i.af, label %mi_page_block_size.exit.i, label %.critedge.3.i, !llvm.loop !76

.critedge.4.i:                                    ; preds = %bb.g, %.critedge.outer.4.i
  %i.ag = load atomic i64, ptr %i.k acquire, align 8 ; 3 uses
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 3
  switch i32 %i.ai, label %bb.g [
    i32 1, label %.lr.ph.i.i
    i32 3, label %mi_page_block_size.exit.i
  ], !prof !208, !llvm.loop !198

bb.g:                                             ; preds = %.critedge.4.i
  %i.aj = or i64 %i.ag, 3
  %i.ak = cmpxchg weak ptr %i.k, i64 %i.ag, i64 %i.aj release monotonic, align 8
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  br i1 %i.al, label %mi_page_block_size.exit.i, label %.critedge.4.i, !llvm.loop !76

bb.h:                                             ; preds = %.critedge.i2
  %i.am = or i64 %i.l, 3
  %i.an = cmpxchg weak ptr %i.k, i64 %i.l, i64 %i.am release monotonic, align 8
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  br i1 %i.ao, label %mi_page_block_size.exit.i, label %.critedge.i2, !llvm.loop !76

mi_page_block_size.exit.i:                        ; preds = %.critedge.i2, %bb.h, %.critedge.1.i, %bb.d, %.critedge.2.i, %bb.e, %.critedge.3.i, %bb.f, %.critedge.4.i, %bb.g, %.lr.ph
  %i.ap = getelementptr i8, ptr %.020.i9, i64 24
  store i32 0, ptr %i.ap, align 8, !tbaa !18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.aq = load ptr, ptr %0, align 8, !tbaa !22
  %i.ar = getelementptr i8, ptr %i.aq, i64 32     ; 3 uses
  %i.as = ptrtoint ptr %.020.i9 to i64
  %i.at = add i64 %i.as, -1
  %i.au = and i64 %i.at, -33554432
  %i.av = inttoptr i64 %i.au to ptr               ; 4 uses
  %i.aw = tail call fastcc ptr @mi_segment_page_clear(ptr noundef nonnull %.020.i9, ptr noundef %i.ar) ; 0 uses
  %i.ax = getelementptr i8, ptr %i.av, i64 208
  %i.ay = load i64, ptr %i.ax, align 16, !tbaa !67 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %mi_page_block_size.exit.i
  tail call fastcc void @mi_segment_free(ptr noundef nonnull %i.av, ptr noundef %i.ar)
  br label %_mi_heap_page_destroy.exit

bb.j:                                             ; preds = %mi_page_block_size.exit.i
  %i.ba = getelementptr i8, ptr %i.av, i64 192
  %i.bb = load i64, ptr %i.ba, align 64, !tbaa !72
  %i.bc = icmp eq i64 %i.ay, %i.bb
  br i1 %i.bc, label %bb.k, label %_mi_heap_page_destroy.exit

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @mi_segment_abandon(ptr noundef nonnull %i.av, ptr noundef %i.ar)
  br label %_mi_heap_page_destroy.exit

_mi_heap_page_destroy.exit:                       ; preds = %bb.i, %bb.j, %bb.k
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %.critedge.i, label %.lr.ph, !llvm.loop !199

.critedge.i:                                      ; preds = %_mi_heap_page_destroy.exit, %bb.c
  %i.bd = add nuw nsw i64 %.02229.i, 1            ; 2 uses
  %exitcond.i = icmp eq i64 %i.bd, 75
  br i1 %exitcond.i, label %mi_heap_visit_pages.exit, label %bb.c, !llvm.loop !200

mi_heap_visit_pages.exit:                         ; preds = %.critedge.i, %bb.a, %bb.b
  %i.be = getelementptr i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.be, i8 0, i64 1032, i1 false)
  %i.bf = getelementptr i8, ptr %0, i64 1040      ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bf, i64 8) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %i.bf, ptr noundef nonnull readonly align 16 dereferenceable(1800) getelementptr inbounds nuw (i8, ptr @_mi_heap_empty, i64 1040), i64 1800, i1 false)
  %i.bg = getelementptr i8, ptr %0, i64 2840
  store atomic ptr null, ptr %i.bg seq_cst, align 8, !tbaa !209
  %i.bh = getelementptr i8, ptr %0, i64 3024
  store i64 0, ptr %i.bh, align 8, !tbaa !196
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mi_heap_destroy(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %0, @_mi_heap_empty
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 3056
  %i.d = load i8, ptr %i.c, align 8, !tbaa !195, !range !42, !noundef !43
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @mi_heap_delete(ptr noundef nonnull %0)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_mi_heap_destroy_pages(ptr noundef nonnull %0)
  tail call fastcc void @mi_heap_free(ptr noundef %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mi_heap_delete(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %0, @_mi_heap_empty
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !22
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !194  ; 4 uses
  %i.f = icmp eq ptr %i.e, %0
  br i1 %i.f, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 3024       ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !196
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %mi_heap_absorb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 2840       ; 5 uses
  %i.k = load atomic ptr, ptr %i.j monotonic, align 8 ; 2 uses
  %.old1.not.i.i = icmp eq ptr %i.k, null
  br i1 %.old1.not.i.i, label %_mi_heap_delayed_free_partial.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.n, %.preheader.i.i ], [ %i.k, %bb.d ]
  %i.l = cmpxchg weak ptr %i.j, ptr %.0.i.i, ptr null acq_rel acquire, align 8 ; 2 uses
  %i.m = extractvalue { ptr, i1 } %i.l, 1
  %i.n = extractvalue { ptr, i1 } %i.l, 0         ; 3 uses
  %i.o = icmp eq ptr %i.n, null                   ; 2 uses
  %or.cond.not.i.i = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond.not.i.i, label %.critedge.i.i, label %.preheader.i.i, !llvm.loop !45

.critedge.i.i:                                    ; preds = %.preheader.i.i
  br i1 %i.o, label %_mi_heap_delayed_free_partial.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge.i.i, %.loopexit.i.i
  %.334.i.i = phi ptr [ %i.q, %.loopexit.i.i ], [ %i.n, %.critedge.i.i ] ; 4 uses
  %i.p = load atomic i64, ptr %.334.i.i monotonic, align 8 ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = tail call zeroext i1 @_mi_free_delayed_block(ptr noundef nonnull %.334.i.i)
  br i1 %i.r, label %.loopexit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.s = load atomic ptr, ptr %i.j monotonic, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.027.i.i = phi ptr [ %i.s, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.t = ptrtoint ptr %.027.i.i to i64
  store atomic i64 %i.t, ptr %.334.i.i monotonic, align 8
  %i.u = cmpxchg weak ptr %i.j, ptr %.027.i.i, ptr %.334.i.i release monotonic, align 8 ; 2 uses
  %i.v = extractvalue { ptr, i1 } %i.u, 1
  %i.w = extractvalue { ptr, i1 } %i.u, 0
  br i1 %i.v, label %.loopexit.i.i, label %bb.f, !llvm.loop !47

.loopexit.i.i:                                    ; preds = %bb.f, %.lr.ph.i.i
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %_mi_heap_delayed_free_partial.exit.i, label %.lr.ph.i.i, !llvm.loop !48

_mi_heap_delayed_free_partial.exit.i:             ; preds = %.loopexit.i.i, %.critedge.i.i, %bb.d
  %i.x = getelementptr i8, ptr %i.e, i64 1040
  %i.y = getelementptr i8, ptr %0, i64 1040       ; 3 uses
  %i.z = getelementptr i8, ptr %i.e, i64 3024     ; 2 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  tail call void @_mi_heap_delayed_free_all(ptr noundef nonnull %0)
  %i.aa = getelementptr i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.aa, i8 0, i64 1032, i1 false)
  call void @llvm.assume(i1 true) [ "align"(ptr %i.y, i64 8) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %i.y, ptr noundef nonnull readonly align 16 dereferenceable(1800) getelementptr inbounds nuw (i8, ptr @_mi_heap_empty, i64 1040), i64 1800, i1 false)
  store atomic ptr null, ptr %i.j seq_cst, align 8, !tbaa !209
  store i64 0, ptr %i.g, align 8, !tbaa !196
  br label %mi_heap_absorb.exit

bb.h:                                             ; preds = %bb.h, %_mi_heap_delayed_free_partial.exit.i
  %.019.i = phi i64 [ 0, %_mi_heap_delayed_free_partial.exit.i ], [ %i.ai, %bb.h ] ; 3 uses
  %i.ab = getelementptr [24 x i8], ptr %i.x, i64 %.019.i
  %i.ac = getelementptr [24 x i8], ptr %i.y, i64 %.019.i
  %i.ad = tail call i64 @_mi_page_queue_append(ptr noundef %i.e, ptr noundef %i.ab, ptr noundef %i.ac) ; 2 uses
  %i.ae = load i64, ptr %i.z, align 8, !tbaa !196
  %i.af = add i64 %i.ae, %i.ad
  store i64 %i.af, ptr %i.z, align 8, !tbaa !196
  %i.ag = load i64, ptr %i.g, align 8, !tbaa !196
  %i.ah = sub i64 %i.ag, %i.ad
  store i64 %i.ah, ptr %i.g, align 8, !tbaa !196
  %i.ai = add nuw nsw i64 %.019.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ai, 75
  br i1 %exitcond.not.i, label %bb.g, label %bb.h, !llvm.loop !210

bb.i:                                             ; preds = %bb.b
  tail call fastcc void @mi_heap_collect_ex(ptr noundef nonnull %0, i32 noundef 2)
  br label %mi_heap_absorb.exit

mi_heap_absorb.exit:                              ; preds = %bb.g, %bb.c, %bb.i
  tail call fastcc void @mi_heap_free(ptr noundef %0)
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %mi_heap_absorb.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mi_heap_free(ptr noundef nonnull %0) unnamed_addr #2 {
bb.a:
  %.not21 = icmp eq ptr %0, @_mi_heap_empty
  br i1 %.not21, label %mi_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 3 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !194  ; 3 uses
  %i.d = icmp eq ptr %i.c, %0
  br i1 %i.d, label %mi_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default) ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.g = icmp eq ptr %0, %i.f
  br i1 %i.g, label %bb.d, label %_mi_heap_set_default_direct.exit

bb.d:                                             ; preds = %bb.c
  store ptr %i.c, ptr %i.e, align 8, !tbaa !54
  %i.h = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !7 ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, -1
  br i1 %.not.i.i, label %_mi_heap_set_default_direct.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @pthread_setspecific(i32 noundef %i.h, ptr noundef %i.c) #55 ; 0 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !22
  br label %_mi_heap_set_default_direct.exit

_mi_heap_set_default_direct.exit:                 ; preds = %bb.e, %bb.d, %bb.c
  %i.j = phi ptr [ %.pre, %bb.e ], [ %i.a, %bb.d ], [ %i.a, %bb.c ]
  %i.k = getelementptr i8, ptr %i.j, i64 24       ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_mi_heap_set_default_direct.exit
  %.019 = phi ptr [ null, %_mi_heap_set_default_direct.exit ], [ %.0, %bb.f ] ; 2 uses
  %.0.in = phi ptr [ %i.k, %_mi_heap_set_default_direct.exit ], [ %i.o, %bb.f ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !54  ; 5 uses
  %i.l = icmp ne ptr %.0, %0
  %i.m = icmp ne ptr %.0, null
  %i.n = and i1 %i.l, %i.m
  %i.o = getelementptr i8, ptr %.0, i64 3048
  br i1 %i.n, label %bb.f, label %bb.g, !llvm.loop !211

bb.g:                                             ; preds = %bb.f
  %i.p = icmp eq ptr %.0, %0
  br i1 %i.p, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not = icmp eq ptr %.019, null
  %i.q = getelementptr i8, ptr %0, i64 3048
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !207  ; 2 uses
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr i8, ptr %.019, i64 3048
  store ptr %i.r, ptr %i.s, align 8, !tbaa !207
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store ptr %i.r, ptr %i.k, align 8, !tbaa !206
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g
  %i.t = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.u = add i64 %i.t, -1
  %i.v = and i64 %i.u, -33554432                  ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 4 uses
  %i.x = tail call ptr asm "movq %fs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) null) #60, !srcloc !58
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = getelementptr i8, ptr %i.w, i64 256
  %i.aa = load atomic i64, ptr %i.z monotonic, align 256
  %i.ab = icmp eq i64 %i.aa, %i.y
  %i.ac = sub i64 %i.t, %i.v
  %i.ad = lshr i64 %i.ac, 16
  %i.ae = getelementptr i8, ptr %i.w, i64 264
  %i.af = getelementptr [80 x i8], ptr %i.ae, i64 %i.ad ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !59
  %i.ai = zext i32 %i.ah to i64
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr i8, ptr %i.af, i64 %i.aj  ; 6 uses
  br i1 %i.ab, label %bb.l, label %bb.p, !prof !55

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr i8, ptr %i.ak, i64 14
  %i.am = load i8, ptr %i.al, align 2, !tbaa !60
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %bb.m, label %bb.o, !prof !55

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr i8, ptr %i.ak, i64 32     ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !57
  %i.aq = ptrtoint ptr %i.ap to i64
  store atomic i64 %i.aq, ptr %0 monotonic, align 8
  store ptr %0, ptr %i.ao, align 8, !tbaa !57
  %i.ar = getelementptr i8, ptr %i.ak, i64 24     ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !18
  %i.at = add i32 %i.as, -1                       ; 2 uses
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !18
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.n, label %mi_free.exit, !prof !17

bb.n:                                             ; preds = %bb.m
  tail call void @_mi_page_retire(ptr noundef %i.ak)
  br label %mi_free.exit

bb.o:                                             ; preds = %bb.l
  tail call void @_mi_free_generic(ptr noundef nonnull %i.w, ptr noundef %i.ak, i1 noundef zeroext true, ptr noundef nonnull %0)
  br label %mi_free.exit

bb.p:                                             ; preds = %bb.k
  tail call void @_mi_free_generic(ptr noundef nonnull %i.w, ptr noundef %i.ak, i1 noundef zeroext false, ptr noundef nonnull %0)
  br label %mi_free.exit

mi_free.exit:                                     ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_heap_unsafe_destroy_all() local_unnamed_addr #2 {
bb.a:
  tail call void @mi_process_init(), !inline_history !203
  %i.a = tail call fastcc zeroext i1 @_mi_heap_init(), !inline_history !203
  br i1 %i.a, label %mi_heap_get_backing.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 312), i64 1 monotonic, align 8
  %i.c = add i64 %i.b, 1                          ; 2 uses
  %i.d = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304) monotonic, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0.i.i.i.i.i = phi i64 [ %i.d, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = icmp slt i64 %.0.i.i.i.i.i, %i.c
  br i1 %i.e, label %bb.d, label %_mi_stat_increase.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304), i64 %.0.i.i.i.i.i, i64 %i.c release monotonic, align 8 ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  %i.h = extractvalue { i64, i1 } %i.f, 0
  br i1 %i.g, label %_mi_stat_increase.exit.i.i, label %bb.c, !llvm.loop !124

_mi_stat_increase.exit.i.i:                       ; preds = %bb.d, %bb.c
  %i.i = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 288), i64 1 monotonic, align 8 ; 0 uses
  %i.j = atomicrmw add ptr @thread_count, i64 1 monotonic, align 8 ; 0 uses
  br label %mi_heap_get_backing.exit

mi_heap_get_backing.exit:                         ; preds = %bb.a, %_mi_stat_increase.exit.i.i
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !194
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.q = getelementptr i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !206  ; 2 uses
  %.not8 = icmp eq ptr %i.r, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %mi_heap_get_backing.exit, %mi_heap_destroy.exit
  %.09 = phi ptr [ %i.t, %mi_heap_destroy.exit ], [ %i.r, %mi_heap_get_backing.exit ] ; 6 uses
  %i.s = getelementptr i8, ptr %.09, i64 3048
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !207  ; 2 uses
  %i.u = getelementptr i8, ptr %.09, i64 3056
  %i.v = load i8, ptr %i.u, align 8, !tbaa !195, !range !42, !noundef !43
  %i.w = trunc nuw i8 %i.v to i1
end_hunk_0
begin_hunk_1_@_mi_heap_init:bb.a
  store ptr @_mi_heap_main, ptr %i.a, align 8, !tbaa !54
  %i.i = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !7 ; 2 uses
  %.not.i.i = icmp eq i32 %i.i, -1
  br i1 %.not.i.i, label %_mi_heap_set_default_direct.exit, label %bb.c

bb.c:                                             ; preds = %_mi_is_main_thread.exit.thread
  %i.j = tail call i32 @pthread_setspecific(i32 noundef %i.i, ptr noundef nonnull @_mi_heap_main) #55 ; 0 uses
  br label %_mi_heap_set_default_direct.exit

bb.d:                                             ; preds = %_mi_is_main_thread.exit
  %i.k = load atomic ptr, ptr @td_cache monotonic, align 16
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = atomicrmw xchg ptr @td_cache, ptr null acq_rel, align 8 ; 2 uses
  %.not27.i = icmp eq ptr %i.l, null
  br i1 %.not27.i, label %bb.f, label %.loopexit.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 8) monotonic, align 8
  %.not.1.i = icmp eq ptr %i.m, null
  br i1 %.not.1.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 8), ptr null acq_rel, align 8 ; 2 uses
  %.not27.1.i = icmp eq ptr %i.n, null
  br i1 %.not27.1.i, label %bb.h, label %.loopexit.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 16) monotonic, align 16
  %.not.2.i = icmp eq ptr %i.o, null
  br i1 %.not.2.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 16), ptr null acq_rel, align 8 ; 2 uses
  %.not27.2.i = icmp eq ptr %i.p, null
  br i1 %.not27.2.i, label %bb.j, label %.loopexit.i

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.q = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 24) monotonic, align 8
  %.not.3.i = icmp eq ptr %i.q, null
  br i1 %.not.3.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 24), ptr null acq_rel, align 8 ; 2 uses
  %.not27.3.i = icmp eq ptr %i.r, null
  br i1 %.not27.3.i, label %bb.l, label %.loopexit.i

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.s = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 32) monotonic, align 16
  %.not.4.i = icmp eq ptr %i.s, null
  br i1 %.not.4.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 32), ptr null acq_rel, align 8 ; 2 uses
  %.not27.4.i = icmp eq ptr %i.t, null
  br i1 %.not27.4.i, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.u = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 40) monotonic, align 8
  %.not.5.i = icmp eq ptr %i.u, null
  br i1 %.not.5.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 40), ptr null acq_rel, align 8 ; 2 uses
  %.not27.5.i = icmp eq ptr %i.v, null
  br i1 %.not27.5.i, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.w = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 48) monotonic, align 16
  %.not.6.i = icmp eq ptr %i.w, null
  br i1 %.not.6.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.x = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 48), ptr null acq_rel, align 8 ; 2 uses
  %.not27.6.i = icmp eq ptr %i.x, null
  br i1 %.not27.6.i, label %bb.r, label %.loopexit.i

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.y = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 56) monotonic, align 8
  %.not.7.i = icmp eq ptr %i.y, null
  br i1 %.not.7.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.z = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 56), ptr null acq_rel, align 8 ; 2 uses
  %.not27.7.i = icmp eq ptr %i.z, null
  br i1 %.not27.7.i, label %bb.t, label %.loopexit.i

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.aa = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 64) monotonic, align 16
  %.not.8.i = icmp eq ptr %i.aa, null
  br i1 %.not.8.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ab = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 64), ptr null acq_rel, align 8 ; 2 uses
  %.not27.8.i = icmp eq ptr %i.ab, null
  br i1 %.not27.8.i, label %bb.v, label %.loopexit.i

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ac = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 72) monotonic, align 8
  %.not.9.i = icmp eq ptr %i.ac, null
  br i1 %.not.9.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ad = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 72), ptr null acq_rel, align 8 ; 2 uses
  %.not27.9.i = icmp eq ptr %i.ad, null
  br i1 %.not27.9.i, label %bb.x, label %.loopexit.i

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ae = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 80) monotonic, align 16
  %.not.10.i = icmp eq ptr %i.ae, null
  br i1 %.not.10.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.af = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 80), ptr null acq_rel, align 8 ; 2 uses
  %.not27.10.i = icmp eq ptr %i.af, null
  br i1 %.not27.10.i, label %bb.z, label %.loopexit.i

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ag = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 88) monotonic, align 8
  %.not.11.i = icmp eq ptr %i.ag, null
  br i1 %.not.11.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ah = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 88), ptr null acq_rel, align 8 ; 2 uses
  %.not27.11.i = icmp eq ptr %i.ah, null
  br i1 %.not27.11.i, label %bb.ab, label %.loopexit.i

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ai = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 96) monotonic, align 16
  %.not.12.i = icmp eq ptr %i.ai, null
  br i1 %.not.12.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.aj = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 96), ptr null acq_rel, align 8 ; 2 uses
  %.not27.12.i = icmp eq ptr %i.aj, null
  br i1 %.not27.12.i, label %bb.ad, label %.loopexit.i

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ak = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 104) monotonic, align 8
  %.not.13.i = icmp eq ptr %i.ak, null
  br i1 %.not.13.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.al = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 104), ptr null acq_rel, align 8 ; 2 uses
  %.not27.13.i = icmp eq ptr %i.al, null
  br i1 %.not27.13.i, label %bb.af, label %.loopexit.i

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.am = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 112) monotonic, align 16
  %.not.14.i = icmp eq ptr %i.am, null
  br i1 %.not.14.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.an = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 112), ptr null acq_rel, align 8 ; 2 uses
  %.not27.14.i = icmp eq ptr %i.an, null
  br i1 %.not27.14.i, label %bb.ah, label %.loopexit.i

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ao = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 120) monotonic, align 8
  %.not.15.i = icmp eq ptr %i.ao, null
  br i1 %.not.15.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ap = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 120), ptr null acq_rel, align 8 ; 2 uses
  %.not27.15.i = icmp eq ptr %i.ap, null
  br i1 %.not27.15.i, label %bb.aj, label %.loopexit.i

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #55
  %i.aq = call ptr @_mi_os_alloc(i64 noundef 4696, ptr noundef nonnull %0, ptr nonnull poison) ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.as = call ptr @_mi_os_alloc(i64 noundef 4696, ptr noundef nonnull %0, ptr nonnull poison) ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 12, ptr noundef nonnull @.str.51, i64 noundef 4696)
  br label %bb.an

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %.3.ph.i = phi ptr [ %i.aq, %bb.aj ], [ %i.as, %bb.ak ] ; 2 uses
  %i.au = getelementptr i8, ptr %.3.ph.i, i64 4672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !165
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.aw = load i8, ptr %i.av, align 2, !tbaa !163, !range !42, !noundef !43
  %i.ax = trunc nuw i8 %i.aw to i1
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.334.i = phi ptr [ %.3.ph.i, %bb.am ], [ null, %bb.al ]
  %.0.i = phi i1 [ %i.ax, %bb.am ], [ false, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #55
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.an, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e
  %.4.i = phi ptr [ %.334.i, %bb.an ], [ %i.l, %bb.e ], [ %i.n, %bb.g ], [ %i.p, %bb.i ], [ %i.r, %bb.k ], [ %i.t, %bb.m ], [ %i.v, %bb.o ], [ %i.x, %bb.q ], [ %i.z, %bb.s ], [ %i.ab, %bb.u ], [ %i.ad, %bb.w ], [ %i.af, %bb.y ], [ %i.ah, %bb.aa ], [ %i.aj, %bb.ac ], [ %i.al, %bb.ae ], [ %i.an, %bb.ag ], [ %i.ap, %bb.ai ] ; 15 uses
  %.1.i = phi i1 [ %.0.i, %bb.an ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.k ], [ false, %bb.m ], [ false, %bb.o ], [ false, %bb.q ], [ false, %bb.s ], [ false, %bb.u ], [ false, %bb.w ], [ false, %bb.y ], [ false, %bb.aa ], [ false, %bb.ac ], [ false, %bb.ae ], [ false, %bb.ag ], [ false, %bb.ai ]
  %i.ay = icmp eq ptr %.4.i, null                 ; 2 uses
  %or.cond.i = select i1 %i.ay, i1 true, i1 %.1.i
  br i1 %or.cond.i, label %mi_thread_data_zalloc.exit, label %mi_thread_data_zalloc.exit.thread

mi_thread_data_zalloc.exit.thread:                ; preds = %.loopexit.i
  call void @llvm.assume(i1 true) [ "align"(ptr %.4.i, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4696) %.4.i, i8 0, i64 4696, i1 false)
  br label %bb.ao

mi_thread_data_zalloc.exit:                       ; preds = %.loopexit.i
  br i1 %i.ay, label %_mi_heap_set_default_direct.exit, label %bb.ao

bb.ao:                                            ; preds = %mi_thread_data_zalloc.exit.thread, %mi_thread_data_zalloc.exit
  %i.az = getelementptr i8, ptr %.4.i, i64 3064   ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.az, i64 8) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1608) %i.az, ptr noundef nonnull readonly align 64 dereferenceable(1608) @tld_empty, i64 1608, i1 false)
  %i.ba = getelementptr i8, ptr %.4.i, i64 4032   ; 2 uses
  %i.bb = getelementptr i8, ptr %.4.i, i64 3992
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !230
  %i.bc = getelementptr i8, ptr %.4.i, i64 4016
  %i.bd = getelementptr i8, ptr %.4.i, i64 4000
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !231
  %i.be = getelementptr i8, ptr %.4.i, i64 4008
  store ptr @_mi_abandoned_default, ptr %i.be, align 8, !tbaa !232
  %i.bf = getelementptr i8, ptr %.4.i, i64 4024
  store ptr %i.ba, ptr %i.bf, align 8, !tbaa !233
  %i.bg = getelementptr i8, ptr %.4.i, i64 3080
  store ptr %.4.i, ptr %i.bg, align 8, !tbaa !194
  tail call void @_mi_heap_init_ex(ptr noundef nonnull %.4.i, ptr noundef nonnull %i.az, i32 noundef 0, i1 noundef zeroext false, i8 noundef zeroext 0)
  store ptr %.4.i, ptr %i.a, align 8, !tbaa !54
  %i.bh = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !7 ; 2 uses
  %.not.i.i9 = icmp eq i32 %i.bh, -1
  br i1 %.not.i.i9, label %_mi_heap_set_default_direct.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bi = tail call i32 @pthread_setspecific(i32 noundef %i.bh, ptr noundef nonnull %.4.i) #55 ; 0 uses
  br label %_mi_heap_set_default_direct.exit

_mi_heap_set_default_direct.exit:                 ; preds = %bb.ap, %bb.ao, %bb.c, %_mi_is_main_thread.exit.thread, %mi_thread_data_zalloc.exit, %bb.a
  ret i1 %i.c
}

; Function Attrs: norecurse nounwind uwtable
define hidden void @_mi_stat_increase(ptr nofree noundef captures(address) %0, i64 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %mi_stat_update.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp uge ptr %0, @_mi_stats_main
  %i.c = icmp ult ptr %0, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 640)
  %i.d = select i1 %i.b, i1 %i.c, i1 false
  %i.e = getelementptr i8, ptr %0, i64 24         ; 3 uses
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw add ptr %i.e, i64 %1 monotonic, align 8
  %i.g = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.h = add i64 %i.f, %1                         ; 2 uses
  %i.i = load atomic i64, ptr %i.g monotonic, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.0.i.i = phi i64 [ %i.i, %bb.c ], [ %i.m, %bb.e ] ; 2 uses
  %i.j = icmp slt i64 %.0.i.i, %i.h
  br i1 %i.j, label %bb.e, label %mi_atomic_maxi64_relaxed.exit.i

bb.e:                                             ; preds = %bb.d
  %i.k = cmpxchg weak ptr %i.g, i64 %.0.i.i, i64 %i.h release monotonic, align 8 ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  %i.m = extractvalue { i64, i1 } %i.k, 0
  br i1 %i.l, label %mi_atomic_maxi64_relaxed.exit.i, label %bb.d, !llvm.loop !124

mi_atomic_maxi64_relaxed.exit.i:                  ; preds = %bb.e, %bb.d
  %i.n = icmp sgt i64 %1, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i
  %i.o = atomicrmw add ptr %0, i64 %1 monotonic, align 8 ; 0 uses
  br label %mi_stat_update.exit

bb.g:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i
  %i.p = getelementptr i8, ptr %0, i64 8
  %i.q = atomicrmw sub ptr %i.p, i64 %1 monotonic, align 8 ; 0 uses
  br label %mi_stat_update.exit

bb.h:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.e, align 8, !tbaa !127
  %i.s = add i64 %i.r, %1                         ; 3 uses
  store i64 %i.s, ptr %i.e, align 8, !tbaa !127
  %i.t = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !128
  %i.v = icmp sgt i64 %i.s, %i.u
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i64 %i.s, ptr %i.t, align 8, !tbaa !128
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.w = icmp sgt i64 %1, 0
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = load i64, ptr %0, align 8, !tbaa !129
  %i.y = add i64 %i.x, %1
  store i64 %i.y, ptr %0, align 8, !tbaa !129
  br label %mi_stat_update.exit

bb.l:                                             ; preds = %bb.j
  %i.z = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !130
  %i.ab = sub i64 %i.aa, %1
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !130
  br label %mi_stat_update.exit

mi_stat_update.exit:                              ; preds = %bb.a, %bb.f, %bb.g, %bb.k, %bb.l
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mi_thread_done() local_unnamed_addr #2 {
bb.a:
  tail call void @_mi_thread_done(ptr noundef null)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_thread_done(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_mi_heap_done.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ]    ; 3 uses
  %.not7 = icmp eq ptr %.0, @_mi_heap_empty
  br i1 %.not7, label %_mi_heap_done.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = atomicrmw sub ptr @thread_count, i64 1 monotonic, align 8 ; 0 uses
  %i.f = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 312), i64 1 monotonic, align 8
  %i.g = add i64 %i.f, -1                         ; 2 uses
  %i.h = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304) monotonic, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.0.i.i.i = phi i64 [ %i.h, %bb.d ], [ %i.l, %bb.f ] ; 2 uses
  %i.i = icmp slt i64 %.0.i.i.i, %i.g
  br i1 %i.i, label %bb.f, label %_mi_stat_decrease.exit

bb.f:                                             ; preds = %bb.e
  %i.j = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304), i64 %.0.i.i.i, i64 %i.g release monotonic, align 8 ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  %i.l = extractvalue { i64, i1 } %i.j, 0
  br i1 %i.k, label %_mi_stat_decrease.exit, label %bb.e, !llvm.loop !124

_mi_stat_decrease.exit:                           ; preds = %bb.e, %bb.f
  %i.m = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 296), i64 1 monotonic, align 8 ; 0 uses
  %i.n = getelementptr i8, ptr %.0, i64 2848
  %i.o = load i64, ptr %i.n, align 8, !tbaa !193  ; 2 uses
  %i.p = tail call ptr asm "movq %fs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) null) #60, !srcloc !58
  %i.q = ptrtoint ptr %i.p to i64
  %.not.not = icmp eq i64 %i.o, %i.q
  br i1 %.not.not, label %bb.g, label %_mi_heap_done.exit

bb.g:                                             ; preds = %_mi_stat_decrease.exit
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_main, i64 2848), align 8, !tbaa !193 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_mi_is_main_thread.exit.thread.i, label %_mi_is_main_thread.exit.i

_mi_is_main_thread.exit.i:                        ; preds = %bb.g
  %i.t = icmp eq i64 %i.r, %i.o
  %cond.fr.i = freeze i1 %i.t
  br i1 %cond.fr.i, label %_mi_is_main_thread.exit.thread.i, label %bb.h

_mi_is_main_thread.exit.thread.i:                 ; preds = %_mi_is_main_thread.exit.i, %bb.g
  br label %bb.h

bb.h:                                             ; preds = %_mi_is_main_thread.exit.thread.i, %_mi_is_main_thread.exit.i
  %i.u = phi ptr [ @_mi_heap_main, %_mi_is_main_thread.exit.thread.i ], [ @_mi_heap_empty, %_mi_is_main_thread.exit.i ] ; 2 uses
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  store ptr %i.u, ptr %i.v, align 8, !tbaa !54
  %i.w = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !7 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.w, -1
  br i1 %.not.i.i.i, label %_mi_heap_set_default_direct.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = tail call i32 @pthread_setspecific(i32 noundef %i.w, ptr noundef nonnull %i.u) #55 ; 0 uses
  br label %_mi_heap_set_default_direct.exit.i

_mi_heap_set_default_direct.exit.i:               ; preds = %bb.i, %bb.h
  %i.y = load ptr, ptr %.0, align 8, !tbaa !22
  %i.z = getelementptr i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !194 ; 24 uses
  %.not22.i = icmp eq ptr %i.aa, @_mi_heap_empty
  br i1 %.not22.i, label %_mi_heap_done.exit, label %bb.j

bb.j:                                             ; preds = %_mi_heap_set_default_direct.exit.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !22
  %i.ac = getelementptr i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !206 ; 2 uses
  %.not23.i = icmp eq ptr %i.ad, null
  br i1 %.not23.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.01624.i = phi ptr [ %i.af, %bb.l ], [ %i.ad, %bb.j ] ; 3 uses
  %i.ae = getelementptr i8, ptr %.01624.i, i64 3048
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !207 ; 2 uses
  %.not19.i = icmp eq ptr %.01624.i, %i.aa
end_hunk_1
