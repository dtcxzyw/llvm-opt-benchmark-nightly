Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/static?download=true
inline.NumInlined: 1572
inline.NumDeleted: 309
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 40
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_Z22_mi_heap_destroy_pagesP9mi_heap_s:bb.a
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 8) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %i.bk, ptr noundef nonnull readonly align 64 dereferenceable(1800) getelementptr inbounds nuw (i8, ptr @_mi_heap_empty, i64 1280), i64 1800, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store atomic ptr null, ptr %i.bl seq_cst, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.bm, align 8, !tbaa !190
  ret void
}

; Function Attrs: mustprogress uwtable
define void @mi_heap_destroy(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %0, @_mi_heap_empty
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load i8, ptr %i.c, align 8, !tbaa !188, !range !113, !noundef !114
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z19_mi_warning_messagePKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull %0)
  tail call void @mi_heap_delete(ptr noundef nonnull %0)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_Z22_mi_heap_destroy_pagesP9mi_heap_s(ptr noundef nonnull %0)
  tail call fastcc void @_ZL12mi_heap_freeP9mi_heap_s(ptr noundef %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @mi_heap_delete(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %0, @_mi_heap_empty
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !177
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !187  ; 6 uses
  %.not = icmp eq ptr %i.e, %0
  br i1 %.not, label %_ZL23mi_heaps_are_compatibleP9mi_heap_sS0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 241
  %i.g = load i8, ptr %i.f, align 1, !tbaa !198
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 241
  %i.i = load i8, ptr %i.h, align 1, !tbaa !198
  %i.j = icmp eq i8 %i.g, %i.i
  br i1 %i.j, label %_ZL23mi_heaps_are_compatibleP9mi_heap_sS0_.exit, label %_ZL23mi_heaps_are_compatibleP9mi_heap_sS0_.exit.thread

_ZL23mi_heaps_are_compatibleP9mi_heap_sS0_.exit:  ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !126
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !126
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %_ZL23mi_heaps_are_compatibleP9mi_heap_sS0_.exit.thread

bb.d:                                             ; preds = %_ZL23mi_heaps_are_compatibleP9mi_heap_sS0_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !190
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZL14mi_heap_absorbP9mi_heap_sS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.t = load atomic ptr, ptr %i.s monotonic, align 8 ; 2 uses
  %.old1.not.i.i = icmp eq ptr %i.t, null
  br i1 %.old1.not.i.i, label %_Z29_mi_heap_delayed_free_partialP9mi_heap_s.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.e, %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit.i.i
  %.023.i.i = phi ptr [ %i.w, %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit.i.i ], [ %i.t, %bb.e ] ; 2 uses
  %i.u = cmpxchg weak ptr %i.s, ptr %.023.i.i, ptr null acq_rel acquire, align 8 ; 2 uses
  %i.v = extractvalue { ptr, i1 } %i.u, 1
  br i1 %i.v, label %.lr.ph.i.i, label %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit.i.i

_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit.i.i: ; preds = %.preheader.i.i
  %i.w = extractvalue { ptr, i1 } %i.u, 0         ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_Z29_mi_heap_delayed_free_partialP9mi_heap_s.exit.i, label %.preheader.i.i, !llvm.loop !22

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.loopexit.i.i
  %.231.i.i = phi ptr [ %i.y, %.loopexit.i.i ], [ %.023.i.i, %.preheader.i.i ] ; 6 uses
  %.val.i.i = load i64, ptr %.231.i.i, align 8, !tbaa !65 ; 2 uses
  %i.y = inttoptr i64 %.val.i.i to ptr
  %i.z = tail call noundef zeroext i1 @_Z22_mi_free_delayed_blockP10mi_block_s(ptr noundef nonnull %.231.i.i)
  br i1 %i.z, label %.loopexit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.aa = load atomic ptr, ptr %i.s monotonic, align 8 ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  store i64 %i.ab, ptr %.231.i.i, align 8, !tbaa !65
  %i.ac = cmpxchg weak ptr %i.s, ptr %i.aa, ptr %.231.i.i release monotonic, align 8 ; 2 uses
  %i.ad = extractvalue { ptr, i1 } %i.ac, 1
  br i1 %i.ad, label %.loopexit.i.i, label %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit13.i.i

_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit13.i.i: ; preds = %bb.f, %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit13.i.i
  %i.ae = phi { ptr, i1 } [ %i.ah, %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit13.i.i ], [ %i.ac, %bb.f ]
  %i.af = extractvalue { ptr, i1 } %i.ae, 0       ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  store i64 %i.ag, ptr %.231.i.i, align 8, !tbaa !65
  %i.ah = cmpxchg weak ptr %i.s, ptr %i.af, ptr %.231.i.i release monotonic, align 8 ; 2 uses
  %i.ai = extractvalue { ptr, i1 } %i.ah, 1
  br i1 %i.ai, label %.loopexit.i.i, label %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit13.i.i, !llvm.loop !23

.loopexit.i.i:                                    ; preds = %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit13.i.i, %bb.f, %.lr.ph.i.i
  %.not.i.i = icmp eq i64 %.val.i.i, 0
  br i1 %.not.i.i, label %_Z29_mi_heap_delayed_free_partialP9mi_heap_s.exit.i, label %.lr.ph.i.i, !llvm.loop !24

_Z29_mi_heap_delayed_free_partialP9mi_heap_s.exit.i: ; preds = %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit.i.i, %.loopexit.i.i, %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 1280
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 2 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  tail call void @_Z25_mi_heap_delayed_free_allP9mi_heap_s(ptr noundef nonnull %0)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.am, i8 0, i64 1032, i1 false)
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 8) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %i.ak, ptr noundef nonnull readonly align 64 dereferenceable(1800) getelementptr inbounds nuw (i8, ptr @_mi_heap_empty, i64 1280), i64 1800, i1 false)
  store atomic ptr null, ptr %i.s seq_cst, align 8
  store i64 0, ptr %i.p, align 8, !tbaa !190
  br label %_ZL14mi_heap_absorbP9mi_heap_sS0_.exit

