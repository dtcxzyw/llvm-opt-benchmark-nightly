inline.NumInlined: 133
inline.NumDeleted: 55
begin_hunk_0_@mi_page_queue_find_free_ex
define internal fastcc ptr @mi_page_queue_find_free_ex(ptr noundef %0, ptr noundef captures(address) %1, i1 noundef zeroext %2) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %tailrecurse

tailrecurse:                                      ; preds = %mi_page_extend_free.exit, %bb.a
  %.tr104 = phi i1 [ %2, %bb.a ], [ false, %mi_page_extend_free.exit ]
  %i.c = load i64, ptr %i.a, align 8, !tbaa !9
  %i.d = icmp ugt i64 %i.c, 8176
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.e = load i64, ptr %i.b, align 8, !tbaa !93
  br label %bb.c

bb.c:                                             ; preds = %tailrecurse, %bb.b
  %i.f = phi i64 [ %i.e, %bb.b ], [ 0, %tailrecurse ]
  %i.g = load ptr, ptr %1, align 8, !tbaa !28     ; 2 uses
  %.not123 = icmp eq ptr %i.g, null
  br i1 %.not123, label %mi_page_to_full.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %mi_page_to_full.exit
  %.055128 = phi i64 [ %i.j, %mi_page_to_full.exit ], [ 0, %bb.c ]
  %.056127 = phi ptr [ %i.i, %mi_page_to_full.exit ], [ %i.g, %bb.c ] ; 20 uses
  %.058126 = phi ptr [ %.361, %mi_page_to_full.exit ], [ null, %bb.c ] ; 16 uses
  %.063125 = phi i64 [ %.265, %mi_page_to_full.exit ], [ %i.f, %bb.c ] ; 3 uses
  %.066124 = phi i64 [ %.369, %mi_page_to_full.exit ], [ 0, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %.056127, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30   ; 2 uses
  %i.j = add i64 %.055128, 1                      ; 3 uses
  %i.k = add nsw i64 %.066124, -1                 ; 9 uses
  %i.l = getelementptr i8, ptr %.056127, i64 8    ; 5 uses
  %.056.val79 = load ptr, ptr %i.l, align 8, !tbaa !56
  %.not99 = icmp eq ptr %.056.val79, null
  br i1 %.not99, label %bb.d, label %.thread

bb.d:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.056127, i64 32 ; 4 uses
  %i.n = load atomic i64, ptr %i.m monotonic, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.0.i.i = phi i64 [ %i.n, %bb.d ], [ %i.t, %bb.f ] ; 3 uses
  %i.o = and i64 %.0.i.i, -2                      ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %mi_page_thread_free_collect.exit.i, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.q = and i64 %.0.i.i, 1
  %i.r = cmpxchg weak ptr %i.m, i64 %.0.i.i, i64 %i.q acq_rel acquire, align 8 ; 2 uses
  %i.s = extractvalue { i64, i1 } %i.r, 1
  %i.t = extractvalue { i64, i1 } %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.e, !llvm.loop !54

bb.g:                                             ; preds = %bb.f
  %i.u = inttoptr i64 %i.o to ptr
  tail call fastcc void @mi_page_thread_collect_to_local(ptr noundef nonnull %.056127, ptr noundef %i.u)
  br label %mi_page_thread_free_collect.exit.i

mi_page_thread_free_collect.exit.i:               ; preds = %bb.e, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.056127, i64 24 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !55   ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  %.056.val.pr = load ptr, ptr %i.l, align 8, !tbaa !56
  %.not100 = icmp eq ptr %.056.val.pr, null       ; 2 uses
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %mi_page_thread_free_collect.exit.i
  br i1 %.not100, label %.sink.split.i, label %.thread, !prof !7

.sink.split.i:                                    ; preds = %bb.h
  store ptr %i.w, ptr %i.l, align 8, !tbaa !56
  store ptr null, ptr %i.v, align 8, !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %.056127, i64 57
  store i8 0, ptr %i.x, align 1, !tbaa !60
  br label %.thread

bb.i:                                             ; preds = %mi_page_thread_free_collect.exit.i
  br i1 %.not100, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr i8, ptr %.056127, i64 18
  %.056.val80 = load i16, ptr %i.y, align 2, !tbaa !61
  %i.z = getelementptr i8, ptr %.056127, i64 20
  %.056.val81 = load i16, ptr %i.z, align 4, !tbaa !17
  %i.aa = icmp ult i16 %.056.val80, %.056.val81
  br i1 %i.aa, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = add nsw i64 %.063125, -1                ; 6 uses
  %i.ac = icmp slt i64 %.063125, 1
  br i1 %i.ac, label %bb.l, label %mi_page_to_full.exit

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr i8, ptr %.056127, i64 64
  %.val9.i = load ptr, ptr %i.ad, align 8, !tbaa !29 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val9.i, i64 225
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !85, !range !78, !noundef !79
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_mi_page_abandon(ptr noundef nonnull %.056127, ptr noundef nonnull %1)
  br label %mi_page_to_full.exit

bb.n:                                             ; preds = %bb.l
  %i.ah = load atomic i64, ptr %.056127 monotonic, align 8
  %i.ai = trunc i64 %i.ah to i1
  br i1 %i.ai, label %mi_page_to_full.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %.val9.i, i64 3632
  tail call fastcc void @mi_page_queue_enqueue_from_ex(ptr noundef nonnull %i.aj, ptr noundef nonnull %1, ptr noundef nonnull %.056127)
  %i.ak = load atomic i64, ptr %i.m monotonic, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %.0.i.i.i = phi i64 [ %i.ak, %bb.o ], [ %i.aq, %bb.q ] ; 3 uses
  %i.al = and i64 %.0.i.i.i, -2                   ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %mi_page_thread_free_collect.exit.i.i, label %bb.q, !prof !7

bb.q:                                             ; preds = %bb.p
  %i.an = and i64 %.0.i.i.i, 1
  %i.ao = cmpxchg weak ptr %i.m, i64 %.0.i.i.i, i64 %i.an acq_rel acquire, align 8 ; 2 uses
  %i.ap = extractvalue { i64, i1 } %i.ao, 1
  %i.aq = extractvalue { i64, i1 } %i.ao, 0
  br i1 %i.ap, label %bb.r, label %bb.p, !llvm.loop !54

bb.r:                                             ; preds = %bb.q
  %i.ar = inttoptr i64 %i.al to ptr
  tail call fastcc void @mi_page_thread_collect_to_local(ptr noundef nonnull %.056127, ptr noundef %i.ar)
  br label %mi_page_thread_free_collect.exit.i.i

mi_page_thread_free_collect.exit.i.i:             ; preds = %bb.p, %bb.r
  %i.as = load ptr, ptr %i.v, align 8, !tbaa !55  ; 2 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %mi_page_to_full.exit, label %bb.s

bb.s:                                             ; preds = %mi_page_thread_free_collect.exit.i.i
  %i.at = load ptr, ptr %i.l, align 8, !tbaa !56
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.sink.split.i.i, label %mi_page_to_full.exit, !prof !7

.sink.split.i.i:                                  ; preds = %bb.s
  store ptr %i.as, ptr %i.l, align 8, !tbaa !56
  store ptr null, ptr %i.v, align 8, !tbaa !55
  %i.av = getelementptr inbounds nuw i8, ptr %.056127, i64 57
  store i8 0, ptr %i.av, align 1, !tbaa !60
  br label %mi_page_to_full.exit

.thread:                                          ; preds = %bb.h, %.sink.split.i, %.lr.ph, %bb.j, %bb.i
  %.054.in86 = phi i1 [ true, %.lr.ph ], [ false, %bb.j ], [ true, %bb.i ], [ true, %.sink.split.i ], [ true, %bb.h ]
  %i.aw = icmp eq ptr %.058126, null
  br i1 %i.aw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread
  %i.ax = tail call i64 @_mi_option_get_fast(i32 noundef 37) #14
  br label %bb.y

bb.u:                                             ; preds = %.thread
  %i.ay = getelementptr i8, ptr %.058126, i64 16
  %.058.val = load i16, ptr %i.ay, align 8, !tbaa !63 ; 2 uses
  %i.az = icmp eq i16 %.058.val, 0
  br i1 %i.az, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ba = atomicrmw and ptr %.058126, i64 -3 monotonic, align 8 ; 0 uses
  tail call fastcc void @mi_page_queue_remove(ptr noundef nonnull %1, ptr noundef nonnull %.058126)
  %i.bb = getelementptr inbounds nuw i8, ptr %.058126, i64 64 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !29
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !33 ; 2 uses
  %i.be = load atomic i64, ptr %.058126 monotonic, align 8
  store ptr null, ptr %i.bb, align 8, !tbaa !29
  %i.bf = and i64 %i.be, 3
  store atomic i64 %i.bf, ptr %.058126 release, align 8
  tail call void @_mi_arenas_page_free(ptr noundef nonnull %.058126, ptr noundef %i.bd) #14
  tail call void @_mi_arenas_collect(i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef %i.bd) #14
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.bg = getelementptr inbounds nuw i8, ptr %.056127, i64 16
  %i.bh = load i16, ptr %i.bg, align 8, !tbaa !63 ; 2 uses
  %.not72 = icmp ult i16 %i.bh, %.058.val
  br i1 %.not72, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bi = getelementptr i8, ptr %.056127, i64 20
  %.056.val83 = load i16, ptr %i.bi, align 4, !tbaa !17 ; 2 uses
  %i.bj = zext i16 %.056.val83 to i32
  %i.bk = zext i16 %i.bh to i32
  %i.bl = sub nsw i32 %i.bj, %i.bk
  %i.bm = lshr i16 %.056.val83, 3
  %i.bn = zext nneg i16 %i.bm to i32
  %.not101 = icmp sgt i32 %i.bl, %i.bn
  %spec.select = select i1 %.not101, ptr %.056127, ptr %.058126
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v, %bb.w, %bb.t
  %.167 = phi i64 [ %i.ax, %bb.t ], [ %i.k, %bb.v ], [ %i.k, %bb.x ], [ %i.k, %bb.w ] ; 2 uses
  %.159 = phi ptr [ %.056127, %bb.t ], [ %.056127, %bb.v ], [ %spec.select, %bb.x ], [ %.058126, %bb.w ] ; 2 uses
  %i.bo = icmp slt i64 %.167, 1
  %or.cond = select i1 %.054.in86, i1 true, i1 %i.bo
  br i1 %or.cond, label %mi_page_to_full.exit.thread, label %mi_page_to_full.exit

mi_page_to_full.exit:                             ; preds = %bb.y, %.sink.split.i.i, %bb.s, %mi_page_thread_free_collect.exit.i.i, %bb.n, %bb.m, %bb.k
  %.369 = phi i64 [ %.167, %bb.y ], [ %i.k, %bb.k ], [ %i.k, %bb.m ], [ %i.k, %bb.n ], [ %i.k, %mi_page_thread_free_collect.exit.i.i ], [ %i.k, %bb.s ], [ %i.k, %.sink.split.i.i ]
  %.265 = phi i64 [ %.063125, %bb.y ], [ %i.ab, %bb.k ], [ %i.ab, %bb.m ], [ %i.ab, %bb.n ], [ %i.ab, %mi_page_thread_free_collect.exit.i.i ], [ %i.ab, %bb.s ], [ %i.ab, %.sink.split.i.i ]
  %.361 = phi ptr [ %.159, %bb.y ], [ %.058126, %bb.k ], [ %.058126, %bb.m ], [ %.058126, %bb.n ], [ %.058126, %mi_page_thread_free_collect.exit.i.i ], [ %.058126, %bb.s ], [ %.058126, %.sink.split.i.i ] ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %mi_page_to_full.exit.thread, label %.lr.ph

mi_page_to_full.exit.thread:                      ; preds = %mi_page_to_full.exit, %bb.y, %bb.c
  %.462 = phi ptr [ null, %bb.c ], [ %.159, %bb.y ], [ %.361, %mi_page_to_full.exit ] ; 2 uses
  %.2 = phi ptr [ null, %bb.c ], [ %.056127, %bb.y ], [ null, %mi_page_to_full.exit ]
  %.1 = phi i64 [ 0, %bb.c ], [ %i.j, %bb.y ], [ %i.j, %mi_page_to_full.exit ]
  %i.bp = load ptr, ptr %0, align 8, !tbaa !33
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 432
  tail call void @__mi_stat_counter_increase(ptr noundef nonnull %i.bq, i64 noundef %.1) #14
  %.not73 = icmp eq ptr %.462, null
  %spec.select75 = select i1 %.not73, ptr %.2, ptr %.462 ; 17 uses
  %.not74 = icmp eq ptr %spec.select75, null
  br i1 %.not74, label %mi_page_extend_free.exit, label %bb.z

bb.z:                                             ; preds = %mi_page_to_full.exit.thread
  %i.br = getelementptr i8, ptr %spec.select75, i64 8
  %spec.select75.val = load ptr, ptr %i.br, align 8, !tbaa !56
  %.not102 = icmp eq ptr %spec.select75.val, null
  br i1 %.not102, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.bs = getelementptr inbounds nuw i8, ptr %spec.select75, i64 18
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !61 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %spec.select75, i64 20
  %i.bv = load i16, ptr %i.bu, align 4, !tbaa !17 ; 2 uses
  %.not40.i = icmp ult i16 %i.bt, %i.bv
  br i1 %.not40.i, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  %i.bw = getelementptr i8, ptr %spec.select75, i64 40
  %.val4.i.i = load i64, ptr %i.bw, align 8, !tbaa !25 ; 4 uses
  %i.bx = getelementptr i8, ptr %spec.select75, i64 48
  %i.by = zext i16 %i.bt to i64
  %narrow.i = sub nuw i16 %i.bv, %i.bt
  %i.bz = zext i16 %narrow.i to i64
  %i.ca = icmp ugt i64 %.val4.i.i, 4095
  br i1 %i.ca, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.rhs.trunc.i = trunc nuw nsw i64 %.val4.i.i to i16
  %i.cb = udiv i16 4096, %.rhs.trunc.i
  %.zext.i = zext nneg i16 %i.cb to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cc = phi i64 [ %.zext.i, %bb.ac ], [ 1, %bb.ab ]
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 %i.bz) ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %spec.select75, i64 88
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !73 ; 4 uses
  %.not41.i = icmp eq i64 %i.ce, 0
  br i1 %.not41.i, label %.loopexit105, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cf = add nuw nsw i64 %spec.select.i, %i.by
  %i.cg = mul i64 %i.cf, %.val4.i.i
  %i.ch = load ptr, ptr %i.bx, align 8, !tbaa !74
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %spec.select75 to i64
  %reass.sub = sub i64 %i.cg, %i.cj
  %i.ck = add i64 %reass.sub, 65535
  %i.cl = add i64 %i.ck, %i.ci
  %i.cm = and i64 %i.cl, -65536                   ; 3 uses
  %i.cn = icmp ugt i64 %i.cm, %i.ce
  br i1 %i.cn, label %bb.af, label %.loopexit105

