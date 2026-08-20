inline.NumInlined: 60
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_zend_mm_alloc:bb.a
  %i.b = icmp samesign ult i64 %1, 65
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = add nuw nsw i64 %spec.store.select.i, 34359738367
  %i.d = lshr i64 %i.c, 3
  %i.e = trunc i64 %i.d to i32
  br label %zend_mm_small_size_to_bin.exit

bb.d:                                             ; preds = %bb.b
  %i.f = trunc nuw i64 %spec.store.select.i to i32
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  %i.h = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 range(i32 64, -2) %i.g, i1 true) ; 2 uses
  %i.i = sub nuw nsw i32 29, %i.h
  %i.j = lshr i32 %i.g, %i.i
  %i.k = shl nuw nsw i32 %i.h, 2
  %reass.sub4 = sub nsw i32 %i.j, %i.k
  %i.l = add i32 %reass.sub4, 104
  br label %zend_mm_small_size_to_bin.exit

zend_mm_small_size_to_bin.exit:                   ; preds = %bb.c, %bb.d
  %.0.i2 = phi i32 [ %i.e, %bb.c ], [ %i.l, %bb.d ] ; 3 uses
  %i.m = zext nneg i32 %.0.i2 to i64              ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @bin_data_size, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !27
  %i.p = icmp ne i32 %.0.i2, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 16, !tbaa !75
  %i.s = zext i32 %i.o to i64                     ; 2 uses
  %i.t = add i64 %i.r, %i.s                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !94
  %..i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %i.t)
  store i64 %i.t, ptr %i.q, align 16, !tbaa !75
  store i64 %..i, ptr %i.u, align 8, !tbaa !94
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.m ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !23   ; 4 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.h, label %bb.e, !prof !40

bb.e:                                             ; preds = %zend_mm_small_size_to_bin.exit
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !25   ; 3 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %zend_mm_get_next_free_slot.exit.i, label %bb.f, !prof !40

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.s
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i64, ptr %i.ad, align 16, !tbaa !12
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = xor i64 %i.ae, %i.af
  %i.ah = tail call i64 @llvm.bswap.i64(i64 %i.ag)
  %i.ai = inttoptr i64 %i.ah to ptr
  %.not7.i.i = icmp eq ptr %i.z, %i.ai
  br i1 %.not7.i.i, label %zend_mm_get_next_free_slot.exit.i, label %bb.g, !prof !28

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

zend_mm_get_next_free_slot.exit.i:                ; preds = %bb.f, %bb.e
  store ptr %i.z, ptr %i.x, align 8, !tbaa !23
  br label %zend_mm_alloc_heap.exit

bb.h:                                             ; preds = %zend_mm_small_size_to_bin.exit
  %i.aj = tail call fastcc ptr @zend_mm_alloc_small_slow(ptr noundef nonnull %0, i32 noundef %.0.i2)
  br label %zend_mm_alloc_heap.exit

bb.i:                                             ; preds = %bb.a
  %i.ak = icmp ult i64 %1, 2093057
  br i1 %i.ak, label %bb.j, label %bb.k, !prof !28

bb.j:                                             ; preds = %bb.i
  %i.al = tail call fastcc ptr @zend_mm_alloc_large(ptr noundef %0, i64 noundef %spec.store.select.i)
  br label %zend_mm_alloc_heap.exit

bb.k:                                             ; preds = %bb.i
  %i.am = tail call fastcc ptr @zend_mm_alloc_huge(ptr noundef %0, i64 noundef %spec.store.select.i)
  br label %zend_mm_alloc_heap.exit

zend_mm_alloc_heap.exit:                          ; preds = %bb.h, %zend_mm_get_next_free_slot.exit.i, %bb.j, %bb.k
  %.0.i = phi ptr [ %i.am, %bb.k ], [ %i.al, %bb.j ], [ %i.y, %zend_mm_get_next_free_slot.exit.i ], [ %i.aj, %bb.h ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local void @_zend_mm_free(ptr nofree noundef captures(address) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = and i64 %i.a, 2097151                    ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d, !prof !40

bb.b:                                             ; preds = %bb.a
  %.not23.i = icmp eq ptr %1, null
  br i1 %.not23.i, label %zend_mm_free_heap.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @zend_mm_free_huge(ptr noundef %0, ptr noundef nonnull %1)
  br label %zend_mm_free_heap.exit

bb.d:                                             ; preds = %bb.a
  %i.d = and i64 %i.a, -2097152
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  %i.f = lshr i64 %i.b, 12                        ; 2 uses
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 592
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f
  %i.j = load i32, ptr %i.i, align 4, !tbaa !27   ; 3 uses
  %i.k = load ptr, ptr %i.e, align 2097152, !tbaa !36
  %.not.i = icmp eq ptr %i.k, %0
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !28

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not21.i = icmp sgt i32 %i.j, -1
  br i1 %.not21.i, label %bb.h, label %bb.g, !prof !40

bb.g:                                             ; preds = %bb.f
  %i.l = and i32 %i.j, 31                         ; 2 uses
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @bin_data_size, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !27
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 16, !tbaa !75
  %i.s = sub i64 %i.r, %i.p
  store i64 %i.s, ptr %i.q, align 16, !tbaa !75
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.m ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23   ; 2 uses
  %i.w = icmp ne i32 %i.l, 0
  tail call void @llvm.assume(i1 %i.w)
  store ptr %i.v, ptr %1, align 8, !tbaa !25
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = tail call i64 @llvm.bswap.i64(i64 %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load i64, ptr %i.z, align 16, !tbaa !12
  %i.ab = xor i64 %i.aa, %i.y
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !23
  store ptr %1, ptr %i.u, align 8, !tbaa !23
  br label %zend_mm_free_heap.exit

bb.h:                                             ; preds = %bb.f
  %i.af = and i64 %i.a, 4095
  %.not22.i = icmp eq i64 %i.af, 0
  br i1 %.not22.i, label %bb.j, label %bb.i, !prof !28

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ag = and i32 %i.j, 1023                      ; 2 uses
  %i.ah = shl nuw nsw i32 %i.ag, 12
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 16, !tbaa !75
  %i.al = sub i64 %i.ak, %i.ai
  store i64 %i.al, ptr %i.aj, align 16, !tbaa !75
  tail call fastcc void @zend_mm_free_pages(ptr noundef %0, ptr noundef nonnull %i.e, i32 noundef range(i32 0, 512) %i.g, i32 noundef range(i32 0, 1024) %i.ag)
  br label %zend_mm_free_heap.exit

zend_mm_free_heap.exit:                           ; preds = %bb.b, %bb.c, %bb.g, %bb.j
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_zend_mm_realloc(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = and i64 %i.a, 2097151                    ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.c, label %bb.d, !prof !28

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias ptr @_zend_mm_alloc(ptr noundef %0, i64 noundef %2) #44
  br label %zend_mm_realloc_heap.exit

bb.d:                                             ; preds = %bb.b
  %i.f = tail call fastcc ptr @zend_mm_realloc_huge(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %2)
  br label %zend_mm_realloc_heap.exit

bb.e:                                             ; preds = %bb.a
  %i.g = and i64 %i.a, -2097152
  %i.h = inttoptr i64 %i.g to ptr                 ; 8 uses
  %i.i = lshr i64 %i.b, 12                        ; 5 uses
  %i.j = trunc nuw nsw i64 %i.i to i32            ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 592
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.i ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !27   ; 5 uses
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %2, i64 16) ; 9 uses
  %i.n = load ptr, ptr %i.h, align 2097152, !tbaa !36
  %.not.i = icmp eq ptr %i.n, %0
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !28

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

bb.g:                                             ; preds = %bb.e
  %.not152.i = icmp sgt i32 %i.m, -1
  br i1 %.not152.i, label %bb.z, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = and i32 %i.m, 31                         ; 3 uses
  %i.p = zext nneg i32 %i.o to i64                ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @bin_data_size, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !27
  %i.s = zext i32 %i.r to i64                     ; 7 uses
  %.not155.i = icmp ugt i64 %spec.store.select.i, %i.s
  br i1 %.not155.i, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not156.i = icmp eq i32 %i.o, 0
  br i1 %.not156.i, label %zend_mm_realloc_heap.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr i8, ptr %i.q, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !27
  %i.v = zext i32 %i.u to i64
  %i.w = icmp samesign ult i64 %spec.store.select.i, %i.v
  br i1 %i.w, label %bb.k, label %zend_mm_realloc_heap.exit

bb.k:                                             ; preds = %bb.j
  %i.x = icmp ult i64 %2, 65
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = add nuw nsw i64 %spec.store.select.i, 34359738367
  %i.z = lshr i64 %i.y, 3
  %i.aa = trunc i64 %i.z to i32
  br label %zend_mm_small_size_to_bin.exit17

bb.m:                                             ; preds = %bb.k
  %i.ab = trunc nuw i64 %spec.store.select.i to i32
  %i.ac = add i32 %i.ab, -1                       ; 2 uses
  %i.ad = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 range(i32 64, -2) %i.ac, i1 true) ; 2 uses
  %i.ae = sub nuw nsw i32 29, %i.ad
  %i.af = lshr i32 %i.ac, %i.ae
  %i.ag = shl nuw nsw i32 %i.ad, 2
  %reass.sub43 = sub nsw i32 %i.af, %i.ag
  %i.ah = add i32 %reass.sub43, 104
  br label %zend_mm_small_size_to_bin.exit17

zend_mm_small_size_to_bin.exit17:                 ; preds = %bb.l, %bb.m
  %.0.i16 = phi i32 [ %i.aa, %bb.l ], [ %i.ah, %bb.m ] ; 3 uses
  %i.ai = zext nneg i32 %.0.i16 to i64            ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @bin_data_size, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !27
  %i.al = icmp ne i32 %.0.i16, 0
  tail call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.an = load i64, ptr %i.am, align 16, !tbaa !75
  %i.ao = zext i32 %i.ak to i64                   ; 2 uses
  %i.ap = add i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !94
  %..i6 = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.ap)
  store i64 %i.ap, ptr %i.am, align 16, !tbaa !75
  store i64 %..i6, ptr %i.aq, align 8, !tbaa !94
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ai ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !23 ; 4 uses
  %.not.i7 = icmp eq ptr %i.au, null
  br i1 %.not.i7, label %bb.q, label %bb.n, !prof !40

bb.n:                                             ; preds = %zend_mm_small_size_to_bin.exit17
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !25 ; 3 uses
  %.not.i.i8 = icmp eq ptr %i.av, null
  br i1 %.not.i.i8, label %zend_mm_get_next_free_slot.exit.i10, label %bb.o, !prof !40

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ao
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !23
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ba = load i64, ptr %i.az, align 16, !tbaa !12
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = xor i64 %i.ba, %i.bb
  %i.bd = tail call i64 @llvm.bswap.i64(i64 %i.bc)
  %i.be = inttoptr i64 %i.bd to ptr
  %.not7.i.i9 = icmp eq ptr %i.av, %i.be
  br i1 %.not7.i.i9, label %zend_mm_get_next_free_slot.exit.i10, label %bb.p, !prof !28

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

zend_mm_get_next_free_slot.exit.i10:              ; preds = %bb.o, %bb.n
  store ptr %i.av, ptr %i.at, align 8, !tbaa !23
  br label %zend_mm_alloc_small.exit12

bb.q:                                             ; preds = %zend_mm_small_size_to_bin.exit17
  %i.bf = tail call fastcc ptr @zend_mm_alloc_small_slow(ptr noundef nonnull %0, i32 noundef %.0.i16)
  br label %zend_mm_alloc_small.exit12

zend_mm_alloc_small.exit12:                       ; preds = %zend_mm_get_next_free_slot.exit.i10, %bb.q
  %.0.i11 = phi ptr [ %i.au, %zend_mm_get_next_free_slot.exit.i10 ], [ %i.bf, %bb.q ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i11, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %spec.store.select.i, i1 false)
  %i.bg = load i64, ptr %i.am, align 16, !tbaa !75
  %i.bh = sub i64 %i.bg, %i.s
  store i64 %i.bh, ptr %i.am, align 16, !tbaa !75
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.p ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !23 ; 2 uses
  store ptr %i.bj, ptr %1, align 8, !tbaa !25
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = tail call i64 @llvm.bswap.i64(i64 %i.bk)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bn = load i64, ptr %i.bm, align 16, !tbaa !12
  %i.bo = xor i64 %i.bl, %i.bn
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %i.s
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -8
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !23
  store ptr %1, ptr %i.bi, align 8, !tbaa !23
  br label %zend_mm_realloc_heap.exit

bb.r:                                             ; preds = %bb.h
  %i.bs = icmp ult i64 %2, 3073
  br i1 %i.bs, label %bb.s, label %zend_mm_bitset_reset_range.exit

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !94 ; 2 uses
  %i.bv = icmp samesign ult i64 %2, 65
  br i1 %i.bv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bw = add nuw nsw i64 %spec.store.select.i, 34359738367
  %i.bx = lshr i64 %i.bw, 3
  %i.by = trunc i64 %i.bx to i32
  br label %zend_mm_small_size_to_bin.exit

bb.u:                                             ; preds = %bb.s
  %i.bz = trunc nuw i64 %spec.store.select.i to i32
  %i.ca = add nsw i32 %i.bz, -1                   ; 2 uses
  %i.cb = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 range(i32 64, -2) %i.ca, i1 true) ; 2 uses
  %i.cc = sub nuw nsw i32 29, %i.cb
  %i.cd = lshr i32 %i.ca, %i.cc
  %i.ce = shl nuw nsw i32 %i.cb, 2
  %reass.sub = sub nsw i32 %i.cd, %i.ce
  %i.cf = add i32 %reass.sub, 104
  br label %zend_mm_small_size_to_bin.exit

zend_mm_small_size_to_bin.exit:                   ; preds = %bb.t, %bb.u
  %.0.i15 = phi i32 [ %i.by, %bb.t ], [ %i.cf, %bb.u ] ; 3 uses
  %i.cg = zext nneg i32 %.0.i15 to i64            ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr @bin_data_size, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !27
  %i.cj = icmp ne i32 %.0.i15, 0
  tail call void @llvm.assume(i1 %i.cj)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.cl = load i64, ptr %i.ck, align 16, !tbaa !75
  %i.cm = zext i32 %i.ci to i64                   ; 2 uses
  %i.cn = add i64 %i.cl, %i.cm                    ; 2 uses
  %..i3 = tail call i64 @llvm.umax.i64(i64 %i.bu, i64 %i.cn)
  store i64 %i.cn, ptr %i.ck, align 16, !tbaa !75
  store i64 %..i3, ptr %i.bt, align 8, !tbaa !94
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cg ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !23 ; 4 uses
  %.not.i4 = icmp eq ptr %i.cq, null
  br i1 %.not.i4, label %bb.y, label %bb.v, !prof !40

bb.v:                                             ; preds = %zend_mm_small_size_to_bin.exit
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !25 ; 3 uses
  %.not.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i, label %zend_mm_get_next_free_slot.exit.i, label %bb.w, !prof !40

bb.w:                                             ; preds = %bb.v
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cm
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !23
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cw = load i64, ptr %i.cv, align 16, !tbaa !12
  %i.cx = ptrtoint ptr %i.cu to i64
  %i.cy = xor i64 %i.cw, %i.cx
  %i.cz = tail call i64 @llvm.bswap.i64(i64 %i.cy)
  %i.da = inttoptr i64 %i.cz to ptr
  %.not7.i.i = icmp eq ptr %i.cr, %i.da
  br i1 %.not7.i.i, label %zend_mm_get_next_free_slot.exit.i, label %bb.x, !prof !28

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

zend_mm_get_next_free_slot.exit.i:                ; preds = %bb.w, %bb.v
  store ptr %i.cr, ptr %i.cp, align 8, !tbaa !23
  br label %zend_mm_alloc_small.exit

bb.y:                                             ; preds = %zend_mm_small_size_to_bin.exit
  %i.db = tail call fastcc ptr @zend_mm_alloc_small_slow(ptr noundef nonnull %0, i32 noundef %.0.i15)
  br label %zend_mm_alloc_small.exit