bb.h:                                             ; preds = %bb.h, %_Z29_mi_heap_delayed_free_partialP9mi_heap_s.exit.i
  %.020.i = phi i64 [ 0, %_Z29_mi_heap_delayed_free_partialP9mi_heap_s.exit.i ], [ %i.au, %bb.h ] ; 3 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %.020.i
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %.020.i
  %i.ap = tail call noundef i64 @_Z21_mi_page_queue_appendP9mi_heap_sP15mi_page_queue_sS2_(ptr noundef %i.e, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ao) ; 2 uses
  %i.aq = load i64, ptr %i.al, align 8, !tbaa !190
  %i.ar = add i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !190
  %i.as = load i64, ptr %i.p, align 8, !tbaa !190
  %i.at = sub i64 %i.as, %i.ap
  store i64 %i.at, ptr %i.p, align 8, !tbaa !190
  %i.au = add nuw nsw i64 %.020.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.au, 75
  br i1 %exitcond.not.i, label %bb.g, label %bb.h, !llvm.loop !305

_ZL23mi_heaps_are_compatibleP9mi_heap_sS0_.exit.thread: ; preds = %bb.c, %_ZL23mi_heaps_are_compatibleP9mi_heap_sS0_.exit, %bb.b
  tail call fastcc void @_ZL18mi_heap_collect_exP9mi_heap_s12mi_collect_e(ptr noundef nonnull %0, i32 noundef 2), !inline_history !306
  br label %_ZL14mi_heap_absorbP9mi_heap_sS0_.exit

_ZL14mi_heap_absorbP9mi_heap_sS0_.exit:           ; preds = %bb.g, %bb.d, %_ZL23mi_heaps_are_compatibleP9mi_heap_sS0_.exit.thread
  tail call fastcc void @_ZL12mi_heap_freeP9mi_heap_s(ptr noundef %0)
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZL14mi_heap_absorbP9mi_heap_sS0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL12mi_heap_freeP9mi_heap_s(ptr noundef nonnull %0) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not21 = icmp eq ptr %0, @_mi_heap_empty
  br i1 %.not21, label %mi_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !177    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !187  ; 3 uses
  %i.d = icmp eq ptr %i.c, %0
  br i1 %i.d, label %mi_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default) ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.g = icmp eq ptr %0, %i.f
  br i1 %i.g, label %bb.d, label %_Z27_mi_heap_set_default_directP9mi_heap_s.exit

bb.d:                                             ; preds = %bb.c
  store ptr %i.c, ptr %i.e, align 8, !tbaa !76
  %i.h = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !97 ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, -1
  br i1 %.not.i.i, label %_Z27_mi_heap_set_default_directP9mi_heap_s.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @pthread_setspecific(i32 noundef %i.h, ptr noundef %i.c) #55 ; 0 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !177
  br label %_Z27_mi_heap_set_default_directP9mi_heap_s.exit

_Z27_mi_heap_set_default_directP9mi_heap_s.exit:  ; preds = %bb.e, %bb.d, %bb.c
  %i.j = phi ptr [ %.pre, %bb.e ], [ %i.a, %bb.d ], [ %i.a, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_Z27_mi_heap_set_default_directP9mi_heap_s.exit
  %.019 = phi ptr [ null, %_Z27_mi_heap_set_default_directP9mi_heap_s.exit ], [ %.0, %bb.f ] ; 2 uses
  %.0.in = phi ptr [ %i.k, %_Z27_mi_heap_set_default_directP9mi_heap_s.exit ], [ %i.o, %bb.f ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !76  ; 5 uses
  %i.l = icmp ne ptr %.0, %0
  %i.m = icmp ne ptr %.0, null
  %i.n = and i1 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %.0, i64 232
  br i1 %i.n, label %bb.f, label %bb.g, !llvm.loop !307

bb.g:                                             ; preds = %bb.f
  %1 = icmp eq ptr %.0, %0
  br i1 %1, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not = icmp eq ptr %.019, null
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !201  ; 2 uses
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %.019, i64 232
  store ptr %i.q, ptr %i.r, align 8, !tbaa !201
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store ptr %i.q, ptr %i.k, align 8, !tbaa !200
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g
  %i.s = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.t = add i64 %i.s, -1                         ; 2 uses
  %i.u = and i64 %i.t, -33554432                  ; 2 uses
  %i.v = inttoptr i64 %i.u to ptr                 ; 3 uses
  %i.w = icmp slt i64 %i.t, 33554432
  br i1 %i.w, label %mi_free.exit, label %bb.l, !prof !61

bb.l:                                             ; preds = %bb.k
  %i.x = tail call ptr @llvm.thread.pointer.p0()
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 280
  %i.aa = load atomic i64, ptr %i.z monotonic, align 8
  %i.ab = sub i64 %i.s, %i.u
  %i.ac = lshr i64 %i.ab, 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 288
  %i.ae = getelementptr inbounds nuw [96 x i8], ptr %i.ad, i64 %i.ac ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
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
  tail call void @_Z15_mi_page_retireP9mi_page_s(ptr noundef nonnull %i.aj) #55, !inline_history !73
  br label %mi_free.exit

bb.p:                                             ; preds = %bb.m
  tail call fastcc void @_ZL21mi_free_generic_localP9mi_page_sP12mi_segment_sPv(ptr noundef nonnull %i.aj, ptr noundef nonnull %0) #55, !inline_history !73
  br label %mi_free.exit

bb.q:                                             ; preds = %bb.l
  tail call fastcc void @_ZL18mi_free_generic_mtP9mi_page_sP12mi_segment_sPv(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.v, ptr noundef nonnull %0) #57, !inline_history !73
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
  %i.f = tail call i32 @pthread_setspecific(i32 noundef %i.e, ptr noundef nonnull %0) #55 ; 0 uses
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
  %i.c = tail call i32 @pthread_setspecific(i32 noundef %i.b, ptr noundef %0) #55 ; 0 uses
  br label %_Z38_mi_prim_thread_associate_default_heapP9mi_heap_s.exit

_Z38_mi_prim_thread_associate_default_heapP9mi_heap_s.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @mi_heap_contains_block(ptr nofree noundef readnone captures(address) %0, ptr noundef %1) local_unnamed_addr #25 {
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
end_hunk_0
begin_hunk_1_@_ZL20mi_segment_span_freeP12mi_segment_smmbP17mi_segments_tld_s:bb.a
  br label %bb.y

bb.w:                                             ; preds = %bb.q
  br i1 %i.do, label %bb.x, label %mi_option_get.exit25.i, !prof !61

bb.x:                                             ; preds = %bb.w
  call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 800)), !inline_history !138
  %.pre38.i = load i64, ptr %i.dg, align 8, !tbaa !220
  br label %mi_option_get.exit25.i