bb.af:                                            ; preds = %bb.ae
  %i.co = getelementptr inbounds nuw i8, ptr %spec.select75, i64 %i.ce
  %i.cp = sub nuw i64 %i.cm, %i.ce
  %i.cq = tail call zeroext i1 @_mi_os_commit(ptr noundef nonnull %i.co, i64 noundef %i.cp, ptr noundef null) #14
  br i1 %i.cq, label %bb.ag, label %mi_page_extend_free.exit

bb.ag:                                            ; preds = %bb.af
  %i.cr = getelementptr inbounds nuw i8, ptr %spec.select75, i64 88
  store i64 %i.cm, ptr %i.cr, align 8, !tbaa !73
  br label %.loopexit105

.loopexit105:                                     ; preds = %bb.ae, %bb.ad, %bb.ag
  %i.cs = getelementptr inbounds nuw i8, ptr %spec.select75, i64 18 ; 2 uses
  tail call fastcc void @mi_page_free_list_extend(ptr noundef nonnull %spec.select75, i64 noundef %.val4.i.i, i64 noundef %spec.select.i)
  %i.ct = trunc nuw nsw i64 %spec.select.i to i16
  %i.cu = load i16, ptr %i.cs, align 2, !tbaa !61
  %i.cv = add i16 %i.cu, %i.ct
  store i16 %i.cv, ptr %i.cs, align 2, !tbaa !61
  br label %.loopexit

