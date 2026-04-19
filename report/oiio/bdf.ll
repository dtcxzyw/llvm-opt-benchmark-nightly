inline.NumInlined: 34
inline.NumDeleted: 11
begin_hunk_0_@BDF_Face_Init:bb.a
  store i8 0, ptr %i.u, align 1, !tbaa !41
  br label %.outer.i.i.outer

.outer.i.i.outer:                                 ; preds = %bb.m, %bb.d
  %.0100.ph.i.i.ph = phi i64 [ %i.ap, %bb.m ], [ 1024, %bb.d ] ; 4 uses
  %.098.ph.i.i.ph = phi i32 [ %.098.lcssa.i.i, %bb.m ], [ 256, %bb.d ]
  %.095.ph.i.i.ph = phi i64 [ %.196.peel.i.i, %bb.m ], [ 0, %bb.d ]
  %.086.ph.i.i.ph = phi i64 [ %.187.peel.i.i, %bb.m ], [ 0, %bb.d ] ; 2 uses
  %.085.ph.i.i.ph = phi ptr [ %i.aq, %bb.m ], [ %i.u, %bb.d ] ; 11 uses
  %.084.ph.i.i.ph = phi i64 [ %.084.ph10.i.i, %bb.m ], [ 1, %bb.d ]
  br label %.outer.i.i

.outer.i.i:                                       ; preds = %.outer.i.i.outer, %bb.n
  %.098.ph.i.i = phi i32 [ %.098.lcssa.i.i, %bb.n ], [ %.098.ph.i.i.ph, %.outer.i.i.outer ]
  %.095.ph.i.i = phi i64 [ %i.as, %bb.n ], [ %.095.ph.i.i.ph, %.outer.i.i.outer ]
  %.088.ph.i.i = phi i64 [ %i.as, %bb.n ], [ %.086.ph.i.i.ph, %.outer.i.i.outer ]
  %.086.ph.i.i.a = phi i64 [ %.187.peel.i.i, %bb.n ], [ %.086.ph.i.i.ph, %.outer.i.i.outer ]
  %.084.ph.i.i = phi i64 [ %.084.ph10.i.i, %bb.n ], [ %.084.ph.i.i.ph, %.outer.i.i.outer ]
  br label %.outer5.i.i

.outer5.i.i:                                      ; preds = %bb.t, %.outer.i.i
  %.not109.ph.i.i.a = phi i1 [ false, %.outer.i.i ], [ true, %bb.t ]
  %.098.ph6.i.i = phi i32 [ %.098.ph.i.i, %.outer.i.i ], [ %switch.select120.i.i, %bb.t ] ; 3 uses
  %.095.ph7.i.i = phi i64 [ %.095.ph.i.i, %.outer.i.i ], [ %.196.peel.i.i, %bb.t ]
  %.093.ph.i.i = phi i64 [ 0, %.outer.i.i ], [ %i.bg, %bb.t ] ; 4 uses
  %.088.ph8.i.i = phi i64 [ %.088.ph.i.i, %.outer.i.i ], [ %.189.peel.i.i, %bb.t ] ; 4 uses
  %.086.ph9.i.i = phi i64 [ %.086.ph.i.i.a, %.outer.i.i ], [ %.187.peel.i.i, %bb.t ]
  %.084.ph10.i.i = phi i64 [ %.084.ph.i.i, %.outer.i.i ], [ %i.bf, %bb.t ] ; 7 uses
  br i1 %.not109.ph.i.i.a, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.outer5.i.i
  %i.w = getelementptr inbounds i8, ptr %.085.ph.i.i.ph, i64 %.088.ph8.i.i
  %i.x = sub i64 %.0100.ph.i.i.ph, %.088.ph8.i.i
  %i.y = call i64 @FT_Stream_TryRead(ptr noundef %0, ptr noundef %i.w, i64 noundef %i.x) #20 ; 2 uses
  %i.z = add nsw i64 %i.y, %.088.ph8.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.outer5.i.i
  %.196.peel.i.i = phi i64 [ %i.y, %bb.e ], [ %.095.ph7.i.i, %.outer5.i.i ] ; 3 uses
  %.189.peel.i.i = phi i64 [ 0, %bb.e ], [ %.088.ph8.i.i, %.outer5.i.i ]
  %.187.peel.i.i = phi i64 [ %i.z, %bb.e ], [ %.086.ph9.i.i, %.outer5.i.i ] ; 7 uses
  %i.aa = icmp slt i64 %.093.ph.i.i, %.187.peel.i.i
  br i1 %i.aa, label %bb.g, label %.loopexit60.i.i

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds i8, ptr %.085.ph.i.i.ph, i64 %.093.ph.i.i
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !41
  %i.ad = sext i8 %i.ac to i32
  %i.ae = icmp eq i32 %.098.ph6.i.i, %i.ad        ; 2 uses
  %spec.select.i.i = select i1 %i.ae, i32 256, i32 %.098.ph6.i.i
  %i.af = zext i1 %i.ae to i64
  %spec.select91.i.i = add nsw i64 %.093.ph.i.i, %i.af
  br label %.loopexit60.i.i