zend_mm_alloc_small.exit:                         ; preds = %zend_mm_get_next_free_slot.exit.i, %bb.y
  %.0.i5 = phi ptr [ %i.cq, %zend_mm_get_next_free_slot.exit.i ], [ %i.db, %bb.y ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i5, ptr align 1 %1, i64 %i.s, i1 false)
  %i.dc = load i64, ptr %i.ck, align 16, !tbaa !75
  %i.dd = sub i64 %i.dc, %i.s                     ; 2 uses
  store i64 %i.dd, ptr %i.ck, align 16, !tbaa !75
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.p ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !23 ; 2 uses
  %i.dg = icmp ne i32 %i.o, 0
  tail call void @llvm.assume(i1 %i.dg)
  store ptr %i.df, ptr %1, align 8, !tbaa !25
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = tail call i64 @llvm.bswap.i64(i64 %i.dh)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dk = load i64, ptr %i.dj, align 16, !tbaa !12
  %i.dl = xor i64 %i.dk, %i.di
  %i.dm = inttoptr i64 %i.dl to ptr
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 %i.s
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -8
  store ptr %i.dm, ptr %i.do, align 8, !tbaa !23
  store ptr %1, ptr %i.de, align 8, !tbaa !23
  %i.dp = tail call i64 @llvm.umax.i64(i64 %i.bu, i64 %i.dd)
  store i64 %i.dp, ptr %i.bt, align 8, !tbaa !94
  br label %zend_mm_realloc_heap.exit

bb.z:                                             ; preds = %bb.g
  %i.dq = and i64 %i.a, 4095
  %.not153.i = icmp eq i64 %i.dq, 0
  br i1 %.not153.i, label %bb.ab, label %bb.aa, !prof !28

bb.aa:                                            ; preds = %bb.z
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.dr = shl i32 %i.m, 12
  %i.ds = and i32 %i.dr, 4190208                  ; 2 uses
  %i.dt = zext nneg i32 %i.ds to i64              ; 10 uses
  %i.du = add i64 %2, -3073
  %or.cond.i = icmp ult i64 %i.du, 2089984
  br i1 %or.cond.i, label %bb.ac, label %zend_mm_bitset_reset_range.exit

bb.ac:                                            ; preds = %bb.ab
  %i.dv = add nuw nsw i64 %spec.store.select.i, 4095 ; 2 uses
  %i.dw = and i64 %i.dv, 4190208                  ; 4 uses
  %i.dx = icmp eq i64 %i.dw, %i.dt
  br i1 %i.dx, label %zend_mm_realloc_heap.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dy = icmp samesign ult i64 %i.dw, %i.dt
  %i.dz = lshr i64 %i.dv, 12                      ; 2 uses
  %i.ea = trunc nuw i64 %i.dz to i32              ; 6 uses
  br i1 %i.dy, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.eb = sub nuw nsw i64 %i.dt, %i.dw            ; 3 uses
  %i.ec = lshr exact i64 %i.eb, 12
  %i.ed = trunc nuw nsw i64 %i.ec to i32          ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 16, !tbaa !75
  %i.eg = sub i64 %i.ef, %i.eb
  store i64 %i.eg, ptr %i.ee, align 16, !tbaa !75
  %i.eh = or disjoint i32 %i.ea, 1073741824
  store i32 %i.eh, ptr %i.l, align 4, !tbaa !27
  %i.ei = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !46
  %i.ek = add i32 %i.ej, %i.ed
  store i32 %i.ek, ptr %i.ei, align 8, !tbaa !46
  %i.el = getelementptr inbounds nuw i8, ptr %i.h, i64 528 ; 4 uses
  %i.em = add nuw nsw i32 %i.ea, %i.j             ; 5 uses
  %i.en = icmp eq i64 %i.eb, 4096
  br i1 %i.en, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.eo = zext nneg i32 %i.em to i64              ; 2 uses
  %i.ep = and i64 %i.eo, 63
  %i.eq = shl nuw i64 1, %i.ep
  %i.er = xor i64 %i.eq, -1
  %i.es = lshr i64 %i.eo, 6
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.es ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !45
  %i.ev = and i64 %i.eu, %i.er
  store i64 %i.ev, ptr %i.et, align 8, !tbaa !45
  br label %zend_mm_realloc_heap.exit

bb.ag:                                            ; preds = %bb.ae
  %i.ew = lshr i32 %i.em, 6                       ; 5 uses
  %i.ex = add nsw i32 %i.em, -1
  %i.ey = add i32 %i.ex, %i.ed                    ; 3 uses
  %i.ez = ashr i32 %i.ey, 6                       ; 4 uses
  %i.fa = and i32 %i.em, 63                       ; 2 uses
  %.not.i13 = icmp eq i32 %i.ew, %i.ez
  br i1 %.not.i13, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fb = zext nneg i32 %i.fa to i64
  %notmask.i = shl nsw i64 -1, %i.fb
  %i.fc = xor i64 %notmask.i, -1
  %i.fd = zext nneg i32 %i.ew to i64
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.fd ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !45
  %i.fg = and i64 %i.ff, %i.fc
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !45
  %.0.i1435 = add nuw nsw i32 %i.ew, 1
  %.not33.i36 = icmp eq i32 %.0.i1435, %i.ez
  br i1 %.not33.i36, label %._crit_edge40, label %.lr.ph39.preheader

.lr.ph39.preheader:                               ; preds = %bb.ah
  %i.fh = lshr i32 %i.em, 3
  %i.fi = and i32 %i.fh, 536870904
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = getelementptr i8, ptr %i.h, i64 %i.fj
  %scevgep49 = getelementptr i8, ptr %i.fk, i64 536
  %i.fl = add nsw i32 %i.ez, -2
  %i.fm = sub nsw i32 %i.fl, %i.ew
  %i.fn = zext i32 %i.fm to i64
  %i.fo = shl nuw nsw i64 %i.fn, 3
  %i.fp = add nuw nsw i64 %i.fo, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep49, i8 0, i64 %i.fp, i1 false), !tbaa !45
  br label %._crit_edge40

._crit_edge40:                                    ; preds = %bb.ah, %.lr.ph39.preheader
  %.pre-phi = zext i32 %i.ez to i64
  %i.fq = and i32 %i.ey, 63
  %i.fr = xor i32 %i.fq, 63
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = lshr i64 -1, %i.fs
  %i.fu = xor i64 %i.ft, -1
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %.pre-phi ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !45
  %i.fx = and i64 %i.fw, %i.fu
  store i64 %i.fx, ptr %i.fv, align 8, !tbaa !45
  br label %zend_mm_realloc_heap.exit

bb.ai:                                            ; preds = %bb.ag
  %i.fy = and i32 %i.ey, 63
  %i.fz = zext nneg i32 %i.fa to i64
  %i.ga = shl nsw i64 -1, %i.fz
  %i.gb = xor i32 %i.fy, 63
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = lshr i64 -1, %i.gc
  %i.ge = and i64 %i.gd, %i.ga
  %i.gf = xor i64 %i.ge, -1
  %i.gg = zext nneg i32 %i.ew to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.gg ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !45
  %i.gj = and i64 %i.gi, %i.gf
  store i64 %i.gj, ptr %i.gh, align 8, !tbaa !45
  br label %zend_mm_realloc_heap.exit

bb.aj:                                            ; preds = %bb.ad
  %i.gk = add nuw nsw i64 %i.dz, %i.i
  %i.gl = icmp samesign ult i64 %i.gk, 513
  br i1 %i.gl, label %bb.ak, label %zend_mm_bitset_reset_range.exit

bb.ak:                                            ; preds = %bb.aj
  %i.gm = lshr exact i32 %i.ds, 12                ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.h, i64 528 ; 7 uses
  %i.go = add nuw nsw i32 %i.gm, %i.j             ; 6 uses
  %i.gp = sub nsw i32 %i.ea, %i.gm                ; 2 uses
  %i.gq = icmp eq i32 %i.gp, 1                    ; 2 uses
  br i1 %i.gq, label %.split, label %bb.al

.split:                                           ; preds = %bb.ak
  %i.gr = zext nneg i32 %i.go to i64              ; 2 uses
  %i.gs = lshr i64 %i.gr, 6
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.gs
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !45
  %i.gv = and i64 %i.gr, 63
  %i.gw = lshr i64 %i.gu, %i.gv
  %i.gx = trunc i64 %i.gw to i1
  br i1 %i.gx, label %zend_mm_bitset_reset_range.exit, label %.critedge.i

bb.al:                                            ; preds = %bb.ak
  %i.gy = lshr i32 %i.go, 6                       ; 3 uses
  %i.gz = add nsw i32 %i.j, -1
  %i.ha = add nsw i32 %i.gz, %i.ea                ; 3 uses
  %i.hb = ashr i32 %i.ha, 6                       ; 2 uses
  %i.hc = and i32 %i.go, 63                       ; 2 uses
  %.not.i18 = icmp eq i32 %i.gy, %i.hb
  br i1 %.not.i18, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = zext nneg i32 %i.gy to i64
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.he
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !45
  %i.hh = lshr i64 %i.hg, %i.hd
  %.not36.i = icmp eq i64 %i.hh, 0
  br i1 %.not36.i, label %.preheader.preheader, label %zend_mm_bitset_reset_range.exit

.preheader.preheader:                             ; preds = %bb.am
  %3 = and i32 %i.m, 1023
  %4 = zext nneg i32 %3 to i64
  %5 = add nuw nsw i64 %i.i, %4
  %6 = lshr i64 %5, 6
  %i.hi = zext i32 %i.hb to i64                   ; 3 uses
  %indvars.iv.next85 = add nuw nsw i64 %6, 1      ; 2 uses
  %.not37.i86 = icmp eq i64 %indvars.iv.next85, %i.hi
  br i1 %.not37.i86, label %.preheader._crit_edge, label %bb.an

.preheader:                                       ; preds = %bb.an
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next87, 1 ; 2 uses
  %.not37.i = icmp eq i64 %indvars.iv.next, %i.hi
  br i1 %.not37.i, label %.preheader._crit_edge, label %bb.an, !llvm.loop !95

bb.an:                                            ; preds = %.preheader.preheader, %.preheader
  %indvars.iv.next87 = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.next85, %.preheader.preheader ] ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv.next87
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !45
  %.not38.i = icmp eq i64 %i.hk, 0
  br i1 %.not38.i, label %.preheader, label %zend_mm_bitset_reset_range.exit, !llvm.loop !95

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  %i.hl = and i32 %i.ha, 63
  %i.hm = xor i32 %i.hl, 63
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = lshr i64 -1, %i.hn
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.hi
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !45
  %i.hr = and i64 %i.hq, %i.ho
  br label %zend_mm_bitset_is_free_range.exit

bb.ao:                                            ; preds = %bb.al
  %i.hs = and i32 %i.ha, 63
  %i.ht = zext nneg i32 %i.hc to i64
  %i.hu = shl nsw i64 -1, %i.ht
  %i.hv = xor i32 %i.hs, 63
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = lshr i64 -1, %i.hw
  %i.hy = and i64 %i.hu, %i.hx
  %i.hz = zext nneg i32 %i.gy to i64
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.hz
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !45
  %i.ic = and i64 %i.hy, %i.ib
  br label %zend_mm_bitset_is_free_range.exit

zend_mm_bitset_is_free_range.exit:                ; preds = %.preheader._crit_edge, %bb.ao
  %.sink = phi i64 [ %i.hr, %.preheader._crit_edge ], [ %i.ic, %bb.ao ]
  %.not = icmp eq i64 %.sink, 0
  br i1 %.not, label %.critedge.i, label %zend_mm_bitset_reset_range.exit

.critedge.i:                                      ; preds = %.split, %zend_mm_bitset_is_free_range.exit
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ie = load i64, ptr %i.id, align 16, !tbaa !75
  %i.if = sub nsw i64 %i.dw, %i.dt
  %i.ig = add i64 %i.ie, %i.if                    ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !94
  %..i = tail call i64 @llvm.umax.i64(i64 %i.ii, i64 %i.ig)
  store i64 %i.ig, ptr %i.id, align 16, !tbaa !75
  store i64 %..i, ptr %i.ih, align 8, !tbaa !94
  %i.ij = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !46
  %i.il = sub i32 %i.ik, %i.gp
  store i32 %i.il, ptr %i.ij, align 8, !tbaa !46
  br i1 %i.gq, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.critedge.i
  %i.im = zext nneg i32 %i.go to i64              ; 2 uses
  %i.in = and i64 %i.im, 63
  %i.io = shl nuw i64 1, %i.in
  %i.ip = lshr i64 %i.im, 6
  br label %zend_mm_bitset_set_range.exit

bb.aq:                                            ; preds = %.critedge.i
  %i.iq = lshr i32 %i.go, 6                       ; 5 uses
  %i.ir = add nsw i32 %i.j, -1
  %i.is = add nsw i32 %i.ir, %i.ea                ; 3 uses
  %i.it = ashr i32 %i.is, 6                       ; 4 uses
  %i.iu = and i32 %i.go, 63                       ; 2 uses
  %.not.i21 = icmp eq i32 %i.iq, %i.it
  br i1 %.not.i21, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = shl nsw i64 -1, %i.iv
  %i.ix = zext nneg i32 %i.iq to i64
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.ix ; 2 uses
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !45
  %i.ja = or i64 %i.iz, %i.iw
  store i64 %i.ja, ptr %i.iy, align 8, !tbaa !45
  %.0.i2332 = add nuw nsw i32 %i.iq, 1
  %.not33.i2433 = icmp eq i32 %.0.i2332, %i.it
  br i1 %.not33.i2433, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ar
  %7 = and i32 %i.m, 1023
  %8 = zext nneg i32 %7 to i64
  %9 = add nuw nsw i64 %i.i, %8
  %10 = lshr i64 %9, 3
  %11 = and i64 %10, 248
  %i.jb = getelementptr i8, ptr %i.h, i64 %11
  %scevgep = getelementptr i8, ptr %i.jb, i64 536
  %i.jc = add nsw i32 %i.it, -2
  %i.jd = sub nsw i32 %i.jc, %i.iq
  %i.je = zext i32 %i.jd to i64
  %i.jf = shl nuw nsw i64 %i.je, 3
  %i.jg = add nuw nsw i64 %i.jf, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 -1, i64 %i.jg, i1 false), !tbaa !45
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.ar, %.lr.ph.preheader
  %.pre-phi53 = zext i32 %i.it to i64
  %i.jh = and i32 %i.is, 63
  %i.ji = xor i32 %i.jh, 63
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = lshr i64 -1, %i.jj
  br label %zend_mm_bitset_set_range.exit

bb.as:                                            ; preds = %bb.aq
  %i.jl = and i32 %i.is, 63
  %i.jm = zext nneg i32 %i.iu to i64
  %i.jn = shl nsw i64 -1, %i.jm
  %i.jo = xor i32 %i.jl, 63
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = lshr i64 -1, %i.jp
  %i.jr = and i64 %i.jn, %i.jq
  %i.js = zext nneg i32 %i.iq to i64
  br label %zend_mm_bitset_set_range.exit

zend_mm_bitset_set_range.exit:                    ; preds = %bb.ap, %._crit_edge, %bb.as
  %.sink84 = phi i64 [ %i.ip, %bb.ap ], [ %.pre-phi53, %._crit_edge ], [ %i.js, %bb.as ]
  %.sink82 = phi i64 [ %i.io, %bb.ap ], [ %i.jk, %._crit_edge ], [ %i.jr, %bb.as ]
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %.sink84 ; 2 uses
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !45
  %i.jv = or i64 %i.ju, %.sink82
  store i64 %i.jv, ptr %i.jt, align 8, !tbaa !45
  %i.jw = or disjoint i32 %i.ea, 1073741824
  store i32 %i.jw, ptr %i.l, align 4, !tbaa !27
  br label %zend_mm_realloc_heap.exit

zend_mm_bitset_reset_range.exit:                  ; preds = %bb.an, %bb.am, %.split, %bb.ab, %bb.aj, %zend_mm_bitset_is_free_range.exit, %bb.r
  %.1137.i = phi i64 [ %i.dt, %bb.ab ], [ %i.dt, %zend_mm_bitset_is_free_range.exit ], [ %i.dt, %bb.aj ], [ %i.s, %bb.r ], [ %i.dt, %.split ], [ %i.dt, %bb.am ], [ %i.dt, %bb.an ]
  %i.jx = tail call i64 @llvm.umin.i64(i64 %.1137.i, i64 %2)
  %i.jy = tail call fastcc ptr @zend_mm_realloc_slow(ptr noundef %0, ptr noundef %1, i64 noundef %spec.store.select.i, i64 noundef %i.jx)
  br label %zend_mm_realloc_heap.exit