mi_option_get.exit25.i:                           ; preds = %bb.x, %bb.w
  %i.dv = phi i64 [ %i.dh, %bb.w ], [ %.pre38.i, %bb.x ]
  %i.dw = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 800), align 16, !tbaa !137
  %i.dx = add nsw i64 %i.dw, %i.dv
  store i64 %i.dx, ptr %i.dg, align 8, !tbaa !220
  br label %bb.y

bb.y:                                             ; preds = %mi_option_get.exit25.i, %mi_option_get.exit24.i, %bb.t, %mi_option_get.exit22.i, %_ZL23mi_commit_mask_is_emptyPK16mi_commit_mask_s.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %_ZL25mi_segment_schedule_purgeP12mi_segment_sPhm.exit

_ZL25mi_segment_schedule_purgeP12mi_segment_sPhm.exit: ; preds = %bb.y, %bb.k, %bb.h, %bb.g
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %_ZL18mi_span_queue_pushP15mi_span_queue_sP9mi_page_s.exit, label %bb.z

bb.z:                                             ; preds = %_ZL25mi_segment_schedule_purgeP12mi_segment_sPhm.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  store ptr null, ptr %i.dy, align 8, !tbaa !216
  %i.dz = load ptr, ptr %i.t, align 8, !tbaa !227 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !192
  store ptr %i.v, ptr %i.t, align 8, !tbaa !227
  %.not.i31 = icmp eq ptr %i.dz, null
  br i1 %.not.i31, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 80
  store ptr %i.v, ptr %i.eb, align 8, !tbaa !216
  br label %_ZL18mi_span_queue_pushP15mi_span_queue_sP9mi_page_s.exit

bb.ab:                                            ; preds = %bb.z
  %i.ec = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.v, ptr %i.ec, align 8, !tbaa !228
  br label %_ZL18mi_span_queue_pushP15mi_span_queue_sP9mi_page_s.exit

_ZL18mi_span_queue_pushP15mi_span_queue_sP9mi_page_s.exit: ; preds = %_ZL25mi_segment_schedule_purgeP12mi_segment_sPhm.exit, %bb.ab, %bb.aa
  %i.ed = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store i64 0, ptr %i.ed, align 8, !tbaa !62
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal fastcc void @_ZL22mi_segments_track_sizelP17mi_segments_tld_s(i64 noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #13 {
bb.a:
  %i.a = icmp sgt i64 %0, -1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 912
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !195  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 376 ; 5 uses
  %i.e = icmp uge ptr %i.d, @_mi_stats_main
  %i.f = icmp ult ptr %i.d, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 4184)
  %i.g = select i1 %i.e, i1 %i.f, i1 false        ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 392 ; 6 uses
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.c, label %bb.d, !prof !61

bb.c:                                             ; preds = %bb.b
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 384 ; 2 uses
  %i.k = add nsw i64 %i.i, 1
  %i.l = load atomic i64, ptr %i.j monotonic, align 8 ; 2 uses
  %.old3.i.i.i.not = icmp sgt i64 %i.l, %i.i
  br i1 %.old3.i.i.i.not, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.c, %.preheader.i.i.i
  %.0.i.i.i = phi i64 [ %i.o, %.preheader.i.i.i ], [ %i.l, %bb.c ]
  %i.m = cmpxchg weak ptr %i.j, i64 %.0.i.i.i, i64 %i.k release monotonic, align 8 ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 1
  %i.o = extractvalue { i64, i1 } %i.m, 0         ; 2 uses
  %i.p = icmp sgt i64 %i.o, %i.i
  %or.cond.not.i.i.i = select i1 %i.n, i1 true, i1 %i.p
  br i1 %or.cond.not.i.i.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i, label %.preheader.i.i.i, !llvm.loop !8

_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i:       ; preds = %.preheader.i.i.i, %bb.c
  %i.q = atomicrmw add ptr %i.d, i64 1 monotonic, align 8 ; 0 uses
  br label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

bb.d:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.h, align 8, !tbaa !165  ; 2 uses
  %i.s = add nsw i64 %i.r, 1                      ; 2 uses
  store i64 %i.s, ptr %i.h, align 8, !tbaa !165
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 384 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !166
  %.not = icmp slt i64 %i.r, %i.u
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.s, ptr %i.t, align 8, !tbaa !166
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = load i64, ptr %i.d, align 8, !tbaa !167
  %i.w = add nsw i64 %i.v, 1
  store i64 %i.w, ptr %i.d, align 8, !tbaa !167
  br label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

bb.g:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.h, label %bb.i, !prof !61

