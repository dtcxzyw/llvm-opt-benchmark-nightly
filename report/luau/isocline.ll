Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/isocline?download=true
inline.NumInlined: 1215
inline.NumDeleted: 328
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 23
begin_hunk_0_@sbuf_find_word_end:bb.a
  %i.j = add i8 %.fr26.i, -48
  %or.cond10.i13.i = icmp ult i8 %i.j, 10
  %or.cond.i = or i1 %or.cond10.i13.i, %or.cond28.i12.i
  br i1 %or.cond.i, label %ic_char_is_idletter.exit17.thread.i, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.c
  switch i8 %.fr26.i, label %.loopexit45.i.i.preheader [
    i8 95, label %ic_char_is_idletter.exit17.thread.i
    i8 45, label %ic_char_is_idletter.exit17.thread.i
  ]

ic_char_is_idletter.exit17.thread.i:              ; preds = %switch.early.test.i, %switch.early.test.i, %bb.c
  %i.k = add nuw nsw i64 %i.c, %.0.i.i            ; 3 uses
  %i.l = icmp slt i64 %i.k, %.16.val
  br i1 %i.l, label %.preheader.i.i, label %.loopexit45.i.i.preheader, !llvm.loop !468

.loopexit45.i.i.preheader:                        ; preds = %ic_char_is_idletter.exit17.thread.i, %switch.early.test.i, %.preheader.i.i
  %.2.i.i.ph = phi i64 [ %i.k, %ic_char_is_idletter.exit17.thread.i ], [ %.0.i.i, %switch.early.test.i ], [ %.0.i.i, %.preheader.i.i ]
  br label %.loopexit45.i.i

.loopexit45.i.i:                                  ; preds = %.loopexit45.i.i.preheader, %ic_char_is_idletter.exit.thread22.i
  %.2.i.i = phi i64 [ %i.u, %ic_char_is_idletter.exit.thread22.i ], [ %.2.i.i.ph, %.loopexit45.i.i.preheader ] ; 6 uses
  %i.m = tail call fastcc i64 @str_next_ofs(ptr noundef nonnull readonly %.0.val, i64 noundef %.16.val, i64 noundef %.2.i.i, ptr noundef null) ; 2 uses
  %i.n = icmp slt i64 %i.m, 1
  br i1 %i.n, label %str_find_word_end.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit45.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.2.i.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !48
  %.fr27.i = freeze i8 %i.p                       ; 5 uses
  %i.q = icmp slt i8 %.fr27.i, 0
  %i.r = add nsw i8 %.fr27.i, -65
  %or.cond4.i.i = icmp ult i8 %i.r, 26
  %or.cond27.i.i = select i1 %i.q, i1 true, i1 %or.cond4.i.i
  %i.s = add nsw i8 %.fr27.i, -97
  %or.cond7.i.i = icmp ult i8 %i.s, 26
  %or.cond28.i.i = select i1 %or.cond27.i.i, i1 true, i1 %or.cond7.i.i
  %i.t = add i8 %.fr27.i, -48
  %or.cond10.i.i = icmp ult i8 %i.t, 10
  %or.cond28.i = or i1 %or.cond10.i.i, %or.cond28.i.i
  br i1 %or.cond28.i, label %str_find_word_end.exit, label %switch.early.test25.i

switch.early.test25.i:                            ; preds = %bb.d
  switch i8 %.fr27.i, label %ic_char_is_idletter.exit.thread22.i [
    i8 95, label %str_find_word_end.exit
    i8 45, label %str_find_word_end.exit
  ]

ic_char_is_idletter.exit.thread22.i:              ; preds = %switch.early.test25.i
  %i.u = add nuw nsw i64 %i.m, %.2.i.i            ; 2 uses
  %i.v = icmp slt i64 %i.u, %.16.val
  br i1 %i.v, label %.loopexit45.i.i, label %str_find_word_end.exit, !llvm.loop !34

str_find_word_end.exit:                           ; preds = %.loopexit45.i.i, %bb.d, %switch.early.test25.i, %switch.early.test25.i, %ic_char_is_idletter.exit.thread22.i, %bb.a
  %i.w = phi i64 [ %.16.val, %bb.a ], [ %.2.i.i, %bb.d ], [ %.2.i.i, %switch.early.test25.i ], [ %.2.i.i, %switch.early.test25.i ], [ %.16.val, %.loopexit45.i.i ], [ %.16.val, %ic_char_is_idletter.exit.thread22.i ]
  ret i64 %i.w
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i64 @find_matching_brace(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #5 {
bb.a:
  %4 = alloca [65 x %struct.brace_s], align 16    ; 6 uses
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %3, align 1, !tbaa !212
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %ic_strlen.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #29
  %i.c = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.b, i64 0)
  br label %ic_strlen.exit