zend_mm_realloc_heap.exit:                        ; preds = %bb.ai, %._crit_edge40, %bb.af, %zend_mm_alloc_small.exit12, %bb.j, %bb.i, %zend_mm_alloc_small.exit, %zend_mm_bitset_set_range.exit, %bb.ac, %bb.c, %bb.d, %zend_mm_bitset_reset_range.exit
  %.4.i = phi ptr [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %i.jy, %zend_mm_bitset_reset_range.exit ], [ %1, %bb.ai ], [ %1, %._crit_edge40 ], [ %1, %bb.af ], [ %1, %bb.j ], [ %.0.i5, %zend_mm_alloc_small.exit ], [ %.0.i11, %zend_mm_alloc_small.exit12 ], [ %1, %bb.i ], [ %1, %zend_mm_bitset_set_range.exit ], [ %1, %bb.ac ]
  ret ptr %.4.i
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_zend_mm_realloc2(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = and i64 %i.a, 2097151                    ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.c, label %bb.d, !prof !28

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias ptr @_zend_mm_alloc(ptr noundef %0, i64 noundef %2) #44
  br label %zend_mm_realloc_heap.exit

bb.d:                                             ; preds = %bb.b
  %i.f = tail call fastcc ptr @zend_mm_realloc_huge(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3)
  br label %zend_mm_realloc_heap.exit

bb.e:                                             ; preds = %bb.a
  %i.g = and i64 %i.a, -2097152
  %i.h = inttoptr i64 %i.g to ptr                 ; 8 uses
  %i.i = lshr i64 %i.b, 12                        ; 5 uses
  %i.j = trunc nuw nsw i64 %i.i to i32            ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 592
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.i ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !27   ; 5 uses
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %2, i64 16) ; 9 uses
  %i.n = load ptr, ptr %i.h, align 2097152, !tbaa !36
  %.not.i = icmp eq ptr %i.n, %0
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !28

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

bb.g:                                             ; preds = %bb.e
  %.not152.i = icmp sgt i32 %i.m, -1
  br i1 %.not152.i, label %bb.z, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = and i32 %i.m, 31                         ; 3 uses
  %i.p = zext nneg i32 %i.o to i64                ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @bin_data_size, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !27
  %i.s = zext i32 %i.r to i64                     ; 7 uses
  %.not155.i = icmp ugt i64 %spec.store.select.i, %i.s
  br i1 %.not155.i, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not156.i = icmp eq i32 %i.o, 0
  br i1 %.not156.i, label %zend_mm_realloc_heap.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr i8, ptr %i.q, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !27
  %i.v = zext i32 %i.u to i64
  %i.w = icmp samesign ult i64 %spec.store.select.i, %i.v
  br i1 %i.w, label %bb.k, label %zend_mm_realloc_heap.exit

bb.k:                                             ; preds = %bb.j
  %i.x = icmp ult i64 %2, 65
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = add nuw nsw i64 %spec.store.select.i, 34359738367
  %i.z = lshr i64 %i.y, 3
  %i.aa = trunc i64 %i.z to i32
  br label %zend_mm_small_size_to_bin.exit17

bb.m:                                             ; preds = %bb.k
  %i.ab = trunc nuw i64 %spec.store.select.i to i32
  %i.ac = add i32 %i.ab, -1                       ; 2 uses
  %i.ad = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 range(i32 64, -2) %i.ac, i1 true) ; 2 uses
  %i.ae = sub nuw nsw i32 29, %i.ad
  %i.af = lshr i32 %i.ac, %i.ae
  %i.ag = shl nuw nsw i32 %i.ad, 2
  %reass.sub43 = sub nsw i32 %i.af, %i.ag
  %i.ah = add i32 %reass.sub43, 104
  br label %zend_mm_small_size_to_bin.exit17

zend_mm_small_size_to_bin.exit17:                 ; preds = %bb.l, %bb.m
  %.0.i16 = phi i32 [ %i.aa, %bb.l ], [ %i.ah, %bb.m ] ; 3 uses
  %i.ai = zext nneg i32 %.0.i16 to i64            ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @bin_data_size, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !27
  %i.al = icmp ne i32 %.0.i16, 0
  tail call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.an = load i64, ptr %i.am, align 16, !tbaa !75
  %i.ao = zext i32 %i.ak to i64                   ; 2 uses
  %i.ap = add i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !94
  %..i6 = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.ap)
  store i64 %i.ap, ptr %i.am, align 16, !tbaa !75
  store i64 %..i6, ptr %i.aq, align 8, !tbaa !94
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ai ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !23 ; 4 uses
  %.not.i7 = icmp eq ptr %i.au, null
  br i1 %.not.i7, label %bb.q, label %bb.n, !prof !40

bb.n:                                             ; preds = %zend_mm_small_size_to_bin.exit17
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !25 ; 3 uses
  %.not.i.i8 = icmp eq ptr %i.av, null
  br i1 %.not.i.i8, label %zend_mm_get_next_free_slot.exit.i10, label %bb.o, !prof !40

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ao
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !23
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ba = load i64, ptr %i.az, align 16, !tbaa !12
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = xor i64 %i.ba, %i.bb
  %i.bd = tail call i64 @llvm.bswap.i64(i64 %i.bc)
  %i.be = inttoptr i64 %i.bd to ptr
  %.not7.i.i9 = icmp eq ptr %i.av, %i.be
  br i1 %.not7.i.i9, label %zend_mm_get_next_free_slot.exit.i10, label %bb.p, !prof !28

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

zend_mm_get_next_free_slot.exit.i10:              ; preds = %bb.o, %bb.n
  store ptr %i.av, ptr %i.at, align 8, !tbaa !23
  br label %zend_mm_alloc_small.exit12

bb.q:                                             ; preds = %zend_mm_small_size_to_bin.exit17
  %i.bf = tail call fastcc ptr @zend_mm_alloc_small_slow(ptr noundef nonnull %0, i32 noundef %.0.i16)
  br label %zend_mm_alloc_small.exit12

zend_mm_alloc_small.exit12:                       ; preds = %zend_mm_get_next_free_slot.exit.i10, %bb.q
  %.0.i11 = phi ptr [ %i.au, %zend_mm_get_next_free_slot.exit.i10 ], [ %i.bf, %bb.q ] ; 2 uses
  %i.bg = tail call i64 @llvm.umin.i64(i64 %spec.store.select.i, i64 %3)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i11, ptr align 1 %1, i64 %i.bg, i1 false)
  %i.bh = load i64, ptr %i.am, align 16, !tbaa !75
  %i.bi = sub i64 %i.bh, %i.s
  store i64 %i.bi, ptr %i.am, align 16, !tbaa !75
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.p ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !23 ; 2 uses
  store ptr %i.bk, ptr %1, align 8, !tbaa !25
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = tail call i64 @llvm.bswap.i64(i64 %i.bl)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bo = load i64, ptr %i.bn, align 16, !tbaa !12
  %i.bp = xor i64 %i.bm, %i.bo
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %i.s
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -8
  store ptr %i.bq, ptr %i.bs, align 8, !tbaa !23
  store ptr %1, ptr %i.bj, align 8, !tbaa !23
  br label %zend_mm_realloc_heap.exit

bb.r:                                             ; preds = %bb.h
  %i.bt = icmp ult i64 %2, 3073
  br i1 %i.bt, label %bb.s, label %zend_mm_bitset_reset_range.exit

bb.s:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !94 ; 2 uses
  %i.bw = icmp samesign ult i64 %2, 65
  br i1 %i.bw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bx = add nuw nsw i64 %spec.store.select.i, 34359738367
  %i.by = lshr i64 %i.bx, 3
  %i.bz = trunc i64 %i.by to i32
  br label %zend_mm_small_size_to_bin.exit

bb.u:                                             ; preds = %bb.s
  %i.ca = trunc nuw i64 %spec.store.select.i to i32
  %i.cb = add nsw i32 %i.ca, -1                   ; 2 uses
  %i.cc = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 range(i32 64, -2) %i.cb, i1 true) ; 2 uses
  %i.cd = sub nuw nsw i32 29, %i.cc
  %i.ce = lshr i32 %i.cb, %i.cd
  %i.cf = shl nuw nsw i32 %i.cc, 2
  %reass.sub = sub nsw i32 %i.ce, %i.cf
  %i.cg = add i32 %reass.sub, 104
  br label %zend_mm_small_size_to_bin.exit

zend_mm_small_size_to_bin.exit:                   ; preds = %bb.t, %bb.u
  %.0.i15 = phi i32 [ %i.bz, %bb.t ], [ %i.cg, %bb.u ] ; 3 uses
  %i.ch = zext nneg i32 %.0.i15 to i64            ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr @bin_data_size, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !27
  %i.ck = icmp ne i32 %.0.i15, 0
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.cm = load i64, ptr %i.cl, align 16, !tbaa !75
  %i.cn = zext i32 %i.cj to i64                   ; 2 uses
  %i.co = add i64 %i.cm, %i.cn                    ; 2 uses
  %..i3 = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 %i.co)
  store i64 %i.co, ptr %i.cl, align 16, !tbaa !75
  store i64 %..i3, ptr %i.bu, align 8, !tbaa !94
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.ch ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !23 ; 4 uses
  %.not.i4 = icmp eq ptr %i.cr, null
  br i1 %.not.i4, label %bb.y, label %bb.v, !prof !40

bb.v:                                             ; preds = %zend_mm_small_size_to_bin.exit
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !25 ; 3 uses
  %.not.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i, label %zend_mm_get_next_free_slot.exit.i, label %bb.w, !prof !40

bb.w:                                             ; preds = %bb.v
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cn
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !23
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cx = load i64, ptr %i.cw, align 16, !tbaa !12
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = xor i64 %i.cx, %i.cy
  %i.da = tail call i64 @llvm.bswap.i64(i64 %i.cz)
  %i.db = inttoptr i64 %i.da to ptr
  %.not7.i.i = icmp eq ptr %i.cs, %i.db
  br i1 %.not7.i.i, label %zend_mm_get_next_free_slot.exit.i, label %bb.x, !prof !28

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

zend_mm_get_next_free_slot.exit.i:                ; preds = %bb.w, %bb.v
  store ptr %i.cs, ptr %i.cq, align 8, !tbaa !23
  br label %zend_mm_alloc_small.exit

bb.y:                                             ; preds = %zend_mm_small_size_to_bin.exit
  %i.dc = tail call fastcc ptr @zend_mm_alloc_small_slow(ptr noundef nonnull %0, i32 noundef %.0.i15)
  br label %zend_mm_alloc_small.exit

zend_mm_alloc_small.exit:                         ; preds = %zend_mm_get_next_free_slot.exit.i, %bb.y
  %.0.i5 = phi ptr [ %i.cr, %zend_mm_get_next_free_slot.exit.i ], [ %i.dc, %bb.y ] ; 2 uses
  %i.dd = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.s)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i5, ptr align 1 %1, i64 %i.dd, i1 false)
  %i.de = load i64, ptr %i.cl, align 16, !tbaa !75
  %i.df = sub i64 %i.de, %i.s                     ; 2 uses
  store i64 %i.df, ptr %i.cl, align 16, !tbaa !75
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.p ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !23 ; 2 uses
  %i.di = icmp ne i32 %i.o, 0
  tail call void @llvm.assume(i1 %i.di)
  store ptr %i.dh, ptr %1, align 8, !tbaa !25
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = tail call i64 @llvm.bswap.i64(i64 %i.dj)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dm = load i64, ptr %i.dl, align 16, !tbaa !12
  %i.dn = xor i64 %i.dm, %i.dk
  %i.do = inttoptr i64 %i.dn to ptr
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 %i.s
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -8
  store ptr %i.do, ptr %i.dq, align 8, !tbaa !23
  store ptr %1, ptr %i.dg, align 8, !tbaa !23
  %i.dr = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 %i.df)
  store i64 %i.dr, ptr %i.bu, align 8, !tbaa !94
  br label %zend_mm_realloc_heap.exit

bb.z:                                             ; preds = %bb.g
  %i.ds = and i64 %i.a, 4095
  %.not153.i = icmp eq i64 %i.ds, 0
  br i1 %.not153.i, label %bb.ab, label %bb.aa, !prof !28

bb.aa:                                            ; preds = %bb.z
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.dt = shl i32 %i.m, 12
  %i.du = and i32 %i.dt, 4190208                  ; 2 uses
  %i.dv = zext nneg i32 %i.du to i64              ; 10 uses
  %i.dw = add i64 %2, -3073
  %or.cond.i = icmp ult i64 %i.dw, 2089984
  br i1 %or.cond.i, label %bb.ac, label %zend_mm_bitset_reset_range.exit

bb.ac:                                            ; preds = %bb.ab
  %i.dx = add nuw nsw i64 %spec.store.select.i, 4095 ; 2 uses
  %i.dy = and i64 %i.dx, 4190208                  ; 4 uses
  %i.dz = icmp eq i64 %i.dy, %i.dv
  br i1 %i.dz, label %zend_mm_realloc_heap.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ea = icmp samesign ult i64 %i.dy, %i.dv
  %i.eb = lshr i64 %i.dx, 12                      ; 2 uses
  %i.ec = trunc nuw i64 %i.eb to i32              ; 6 uses
  br i1 %i.ea, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.ed = sub nuw nsw i64 %i.dv, %i.dy            ; 3 uses
  %i.ee = lshr exact i64 %i.ed, 12
  %i.ef = trunc nuw nsw i64 %i.ee to i32          ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 16, !tbaa !75
  %i.ei = sub i64 %i.eh, %i.ed
  store i64 %i.ei, ptr %i.eg, align 16, !tbaa !75
  %i.ej = or disjoint i32 %i.ec, 1073741824
  store i32 %i.ej, ptr %i.l, align 4, !tbaa !27
  %i.ek = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !46
  %i.em = add i32 %i.el, %i.ef
  store i32 %i.em, ptr %i.ek, align 8, !tbaa !46
  %i.en = getelementptr inbounds nuw i8, ptr %i.h, i64 528 ; 4 uses
  %i.eo = add nuw nsw i32 %i.ec, %i.j             ; 5 uses
  %i.ep = icmp eq i64 %i.ed, 4096
  br i1 %i.ep, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.eq = zext nneg i32 %i.eo to i64              ; 2 uses
  %i.er = and i64 %i.eq, 63
  %i.es = shl nuw i64 1, %i.er
  %i.et = xor i64 %i.es, -1
  %i.eu = lshr i64 %i.eq, 6
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.eu ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !45
  %i.ex = and i64 %i.ew, %i.et
  store i64 %i.ex, ptr %i.ev, align 8, !tbaa !45
  br label %zend_mm_realloc_heap.exit

bb.ag:                                            ; preds = %bb.ae
  %i.ey = lshr i32 %i.eo, 6                       ; 5 uses
  %i.ez = add nsw i32 %i.eo, -1
  %i.fa = add i32 %i.ez, %i.ef                    ; 3 uses
  %i.fb = ashr i32 %i.fa, 6                       ; 4 uses
  %i.fc = and i32 %i.eo, 63                       ; 2 uses
  %.not.i13 = icmp eq i32 %i.ey, %i.fb
  br i1 %.not.i13, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fd = zext nneg i32 %i.fc to i64
  %notmask.i = shl nsw i64 -1, %i.fd
  %i.fe = xor i64 %notmask.i, -1
  %i.ff = zext nneg i32 %i.ey to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.ff ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !45
  %i.fi = and i64 %i.fh, %i.fe
  store i64 %i.fi, ptr %i.fg, align 8, !tbaa !45
  %.0.i1435 = add nuw nsw i32 %i.ey, 1
  %.not33.i36 = icmp eq i32 %.0.i1435, %i.fb
  br i1 %.not33.i36, label %._crit_edge40, label %.lr.ph39.preheader

.lr.ph39.preheader:                               ; preds = %bb.ah
  %i.fj = lshr i32 %i.eo, 3
  %i.fk = and i32 %i.fj, 536870904
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr i8, ptr %i.h, i64 %i.fl
  %scevgep49 = getelementptr i8, ptr %i.fm, i64 536
  %i.fn = add nsw i32 %i.fb, -2
  %i.fo = sub nsw i32 %i.fn, %i.ey
  %i.fp = zext i32 %i.fo to i64
  %i.fq = shl nuw nsw i64 %i.fp, 3
  %i.fr = add nuw nsw i64 %i.fq, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep49, i8 0, i64 %i.fr, i1 false), !tbaa !45
  br label %._crit_edge40

._crit_edge40:                                    ; preds = %bb.ah, %.lr.ph39.preheader
  %.pre-phi = zext i32 %i.fb to i64
  %i.fs = and i32 %i.fa, 63
  %i.ft = xor i32 %i.fs, 63
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = lshr i64 -1, %i.fu
  %i.fw = xor i64 %i.fv, -1
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %.pre-phi ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !45
  %i.fz = and i64 %i.fy, %i.fw
  store i64 %i.fz, ptr %i.fx, align 8, !tbaa !45
  br label %zend_mm_realloc_heap.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ga = and i32 %i.fa, 63
  %i.gb = zext nneg i32 %i.fc to i64
  %i.gc = shl nsw i64 -1, %i.gb
  %i.gd = xor i32 %i.ga, 63
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = lshr i64 -1, %i.ge
  %i.gg = and i64 %i.gf, %i.gc
  %i.gh = xor i64 %i.gg, -1
  %i.gi = zext nneg i32 %i.ey to i64
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.gi ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !45
  %i.gl = and i64 %i.gk, %i.gh
  store i64 %i.gl, ptr %i.gj, align 8, !tbaa !45
  br label %zend_mm_realloc_heap.exit