.loopexit60.i.i:                                  ; preds = %bb.g, %bb.f
  %.098.lcssa.i.i = phi i32 [ %.098.ph6.i.i, %bb.f ], [ %spec.select.i.i, %bb.g ] ; 2 uses
  %.093.lcssa.i.i = phi i64 [ %.093.ph.i.i, %bb.f ], [ %spec.select91.i.i, %bb.g ] ; 8 uses
  %i.ag = icmp slt i64 %.093.lcssa.i.i, %.187.peel.i.i
  br i1 %i.ag, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit60.i.i, %bb.h
  %.09224.i.i = phi i64 [ %i.aj, %bb.h ], [ %.093.lcssa.i.i, %.loopexit60.i.i ] ; 6 uses
  %i.ah = getelementptr inbounds i8, ptr %.085.ph.i.i.ph, i64 %.09224.i.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !41  ; 4 uses
  switch i8 %i.ai, label %bb.h [
    i8 10, label %bb.o
end_hunk_0
begin_hunk_1_@BDF_Face_Init:bb.a
  %exitcond.not.i.i = icmp eq i64 %i.aj, %.187.peel.i.i
  br i1 %exitcond.not.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !42

.critedge.i.i:                                    ; preds = %.loopexit60.i.i, %bb.h
  %i.ak = icmp eq i64 %.196.peel.i.i, 0
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge.i.i
  %i.al = icmp eq i64 %.084.ph10.i.i, 1
  br i1 %i.al, label %bdf_readstream_.exit.sink.split.i, label %bdf_readstream_.exit.i

bb.j:                                             ; preds = %.critedge.i.i
end_hunk_1
begin_hunk_2_@BDF_Face_Init:bb.a
  br i1 %i.am, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.an = icmp samesign ugt i64 %.0100.ph.i.i.ph, 65535
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp eq i64 %.084.ph10.i.i, 1
  %..i.i = select i1 %i.ao, i32 176, i32 6
  br label %bdf_readstream_.exit.sink.split.i

bb.m:                                             ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %.0100.ph.i.i.ph, 1     ; 2 uses
  %i.aq = call ptr @ft_mem_qrealloc(ptr noundef %i.t, i64 noundef 1, i64 noundef %.0100.ph.i.i.ph, i64 noundef %i.ap, ptr noundef %.085.ph.i.i.ph, ptr noundef nonnull %i.c) #20 ; 2 uses
  %i.ar = load i32, ptr %i.c, align 4, !tbaa !3
  %.not116.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not116.i.i, label %.outer.i.i.outer, label %bdf_readstream_.exit.i

bb.n:                                             ; preds = %bb.j
  %i.as = sub nsw i64 %.187.peel.i.i, %.093.lcssa.i.i ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %.085.ph.i.i.ph, i64 %.093.lcssa.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %.085.ph.i.i.ph, ptr nonnull align 1 %i.at, i64 %i.as, i1 false)
  br label %.outer.i.i

