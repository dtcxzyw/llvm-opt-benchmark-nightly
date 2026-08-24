Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/ftbase?download=true
inline.NumInlined: 362
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@FT_Get_Color_Glyph_Layer:bb.a
bb.f:                                             ; preds = %bb.d, %bb.c, %bb.a, %bb.b, %bb.e
  %.0 = phi i8 [ 0, %bb.a ], [ %i.r, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.d ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define i32 @FT_Add_Module(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %ft_mem_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not54 = icmp eq ptr %1, null
  br i1 %.not54, label %ft_mem_alloc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !497
  %i.c = icmp sgt i64 %i.b, 131085
  br i1 %i.c, label %ft_mem_alloc.exit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !282  ; 3 uses
  %.not79 = icmp eq i32 %i.e, 0
  br i1 %.not79, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !284
  %wide.trip.count = zext i32 %i.e to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !498

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !283  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !95   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !284
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) %i.h) #31
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !499
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !499
  %.not55 = icmp sgt i64 %i.q, %i.s
  br i1 %.not55, label %bb.g, label %ft_mem_alloc.exit

bb.g:                                             ; preds = %bb.f
  %i.t = tail call i32 @FT_Remove_Module(ptr noundef nonnull %0, ptr noundef nonnull %i.j) ; 0 uses
  %.pr = load i32, ptr %i.d, align 4, !tbaa !282
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.g
  %i.u = phi i32 [ %.pr, %bb.g ], [ %i.e, %bb.d ]
  %i.v = icmp ugt i32 %i.u, 31
  br i1 %i.v, label %ft_mem_alloc.exit, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.preheader, %.loopexit
  %i.w = load ptr, ptr %0, align 8, !tbaa !266    ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !500  ; 4 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %ft_mem_qalloc.exit.i, label %ft_mem_qalloc.exit.thread.i

ft_mem_qalloc.exit.thread.i:                      ; preds = %.loopexit.thread
  %.not14.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not14.i.i)
  br label %ft_mem_alloc.exit

ft_mem_qalloc.exit.i:                             ; preds = %.loopexit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !187
  %i.ac = tail call ptr %i.ab(ptr noundef %i.w, i64 noundef %i.y) #30, !inline_history !188 ; 15 uses
  %.not.i.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.not.i, label %ft_mem_alloc.exit, label %select.unfold

select.unfold:                                    ; preds = %ft_mem_qalloc.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ac, i8 0, i64 %i.y, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %0, ptr %i.ad, align 8, !tbaa !501
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.w, ptr %i.ae, align 8, !tbaa !502
  store ptr %1, ptr %i.ac, align 8, !tbaa !95
  %i.af = load i64, ptr %1, align 8, !tbaa !96    ; 2 uses
  %i.ag = and i64 %i.af, 2
  %.not57 = icmp eq i64 %i.ag, 0
  br i1 %.not57, label %bb.i, label %bb.h

bb.h:                                             ; preds = %select.unfold
  %i.ah = tail call fastcc i32 @ft_add_renderer(ptr noundef nonnull %i.ac) ; 2 uses
  %.not58 = icmp eq i32 %i.ah, 0
  br i1 %.not58, label %._crit_edge, label %bb.p

._crit_edge:                                      ; preds = %bb.h
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !95 ; 2 uses
  %.pre84 = load i64, ptr %.pre, align 8, !tbaa !96
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %select.unfold
  %i.ai = phi i64 [ %.pre84, %._crit_edge ], [ %i.af, %select.unfold ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %._crit_edge ], [ %1, %select.unfold ]
  %i.ak = and i64 %i.ai, 4
  %.not59 = icmp eq i64 %i.ak, 0
  br i1 %.not59, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.ac, ptr %i.al, align 8, !tbaa !81
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = and i64 %i.ai, 1
  %.not60 = icmp eq i64 %i.am, 0
  br i1 %.not60, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.aj, ptr %i.an, align 8, !tbaa !28
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !503 ; 2 uses
  %.not61 = icmp eq ptr %i.ap, null
  br i1 %.not61, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = tail call i32 %i.ap(ptr noundef nonnull %i.ac) #30 ; 2 uses
  %.not62 = icmp eq i32 %i.aq, 0
  br i1 %.not62, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load i32, ptr %i.d, align 4, !tbaa !282 ; 2 uses
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.d, align 4, !tbaa !282
  %i.au = zext i32 %i.as to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.au
  store ptr %i.ac, ptr %i.av, align 8, !tbaa !283
  br label %ft_mem_alloc.exit

bb.p:                                             ; preds = %bb.n, %bb.h
  %.3 = phi i32 [ %i.aq, %bb.n ], [ %i.ah, %bb.h ]
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !95
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !96
  %i.ay = and i64 %i.ax, 2
  %.not63 = icmp eq i64 %i.ay, 0
  br i1 %.not63, label %ft_mem_free.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !158 ; 3 uses
  %.not64 = icmp eq ptr %i.ba, null
  br i1 %.not64, label %ft_mem_free.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !504
  %i.bd = icmp eq i32 %i.bc, 1869968492
  br i1 %i.bd, label %bb.s, label %ft_mem_free.exit

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !505 ; 2 uses
  %.not65 = icmp eq ptr %i.bf, null
  br i1 %.not65, label %ft_mem_free.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !506
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !507
  tail call void %i.bj(ptr noundef nonnull %i.bf) #30
  br label %ft_mem_free.exit