bb.aj:                                            ; preds = %bb.ad
  %i.gm = add nuw nsw i64 %i.eb, %i.i
  %i.gn = icmp samesign ult i64 %i.gm, 513
  br i1 %i.gn, label %bb.ak, label %zend_mm_bitset_reset_range.exit

bb.ak:                                            ; preds = %bb.aj
  %i.go = lshr exact i32 %i.du, 12                ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.h, i64 528 ; 7 uses
  %i.gq = add nuw nsw i32 %i.go, %i.j             ; 6 uses
  %i.gr = sub nsw i32 %i.ec, %i.go                ; 2 uses
  %i.gs = icmp eq i32 %i.gr, 1                    ; 2 uses
  br i1 %i.gs, label %.split, label %bb.al

.split:                                           ; preds = %bb.ak
  %i.gt = zext nneg i32 %i.gq to i64              ; 2 uses
  %i.gu = lshr i64 %i.gt, 6
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.gu
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !45
  %i.gx = and i64 %i.gt, 63
  %i.gy = lshr i64 %i.gw, %i.gx
  %i.gz = trunc i64 %i.gy to i1
  br i1 %i.gz, label %zend_mm_bitset_reset_range.exit, label %.critedge.i

bb.al:                                            ; preds = %bb.ak
  %i.ha = lshr i32 %i.gq, 6                       ; 3 uses
  %i.hb = add nsw i32 %i.j, -1
  %i.hc = add nsw i32 %i.hb, %i.ec                ; 3 uses
  %i.hd = ashr i32 %i.hc, 6                       ; 2 uses
  %i.he = and i32 %i.gq, 63                       ; 2 uses
  %.not.i18 = icmp eq i32 %i.ha, %i.hd
  br i1 %.not.i18, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = zext nneg i32 %i.ha to i64
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.hg
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !45
  %i.hj = lshr i64 %i.hi, %i.hf
  %.not36.i = icmp eq i64 %i.hj, 0
  br i1 %.not36.i, label %.preheader.preheader, label %zend_mm_bitset_reset_range.exit

.preheader.preheader:                             ; preds = %bb.am
  %4 = and i32 %i.m, 1023
  %5 = zext nneg i32 %4 to i64
  %6 = add nuw nsw i64 %i.i, %5
  %7 = lshr i64 %6, 6
  %i.hk = zext i32 %i.hd to i64                   ; 3 uses
  %indvars.iv.next85 = add nuw nsw i64 %7, 1      ; 2 uses
  %.not37.i86 = icmp eq i64 %indvars.iv.next85, %i.hk
  br i1 %.not37.i86, label %.preheader._crit_edge, label %bb.an

.preheader:                                       ; preds = %bb.an
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next87, 1 ; 2 uses
  %.not37.i = icmp eq i64 %indvars.iv.next, %i.hk
  br i1 %.not37.i, label %.preheader._crit_edge, label %bb.an, !llvm.loop !95

bb.an:                                            ; preds = %.preheader.preheader, %.preheader
  %indvars.iv.next87 = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.next85, %.preheader.preheader ] ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.next87
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !45
  %.not38.i = icmp eq i64 %i.hm, 0
  br i1 %.not38.i, label %.preheader, label %zend_mm_bitset_reset_range.exit, !llvm.loop !95

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  %i.hn = and i32 %i.hc, 63
  %i.ho = xor i32 %i.hn, 63
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = lshr i64 -1, %i.hp
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.hk
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !45
  %i.ht = and i64 %i.hs, %i.hq
  br label %zend_mm_bitset_is_free_range.exit

bb.ao:                                            ; preds = %bb.al
  %i.hu = and i32 %i.hc, 63
  %i.hv = zext nneg i32 %i.he to i64
  %i.hw = shl nsw i64 -1, %i.hv
  %i.hx = xor i32 %i.hu, 63
  %i.hy = zext nneg i32 %i.hx to i64
  %i.hz = lshr i64 -1, %i.hy
  %i.ia = and i64 %i.hw, %i.hz
  %i.ib = zext nneg i32 %i.ha to i64
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.ib
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !45
  %i.ie = and i64 %i.ia, %i.id
  br label %zend_mm_bitset_is_free_range.exit

zend_mm_bitset_is_free_range.exit:                ; preds = %.preheader._crit_edge, %bb.ao
  %.sink = phi i64 [ %i.ht, %.preheader._crit_edge ], [ %i.ie, %bb.ao ]
  %.not = icmp eq i64 %.sink, 0
  br i1 %.not, label %.critedge.i, label %zend_mm_bitset_reset_range.exit

.critedge.i:                                      ; preds = %.split, %zend_mm_bitset_is_free_range.exit
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ig = load i64, ptr %i.if, align 16, !tbaa !75
  %i.ih = sub nsw i64 %i.dy, %i.dv
  %i.ii = add i64 %i.ig, %i.ih                    ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !94
  %..i = tail call i64 @llvm.umax.i64(i64 %i.ik, i64 %i.ii)
  store i64 %i.ii, ptr %i.if, align 16, !tbaa !75
  store i64 %..i, ptr %i.ij, align 8, !tbaa !94
  %i.il = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.im = load i32, ptr %i.il, align 8, !tbaa !46
  %i.in = sub i32 %i.im, %i.gr
  store i32 %i.in, ptr %i.il, align 8, !tbaa !46
  br i1 %i.gs, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.critedge.i
  %i.io = zext nneg i32 %i.gq to i64              ; 2 uses
  %i.ip = and i64 %i.io, 63
  %i.iq = shl nuw i64 1, %i.ip
  %i.ir = lshr i64 %i.io, 6
  br label %zend_mm_bitset_set_range.exit

bb.aq:                                            ; preds = %.critedge.i
  %i.is = lshr i32 %i.gq, 6                       ; 5 uses
  %i.it = add nsw i32 %i.j, -1
  %i.iu = add nsw i32 %i.it, %i.ec                ; 3 uses
  %i.iv = ashr i32 %i.iu, 6                       ; 4 uses
  %i.iw = and i32 %i.gq, 63                       ; 2 uses
  %.not.i21 = icmp eq i32 %i.is, %i.iv
  br i1 %.not.i21, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ix = zext nneg i32 %i.iw to i64
  %i.iy = shl nsw i64 -1, %i.ix
  %i.iz = zext nneg i32 %i.is to i64
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.iz ; 2 uses
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !45
  %i.jc = or i64 %i.jb, %i.iy
  store i64 %i.jc, ptr %i.ja, align 8, !tbaa !45
  %.0.i2332 = add nuw nsw i32 %i.is, 1
  %.not33.i2433 = icmp eq i32 %.0.i2332, %i.iv
  br i1 %.not33.i2433, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ar
  %8 = and i32 %i.m, 1023
  %9 = zext nneg i32 %8 to i64
  %10 = add nuw nsw i64 %i.i, %9
  %11 = lshr i64 %10, 3
  %12 = and i64 %11, 248
  %i.jd = getelementptr i8, ptr %i.h, i64 %12
  %scevgep = getelementptr i8, ptr %i.jd, i64 536
  %i.je = add nsw i32 %i.iv, -2
  %i.jf = sub nsw i32 %i.je, %i.is
  %i.jg = zext i32 %i.jf to i64
  %i.jh = shl nuw nsw i64 %i.jg, 3
  %i.ji = add nuw nsw i64 %i.jh, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 -1, i64 %i.ji, i1 false), !tbaa !45
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.ar, %.lr.ph.preheader
  %.pre-phi53 = zext i32 %i.iv to i64
  %i.jj = and i32 %i.iu, 63
  %i.jk = xor i32 %i.jj, 63
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = lshr i64 -1, %i.jl
  br label %zend_mm_bitset_set_range.exit

bb.as:                                            ; preds = %bb.aq
  %i.jn = and i32 %i.iu, 63
  %i.jo = zext nneg i32 %i.iw to i64
  %i.jp = shl nsw i64 -1, %i.jo
  %i.jq = xor i32 %i.jn, 63
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = lshr i64 -1, %i.jr
  %i.jt = and i64 %i.jp, %i.js
  %i.ju = zext nneg i32 %i.is to i64
  br label %zend_mm_bitset_set_range.exit

zend_mm_bitset_set_range.exit:                    ; preds = %bb.ap, %._crit_edge, %bb.as
  %.sink84 = phi i64 [ %i.ir, %bb.ap ], [ %.pre-phi53, %._crit_edge ], [ %i.ju, %bb.as ]
  %.sink82 = phi i64 [ %i.iq, %bb.ap ], [ %i.jm, %._crit_edge ], [ %i.jt, %bb.as ]
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %.sink84 ; 2 uses
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !45
  %i.jx = or i64 %i.jw, %.sink82
  store i64 %i.jx, ptr %i.jv, align 8, !tbaa !45
  %i.jy = or disjoint i32 %i.ec, 1073741824
  store i32 %i.jy, ptr %i.l, align 4, !tbaa !27
  br label %zend_mm_realloc_heap.exit

zend_mm_bitset_reset_range.exit:                  ; preds = %bb.an, %bb.am, %.split, %bb.ab, %bb.aj, %zend_mm_bitset_is_free_range.exit, %bb.r
  %.1137.i = phi i64 [ %i.dv, %bb.ab ], [ %i.dv, %zend_mm_bitset_is_free_range.exit ], [ %i.dv, %bb.aj ], [ %i.s, %bb.r ], [ %i.dv, %.split ], [ %i.dv, %bb.am ], [ %i.dv, %bb.an ]
  %i.jz = tail call i64 @llvm.umin.i64(i64 %.1137.i, i64 %3)
  %i.ka = tail call fastcc ptr @zend_mm_realloc_slow(ptr noundef %0, ptr noundef %1, i64 noundef %spec.store.select.i, i64 noundef %i.jz)
  br label %zend_mm_realloc_heap.exit

zend_mm_realloc_heap.exit:                        ; preds = %bb.ai, %._crit_edge40, %bb.af, %zend_mm_alloc_small.exit12, %bb.j, %bb.i, %zend_mm_alloc_small.exit, %zend_mm_bitset_set_range.exit, %bb.ac, %bb.c, %bb.d, %zend_mm_bitset_reset_range.exit
  %.4.i = phi ptr [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %i.ka, %zend_mm_bitset_reset_range.exit ], [ %1, %bb.ai ], [ %1, %._crit_edge40 ], [ %1, %bb.af ], [ %1, %bb.j ], [ %.0.i5, %zend_mm_alloc_small.exit ], [ %.0.i11, %zend_mm_alloc_small.exit12 ], [ %1, %bb.i ], [ %1, %zend_mm_bitset_set_range.exit ], [ %1, %bb.ac ]
  ret ptr %.4.i
}

; Function Attrs: nounwind uwtable
define dso_local i64 @_zend_mm_block_size(ptr nofree noundef readonly captures(address) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 16, !tbaa !34
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.thread, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !64  ; 2 uses
  %i.d = icmp eq ptr %i.c, @tracked_malloc
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %1 to i64
  %i.f = lshr i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.i = tail call ptr @zend_hash_index_find(ptr noundef %i.h, i64 noundef %i.f) #38 ; 2 uses
  %.not15.not = icmp eq ptr %i.i, null
  br i1 %.not15.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %i.i, align 8, !tbaa !65
  br label %zend_mm_size.exit

bb.e:                                             ; preds = %bb.b
  %.not14 = icmp eq ptr %i.c, @poison_malloc
  br i1 %.not14, label %.thread, label %zend_mm_size.exit

.thread:                                          ; preds = %bb.c, %bb.e, %bb.a
  %i.k = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.l = and i64 %i.k, 2097151                    ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.g, !prof !40

bb.f:                                             ; preds = %.thread
  %i.n = tail call fastcc i64 @zend_mm_get_huge_block_size(ptr noundef nonnull readonly %0, ptr noundef %1)
  br label %zend_mm_size.exit

bb.g:                                             ; preds = %.thread
  %i.o = and i64 %i.k, -2097152
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = lshr i64 %i.l, 12
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 592
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.q
  %i.t = load i32, ptr %i.s, align 4, !tbaa !27   ; 3 uses
  %i.u = load ptr, ptr %i.p, align 2097152, !tbaa !36
  %.not.i = icmp eq ptr %i.u, %0
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !28

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

bb.i:                                             ; preds = %bb.g
  %.not14.i = icmp sgt i32 %i.t, -1
  br i1 %.not14.i, label %bb.k, label %bb.j, !prof !40

bb.j:                                             ; preds = %bb.i
  %i.v = and i32 %i.t, 31
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @bin_data_size, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !27
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.z = shl i32 %i.t, 12
  %i.aa = and i32 %i.z, 4190208
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.in.i = phi i32 [ %i.y, %bb.j ], [ %i.aa, %bb.k ]
  %.0.i = zext i32 %.0.in.i to i64
  br label %zend_mm_size.exit

zend_mm_size.exit:                                ; preds = %bb.l, %bb.f, %bb.d, %bb.e
  %.1 = phi i64 [ 0, %bb.e ], [ %i.j, %bb.d ], [ %i.n, %bb.f ], [ %.0.i, %bb.l ]
  ret i64 %.1
}

declare ptr @zend_hash_index_find(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal ptr @poison_malloc(i64 noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr @alloc_globals.0, align 8, !tbaa !90 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 412 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !65
  %i.e = zext i8 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 1                  ; 2 uses
  %i.g = xor i64 %i.f, -1
  %i.h = icmp ugt i64 %0, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str.13) #39
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = add i64 %i.f, %0                         ; 5 uses
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 16) ; 4 uses
  %i.j = icmp ult i64 %i.i, 3073
  br i1 %i.j, label %bb.d, label %bb.k, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.k = icmp samesign ult i64 %i.i, 65
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = add nuw nsw i64 %spec.store.select.i, 34359738367
  %i.m = lshr i64 %i.l, 3
  %i.n = trunc i64 %i.m to i32
  br label %zend_mm_small_size_to_bin.exit

bb.f:                                             ; preds = %bb.d
  %i.o = trunc nuw i64 %spec.store.select.i to i32
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  %i.q = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 range(i32 64, -2) %i.p, i1 true) ; 2 uses
  %i.r = sub nuw nsw i32 29, %i.q
  %i.s = lshr i32 %i.p, %i.r
  %i.t = shl nuw nsw i32 %i.q, 2
  %reass.sub21 = sub nsw i32 %i.s, %i.t
  %i.u = add i32 %reass.sub21, 104
  br label %zend_mm_small_size_to_bin.exit

zend_mm_small_size_to_bin.exit:                   ; preds = %bb.e, %bb.f
  %.0.i16 = phi i32 [ %i.n, %bb.e ], [ %i.u, %bb.f ] ; 3 uses
  %i.v = zext nneg i32 %.0.i16 to i64             ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @bin_data_size, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !27
  %i.y = icmp ne i32 %.0.i16, 0
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 16, !tbaa !75
  %i.ab = zext i32 %i.x to i64                    ; 2 uses
  %i.ac = add i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !94
  %..i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 %i.ac)
  store i64 %i.ac, ptr %i.z, align 16, !tbaa !75
  store i64 %..i, ptr %i.ad, align 8, !tbaa !94
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.v ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !23 ; 4 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.j, label %bb.g, !prof !40

bb.g:                                             ; preds = %zend_mm_small_size_to_bin.exit
end_hunk_0
begin_hunk_1_@_emalloc:bb.a
  %i.t = load i32, ptr %i.s, align 4, !tbaa !27
  %i.u = icmp ne i32 %.0.i3, 0
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 16, !tbaa !75
  %i.x = zext i32 %i.t to i64                     ; 2 uses
  %i.y = add i64 %i.w, %i.x                       ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !94
  %..i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 %i.y)
  store i64 %i.y, ptr %i.v, align 16, !tbaa !75
  store i64 %..i, ptr %i.z, align 8, !tbaa !94
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.r ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !23 ; 4 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %bb.j, label %bb.g, !prof !40

bb.g:                                             ; preds = %zend_mm_small_size_to_bin.exit
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !25 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %zend_mm_get_next_free_slot.exit.i, label %bb.h, !prof !40

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.x
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !23
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aj = load i64, ptr %i.ai, align 16, !tbaa !12
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = xor i64 %i.aj, %i.ak
  %i.am = tail call i64 @llvm.bswap.i64(i64 %i.al)
  %i.an = inttoptr i64 %i.am to ptr
  %.not7.i.i = icmp eq ptr %i.ae, %i.an
  br i1 %.not7.i.i, label %zend_mm_get_next_free_slot.exit.i, label %bb.i, !prof !28

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