bb.o:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.au = getelementptr inbounds i8, ptr %.085.ph.i.i.ph, i64 %.09224.i.i ; 2 uses
  store i8 0, ptr %i.au, align 1, !tbaa !41
  %i.av = getelementptr inbounds i8, ptr %.085.ph.i.i.ph, i64 %.093.lcssa.i.i ; 3 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !41
  switch i8 %i.aw, label %bb.p [
    i8 35, label %bb.t
end_hunk_2
begin_hunk_3_@BDF_Face_Init:bb.a
bb.q:                                             ; preds = %bb.p
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.az = sub nsw i64 %.09224.i.i, %.093.lcssa.i.i ; 2 uses
  %i.ba = call i32 %i.ay(ptr noundef nonnull %i.av, i64 noundef %i.az, i64 noundef %.084.ph10.i.i, ptr noundef nonnull %i.b, ptr noundef %i.i) #20, !inline_history !44 ; 3 uses
  store i32 %i.ba, ptr %i.c, align 4, !tbaa !3
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.bd = call i32 %i.bc(ptr noundef nonnull %i.av, i64 noundef %i.az, i64 noundef %.084.ph10.i.i, ptr noundef nonnull %i.b, ptr noundef %i.i) #20, !inline_history !44 ; 2 uses
  store i32 %i.bd, ptr %i.c, align 4, !tbaa !3
  br label %bb.s

end_hunk_3
begin_hunk_4_@BDF_Face_Init:bb.a
  br i1 %.not115.i.i, label %bb.t, label %bdf_readstream_.exit.i

bb.t:                                             ; preds = %bb.s, %bb.p, %bb.o, %bb.o
  %i.bf = add i64 %.084.ph10.i.i, 1
  store i8 %i.ai, ptr %i.au, align 1, !tbaa !41
  %i.bg = add nsw i64 %.09224.i.i, 1
  %switch.selectcmp.i.i = icmp eq i8 %i.ai, 13
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 10, i32 256
  %switch.selectcmp119.i.i = icmp eq i8 %i.ai, 10
  %switch.select120.i.i = select i1 %switch.selectcmp119.i.i, i32 13, i32 %switch.select.i.i
  br label %.outer5.i.i

bdf_readstream_.exit.sink.split.i:                ; preds = %bb.l, %bb.i
  %.sink.i = phi i32 [ %..i.i, %bb.l ], [ 176, %bb.i ]
  store i32 %.sink.i, ptr %i.c, align 4, !tbaa !3
  br label %bdf_readstream_.exit.i

bdf_readstream_.exit.i:                           ; preds = %bb.m, %bb.s, %bdf_readstream_.exit.sink.split.i, %bb.i, %bb.c
  %.3.i.i = phi ptr [ %.085.ph.i.i.ph, %bdf_readstream_.exit.sink.split.i ], [ %i.u, %bb.c ], [ %.085.ph.i.i.ph, %bb.s ], [ %.085.ph.i.i.ph, %bb.i ], [ %i.aq, %bb.m ]
  call void @ft_mem_free(ptr noundef %i.t, ptr noundef %.3.i.i) #20
  %i.bh = load i32, ptr %i.c, align 4, !tbaa !3   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
end_hunk_4
begin_hunk_5_@bdf_free_font:bb.a
  br i1 %.not91, label %._crit_edge87, label %.lr.ph86

.lr.ph86:                                         ; preds = %._crit_edge82, %.lr.ph86
  %.084 = phi ptr [ %i.bh, %.lr.ph86 ], [ %i.bc, %._crit_edge82 ] ; 3 uses
  %.383 = phi i64 [ %i.bg, %.lr.ph86 ], [ 0, %._crit_edge82 ]
  %i.bf = load ptr, ptr %.084, align 8, !tbaa !168
  tail call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.bf) #20
  store ptr null, ptr %.084, align 8, !tbaa !168
  %i.bg = add nuw i64 %.383, 1                    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.084, i64 24
  %i.bi = load i64, ptr %i.bd, align 8, !tbaa !186
  %i.bj = icmp ult i64 %i.bg, %i.bi
  br i1 %i.bj, label %.lr.ph86, label %._crit_edge87.loopexit, !llvm.loop !187