bb.h:                                             ; preds = %bb.g
  %i.x = atomicrmw sub ptr %i.h, i64 1 monotonic, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 384 ; 2 uses
  %i.z = add nsw i64 %i.x, -1                     ; 3 uses
  %i.aa = load atomic i64, ptr %i.y monotonic, align 8 ; 2 uses
  %.old3.i.i.i15 = icmp slt i64 %i.aa, %i.z
  br i1 %.old3.i.i.i15, label %.preheader.i.i.i17, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

.preheader.i.i.i17:                               ; preds = %bb.h, %.preheader.i.i.i17
  %.0.i.i.i18 = phi i64 [ %i.ad, %.preheader.i.i.i17 ], [ %i.aa, %bb.h ]
  %i.ab = cmpxchg weak ptr %i.y, i64 %.0.i.i.i18, i64 %i.z release monotonic, align 8 ; 2 uses
  %i.ac = extractvalue { i64, i1 } %i.ab, 1
  %i.ad = extractvalue { i64, i1 } %i.ab, 0       ; 2 uses
  %i.ae = icmp sge i64 %i.ad, %i.z
  %or.cond.not.i.i.i19 = select i1 %i.ac, i1 true, i1 %i.ae
  br i1 %or.cond.not.i.i.i19, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit, label %.preheader.i.i.i17, !llvm.loop !8

bb.i:                                             ; preds = %bb.g
  %i.af = load i64, ptr %i.h, align 8, !tbaa !165
  %i.ag = add nsw i64 %i.af, -1                   ; 3 uses
  store i64 %i.ag, ptr %i.h, align 8, !tbaa !165
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 384 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !166
  %i.aj = icmp sgt i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.j, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

bb.j:                                             ; preds = %bb.i
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !166
  br label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

_Z17_mi_stat_increaseP15mi_stat_count_sm.exit:    ; preds = %.preheader.i.i.i17, %bb.h, %bb.j, %bb.i, %bb.f, %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i
  %i.ak = phi i64 [ 1, %bb.f ], [ 1, %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i ], [ -1, %bb.i ], [ -1, %bb.j ], [ -1, %bb.h ], [ -1, %.preheader.i.i.i17 ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 864 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !233
  %i.an = add i64 %i.am, %i.ak                    ; 3 uses
  store i64 %i.an, ptr %i.al, align 8, !tbaa !233
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 872 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !248
  %i.aq = icmp ugt i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !248
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 880 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !395
  %i.at = add i64 %i.as, %0                       ; 3 uses
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !395
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 888 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !396
  %i.aw = icmp ugt i64 %i.at, %i.av
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i64 %i.at, ptr %i.au, align 8, !tbaa !396
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL16mi_segment_allocmmiP17mi_segments_tld_sPP9mi_page_s(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef captures(address) %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #6 {
bb.a:
  %5 = alloca %struct.mi_memid_s, align 8         ; 6 uses
  %6 = alloca %struct.mi_memid_s, align 8         ; 9 uses
  %7 = alloca %struct.mi_commit_mask_s, align 8   ; 10 uses
  %i.a = load i64, ptr @_ZL16mi_os_mem_config, align 8, !tbaa !95 ; 4 uses
  %i.b = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.a)
  %i.c = icmp samesign ult i64 %i.b, 2
  %i.d = add i64 %i.a, 49535                      ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = sub i64 0, %i.a
  %i.f = and i64 %i.d, %i.e
  br label %_ZL27mi_segment_calculate_slicesmPm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = urem i64 %i.d, %i.a
  %i.h = sub nuw i64 %i.d, %i.g
  br label %_ZL27mi_segment_calculate_slicesmPm.exit

_ZL27mi_segment_calculate_slicesmPm.exit:         ; preds = %bb.b, %bb.c
  %.0.i.i = phi i64 [ %i.f, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %i.i = add i64 %.0.i.i, 65535                   ; 3 uses
  %8 = icmp eq i64 %0, 0
  %i.j = or i64 %i.i, 65535
  %i.k = add i64 %i.j, %0
  %i.l = lshr i64 %i.k, 16
  %i.m = select i1 %8, i64 512, i64 %i.l
  %i.n = load atomic i64, ptr @_ZL12thread_count monotonic, align 8
  %i.o = icmp ugt i64 %i.n, 1
  br i1 %i.o, label %bb.d, label %.thread

bb.d:                                             ; preds = %_ZL27mi_segment_calculate_slicesmPm.exit
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 872
  %i.q = load i64, ptr %i.p, align 8, !tbaa !248
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 456), align 8, !tbaa !135
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.f, !prof !61

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 448)), !inline_history !138
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 448), align 16, !tbaa !137
  %i.u = icmp ult i64 %i.q, %i.t
  br i1 %i.u, label %bb.h, label %.thread

.thread:                                          ; preds = %_ZL27mi_segment_calculate_slicesmPm.exit, %bb.f
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 104), align 8, !tbaa !135
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.g, label %mi_option_is_enabled.exit, !prof !61

bb.g:                                             ; preds = %.thread
  tail call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 96)), !inline_history !136
  br label %mi_option_is_enabled.exit

mi_option_is_enabled.exit:                        ; preds = %.thread, %bb.g
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 96), align 16, !tbaa !137
  %i.y = icmp ne i64 %i.x, 0
  br label %bb.h