zend_mm_get_next_free_slot.exit.i:                ; preds = %bb.h, %bb.g
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !23
  br label %zend_mm_alloc_heap.exit

bb.j:                                             ; preds = %zend_mm_small_size_to_bin.exit
  %i.ao = tail call fastcc ptr @zend_mm_alloc_small_slow(ptr noundef nonnull %i.a, i32 noundef %.0.i3)
  br label %zend_mm_alloc_heap.exit

bb.k:                                             ; preds = %bb.c
  %i.ap = icmp ult i64 %0, 2093057
  br i1 %i.ap, label %bb.l, label %bb.m, !prof !28

bb.l:                                             ; preds = %bb.k
  %i.aq = tail call fastcc ptr @zend_mm_alloc_large(ptr noundef nonnull %i.a, i64 noundef %spec.store.select.i)
  br label %zend_mm_alloc_heap.exit

bb.m:                                             ; preds = %bb.k
  %i.ar = tail call fastcc ptr @zend_mm_alloc_huge(ptr noundef nonnull %i.a, i64 noundef %spec.store.select.i)
  br label %zend_mm_alloc_heap.exit

zend_mm_alloc_heap.exit:                          ; preds = %bb.m, %bb.l, %zend_mm_get_next_free_slot.exit.i, %bb.j, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.ar, %bb.m ], [ %i.aq, %bb.l ], [ %i.ad, %zend_mm_get_next_free_slot.exit.i ], [ %i.ao, %bb.j ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @_efree(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @alloc_globals.0, align 8, !tbaa !90 ; 9 uses
  %i.b = load i32, ptr %i.a, align 16, !tbaa !34
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !74
  tail call void %i.d(ptr noundef %0) #38
  br label %zend_mm_free_heap.exit

bb.c:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.f = and i64 %i.e, 2097151                    ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.f, !prof !40

bb.d:                                             ; preds = %bb.c
  %.not23.i = icmp eq ptr %0, null
  br i1 %.not23.i, label %zend_mm_free_heap.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @zend_mm_free_huge(ptr noundef nonnull %i.a, ptr noundef nonnull %0)
  br label %zend_mm_free_heap.exit

bb.f:                                             ; preds = %bb.c
  %i.h = and i64 %i.e, -2097152
  %i.i = inttoptr i64 %i.h to ptr                 ; 3 uses
  %i.j = lshr i64 %i.f, 12                        ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 592
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.j
  %i.n = load i32, ptr %i.m, align 4, !tbaa !27   ; 3 uses
  %i.o = load ptr, ptr %i.i, align 2097152, !tbaa !36
  %.not.i = icmp eq ptr %i.o, %i.a
  br i1 %.not.i, label %bb.h, label %bb.g, !prof !28

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

bb.h:                                             ; preds = %bb.f
  %.not21.i = icmp sgt i32 %i.n, -1
  br i1 %.not21.i, label %bb.j, label %bb.i, !prof !40

bb.i:                                             ; preds = %bb.h
  %i.p = and i32 %i.n, 31                         ; 2 uses
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @bin_data_size, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !27
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 16, !tbaa !75
  %i.w = sub i64 %i.v, %i.t
  store i64 %i.w, ptr %i.u, align 16, !tbaa !75
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.q ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !23   ; 2 uses
  %i.aa = icmp ne i32 %i.p, 0
  tail call void @llvm.assume(i1 %i.aa)
  store ptr %i.z, ptr %0, align 8, !tbaa !25
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = tail call i64 @llvm.bswap.i64(i64 %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ae = load i64, ptr %i.ad, align 16, !tbaa !12
  %i.af = xor i64 %i.ae, %i.ac
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.t
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -8
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !23
  store ptr %0, ptr %i.y, align 8, !tbaa !23
  br label %zend_mm_free_heap.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = and i64 %i.e, 4095
  %.not22.i = icmp eq i64 %i.aj, 0
  br i1 %.not22.i, label %bb.l, label %bb.k, !prof !28

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ak = and i32 %i.n, 1023                      ; 2 uses
  %i.al = shl nuw nsw i32 %i.ak, 12
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 16, !tbaa !75
  %i.ap = sub i64 %i.ao, %i.am
  store i64 %i.ap, ptr %i.an, align 16, !tbaa !75
  tail call fastcc void @zend_mm_free_pages(ptr noundef nonnull %i.a, ptr noundef nonnull %i.i, i32 noundef range(i32 0, 512) %i.k, i32 noundef range(i32 0, 1024) %i.ak)
  br label %zend_mm_free_heap.exit

zend_mm_free_heap.exit:                           ; preds = %bb.l, %bb.i, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local ptr @_erealloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr @alloc_globals.0, align 8, !tbaa !90 ; 21 uses
  %i.b = load i32, ptr %i.a, align 16, !tbaa !34
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !106
  %i.e = tail call ptr %i.d(ptr noundef %0, i64 noundef %1) #38
  br label %zend_mm_realloc_heap.exit

bb.c:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.g = and i64 %i.f, 2097151                    ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.g, !prof !40

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq ptr %0, null
  br i1 %i.i, label %bb.e, label %bb.f, !prof !28

bb.e:                                             ; preds = %bb.d
  %i.j = tail call noalias ptr @_zend_mm_alloc(ptr noundef nonnull %i.a, i64 noundef %1) #44
  br label %zend_mm_realloc_heap.exit

bb.f:                                             ; preds = %bb.d
  %i.k = tail call fastcc ptr @zend_mm_realloc_huge(ptr noundef nonnull %i.a, ptr noundef %0, i64 noundef %1, i64 noundef %1)
  br label %zend_mm_realloc_heap.exit

bb.g:                                             ; preds = %bb.c
  %i.l = and i64 %i.f, -2097152
  %i.m = inttoptr i64 %i.l to ptr                 ; 8 uses
  %i.n = lshr i64 %i.g, 12                        ; 5 uses
  %i.o = trunc nuw nsw i64 %i.n to i32            ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 592
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.n ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !27   ; 5 uses
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %1, i64 16) ; 9 uses
  %i.s = load ptr, ptr %i.m, align 2097152, !tbaa !36
  %.not.i = icmp eq ptr %i.s, %i.a
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !28

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

bb.i:                                             ; preds = %bb.g
  %.not152.i = icmp sgt i32 %i.r, -1
  br i1 %.not152.i, label %bb.ab, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = and i32 %i.r, 31                         ; 3 uses
  %i.u = zext nneg i32 %i.t to i64                ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr @bin_data_size, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !27
  %i.x = zext i32 %i.w to i64                     ; 7 uses
  %.not155.i = icmp ugt i64 %spec.store.select.i, %i.x
  br i1 %.not155.i, label %bb.t, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not156.i = icmp eq i32 %i.t, 0
  br i1 %.not156.i, label %zend_mm_realloc_heap.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr i8, ptr %i.v, i64 -4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !27
  %i.aa = zext i32 %i.z to i64
  %i.ab = icmp samesign ult i64 %spec.store.select.i, %i.aa
  br i1 %i.ab, label %bb.m, label %zend_mm_realloc_heap.exit

bb.m:                                             ; preds = %bb.l
  %i.ac = icmp ult i64 %1, 65
  br i1 %i.ac, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ad = add nuw nsw i64 %spec.store.select.i, 34359738367
  %i.ae = lshr i64 %i.ad, 3
  %i.af = trunc i64 %i.ae to i32
  br label %zend_mm_small_size_to_bin.exit19

bb.o:                                             ; preds = %bb.m
  %i.ag = trunc nuw i64 %spec.store.select.i to i32
  %i.ah = add i32 %i.ag, -1                       ; 2 uses
  %i.ai = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 range(i32 64, -2) %i.ah, i1 true) ; 2 uses
  %i.aj = sub nuw nsw i32 29, %i.ai
  %i.ak = lshr i32 %i.ah, %i.aj
  %i.al = shl nuw nsw i32 %i.ai, 2
  %reass.sub45 = sub nsw i32 %i.ak, %i.al
  %i.am = add i32 %reass.sub45, 104
  br label %zend_mm_small_size_to_bin.exit19

zend_mm_small_size_to_bin.exit19:                 ; preds = %bb.n, %bb.o
  %.0.i18 = phi i32 [ %i.af, %bb.n ], [ %i.am, %bb.o ] ; 3 uses
  %i.an = zext nneg i32 %.0.i18 to i64            ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr @bin_data_size, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !27
  %i.aq = icmp ne i32 %.0.i18, 0
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.as = load i64, ptr %i.ar, align 16, !tbaa !75
  %i.at = zext i32 %i.ap to i64                   ; 2 uses
  %i.au = add i64 %i.as, %i.at                    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !94
  %..i8 = tail call i64 @llvm.umax.i64(i64 %i.aw, i64 %i.au)
  store i64 %i.au, ptr %i.ar, align 16, !tbaa !75
  store i64 %..i8, ptr %i.av, align 8, !tbaa !94
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.an ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !23 ; 4 uses
  %.not.i9 = icmp eq ptr %i.az, null
  br i1 %.not.i9, label %bb.s, label %bb.p, !prof !40

bb.p:                                             ; preds = %zend_mm_small_size_to_bin.exit19
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !25 ; 3 uses
  %.not.i.i10 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i10, label %zend_mm_get_next_free_slot.exit.i12, label %bb.q, !prof !40

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.at
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !23
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bf = load i64, ptr %i.be, align 16, !tbaa !12
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = xor i64 %i.bf, %i.bg
  %i.bi = tail call i64 @llvm.bswap.i64(i64 %i.bh)
  %i.bj = inttoptr i64 %i.bi to ptr
  %.not7.i.i11 = icmp eq ptr %i.ba, %i.bj
  br i1 %.not7.i.i11, label %zend_mm_get_next_free_slot.exit.i12, label %bb.r, !prof !28

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

zend_mm_get_next_free_slot.exit.i12:              ; preds = %bb.q, %bb.p
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !23
  br label %zend_mm_alloc_small.exit14

bb.s:                                             ; preds = %zend_mm_small_size_to_bin.exit19
  %i.bk = tail call fastcc ptr @zend_mm_alloc_small_slow(ptr noundef nonnull %i.a, i32 noundef %.0.i18)
  br label %zend_mm_alloc_small.exit14

zend_mm_alloc_small.exit14:                       ; preds = %zend_mm_get_next_free_slot.exit.i12, %bb.s
  %.0.i13 = phi ptr [ %i.az, %zend_mm_get_next_free_slot.exit.i12 ], [ %i.bk, %bb.s ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i13, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %spec.store.select.i, i1 false)
  %i.bl = load i64, ptr %i.ar, align 16, !tbaa !75
  %i.bm = sub i64 %i.bl, %i.x
  store i64 %i.bm, ptr %i.ar, align 16, !tbaa !75
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.u ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !23 ; 2 uses
  store ptr %i.bo, ptr %0, align 8, !tbaa !25
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = tail call i64 @llvm.bswap.i64(i64 %i.bp)
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bs = load i64, ptr %i.br, align 16, !tbaa !12
  %i.bt = xor i64 %i.bq, %i.bs
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -8
  store ptr %i.bu, ptr %i.bw, align 8, !tbaa !23
  store ptr %0, ptr %i.bn, align 8, !tbaa !23
  br label %zend_mm_realloc_heap.exit

bb.t:                                             ; preds = %bb.j
  %i.bx = icmp ult i64 %1, 3073
  br i1 %i.bx, label %bb.u, label %zend_mm_bitset_reset_range.exit

bb.u:                                             ; preds = %bb.t
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !94 ; 2 uses
  %i.ca = icmp samesign ult i64 %1, 65
  br i1 %i.ca, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cb = add nuw nsw i64 %spec.store.select.i, 34359738367
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = trunc i64 %i.cc to i32
  br label %zend_mm_small_size_to_bin.exit

bb.w:                                             ; preds = %bb.u
  %i.ce = trunc nuw i64 %spec.store.select.i to i32
  %i.cf = add nsw i32 %i.ce, -1                   ; 2 uses
  %i.cg = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 range(i32 64, -2) %i.cf, i1 true) ; 2 uses
  %i.ch = sub nuw nsw i32 29, %i.cg
  %i.ci = lshr i32 %i.cf, %i.ch
  %i.cj = shl nuw nsw i32 %i.cg, 2
  %reass.sub = sub nsw i32 %i.ci, %i.cj
  %i.ck = add i32 %reass.sub, 104
  br label %zend_mm_small_size_to_bin.exit

zend_mm_small_size_to_bin.exit:                   ; preds = %bb.v, %bb.w
  %.0.i17 = phi i32 [ %i.cd, %bb.v ], [ %i.ck, %bb.w ] ; 3 uses
  %i.cl = zext nneg i32 %.0.i17 to i64            ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr @bin_data_size, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !27
  %i.co = icmp ne i32 %.0.i17, 0
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.cq = load i64, ptr %i.cp, align 16, !tbaa !75
  %i.cr = zext i32 %i.cn to i64                   ; 2 uses
  %i.cs = add i64 %i.cq, %i.cr                    ; 2 uses
  %..i5 = tail call i64 @llvm.umax.i64(i64 %i.bz, i64 %i.cs)
  store i64 %i.cs, ptr %i.cp, align 16, !tbaa !75
  store i64 %..i5, ptr %i.by, align 8, !tbaa !94
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cl ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !23 ; 4 uses
  %.not.i6 = icmp eq ptr %i.cv, null
  br i1 %.not.i6, label %bb.aa, label %bb.x, !prof !40

bb.x:                                             ; preds = %zend_mm_small_size_to_bin.exit
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !25 ; 3 uses
  %.not.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i, label %zend_mm_get_next_free_slot.exit.i, label %bb.y, !prof !40

bb.y:                                             ; preds = %bb.x
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cr
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !23
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.db = load i64, ptr %i.da, align 16, !tbaa !12
  %i.dc = ptrtoint ptr %i.cz to i64
  %i.dd = xor i64 %i.db, %i.dc
  %i.de = tail call i64 @llvm.bswap.i64(i64 %i.dd)
  %i.df = inttoptr i64 %i.de to ptr
  %.not7.i.i = icmp eq ptr %i.cw, %i.df
  br i1 %.not7.i.i, label %zend_mm_get_next_free_slot.exit.i, label %bb.z, !prof !28

bb.z:                                             ; preds = %bb.y
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

zend_mm_get_next_free_slot.exit.i:                ; preds = %bb.y, %bb.x
  store ptr %i.cw, ptr %i.cu, align 8, !tbaa !23
  br label %zend_mm_alloc_small.exit

bb.aa:                                            ; preds = %zend_mm_small_size_to_bin.exit
  %i.dg = tail call fastcc ptr @zend_mm_alloc_small_slow(ptr noundef nonnull %i.a, i32 noundef %.0.i17)
  br label %zend_mm_alloc_small.exit

zend_mm_alloc_small.exit:                         ; preds = %zend_mm_get_next_free_slot.exit.i, %bb.aa
  %.0.i7 = phi ptr [ %i.cv, %zend_mm_get_next_free_slot.exit.i ], [ %i.dg, %bb.aa ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i7, ptr align 1 %0, i64 %i.x, i1 false)
  %i.dh = load i64, ptr %i.cp, align 16, !tbaa !75
  %i.di = sub i64 %i.dh, %i.x                     ; 2 uses
  store i64 %i.di, ptr %i.cp, align 16, !tbaa !75
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.u ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !23 ; 2 uses
  %i.dl = icmp ne i32 %i.t, 0
  tail call void @llvm.assume(i1 %i.dl)
  store ptr %i.dk, ptr %0, align 8, !tbaa !25
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = tail call i64 @llvm.bswap.i64(i64 %i.dm)
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.dp = load i64, ptr %i.do, align 16, !tbaa !12
  %i.dq = xor i64 %i.dp, %i.dn
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -8
  store ptr %i.dr, ptr %i.dt, align 8, !tbaa !23
  store ptr %0, ptr %i.dj, align 8, !tbaa !23
  %i.du = tail call i64 @llvm.umax.i64(i64 %i.bz, i64 %i.di)
  store i64 %i.du, ptr %i.by, align 8, !tbaa !94
  br label %zend_mm_realloc_heap.exit

bb.ab:                                            ; preds = %bb.i
  %i.dv = and i64 %i.f, 4095
  %.not153.i = icmp eq i64 %i.dv, 0
  br i1 %.not153.i, label %bb.ad, label %bb.ac, !prof !28

