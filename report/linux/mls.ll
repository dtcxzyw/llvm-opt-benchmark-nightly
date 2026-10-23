Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/mls?download=true
inline.NumInlined: 40
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@mls_level_isvalid:bb.a
  %.0.i30 = phi i32 [ %i.ar, %bb.i ], [ %i.ba, %bb.l ], [ %i.az, %bb.k ] ; 2 uses
  %i.bb = load i32, ptr %i.ab, align 8
  %i.bc = icmp ult i32 %.0.i30, %i.bb
  br i1 %i.bc, label %.lr.ph, label %.loopexit, !llvm.loop !15

.loopexit:                                        ; preds = %bb.g, %.lr.ph, %ebitmap_next_positive.exit, %bb.f, %ebitmap_start_positive.exit, %bb.e, %bb.d, %bb.c, %bb.a, %bb.b
  %.020 = phi i1 [ false, %bb.a ], [ false, %bb.e ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.c ], [ true, %ebitmap_start_positive.exit ], [ true, %bb.f ], [ %.not27.not.not, %.lr.ph ], [ %.not27.not.not, %ebitmap_next_positive.exit ], [ true, %bb.g ]
  ret i1 %.020
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @symtab_search(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ebitmap_contains(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext i1 @mls_range_isvalid(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call zeroext i1 @mls_level_isvalid(ptr noundef %0, ptr noundef %1) #10
  br i1 %i.a, label %bb.b, label %mls_level_dom.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.c = tail call zeroext i1 @mls_level_isvalid(ptr noundef %0, ptr noundef %i.b) #10
  br i1 %i.c, label %bb.c, label %mls_level_dom.exit

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.b, align 8
  %i.e = load i32, ptr %1, align 8
  %.not.i = icmp ult i32 %i.d, %i.e
  br i1 %.not.i, label %mls_level_dom.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %1, i64 32
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = tail call i32 @ebitmap_contains(ptr noundef %i.f, ptr noundef %i.g, i32 noundef 0) #9
  %i.i = icmp ne i32 %i.h, 0
  br label %mls_level_dom.exit

mls_level_dom.exit:                               ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.c ], [ %i.i, %bb.d ]
  ret i1 %i.j
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @mls_context_isvalid(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %mls_range_isvalid.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 16         ; 3 uses
  %i.c = tail call zeroext i1 @mls_level_isvalid(ptr noundef %0, ptr noundef %i.b) #10
  br i1 %i.c, label %bb.c, label %mls_range_isvalid.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %1, i64 40         ; 3 uses
  %i.e = tail call zeroext i1 @mls_level_isvalid(ptr noundef %0, ptr noundef %i.d) #10
  br i1 %i.e, label %bb.d, label %mls_range_isvalid.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr %i.d, align 8
  %i.g = load i32, ptr %i.b, align 8
  %.not.i.i = icmp ult i32 %i.f, %i.g
  br i1 %.not.i.i, label %mls_range_isvalid.exit.thread, label %mls_range_isvalid.exit

mls_range_isvalid.exit:                           ; preds = %bb.d
  %i.h = getelementptr i8, ptr %1, i64 48         ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.j = tail call i32 @ebitmap_contains(ptr noundef %i.h, ptr noundef %i.i, i32 noundef 0) #9
  %.not26 = icmp eq i32 %i.j, 0
  br i1 %.not26, label %mls_range_isvalid.exit.thread, label %bb.e

bb.e:                                             ; preds = %mls_range_isvalid.exit
  %i.k = getelementptr i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %mls_range_isvalid.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %1, align 8                ; 3 uses
  %.not17 = icmp eq i32 %i.n, 0
  br i1 %.not17, label %mls_range_isvalid.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr i8, ptr %0, i64 120
  %i.p = load i32, ptr %i.o, align 8
  %i.q = icmp ugt i32 %i.n, %i.p
  br i1 %i.q, label %mls_range_isvalid.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr i8, ptr %0, i64 280
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = add i32 %i.n, -1
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr [8 x i8], ptr %i.s, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8              ; 5 uses
  %.not18 = icmp eq ptr %i.w, null
  br i1 %.not18, label %mls_range_isvalid.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr i8, ptr %i.w, i64 24
  %i.y = load i32, ptr %i.b, align 8
  %i.z = load i32, ptr %i.x, align 8
  %.not.i = icmp ult i32 %i.y, %i.z
  br i1 %.not.i, label %mls_range_isvalid.exit.thread, label %mls_level_dom.exit

mls_level_dom.exit:                               ; preds = %bb.i
  %i.aa = getelementptr i8, ptr %i.w, i64 32
  %i.ab = tail call i32 @ebitmap_contains(ptr noundef %i.i, ptr noundef %i.aa, i32 noundef 0) #9
  %.not27 = icmp eq i32 %i.ab, 0
  br i1 %.not27, label %mls_range_isvalid.exit.thread, label %bb.j

bb.j:                                             ; preds = %mls_level_dom.exit
  %i.ac = getelementptr i8, ptr %i.w, i64 48
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = load i32, ptr %i.d, align 8
  %.not.i21 = icmp ult i32 %i.ad, %i.ae
  br i1 %.not.i21, label %mls_level_dom.exit22.thread, label %mls_level_dom.exit22

mls_level_dom.exit22:                             ; preds = %bb.j
  %i.af = getelementptr i8, ptr %i.w, i64 56
  %i.ag = tail call i32 @ebitmap_contains(ptr noundef %i.af, ptr noundef %i.h, i32 noundef 0) #9
  %.fr = freeze i32 %i.ag
  %.not28 = icmp eq i32 %.fr, 0
  br i1 %.not28, label %mls_level_dom.exit22.thread, label %mls_range_isvalid.exit.thread

mls_level_dom.exit22.thread:                      ; preds = %bb.j, %mls_level_dom.exit22
  br label %mls_range_isvalid.exit.thread

mls_range_isvalid.exit.thread:                    ; preds = %bb.i, %bb.d, %bb.b, %bb.c, %mls_level_dom.exit22.thread, %mls_level_dom.exit22, %bb.h, %mls_level_dom.exit, %bb.f, %bb.g, %bb.e, %mls_range_isvalid.exit, %bb.a
  %.0 = phi i1 [ false, %mls_range_isvalid.exit ], [ true, %bb.e ], [ false, %bb.h ], [ false, %bb.f ], [ true, %bb.a ], [ false, %bb.g ], [ false, %bb.d ], [ false, %mls_level_dom.exit ], [ true, %mls_level_dom.exit22 ], [ false, %mls_level_dom.exit22.thread ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.i ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @mls_context_to_sid(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i8 %1, 0
  %i.c = icmp eq i32 %5, 0
  %or.cond = and i1 %i.b, %i.c
  %. = select i1 %or.cond, i32 -22, i32 0
  br label %mls_context_cpy.exit

bb.c:                                             ; preds = %bb.a
  %.not85 = icmp eq i8 %1, 0
  br i1 %.not85, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.d = icmp eq i32 %5, 0
  br i1 %i.d, label %mls_context_cpy.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call ptr @sidtab_search_entry(ptr noundef %4, i32 noundef range(i32 1, 0) %5) #9 ; 6 uses
  %.not.i = icmp eq ptr %i.e, null
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.not86100 = icmp eq ptr %i.f, null
  %.not86 = or i1 %.not.i, %.not86100
  br i1 %.not86, label %mls_context_cpy.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr i8, ptr %i.e, i64 24
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %3, i64 16
  store i32 %i.h, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %3, i64 24         ; 2 uses
  %i.k = getelementptr i8, ptr %i.e, i64 32
  %i.l = tail call i32 @ebitmap_cpy(ptr noundef %i.j, ptr noundef %i.k) #9 ; 2 uses
  %.not.i99 = icmp eq i32 %i.l, 0
  br i1 %.not.i99, label %bb.g, label %mls_context_cpy.exit

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr i8, ptr %i.e, i64 48
  %i.n = load i32, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %3, i64 40
  store i32 %i.n, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %3, i64 48
  %i.q = getelementptr i8, ptr %i.e, i64 56
  %i.r = tail call i32 @ebitmap_cpy(ptr noundef %i.p, ptr noundef %i.q) #9 ; 2 uses
  %.not13.i = icmp eq i32 %i.r, 0
  br i1 %.not13.i, label %mls_context_cpy.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ebitmap_destroy(ptr noundef %i.j) #9
  br label %mls_context_cpy.exit

bb.i:                                             ; preds = %bb.c
  %i.s = tail call ptr @strchr(ptr noundef %2, i32 noundef 45) #9 ; 3 uses
  %.not87 = icmp eq ptr %i.s, null
  br i1 %.not87, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.s, align 1
  %i.t = getelementptr i8, ptr %i.s, i64 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.5.0 = phi ptr [ null, %bb.i ], [ %i.t, %bb.j ] ; 4 uses
  %i.u = getelementptr i8, ptr %0, i64 152        ; 2 uses
  %i.v = getelementptr i8, ptr %3, i64 16         ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 176        ; 4 uses
  %i.x = icmp eq ptr %2, null
  br i1 %i.x, label %._crit_edge.1, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 58) #9 ; 3 uses
  %.not88 = icmp eq ptr %i.y, null
  br i1 %.not88, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr i8, ptr %i.y, i64 1
  store i8 0, ptr %i.y, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.065 = phi ptr [ %i.z, %bb.m ], [ null, %bb.l ] ; 2 uses
  %i.aa = tail call ptr @symtab_search(ptr noundef %i.u, ptr noundef nonnull %2) #9 ; 2 uses
  %.not89 = icmp eq ptr %i.aa, null
  br i1 %.not89, label %mls_context_cpy.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = load i32, ptr %i.aa, align 8
  store i32 %i.ab, ptr %i.v, align 8
  %.not90104 = icmp eq ptr %.065, null
  br i1 %.not90104, label %._crit_edge, label %.lr.ph106

.lr.ph106:                                        ; preds = %bb.o
  %i.ac = getelementptr i8, ptr %3, i64 24        ; 2 uses
  br label %bb.p

..loopexit_crit_edge:                             ; preds = %bb.y
  br label %.backedge, !llvm.loop !16

bb.p:                                             ; preds = %.lr.ph106, %.backedge
  %.1105 = phi ptr [ %.065, %.lr.ph106 ], [ %.2, %.backedge ] ; 3 uses
  %i.ad = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.1105, i32 noundef 44) #9 ; 3 uses
  %.not91.a = icmp eq ptr %i.ad, null
  br i1 %.not91.a, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ae = getelementptr i8, ptr %i.ad, i64 1
  store i8 0, ptr %i.ad, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.2 = phi ptr [ %i.ae, %bb.q ], [ null, %bb.p ] ; 2 uses
  %i.af = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.1105, i32 noundef 46) #9 ; 3 uses
  %.not92 = icmp eq ptr %i.af, null
  br i1 %.not92, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ag = getelementptr i8, ptr %i.af, i64 1
  store i8 0, ptr %i.af, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.064 = phi ptr [ %i.ag, %bb.s ], [ null, %bb.r ] ; 2 uses
  %i.ah = tail call ptr @symtab_search(ptr noundef %i.w, ptr noundef nonnull %.1105) #9 ; 3 uses
  %.not93 = icmp eq ptr %i.ah, null
  br i1 %.not93, label %mls_context_cpy.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = add i32 %i.ai, -1
  %i.ak = tail call i32 @ebitmap_set_bit(ptr noundef %i.ac, i32 noundef %i.aj, i32 noundef 1) #9 ; 2 uses
  %.not94 = icmp eq i32 %i.ak, 0
  br i1 %.not94, label %bb.v, label %mls_context_cpy.exit

bb.v:                                             ; preds = %bb.u
  %i.al = icmp eq ptr %.064, null
  br i1 %i.al, label %.backedge, label %bb.w

.backedge:                                        ; preds = %..loopexit_crit_edge, %bb.v
  %.not90 = icmp eq ptr %.2, null
  br i1 %.not90, label %._crit_edge, label %bb.p, !llvm.loop !16

bb.w:                                             ; preds = %bb.v
  %i.am = tail call ptr @symtab_search(ptr noundef %i.w, ptr noundef nonnull %.064) #9 ; 3 uses
  %.not95 = icmp eq ptr %i.am, null
  br i1 %.not95, label %mls_context_cpy.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.an = load i32, ptr %i.ah, align 4            ; 2 uses
  %i.ao = load i32, ptr %i.am, align 4
  %.not96 = icmp ult i32 %i.an, %i.ao
  br i1 %.not96, label %.lr.ph, label %mls_context_cpy.exit, !llvm.loop !16

bb.y:                                             ; preds = %.lr.ph
  %i.ap = add nuw i32 %.063103, 1                 ; 2 uses
  %i.aq = load i32, ptr %i.am, align 4
  %i.ar = icmp ult i32 %i.ap, %i.aq
  br i1 %i.ar, label %.lr.ph, label %..loopexit_crit_edge, !llvm.loop !17

.lr.ph:                                           ; preds = %bb.x, %bb.y
  %.063103 = phi i32 [ %i.ap, %bb.y ], [ %i.an, %bb.x ] ; 2 uses
  %i.as = tail call i32 @ebitmap_set_bit(ptr noundef %i.ac, i32 noundef %.063103, i32 noundef 1) #9 ; 2 uses
  %.not97 = icmp eq i32 %i.as, 0
  br i1 %.not97, label %bb.y, label %mls_context_cpy.exit

._crit_edge:                                      ; preds = %.backedge, %bb.o
  %i.at = icmp eq ptr %.sroa.5.0, null
  br i1 %i.at, label %._crit_edge.1.thread, label %bb.z

bb.z:                                             ; preds = %._crit_edge
  %i.au = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.sroa.5.0, i32 noundef 58) #9 ; 3 uses
  %.not88.1 = icmp eq ptr %i.au, null
  br i1 %.not88.1, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.av = getelementptr i8, ptr %i.au, i64 1
  store i8 0, ptr %i.au, align 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.065.1 = phi ptr [ %i.av, %bb.aa ], [ null, %bb.z ] ; 2 uses
  %i.aw = tail call ptr @symtab_search(ptr noundef %i.u, ptr noundef nonnull %.sroa.5.0) #9 ; 2 uses
  %.not89.1 = icmp eq ptr %i.aw, null
  br i1 %.not89.1, label %mls_context_cpy.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = getelementptr i8, ptr %3, i64 40
  store i32 %i.ax, ptr %i.ay, align 8
  %.not90104.1 = icmp eq ptr %.065.1, null
  br i1 %.not90104.1, label %._crit_edge.1.thread143, label %.lr.ph106.1

.lr.ph106.1:                                      ; preds = %bb.ac
  %i.az = getelementptr i8, ptr %3, i64 48        ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.backedge.1, %.lr.ph106.1
  %.1105.1 = phi ptr [ %.065.1, %.lr.ph106.1 ], [ %.2.1, %.backedge.1 ] ; 3 uses
  %i.ba = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.1105.1, i32 noundef 44) #9 ; 3 uses
  %.not91.1.a = icmp eq ptr %i.ba, null
  br i1 %.not91.1.a, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bb = getelementptr i8, ptr %i.ba, i64 1
  store i8 0, ptr %i.ba, align 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.2.1 = phi ptr [ %i.bb, %bb.ae ], [ null, %bb.ad ] ; 2 uses
  %i.bc = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.1105.1, i32 noundef 46) #9 ; 3 uses
  %.not92.1 = icmp eq ptr %i.bc, null
  br i1 %.not92.1, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bd = getelementptr i8, ptr %i.bc, i64 1
  store i8 0, ptr %i.bc, align 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.064.1 = phi ptr [ %i.bd, %bb.ag ], [ null, %bb.af ] ; 2 uses
  %i.be = tail call ptr @symtab_search(ptr noundef %i.w, ptr noundef nonnull %.1105.1) #9 ; 3 uses
  %.not93.1 = icmp eq ptr %i.be, null
  br i1 %.not93.1, label %mls_context_cpy.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = add i32 %i.bf, -1
  %i.bh = tail call i32 @ebitmap_set_bit(ptr noundef %i.az, i32 noundef %i.bg, i32 noundef 1) #9 ; 2 uses
  %.not94.1 = icmp eq i32 %i.bh, 0
  br i1 %.not94.1, label %bb.aj, label %mls_context_cpy.exit