bb.h:                                             ; preds = %mi_option_is_enabled.exit, %bb.f
  %not..i = phi i1 [ false, %bb.f ], [ true, %mi_option_is_enabled.exit ]
  %i.z = phi i1 [ false, %bb.f ], [ %i.y, %mi_option_is_enabled.exit ]
  %9 = icmp ne i64 %0, 0                          ; 2 uses
  %10 = or i1 %9, %i.z
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %._crit_edge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = and i64 %i.i, -65536
  %i.ab = add i64 %.0.i.i, 33554431
  %i.ac = and i64 %i.ab, -33554432                ; 2 uses
  %i.ad = sub i64 %i.ac, %i.aa
  %i.ae = add i64 %i.ad, %0                       ; 2 uses
  %i.af = load i64, ptr @_ZL16mi_os_mem_config, align 8, !tbaa !95 ; 4 uses
  %i.ag = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.af)
  %i.ah = icmp samesign ult i64 %i.ag, 2
  %i.ai = add i64 %i.af, 49535                    ; 3 uses
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = sub i64 0, %i.af
  %i.ak = and i64 %i.ai, %i.aj
  br label %_ZL27mi_segment_calculate_slicesmPm.exit.i

bb.k:                                             ; preds = %bb.i
  %i.al = urem i64 %i.ai, %i.af
  %i.am = sub nuw i64 %i.ai, %i.al
  br label %_ZL27mi_segment_calculate_slicesmPm.exit.i

_ZL27mi_segment_calculate_slicesmPm.exit.i:       ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi i64 [ %i.ak, %bb.j ], [ %i.am, %bb.k ]
  %i.an = add i64 %.0.i.i.i, 65535                ; 2 uses
  %i.ao = icmp eq i64 %i.ae, 0
  %i.ap = or i64 %i.an, 65535
  %i.aq = add i64 %i.ap, %i.ae
  %i.ar = lshr i64 %i.aq, 16
  %i.as = select i1 %i.ao, i64 512, i64 %i.ar
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h, %_ZL27mi_segment_calculate_slicesmPm.exit.i
  %.053.in = phi i64 [ %i.an, %_ZL27mi_segment_calculate_slicesmPm.exit.i ], [ %i.i, %bb.h ] ; 6 uses
  %.0 = phi i64 [ %i.as, %_ZL27mi_segment_calculate_slicesmPm.exit.i ], [ %i.m, %bb.h ] ; 5 uses
  %.043.i = phi i64 [ %i.ac, %_ZL27mi_segment_calculate_slicesmPm.exit.i ], [ 0, %bb.h ]
  %.042.i = phi i64 [ %1, %_ZL27mi_segment_calculate_slicesmPm.exit.i ], [ 33554432, %bb.h ]
  %.053 = lshr i64 %.053.in, 16                   ; 9 uses
  %i.at = shl nuw i64 %.0, 16                     ; 4 uses
  %i.au = call noundef ptr @_Z23_mi_arena_alloc_alignedmmmbbiP10mi_memid_s(i64 noundef %i.at, i64 noundef %.042.i, i64 noundef %.043.i, i1 noundef zeroext %10, i1 noundef zeroext %not..i, i32 noundef %2, ptr noundef nonnull %6) ; 28 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZL19mi_segment_os_allocmmbiPmS_bP17mi_segments_tld_s.exit.thread, label %bb.l

_ZL19mi_segment_os_allocmmbiPmS_bP17mi_segments_tld_s.exit.thread: ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.ar

bb.l:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #55
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 17
  %i.ax = load i8, ptr %i.aw, align 1, !range !113, !noundef !114
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 -1, i64 64, i1 false), !tbaa !98
  br label %.critedge.i

bb.n:                                             ; preds = %bb.l
  switch i64 %.053, label %.lr.ph.i.i [
    i64 512, label %bb.o
    i64 0, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 -1, i64 64, i1 false), !tbaa !98
  br label %_ZL21mi_commit_mask_createmmP16mi_commit_mask_s.exit.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i64 64, i1 false), !tbaa !98
  br label %_ZL21mi_commit_mask_createmmP16mi_commit_mask_s.exit.i

.lr.ph.i.i:                                       ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.az, i8 0, i64 56, i1 false), !tbaa !98
  %i.ba = tail call i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %.053, i64 64) ; 2 uses
  %i.bb = icmp ugt i64 %.053.in, 4194303
  %notmask.peel.i.i = shl nsw i64 -1, %i.ba
  %i.bc = xor i64 %notmask.peel.i.i, -1
  %i.bd = select i1 %i.bb, i64 -1, i64 %i.bc
  store i64 %i.bd, ptr %7, align 8, !tbaa !98
  %i.be = sub nuw nsw i64 %.053, %i.ba            ; 2 uses
  %.not.peel.i.i = icmp eq i64 %i.be, 0
  br i1 %.not.peel.i.i, label %_ZL21mi_commit_mask_createmmP16mi_commit_mask_s.exit.i, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %.lr.ph.i.i, %.peel.next.i.i
  %.02127.in.i.i = phi i64 [ %.02127.i.i, %.peel.next.i.i ], [ 0, %.lr.ph.i.i ]
  %.02226.i.i = phi i64 [ %i.bk, %.peel.next.i.i ], [ %i.be, %.lr.ph.i.i ] ; 3 uses
  %.02127.i.i = add i64 %.02127.in.i.i, 1         ; 2 uses
  %i.bf = tail call i64 @llvm.umin.i64(i64 %.02226.i.i, i64 64) ; 2 uses
  %i.bg = icmp ugt i64 %.02226.i.i, 63
  %notmask.i.i = shl nsw i64 -1, %i.bf
  %i.bh = xor i64 %notmask.i.i, -1
  %i.bi = select i1 %i.bg, i64 -1, i64 %i.bh
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.02127.i.i
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !98
  %i.bk = sub nuw nsw i64 %.02226.i.i, %i.bf      ; 2 uses
  %.not.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i, label %_ZL21mi_commit_mask_createmmP16mi_commit_mask_s.exit.i, label %.peel.next.i.i, !llvm.loop !41