bb.ac:                                            ; preds = %bb.ab
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.dw = shl i32 %i.r, 12
  %i.dx = and i32 %i.dw, 4190208                  ; 2 uses
  %i.dy = zext nneg i32 %i.dx to i64              ; 10 uses
  %i.dz = add i64 %1, -3073
  %or.cond.i = icmp ult i64 %i.dz, 2089984
  br i1 %or.cond.i, label %bb.ae, label %zend_mm_bitset_reset_range.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ea = add nuw nsw i64 %spec.store.select.i, 4095 ; 2 uses
  %i.eb = and i64 %i.ea, 4190208                  ; 4 uses
  %i.ec = icmp eq i64 %i.eb, %i.dy
  br i1 %i.ec, label %zend_mm_realloc_heap.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ed = icmp samesign ult i64 %i.eb, %i.dy
  %i.ee = lshr i64 %i.ea, 12                      ; 2 uses
  %i.ef = trunc nuw i64 %i.ee to i32              ; 6 uses
  br i1 %i.ed, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.eg = sub nuw nsw i64 %i.dy, %i.eb            ; 3 uses
  %i.eh = lshr exact i64 %i.eg, 12
  %i.ei = trunc nuw nsw i64 %i.eh to i32          ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 16, !tbaa !75
  %i.el = sub i64 %i.ek, %i.eg
  store i64 %i.el, ptr %i.ej, align 16, !tbaa !75
  %i.em = or disjoint i32 %i.ef, 1073741824
  store i32 %i.em, ptr %i.q, align 4, !tbaa !27
  %i.en = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !46
  %i.ep = add i32 %i.eo, %i.ei
  store i32 %i.ep, ptr %i.en, align 8, !tbaa !46
  %i.eq = getelementptr inbounds nuw i8, ptr %i.m, i64 528 ; 4 uses
  %i.er = add nuw nsw i32 %i.ef, %i.o             ; 5 uses
  %i.es = icmp eq i64 %i.eg, 4096
  br i1 %i.es, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.et = zext nneg i32 %i.er to i64              ; 2 uses
  %i.eu = and i64 %i.et, 63
  %i.ev = shl nuw i64 1, %i.eu
  %i.ew = xor i64 %i.ev, -1
  %i.ex = lshr i64 %i.et, 6
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.ex ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !45
  %i.fa = and i64 %i.ez, %i.ew
  store i64 %i.fa, ptr %i.ey, align 8, !tbaa !45
  br label %zend_mm_realloc_heap.exit

bb.ai:                                            ; preds = %bb.ag
  %i.fb = lshr i32 %i.er, 6                       ; 5 uses
  %i.fc = add nsw i32 %i.er, -1
  %i.fd = add i32 %i.fc, %i.ei                    ; 3 uses
  %i.fe = ashr i32 %i.fd, 6                       ; 4 uses
  %i.ff = and i32 %i.er, 63                       ; 2 uses
  %.not.i15 = icmp eq i32 %i.fb, %i.fe
  br i1 %.not.i15, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fg = zext nneg i32 %i.ff to i64
  %notmask.i = shl nsw i64 -1, %i.fg
  %i.fh = xor i64 %notmask.i, -1
  %i.fi = zext nneg i32 %i.fb to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.fi ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !45
  %i.fl = and i64 %i.fk, %i.fh
  store i64 %i.fl, ptr %i.fj, align 8, !tbaa !45
  %.0.i1637 = add nuw nsw i32 %i.fb, 1
  %.not33.i38 = icmp eq i32 %.0.i1637, %i.fe
  br i1 %.not33.i38, label %._crit_edge42, label %.lr.ph41.preheader

.lr.ph41.preheader:                               ; preds = %bb.aj
  %i.fm = lshr i32 %i.er, 3
  %i.fn = and i32 %i.fm, 536870904
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr i8, ptr %i.m, i64 %i.fo
  %scevgep51 = getelementptr i8, ptr %i.fp, i64 536
  %i.fq = add nsw i32 %i.fe, -2
  %i.fr = sub nsw i32 %i.fq, %i.fb
  %i.fs = zext i32 %i.fr to i64
  %i.ft = shl nuw nsw i64 %i.fs, 3
  %i.fu = add nuw nsw i64 %i.ft, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep51, i8 0, i64 %i.fu, i1 false), !tbaa !45
  br label %._crit_edge42

._crit_edge42:                                    ; preds = %bb.aj, %.lr.ph41.preheader
  %.pre-phi = zext i32 %i.fe to i64
  %i.fv = and i32 %i.fd, 63
  %i.fw = xor i32 %i.fv, 63
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = lshr i64 -1, %i.fx
  %i.fz = xor i64 %i.fy, -1
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %.pre-phi ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !45
  %i.gc = and i64 %i.gb, %i.fz
  store i64 %i.gc, ptr %i.ga, align 8, !tbaa !45
  br label %zend_mm_realloc_heap.exit

bb.ak:                                            ; preds = %bb.ai
  %i.gd = and i32 %i.fd, 63
  %i.ge = zext nneg i32 %i.ff to i64
  %i.gf = shl nsw i64 -1, %i.ge
  %i.gg = xor i32 %i.gd, 63
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = lshr i64 -1, %i.gh
  %i.gj = and i64 %i.gi, %i.gf
  %i.gk = xor i64 %i.gj, -1
  %i.gl = zext nneg i32 %i.fb to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.gl ; 2 uses
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !45
  %i.go = and i64 %i.gn, %i.gk
  store i64 %i.go, ptr %i.gm, align 8, !tbaa !45
  br label %zend_mm_realloc_heap.exit

bb.al:                                            ; preds = %bb.af
  %i.gp = add nuw nsw i64 %i.ee, %i.n
  %i.gq = icmp samesign ult i64 %i.gp, 513
  br i1 %i.gq, label %bb.am, label %zend_mm_bitset_reset_range.exit

bb.am:                                            ; preds = %bb.al
  %i.gr = lshr exact i32 %i.dx, 12                ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.m, i64 528 ; 7 uses
  %i.gt = add nuw nsw i32 %i.gr, %i.o             ; 6 uses
  %i.gu = sub nsw i32 %i.ef, %i.gr                ; 2 uses
  %i.gv = icmp eq i32 %i.gu, 1                    ; 2 uses
  br i1 %i.gv, label %.split, label %bb.an

.split:                                           ; preds = %bb.am
  %i.gw = zext nneg i32 %i.gt to i64              ; 2 uses
  %i.gx = lshr i64 %i.gw, 6
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.gx
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !45
  %i.ha = and i64 %i.gw, 63
  %i.hb = lshr i64 %i.gz, %i.ha
  %i.hc = trunc i64 %i.hb to i1
  br i1 %i.hc, label %zend_mm_bitset_reset_range.exit, label %.critedge.i

bb.an:                                            ; preds = %bb.am
  %i.hd = lshr i32 %i.gt, 6                       ; 3 uses
  %i.he = add nsw i32 %i.o, -1
  %i.hf = add nsw i32 %i.he, %i.ef                ; 3 uses
  %i.hg = ashr i32 %i.hf, 6                       ; 2 uses
  %i.hh = and i32 %i.gt, 63                       ; 2 uses
  %.not.i20 = icmp eq i32 %i.hd, %i.hg
  br i1 %.not.i20, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = zext nneg i32 %i.hd to i64
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.hj
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !45
  %i.hm = lshr i64 %i.hl, %i.hi
  %.not36.i = icmp eq i64 %i.hm, 0
  br i1 %.not36.i, label %.preheader.preheader, label %zend_mm_bitset_reset_range.exit

.preheader.preheader:                             ; preds = %bb.ao
  %2 = and i32 %i.r, 1023
  %3 = zext nneg i32 %2 to i64
  %4 = add nuw nsw i64 %i.n, %3
  %5 = lshr i64 %4, 6
  %i.hn = zext i32 %i.hg to i64                   ; 3 uses
  %indvars.iv.next89 = add nuw nsw i64 %5, 1      ; 2 uses
  %.not37.i90 = icmp eq i64 %indvars.iv.next89, %i.hn
  br i1 %.not37.i90, label %.preheader._crit_edge, label %bb.ap

.preheader:                                       ; preds = %bb.ap
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next91, 1 ; 2 uses
  %.not37.i = icmp eq i64 %indvars.iv.next, %i.hn
  br i1 %.not37.i, label %.preheader._crit_edge, label %bb.ap, !llvm.loop !95

bb.ap:                                            ; preds = %.preheader.preheader, %.preheader
  %indvars.iv.next91 = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.next89, %.preheader.preheader ] ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv.next91
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !45
  %.not38.i = icmp eq i64 %i.hp, 0
  br i1 %.not38.i, label %.preheader, label %zend_mm_bitset_reset_range.exit, !llvm.loop !95

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  %i.hq = and i32 %i.hf, 63
  %i.hr = xor i32 %i.hq, 63
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = lshr i64 -1, %i.hs
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.hn
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !45
  %i.hw = and i64 %i.hv, %i.ht
  br label %zend_mm_bitset_is_free_range.exit

bb.aq:                                            ; preds = %bb.an
  %i.hx = and i32 %i.hf, 63
  %i.hy = zext nneg i32 %i.hh to i64
  %i.hz = shl nsw i64 -1, %i.hy
  %i.ia = xor i32 %i.hx, 63
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = lshr i64 -1, %i.ib
  %i.id = and i64 %i.hz, %i.ic
  %i.ie = zext nneg i32 %i.hd to i64
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.ie
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !45
  %i.ih = and i64 %i.id, %i.ig
  br label %zend_mm_bitset_is_free_range.exit

zend_mm_bitset_is_free_range.exit:                ; preds = %.preheader._crit_edge, %bb.aq
  %.sink = phi i64 [ %i.hw, %.preheader._crit_edge ], [ %i.ih, %bb.aq ]
  %.not88 = icmp eq i64 %.sink, 0
  br i1 %.not88, label %.critedge.i, label %zend_mm_bitset_reset_range.exit

.critedge.i:                                      ; preds = %.split, %zend_mm_bitset_is_free_range.exit
  %i.ii = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 16, !tbaa !75
  %i.ik = sub nsw i64 %i.eb, %i.dy
  %i.il = add i64 %i.ij, %i.ik                    ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.in = load i64, ptr %i.im, align 8, !tbaa !94
  %..i = tail call i64 @llvm.umax.i64(i64 %i.in, i64 %i.il)
  store i64 %i.il, ptr %i.ii, align 16, !tbaa !75
  store i64 %..i, ptr %i.im, align 8, !tbaa !94
  %i.io = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !46
  %i.iq = sub i32 %i.ip, %i.gu
  store i32 %i.iq, ptr %i.io, align 8, !tbaa !46
  br i1 %i.gv, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.critedge.i
  %i.ir = zext nneg i32 %i.gt to i64              ; 2 uses
  %i.is = and i64 %i.ir, 63
  %i.it = shl nuw i64 1, %i.is
  %i.iu = lshr i64 %i.ir, 6
  br label %zend_mm_bitset_set_range.exit

bb.as:                                            ; preds = %.critedge.i
  %i.iv = lshr i32 %i.gt, 6                       ; 5 uses
  %i.iw = add nsw i32 %i.o, -1
  %i.ix = add nsw i32 %i.iw, %i.ef                ; 3 uses
  %i.iy = ashr i32 %i.ix, 6                       ; 4 uses
  %i.iz = and i32 %i.gt, 63                       ; 2 uses
  %.not.i23 = icmp eq i32 %i.iv, %i.iy
  br i1 %.not.i23, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = shl nsw i64 -1, %i.ja
  %i.jc = zext nneg i32 %i.iv to i64
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.jc ; 2 uses
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !45
  %i.jf = or i64 %i.je, %i.jb
  store i64 %i.jf, ptr %i.jd, align 8, !tbaa !45
  %.0.i2534 = add nuw nsw i32 %i.iv, 1
  %.not33.i2635 = icmp eq i32 %.0.i2534, %i.iy
  br i1 %.not33.i2635, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.at
  %6 = and i32 %i.r, 1023
  %7 = zext nneg i32 %6 to i64
  %8 = add nuw nsw i64 %i.n, %7
  %9 = lshr i64 %8, 3
  %10 = and i64 %9, 248
  %i.jg = getelementptr i8, ptr %i.m, i64 %10
  %scevgep = getelementptr i8, ptr %i.jg, i64 536
  %i.jh = add nsw i32 %i.iy, -2
  %i.ji = sub nsw i32 %i.jh, %i.iv
  %i.jj = zext i32 %i.ji to i64
  %i.jk = shl nuw nsw i64 %i.jj, 3
  %i.jl = add nuw nsw i64 %i.jk, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 -1, i64 %i.jl, i1 false), !tbaa !45
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.at, %.lr.ph.preheader
  %.pre-phi55 = zext i32 %i.iy to i64
  %i.jm = and i32 %i.ix, 63
  %i.jn = xor i32 %i.jm, 63
  %i.jo = zext nneg i32 %i.jn to i64
  %i.jp = lshr i64 -1, %i.jo
  br label %zend_mm_bitset_set_range.exit

bb.au:                                            ; preds = %bb.as
  %i.jq = and i32 %i.ix, 63
  %i.jr = zext nneg i32 %i.iz to i64
  %i.js = shl nsw i64 -1, %i.jr
  %i.jt = xor i32 %i.jq, 63
  %i.ju = zext nneg i32 %i.jt to i64
  %i.jv = lshr i64 -1, %i.ju
  %i.jw = and i64 %i.js, %i.jv
  %i.jx = zext nneg i32 %i.iv to i64
  br label %zend_mm_bitset_set_range.exit

zend_mm_bitset_set_range.exit:                    ; preds = %bb.ar, %._crit_edge, %bb.au
  %.sink87 = phi i64 [ %i.iu, %bb.ar ], [ %.pre-phi55, %._crit_edge ], [ %i.jx, %bb.au ]
  %.sink85 = phi i64 [ %i.it, %bb.ar ], [ %i.jp, %._crit_edge ], [ %i.jw, %bb.au ]
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %.sink87 ; 2 uses
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !45
  %i.ka = or i64 %i.jz, %.sink85
  store i64 %i.ka, ptr %i.jy, align 8, !tbaa !45
  %i.kb = or disjoint i32 %i.ef, 1073741824
  store i32 %i.kb, ptr %i.q, align 4, !tbaa !27
  br label %zend_mm_realloc_heap.exit

zend_mm_bitset_reset_range.exit:                  ; preds = %bb.ap, %bb.ao, %.split, %bb.ad, %bb.al, %zend_mm_bitset_is_free_range.exit, %bb.t
  %.1137.i = phi i64 [ %i.dy, %bb.ad ], [ %i.dy, %zend_mm_bitset_is_free_range.exit ], [ %i.dy, %bb.al ], [ %i.x, %bb.t ], [ %i.dy, %.split ], [ %i.dy, %bb.ao ], [ %i.dy, %bb.ap ]
  %i.kc = tail call i64 @llvm.umin.i64(i64 %.1137.i, i64 %1)
  %i.kd = tail call fastcc ptr @zend_mm_realloc_slow(ptr noundef nonnull %i.a, ptr noundef %0, i64 noundef %spec.store.select.i, i64 noundef %i.kc)
  br label %zend_mm_realloc_heap.exit

zend_mm_realloc_heap.exit:                        ; preds = %bb.ak, %._crit_edge42, %bb.ah, %zend_mm_alloc_small.exit14, %bb.l, %bb.k, %zend_mm_alloc_small.exit, %zend_mm_bitset_set_range.exit, %bb.ae, %zend_mm_bitset_reset_range.exit, %bb.f, %bb.e, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.j, %bb.e ], [ %i.k, %bb.f ], [ %i.kd, %zend_mm_bitset_reset_range.exit ], [ %0, %bb.ak ], [ %0, %._crit_edge42 ], [ %0, %bb.ah ], [ %0, %bb.l ], [ %.0.i7, %zend_mm_alloc_small.exit ], [ %.0.i13, %zend_mm_alloc_small.exit14 ], [ %0, %bb.k ], [ %0, %zend_mm_bitset_set_range.exit ], [ %0, %bb.ae ]
  ret ptr %.0
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local ptr @_erealloc2(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr @alloc_globals.0, align 8, !tbaa !90 ; 21 uses
  %i.b = load i32, ptr %i.a, align 16, !tbaa !34
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !106
  %i.e = tail call ptr %i.d(ptr noundef %0, i64 noundef %1) #38
  br label %zend_mm_realloc_heap.exit

bb.c:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.g = and i64 %i.f, 2097151                    ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.g, !prof !40

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq ptr %0, null
  br i1 %i.i, label %bb.e, label %bb.f, !prof !28

bb.e:                                             ; preds = %bb.d
  %i.j = tail call noalias ptr @_zend_mm_alloc(ptr noundef nonnull %i.a, i64 noundef %1) #44
  br label %zend_mm_realloc_heap.exit

bb.f:                                             ; preds = %bb.d
  %i.k = tail call fastcc ptr @zend_mm_realloc_huge(ptr noundef nonnull %i.a, ptr noundef %0, i64 noundef %1, i64 noundef %2)
  br label %zend_mm_realloc_heap.exit

bb.g:                                             ; preds = %bb.c
  %i.l = and i64 %i.f, -2097152
  %i.m = inttoptr i64 %i.l to ptr                 ; 8 uses
  %i.n = lshr i64 %i.g, 12                        ; 5 uses
  %i.o = trunc nuw nsw i64 %i.n to i32            ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 592
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.n ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !27   ; 5 uses
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %1, i64 16) ; 9 uses
  %i.s = load ptr, ptr %i.m, align 2097152, !tbaa !36
  %.not.i = icmp eq ptr %i.s, %i.a
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !28

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