ic_strlen.exit:                                   ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %i.c, %bb.d ], [ 0, %bb.c ]   ; 4 uses
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %.thread98, label %ic_strlen.exit79.lr.ph

ic_strlen.exit79.lr.ph:                           ; preds = %ic_strlen.exit
  %i.e = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #29 ; 4 uses
  %.not175 = icmp ne i64 %.0.i, 0                 ; 2 uses
  %i.f = icmp samesign ugt i64 %.0.i, 1
  %i.g = add nsw i64 %1, -1                       ; 3 uses
  br i1 %i.f, label %ic_strlen.exit79.us.preheader, label %ic_strlen.exit79.lr.ph.split

ic_strlen.exit79.us.preheader:                    ; preds = %ic_strlen.exit79.lr.ph
  %smax = tail call i64 @llvm.smax.i64(i64 %i.e, i64 0)
  %exitcond181.not201 = icmp slt i64 %i.e, 1
  br i1 %exitcond181.not201, label %.thread98, label %.lr.ph

.lr.ph:                                           ; preds = %ic_strlen.exit79.us.preheader, %..loopexit_crit_edge.us
  %.061112.us205 = phi i8 [ %.364.ph.us, %..loopexit_crit_edge.us ], [ 1, %ic_strlen.exit79.us.preheader ] ; 4 uses
  %.056113.us204 = phi i64 [ %.359.ph.us, %..loopexit_crit_edge.us ], [ -1, %ic_strlen.exit79.us.preheader ] ; 5 uses
  %.053114.us203 = phi i64 [ %.4.ph.us, %..loopexit_crit_edge.us ], [ 0, %ic_strlen.exit79.us.preheader ] ; 9 uses
  %.052115.us202 = phi i64 [ %i.ar, %..loopexit_crit_edge.us ], [ 0, %ic_strlen.exit79.us.preheader ] ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.052115.us202
  %i.i = load i8, ptr %i.h, align 1, !tbaa !48    ; 3 uses
  br i1 %.not175, label %.lr.ph.us, label %.preheader.us.preheader