_ZL21mi_commit_mask_createmmP16mi_commit_mask_s.exit.i: ; preds = %.peel.next.i.i, %.lr.ph.i.i, %bb.p, %bb.o
  %i.bl = and i64 %.053.in, -65536                ; 2 uses
  %i.bm = tail call noundef zeroext i1 @_Z16_mi_os_commit_exPvmPbm(ptr noundef nonnull %i.au, i64 noundef %i.bl, ptr noundef null, i64 noundef %i.bl)
  br i1 %i.bm, label %.critedge.i, label %_ZL19mi_segment_os_allocmmbiPmS_bP17mi_segments_tld_s.exit

.critedge.i:                                      ; preds = %_ZL21mi_commit_mask_createmmP16mi_commit_mask_s.exit.i, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bo = load i8, ptr %i.bn, align 8, !range !113, !noundef !114 ; 2 uses
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = xor i8 %i.bo, 1
  %i.br = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store i8 %i.bq, ptr %i.br, align 8, !tbaa !223
  br i1 %i.bp, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.critedge.i
  %i.bs = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 488), align 8, !tbaa !135
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.r, label %mi_option_get.exit.i, !prof !61

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480)), !inline_history !138
  br label %mi_option_get.exit.i

mi_option_get.exit.i:                             ; preds = %bb.r, %bb.q
  %i.bu = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480), align 16, !tbaa !137
  %i.bv = icmp sgt i64 %i.bu, -1
  %i.bw = zext i1 %i.bv to i8
  br label %bb.s

bb.s:                                             ; preds = %mi_option_get.exit.i, %.critedge.i
  %i.bx = phi i8 [ 0, %.critedge.i ], [ %i.bw, %mi_option_get.exit.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.au, i64 25
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !219
  %i.bz = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store i64 %i.at, ptr %i.bz, align 8, !tbaa !397
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 904
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !189
  %i.cc = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !107
  %i.cd = getelementptr inbounds nuw i8, ptr %i.au, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cd, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 64, i1 false), !tbaa.struct !221
  %i.ce = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ce, i8 0, i64 72, i1 false)
  tail call fastcc void @_ZL22mi_segments_track_sizelP17mi_segments_tld_s(i64 noundef %i.at, ptr noundef %3)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !105
  %i.ch = icmp eq i32 %i.cg, 6
  br i1 %i.ch, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ci = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.cj = icmp ugt ptr %i.au, inttoptr (i64 52776558133247 to ptr)
  br i1 %i.cj, label %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = udiv i64 %i.ci, 2164663517184
  %.in.in.i.i = urem i64 %i.ci, 2164663517184     ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr @_ZL14mi_segment_map, i64 %i.ck ; 2 uses
  %i.cm = load atomic ptr, ptr %i.cl monotonic, align 8 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.v, label %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread15.i.i, !prof !61

bb.v:                                             ; preds = %bb.u
  %i.co = call noundef ptr @_Z12_mi_os_allocmP10mi_memid_s(i64 noundef 8088, ptr noundef nonnull %5) ; 5 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.cq = cmpxchg ptr %i.cl, ptr null, ptr %i.co release monotonic, align 8 ; 2 uses
  %i.cr = extractvalue { ptr, i1 } %i.cq, 1
  br i1 %i.cr, label %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread15.i.i, label %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.i.i

_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread.i.i: ; preds = %bb.v, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.i.i: ; preds = %bb.w
  %i.cs = extractvalue { ptr, i1 } %i.cq, 0
  tail call void @_Z14_mi_os_free_exPvmb10mi_memid_s(ptr noundef nonnull %i.co, i64 poison, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %5)
  br label %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread15.i.i

_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread15.i.i: ; preds = %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.i.i, %bb.w, %bb.u
  %.325.i17.i.i = phi ptr [ %i.cs, %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.i.i ], [ %i.co, %bb.w ], [ %i.cm, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ct = lshr i64 %.in.in.i.i, 31
  %.in.i.i = lshr i64 %.in.in.i.i, 25
  %i.cu = and i64 %.in.i.i, 63
  %i.cv = getelementptr inbounds nuw i8, ptr %.325.i17.i.i, i64 24
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.ct ; 3 uses
  %i.cx = load atomic i64, ptr %i.cw monotonic, align 8 ; 2 uses
  %i.cy = shl nuw i64 1, %i.cu                    ; 2 uses
  %i.cz = or i64 %i.cx, %i.cy
  %i.da = cmpxchg weak ptr %i.cw, i64 %i.cx, i64 %i.cz release monotonic, align 8 ; 2 uses
  %i.db = extractvalue { i64, i1 } %i.da, 1
  br i1 %i.db, label %.loopexit, label %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i

_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i: ; preds = %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread15.i.i, %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i
  %i.dc = phi { i64, i1 } [ %i.df, %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i ], [ %i.da, %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread15.i.i ]
  %i.dd = extractvalue { i64, i1 } %i.dc, 0       ; 2 uses
  %i.de = or i64 %i.dd, %i.cy
  %i.df = cmpxchg weak ptr %i.cw, i64 %i.dd, i64 %i.de release monotonic, align 8 ; 2 uses
  %i.dg = extractvalue { i64, i1 } %i.df, 1
  br i1 %i.dg, label %.loopexit, label %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i, !llvm.loop !39

_ZL19mi_segment_os_allocmmbiPmS_bP17mi_segments_tld_s.exit: ; preds = %_ZL21mi_commit_mask_createmmP16mi_commit_mask_s.exit.i
  tail call void @_Z14_mi_arena_freePvmm10mi_memid_s(ptr noundef nonnull %i.au, i64 noundef %i.at, i64 noundef 0, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.ar

.loopexit:                                        ; preds = %_ZSt37atomic_compare_exchange_weak_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i, %bb.s, %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread.i.i, %_ZL23mi_segment_map_index_ofPK12mi_segment_sbPmS2_.exit.thread15.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.au, i64 18
  %i.di = load i8, ptr %i.dh, align 2, !tbaa !398, !range !113, !noundef !114
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.loopexit
  %i.dk = mul nuw nsw i64 %.0, 96
  %i.dl = add nuw nsw i64 %i.dk, 200
  %i.dm = getelementptr inbounds nuw i8, ptr %i.au, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dm, i8 0, i64 %i.dl, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.loopexit
  %i.dn = tail call i64 @llvm.umin.i64(i64 %.0, i64 512)
  %i.do = getelementptr inbounds nuw i8, ptr %i.au, i64 248
  store i64 %.0, ptr %i.do, align 8, !tbaa !229
  %i.dp = getelementptr inbounds nuw i8, ptr %i.au, i64 256
  store i64 %.053, ptr %i.dp, align 8, !tbaa !247
  %i.dq = tail call ptr @llvm.thread.pointer.p0()
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.au, i64 280 ; 2 uses
  store atomic i64 %i.dr, ptr %i.ds seq_cst, align 8
  %i.dt = ptrtoint ptr %i.au to i64
  %i.du = load i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_main, i64 32), align 32, !tbaa !199
  %i.dv = xor i64 %i.du, %i.dt
  %i.dw = getelementptr inbounds nuw i8, ptr %i.au, i64 224
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !203
  %i.dx = getelementptr inbounds nuw i8, ptr %i.au, i64 272 ; 2 uses
  store i64 %i.dn, ptr %i.dx, align 8, !tbaa !139
  %i.dy = zext i1 %9 to i32
  %i.dz = getelementptr inbounds nuw i8, ptr %i.au, i64 264 ; 2 uses
  store i32 %i.dy, ptr %i.dz, align 8, !tbaa !225
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 912
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !195 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 128 ; 5 uses
  %i.ed = and i64 %.053.in, -65536                ; 6 uses
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ef = icmp uge ptr %i.ec, @_mi_stats_main
  %i.eg = icmp ult ptr %i.ec, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 4184)
  %i.eh = select i1 %i.ef, i1 %i.eg, i1 false
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 144 ; 3 uses
  br i1 %i.eh, label %bb.aa, label %bb.ac, !prof !61