bb.i:                                             ; preds = %bb.g
  %.not152.i = icmp sgt i32 %i.r, -1
  br i1 %.not152.i, label %bb.ab, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = and i32 %i.r, 31                         ; 3 uses
  %i.u = zext nneg i32 %i.t to i64                ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr @bin_data_size, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !27
  %i.x = zext i32 %i.w to i64                     ; 7 uses
  %.not155.i = icmp ugt i64 %spec.store.select.i, %i.x
  br i1 %.not155.i, label %bb.t, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not156.i = icmp eq i32 %i.t, 0
  br i1 %.not156.i, label %zend_mm_realloc_heap.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr i8, ptr %i.v, i64 -4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !27
  %i.aa = zext i32 %i.z to i64
  %i.ab = icmp samesign ult i64 %spec.store.select.i, %i.aa
  br i1 %i.ab, label %bb.m, label %zend_mm_realloc_heap.exit

bb.m:                                             ; preds = %bb.l
  %i.ac = icmp ult i64 %1, 65
  br i1 %i.ac, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ad = add nuw nsw i64 %spec.store.select.i, 34359738367
  %i.ae = lshr i64 %i.ad, 3
  %i.af = trunc i64 %i.ae to i32
  br label %zend_mm_small_size_to_bin.exit19

bb.o:                                             ; preds = %bb.m
  %i.ag = trunc nuw i64 %spec.store.select.i to i32
  %i.ah = add i32 %i.ag, -1                       ; 2 uses
  %i.ai = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 range(i32 64, -2) %i.ah, i1 true) ; 2 uses
  %i.aj = sub nuw nsw i32 29, %i.ai
  %i.ak = lshr i32 %i.ah, %i.aj
  %i.al = shl nuw nsw i32 %i.ai, 2
  %reass.sub45 = sub nsw i32 %i.ak, %i.al
  %i.am = add i32 %reass.sub45, 104
  br label %zend_mm_small_size_to_bin.exit19

zend_mm_small_size_to_bin.exit19:                 ; preds = %bb.n, %bb.o
  %.0.i18 = phi i32 [ %i.af, %bb.n ], [ %i.am, %bb.o ] ; 3 uses
  %i.an = zext nneg i32 %.0.i18 to i64            ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr @bin_data_size, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !27
  %i.aq = icmp ne i32 %.0.i18, 0
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.as = load i64, ptr %i.ar, align 16, !tbaa !75
  %i.at = zext i32 %i.ap to i64                   ; 2 uses
  %i.au = add i64 %i.as, %i.at                    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !94
  %..i8 = tail call i64 @llvm.umax.i64(i64 %i.aw, i64 %i.au)
  store i64 %i.au, ptr %i.ar, align 16, !tbaa !75
  store i64 %..i8, ptr %i.av, align 8, !tbaa !94
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.an ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !23 ; 4 uses
  %.not.i9 = icmp eq ptr %i.az, null
  br i1 %.not.i9, label %bb.s, label %bb.p, !prof !40

bb.p:                                             ; preds = %zend_mm_small_size_to_bin.exit19
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !25 ; 3 uses
  %.not.i.i10 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i10, label %zend_mm_get_next_free_slot.exit.i12, label %bb.q, !prof !40

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.at
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !23
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bf = load i64, ptr %i.be, align 16, !tbaa !12
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = xor i64 %i.bf, %i.bg
  %i.bi = tail call i64 @llvm.bswap.i64(i64 %i.bh)
  %i.bj = inttoptr i64 %i.bi to ptr
  %.not7.i.i11 = icmp eq ptr %i.ba, %i.bj
  br i1 %.not7.i.i11, label %zend_mm_get_next_free_slot.exit.i12, label %bb.r, !prof !28

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

zend_mm_get_next_free_slot.exit.i12:              ; preds = %bb.q, %bb.p
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !23
  br label %zend_mm_alloc_small.exit14

bb.s:                                             ; preds = %zend_mm_small_size_to_bin.exit19
  %i.bk = tail call fastcc ptr @zend_mm_alloc_small_slow(ptr noundef nonnull %i.a, i32 noundef %.0.i18)
  br label %zend_mm_alloc_small.exit14

zend_mm_alloc_small.exit14:                       ; preds = %zend_mm_get_next_free_slot.exit.i12, %bb.s
  %.0.i13 = phi ptr [ %i.az, %zend_mm_get_next_free_slot.exit.i12 ], [ %i.bk, %bb.s ] ; 2 uses
  %i.bl = tail call i64 @llvm.umin.i64(i64 %spec.store.select.i, i64 %2)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i13, ptr align 1 %0, i64 %i.bl, i1 false)
  %i.bm = load i64, ptr %i.ar, align 16, !tbaa !75
  %i.bn = sub i64 %i.bm, %i.x
  store i64 %i.bn, ptr %i.ar, align 16, !tbaa !75
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.u ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !23 ; 2 uses
  store ptr %i.bp, ptr %0, align 8, !tbaa !25
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = tail call i64 @llvm.bswap.i64(i64 %i.bq)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bt = load i64, ptr %i.bs, align 16, !tbaa !12
  %i.bu = xor i64 %i.br, %i.bt
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -8
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !23
  store ptr %0, ptr %i.bo, align 8, !tbaa !23
  br label %zend_mm_realloc_heap.exit

bb.t:                                             ; preds = %bb.j
  %i.by = icmp ult i64 %1, 3073
  br i1 %i.by, label %bb.u, label %zend_mm_bitset_reset_range.exit

bb.u:                                             ; preds = %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !94 ; 2 uses
  %i.cb = icmp samesign ult i64 %1, 65
  br i1 %i.cb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cc = add nuw nsw i64 %spec.store.select.i, 34359738367
  %i.cd = lshr i64 %i.cc, 3
  %i.ce = trunc i64 %i.cd to i32
  br label %zend_mm_small_size_to_bin.exit

bb.w:                                             ; preds = %bb.u
  %i.cf = trunc nuw i64 %spec.store.select.i to i32
  %i.cg = add nsw i32 %i.cf, -1                   ; 2 uses
  %i.ch = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 range(i32 64, -2) %i.cg, i1 true) ; 2 uses
  %i.ci = sub nuw nsw i32 29, %i.ch
  %i.cj = lshr i32 %i.cg, %i.ci
  %i.ck = shl nuw nsw i32 %i.ch, 2
  %reass.sub = sub nsw i32 %i.cj, %i.ck
  %i.cl = add i32 %reass.sub, 104
  br label %zend_mm_small_size_to_bin.exit

zend_mm_small_size_to_bin.exit:                   ; preds = %bb.v, %bb.w
  %.0.i17 = phi i32 [ %i.ce, %bb.v ], [ %i.cl, %bb.w ] ; 3 uses
  %i.cm = zext nneg i32 %.0.i17 to i64            ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr @bin_data_size, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !27
  %i.cp = icmp ne i32 %.0.i17, 0
  tail call void @llvm.assume(i1 %i.cp)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.cr = load i64, ptr %i.cq, align 16, !tbaa !75
  %i.cs = zext i32 %i.co to i64                   ; 2 uses
  %i.ct = add i64 %i.cr, %i.cs                    ; 2 uses
  %..i5 = tail call i64 @llvm.umax.i64(i64 %i.ca, i64 %i.ct)
  store i64 %i.ct, ptr %i.cq, align 16, !tbaa !75
  store i64 %..i5, ptr %i.bz, align 8, !tbaa !94
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cm ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !23 ; 4 uses
  %.not.i6 = icmp eq ptr %i.cw, null
  br i1 %.not.i6, label %bb.aa, label %bb.x, !prof !40

bb.x:                                             ; preds = %zend_mm_small_size_to_bin.exit
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !25 ; 3 uses
  %.not.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i, label %zend_mm_get_next_free_slot.exit.i, label %bb.y, !prof !40

bb.y:                                             ; preds = %bb.x
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cs
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !23
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.dc = load i64, ptr %i.db, align 16, !tbaa !12
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = xor i64 %i.dc, %i.dd
  %i.df = tail call i64 @llvm.bswap.i64(i64 %i.de)
  %i.dg = inttoptr i64 %i.df to ptr
  %.not7.i.i = icmp eq ptr %i.cx, %i.dg
  br i1 %.not7.i.i, label %zend_mm_get_next_free_slot.exit.i, label %bb.z, !prof !28

bb.z:                                             ; preds = %bb.y
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

zend_mm_get_next_free_slot.exit.i:                ; preds = %bb.y, %bb.x
  store ptr %i.cx, ptr %i.cv, align 8, !tbaa !23
  br label %zend_mm_alloc_small.exit

bb.aa:                                            ; preds = %zend_mm_small_size_to_bin.exit
  %i.dh = tail call fastcc ptr @zend_mm_alloc_small_slow(ptr noundef nonnull %i.a, i32 noundef %.0.i17)
  br label %zend_mm_alloc_small.exit

zend_mm_alloc_small.exit:                         ; preds = %zend_mm_get_next_free_slot.exit.i, %bb.aa
  %.0.i7 = phi ptr [ %i.cw, %zend_mm_get_next_free_slot.exit.i ], [ %i.dh, %bb.aa ] ; 2 uses
  %i.di = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.x)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i7, ptr align 1 %0, i64 %i.di, i1 false)
  %i.dj = load i64, ptr %i.cq, align 16, !tbaa !75
  %i.dk = sub i64 %i.dj, %i.x                     ; 2 uses
  store i64 %i.dk, ptr %i.cq, align 16, !tbaa !75
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.u ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !23 ; 2 uses
  %i.dn = icmp ne i32 %i.t, 0
  tail call void @llvm.assume(i1 %i.dn)
  store ptr %i.dm, ptr %0, align 8, !tbaa !25
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = tail call i64 @llvm.bswap.i64(i64 %i.do)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.dr = load i64, ptr %i.dq, align 16, !tbaa !12
  %i.ds = xor i64 %i.dr, %i.dp
  %i.dt = inttoptr i64 %i.ds to ptr
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -8
  store ptr %i.dt, ptr %i.dv, align 8, !tbaa !23
  store ptr %0, ptr %i.dl, align 8, !tbaa !23
  %i.dw = tail call i64 @llvm.umax.i64(i64 %i.ca, i64 %i.dk)
  store i64 %i.dw, ptr %i.bz, align 8, !tbaa !94
  br label %zend_mm_realloc_heap.exit

bb.ab:                                            ; preds = %bb.i
  %i.dx = and i64 %i.f, 4095
  %.not153.i = icmp eq i64 %i.dx, 0
  br i1 %.not153.i, label %bb.ad, label %bb.ac, !prof !28

bb.ac:                                            ; preds = %bb.ab
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.dy = shl i32 %i.r, 12
  %i.dz = and i32 %i.dy, 4190208                  ; 2 uses
  %i.ea = zext nneg i32 %i.dz to i64              ; 10 uses
  %i.eb = add i64 %1, -3073
  %or.cond.i = icmp ult i64 %i.eb, 2089984
  br i1 %or.cond.i, label %bb.ae, label %zend_mm_bitset_reset_range.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ec = add nuw nsw i64 %spec.store.select.i, 4095 ; 2 uses
  %i.ed = and i64 %i.ec, 4190208                  ; 4 uses
  %i.ee = icmp eq i64 %i.ed, %i.ea
  br i1 %i.ee, label %zend_mm_realloc_heap.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ef = icmp samesign ult i64 %i.ed, %i.ea
  %i.eg = lshr i64 %i.ec, 12                      ; 2 uses
  %i.eh = trunc nuw i64 %i.eg to i32              ; 6 uses
  br i1 %i.ef, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.ei = sub nuw nsw i64 %i.ea, %i.ed            ; 3 uses
  %i.ej = lshr exact i64 %i.ei, 12
  %i.ek = trunc nuw nsw i64 %i.ej to i32          ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.em = load i64, ptr %i.el, align 16, !tbaa !75
  %i.en = sub i64 %i.em, %i.ei
  store i64 %i.en, ptr %i.el, align 16, !tbaa !75
  %i.eo = or disjoint i32 %i.eh, 1073741824
  store i32 %i.eo, ptr %i.q, align 4, !tbaa !27
  %i.ep = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !46
  %i.er = add i32 %i.eq, %i.ek
  store i32 %i.er, ptr %i.ep, align 8, !tbaa !46
  %i.es = getelementptr inbounds nuw i8, ptr %i.m, i64 528 ; 4 uses
  %i.et = add nuw nsw i32 %i.eh, %i.o             ; 5 uses
  %i.eu = icmp eq i64 %i.ei, 4096
  br i1 %i.eu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ev = zext nneg i32 %i.et to i64              ; 2 uses
  %i.ew = and i64 %i.ev, 63
  %i.ex = shl nuw i64 1, %i.ew
  %i.ey = xor i64 %i.ex, -1
  %i.ez = lshr i64 %i.ev, 6
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.ez ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !45
  %i.fc = and i64 %i.fb, %i.ey
  store i64 %i.fc, ptr %i.fa, align 8, !tbaa !45
  br label %zend_mm_realloc_heap.exit

bb.ai:                                            ; preds = %bb.ag
  %i.fd = lshr i32 %i.et, 6                       ; 5 uses
  %i.fe = add nsw i32 %i.et, -1
  %i.ff = add i32 %i.fe, %i.ek                    ; 3 uses
  %i.fg = ashr i32 %i.ff, 6                       ; 4 uses
  %i.fh = and i32 %i.et, 63                       ; 2 uses
  %.not.i15 = icmp eq i32 %i.fd, %i.fg
  br i1 %.not.i15, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fi = zext nneg i32 %i.fh to i64
  %notmask.i = shl nsw i64 -1, %i.fi
  %i.fj = xor i64 %notmask.i, -1
  %i.fk = zext nneg i32 %i.fd to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.fk ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !45
  %i.fn = and i64 %i.fm, %i.fj
  store i64 %i.fn, ptr %i.fl, align 8, !tbaa !45
  %.0.i1637 = add nuw nsw i32 %i.fd, 1
  %.not33.i38 = icmp eq i32 %.0.i1637, %i.fg
  br i1 %.not33.i38, label %._crit_edge42, label %.lr.ph41.preheader

.lr.ph41.preheader:                               ; preds = %bb.aj
  %i.fo = lshr i32 %i.et, 3
  %i.fp = and i32 %i.fo, 536870904
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = getelementptr i8, ptr %i.m, i64 %i.fq
  %scevgep51 = getelementptr i8, ptr %i.fr, i64 536
  %i.fs = add nsw i32 %i.fg, -2
  %i.ft = sub nsw i32 %i.fs, %i.fd
  %i.fu = zext i32 %i.ft to i64
  %i.fv = shl nuw nsw i64 %i.fu, 3
  %i.fw = add nuw nsw i64 %i.fv, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep51, i8 0, i64 %i.fw, i1 false), !tbaa !45
  br label %._crit_edge42

._crit_edge42:                                    ; preds = %bb.aj, %.lr.ph41.preheader
  %.pre-phi = zext i32 %i.fg to i64
  %i.fx = and i32 %i.ff, 63
  %i.fy = xor i32 %i.fx, 63
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = lshr i64 -1, %i.fz
  %i.gb = xor i64 %i.ga, -1
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.pre-phi ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !45
  %i.ge = and i64 %i.gd, %i.gb
  store i64 %i.ge, ptr %i.gc, align 8, !tbaa !45
  br label %zend_mm_realloc_heap.exit

bb.ak:                                            ; preds = %bb.ai
  %i.gf = and i32 %i.ff, 63
  %i.gg = zext nneg i32 %i.fh to i64
  %i.gh = shl nsw i64 -1, %i.gg
  %i.gi = xor i32 %i.gf, 63
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = lshr i64 -1, %i.gj
  %i.gl = and i64 %i.gk, %i.gh
  %i.gm = xor i64 %i.gl, -1
  %i.gn = zext nneg i32 %i.fd to i64
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.gn ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !45
  %i.gq = and i64 %i.gp, %i.gm
  store i64 %i.gq, ptr %i.go, align 8, !tbaa !45
  br label %zend_mm_realloc_heap.exit

