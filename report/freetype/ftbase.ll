Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/ftbase?download=true
inline.NumInlined: 363
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !532
  %i.c = icmp sgt i64 %i.b, 131086
  br i1 %i.c, label %ft_mem_alloc.exit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !209  ; 3 uses
  %.not79 = icmp eq i32 %i.e, 0
  br i1 %.not79, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !211
  %wide.trip.count = zext i32 %i.e to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !531

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !210  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !104  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !211
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) %i.h) #31
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !533
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !533
  %.not55 = icmp sgt i64 %i.q, %i.s
  br i1 %.not55, label %bb.g, label %ft_mem_alloc.exit

bb.g:                                             ; preds = %bb.f
  %i.t = tail call i32 @FT_Remove_Module(ptr noundef nonnull %0, ptr noundef nonnull %i.j) ; 0 uses
  %.pr = load i32, ptr %i.d, align 4, !tbaa !209
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.g
  %i.u = phi i32 [ %.pr, %bb.g ], [ %i.e, %bb.d ]
  %i.v = icmp ugt i32 %i.u, 31
  br i1 %i.v, label %ft_mem_alloc.exit, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.preheader, %.loopexit
  %i.w = load ptr, ptr %0, align 8, !tbaa !184    ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !534  ; 4 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %ft_mem_qalloc.exit.i, label %ft_mem_qalloc.exit.thread.i

ft_mem_qalloc.exit.thread.i:                      ; preds = %.loopexit.thread
  %.not14.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not14.i.i)
  br label %ft_mem_alloc.exit

ft_mem_qalloc.exit.i:                             ; preds = %.loopexit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !107
  %i.ac = tail call ptr %i.ab(ptr noundef %i.w, i64 noundef %i.y) #30, !inline_history !108 ; 15 uses
  %.not.i.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.not.i, label %ft_mem_alloc.exit, label %select.unfold

select.unfold:                                    ; preds = %ft_mem_qalloc.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ac, i8 0, i64 %i.y, i1 false)
  store ptr %1, ptr %i.ac, align 8, !tbaa !104
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %0, ptr %i.ad, align 8, !tbaa !346
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.w, ptr %i.ae, align 8, !tbaa !347
  %i.af = load i64, ptr %1, align 8, !tbaa !224   ; 2 uses
  %i.ag = and i64 %i.af, 2
  %.not57 = icmp eq i64 %i.ag, 0
  br i1 %.not57, label %bb.i, label %bb.h

bb.h:                                             ; preds = %select.unfold
  %i.ah = tail call fastcc i32 @ft_add_renderer(ptr noundef nonnull %i.ac) ; 2 uses
  %.not58 = icmp eq i32 %i.ah, 0
  br i1 %.not58, label %._crit_edge, label %bb.p

._crit_edge:                                      ; preds = %bb.h
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !104 ; 2 uses
  %.pre84 = load i64, ptr %.pre, align 8, !tbaa !224
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %select.unfold
  %i.ai = phi i64 [ %.pre84, %._crit_edge ], [ %i.af, %select.unfold ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %._crit_edge ], [ %1, %select.unfold ]
  %i.ak = and i64 %i.ai, 4
  %.not59 = icmp eq i64 %i.ak, 0
  br i1 %.not59, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.ac, ptr %i.al, align 8, !tbaa !245
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = and i64 %i.ai, 1
  %.not60 = icmp eq i64 %i.am, 0
  br i1 %.not60, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.aj, ptr %i.an, align 8, !tbaa !63
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !535 ; 2 uses
  %.not61 = icmp eq ptr %i.ap, null
  br i1 %.not61, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = tail call i32 %i.ap(ptr noundef nonnull %i.ac) #30 ; 2 uses
  %.not62 = icmp eq i32 %i.aq, 0
  br i1 %.not62, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load i32, ptr %i.d, align 4, !tbaa !209 ; 2 uses
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.d, align 4, !tbaa !209
  %i.au = zext i32 %i.as to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.au
  store ptr %i.ac, ptr %i.av, align 8, !tbaa !210
  br label %ft_mem_alloc.exit

bb.p:                                             ; preds = %bb.n, %bb.h
  %.3 = phi i32 [ %i.aq, %bb.n ], [ %i.ah, %bb.h ]
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !104
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !224
  %i.ay = and i64 %i.ax, 2
  %.not63 = icmp eq i64 %i.ay, 0
  br i1 %.not63, label %ft_mem_free.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !260 ; 3 uses
  %.not64 = icmp eq ptr %i.ba, null
  br i1 %.not64, label %ft_mem_free.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !348
  %i.bd = icmp eq i32 %i.bc, 1869968492
  br i1 %i.bd, label %bb.s, label %ft_mem_free.exit

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !349 ; 2 uses
  %.not65 = icmp eq ptr %i.bf, null
  br i1 %.not65, label %ft_mem_free.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !350
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !352
  tail call void %i.bj(ptr noundef nonnull %i.bf) #30
  br label %ft_mem_free.exit