bb.aj:                                            ; preds = %bb.ai
  %i.bi = icmp eq ptr %.064.1, null
  br i1 %i.bi, label %.backedge.1, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bj = tail call ptr @symtab_search(ptr noundef %i.w, ptr noundef nonnull %.064.1) #9 ; 3 uses
  %.not95.1 = icmp eq ptr %i.bj, null
  br i1 %.not95.1, label %mls_context_cpy.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bk = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bl = load i32, ptr %i.bj, align 4
  %.not96.1 = icmp ult i32 %i.bk, %i.bl
  br i1 %.not96.1, label %.lr.ph.1, label %mls_context_cpy.exit, !llvm.loop !16

.lr.ph.1:                                         ; preds = %bb.al, %bb.am
  %.063103.1 = phi i32 [ %i.bn, %bb.am ], [ %i.bk, %bb.al ] ; 2 uses
  %i.bm = tail call i32 @ebitmap_set_bit(ptr noundef %i.az, i32 noundef %.063103.1, i32 noundef 1) #9 ; 2 uses
  %.not97.1 = icmp eq i32 %i.bm, 0
  br i1 %.not97.1, label %bb.am, label %mls_context_cpy.exit

bb.am:                                            ; preds = %.lr.ph.1
  %i.bn = add nuw i32 %.063103.1, 1               ; 2 uses
  %i.bo = load i32, ptr %i.bj, align 4
  %i.bp = icmp ult i32 %i.bn, %i.bo
  br i1 %i.bp, label %.lr.ph.1, label %..loopexit_crit_edge.1, !llvm.loop !17