mi_page_extend_free.exit:                         ; preds = %mi_page_to_full.exit.thread, %bb.af
  tail call void @_mi_heap_collect_retired(ptr noundef nonnull %0, i1 noundef zeroext false)
  %i.cw = load i64, ptr %i.a, align 8, !tbaa !9
  %i.cx = tail call fastcc ptr @mi_page_fresh_alloc(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.cw, i64 noundef 0) ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  %or.cond3 = and i1 %.tr104, %i.cy
  br i1 %or.cond3, label %tailrecurse, label %.loopexit106

.loopexit:                                        ; preds = %bb.z, %bb.aa, %.loopexit105
  %i.cz = load ptr, ptr %1, align 8, !tbaa !28
  %i.da = icmp eq ptr %i.cz, %spec.select75
  br i1 %i.da, label %mi_page_queue_move_to_front.exit, label %bb.ah

bb.ah:                                            ; preds = %.loopexit
  tail call fastcc void @mi_page_queue_remove(ptr noundef nonnull %1, ptr noundef nonnull %spec.select75)
  tail call fastcc void @mi_page_queue_push(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %spec.select75)
  br label %mi_page_queue_move_to_front.exit

mi_page_queue_move_to_front.exit:                 ; preds = %.loopexit, %bb.ah
  %i.db = getelementptr inbounds nuw i8, ptr %spec.select75, i64 23
  store i8 0, ptr %i.db, align 1, !tbaa !69
  br label %.loopexit106