bb.al:                                            ; preds = %bb.af
  %i.gr = add nuw nsw i64 %i.eg, %i.n
  %i.gs = icmp samesign ult i64 %i.gr, 513
  br i1 %i.gs, label %bb.am, label %zend_mm_bitset_reset_range.exit

bb.am:                                            ; preds = %bb.al
  %i.gt = lshr exact i32 %i.dz, 12                ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.m, i64 528 ; 7 uses
  %i.gv = add nuw nsw i32 %i.gt, %i.o             ; 6 uses
  %i.gw = sub nsw i32 %i.eh, %i.gt                ; 2 uses
  %i.gx = icmp eq i32 %i.gw, 1                    ; 2 uses
  br i1 %i.gx, label %.split, label %bb.an

.split:                                           ; preds = %bb.am
  %i.gy = zext nneg i32 %i.gv to i64              ; 2 uses
  %i.gz = lshr i64 %i.gy, 6
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.gz
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !45
  %i.hc = and i64 %i.gy, 63
  %i.hd = lshr i64 %i.hb, %i.hc
  %i.he = trunc i64 %i.hd to i1
  br i1 %i.he, label %zend_mm_bitset_reset_range.exit, label %.critedge.i

bb.an:                                            ; preds = %bb.am
  %i.hf = lshr i32 %i.gv, 6                       ; 3 uses
  %i.hg = add nsw i32 %i.o, -1
  %i.hh = add nsw i32 %i.hg, %i.eh                ; 3 uses
  %i.hi = ashr i32 %i.hh, 6                       ; 2 uses
  %i.hj = and i32 %i.gv, 63                       ; 2 uses
  %.not.i20 = icmp eq i32 %i.hf, %i.hi
  br i1 %.not.i20, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = zext nneg i32 %i.hf to i64
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.hl
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !45
  %i.ho = lshr i64 %i.hn, %i.hk
  %.not36.i = icmp eq i64 %i.ho, 0
  br i1 %.not36.i, label %.preheader.preheader, label %zend_mm_bitset_reset_range.exit

.preheader.preheader:                             ; preds = %bb.ao
  %3 = and i32 %i.r, 1023
  %4 = zext nneg i32 %3 to i64
  %5 = add nuw nsw i64 %i.n, %4
  %6 = lshr i64 %5, 6
  %i.hp = zext i32 %i.hi to i64                   ; 3 uses
  %indvars.iv.next89 = add nuw nsw i64 %6, 1      ; 2 uses
  %.not37.i90 = icmp eq i64 %indvars.iv.next89, %i.hp
  br i1 %.not37.i90, label %.preheader._crit_edge, label %bb.ap

.preheader:                                       ; preds = %bb.ap
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next91, 1 ; 2 uses
  %.not37.i = icmp eq i64 %indvars.iv.next, %i.hp
  br i1 %.not37.i, label %.preheader._crit_edge, label %bb.ap, !llvm.loop !95

bb.ap:                                            ; preds = %.preheader.preheader, %.preheader
  %indvars.iv.next91 = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.next89, %.preheader.preheader ] ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.next91
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !45
  %.not38.i = icmp eq i64 %i.hr, 0
  br i1 %.not38.i, label %.preheader, label %zend_mm_bitset_reset_range.exit, !llvm.loop !95

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  %i.hs = and i32 %i.hh, 63
  %i.ht = xor i32 %i.hs, 63
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = lshr i64 -1, %i.hu
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.hp
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !45
  %i.hy = and i64 %i.hx, %i.hv
  br label %zend_mm_bitset_is_free_range.exit

bb.aq:                                            ; preds = %bb.an
  %i.hz = and i32 %i.hh, 63
  %i.ia = zext nneg i32 %i.hj to i64
  %i.ib = shl nsw i64 -1, %i.ia
  %i.ic = xor i32 %i.hz, 63
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = lshr i64 -1, %i.id
  %i.if = and i64 %i.ib, %i.ie
  %i.ig = zext nneg i32 %i.hf to i64
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.ig
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !45
  %i.ij = and i64 %i.if, %i.ii
  br label %zend_mm_bitset_is_free_range.exit

zend_mm_bitset_is_free_range.exit:                ; preds = %.preheader._crit_edge, %bb.aq
  %.sink = phi i64 [ %i.hy, %.preheader._crit_edge ], [ %i.ij, %bb.aq ]
  %.not88 = icmp eq i64 %.sink, 0
  br i1 %.not88, label %.critedge.i, label %zend_mm_bitset_reset_range.exit

.critedge.i:                                      ; preds = %.split, %zend_mm_bitset_is_free_range.exit
  %i.ik = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.il = load i64, ptr %i.ik, align 16, !tbaa !75
  %i.im = sub nsw i64 %i.ed, %i.ea
  %i.in = add i64 %i.il, %i.im                    ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !94
  %..i = tail call i64 @llvm.umax.i64(i64 %i.ip, i64 %i.in)
  store i64 %i.in, ptr %i.ik, align 16, !tbaa !75
  store i64 %..i, ptr %i.io, align 8, !tbaa !94
  %i.iq = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !46
  %i.is = sub i32 %i.ir, %i.gw
  store i32 %i.is, ptr %i.iq, align 8, !tbaa !46
  br i1 %i.gx, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.critedge.i
  %i.it = zext nneg i32 %i.gv to i64              ; 2 uses
  %i.iu = and i64 %i.it, 63
  %i.iv = shl nuw i64 1, %i.iu
  %i.iw = lshr i64 %i.it, 6
  br label %zend_mm_bitset_set_range.exit

bb.as:                                            ; preds = %.critedge.i
  %i.ix = lshr i32 %i.gv, 6                       ; 5 uses
  %i.iy = add nsw i32 %i.o, -1
  %i.iz = add nsw i32 %i.iy, %i.eh                ; 3 uses
  %i.ja = ashr i32 %i.iz, 6                       ; 4 uses
  %i.jb = and i32 %i.gv, 63                       ; 2 uses
  %.not.i23 = icmp eq i32 %i.ix, %i.ja
  br i1 %.not.i23, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jc = zext nneg i32 %i.jb to i64
  %i.jd = shl nsw i64 -1, %i.jc
  %i.je = zext nneg i32 %i.ix to i64
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.je ; 2 uses
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !45
  %i.jh = or i64 %i.jg, %i.jd
  store i64 %i.jh, ptr %i.jf, align 8, !tbaa !45
  %.0.i2534 = add nuw nsw i32 %i.ix, 1
  %.not33.i2635 = icmp eq i32 %.0.i2534, %i.ja
  br i1 %.not33.i2635, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.at
  %7 = and i32 %i.r, 1023
  %8 = zext nneg i32 %7 to i64
  %9 = add nuw nsw i64 %i.n, %8
  %10 = lshr i64 %9, 3
  %11 = and i64 %10, 248
  %i.ji = getelementptr i8, ptr %i.m, i64 %11
  %scevgep = getelementptr i8, ptr %i.ji, i64 536
  %i.jj = add nsw i32 %i.ja, -2
  %i.jk = sub nsw i32 %i.jj, %i.ix
  %i.jl = zext i32 %i.jk to i64
  %i.jm = shl nuw nsw i64 %i.jl, 3
  %i.jn = add nuw nsw i64 %i.jm, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 -1, i64 %i.jn, i1 false), !tbaa !45
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.at, %.lr.ph.preheader
  %.pre-phi55 = zext i32 %i.ja to i64
  %i.jo = and i32 %i.iz, 63
  %i.jp = xor i32 %i.jo, 63
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = lshr i64 -1, %i.jq
  br label %zend_mm_bitset_set_range.exit

bb.au:                                            ; preds = %bb.as
  %i.js = and i32 %i.iz, 63
  %i.jt = zext nneg i32 %i.jb to i64
  %i.ju = shl nsw i64 -1, %i.jt
  %i.jv = xor i32 %i.js, 63
  %i.jw = zext nneg i32 %i.jv to i64
  %i.jx = lshr i64 -1, %i.jw
  %i.jy = and i64 %i.ju, %i.jx
  %i.jz = zext nneg i32 %i.ix to i64
  br label %zend_mm_bitset_set_range.exit

zend_mm_bitset_set_range.exit:                    ; preds = %bb.ar, %._crit_edge, %bb.au
  %.sink87 = phi i64 [ %i.iw, %bb.ar ], [ %.pre-phi55, %._crit_edge ], [ %i.jz, %bb.au ]
  %.sink85 = phi i64 [ %i.iv, %bb.ar ], [ %i.jr, %._crit_edge ], [ %i.jy, %bb.au ]
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %.sink87 ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !45
  %i.kc = or i64 %i.kb, %.sink85
  store i64 %i.kc, ptr %i.ka, align 8, !tbaa !45
  %i.kd = or disjoint i32 %i.eh, 1073741824
  store i32 %i.kd, ptr %i.q, align 4, !tbaa !27
  br label %zend_mm_realloc_heap.exit

zend_mm_bitset_reset_range.exit:                  ; preds = %bb.ap, %bb.ao, %.split, %bb.ad, %bb.al, %zend_mm_bitset_is_free_range.exit, %bb.t
  %.1137.i = phi i64 [ %i.ea, %bb.ad ], [ %i.ea, %zend_mm_bitset_is_free_range.exit ], [ %i.ea, %bb.al ], [ %i.x, %bb.t ], [ %i.ea, %.split ], [ %i.ea, %bb.ao ], [ %i.ea, %bb.ap ]
  %i.ke = tail call i64 @llvm.umin.i64(i64 %.1137.i, i64 %2)
  %i.kf = tail call fastcc ptr @zend_mm_realloc_slow(ptr noundef nonnull %i.a, ptr noundef %0, i64 noundef %spec.store.select.i, i64 noundef %i.ke)
  br label %zend_mm_realloc_heap.exit

zend_mm_realloc_heap.exit:                        ; preds = %bb.ak, %._crit_edge42, %bb.ah, %zend_mm_alloc_small.exit14, %bb.l, %bb.k, %zend_mm_alloc_small.exit, %zend_mm_bitset_set_range.exit, %bb.ae, %zend_mm_bitset_reset_range.exit, %bb.f, %bb.e, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.j, %bb.e ], [ %i.k, %bb.f ], [ %i.kf, %zend_mm_bitset_reset_range.exit ], [ %0, %bb.ak ], [ %0, %._crit_edge42 ], [ %0, %bb.ah ], [ %0, %bb.l ], [ %.0.i7, %zend_mm_alloc_small.exit ], [ %.0.i13, %zend_mm_alloc_small.exit14 ], [ %0, %bb.k ], [ %0, %zend_mm_bitset_set_range.exit ], [ %0, %bb.ae ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @_zend_mem_block_size(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @alloc_globals.0, align 8, !tbaa !90 ; 5 uses
  %i.b = load i32, ptr %i.a, align 16, !tbaa !34
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %.thread.i, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !64  ; 2 uses
  %i.e = icmp eq ptr %i.d, @tracked_malloc
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %0 to i64
  %i.g = lshr i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.j = tail call ptr @zend_hash_index_find(ptr noundef %i.i, i64 noundef %i.g) #38 ; 2 uses
  %.not15.not.i = icmp eq ptr %i.j, null
  br i1 %.not15.not.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr %i.j, align 8, !tbaa !65
  br label %_zend_mm_block_size.exit

bb.e:                                             ; preds = %bb.b
  %.not14.i = icmp eq ptr %i.d, @poison_malloc
  br i1 %.not14.i, label %.thread.i, label %_zend_mm_block_size.exit

.thread.i:                                        ; preds = %bb.e, %bb.c, %bb.a
  %i.l = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.m = and i64 %i.l, 2097151                    ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.g, !prof !40

bb.f:                                             ; preds = %.thread.i
  %i.o = tail call fastcc i64 @zend_mm_get_huge_block_size(ptr noundef nonnull readonly %i.a, ptr noundef %0)
  br label %_zend_mm_block_size.exit

bb.g:                                             ; preds = %.thread.i
  %i.p = and i64 %i.l, -2097152
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = lshr i64 %i.m, 12
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 592
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.r
  %i.u = load i32, ptr %i.t, align 4, !tbaa !27   ; 3 uses
  %i.v = load ptr, ptr %i.q, align 2097152, !tbaa !36
  %.not.i.i = icmp eq ptr %i.v, %i.a
  br i1 %.not.i.i, label %bb.i, label %bb.h, !prof !28

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

bb.i:                                             ; preds = %bb.g
  %.not14.i.i = icmp sgt i32 %i.u, -1
  br i1 %.not14.i.i, label %bb.k, label %bb.j, !prof !40

bb.j:                                             ; preds = %bb.i
  %i.w = and i32 %i.u, 31
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @bin_data_size, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !27
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.aa = shl i32 %i.u, 12
  %i.ab = and i32 %i.aa, 4190208
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.in.i.i = phi i32 [ %i.z, %bb.j ], [ %i.ab, %bb.k ]
  %.0.i.i = zext i32 %.0.in.i.i to i64
  br label %_zend_mm_block_size.exit

_zend_mm_block_size.exit:                         ; preds = %bb.d, %bb.e, %bb.f, %bb.l
  %.1.i = phi i64 [ 0, %bb.e ], [ %i.k, %bb.d ], [ %i.o, %bb.f ], [ %.0.i.i, %bb.l ]
  ret i64 %.1.i
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @_safe_emalloc(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
zend_safe_address.exit:
  %i.a = tail call { i64, i64 } asm "mulq $3\0A\09add $4,$0\0A\09adc $$0,$1", "=&{ax},=&{dx},%0,rm,rm,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %0, i64 %1, i64 %2) #45, !srcloc !107 ; 2 uses
  %.0.i = extractvalue { i64, i64 } %i.a, 1
  %.not.i.not = icmp eq i64 %.0.i, 0
  br i1 %.not.i.not, label %zend_safe_address_guarded.exit, label %bb.a, !prof !28

bb.a:                                             ; preds = %zend_safe_address.exit
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 1, ptr noundef nonnull @.str.11, i64 noundef %0, i64 noundef %1, i64 noundef %2) #41
  unreachable

zend_safe_address_guarded.exit:                   ; preds = %zend_safe_address.exit
  %.022.i = extractvalue { i64, i64 } %i.a, 0
  %i.b = tail call noalias ptr @_emalloc(i64 noundef %.022.i) #46
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @_safe_malloc(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
zend_safe_address.exit:
  %i.a = tail call { i64, i64 } asm "mulq $3\0A\09add $4,$0\0A\09adc $$0,$1", "=&{ax},=&{dx},%0,rm,rm,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %0, i64 %1, i64 %2) #45, !srcloc !107 ; 2 uses
  %.0.i = extractvalue { i64, i64 } %i.a, 1
  %.not.i.not = icmp eq i64 %.0.i, 0
  br i1 %.not.i.not, label %zend_safe_address_guarded.exit, label %bb.a, !prof !28

bb.a:                                             ; preds = %zend_safe_address.exit
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 1, ptr noundef nonnull @.str.11, i64 noundef %0, i64 noundef %1, i64 noundef %2) #41
  unreachable

zend_safe_address_guarded.exit:                   ; preds = %zend_safe_address.exit
  %.022.i = extractvalue { i64, i64 } %i.a, 0     ; 2 uses
  %i.b = tail call noalias ptr @malloc(i64 noundef %.022.i) #43 ; 2 uses
  %.not.i3 = icmp ne ptr %i.b, null
  %.not3.i = icmp eq i64 %.022.i, 0
  %spec.select.i = or i1 %.not3.i, %.not.i3
  br i1 %spec.select.i, label %__zend_malloc.exit, label %bb.b, !prof !28

bb.b:                                             ; preds = %zend_safe_address_guarded.exit
  tail call fastcc void @zend_out_of_memory() #39
  unreachable

__zend_malloc.exit:                               ; preds = %zend_safe_address_guarded.exit
  ret ptr %i.b
}

; Function Attrs: nofree nounwind allocsize(0) uwtable
define dso_local noalias noundef ptr @__zend_malloc(i64 noundef %0) #11 {
bb.a:
  %i.a = tail call noalias ptr @malloc(i64 noundef %0) #43 ; 2 uses
  %.not = icmp ne ptr %i.a, null
  %.not3 = icmp eq i64 %0, 0
  %spec.select = or i1 %.not3, %.not
  br i1 %spec.select, label %bb.b, label %bb.c, !prof !28

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @zend_out_of_memory() #39
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_safe_erealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
zend_safe_address.exit:
  %i.a = tail call { i64, i64 } asm "mulq $3\0A\09add $4,$0\0A\09adc $$0,$1", "=&{ax},=&{dx},%0,rm,rm,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %1, i64 %2, i64 %3) #45, !srcloc !107 ; 2 uses
  %.0.i = extractvalue { i64, i64 } %i.a, 1
end_hunk_1
