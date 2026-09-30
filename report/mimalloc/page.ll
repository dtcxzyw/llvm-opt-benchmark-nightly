Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mimalloc/original/page?download=true
inline.NumInlined: 156
inline.NumDeleted: 67
begin_hunk_0_@mi_page_queue_enqueue_from_ex:bb.a
.lr.ph.preheader.i75:                             ; preds = %bb.ae, %bb.w
  %.146.i76 = phi i64 [ %spec.select.i73, %bb.ae ], [ 0, %bb.w ] ; 4 uses
  %i.dr = add nuw nsw i64 %i.cc, 1
  %i.ds = sub nsw i64 %i.dr, %.146.i76            ; 3 uses
  %min.iters.check3 = icmp ult i64 %i.ds, 4
  br i1 %min.iters.check3, label %.lr.ph.i77.preheader, label %vector.ph4

vector.ph4:                                       ; preds = %.lr.ph.preheader.i75
  %n.vec5 = and i64 %i.ds, -4                     ; 3 uses
  %i.dt = add i64 %.146.i76, %n.vec5
  %broadcast.splatinsert6 = insertelement <2 x ptr> poison, ptr %2, i64 0
  %broadcast.splat7 = shufflevector <2 x ptr> %broadcast.splatinsert6, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.val64, i64 %.146.i76
  br label %vector.body8

vector.body8:                                     ; preds = %vector.body8, %vector.ph4
  %index9 = phi i64 [ 0, %vector.ph4 ], [ %index.next10, %vector.body8 ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %index9 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store <2 x ptr> %broadcast.splat7, ptr %i.dv, align 8, !tbaa !19
  store <2 x ptr> %broadcast.splat7, ptr %i.dw, align 8, !tbaa !19
  %index.next10 = add nuw i64 %index9, 4          ; 2 uses
  %i.dx = icmp eq i64 %index.next10, %n.vec5
  br i1 %i.dx, label %middle.block11, label %vector.body8, !llvm.loop !90

middle.block11:                                   ; preds = %vector.body8
  %cmp.n12 = icmp eq i64 %i.ds, %n.vec5
  br i1 %cmp.n12, label %mi_theap_queue_first_update.exit81, label %.lr.ph.i77.preheader

.lr.ph.i77.preheader:                             ; preds = %.lr.ph.preheader.i75, %middle.block11
  %.039.i78.ph = phi i64 [ %.146.i76, %.lr.ph.preheader.i75 ], [ %i.dt, %middle.block11 ]
  br label %.lr.ph.i77

.lr.ph.i77:                                       ; preds = %.lr.ph.i77.preheader, %.lr.ph.i77
  %.039.i78 = phi i64 [ %i.dz, %.lr.ph.i77 ], [ %.039.i78.ph, %.lr.ph.i77.preheader ] ; 3 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.val64, i64 %.039.i78
  store ptr %2, ptr %i.dy, align 8, !tbaa !19
  %i.dz = add nuw nsw i64 %.039.i78, 1
  %exitcond.not.i79 = icmp eq i64 %.039.i78, %i.cc
  br i1 %exitcond.not.i79, label %mi_theap_queue_first_update.exit81, label %.lr.ph.i77, !llvm.loop !91

mi_theap_queue_first_update.exit81:               ; preds = %.lr.ph.i77, %middle.block11, %bb.ae, %bb.u, %bb.t
  %.val63 = phi i64 [ %.val63.pre, %bb.t ], [ %i.bz, %bb.ae ], [ %i.bz, %bb.u ], [ %i.bz, %middle.block11 ], [ %i.bz, %.lr.ph.i77 ]
  %i.ea = icmp eq i64 %.val63, 524304
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %i.ea, label %mi_page_flags_set.exit.i, label %.split.i

.split.i:                                         ; preds = %mi_theap_queue_first_update.exit81.thread, %mi_theap_queue_first_update.exit81
  %i.ec = phi ptr [ %i.cg, %mi_theap_queue_first_update.exit81.thread ], [ %i.eb, %mi_theap_queue_first_update.exit81 ]
  %i.ed = atomicrmw and ptr %i.ec, i64 -2 monotonic, align 8
  %i.ee = trunc i64 %i.ed to i1
  br i1 %i.ee, label %.thread.i, label %mi_page_set_in_full.exit

mi_page_flags_set.exit.i:                         ; preds = %mi_theap_queue_first_update.exit81
  %i.ef = atomicrmw or ptr %i.eb, i64 1 monotonic, align 8
  %i.eg = and i64 %i.ef, 1
  %.not15.i = icmp eq i64 %i.eg, 0
  br i1 %.not15.i, label %bb.af, label %mi_page_set_in_full.exit

bb.af:                                            ; preds = %mi_page_flags_set.exit.i
  %i.eh = load ptr, ptr %i.b, align 8, !tbaa !39  ; 2 uses
  %.not.i82 = icmp eq ptr %i.eh, null
  br i1 %.not.i82, label %mi_page_set_in_full.exit, label %bb.ag

.thread.i:                                        ; preds = %.split.i
  %i.ei = load ptr, ptr %i.b, align 8, !tbaa !39  ; 2 uses
  %.not12.i = icmp eq ptr %i.ei, null
  br i1 %.not12.i, label %mi_page_set_in_full.exit, label %.thread13.i

.thread13.i:                                      ; preds = %.thread.i
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 58
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !28
  %i.el = zext i16 %i.ek to i64
  %.val14.i = load i64, ptr %i.a, align 8, !tbaa !29
  %i.em = mul i64 %.val14.i, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 1240 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !51
  %i.ep = sub i64 %i.eo, %i.em
  store i64 %i.ep, ptr %i.en, align 8, !tbaa !51
  br label %mi_page_set_in_full.exit

bb.ag:                                            ; preds = %bb.af
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !29
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 58
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !28
  %i.es = zext i16 %i.er to i64
  %i.et = mul i64 %.val.i, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eh, i64 1240 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !51
  %i.ew = add i64 %i.et, %i.ev
  store i64 %i.ew, ptr %i.eu, align 8, !tbaa !51
  br label %mi_page_set_in_full.exit

mi_page_set_in_full.exit:                         ; preds = %.split.i, %mi_page_flags_set.exit.i, %bb.af, %.thread.i, %.thread13.i, %bb.ag
  ret void
}