end_hunk_5
begin_hunk_6_@bdf_parse_glyphs_:bb.a
  br i1 %.not451, label %.critedge423, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aw, %bb.az
  %.0315449 = phi ptr [ %.1, %bb.az ], [ %i.ia, %bb.aw ] ; 6 uses
  %.0317448 = phi i64 [ %i.is, %bb.az ], [ 0, %bb.aw ] ; 5 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 %.0317448
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !41  ; 3 uses
  %i.id = lshr i8 %i.ic, 3
  %i.ie = zext nneg i8 %i.id to i64
end_hunk_6
begin_hunk_7_@bdf_parse_glyphs_:bb.a
  br i1 %.not384, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph
  %i.im = load i8, ptr %.0315449, align 1, !tbaa !41
  %i.in = shl i8 %i.im, 4
  %i.io = sext i8 %i.ic to i64
  %i.ip = getelementptr inbounds i8, ptr @a2i, i64 %i.io
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !41
  %i.ir = add i8 %i.in, %i.iq
  store i8 %i.ir, ptr %.0315449, align 1, !tbaa !41
  %i.is = add nuw i64 %.0317448, 1                ; 3 uses
  %i.it = icmp uge i64 %i.is, %i.hw
  %i.iu = and i64 %.0317448, 1
  %.not389 = icmp eq i64 %i.iu, 0
  %or.cond421 = or i1 %i.it, %.not389
  br i1 %or.cond421, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.iv = getelementptr inbounds nuw i8, ptr %.0315449, i64 1 ; 2 uses
  store i8 0, ptr %i.iv, align 1, !tbaa !41
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %.1 = phi ptr [ %i.iv, %bb.ay ], [ %.0315449, %bb.ax ] ; 2 uses
  %exitcond.not = icmp eq i64 %i.is, %i.hw
  br i1 %exitcond.not, label %.critedge423, label %.lr.ph, !llvm.loop !208

end_hunk_7
begin_hunk_8_@bdf_parse_glyphs_:bb.a
  br label %.critedge423

.critedge423:                                     ; preds = %bb.az, %bb.aw, %bb.bb, %bb.ba
  %.0317447 = phi i64 [ %.0317448, %bb.ba ], [ %.0317448, %bb.bb ], [ 0, %bb.aw ], [ %i.hw, %bb.az ]
  %.0315445 = phi ptr [ %.0315449, %bb.ba ], [ %.0315449, %bb.bb ], [ %i.ia, %bb.aw ], [ %.1, %bb.az ] ; 2 uses
  %i.iz = load i16, ptr %i.ho, align 4, !tbaa !209 ; 2 uses
  %.not386 = icmp eq i16 %i.iz, 0
  br i1 %.not386, label %bb.bd, label %bb.bc
end_hunk_8
begin_hunk_9_@bdf_parse_glyphs_:bb.a
  %i.jg = and i64 %i.jf, 7
  %i.jh = getelementptr inbounds nuw i8, ptr @nibble_mask, i64 %i.jg
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !41
  %i.jj = load i8, ptr %.0315445, align 1, !tbaa !41
  %i.jk = and i8 %i.jj, %i.ji
  store i8 %i.jk, ptr %.0315445, align 1, !tbaa !41
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.critedge423
  %i.jl = icmp eq i64 %.0317447, %i.hw
  br i1 %i.jl, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
end_hunk_9