ft_mem_free.exit:                                 ; preds = %bb.q, %bb.r, %bb.s, %bb.t, %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !127
  tail call void %i.bl(ptr noundef nonnull %i.w, ptr noundef nonnull %i.ac) #30, !inline_history !128
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
  %i.c = load i32, ptr %i.b, align 4, !tbaa !209  ; 3 uses
  %i.d = zext i32 %i.c to i64
  %.idx = shl nuw nsw i64 %i.d, 3                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 2 uses
  %.not33 = icmp eq i32 %i.c, 0
  br i1 %.not33, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.v
  %indvar = phi i64 [ %indvar.next, %bb.v ], [ 0, %bb.c ] ; 3 uses
  %.02030 = phi ptr [ %i.bq, %bb.v ], [ %i.a, %bb.c ] ; 4 uses
  %i.f = load ptr, ptr %.02030, align 8, !tbaa !210
  %i.g = icmp eq ptr %i.f, %1
  br i1 %i.g, label %bb.d, label %bb.v

bb.d:                                             ; preds = %.lr.ph
  %i.h = add i32 %i.c, -1
  store i32 %i.h, ptr %i.b, align 4, !tbaa !209
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
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.02030, ptr align 8 %scevgep, i64 %i.n, i1 false), !tbaa !210
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph32.preheader, %bb.d
  store ptr null, ptr %i.i, align 8, !tbaa !210
  %i.o = load ptr, ptr %1, align 8, !tbaa !104    ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !346  ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !347  ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %ft_remove_renderer.exit.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 304 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !245
  %i.v = icmp eq ptr %i.u, %1
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.t, align 8, !tbaa !245
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = load i64, ptr %i.o, align 8, !tbaa !224
  %i.x = and i64 %i.w, 2
  %.not17.i = icmp eq i64 %i.x, 0
  br i1 %.not17.i, label %ft_remove_renderer.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !184  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 280 ; 3 uses
  %.011.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !308 ; 2 uses
  %.not1012.i.i.i = icmp eq ptr %.011.i.i.i, null
  br i1 %.not1012.i.i.i, label %ft_remove_renderer.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %bb.i
  %.013.i.i.i = phi ptr [ %.0.i.i.i, %bb.i ], [ %.011.i.i.i, %bb.h ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !258
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %FT_List_Find.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  %.0.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !308 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not10.i.i.i, label %ft_remove_renderer.exit.i, label %.lr.ph.i.i.i, !llvm.loop !7

FT_List_Find.exit.i.i:                            ; preds = %.lr.ph.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !349 ; 2 uses
  %.not18.i.i = icmp eq ptr %i.af, null
  br i1 %.not18.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %FT_List_Find.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !260
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !350
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !352
  tail call void %i.al(ptr noundef nonnull %i.af) #30, !inline_history !536
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %FT_List_Find.exit.i.i
  %i.am = load ptr, ptr %.013.i.i.i, align 8, !tbaa !296 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !259 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !259
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  store ptr %i.ao, ptr %i.z, align 8, !tbaa !297
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.not18.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not18.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !296
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 288
  store ptr %i.am, ptr %i.aq, align 8, !tbaa !295
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !127
  tail call void %i.as(ptr noundef %i.y, ptr noundef nonnull %.013.i.i.i) #30, !inline_history !537
  %i.at = load ptr, ptr %i.z, align 8, !tbaa !256 ; 2 uses
  %.not2631.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not2631.i.i.i.i, label %ft_set_current_renderer.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.q, %bb.r
  %.21932.i.i.i.i = phi ptr [ %i.ba, %bb.r ], [ %i.at, %bb.q ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.21932.i.i.i.i, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !258 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !255
  %i.ay = icmp eq i32 %i.ax, 1869968492
  br i1 %i.ay, label %ft_set_current_renderer.exit.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.21932.i.i.i.i, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !259 ; 2 uses
  %.not26.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not26.i.i.i.i, label %ft_set_current_renderer.exit.i.i, label %.lr.ph.i.i.i.i

ft_set_current_renderer.exit.i.i:                 ; preds = %bb.r, %.lr.ph.i.i.i.i, %bb.q
  %.2.i.i.i.i = phi ptr [ null, %bb.q ], [ %i.av, %.lr.ph.i.i.i.i ], [ null, %bb.r ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 296
  store ptr %.2.i.i.i.i, ptr %i.bb, align 8, !tbaa !250
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !104
  br label %ft_remove_renderer.exit.i

ft_remove_renderer.exit.i:                        ; preds = %bb.i, %ft_set_current_renderer.exit.i.i, %bb.h, %bb.g, %._crit_edge
  %i.bc = phi ptr [ %i.o, %bb.h ], [ %i.o, %bb.g ], [ %i.o, %._crit_edge ], [ %.pre.i, %ft_set_current_renderer.exit.i.i ], [ %i.o, %bb.i ]
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !224
  %i.be = and i64 %i.bd, 1
  %.not18.i = icmp eq i64 %i.be, 0
  br i1 %.not18.i, label %Destroy_Driver.exit.i, label %bb.s

bb.s:                                             ; preds = %ft_remove_renderer.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bg = load ptr, ptr %i.r, align 8, !tbaa !222 ; 4 uses
  %.not.i20.i = icmp eq ptr %i.bg, null
  br i1 %.not.i20.i, label %Destroy_Driver.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !297 ; 2 uses
  %.not20.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not20.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i21.i

.lr.ph.i.i21.i:                                   ; preds = %bb.t
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  br label %ft_mem_free.exit.i.i.i

ft_mem_free.exit.i.i.i:                           ; preds = %ft_mem_free.exit.i.i.i, %.lr.ph.i.i21.i
  %.021.i.i.i = phi ptr [ %i.bk, %ft_mem_free.exit.i.i.i ], [ %i.bh, %.lr.ph.i.i21.i ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.021.i.i.i, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !259 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.021.i.i.i, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !258
  tail call fastcc void @destroy_face(ptr noundef nonnull %i.bg, ptr noundef %i.bm, ptr noundef nonnull %1) #30, !inline_history !542
  %i.bn = load ptr, ptr %i.bi, align 8, !tbaa !127
  tail call void %i.bn(ptr noundef nonnull %i.bg, ptr noundef nonnull %.021.i.i.i) #30, !inline_history !538
  %.not.i.i22.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i22.i, label %._crit_edge.i.i.i, label %ft_mem_free.exit.i.i.i, !llvm.loop !8

._crit_edge.i.i.i:                                ; preds = %ft_mem_free.exit.i.i.i, %bb.t
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  br label %Destroy_Driver.exit.i

Destroy_Driver.exit.i:                            ; preds = %._crit_edge.i.i.i, %bb.s, %ft_remove_renderer.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !543 ; 2 uses
  %.not19.i = icmp eq ptr %i.bp, null
  br i1 %.not19.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %Destroy_Driver.exit.i
  tail call void %i.bp(ptr noundef nonnull %1) #30, !inline_history !539
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph
  %i.bq = getelementptr inbounds nuw i8, ptr %.02030, i64 8 ; 2 uses
  %i.br = icmp ult ptr %i.bq, %i.e
  %indvar.next = add i64 %indvar, 1
  br i1 %i.br, label %.lr.ph, label %.thread, !llvm.loop !540

bb.w:                                             ; preds = %bb.u, %Destroy_Driver.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !127
  tail call void %i.bt(ptr noundef %i.s, ptr noundef nonnull %1) #30, !inline_history !541
  br label %.thread

.thread:                                          ; preds = %bb.v, %bb.c, %bb.b, %bb.w, %bb.a
  %.122 = phi i32 [ 33, %bb.a ], [ 0, %bb.w ], [ 34, %bb.b ], [ 34, %bb.c ], [ 34, %bb.v ]
  ret i32 %.122
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ft_add_renderer(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !346  ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !184  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !107
  %i.f = tail call ptr %i.e(ptr noundef %i.c, i64 noundef 24) #30, !inline_history !116 ; 10 uses
  %.not.i.not = icmp eq ptr %i.f, null
  br i1 %.not.i.not, label %ft_mem_free.exit, label %bb.b
end_hunk_0
begin_hunk_1_@raccess_guess_apple_generic:bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bc
  %.not23.i67 = icmp eq ptr %i.bi, null
  br i1 %.not23.i67, label %.thread37, label %bb.r

.thread37:                                        ; preds = %bb.q
  %i.bk = add i64 %i.bc, 4
  store i64 %i.bk, ptr %i.g, align 8, !tbaa !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.bl = add i64 %i.bc, 12
  br label %bb.z

FT_Stream_ReadULong.exit68.thread:                ; preds = %.preheader, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %.loopexit

bb.r:                                             ; preds = %..thread_crit_edge.i61, %bb.q
  %.pre.i64 = phi i64 [ %i.bc, %bb.q ], [ %.pre.pre.i62, %..thread_crit_edge.i61 ] ; 3 uses
  %.01926.i65 = phi ptr [ %i.bj, %bb.q ], [ %i.b, %..thread_crit_edge.i61 ]
  %i.bm = load i32, ptr %.01926.i65, align 1
  %i.bn = add i64 %.pre.i64, 4                    ; 5 uses
  store i64 %i.bn, ptr %i.g, align 8, !tbaa !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.bo = icmp eq i32 %i.bm, 33554432
  br i1 %i.bo, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.bp = add i64 %.pre.i64, 7
  %i.bq = load i64, ptr %i.j, align 8, !tbaa !192
  %i.br = icmp ult i64 %i.bp, %i.bq
  br i1 %i.br, label %bb.t, label %FT_Stream_ReadULong.exit80.thread

bb.t:                                             ; preds = %bb.s
  %i.bs = load ptr, ptr %i.m, align 8, !tbaa !293 ; 2 uses
  %.not.i71 = icmp eq ptr %i.bs, null
  br i1 %.not.i71, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = call i64 %i.bs(ptr noundef nonnull %0, i64 noundef %i.bn, ptr noundef nonnull %i.a, i64 noundef 4) #30, !inline_history !366
  %.not22.i72 = icmp eq i64 %i.bt, 4
  br i1 %.not22.i72, label %..thread_crit_edge.i73, label %FT_Stream_ReadULong.exit80.thread

..thread_crit_edge.i73:                           ; preds = %bb.u
  %.pre.pre.i74 = load i64, ptr %i.g, align 8, !tbaa !199
  br label %.thread.i75

bb.v:                                             ; preds = %bb.t
  %i.bu = load ptr, ptr %0, align 8, !tbaa !191   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bn
  %.not23.i79 = icmp eq ptr %i.bu, null
  br i1 %.not23.i79, label %bb.w, label %.thread.i75

.thread.i75:                                      ; preds = %bb.v, %..thread_crit_edge.i73
  %.pre.i76 = phi i64 [ %i.bn, %bb.v ], [ %.pre.pre.i74, %..thread_crit_edge.i73 ]
  %.01926.i77 = phi ptr [ %i.bv, %bb.v ], [ %i.a, %..thread_crit_edge.i73 ]
  %i.bw = load i32, ptr %.01926.i77, align 1
  %i.bx = call i32 @llvm.bswap.i32(i32 %i.bw)
  %i.by = sext i32 %i.bx to i64
  br label %bb.w

FT_Stream_ReadULong.exit80.thread:                ; preds = %bb.s, %bb.u
  store i32 85, ptr %i.f, align 4, !tbaa !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.aa

bb.w:                                             ; preds = %.thread.i75, %bb.v
  %i.bz = phi i64 [ %.pre.i76, %.thread.i75 ], [ %i.bn, %bb.v ]
  %.0.i78 = phi i64 [ %i.by, %.thread.i75 ], [ 0, %bb.v ]
  %i.ca = add i64 %i.bz, 4
  store i64 %i.ca, ptr %i.g, align 8, !tbaa !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.cb = call i32 @FT_Stream_ReadULong(ptr noundef nonnull %0, ptr noundef nonnull %i.f) ; 0 uses
  %i.cc = load i32, ptr %i.f, align 4, !tbaa !117
  %.not36 = icmp eq i32 %i.cc, 0
  br i1 %.not36, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  store i64 %.0.i78, ptr %2, align 8, !tbaa !68
  br label %.loopexit

bb.y:                                             ; preds = %bb.r
  %.pre27 = load ptr, ptr %i.m, align 8, !tbaa !293 ; 2 uses
  %i.cd = add i64 %.pre.i64, 12                   ; 3 uses
  %.not.i.i81 = icmp eq ptr %.pre27, null
  br i1 %.not.i.i81, label %bb.z, label %.split.i.i82

.split.i.i82:                                     ; preds = %bb.y
  %i.ce = call i64 %.pre27(ptr noundef nonnull %0, i64 noundef %i.cd, ptr noundef null, i64 noundef 0) #30, !inline_history !364
  %.not10.i.i83 = icmp eq i64 %i.ce, 0
  br i1 %.not10.i.i83, label %FT_Stream_Skip.exit86, label %.loopexit

bb.z:                                             ; preds = %.thread37, %bb.y
  %i.cf = phi i64 [ %i.bl, %.thread37 ], [ %i.cd, %bb.y ] ; 2 uses
  %i.cg = load i64, ptr %i.j, align 8, !tbaa !192
  %.not17.i.i85 = icmp ugt i64 %i.cf, %i.cg
  br i1 %.not17.i.i85, label %.loopexit, label %FT_Stream_Skip.exit86

FT_Stream_Skip.exit86:                            ; preds = %.split.i.i82, %bb.z
  %i.ch = phi i64 [ %i.cd, %.split.i.i82 ], [ %i.cf, %bb.z ]
  store i64 %i.ch, ptr %i.g, align 8, !tbaa !199
  store i32 0, ptr %i.f, align 4, !tbaa !117
  br label %bb.aa

bb.aa:                                            ; preds = %FT_Stream_Skip.exit86, %FT_Stream_ReadULong.exit80.thread, %bb.w
  %i.ci = add nuw nsw i32 %.025, 1                ; 2 uses
  %i.cj = icmp samesign ult i32 %i.ci, %i.ba
  br i1 %i.cj, label %.preheader, label %.loopexit, !llvm.loop !655

.loopexit:                                        ; preds = %bb.aa, %.split.i.i82, %bb.z, %.split.i.i, %bb.i, %FT_Stream_ReadULong.exit68.thread, %.thread13, %FT_Stream_ReadUShort.exit.thread, %FT_Stream_ReadULong.exit48.thread, %.thread, %FT_Stream_ReadULong.exit.thread, %bb.n, %bb.e, %bb.x
  %.021 = phi i32 [ 85, %.split.i.i ], [ 85, %FT_Stream_ReadULong.exit.thread ], [ 2, %bb.e ], [ 85, %FT_Stream_ReadULong.exit48.thread ], [ 85, %bb.i ], [ 85, %FT_Stream_ReadUShort.exit.thread ], [ 2, %bb.n ], [ 0, %bb.x ], [ 85, %FT_Stream_ReadULong.exit68.thread ], [ 2, %.thread13 ], [ 2, %.thread ], [ 85, %.split.i.i82 ], [ 85, %bb.z ], [ 2, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  ret i32 %.021
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @raccess_make_file_name(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #31
  %i.c = add i64 %i.b, %i.a                       ; 2 uses
  %i.d = add i64 %i.c, 1                          ; 2 uses
  %i.e = icmp ult i64 %i.c, 9223372036854775807
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !107
  %i.h = tail call ptr %i.g(ptr noundef %0, i64 noundef %i.d) #30, !inline_history !116 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %ft_mem_qalloc.exit, label %select.unfold24

bb.c:                                             ; preds = %bb.a
  %.not14.i = icmp eq i64 %i.d, 0
  br i1 %.not14.i, label %select.unfold24, label %ft_mem_qalloc.exit

select.unfold24:                                  ; preds = %bb.c, %bb.b
  %.0.i.ph = phi ptr [ %i.h, %bb.b ], [ null, %bb.c ] ; 6 uses
  %i.i = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 47) #31 ; 3 uses
  %.not23 = icmp eq ptr %i.i, null
  br i1 %.not23, label %bb.e, label %bb.d

bb.d:                                             ; preds = %select.unfold24
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = add nsw i64 %i.l, 1                      ; 2 uses
  %i.n = tail call ptr @strncpy(ptr noundef %.0.i.ph, ptr noundef nonnull %1, i64 noundef %i.m) #30 ; 0 uses
  %i.o = getelementptr inbounds i8, ptr %.0.i.ph, i64 %i.m
  store i8 0, ptr %i.o, align 1, !tbaa !162
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  br label %bb.f

bb.e:                                             ; preds = %select.unfold24
  store i8 0, ptr %.0.i.ph, align 1, !tbaa !162
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ %i.p, %bb.d ], [ %1, %bb.e ]
  %i.q = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.0.i.ph, ptr noundef nonnull dereferenceable(1) %2) #30 ; 0 uses
  %i.r = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.0.i.ph, ptr noundef nonnull dereferenceable(1) %.0) #30 ; 0 uses
  br label %ft_mem_qalloc.exit

ft_mem_qalloc.exit:                               ; preds = %bb.b, %bb.c, %bb.f
  %.021 = phi ptr [ %.0.i.ph, %bb.f ], [ null, %bb.c ], [ null, %bb.b ]
  ret ptr %.021
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #27

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #28

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nofree norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #30 = { nounwind }
attributes #31 = { nounwind willreturn memory(read) }
attributes #32 = { noreturn nounwind }

!llvm.module.flags = !{!28, !29}
!llvm.ident = !{!30}
!llvm.errno.tbaa = !{!35}

!0 = distinct !{null, ptr @ft_mem_realloc, ptr @ft_mem_qrealloc}
!1 = distinct !{!1, !70}
!2 = distinct !{null, null}
!3 = distinct !{!3, !70}
!4 = distinct !{!4, !70}
!5 = distinct !{!5, !70}
!6 = distinct !{!6, !70}
!7 = distinct !{!7, !70}
!8 = distinct !{!8, !70}
!9 = distinct !{null, null}
!10 = distinct !{null, null, ptr @ft_mem_free}
!11 = distinct !{!11, !70}
!12 = distinct !{null, ptr @ft_mem_free}
!13 = distinct !{null}
!14 = distinct !{null, ptr @ft_mem_free}
!15 = distinct !{!15, !70}
!16 = distinct !{null, ptr @FT_Get_CMap_Format}
!17 = distinct !{!17, !70}
!18 = distinct !{!18, !70}
!19 = distinct !{null}
!20 = distinct !{!20, !70}
!21 = distinct !{!21, !70}
!22 = distinct !{!22, !70}
!23 = distinct !{!23, !70}
!24 = distinct !{!24, !70}
!25 = distinct !{null, ptr @FT_Stream_New, ptr @ft_mem_alloc, ptr @ft_mem_qalloc}
!26 = distinct !{null}
!27 = distinct !{null, ptr @FT_Stream_Free, ptr @FT_Stream_Close}
!28 = !{i32 8, !"PIC Level", i32 2}
!29 = !{i32 7, !"uwtable", i32 2}
!30 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!31 = !{!"Simple C/C++ TBAA"}
!32 = !{!"omnipotent char", !31, i64 0}
!33 = !{!"int", !32, i64 0}
!34 = !{!"__libc_errno", !33, i64 0}
!35 = !{!34, !33, i64 0}
!36 = !{!"long", !32, i64 0}
!37 = !{!"any pointer", !32, i64 0}
!38 = !{!"p1 omnipotent char", !37, i64 0}
!39 = !{!"p1 _ZTS15FT_Bitmap_Size_", !37, i64 0}
!40 = !{!"any p2 pointer", !37, i64 0}
!41 = !{!"p2 _ZTS14FT_CharMapRec_", !40, i64 0}
!42 = !{!"FT_Generic_", !37, i64 0, !37, i64 8}
!43 = !{!"FT_BBox_", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!44 = !{!"short", !32, i64 0}
!45 = !{!"p1 _ZTS16FT_GlyphSlotRec_", !37, i64 0}
!46 = !{!"p1 _ZTS11FT_SizeRec_", !37, i64 0}
!47 = !{!"p1 _ZTS14FT_CharMapRec_", !37, i64 0}
!48 = !{!"p1 _ZTS13FT_DriverRec_", !37, i64 0}
!49 = !{!"p1 _ZTS13FT_MemoryRec_", !37, i64 0}
!50 = !{!"p1 _ZTS13FT_StreamRec_", !37, i64 0}
!51 = !{!"p1 _ZTS15FT_ListNodeRec_", !37, i64 0}
!52 = !{!"FT_ListRec_", !51, i64 0, !51, i64 8}
!53 = !{!"p1 _ZTS20FT_Face_InternalRec_", !37, i64 0}
!54 = !{!"FT_FaceRec_", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !38, i64 40, !38, i64 48, !33, i64 56, !39, i64 64, !33, i64 72, !41, i64 80, !42, i64 88, !43, i64 104, !44, i64 136, !44, i64 138, !44, i64 140, !44, i64 142, !44, i64 144, !44, i64 146, !44, i64 148, !44, i64 150, !45, i64 152, !46, i64 160, !47, i64 168, !48, i64 176, !49, i64 184, !50, i64 192, !52, i64 200, !42, i64 216, !37, i64 232, !53, i64 240}
!55 = !{!54, !36, i64 32}
!56 = !{!54, !48, i64 176}
!57 = !{!"p1 _ZTS16FT_Module_Class_", !37, i64 0}
!58 = !{!"p1 _ZTS14FT_LibraryRec_", !37, i64 0}
!59 = !{!"FT_ModuleRec_", !57, i64 0, !58, i64 8, !49, i64 16}
!60 = !{!"p1 _ZTS19FT_Driver_ClassRec_", !37, i64 0}
!61 = !{!"p1 _ZTS18FT_GlyphLoaderRec_", !37, i64 0}
!62 = !{!"FT_DriverRec_", !59, i64 0, !60, i64 24, !52, i64 32, !61, i64 48}
!63 = !{!62, !60, i64 24}
!64 = !{!"FT_Module_Class_", !36, i64 0, !36, i64 8, !38, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!65 = !{!"FT_Driver_ClassRec_", !64, i64 0, !36, i64 72, !36, i64 80, !36, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184}
!66 = !{!65, !37, i64 168}
!67 = !{!54, !46, i64 160}
!68 = !{!36, !36, i64 0}
!69 = !{!54, !45, i64 152}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"llvm.loop.isvectorized", i32 1}
!72 = !{!"llvm.loop.unroll.runtime.disable"}
!73 = !{!54, !36, i64 16}
!74 = !{!44, !44, i64 0}
!75 = !{!"p1 short", !37, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!"p1 long", !37, i64 0}
!78 = !{!"TTC_HeaderRec_", !36, i64 0, !36, i64 8, !36, i64 16, !77, i64 24}
!79 = !{!"p1 _ZTS12TT_TableRec_", !37, i64 0}
!80 = !{!"TT_Header_", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !44, i64 32, !44, i64 34, !32, i64 40, !32, i64 56, !44, i64 72, !44, i64 74, !44, i64 76, !44, i64 78, !44, i64 80, !44, i64 82, !44, i64 84, !44, i64 86, !44, i64 88}
!81 = !{!"TT_HoriHeader_", !36, i64 0, !44, i64 8, !44, i64 10, !44, i64 12, !44, i64 14, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !44, i64 24, !44, i64 26, !32, i64 28, !44, i64 36, !44, i64 38, !37, i64 40, !37, i64 48}
!82 = !{!"TT_MaxProfile_", !36, i64 0, !44, i64 8, !44, i64 10, !44, i64 12, !44, i64 14, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !44, i64 24, !44, i64 26, !44, i64 28, !44, i64 30, !44, i64 32, !44, i64 34}
!83 = !{!"TT_VertHeader_", !36, i64 0, !44, i64 8, !44, i64 10, !44, i64 12, !44, i64 14, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !44, i64 24, !44, i64 26, !32, i64 28, !44, i64 36, !44, i64 38, !37, i64 40, !37, i64 48}
!84 = !{!"p1 _ZTS11TT_NameRec_", !37, i64 0}
!85 = !{!"p1 _ZTS14TT_LangTagRec_", !37, i64 0}
!86 = !{!"TT_NameTableRec_", !44, i64 0, !33, i64 4, !33, i64 8, !84, i64 16, !33, i64 24, !85, i64 32, !50, i64 40}
!87 = !{!"TT_OS2_", !44, i64 0, !44, i64 2, !44, i64 4, !44, i64 6, !44, i64 8, !44, i64 10, !44, i64 12, !44, i64 14, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !44, i64 24, !44, i64 26, !44, i64 28, !44, i64 30, !32, i64 32, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !32, i64 80, !44, i64 84, !44, i64 86, !44, i64 88, !44, i64 90, !44, i64 92, !44, i64 94, !44, i64 96, !44, i64 98, !36, i64 104, !36, i64 112, !44, i64 120, !44, i64 122, !44, i64 124, !44, i64 126, !44, i64 128, !44, i64 130, !44, i64 132}
!88 = !{!"TT_Postscript_", !36, i64 0, !36, i64 8, !44, i64 16, !44, i64 18, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56}
!89 = !{!"p1 _ZTS16TT_GaspRangeRec_", !37, i64 0}
!90 = !{!"TT_Gasp_", !44, i64 0, !44, i64 2, !89, i64 8}
!91 = !{!"TT_PCLT_", !36, i64 0, !36, i64 8, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !44, i64 24, !44, i64 26, !32, i64 28, !32, i64 44, !32, i64 52, !32, i64 58, !32, i64 59, !32, i64 60, !32, i64 61}
!92 = !{!"p1 _ZTS17TT_SBit_ScaleRec_", !37, i64 0}
!93 = !{!"p2 omnipotent char", !40, i64 0}
!94 = !{!"TT_Post_NamesRec_", !32, i64 0, !44, i64 2, !44, i64 4, !75, i64 8, !93, i64 16}
!95 = !{!"FT_Palette_Data_", !44, i64 0, !75, i64 8, !75, i64 16, !44, i64 24, !75, i64 32}
!96 = !{!"p1 _ZTS9FT_Color_", !37, i64 0}
!97 = !{!"FT_Color_", !32, i64 0, !32, i64 1, !32, i64 2, !32, i64 3}
!98 = !{!"p1 int", !37, i64 0}
!99 = !{!"p1 _ZTS12GX_BlendRec_", !37, i64 0}
!100 = !{!"TT_BDFRec_", !38, i64 0, !38, i64 8, !38, i64 16, !36, i64 24, !33, i64 32, !32, i64 36}
!101 = !{!"TT_FaceRec_", !54, i64 0, !78, i64 248, !36, i64 280, !44, i64 288, !79, i64 296, !80, i64 304, !81, i64 400, !82, i64 456, !32, i64 496, !83, i64 504, !44, i64 560, !86, i64 568, !87, i64 616, !88, i64 752, !38, i64 816, !36, i64 824, !37, i64 832, !37, i64 840, !37, i64 848, !37, i64 856, !37, i64 864, !37, i64 872, !37, i64 880, !37, i64 888, !37, i64 896, !37, i64 904, !37, i64 912, !37, i64 920, !90, i64 928, !91, i64 944, !36, i64 1008, !92, i64 1016, !94, i64 1024, !95, i64 1048, !44, i64 1088, !96, i64 1096, !32, i64 1104, !97, i64 1105, !36, i64 1112, !38, i64 1120, !36, i64 1128, !38, i64 1136, !36, i64 1144, !98, i64 1152, !42, i64 1160, !38, i64 1176, !36, i64 1184, !36, i64 1192, !32, i64 1200, !32, i64 1201, !99, i64 1208, !33, i64 1216, !38, i64 1224, !33, i64 1232, !33, i64 1236, !38, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !38, i64 1272, !38, i64 1280, !36, i64 1288, !33, i64 1296, !36, i64 1304, !93, i64 1312, !38, i64 1320, !36, i64 1328, !33, i64 1336, !33, i64 1340, !98, i64 1344, !38, i64 1352, !36, i64 1360, !33, i64 1368, !33, i64 1372, !33, i64 1376, !100, i64 1384, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472}
!102 = !{!101, !37, i64 880}
!103 = !{!"SFNT_Interface_", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !37, i64 312, !37, i64 320, !37, i64 328, !37, i64 336, !37, i64 344, !37, i64 352, !37, i64 360, !37, i64 368, !37, i64 376}
!104 = !{!59, !57, i64 0}
!105 = !{!64, !37, i64 64}
!106 = !{!"FT_MemoryRec_", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!107 = !{!106, !37, i64 8}
!108 = !{ptr @ft_mem_alloc, ptr @ft_mem_qalloc}
!109 = !{!"p1 _ZTS10FT_Vector_", !37, i64 0}
!110 = !{!"FT_Outline_", !44, i64 0, !44, i64 2, !109, i64 8, !38, i64 16, !75, i64 24, !33, i64 32}
!111 = !{!"p1 _ZTS15FT_SubGlyphRec_", !37, i64 0}
!112 = !{!"FT_GlyphLoadRec_", !110, i64 0, !109, i64 40, !109, i64 48, !33, i64 56, !111, i64 64}
!113 = !{!"FT_GlyphLoaderRec_", !49, i64 0, !33, i64 8, !33, i64 12, !33, i64 16, !32, i64 20, !112, i64 24, !112, i64 96, !37, i64 168}
!114 = !{!113, !49, i64 0}
!115 = !{!61, !61, i64 0}
!116 = !{ptr @ft_mem_qalloc}
!117 = !{!33, !33, i64 0}
!118 = !{!112, !44, i64 2}
!119 = !{!112, !44, i64 0}
!120 = !{!112, !33, i64 32}
!121 = !{!112, !33, i64 56}
!122 = !{!109, !109, i64 0}
!123 = !{!38, !38, i64 0}
!124 = !{!111, !111, i64 0}
!125 = !{i64 0, i64 2, !74, i64 2, i64 2, !74, i64 8, i64 8, !122, i64 16, i64 8, !123, i64 24, i64 8, !76, i64 32, i64 4, !117, i64 40, i64 8, !122, i64 48, i64 8, !122, i64 56, i64 4, !117, i64 64, i64 8, !124}
!126 = !{!113, !109, i64 32}
!127 = !{!106, !37, i64 16}
!128 = !{ptr @ft_mem_free}
!129 = !{!113, !38, i64 40}
!130 = !{!113, !75, i64 48}
!131 = !{!113, !109, i64 64}
!132 = !{!113, !111, i64 88}
!133 = !{!113, !109, i64 72}
!134 = !{!113, !33, i64 8}
!135 = !{!113, !33, i64 12}
!136 = !{!113, !33, i64 16}
!137 = !{ptr @FT_GlyphLoader_Reset, ptr @ft_mem_free}
!138 = !{ptr @ft_mem_realloc, ptr @ft_mem_qrealloc}
!139 = !{!113, !32, i64 20}
!140 = !{!110, !109, i64 8}
!141 = !{!110, !44, i64 2}
!142 = !{!110, !38, i64 16}
!143 = !{!110, !75, i64 24}
!144 = !{!110, !44, i64 0}
!145 = !{!113, !109, i64 136}
!146 = !{!113, !109, i64 144}
!147 = !{ptr @ft_mem_qrealloc, ptr @ft_mem_free}
!148 = !{ptr @ft_mem_qrealloc}
!149 = !{!106, !37, i64 24}
!150 = !{ptr @ft_mem_realloc, ptr @ft_mem_qrealloc, ptr @ft_mem_free}
!151 = !{!112, !111, i64 64}
!152 = !{!"p2 _ZTS15FT_HashnodeRec_", !40, i64 0}
!153 = !{!"FT_HashRec_", !33, i64 0, !33, i64 4, !33, i64 8, !37, i64 16, !37, i64 24, !152, i64 32}
!154 = !{!153, !33, i64 4}
!155 = !{!153, !33, i64 0}
!156 = !{!153, !33, i64 8}
!157 = !{!153, !37, i64 16}
!158 = !{!153, !37, i64 24}
!159 = !{!153, !152, i64 32}
end_hunk_1