declare zeroext i1 @_mi_os_commit(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nooutline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @mi_page_free_list_extend(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !66
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i16, ptr %i.d, align 8, !tbaa !37
  %i.f = zext i16 %i.e to i64                     ; 2 uses
  %i.g = mul i64 %1, %i.f                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.g ; 2 uses
  %i.i = add i64 %2, -1
  %i.j = add i64 %i.i, %i.f
  %i.k = mul i64 %i.j, %1                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.k ; 2 uses
  %.not24 = icmp samesign ugt i64 %i.g, %i.k
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.025 = phi ptr [ %i.m, %.lr.ph ], [ %i.h, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.025, i64 %1 ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64
  store i64 %i.n, ptr %.025, align 8, !tbaa !35
  %.not = icmp ugt ptr %i.m, %i.l
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !92

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !33
  %i.q = ptrtoint ptr %i.p to i64
  store i64 %i.q, ptr %i.l, align 8, !tbaa !35
  store ptr %i.h, ptr %i.o, align 8, !tbaa !33
  ret void
}

; Function Attrs: noinline nooutline nounwind uwtable
define internal fastcc ptr @mi_page_queue_find_free_ex(ptr noundef %0, ptr nofree noundef captures(address) %1, i1 noundef zeroext %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4080
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4088
  br label %tailrecurse

tailrecurse:                                      ; preds = %mi_page_fresh.exit, %bb.a
  %.tr107 = phi i1 [ %2, %bb.a ], [ false, %mi_page_fresh.exit ]
  %i.e = load i64, ptr %i.a, align 8, !tbaa !18
  %i.f = icmp ugt i64 %i.e, 10240
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.g = load i64, ptr %i.b, align 8, !tbaa !93
  br label %bb.c

bb.c:                                             ; preds = %tailrecurse, %bb.b
  %i.h = phi i64 [ %i.g, %bb.b ], [ 0, %tailrecurse ]
  %i.i = load ptr, ptr %1, align 8, !tbaa !55     ; 2 uses
  %.not113 = icmp eq ptr %i.i, null
  br i1 %.not113, label %mi_page_to_full.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %mi_page_to_full.exit
  %.056118 = phi ptr [ %i.k, %mi_page_to_full.exit ], [ %i.i, %bb.c ] ; 20 uses
  %.057117 = phi ptr [ %.360, %mi_page_to_full.exit ], [ null, %bb.c ] ; 14 uses
  %.062116 = phi i64 [ %.264, %mi_page_to_full.exit ], [ %i.h, %bb.c ] ; 3 uses
  %.065115 = phi i64 [ %.368, %mi_page_to_full.exit ], [ 0, %bb.c ]
  %.069114 = phi i64 [ %i.l, %mi_page_to_full.exit ], [ 0, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %.056118, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !54   ; 2 uses
  %i.l = add i64 %.069114, 1                      ; 3 uses
  %i.m = add nsw i64 %.065115, -1                 ; 9 uses
  %i.n = getelementptr i8, ptr %.056118, i64 16   ; 5 uses
  %.056.val80 = load ptr, ptr %i.n, align 8, !tbaa !33
  %.not102 = icmp eq ptr %.056.val80, null
  br i1 %.not102, label %bb.d, label %.thread

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.056118, i64 64 ; 4 uses
  %i.p = load atomic i64, ptr %i.o monotonic, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.0.i.i = phi i64 [ %i.p, %bb.d ], [ %i.v, %bb.f ] ; 3 uses
  %i.q = and i64 %.0.i.i, -2                      ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %mi_page_thread_free_collect.exit.i, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  %i.s = and i64 %.0.i.i, 1
  %i.t = cmpxchg weak ptr %i.o, i64 %.0.i.i, i64 %i.s acq_rel acquire, align 8 ; 2 uses
  %i.u = extractvalue { i64, i1 } %i.t, 1
  %i.v = extractvalue { i64, i1 } %i.t, 0
  br i1 %i.u, label %bb.g, label %bb.e, !llvm.loop !0

bb.g:                                             ; preds = %bb.f
  %i.w = inttoptr i64 %i.q to ptr
  tail call fastcc void @mi_page_thread_collect_to_local(ptr noundef nonnull %.056118, ptr noundef %i.w) #12
  br label %mi_page_thread_free_collect.exit.i

mi_page_thread_free_collect.exit.i:               ; preds = %bb.e, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.056118, i64 32 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !32   ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  %.056.val.pr = load ptr, ptr %i.n, align 8, !tbaa !33
  %.not103 = icmp eq ptr %.056.val.pr, null       ; 2 uses
  br i1 %.not.i, label %bb.h, label %3

3:                                                ; preds = %mi_page_thread_free_collect.exit.i
  br i1 %.not103, label %.sink.split.i, label %.thread, !prof !12

.sink.split.i:                                    ; preds = %3
  store ptr %i.y, ptr %i.n, align 8, !tbaa !33
  store ptr null, ptr %i.x, align 8, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %.056118, i64 63
  store i8 0, ptr %i.z, align 1, !tbaa !36
  br label %.thread

bb.h:                                             ; preds = %mi_page_thread_free_collect.exit.i
  br i1 %.not103, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr i8, ptr %.056118, i64 56
  %.056.val81 = load i16, ptr %i.aa, align 8, !tbaa !37
  %i.ab = getelementptr i8, ptr %.056118, i64 58
  %.056.val82 = load i16, ptr %i.ab, align 2, !tbaa !28
  %i.ac = icmp ult i16 %.056.val81, %.056.val82
  br i1 %i.ac, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = add nsw i64 %.062116, -1                ; 6 uses
  %i.ae = icmp slt i64 %.062116, 1
  br i1 %i.ae, label %bb.k, label %mi_page_to_full.exit

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr i8, ptr %.056118, i64 72
  %.val9.i = load ptr, ptr %i.af, align 8, !tbaa !39 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val9.i, i64 1305
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !63, !range !64, !noundef !65
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_mi_page_abandon(ptr noundef nonnull %.056118, ptr noundef nonnull %1) #12
  br label %mi_page_to_full.exit

bb.m:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %.056118, i64 8
  %i.ak = load atomic i64, ptr %i.aj monotonic, align 8
  %i.al = trunc i64 %i.ak to i1
  br i1 %i.al, label %mi_page_to_full.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %.val9.i, i64 3680
  tail call fastcc void @mi_page_queue_enqueue_from_ex(ptr noundef nonnull %i.am, ptr noundef nonnull %1, ptr noundef nonnull %.056118) #12
  %i.an = load atomic i64, ptr %i.o monotonic, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.0.i.i.i = phi i64 [ %i.an, %bb.n ], [ %i.at, %bb.p ] ; 3 uses
  %i.ao = and i64 %.0.i.i.i, -2                   ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %mi_page_thread_free_collect.exit.i.i, label %bb.p, !prof !12

bb.p:                                             ; preds = %bb.o
  %i.aq = and i64 %.0.i.i.i, 1
  %i.ar = cmpxchg weak ptr %i.o, i64 %.0.i.i.i, i64 %i.aq acq_rel acquire, align 8 ; 2 uses
  %i.as = extractvalue { i64, i1 } %i.ar, 1
  %i.at = extractvalue { i64, i1 } %i.ar, 0
  br i1 %i.as, label %bb.q, label %bb.o, !llvm.loop !0

bb.q:                                             ; preds = %bb.p
  %i.au = inttoptr i64 %i.ao to ptr
  tail call fastcc void @mi_page_thread_collect_to_local(ptr noundef nonnull %.056118, ptr noundef %i.au) #12
  br label %mi_page_thread_free_collect.exit.i.i

mi_page_thread_free_collect.exit.i.i:             ; preds = %bb.o, %bb.q
  %i.av = load ptr, ptr %i.x, align 8, !tbaa !32  ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i, label %mi_page_to_full.exit, label %bb.r

bb.r:                                             ; preds = %mi_page_thread_free_collect.exit.i.i
  %i.aw = load ptr, ptr %i.n, align 8, !tbaa !33
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.sink.split.i.i, label %mi_page_to_full.exit, !prof !12

.sink.split.i.i:                                  ; preds = %bb.r
  store ptr %i.av, ptr %i.n, align 8, !tbaa !33
  store ptr null, ptr %i.x, align 8, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %.056118, i64 63
  store i8 0, ptr %i.ay, align 1, !tbaa !36
  br label %mi_page_to_full.exit

.thread:                                          ; preds = %3, %.sink.split.i, %.lr.ph, %bb.i, %bb.h
  %.055.in88 = phi i1 [ true, %.lr.ph ], [ false, %bb.i ], [ true, %bb.h ], [ true, %.sink.split.i ], [ true, %3 ]
  %i.az = icmp eq ptr %.057117, null
  br i1 %i.az, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread
  %i.ba = tail call i64 @_mi_option_get_fast(i32 noundef 37) #11
  br label %bb.y

bb.t:                                             ; preds = %.thread
  %i.bb = getelementptr i8, ptr %.057117, i64 24
  %.057.val = load i64, ptr %i.bb, align 8, !tbaa !38 ; 2 uses
  %i.bc = icmp eq i64 %.057.val, 0
  br i1 %i.bc, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bd = getelementptr inbounds nuw i8, ptr %.057117, i64 8 ; 3 uses
  %i.be = atomicrmw and ptr %i.bd, i64 -3 monotonic, align 8 ; 0 uses
  tail call fastcc void @mi_page_queue_remove(ptr noundef nonnull %1, ptr noundef nonnull %.057117) #12
  %i.bf = getelementptr i8, ptr %.057117, i64 72  ; 2 uses
  %.val.i = load ptr, ptr %i.bf, align 8, !tbaa !39
  store ptr null, ptr %i.bf, align 8, !tbaa !39
  %i.bg = load atomic i64, ptr %i.bd monotonic, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %.0.i.i85 = phi i64 [ %i.bg, %bb.u ], [ %i.bk, %bb.v ] ; 2 uses
  %i.bh = and i64 %.0.i.i85, 3
  %i.bi = cmpxchg weak ptr %i.bd, i64 %.0.i.i85, i64 %i.bh release monotonic, align 8 ; 2 uses
  %i.bj = extractvalue { i64, i1 } %i.bi, 1
  %i.bk = extractvalue { i64, i1 } %i.bi, 0
  br i1 %i.bj, label %_mi_page_free.exit, label %bb.v, !llvm.loop !2

_mi_page_free.exit:                               ; preds = %bb.v
  tail call void @_mi_arenas_page_free(ptr noundef nonnull %.057117, ptr noundef %.val.i) #11
  br label %bb.y

bb.w:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %.056118, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !38 ; 2 uses
  %.not73 = icmp ult i64 %i.bm, %.057.val
  br i1 %.not73, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bn = getelementptr i8, ptr %.056118, i64 58
  %.056.val84 = load i16, ptr %i.bn, align 2, !tbaa !28 ; 2 uses
  %i.bo = zext i16 %.056.val84 to i64
  %i.bp = sub i64 %i.bo, %i.bm
  %i.bq = lshr i16 %.056.val84, 3
  %i.br = zext nneg i16 %i.bq to i64
  %.not104 = icmp ugt i64 %i.bp, %i.br
  %spec.select = select i1 %.not104, ptr %.056118, ptr %.057117
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_mi_page_free.exit, %bb.w, %bb.s
  %.166 = phi i64 [ %i.ba, %bb.s ], [ %i.m, %_mi_page_free.exit ], [ %i.m, %bb.x ], [ %i.m, %bb.w ] ; 2 uses
  %.158 = phi ptr [ %.056118, %bb.s ], [ %.056118, %_mi_page_free.exit ], [ %spec.select, %bb.x ], [ %.057117, %bb.w ] ; 2 uses
  %i.bs = icmp slt i64 %.166, 1
  %or.cond = select i1 %.055.in88, i1 true, i1 %i.bs
  br i1 %or.cond, label %mi_page_to_full.exit.thread, label %mi_page_to_full.exit

mi_page_to_full.exit:                             ; preds = %bb.y, %.sink.split.i.i, %bb.r, %mi_page_thread_free_collect.exit.i.i, %bb.m, %bb.l, %bb.j
  %.368 = phi i64 [ %.166, %bb.y ], [ %i.m, %bb.j ], [ %i.m, %bb.l ], [ %i.m, %bb.m ], [ %i.m, %mi_page_thread_free_collect.exit.i.i ], [ %i.m, %bb.r ], [ %i.m, %.sink.split.i.i ]
  %.264 = phi i64 [ %.062116, %bb.y ], [ %i.ad, %bb.j ], [ %i.ad, %bb.l ], [ %i.ad, %bb.m ], [ %i.ad, %mi_page_thread_free_collect.exit.i.i ], [ %i.ad, %bb.r ], [ %i.ad, %.sink.split.i.i ]
  %.360 = phi ptr [ %.158, %bb.y ], [ %.057117, %bb.j ], [ %.057117, %bb.l ], [ %.057117, %bb.m ], [ %.057117, %mi_page_thread_free_collect.exit.i.i ], [ %.057117, %bb.r ], [ %.057117, %.sink.split.i.i ] ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %mi_page_to_full.exit.thread, label %.lr.ph

mi_page_to_full.exit.thread:                      ; preds = %mi_page_to_full.exit, %bb.y, %bb.c
  %.170 = phi i64 [ 0, %bb.c ], [ %i.l, %bb.y ], [ %i.l, %mi_page_to_full.exit ]
  %.461 = phi ptr [ null, %bb.c ], [ %.360, %mi_page_to_full.exit ], [ %.158, %bb.y ] ; 2 uses
  %.2 = phi ptr [ null, %bb.c ], [ null, %mi_page_to_full.exit ], [ %.056118, %bb.y ]
  tail call void @__mi_stat_counter_increase(ptr noundef nonnull %i.c, i64 noundef %.170) #11
  tail call void @__mi_stat_counter_increase(ptr noundef nonnull %i.d, i64 noundef 1) #11
  %.not74 = icmp eq ptr %.461, null
  %spec.select76 = select i1 %.not74, ptr %.2, ptr %.461 ; 8 uses
  %.not75 = icmp eq ptr %spec.select76, null
  br i1 %.not75, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %mi_page_to_full.exit.thread
  %i.bt = getelementptr i8, ptr %spec.select76, i64 16
  %spec.select76.val = load ptr, ptr %i.bt, align 8, !tbaa !33
  %.not105 = icmp eq ptr %spec.select76.val, null
  br i1 %.not105, label %bb.aa, label %select.unfold96

bb.aa:                                            ; preds = %bb.z
  %i.bu = tail call fastcc zeroext i1 @mi_page_extend_free(ptr noundef nonnull %0, ptr noundef nonnull %spec.select76) #12
  br i1 %i.bu, label %select.unfold96, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %mi_page_to_full.exit.thread
  tail call void @_mi_theap_collect_retired(ptr noundef nonnull %0, i1 noundef zeroext false) #12
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !18
  %i.bw = tail call ptr @_mi_arenas_page_alloc(ptr noundef nonnull %0, i64 noundef %i.bv, i64 noundef 0) #11 ; 12 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %mi_page_fresh.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.bz = load atomic i64, ptr %i.by monotonic, align 8
  %i.ca = and i64 %i.bz, -4
  %i.cb = icmp ult i64 %i.ca, 5
  br i1 %i.cb, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  tail call void @_mi_theap_page_reclaim(ptr noundef nonnull %0, ptr noundef nonnull %i.bw) #12
  %i.cc = getelementptr i8, ptr %i.bw, i64 16
  %.val.i.i = load ptr, ptr %i.cc, align 8, !tbaa !33
  %.not22.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not22.i.i, label %bb.ae, label %mi_page_fresh.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.cd = getelementptr i8, ptr %i.bw, i64 56
  %.val20.i.i = load i16, ptr %i.cd, align 8, !tbaa !37
  %i.ce = getelementptr i8, ptr %i.bw, i64 58
  %.val21.i.i = load i16, ptr %i.ce, align 2, !tbaa !28
  %i.cf = icmp ult i16 %.val20.i.i, %.val21.i.i
  br i1 %i.cf, label %bb.af, label %mi_page_fresh.exit

bb.af:                                            ; preds = %bb.ae
  %i.cg = tail call fastcc zeroext i1 @mi_page_extend_free(ptr noundef nonnull %0, ptr noundef nonnull %i.bw) #12
  br i1 %i.cg, label %mi_page_fresh.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @_mi_page_abandon(ptr noundef nonnull %i.bw, ptr noundef nonnull %1) #12
  br label %mi_page_fresh.exit

bb.ah:                                            ; preds = %bb.ac
  tail call fastcc void @mi_page_queue_push(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.bw) #12
  br label %mi_page_fresh.exit.thread

mi_page_fresh.exit:                               ; preds = %bb.ab, %bb.ae, %bb.ag
  br i1 %.tr107, label %tailrecurse, label %mi_page_fresh.exit.thread

select.unfold96:                                  ; preds = %bb.aa, %bb.z
  %i.ch = load ptr, ptr %1, align 8, !tbaa !55
  %i.ci = icmp eq ptr %i.ch, %spec.select76
  br i1 %i.ci, label %mi_page_queue_move_to_front.exit, label %bb.ai

bb.ai:                                            ; preds = %select.unfold96
  tail call fastcc void @mi_page_queue_remove(ptr noundef nonnull %1, ptr noundef nonnull %spec.select76) #12
  tail call fastcc void @mi_page_queue_push(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %spec.select76) #12
  br label %mi_page_queue_move_to_front.exit

mi_page_queue_move_to_front.exit:                 ; preds = %select.unfold96, %bb.ai
  %i.cj = getelementptr inbounds nuw i8, ptr %spec.select76, i64 62
  store i8 0, ptr %i.cj, align 2, !tbaa !60
  br label %mi_page_fresh.exit.thread

mi_page_fresh.exit.thread:                        ; preds = %bb.ad, %bb.af, %mi_page_fresh.exit, %bb.ah, %mi_page_queue_move_to_front.exit
  %.5 = phi ptr [ %spec.select76, %mi_page_queue_move_to_front.exit ], [ %i.bw, %bb.ah ], [ %i.bw, %bb.af ], [ null, %mi_page_fresh.exit ], [ %i.bw, %bb.ad ]
  ret ptr %.5
}

declare i64 @_mi_option_get_fast(i32 noundef) local_unnamed_addr #2

declare ptr @_mi_arenas_page_alloc(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nooutline norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mi_page_queue_push(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1, ptr noundef nonnull %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !tbaa !18
  %i.b = icmp eq i64 %.val, 524304
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %i.b, label %mi_page_flags_set.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.a
  %i.d = atomicrmw and ptr %i.c, i64 -2 monotonic, align 8
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %.thread.i, label %mi_page_set_in_full.exit

mi_page_flags_set.exit.i:                         ; preds = %bb.a
  %i.f = atomicrmw or ptr %i.c, i64 1 monotonic, align 8
  %i.g = and i64 %i.f, 1
  %.not15.i = icmp eq i64 %i.g, 0
  br i1 %.not15.i, label %bb.b, label %mi_page_set_in_full.exit

bb.b:                                             ; preds = %mi_page_flags_set.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39   ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %mi_page_set_in_full.exit, label %bb.c

.thread.i:                                        ; preds = %.split.i
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39   ; 2 uses
  %.not12.i = icmp eq ptr %i.k, null
  br i1 %.not12.i, label %mi_page_set_in_full.exit, label %.thread13.i

.thread13.i:                                      ; preds = %.thread.i
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 58
  %i.m = load i16, ptr %i.l, align 2, !tbaa !28
  %i.n = zext i16 %i.m to i64
  %i.o = getelementptr i8, ptr %2, i64 40
  %.val14.i = load i64, ptr %i.o, align 8, !tbaa !29
  %i.p = mul i64 %.val14.i, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 1240 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !51
  %i.s = sub i64 %i.r, %i.p
  store i64 %i.s, ptr %i.q, align 8, !tbaa !51
  br label %mi_page_set_in_full.exit

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %2, i64 40
  %.val.i = load i64, ptr %i.t, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 58
  %i.v = load i16, ptr %i.u, align 2, !tbaa !28
  %i.w = zext i16 %i.v to i64
  %i.x = mul i64 %.val.i, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 1240 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !51
  %i.aa = add i64 %i.x, %i.z
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !51
  br label %mi_page_set_in_full.exit

mi_page_set_in_full.exit:                         ; preds = %.split.i, %mi_page_flags_set.exit.i, %bb.b, %.thread.i, %.thread13.i, %bb.c
  %i.ab = load ptr, ptr %1, align 8, !tbaa !55    ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 96
  store ptr null, ptr %i.ad, align 8, !tbaa !53
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %mi_page_set_in_full.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  store ptr %2, ptr %i.ae, align 8, !tbaa !53
  br label %bb.f

bb.e:                                             ; preds = %mi_page_set_in_full.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.af, align 8, !tbaa !52
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %2, ptr %1, align 8, !tbaa !55
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !56
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !56
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !18  ; 4 uses
  %i.ak = icmp ugt i64 %i.aj, 1024
  br i1 %i.ak, label %mi_theap_queue_first_update.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = add nuw nsw i64 %i.aj, 7
  %i.am = lshr i64 %i.al, 3                       ; 8 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !19
  %i.ap = icmp eq ptr %i.ao, %2
  br i1 %i.ap, label %mi_theap_queue_first_update.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = icmp samesign ult i64 %i.aj, 9
  br i1 %i.aq, label %.lr.ph.preheader.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = icmp samesign ult i64 %i.aj, 65
  br i1 %i.ar, label %bb.j, label %bb.k, !prof !12

bb.j:                                             ; preds = %bb.i
  %i.as = add nuw nsw i64 %i.am, 1
  %i.at = and i64 %i.as, 30
  br label %mi_bin.exit.i

bb.k:                                             ; preds = %bb.i
  %i.au = add nsw i64 %i.am, -1                   ; 2 uses
  %i.av = tail call range(i64 48, 61) i64 @llvm.ctlz.i64(i64 range(i64 8, 65536) %i.au, i1 true) ; 2 uses
  %i.aw = shl nuw nsw i64 %i.av, 2
  %i.ax = sub nuw nsw i64 61, %i.av
  %i.ay = lshr i64 %i.au, %i.ax
  %i.az = and i64 %i.ay, 3
  %i.ba = or disjoint i64 %i.az, %i.aw
  %i.bb = xor i64 %i.ba, 252
  %i.bc = add nsw i64 %i.bb, -3
  br label %mi_bin.exit.i

mi_bin.exit.i:                                    ; preds = %bb.k, %bb.j
  %.0.i.i = phi i64 [ %i.at, %bb.j ], [ %i.bc, %bb.k ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1312
  br label %bb.l

bb.l:                                             ; preds = %mi_bin.exit37.i, %mi_bin.exit.i
  %.pn.i = phi ptr [ %1, %mi_bin.exit.i ], [ %.027.i, %mi_bin.exit37.i ] ; 2 uses
  %.027.i = getelementptr inbounds i8, ptr %.pn.i, i64 -32 ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !18
  %i.bg = add i64 %i.bf, 7                        ; 4 uses
  %i.bh = lshr i64 %i.bg, 3                       ; 4 uses
  %i.bi = icmp ult i64 %i.bg, 72
  br i1 %i.bi, label %bb.m, label %bb.n, !prof !12

bb.m:                                             ; preds = %bb.l
  %i.bj = add nuw nsw i64 %i.bh, 1
  %i.bk = and i64 %i.bj, 30
  %.inv.i36.i = icmp samesign ugt i64 %i.bg, 15
  %i.bl = select i1 %.inv.i36.i, i64 %i.bk, i64 1
  br label %mi_bin.exit37.i

bb.n:                                             ; preds = %bb.l
  %i.bm = icmp ugt i64 %i.bg, 524295
  br i1 %i.bm, label %mi_bin.exit37.i, label %bb.o, !prof !13

bb.o:                                             ; preds = %bb.n
  %i.bn = add nsw i64 %i.bh, -1                   ; 2 uses
  %i.bo = tail call range(i64 48, 61) i64 @llvm.ctlz.i64(i64 range(i64 8, 65536) %i.bn, i1 true) ; 2 uses
  %i.bp = shl nuw nsw i64 %i.bo, 2
  %i.bq = sub nuw nsw i64 61, %i.bo
  %i.br = lshr i64 %i.bn, %i.bq
  %i.bs = and i64 %i.br, 3
  %i.bt = or disjoint i64 %i.bs, %i.bp
  %i.bu = xor i64 %i.bt, 252
  %i.bv = add nsw i64 %i.bu, -3
  br label %mi_bin.exit37.i

mi_bin.exit37.i:                                  ; preds = %bb.o, %bb.n, %bb.m
  %.0.i35.i = phi i64 [ %i.bl, %bb.m ], [ %i.bv, %bb.o ], [ 73, %bb.n ]
  %i.bw = icmp eq i64 %.0.i.i, %.0.i35.i
  %i.bx = icmp ugt ptr %.027.i, %i.bd
  %i.by = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %i.by, label %bb.l, label %bb.p, !llvm.loop !3

bb.p:                                             ; preds = %mi_bin.exit37.i
  %i.bz = add nuw nsw i64 %i.bh, 1
  %.not.i17 = icmp samesign ult i64 %i.bh, %i.am
  %spec.select.i = select i1 %.not.i17, i64 %i.bz, i64 %i.am ; 2 uses
  %.not3438.i = icmp samesign ugt i64 %spec.select.i, %i.am
  br i1 %.not3438.i, label %mi_theap_queue_first_update.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.p, %bb.h
  %.146.i = phi i64 [ %spec.select.i, %bb.p ], [ 0, %bb.h ] ; 4 uses
  %i.ca = add nuw nsw i64 %i.am, 1
  %i.cb = sub nsw i64 %i.ca, %.146.i              ; 3 uses
  %min.iters.check = icmp ult i64 %i.cb, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.cb, -4                      ; 3 uses
  %i.cc = add i64 %.146.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %2, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.146.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %index ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.ce, align 8, !tbaa !19
  store <2 x ptr> %broadcast.splat, ptr %i.cf, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %mi_theap_queue_first_update.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.039.i.ph = phi i64 [ %.146.i, %.lr.ph.preheader.i ], [ %i.cc, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.039.i = phi i64 [ %i.ci, %.lr.ph.i ], [ %.039.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.039.i
  store ptr %2, ptr %i.ch, align 8, !tbaa !19
  %i.ci = add nuw nsw i64 %.039.i, 1
  %exitcond.not.i = icmp eq i64 %.039.i, %i.am
  br i1 %exitcond.not.i, label %mi_theap_queue_first_update.exit, label %.lr.ph.i, !llvm.loop !95

mi_theap_queue_first_update.exit:                 ; preds = %.lr.ph.i, %middle.block, %bb.f, %bb.g, %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !59
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !59
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define internal fastcc ptr @mi_find_page(ptr noundef nonnull %0, i64 noundef %1, i64 noundef range(i64 0, -1) %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 75, ptr noundef nonnull @.str.3, i64 noundef %1) #11
  br label %mi_page_queue_find_free.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  %i.b = select i1 %.not, i64 %1, i64 524289      ; 4 uses
  %i.c = add nuw i64 %i.b, 7
  %i.d = lshr i64 %i.c, 3                         ; 2 uses
  %i.e = icmp samesign ult i64 %i.b, 65
  br i1 %i.e, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.f = add nuw nsw i64 %i.d, 1
  %i.g = and i64 %i.f, 30
  %.inv.i.i.i = icmp samesign ugt i64 %i.b, 8
  %i.h = select i1 %.inv.i.i.i, i64 %i.g, i64 1
  br label %mi_page_queue.exit

bb.e:                                             ; preds = %bb.c
  %i.i = icmp samesign ugt i64 %i.b, 524288
  br i1 %i.i, label %mi_page_queue.exit, label %bb.f, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.j = add nsw i64 %i.d, -1                     ; 2 uses
  %i.k = tail call range(i64 48, 61) i64 @llvm.ctlz.i64(i64 range(i64 8, 65536) %i.j, i1 true) ; 2 uses
  %i.l = shl nuw nsw i64 %i.k, 2
  %i.m = sub nuw nsw i64 61, %i.k
  %i.n = lshr i64 %i.j, %i.m
  %i.o = and i64 %i.n, 3
  %i.p = or disjoint i64 %i.o, %i.l
  %i.q = xor i64 %i.p, 252
  %i.r = add nsw i64 %i.q, -3
  br label %mi_page_queue.exit

mi_page_queue.exit:                               ; preds = %bb.d, %bb.e, %bb.f
  %.0.i.i.i = phi i64 [ %i.h, %bb.d ], [ %i.r, %bb.f ], [ 73, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %.0.i.i.i ; 4 uses
  %i.u = getelementptr i8, ptr %i.t, i64 24
  %.val = load i64, ptr %i.u, align 8, !tbaa !18
  %i.v = icmp eq i64 %.val, 524296
  br i1 %i.v, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %mi_page_queue.exit
  %i.w = tail call fastcc ptr @mi_huge_page_alloc(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull %i.t) #12
  br label %mi_page_queue_find_free.exit

bb.h:                                             ; preds = %mi_page_queue.exit
  %.val.i = load ptr, ptr %i.t, align 8, !tbaa !55 ; 6 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %bb.l, label %bb.i, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !33
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %bb.j, label %mi_page_queue_lookup_free_first.exit.i, !prof !13

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !32  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.l, label %bb.k, !prof !67

bb.k:                                             ; preds = %bb.j
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !33
  store ptr null, ptr %i.z, align 8, !tbaa !32
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i, i64 63
  store i8 0, ptr %i.ac, align 1, !tbaa !36
  br label %mi_page_queue_lookup_free_first.exit.i

mi_page_queue_lookup_free_first.exit.i:           ; preds = %bb.k, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i, i64 62
  store i8 0, ptr %i.ad, align 2, !tbaa !60
  br label %mi_page_queue_find_free.exit

bb.l:                                             ; preds = %bb.j, %bb.h
  %i.ae = tail call fastcc ptr @mi_page_queue_find_free_ex(ptr noundef nonnull %0, ptr noundef nonnull %i.t, i1 noundef zeroext true) #12
  br label %mi_page_queue_find_free.exit

mi_page_queue_find_free.exit:                     ; preds = %bb.g, %mi_page_queue_lookup_free_first.exit.i, %bb.l, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ %i.w, %bb.g ], [ %i.ae, %bb.l ], [ %.val.i, %mi_page_queue_lookup_free_first.exit.i ]
  ret ptr %.1
}

declare void @mi_theap_collect(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @_mi_thread_init() local_unnamed_addr #2

declare i64 @mi_option_get_clamp(i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nooutline nounwind uwtable
define internal fastcc ptr @mi_huge_page_alloc(ptr noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef range(i64 0, -1) %2, ptr nofree noundef captures(address) %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @_mi_os_good_alloc_size(i64 noundef %1) #11
  %i.b = tail call ptr @_mi_arenas_page_alloc(ptr noundef nonnull %0, i64 noundef %i.a, i64 noundef range(i64 0, -1) %2) #11 ; 11 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %mi_page_fresh_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load atomic i64, ptr %i.d monotonic, align 8
  %i.f = and i64 %i.e, -4
  %i.g = icmp ult i64 %i.f, 5
  br i1 %i.g, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  tail call void @_mi_theap_page_reclaim(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #12
  %i.h = getelementptr i8, ptr %i.b, i64 16
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !33
  %.not22.i = icmp eq ptr %.val.i, null
  br i1 %.not22.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.b, i64 56
  %.val20.i = load i16, ptr %i.i, align 8, !tbaa !37
  %i.j = getelementptr i8, ptr %i.b, i64 58
  %.val21.i = load i16, ptr %i.j, align 2, !tbaa !28
  %i.k = icmp ult i16 %.val20.i, %.val21.i
  br i1 %i.k, label %bb.e, label %mi_page_fresh_alloc.exit

bb.e:                                             ; preds = %bb.d
  %i.l = tail call fastcc zeroext i1 @mi_page_extend_free(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #12
  br i1 %i.l, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_mi_page_abandon(ptr noundef nonnull %i.b, ptr noundef %3) #12
  br label %mi_page_fresh_alloc.exit

bb.g:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @mi_page_queue_push(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %i.b) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.c, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3936
  %i.n = getelementptr i8, ptr %i.b, i64 40
  %.val = load i64, ptr %i.n, align 8, !tbaa !29
  tail call void @__mi_stat_increase(ptr noundef nonnull %i.m, i64 noundef %.val) #11
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4032
  tail call void @__mi_stat_counter_increase(ptr noundef nonnull %i.o, i64 noundef 1) #11
  br label %mi_page_fresh_alloc.exit

mi_page_fresh_alloc.exit:                         ; preds = %bb.f, %bb.d, %bb.a, %bb.i
  %.0.i12 = phi ptr [ %i.b, %bb.i ], [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.f ]
  ret ptr %.0.i12
}

declare i64 @_mi_os_good_alloc_size(i64 noundef) local_unnamed_addr #2

declare void @__mi_stat_increase(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { mustprogress nofree nooutline norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nooutline nounwind uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nooutline norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nooutline norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nooutline norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nooutline nounwind uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree noinline nooutline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind "no-builtin-malloc" }
attributes #12 = { "no-builtin-malloc" }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !20}
!1 = distinct !{!1, !20}
!2 = distinct !{!2, !20}
!3 = distinct !{!3, !20}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"p1 _ZTS9mi_page_s", !14, i64 0}
!16 = !{!"long", !8, i64 0}
!17 = !{!"mi_page_queue_s", !15, i64 0, !15, i64 8, !16, i64 16, !16, i64 24}
!18 = !{!17, !16, i64 24}
!19 = !{!15, !15, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"p1 _ZTS10mi_block_s", !14, i64 0}
!22 = !{!"short", !8, i64 0}
!23 = !{!"_Bool", !8, i64 0}
!24 = !{!"p1 _ZTS10mi_theap_s", !14, i64 0}
!25 = !{!"p1 _ZTS9mi_heap_s", !14, i64 0}
!26 = !{!"mi_memid_s", !8, i64 0, !9, i64 16, !23, i64 20, !23, i64 21, !23, i64 22}
!27 = !{!"mi_page_s", !8, i64 0, !8, i64 8, !21, i64 16, !16, i64 24, !21, i64 32, !16, i64 40, !16, i64 48, !22, i64 56, !22, i64 58, !22, i64 60, !8, i64 62, !23, i64 63, !8, i64 64, !24, i64 72, !25, i64 80, !15, i64 88, !15, i64 96, !26, i64 104}
!28 = !{!27, !22, i64 58}
!29 = !{!27, !16, i64 40}
!30 = !{!27, !9, i64 120}
!31 = !{!8, !8, i64 0}
!32 = !{!27, !21, i64 32}
!33 = !{!27, !21, i64 16}
!34 = !{!"mi_block_s", !16, i64 0}
!35 = !{!34, !16, i64 0}
!36 = !{!27, !23, i64 63}
!37 = !{!27, !22, i64 56}
!38 = !{!27, !16, i64 24}
!39 = !{!27, !24, i64 72}
!40 = !{!"p1 _ZTS8mi_tld_s", !14, i64 0}
!41 = !{!"long long", !8, i64 0}
!42 = !{!"mi_random_cxt_s", !8, i64 0, !8, i64 64, !9, i64 128, !23, i64 132}
!43 = !{!"mi_stat_count_s", !16, i64 0, !16, i64 8, !16, i64 16}
!44 = !{!"mi_stat_counter_s", !16, i64 0}
!45 = !{!"mi_stats_s", !16, i64 0, !16, i64 8, !43, i64 16, !43, i64 40, !43, i64 64, !44, i64 88, !44, i64 96, !43, i64 104, !43, i64 128, !43, i64 152, !43, i64 176, !43, i64 200, !43, i64 224, !44, i64 248, !44, i64 256, !44, i64 264, !44, i64 272, !44, i64 280, !44, i64 288, !44, i64 296, !44, i64 304, !44, i64 312, !44, i64 320, !44, i64 328, !44, i64 336, !44, i64 344, !44, i64 352, !43, i64 360, !43, i64 384, !43, i64 408, !43, i64 432, !43, i64 456, !43, i64 480, !44, i64 504, !44, i64 512, !44, i64 520, !44, i64 528, !44, i64 536, !8, i64 544, !8, i64 640, !8, i64 672, !8, i64 2448, !8, i64 4224}
!46 = !{!"mi_theap_s", !8, i64 0, !40, i64 1032, !8, i64 1040, !8, i64 1048, !8, i64 1056, !41, i64 1064, !16, i64 1072, !42, i64 1080, !16, i64 1216, !16, i64 1224, !16, i64 1232, !16, i64 1240, !16, i64 1248, !16, i64 1256, !24, i64 1264, !24, i64 1272, !24, i64 1280, !24, i64 1288, !16, i64 1296, !23, i64 1304, !23, i64 1305, !23, i64 1306, !8, i64 1312, !26, i64 3712, !45, i64 3736}
!47 = !{!46, !40, i64 1032}
!48 = !{!"p1 _ZTS12mi_subproc_s", !14, i64 0}
!49 = !{!"mi_lock_s", !8, i64 0}
!50 = !{!"mi_tld_s", !16, i64 0, !16, i64 8, !9, i64 16, !48, i64 24, !24, i64 32, !49, i64 40, !23, i64 80, !23, i64 81, !26, i64 88}
!51 = !{!46, !16, i64 1240}
!52 = !{!17, !15, i64 8}
!53 = !{!27, !15, i64 96}
!54 = !{!27, !15, i64 88}
!55 = !{!17, !15, i64 0}
!56 = !{!17, !16, i64 16}
!57 = !{!"llvm.loop.isvectorized", i32 1}
!58 = !{!"llvm.loop.unroll.runtime.disable"}
!59 = !{!46, !16, i64 1216}
!60 = !{!27, !8, i64 62}
!61 = !{!46, !16, i64 1224}
!62 = !{!46, !16, i64 1232}
!63 = !{!46, !23, i64 1305}
!64 = !{i8 0, i8 2}
!65 = !{}
!66 = !{!27, !16, i64 48}
!67 = !{!"branch_weights", i32 1073205, i32 2146410443}
!68 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!69 = !{!46, !16, i64 1248}
!70 = distinct !{!70, !20}
!71 = distinct !{!71, !20}
!72 = distinct !{!72, !20, !57, !58}
!73 = distinct !{!73, !20, !58, !57}
!74 = !{!50, !16, i64 0}
!75 = distinct !{!75, !20, !57, !58}
!76 = distinct !{!76, !20, !58, !57}
!77 = distinct !{!77, !20}
!78 = distinct !{!78, !20, !57, !58}
!79 = distinct !{!79, !20, !58, !57}
!80 = distinct !{!80, !20}
!81 = distinct !{!81, !20}
!82 = !{!27, !22, i64 60}
!83 = !{!46, !41, i64 1064}
!84 = !{!50, !23, i64 80}
!85 = !{!"branch_weights", i32 2000, i32 2002}
!86 = !{!46, !16, i64 1256}
!87 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!88 = distinct !{!88, !20, !57, !58}
!89 = distinct !{!89, !20, !58, !57}
!90 = distinct !{!90, !20, !57, !58}
!91 = distinct !{!91, !20, !58, !57}
!92 = distinct !{!92, !20}
!93 = !{!46, !16, i64 1296}
!94 = distinct !{!94, !20, !57, !58}
!95 = distinct !{!95, !20, !58, !57}
end_hunk_0