.loopexit106:                                     ; preds = %mi_page_extend_free.exit, %mi_page_queue_move_to_front.exit
  %.5 = phi ptr [ %spec.select75, %mi_page_queue_move_to_front.exit ], [ %i.cx, %mi_page_extend_free.exit ]
  ret ptr %.5
}

declare i64 @_mi_option_get_fast(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nounwind memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree noinline norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = !{!10, !13, i64 24}
!10 = !{!"mi_page_queue_s", !11, i64 0, !11, i64 8, !13, i64 16, !13, i64 24}
!11 = !{!"p1 _ZTS9mi_page_s", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!11, !11, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18, !20, i64 20}
!18 = !{!"mi_page_s", !5, i64 0, !19, i64 8, !20, i64 16, !20, i64 18, !20, i64 20, !5, i64 22, !5, i64 23, !19, i64 24, !5, i64 32, !13, i64 40, !21, i64 48, !5, i64 56, !22, i64 57, !23, i64 64, !11, i64 72, !11, i64 80, !13, i64 88, !24, i64 96}
!19 = !{!"p1 _ZTS10mi_block_s", !12, i64 0}
!20 = !{!"short", !5, i64 0}
!21 = !{!"p1 omnipotent char", !12, i64 0}
!22 = !{!"_Bool", !5, i64 0}
!23 = !{!"p1 _ZTS9mi_heap_s", !12, i64 0}
!24 = !{!"mi_memid_s", !5, i64 0, !4, i64 16, !22, i64 20, !22, i64 21, !22, i64 22}
!25 = !{!18, !13, i64 40}
!26 = !{!18, !4, i64 112}
!27 = !{!5, !5, i64 0}
!28 = !{!10, !11, i64 0}
!29 = !{!18, !23, i64 64}
!30 = !{!18, !11, i64 72}
!31 = distinct !{!31, !16}
!32 = !{!10, !11, i64 8}
!33 = !{!34, !35, i64 0}
!34 = !{!"mi_heap_s", !35, i64 0, !36, i64 8, !4, i64 16, !13, i64 24, !37, i64 32, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !23, i64 208, !13, i64 216, !22, i64 224, !22, i64 225, !5, i64 226, !5, i64 232, !5, i64 1264, !24, i64 3664}
!35 = !{!"p1 _ZTS8mi_tld_s", !12, i64 0}
!36 = !{!"p1 _ZTS10mi_arena_s", !12, i64 0}
!37 = !{!"mi_random_cxt_s", !5, i64 0, !5, i64 64, !4, i64 128, !22, i64 132}
!38 = !{!39, !13, i64 0}
!39 = !{!"mi_tld_s", !13, i64 0, !13, i64 8, !4, i64 16, !40, i64 24, !23, i64 32, !23, i64 40, !41, i64 48, !22, i64 56, !22, i64 57, !42, i64 64, !24, i64 4368}
!40 = !{!"p1 _ZTS12mi_subproc_s", !12, i64 0}
!41 = !{!"long long", !5, i64 0}
!42 = !{!"mi_stats_s", !4, i64 0, !43, i64 8, !43, i64 32, !43, i64 56, !43, i64 80, !43, i64 104, !43, i64 128, !43, i64 152, !43, i64 176, !43, i64 200, !43, i64 224, !43, i64 248, !44, i64 272, !44, i64 280, !44, i64 288, !44, i64 296, !44, i64 304, !44, i64 312, !44, i64 320, !44, i64 328, !44, i64 336, !44, i64 344, !44, i64 352, !44, i64 360, !44, i64 368, !43, i64 376, !43, i64 400, !43, i64 424, !43, i64 448, !44, i64 472, !44, i64 480, !44, i64 488, !44, i64 496, !5, i64 504, !5, i64 600, !5, i64 632, !5, i64 2408, !5, i64 4184}
!43 = !{!"mi_stat_count_s", !13, i64 0, !13, i64 8, !13, i64 16}
!44 = !{!"mi_stat_counter_s", !13, i64 0}
!45 = !{!34, !5, i64 226}
!46 = !{!18, !5, i64 56}
end_hunk_0