ft_mem_free.exit:                                 ; preds = %bb.q, %bb.r, %bb.s, %bb.t, %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !66
  tail call void %i.bl(ptr noundef nonnull %i.w, ptr noundef nonnull %i.ac) #30, !inline_history !203
  br label %ft_mem_alloc.exit

ft_mem_alloc.exit:                                ; preds = %ft_mem_qalloc.exit.thread.i, %bb.o, %ft_mem_free.exit, %.loopexit, %ft_mem_qalloc.exit.i, %bb.f, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 6, %bb.b ], [ 4, %bb.c ], [ 5, %bb.f ], [ 33, %bb.a ], [ 48, %.loopexit ], [ 0, %bb.o ], [ %.3, %ft_mem_free.exit ], [ 6, %ft_mem_qalloc.exit.thread.i ], [ 64, %ft_mem_qalloc.exit.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 35) i32 @FT_Remove_Module(ptr nofree noundef captures(address) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = ptrtoaddr ptr %0 to i64                    ; 3 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not27 = icmp eq ptr %1, null
  br i1 %.not27, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !282  ; 3 uses
  %i.d = zext i32 %i.c to i64
  %.idx = shl nuw nsw i64 %i.d, 3                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 2 uses
  %.not33 = icmp eq i32 %i.c, 0
  br i1 %.not33, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.v
  %indvar = phi i64 [ %indvar.next, %bb.v ], [ 0, %bb.c ] ; 3 uses
  %.02030 = phi ptr [ %i.bq, %bb.v ], [ %i.a, %bb.c ] ; 4 uses
  %i.f = load ptr, ptr %.02030, align 8, !tbaa !283
  %i.g = icmp eq ptr %i.f, %1
  br i1 %i.g, label %bb.d, label %bb.v

bb.d:                                             ; preds = %.lr.ph
  %i.h = add i32 %i.c, -1
  store i32 %i.h, ptr %i.b, align 4, !tbaa !282
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 -8 ; 2 uses
  %i.j = icmp ult ptr %.02030, %i.i
  br i1 %i.j, label %.lr.ph32.preheader, label %._crit_edge

.lr.ph32.preheader:                               ; preds = %bb.d
  %i.k = shl i64 %indvar, 3                       ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 %i.k
  %scevgep = getelementptr i8, ptr %i.l, i64 32
  %3 = add i64 %2, 32
  %4 = add i64 %i.k, %3
  %5 = add i64 %.idx, %2
  %i.m = add i64 %5, 16
  %umax = tail call i64 @llvm.umax.i64(i64 %4, i64 %i.m)
  %6 = mul i64 %indvar, -8
  %reass.sub = sub i64 %6, %2
  %7 = add i64 %reass.sub, -25
  %8 = add i64 %umax, %7
  %9 = and i64 %8, -8
  %i.n = add i64 %9, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.02030, ptr align 8 %scevgep, i64 %i.n, i1 false), !tbaa !283
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph32.preheader, %bb.d
  store ptr null, ptr %i.i, align 8, !tbaa !283
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !502  ; 2 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !95     ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !501  ; 6 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %ft_remove_renderer.exit.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 304 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !81
  %i.v = icmp eq ptr %i.u, %1
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.t, align 8, !tbaa !81
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = load i64, ptr %i.q, align 8, !tbaa !96
  %i.x = and i64 %i.w, 2
  %.not17.i = icmp eq i64 %i.x, 0
  br i1 %.not17.i, label %ft_remove_renderer.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !266  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 280 ; 3 uses
  %.011.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !369 ; 2 uses
  %.not1012.i.i.i = icmp eq ptr %.011.i.i.i, null
  br i1 %.not1012.i.i.i, label %ft_remove_renderer.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %bb.i
  %.013.i.i.i = phi ptr [ %.0.i.i.i, %bb.i ], [ %.011.i.i.i, %bb.h ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !155
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %FT_List_Find.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  %.0.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !369 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not10.i.i.i, label %ft_remove_renderer.exit.i, label %.lr.ph.i.i.i, !llvm.loop !370

FT_List_Find.exit.i.i:                            ; preds = %.lr.ph.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !505 ; 2 uses
  %.not18.i.i = icmp eq ptr %i.af, null
  br i1 %.not18.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %FT_List_Find.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !158
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !506
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !507
  tail call void %i.al(ptr noundef nonnull %i.af) #30, !inline_history !509
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %FT_List_Find.exit.i.i
  %i.am = load ptr, ptr %.013.i.i.i, align 8, !tbaa !354 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !157 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !157
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  store ptr %i.ao, ptr %i.z, align 8, !tbaa !355
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.not18.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not18.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !354
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 288
  store ptr %i.am, ptr %i.aq, align 8, !tbaa !353
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !66
  tail call void %i.as(ptr noundef %i.y, ptr noundef nonnull %.013.i.i.i) #30, !inline_history !510
  %i.at = load ptr, ptr %i.z, align 8, !tbaa !154 ; 2 uses
  %.not2631.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not2631.i.i.i.i, label %ft_set_current_renderer.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.q, %bb.r
  %.21932.i.i.i.i = phi ptr [ %i.ba, %bb.r ], [ %i.at, %bb.q ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.21932.i.i.i.i, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !155 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !149
  %i.ay = icmp eq i32 %i.ax, 1869968492
  br i1 %i.ay, label %ft_set_current_renderer.exit.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.21932.i.i.i.i, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !157 ; 2 uses
  %.not26.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not26.i.i.i.i, label %ft_set_current_renderer.exit.i.i, label %.lr.ph.i.i.i.i

ft_set_current_renderer.exit.i.i:                 ; preds = %bb.r, %.lr.ph.i.i.i.i, %bb.q
  %.2.i.i.i.i = phi ptr [ null, %bb.q ], [ %i.av, %.lr.ph.i.i.i.i ], [ null, %bb.r ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 296
  store ptr %.2.i.i.i.i, ptr %i.bb, align 8, !tbaa !148
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !95
  br label %ft_remove_renderer.exit.i

ft_remove_renderer.exit.i:                        ; preds = %bb.i, %ft_set_current_renderer.exit.i.i, %bb.h, %bb.g, %._crit_edge
  %i.bc = phi ptr [ %i.q, %bb.h ], [ %i.q, %bb.g ], [ %i.q, %._crit_edge ], [ %.pre.i, %ft_set_current_renderer.exit.i.i ], [ %i.q, %bb.i ]
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !96
  %i.be = and i64 %i.bd, 1
  %.not18.i = icmp eq i64 %i.be, 0
  br i1 %.not18.i, label %Destroy_Driver.exit.i, label %bb.s

bb.s:                                             ; preds = %ft_remove_renderer.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bg = load ptr, ptr %i.o, align 8, !tbaa !297 ; 4 uses
  %.not.i20.i = icmp eq ptr %i.bg, null
  br i1 %.not.i20.i, label %Destroy_Driver.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !355 ; 2 uses
  %.not21.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not21.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i21.i

.lr.ph.i.i21.i:                                   ; preds = %bb.t
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  br label %ft_mem_free.exit.i.i.i

ft_mem_free.exit.i.i.i:                           ; preds = %ft_mem_free.exit.i.i.i, %.lr.ph.i.i21.i
  %.022.i.i.i = phi ptr [ %i.bk, %ft_mem_free.exit.i.i.i ], [ %i.bh, %.lr.ph.i.i21.i ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.022.i.i.i, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !157 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.022.i.i.i, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !155
  tail call fastcc void @destroy_face(ptr noundef nonnull %i.bg, ptr noundef %i.bm, ptr noundef nonnull %1) #30, !inline_history !511
  %i.bn = load ptr, ptr %i.bi, align 8, !tbaa !66
  tail call void %i.bn(ptr noundef nonnull %i.bg, ptr noundef nonnull %.022.i.i.i) #30, !inline_history !512
  %.not.i.i22.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i22.i, label %._crit_edge.i.i.i, label %ft_mem_free.exit.i.i.i, !llvm.loop !387

._crit_edge.i.i.i:                                ; preds = %ft_mem_free.exit.i.i.i, %bb.t
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  br label %Destroy_Driver.exit.i

Destroy_Driver.exit.i:                            ; preds = %._crit_edge.i.i.i, %bb.s, %ft_remove_renderer.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !513 ; 2 uses
  %.not19.i = icmp eq ptr %i.bp, null
  br i1 %.not19.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %Destroy_Driver.exit.i
  tail call void %i.bp(ptr noundef nonnull %1) #30, !inline_history !514
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph
  %i.bq = getelementptr inbounds nuw i8, ptr %.02030, i64 8 ; 2 uses
  %i.br = icmp ult ptr %i.bq, %i.e
  %indvar.next = add i64 %indvar, 1
  br i1 %i.br, label %.lr.ph, label %.thread, !llvm.loop !515

bb.w:                                             ; preds = %bb.u, %Destroy_Driver.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !66
  tail call void %i.bt(ptr noundef %i.p, ptr noundef nonnull %1) #30, !inline_history !516
  br label %.thread

.thread:                                          ; preds = %bb.v, %bb.c, %bb.b, %bb.w, %bb.a
  %.122 = phi i32 [ 33, %bb.a ], [ 0, %bb.w ], [ 34, %bb.b ], [ 34, %bb.c ], [ 34, %bb.v ]
  ret i32 %.122
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ft_add_renderer(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !501  ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !266  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !187
  %i.f = tail call ptr %i.e(ptr noundef %i.c, i64 noundef 24) #30, !inline_history !193 ; 10 uses
  %.not.i.not = icmp eq ptr %i.f, null
  br i1 %.not.i.not, label %ft_mem_free.exit, label %bb.b
end_hunk_0