.lr.ph.us:                                        ; preds = %.lr.ph, %bb.e
  %.049109.us = phi i64 [ %i.m, %bb.e ], [ 0, %.lr.ph ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.049109.us
  %i.k = load i8, ptr %i.j, align 1, !tbaa !48
  %i.l = icmp eq i8 %i.i, %i.k
  br i1 %i.l, label %bb.l, label %bb.e

bb.e:                                             ; preds = %.lr.ph.us
  %i.m = add nuw nsw i64 %.049109.us, 2           ; 2 uses
  %i.n = icmp samesign ult i64 %i.m, %.0.i
  br i1 %i.n, label %.lr.ph.us, label %.preheader.us.preheader, !llvm.loop !469

.preheader.us.preheader:                          ; preds = %bb.e, %.lr.ph
  br label %.preheader.us

bb.f:                                             ; preds = %.preheader.us
  %i.o = add nuw nsw i64 %.0110.us, 2             ; 2 uses
  %i.p = icmp samesign ult i64 %i.o, %.0.i
  br i1 %i.p, label %.preheader.us, label %..loopexit_crit_edge.us, !llvm.loop !470

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.f
  %.0110.us = phi i64 [ %i.o, %bb.f ], [ 1, %.preheader.us.preheader ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %.0110.us
  %i.r = load i8, ptr %i.q, align 1, !tbaa !48
  %i.s = icmp eq i8 %i.i, %i.r
  br i1 %i.s, label %bb.g, label %bb.f

bb.g:                                             ; preds = %.preheader.us
  %i.t = icmp slt i64 %.053114.us203, 1
  br i1 %i.t, label %..loopexit_crit_edge.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr [16 x i8], ptr %4, i64 %.053114.us203
  %i.v = getelementptr i8, ptr %i.u, i64 -16
  %i.w = load i8, ptr %i.v, align 16, !tbaa !243
  %.not74.us = icmp eq i8 %i.w, %i.i
  br i1 %.not74.us, label %bb.i, label %..loopexit_crit_edge.us

bb.i:                                             ; preds = %bb.h
  %i.x = add nsw i64 %.053114.us203, -1           ; 3 uses
  %i.y = icmp eq i64 %.052115.us202, %i.g
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.x ; 2 uses
  br i1 %i.y, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !245, !range !136, !noundef !137
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = add nuw nsw i64 %.052115.us202, 1
  %spec.select.us = select i1 %i.ac, i64 %i.ad, i64 %.056113.us204
  br label %..loopexit_crit_edge.us

bb.k:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !244
  %i.ag = add nsw i64 %i.af, 1
  br label %..loopexit_crit_edge.us

bb.l:                                             ; preds = %.lr.ph.us
  %i.ah = icmp sgt i64 %.053114.us203, 63
  br i1 %i.ah, label %.loopexit105, label %.thread86.us

.thread86.us:                                     ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %.049109.us
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !48
  %i.al = getelementptr inbounds [16 x i8], ptr %4, i64 %.053114.us203 ; 3 uses
  store i8 %i.ak, ptr %i.al, align 16, !tbaa !243
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %.052115.us202, ptr %i.am, align 8, !tbaa !244
  %i.an = icmp eq i64 %.052115.us202, %i.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.ap = zext i1 %i.an to i8
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !245
  %i.aq = add nsw i64 %.053114.us203, 1
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %bb.f, %.thread86.us, %bb.k, %bb.j, %bb.h, %bb.g
  %.364.ph.us = phi i8 [ %.061112.us205, %bb.k ], [ 0, %bb.g ], [ %.061112.us205, %bb.j ], [ 0, %bb.h ], [ %.061112.us205, %.thread86.us ], [ %.061112.us205, %bb.f ] ; 2 uses
  %.359.ph.us = phi i64 [ %i.ag, %bb.k ], [ %.056113.us204, %bb.g ], [ %spec.select.us, %bb.j ], [ %.056113.us204, %bb.h ], [ %.056113.us204, %.thread86.us ], [ %.056113.us204, %bb.f ] ; 2 uses
  %.4.ph.us = phi i64 [ %i.x, %bb.k ], [ %.053114.us203, %bb.g ], [ %i.x, %bb.j ], [ %.053114.us203, %bb.h ], [ %i.aq, %.thread86.us ], [ %.053114.us203, %bb.f ] ; 2 uses
  %i.ar = add nuw i64 %.052115.us202, 1           ; 2 uses
  %exitcond181.not = icmp eq i64 %i.ar, %smax
  br i1 %exitcond181.not, label %.thread98, label %.lr.ph

ic_strlen.exit79.lr.ph.split:                     ; preds = %ic_strlen.exit79.lr.ph
  %i.as = icmp sgt i64 %i.e, 0
  %or.cond = select i1 %.not175, i1 %i.as, i1 false
  br i1 %or.cond, label %.lr.ph.us130.preheader, label %.thread98

.lr.ph.us130.preheader:                           ; preds = %ic_strlen.exit79.lr.ph.split
  %.pre.pre = load i8, ptr %2, align 1, !tbaa !48
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph.us130.preheader, %ic_strlen.exit79.us127
  %.053114.us129172 = phi i64 [ %.4.ph.us136, %ic_strlen.exit79.us127 ], [ 0, %.lr.ph.us130.preheader ] ; 4 uses
  %.052115.us128171 = phi i64 [ %i.bf, %ic_strlen.exit79.us127 ], [ 0, %.lr.ph.us130.preheader ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %.052115.us128171
  %i.av = load i8, ptr %i.au, align 1, !tbaa !48
  %i.aw = icmp eq i8 %i.av, %.pre.pre
  br i1 %i.aw, label %bb.n, label %ic_strlen.exit79.us127

bb.n:                                             ; preds = %bb.m
  %i.ax = icmp sgt i64 %.053114.us129172, 63
  br i1 %i.ax, label %.loopexit105, label %.thread86.us135

.thread86.us135:                                  ; preds = %bb.n
  %i.ay = load i8, ptr %i.at, align 1, !tbaa !48
  %i.az = getelementptr inbounds [16 x i8], ptr %4, i64 %.053114.us129172 ; 3 uses
  store i8 %i.ay, ptr %i.az, align 16, !tbaa !243
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %.052115.us128171, ptr %i.ba, align 8, !tbaa !244
  %i.bb = icmp eq i64 %.052115.us128171, %i.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bd = zext i1 %i.bb to i8
  store i8 %i.bd, ptr %i.bc, align 1, !tbaa !245
  %i.be = add nsw i64 %.053114.us129172, 1
  br label %ic_strlen.exit79.us127

ic_strlen.exit79.us127:                           ; preds = %bb.m, %.thread86.us135
  %.4.ph.us136 = phi i64 [ %i.be, %.thread86.us135 ], [ %.053114.us129172, %bb.m ] ; 2 uses
  %i.bf = add nuw nsw i64 %.052115.us128171, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bf, %i.e
  br i1 %exitcond.not, label %.thread98, label %bb.m

.thread98:                                        ; preds = %ic_strlen.exit79.us127, %..loopexit_crit_edge.us, %ic_strlen.exit79.us.preheader, %ic_strlen.exit79.lr.ph.split, %ic_strlen.exit
  %.061.lcssa = phi i8 [ 1, %ic_strlen.exit ], [ %.364.ph.us, %..loopexit_crit_edge.us ], [ 1, %ic_strlen.exit79.lr.ph.split ], [ 1, %ic_strlen.exit79.us.preheader ], [ 1, %ic_strlen.exit79.us127 ]
  %.056.lcssa = phi i64 [ -1, %ic_strlen.exit ], [ %.359.ph.us, %..loopexit_crit_edge.us ], [ -1, %ic_strlen.exit79.lr.ph.split ], [ -1, %ic_strlen.exit79.us.preheader ], [ -1, %ic_strlen.exit79.us127 ] ; 2 uses
  %.053.lcssa = phi i64 [ 0, %ic_strlen.exit ], [ %.4.ph.us, %..loopexit_crit_edge.us ], [ 0, %ic_strlen.exit79.lr.ph.split ], [ 0, %ic_strlen.exit79.us.preheader ], [ %.4.ph.us136, %ic_strlen.exit79.us127 ]
  br i1 %.not, label %.loopexit105, label %bb.o

bb.o:                                             ; preds = %.thread98
  %.not76 = icmp eq i64 %.053.lcssa, 0
  %spec.select77 = select i1 %.not76, i8 %.061.lcssa, i8 0
  store i8 %spec.select77, ptr %3, align 1, !tbaa !212
  br label %.loopexit105

.loopexit105:                                     ; preds = %bb.n, %bb.l, %.thread98, %bb.o
  %.370 = phi i64 [ %.056.lcssa, %.thread98 ], [ %.056.lcssa, %bb.o ], [ -1, %bb.l ], [ -1, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret i64 %.370
}

; Function Attrs: nounwind uwtable
define internal fastcc void @edit_refresh_hint(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !174, !range !136, !noundef !137
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load i64, ptr %i.d, align 8, !tbaa !175
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call fastcc void @edit_refresh(ptr noundef %0, ptr noundef %1)
  %i.g = load i8, ptr %i.a, align 8, !tbaa !174, !range !136, !noundef !137
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.y, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !122
  %i.k = load ptr, ptr %1, align 8, !tbaa !217    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !79
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %sbuf_string.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !81   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  %spec.select.i.i = select i1 %i.p, ptr @.str.3, ptr %i.o
  br label %sbuf_string.exit

sbuf_string.exit:                                 ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %spec.select.i.i, %bb.e ], [ null, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !222
  %i.s = tail call fastcc i64 @completions_generate(ptr noundef %0, ptr noundef %i.j, ptr noundef %.0.i.i, i64 noundef %i.r, i64 noundef 2)
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.f, label %completions_get_hint.exit.thread

bb.f:                                             ; preds = %sbuf_string.exit
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !122  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !126
  %.not.i.i = icmp sgt i64 %i.w, 0
  br i1 %.not.i.i, label %completions_get.exit.i, label %completions_get_hint.exit.thread

completions_get.exit.i:                           ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !189  ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %completions_get_hint.exit.thread, label %bb.g

bb.g:                                             ; preds = %completions_get.exit.i
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !193 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %ic_strlen.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.aa) #29
  %i.ad = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.ac, i64 0)
  br label %ic_strlen.exit.i

ic_strlen.exit.i:                                 ; preds = %bb.h, %bb.g
  %.0.i20.i = phi i64 [ %i.ad, %bb.h ], [ 0, %bb.g ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !263 ; 2 uses
  %i.ag = icmp slt i64 %.0.i20.i, %i.af
  br i1 %i.ag, label %completions_get_hint.exit.thread, label %bb.i

bb.i:                                             ; preds = %ic_strlen.exit.i
  %i.ah = getelementptr inbounds i8, ptr %i.aa, i64 %i.af ; 4 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !48  ; 2 uses
  %i.aj = icmp eq i8 %i.ai, 0
  %i.ak = icmp slt i8 %i.ai, -64
  %or.cond.i = or i1 %i.aj, %i.ak
  br i1 %or.cond.i, label %completions_get_hint.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !194
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !219 ; 5 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %sbuf_len.exit.i.i, label %sbuf_len.exit.i.thread.i

sbuf_len.exit.i.i:                                ; preds = %bb.j
  %.pre.i.i = load i64, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !79 ; 2 uses
  %.not.i.i.i = icmp sgt i64 %.pre.i.i, 0
  br i1 %.not.i.i.i, label %bb.k, label %sbuf_replace.exit

sbuf_len.exit.i.thread.i:                         ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !79 ; 4 uses
  %.not.i.i6.i = icmp sgt i64 %i.ar, 0
  br i1 %.not.i.i6.i, label %bb.k, label %sbuf_replace.exit

bb.k:                                             ; preds = %sbuf_len.exit.i.thread.i, %sbuf_len.exit.i.i
  %i.as = phi ptr [ %i.aq, %sbuf_len.exit.i.thread.i ], [ inttoptr (i64 16 to ptr), %sbuf_len.exit.i.i ] ; 3 uses
  %.0.i.i7.i = phi i64 [ %i.ar, %sbuf_len.exit.i.thread.i ], [ 0, %sbuf_len.exit.i.i ] ; 3 uses
  %i.at = phi i64 [ %i.ar, %sbuf_len.exit.i.thread.i ], [ %.pre.i.i, %sbuf_len.exit.i.i ]
  %i.au = sub nsw i64 %i.at, %.0.i.i7.i           ; 3 uses
  %i.av = icmp slt i64 %i.au, 1
  br i1 %i.av, label %sbuf_clear.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = load ptr, ptr %i.ao, align 8, !tbaa !81 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.0.i.i7.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.aw, ptr readonly align 1 %i.ax, i64 %i.au, i1 false)
  %.pre.i.i.i = load i64, ptr %i.as, align 8, !tbaa !79
  %.pre2.i.i = sub nsw i64 %.pre.i.i.i, %.0.i.i7.i
  br label %sbuf_clear.exit.thread.i

sbuf_clear.exit.thread.i:                         ; preds = %bb.l, %bb.k
  %.pre-phi.i.i = phi i64 [ %.pre2.i.i, %bb.l ], [ %i.au, %bb.k ] ; 2 uses
  store i64 %.pre-phi.i.i, ptr %i.as, align 8, !tbaa !79
  %i.ay = load ptr, ptr %i.ao, align 8, !tbaa !81
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %.pre-phi.i.i
  store i8 0, ptr %i.az, align 1, !tbaa !48
  %.pre.i = load i64, ptr %i.as, align 8, !tbaa !79
  br label %sbuf_replace.exit

sbuf_replace.exit:                                ; preds = %sbuf_clear.exit.thread.i, %sbuf_len.exit.i.thread.i, %sbuf_len.exit.i.i
  %.0.i.i4.i = phi i64 [ 0, %sbuf_len.exit.i.i ], [ %.pre.i, %sbuf_clear.exit.thread.i ], [ %i.ar, %sbuf_len.exit.i.thread.i ]
  %i.ba = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ah) #29
  %i.bb = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.ba, i64 0)
  %i.bc = tail call fastcc i64 @sbuf_insert_at_n(ptr noundef %i.ao, ptr noundef nonnull readonly %i.ah, i64 noundef %i.bb, i64 noundef %.0.i.i4.i) ; 0 uses
  tail call fastcc void @editor_append_hint_help(ptr noundef %1, ptr noundef %i.am)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 109
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !171, !range !136, !noundef !137
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.m, label %completions_get_hint.exit.thread

bb.m:                                             ; preds = %sbuf_replace.exit
  %i.bg = load ptr, ptr %0, align 8, !tbaa !108   ; 2 uses
  %.val.i = load ptr, ptr %i.bg, align 8, !tbaa !70
  %i.bh = tail call ptr %.val.i(i64 noundef 32) #28, !inline_history !2 ; 10 uses
  %.not.i.i57 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i57, label %completions_get_hint.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 3 uses
  store ptr %i.bg, ptr %i.bi, align 8, !tbaa !78
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i8 0, i64 24, i1 false)
  %i.bj = load ptr, ptr %1, align 8, !tbaa !217   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !79
  %i.bm = icmp slt i64 %i.bl, 0
  br i1 %i.bm, label %sbuf_replace.exit75, label %select.unfold
end_hunk_0