bb.aa:                                            ; preds = %bb.z
  %i.ej = atomicrmw add ptr %i.ei, i64 %i.ed monotonic, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eb, i64 136 ; 2 uses
  %i.el = add nsw i64 %i.ej, %i.ed                ; 3 uses
  %i.em = load atomic i64, ptr %i.ek monotonic, align 8 ; 2 uses
  %.old3.i.i.i = icmp slt i64 %i.em, %i.el
  br i1 %.old3.i.i.i, label %.preheader.i.i.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.aa, %.preheader.i.i.i
  %.0.i.i.i42 = phi i64 [ %i.ep, %.preheader.i.i.i ], [ %i.em, %bb.aa ]
  %i.en = cmpxchg weak ptr %i.ek, i64 %.0.i.i.i42, i64 %i.el release monotonic, align 8 ; 2 uses
  %i.eo = extractvalue { i64, i1 } %i.en, 1
  %i.ep = extractvalue { i64, i1 } %i.en, 0       ; 2 uses
  %i.eq = icmp sge i64 %i.ep, %i.el
  %or.cond.not.i.i.i = select i1 %i.eo, i1 true, i1 %i.eq
  br i1 %or.cond.not.i.i.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i, label %.preheader.i.i.i, !llvm.loop !8

_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i:       ; preds = %.preheader.i.i.i, %bb.aa
  %i.er = icmp sgt i64 %.053.in, 65535
  br i1 %i.er, label %bb.ab, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

bb.ab:                                            ; preds = %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i
  %i.es = atomicrmw add ptr %i.ec, i64 %i.ed monotonic, align 8 ; 0 uses
  br label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

bb.ac:                                            ; preds = %bb.z
  %i.et = load i64, ptr %i.ei, align 8, !tbaa !165
  %i.eu = add nsw i64 %i.et, %i.ed                ; 3 uses
  store i64 %i.eu, ptr %i.ei, align 8, !tbaa !165
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eb, i64 136 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !166
  %i.ex = icmp sgt i64 %i.eu, %i.ew
  br i1 %i.ex, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !166
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ey = icmp sgt i64 %.053.in, 65535
  br i1 %i.ey, label %bb.af, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

bb.af:                                            ; preds = %bb.ae
  %i.ez = load i64, ptr %i.ec, align 8, !tbaa !167
  %i.fa = add nsw i64 %i.ez, %i.ed
  store i64 %i.fa, ptr %i.ec, align 8, !tbaa !167
  br label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

_Z17_mi_stat_increaseP15mi_stat_count_sm.exit:    ; preds = %bb.y, %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i, %bb.ab, %bb.ae, %bb.af
  %i.fb = tail call fastcc noundef ptr @_ZL24mi_segment_span_allocateP12mi_segment_smm(ptr noundef nonnull %i.au, i64 noundef 0, i64 noundef %.053)
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %bb.ar, label %bb.ag

bb.ag:                                            ; preds = %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %i.au, i64 216
  store i64 0, ptr %i.fd, align 8, !tbaa !193
  %i.fe = load i32, ptr %i.dz, align 8, !tbaa !225
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.ah, label %bb.aq

bb.ah:                                            ; preds = %bb.ag
  %i.fg = load i64, ptr %i.dx, align 8, !tbaa !139 ; 2 uses
  %i.fh = sub i64 %i.fg, %.053                    ; 5 uses
  %i.fi = load atomic i64, ptr %i.ds monotonic, align 8
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fk = icmp ult i64 %i.fh, 9
  br i1 %i.fk, label %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fl = add i64 %i.fh, -1                       ; 2 uses
  %i.fm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fl, i1 true) ; 2 uses
  %i.fn = shl nuw nsw i64 %i.fm, 2
  %i.fo = sub nuw nsw i64 61, %i.fm
  %i.fp = lshr i64 %i.fl, %i.fo
  %i.fq = and i64 %i.fp, 3
  %i.fr = or disjoint i64 %i.fq, %i.fn
  %i.fs = xor i64 %i.fr, 252
  %i.ft = add nsw i64 %i.fs, -4
  br label %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.i

