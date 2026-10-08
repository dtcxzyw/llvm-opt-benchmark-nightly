Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mimalloc/original/page?download=true
inline.NumInlined: 156
inline.NumDeleted: 67
begin_hunk_0_@_mi_page_free_collect_partly:bb.a
.sink.split.i:                                    ; preds = %bb.o
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !33
  store ptr null, ptr %i.an, align 8, !tbaa !32
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 0, ptr %i.as, align 1, !tbaa !36
  br label %_mi_page_free_collect.exit

_mi_page_free_collect.exit:                       ; preds = %.sink.split.i, %mi_page_thread_free_collect.exit.i, %bb.o, %bb.j, %bb.a
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define internal fastcc void @mi_page_thread_collect_to_local(ptr nofree noundef captures(none) %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i16, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = zext i16 %i.b to i64                     ; 2 uses
  %.0.val23 = load i64, ptr %1, align 8, !tbaa !35 ; 2 uses
  %i.d = icmp ne i64 %.0.val23, 0
  %i.e = icmp ne i16 %i.b, 0
  %i.f = select i1 %i.d, i1 %i.e, i1 false
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.val25 = phi i64 [ %.0.val, %.lr.ph ], [ %.0.val23, %bb.a ]
  %.02024 = phi i64 [ %i.h, %.lr.ph ], [ 1, %bb.a ] ; 2 uses
  %i.g = inttoptr i64 %.0.val25 to ptr            ; 2 uses
  %i.h = add nuw nsw i64 %.02024, 1               ; 2 uses
  %.0.val = load i64, ptr %i.g, align 8, !tbaa !35 ; 2 uses
  %i.i = icmp ne i64 %.0.val, 0
  %i.j = icmp samesign ult i64 %.02024, %i.c
  %i.k = select i1 %i.i, i1 %i.j, i1 false
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !1

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.020.lcssa = phi i64 [ 1, %bb.a ], [ %i.h, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.g, %.lr.ph ]
  %i.l = icmp samesign ugt i64 %.020.lcssa, %i.c
  br i1 %i.l, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %._crit_edge
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str) #11
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !38   ; 2 uses
  %i.o = icmp ugt i64 %.020.lcssa, %i.n
  br i1 %i.o, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.1) #11
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !32
  %i.r = ptrtoint ptr %i.q to i64
  store i64 %i.r, ptr %.0.lcssa, align 8, !tbaa !35
  store ptr %1, ptr %i.p, align 8, !tbaa !32
  %i.s = sub nuw i64 %i.n, %.020.lcssa
  store i64 %i.s, ptr %i.m, align 8, !tbaa !38
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define hidden void @_mi_theap_page_reclaim(ptr noundef %0, ptr noundef initializes((72, 80)) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !39
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.e = load i64, ptr %i.d, align 8, !tbaa !74
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.h = load atomic i64, ptr %i.g monotonic, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i64 [ %i.h, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  %i.i = and i64 %.0.i, 3
  %i.j = or i64 %i.i, %i.f
  %i.k = cmpxchg weak ptr %i.g, i64 %.0.i, i64 %i.j release monotonic, align 8 ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  %i.m = extractvalue { i64, i1 } %i.k, 0
  br i1 %i.l, label %mi_page_set_theap.exit, label %bb.d, !llvm.loop !2

mi_page_set_theap.exit:                           ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.o = load atomic i64, ptr %i.n monotonic, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %mi_page_set_theap.exit
  %.0.i.i = phi i64 [ %i.o, %mi_page_set_theap.exit ], [ %i.u, %bb.f ] ; 3 uses
  %i.p = and i64 %.0.i.i, -2                      ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %mi_page_thread_free_collect.exit.i, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  %i.r = and i64 %.0.i.i, 1
  %i.s = cmpxchg weak ptr %i.n, i64 %.0.i.i, i64 %i.r acq_rel acquire, align 8 ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  %i.u = extractvalue { i64, i1 } %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.e, !llvm.loop !0

bb.g:                                             ; preds = %bb.f
  %i.v = inttoptr i64 %i.p to ptr
  tail call fastcc void @mi_page_thread_collect_to_local(ptr noundef %1, ptr noundef %i.v) #12
  br label %mi_page_thread_free_collect.exit.i

mi_page_thread_free_collect.exit.i:               ; preds = %bb.e, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32   ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_mi_page_free_collect.exit, label %bb.h

bb.h:                                             ; preds = %mi_page_thread_free_collect.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !33
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.sink.split.i, label %_mi_page_free_collect.exit, !prof !12

.sink.split.i:                                    ; preds = %bb.h
  store ptr %i.x, ptr %i.y, align 8, !tbaa !33
  store ptr null, ptr %i.w, align 8, !tbaa !32
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 63
  store i8 0, ptr %i.ab, align 1, !tbaa !36
  br label %_mi_page_free_collect.exit

_mi_page_free_collect.exit:                       ; preds = %bb.h, %mi_page_thread_free_collect.exit.i, %.sink.split.i
  %i.ac = load atomic i64, ptr %i.g monotonic, align 8
  %i.ad = trunc i64 %i.ac to i1
  br i1 %i.ad, label %mi_theap_page_queue_of.exit, label %bb.i

bb.i:                                             ; preds = %_mi_page_free_collect.exit
  %i.ae = getelementptr i8, ptr %1, i64 58
  %.val.i.i.i = load i16, ptr %i.ae, align 2, !tbaa !28
  %i.af = icmp eq i16 %.val.i.i.i, 1
  %i.ag = getelementptr i8, ptr %1, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !29 ; 2 uses
  br i1 %i.af, label %bb.j, label %mi_page_is_huge.exit.thread.i.i

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp ugt i64 %i.ah, 524288
  br i1 %i.ai, label %mi_theap_page_queue_of.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !30
  %i.al = add i32 %i.ak, -3
  %i.am = icmp ult i32 %i.al, 3
  br i1 %i.am, label %mi_page_is_huge.exit.i.i, label %mi_page_is_huge.exit.thread.i.i

mi_page_is_huge.exit.i.i:                         ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !31
  %i.ap = icmp ult ptr %i.ao, %1
  br i1 %i.ap, label %mi_theap_page_queue_of.exit, label %mi_page_is_huge.exit.thread.i.i

mi_page_is_huge.exit.thread.i.i:                  ; preds = %mi_page_is_huge.exit.i.i, %bb.k, %bb.i
  %i.aq = add i64 %i.ah, 7                        ; 4 uses
  %i.ar = lshr i64 %i.aq, 3                       ; 2 uses
  %i.as = icmp ult i64 %i.aq, 72
  br i1 %i.as, label %bb.l, label %bb.m, !prof !12

bb.l:                                             ; preds = %mi_page_is_huge.exit.thread.i.i
  %i.at = add nuw nsw i64 %i.ar, 1
  %i.au = and i64 %i.at, 30
  %.inv.i.i.i = icmp samesign ugt i64 %i.aq, 15
  %i.av = select i1 %.inv.i.i.i, i64 %i.au, i64 1
  br label %mi_theap_page_queue_of.exit

bb.m:                                             ; preds = %mi_page_is_huge.exit.thread.i.i
  %i.aw = icmp ugt i64 %i.aq, 524295
  br i1 %i.aw, label %mi_theap_page_queue_of.exit, label %bb.n, !prof !13

bb.n:                                             ; preds = %bb.m
  %i.ax = add nsw i64 %i.ar, -1                   ; 2 uses
  %i.ay = tail call range(i64 48, 61) i64 @llvm.ctlz.i64(i64 range(i64 8, 65536) %i.ax, i1 true) ; 2 uses
  %i.az = shl nuw nsw i64 %i.ay, 2
  %i.ba = sub nuw nsw i64 61, %i.ay
  %i.bb = lshr i64 %i.ax, %i.ba
  %i.bc = and i64 %i.bb, 3
  %i.bd = or disjoint i64 %i.bc, %i.az
  %i.be = xor i64 %i.bd, 252
  %i.bf = add nsw i64 %i.be, -3
  br label %mi_theap_page_queue_of.exit

mi_theap_page_queue_of.exit:                      ; preds = %_mi_page_free_collect.exit, %bb.j, %mi_page_is_huge.exit.i.i, %bb.l, %bb.m, %bb.n
  %i.bg = phi i64 [ 74, %_mi_page_free_collect.exit ], [ 73, %bb.m ], [ 73, %mi_page_is_huge.exit.i.i ], [ %i.av, %bb.l ], [ %i.bf, %bb.n ], [ 73, %bb.j ]
  %.idx = shl nuw nsw i64 %i.bg, 5
  %.add = add nuw nsw i64 %.idx, 1312             ; 2 uses
  %.ptr9 = getelementptr inbounds nuw i8, ptr %0, i64 %.add ; 6 uses
  %i.bh = getelementptr i8, ptr %.ptr9, i64 24    ; 2 uses
  %.val.i = load i64, ptr %i.bh, align 8, !tbaa !18
  %i.bi = icmp eq i64 %.val.i, 524304
  br i1 %i.bi, label %mi_page_flags_set.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %mi_theap_page_queue_of.exit
  %i.bj = atomicrmw and ptr %i.g, i64 -2 monotonic, align 8
  %i.bk = trunc i64 %i.bj to i1
  br i1 %i.bk, label %.thread.i.i, label %mi_page_set_in_full.exit.i

mi_page_flags_set.exit.i.i:                       ; preds = %mi_theap_page_queue_of.exit
  %i.bl = atomicrmw or ptr %i.g, i64 1 monotonic, align 8
  %i.bm = and i64 %i.bl, 1
  %.not15.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not15.i.i, label %bb.o, label %mi_page_set_in_full.exit.i

bb.o:                                             ; preds = %mi_page_flags_set.exit.i.i
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %mi_page_set_in_full.exit.i, label %bb.p

.thread.i.i:                                      ; preds = %.split.i.i
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %.not12.i.i = icmp eq ptr %i.bo, null
  br i1 %.not12.i.i, label %mi_page_set_in_full.exit.i, label %.thread13.i.i

.thread13.i.i:                                    ; preds = %.thread.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !28
  %i.br = zext i16 %i.bq to i64
  %i.bs = getelementptr i8, ptr %1, i64 40
  %.val14.i.i = load i64, ptr %i.bs, align 8, !tbaa !29
  %i.bt = mul i64 %.val14.i.i, %i.br
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 1240 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !51
  %i.bw = sub i64 %i.bv, %i.bt
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !51
  br label %mi_page_set_in_full.exit.i

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr i8, ptr %1, i64 40
  %.val.i.i = load i64, ptr %i.bx, align 8, !tbaa !29
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !28
  %i.ca = zext i16 %i.bz to i64
  %i.cb = mul i64 %.val.i.i, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bn, i64 1240 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !51
  %i.ce = add i64 %i.cb, %i.cd
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !51
  br label %mi_page_set_in_full.exit.i

mi_page_set_in_full.exit.i:                       ; preds = %bb.p, %.thread13.i.i, %.thread.i.i, %bb.o, %mi_page_flags_set.exit.i.i, %.split.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.ptr9, i64 8 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !52 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !53
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr null, ptr %i.ci, align 8, !tbaa !54
  %.not.i8 = icmp eq ptr %i.cg, null
  br i1 %.not.i8, label %.thread.i, label %bb.q

.thread.i:                                        ; preds = %mi_page_set_in_full.exit.i
  store ptr %1, ptr %i.cf, align 8, !tbaa !52
  store ptr %1, ptr %.ptr9, align 8, !tbaa !55
  %i.cj = getelementptr inbounds nuw i8, ptr %.ptr9, i64 16 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !56
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !56
  br label %bb.r

bb.q:                                             ; preds = %mi_page_set_in_full.exit.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 88
  store ptr %1, ptr %i.cm, align 8, !tbaa !54
  store ptr %1, ptr %i.cf, align 8, !tbaa !52
  %.pr.i = load ptr, ptr %.ptr9, align 8, !tbaa !55 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.ptr9, i64 16 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !56
  %i.cp = add i64 %i.co, 1
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !56
  %i.cq = icmp eq ptr %.pr.i, %1
  br i1 %i.cq, label %bb.r, label %mi_page_queue_push_at_end.exit

bb.r:                                             ; preds = %bb.q, %.thread.i
  %i.cr = phi ptr [ %1, %.thread.i ], [ %.pr.i, %bb.q ] ; 2 uses
  %i.cs = load i64, ptr %i.bh, align 8, !tbaa !18 ; 4 uses
  %i.ct = icmp ugt i64 %i.cs, 1024
  br i1 %i.ct, label %mi_page_queue_push_at_end.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cu = icmp eq ptr %i.cr, null
  br i1 %i.cu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cv = tail call ptr @_mi_page_empty_get() #11
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.029.i.i = phi ptr [ %i.cv, %bb.t ], [ %i.cr, %bb.s ] ; 3 uses
  %i.cw = add nuw nsw i64 %i.cs, 7
  %i.cx = lshr i64 %i.cw, 3                       ; 8 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !19
  %i.da = icmp eq ptr %i.cz, %.029.i.i
  br i1 %i.da, label %mi_page_queue_push_at_end.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.db = icmp samesign ult i64 %i.cs, 9
  br i1 %i.db, label %.lr.ph.preheader.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dc = icmp samesign ult i64 %i.cs, 65
  br i1 %i.dc, label %bb.x, label %bb.y, !prof !12

bb.x:                                             ; preds = %bb.w
  %i.dd = add nuw nsw i64 %i.cx, 1
  %i.de = and i64 %i.dd, 30
  br label %mi_bin.exit.i.i

bb.y:                                             ; preds = %bb.w
  %i.df = add nsw i64 %i.cx, -1                   ; 2 uses
  %i.dg = tail call range(i64 48, 61) i64 @llvm.ctlz.i64(i64 range(i64 8, 65536) %i.df, i1 true) ; 2 uses
  %i.dh = shl nuw nsw i64 %i.dg, 2
  %i.di = sub nuw nsw i64 61, %i.dg
  %i.dj = lshr i64 %i.df, %i.di
  %i.dk = and i64 %i.dj, 3
  %i.dl = or disjoint i64 %i.dk, %i.dh
  %i.dm = xor i64 %i.dl, 252
  %i.dn = add nsw i64 %i.dm, -3
  br label %mi_bin.exit.i.i

mi_bin.exit.i.i:                                  ; preds = %bb.y, %bb.x
  %.0.i.i.i = phi i64 [ %i.de, %bb.x ], [ %i.dn, %bb.y ]
  br label %bb.z

bb.z:                                             ; preds = %mi_bin.exit37.i.i, %mi_bin.exit.i.i
  %.pn.i.i.idx = phi i64 [ %.add, %mi_bin.exit.i.i ], [ %.pn.i.i.add, %mi_bin.exit37.i.i ] ; 3 uses
  %.pn.i.i.ptr = getelementptr inbounds i8, ptr %0, i64 %.pn.i.i.idx
  %.pn.i.i.add = add nsw i64 %.pn.i.i.idx, -32
  %i.do = getelementptr inbounds i8, ptr %.pn.i.i.ptr, i64 -8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !18
  %i.dq = add i64 %i.dp, 7                        ; 4 uses
  %i.dr = lshr i64 %i.dq, 3                       ; 4 uses
  %i.ds = icmp ult i64 %i.dq, 72
  br i1 %i.ds, label %bb.aa, label %bb.ab, !prof !12

bb.aa:                                            ; preds = %bb.z
  %i.dt = add nuw nsw i64 %i.dr, 1
  %i.du = and i64 %i.dt, 30
  %.inv.i36.i.i = icmp samesign ugt i64 %i.dq, 15
  %i.dv = select i1 %.inv.i36.i.i, i64 %i.du, i64 1
  br label %mi_bin.exit37.i.i

bb.ab:                                            ; preds = %bb.z
  %i.dw = icmp ugt i64 %i.dq, 524295
  br i1 %i.dw, label %mi_bin.exit37.i.i, label %bb.ac, !prof !13

bb.ac:                                            ; preds = %bb.ab
  %i.dx = add nsw i64 %i.dr, -1                   ; 2 uses
  %i.dy = tail call range(i64 48, 61) i64 @llvm.ctlz.i64(i64 range(i64 8, 65536) %i.dx, i1 true) ; 2 uses
  %i.dz = shl nuw nsw i64 %i.dy, 2
  %i.ea = sub nuw nsw i64 61, %i.dy
  %i.eb = lshr i64 %i.dx, %i.ea
  %i.ec = and i64 %i.eb, 3
  %i.ed = or disjoint i64 %i.ec, %i.dz
  %i.ee = xor i64 %i.ed, 252
  %i.ef = add nsw i64 %i.ee, -3
  br label %mi_bin.exit37.i.i

mi_bin.exit37.i.i:                                ; preds = %bb.ac, %bb.ab, %bb.aa
  %.0.i35.i.i = phi i64 [ %i.dv, %bb.aa ], [ %i.ef, %bb.ac ], [ 73, %bb.ab ]
  %i.eg = icmp eq i64 %.0.i.i.i, %.0.i35.i.i
  %i.eh = icmp samesign ugt i64 %.pn.i.i.idx, 1344
  %i.ei = and i1 %i.eh, %i.eg
  br i1 %i.ei, label %bb.z, label %bb.ad, !llvm.loop !3

bb.ad:                                            ; preds = %mi_bin.exit37.i.i
  %i.ej = add nuw nsw i64 %i.dr, 1
  %.not.i19.i = icmp samesign ult i64 %i.dr, %i.cx
  %spec.select.i.i = select i1 %.not.i19.i, i64 %i.ej, i64 %i.cx ; 2 uses
  %.not3438.i.i = icmp samesign ugt i64 %spec.select.i.i, %i.cx
  br i1 %.not3438.i.i, label %mi_page_queue_push_at_end.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ad, %bb.v
  %.146.i.i = phi i64 [ %spec.select.i.i, %bb.ad ], [ 0, %bb.v ] ; 4 uses
  %i.ek = add nuw nsw i64 %i.cx, 1
  %i.el = sub nsw i64 %i.ek, %.146.i.i            ; 3 uses
  %min.iters.check = icmp ult i64 %i.el, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.el, -4                      ; 3 uses
  %i.em = add i64 %.146.i.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %.029.i.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.146.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %index ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.eo, align 8, !tbaa !19
  store <2 x ptr> %broadcast.splat, ptr %i.ep, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eq = icmp eq i64 %index.next, %n.vec
  br i1 %i.eq, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.el, %n.vec
  br i1 %cmp.n, label %mi_page_queue_push_at_end.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.039.i.i.ph = phi i64 [ %.146.i.i, %.lr.ph.preheader.i.i ], [ %i.em, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.039.i.i = phi i64 [ %i.es, %.lr.ph.i.i ], [ %.039.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.039.i.i
  store ptr %.029.i.i, ptr %i.er, align 8, !tbaa !19
  %i.es = add nuw nsw i64 %.039.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %.039.i.i, %i.cx
  br i1 %exitcond.not.i.i, label %mi_page_queue_push_at_end.exit, label %.lr.ph.i.i, !llvm.loop !73

mi_page_queue_push_at_end.exit:                   ; preds = %.lr.ph.i.i, %middle.block, %bb.q, %bb.r, %bb.u, %bb.ad
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !59
  %i.ev = add i64 %i.eu, 1
  store i64 %i.ev, ptr %i.et, align 8, !tbaa !59
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define hidden void @_mi_page_abandon(ptr noundef %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0.i.i = phi i64 [ %i.b, %bb.a ], [ %i.h, %bb.c ] ; 3 uses
  %i.c = and i64 %.0.i.i, -2                      ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %mi_page_thread_free_collect.exit.i, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.e = and i64 %.0.i.i, 1
  %i.f = cmpxchg weak ptr %i.a, i64 %.0.i.i, i64 %i.e acq_rel acquire, align 8 ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  %i.h = extractvalue { i64, i1 } %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.b, !llvm.loop !0

bb.d:                                             ; preds = %bb.c
  %i.i = inttoptr i64 %i.c to ptr
  tail call fastcc void @mi_page_thread_collect_to_local(ptr noundef %0, ptr noundef %i.i) #12
  br label %mi_page_thread_free_collect.exit.i

mi_page_thread_free_collect.exit.i:               ; preds = %bb.b, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_mi_page_free_collect.exit, label %bb.e

bb.e:                                             ; preds = %mi_page_thread_free_collect.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.sink.split.i, label %_mi_page_free_collect.exit, !prof !12

.sink.split.i:                                    ; preds = %bb.e
  store ptr %i.k, ptr %i.l, align 8, !tbaa !33
  store ptr null, ptr %i.j, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 0, ptr %i.o, align 1, !tbaa !36
  br label %_mi_page_free_collect.exit

_mi_page_free_collect.exit:                       ; preds = %bb.e, %mi_page_thread_free_collect.exit.i, %.sink.split.i
end_hunk_0