..loopexit_crit_edge.1:                           ; preds = %bb.am
  br label %.backedge.1, !llvm.loop !16

.backedge.1:                                      ; preds = %..loopexit_crit_edge.1, %bb.aj
  %.not90.1 = icmp eq ptr %.2.1, null
  br i1 %.not90.1, label %._crit_edge.1, label %bb.ad, !llvm.loop !16

._crit_edge.1:                                    ; preds = %.backedge.1, %bb.k
  %6 = icmp eq ptr %.sroa.5.0, null
  br i1 %6, label %._crit_edge.1.thread, label %._crit_edge.1.thread143

._crit_edge.1.thread:                             ; preds = %._crit_edge, %._crit_edge.1
  %i.bq = load i32, ptr %i.v, align 8
  %i.br = getelementptr i8, ptr %3, i64 40
  store i32 %i.bq, ptr %i.br, align 8
  %i.bs = getelementptr i8, ptr %3, i64 48
  %i.bt = getelementptr i8, ptr %3, i64 24
  %i.bu = tail call i32 @ebitmap_cpy(ptr noundef %i.bs, ptr noundef %i.bt) #9 ; 2 uses
  %.not98 = icmp eq i32 %i.bu, 0
  br i1 %.not98, label %._crit_edge.1.thread143, label %mls_context_cpy.exit