_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.i: ; preds = %bb.aj, %bb.ai
  %.1.i.i.i.i = phi i64 [ %i.fh, %bb.ai ], [ %i.ft, %bb.aj ]
  %i.fu = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %.1.i.i.i.i
  br label %bb.ak

bb.ak:                                            ; preds = %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.i, %bb.ah
  %i.fv = phi ptr [ %i.fu, %_ZL17mi_span_queue_formP17mi_segments_tld_s.exit.i ], [ null, %bb.ah ] ; 4 uses
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %i.fh, i64 1) ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.au, i64 288 ; 2 uses
  %i.fx = getelementptr inbounds nuw [96 x i8], ptr %i.fw, i64 %.053 ; 9 uses
  %i.fy = trunc i64 %spec.store.select.i to i32   ; 2 uses
  store i32 %i.fy, ptr %i.fx, align 8, !tbaa !140
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  store i32 0, ptr %i.fz, align 4, !tbaa !67
  %i.ga = icmp ugt i64 %i.fh, 1
  br i1 %i.ga, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gb = getelementptr inbounds nuw [96 x i8], ptr %i.fx, i64 %spec.store.select.i
  %i.gc = getelementptr inbounds i8, ptr %i.gb, i64 -96 ; 2 uses
  %i.gd = getelementptr inbounds nuw [96 x i8], ptr %i.fw, i64 %i.fg ; 2 uses
  %i.ge = icmp ugt ptr %i.gc, %i.gd
  %spec.select.i = select i1 %i.ge, ptr %i.gd, ptr %i.gc ; 3 uses
  store i32 0, ptr %spec.select.i, align 8, !tbaa !140
  %i.gf = mul i32 %i.fy, 96
  %i.gg = add i32 %i.gf, -96
  %i.gh = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 4
  store i32 %i.gg, ptr %i.gh, align 4, !tbaa !67
  %i.gi = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 40
  store i64 0, ptr %i.gi, align 8, !tbaa !62
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.not.i43 = icmp eq ptr %i.fv, null
  br i1 %.not.i43, label %_ZL20mi_segment_span_freeP12mi_segment_smmbP17mi_segments_tld_s.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fx, i64 80
  store ptr null, ptr %i.gj, align 8, !tbaa !216
  %i.gk = load ptr, ptr %i.fv, align 8, !tbaa !227 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fx, i64 72
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !192
  store ptr %i.fx, ptr %i.fv, align 8, !tbaa !227
  %.not.i31.i = icmp eq ptr %i.gk, null
  br i1 %.not.i31.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 80
  store ptr %i.fx, ptr %i.gm, align 8, !tbaa !216
  br label %_ZL20mi_segment_span_freeP12mi_segment_smmbP17mi_segments_tld_s.exit

bb.ap:                                            ; preds = %bb.an
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store ptr %i.fx, ptr %i.gn, align 8, !tbaa !228
  br label %_ZL20mi_segment_span_freeP12mi_segment_smmbP17mi_segments_tld_s.exit

_ZL20mi_segment_span_freeP12mi_segment_smmbP17mi_segments_tld_s.exit: ; preds = %bb.am, %bb.ao, %bb.ap
  %i.go = getelementptr inbounds nuw i8, ptr %i.fx, i64 40
  store i64 0, ptr %i.go, align 8, !tbaa !62
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ag
  %i.gp = sub nsw i64 %.0, %.053
  %i.gq = tail call fastcc noundef ptr @_ZL24mi_segment_span_allocateP12mi_segment_smm(ptr noundef nonnull %i.au, i64 noundef %.053, i64 noundef %i.gp)
  store ptr %i.gq, ptr %4, align 8, !tbaa !77
  br label %bb.ar

bb.ar:                                            ; preds = %_ZL19mi_segment_os_allocmmbiPmS_bP17mi_segments_tld_s.exit, %_ZL19mi_segment_os_allocmmbiPmS_bP17mi_segments_tld_s.exit.thread, %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit, %bb.aq, %_ZL20mi_segment_span_freeP12mi_segment_smmbP17mi_segments_tld_s.exit
  %.1 = phi ptr [ null, %_ZL19mi_segment_os_allocmmbiPmS_bP17mi_segments_tld_s.exit ], [ null, %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit ], [ %i.au, %bb.aq ], [ %i.au, %_ZL20mi_segment_span_freeP12mi_segment_smmbP17mi_segments_tld_s.exit ], [ null, %_ZL19mi_segment_os_allocmmbiPmS_bP17mi_segments_tld_s.exit.thread ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL24mi_segment_span_allocateP12mi_segment_smm(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %struct.mi_commit_mask_s, align 16  ; 11 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %5 = alloca %struct.mi_commit_mask_s, align 8   ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.e = getelementptr inbounds nuw [96 x i8], ptr %i.d, i64 %1 ; 10 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = shl i64 %1, 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = shl i64 %2, 16                           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !98
  %.not.i.i = icmp eq i64 %i.k, -1
  br i1 %.not.i.i, label %bb.b, label %_ZL22mi_commit_mask_is_fullPK16mi_commit_mask_s.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load i64, ptr %i.l, align 8, !tbaa !98
  %.not.1.i.i = icmp eq i64 %i.m, -1
  br i1 %.not.1.i.i, label %bb.c, label %_ZL22mi_commit_mask_is_fullPK16mi_commit_mask_s.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.o = load i64, ptr %i.n, align 8, !tbaa !98
end_hunk_1