._crit_edge.1.thread143:                          ; preds = %bb.ac, %._crit_edge.1.thread, %._crit_edge.1
  br label %mls_context_cpy.exit

mls_context_cpy.exit:                             ; preds = %bb.x, %bb.w, %bb.u, %bb.t, %.lr.ph, %bb.ah, %bb.ai, %bb.ak, %bb.al, %.lr.ph.1, %bb.n, %bb.ab, %bb.h, %bb.g, %bb.f, %._crit_edge.1.thread, %bb.d, %bb.e, %bb.b, %._crit_edge.1.thread143
  %.167 = phi i32 [ 0, %bb.g ], [ 0, %._crit_edge.1.thread143 ], [ %i.bu, %._crit_edge.1.thread ], [ %i.l, %bb.f ], [ %i.r, %bb.h ], [ -22, %bb.ab ], [ -22, %bb.n ], [ -22, %bb.e ], [ %., %bb.b ], [ -22, %bb.d ], [ %i.bm, %.lr.ph.1 ], [ %i.as, %.lr.ph ], [ -22, %bb.ah ], [ %i.bh, %bb.ai ], [ -22, %bb.ak ], [ -22, %bb.al ], [ -22, %bb.x ], [ %i.ak, %bb.u ], [ -22, %bb.t ], [ -22, %bb.w ]
  ret i32 %.167
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @mls_context_cpy(ptr noundef initializes((16, 20)) %0, ptr noundef %1) unnamed_addr #6 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 16
  store i32 %i.b, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 24
  %i.f = tail call i32 @ebitmap_cpy(ptr noundef %i.d, ptr noundef %i.e) #9 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 40
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %0, i64 40
  store i32 %i.h, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %0, i64 48
  %i.k = getelementptr i8, ptr %1, i64 48
  %i.l = tail call i32 @ebitmap_cpy(ptr noundef %i.j, ptr noundef %i.k) #9 ; 2 uses
  %.not13 = icmp eq i32 %i.l, 0
  br i1 %.not13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ebitmap_destroy(ptr noundef %i.d) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ %i.f, %bb.a ], [ %i.l, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ebitmap_set_bit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ebitmap_cpy(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @mls_from_string(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias ptr @kstrdup(ptr noundef %1, i32 noundef %3) #9 ; 3 uses
  %.not11 = icmp eq ptr %i.b, null
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @mls_context_to_sid(ptr noundef %0, i8 noundef zeroext 58, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef null, i32 noundef 0) #10
  tail call void @kfree(ptr noundef nonnull %i.b) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.09 = phi i32 [ -22, %bb.a ], [ %i.c, %bb.c ], [ -12, %bb.b ]
  ret i32 %.09
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @mls_range_set(ptr noundef initializes((16, 20)) %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i32, ptr %1, align 8
  store i32 %i.b, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = tail call i32 @ebitmap_cpy(ptr noundef %i.c, ptr noundef %i.d) #9 ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %0, i64 40
  store i32 %i.g, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %0, i64 48
  %i.j = getelementptr i8, ptr %1, i64 32
  %i.k = tail call i32 @ebitmap_cpy(ptr noundef %i.i, ptr noundef %i.j) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i32 [ %i.e, %bb.a ], [ %i.k, %bb.b ]
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @mls_setup_user_range(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 16         ; 4 uses
  %i.c = getelementptr i8, ptr %1, i64 40         ; 6 uses
  %i.d = getelementptr i8, ptr %2, i64 24         ; 2 uses
  %i.e = getelementptr i8, ptr %2, i64 48         ; 4 uses
  %i.f = getelementptr i8, ptr %2, i64 72         ; 5 uses
  %i.g = getelementptr i8, ptr %3, i64 16
  %i.h = getelementptr i8, ptr %3, i64 40
  %i.i = load i32, ptr %i.f, align 8              ; 2 uses
  %i.j = load i32, ptr %i.b, align 8
  %.not.i = icmp ult i32 %i.i, %i.j
  br i1 %.not.i, label %mls_level_dom.exit.thread, label %mls_level_dom.exit

mls_level_dom.exit:                               ; preds = %bb.b
  %i.k = getelementptr i8, ptr %2, i64 80         ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 24
  %i.m = tail call i32 @ebitmap_contains(ptr noundef %i.k, ptr noundef %i.l, i32 noundef 0) #9
  %.not67 = icmp eq i32 %i.m, 0
  %.pre75 = load i32, ptr %i.f, align 8           ; 3 uses
  br i1 %.not67, label %mls_level_dom.exit.thread, label %bb.c

bb.c:                                             ; preds = %mls_level_dom.exit
  %i.n = load i32, ptr %i.c, align 8
  %.not.i44 = icmp ult i32 %i.n, %.pre75
  br i1 %.not.i44, label %mls_level_dom.exit.thread, label %mls_level_dom.exit45

mls_level_dom.exit45:                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %1, i64 48
  %i.p = tail call i32 @ebitmap_contains(ptr noundef %i.o, ptr noundef %i.k, i32 noundef 0) #9
  %.not68 = icmp eq i32 %i.p, 0
  br i1 %.not68, label %mls_level_dom.exit45.mls_level_dom.exit.thread_crit_edge, label %bb.f

mls_level_dom.exit45.mls_level_dom.exit.thread_crit_edge: ; preds = %mls_level_dom.exit45
  %.pre = load i32, ptr %i.f, align 8
  br label %mls_level_dom.exit.thread

mls_level_dom.exit.thread:                        ; preds = %mls_level_dom.exit45.mls_level_dom.exit.thread_crit_edge, %bb.c, %bb.b, %mls_level_dom.exit
  %i.q = phi i32 [ %.pre, %mls_level_dom.exit45.mls_level_dom.exit.thread_crit_edge ], [ %.pre75, %bb.c ], [ %i.i, %bb.b ], [ %.pre75, %mls_level_dom.exit ]
  %i.r = load i32, ptr %i.b, align 8
  %.not.i46 = icmp ult i32 %i.r, %i.q
  br i1 %.not.i46, label %mls_level_dom.exit47.thread, label %mls_level_dom.exit47

mls_level_dom.exit47:                             ; preds = %mls_level_dom.exit.thread
  %i.s = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.t = getelementptr i8, ptr %2, i64 80
  %i.u = tail call i32 @ebitmap_contains(ptr noundef %i.s, ptr noundef %i.t, i32 noundef 0) #9
  %.not69 = icmp eq i32 %i.u, 0
  br i1 %.not69, label %mls_level_dom.exit47.thread, label %bb.d

bb.d:                                             ; preds = %mls_level_dom.exit47
  %i.v = load i32, ptr %i.e, align 8
  %i.w = load i32, ptr %i.b, align 8
  %.not.i48 = icmp ult i32 %i.v, %i.w
  br i1 %.not.i48, label %mls_level_dom.exit47.thread, label %mls_level_dom.exit49

mls_level_dom.exit49:                             ; preds = %bb.d
  %i.x = getelementptr i8, ptr %2, i64 56
  %i.y = tail call i32 @ebitmap_contains(ptr noundef %i.x, ptr noundef %i.s, i32 noundef 0) #9
  %.not70 = icmp eq i32 %i.y, 0
  br i1 %.not70, label %mls_level_dom.exit47.thread, label %bb.f

mls_level_dom.exit47.thread:                      ; preds = %bb.d, %mls_level_dom.exit.thread, %mls_level_dom.exit49, %mls_level_dom.exit47
  %i.z = load i32, ptr %i.c, align 8
  %i.aa = load i32, ptr %i.d, align 8
  %.not.i50 = icmp ult i32 %i.z, %i.aa
  br i1 %.not.i50, label %.thread, label %mls_level_dom.exit51

mls_level_dom.exit51:                             ; preds = %mls_level_dom.exit47.thread
  %i.ab = getelementptr i8, ptr %1, i64 48        ; 2 uses
  %i.ac = getelementptr i8, ptr %2, i64 32
  %i.ad = tail call i32 @ebitmap_contains(ptr noundef %i.ab, ptr noundef %i.ac, i32 noundef 0) #9
  %.not71 = icmp eq i32 %i.ad, 0
  br i1 %.not71, label %.thread, label %bb.e

bb.e:                                             ; preds = %mls_level_dom.exit51
  %i.ae = load i32, ptr %i.f, align 8
  %i.af = load i32, ptr %i.c, align 8
  %.not.i52 = icmp ult i32 %i.ae, %i.af
  br i1 %.not.i52, label %.thread, label %mls_level_dom.exit53

mls_level_dom.exit53:                             ; preds = %bb.e
  %i.ag = getelementptr i8, ptr %2, i64 80
  %i.ah = tail call i32 @ebitmap_contains(ptr noundef %i.ag, ptr noundef %i.ab, i32 noundef 0) #9
  %.not72 = icmp eq i32 %i.ah, 0
  br i1 %.not72, label %.thread, label %bb.f

end_hunk_0
