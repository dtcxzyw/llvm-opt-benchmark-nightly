inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_str_insert_text_runes:bb.a
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %nk_utf_encode.exit.thread, label %.lr.ph, !llvm.loop !107

nk_utf_encode.exit.thread:                        ; preds = %nk_utf_encode.exit, %nk_utf_validate.exit.i, %.preheader, %bb.a
  %.017 = phi i32 [ 0, %bb.a ], [ %3, %.preheader ], [ %3, %nk_utf_validate.exit.i ], [ %3, %nk_utf_encode.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  ret i32 %.017
}

; Function Attrs: nounwind uwtable
define i32 @nk_str_insert_str_runes(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #17 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.b = icmp ne ptr %0, null
  %i.c = icmp ne ptr %2, null
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.d = load i32, ptr %2, align 4, !tbaa !10     ; 2 uses
  %.not15 = icmp eq i32 %i.d, 0
  br i1 %.not15, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %nk_utf_encode.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %nk_utf_encode.exit ], [ 0, %.preheader ] ; 2 uses
  %i.e = phi i32 [ %i.bf, %nk_utf_encode.exit ], [ %i.d, %.preheader ] ; 3 uses
  %i.f = icmp ugt i32 %i.e, 1114110
  %i.g = add i32 %i.e, -55296
  %or.cond.i.i = icmp ult i32 %i.g, 2047
  %or.cond15.i.i = or i1 %i.f, %or.cond.i.i
  %spec.select23.i = select i1 %or.cond15.i.i, i32 65533, i32 %i.e ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %bb.b ], [ 0, %.lr.ph ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.b ], [ 1, %.lr.ph ] ; 7 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @nk_utfmax, i64 %indvars.iv.i.i
  %i.i = load i32, ptr %i.h, align 4, !tbaa !10
  %i.j = icmp ugt i32 %spec.select23.i, %i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %indvars.iv.next.i = add i32 %indvars.iv.i, 1
  br i1 %i.j, label %bb.b, label %nk_utf_validate.exit.i, !llvm.loop !34

nk_utf_validate.exit.i:                           ; preds = %bb.b
  %i.k = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.l = icmp samesign ugt i64 %indvars.iv.i.i, 4
  br i1 %i.l, label %nk_utf_encode.exit, label %.preheader.i

.preheader.i:                                     ; preds = %nk_utf_validate.exit.i
  %.not25.i = icmp eq i64 %indvars.iv.i.i, 1
  br i1 %.not25.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.m = sext i32 %indvars.iv.i to i64            ; 4 uses
  %i.n = add nsw i64 %i.m, -1
  %xtraiter = and i64 %i.m, 3
  %i.o = and i32 %indvars.iv.i, 3
  %lcmp.mod.not = icmp eq i32 %i.o, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %indvars.iv28.i.prol = phi i64 [ %indvars.iv.next29.i.prol, %.lr.ph.i.prol ], [ %i.m, %.lr.ph.preheader.i ] ; 2 uses
  %.02226.i.prol = phi i32 [ %i.t, %.lr.ph.i.prol ], [ %spec.select23.i, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.p = trunc i32 %.02226.i.prol to i8
  %i.q = and i8 %i.p, 63
  %i.r = or disjoint i8 %i.q, -128
  %i.s = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv28.i.prol
  store i8 %i.r, ptr %i.s, align 1, !tbaa !11
  %i.t = lshr i32 %.02226.i.prol, 6               ; 3 uses
  %indvars.iv.next29.i.prol = add nsw i64 %indvars.iv28.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !108

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i ], [ %i.t, %.lr.ph.i.prol ]
  %indvars.iv28.i.unr = phi i64 [ %i.m, %.lr.ph.preheader.i ], [ %indvars.iv.next29.i.prol, %.lr.ph.i.prol ]
  %.02226.i.unr = phi i32 [ %spec.select23.i, %.lr.ph.preheader.i ], [ %i.t, %.lr.ph.i.prol ]
  %i.u = icmp ult i64 %i.n, 3
  br i1 %i.u, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv28.i = phi i64 [ %indvars.iv.next29.i.3, %.lr.ph.i ], [ %indvars.iv28.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.02226.i = phi i32 [ %i.ar, %.lr.ph.i ], [ %.02226.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.v = trunc i32 %.02226.i to i8
  %i.w = and i8 %i.v, 63
  %i.x = or disjoint i8 %i.w, -128
  %i.y = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv28.i
  store i8 %i.x, ptr %i.y, align 1, !tbaa !11
  %i.z = lshr i32 %.02226.i, 6
  %i.aa = trunc i32 %i.z to i8
  %i.ab = and i8 %i.aa, 63
  %i.ac = or disjoint i8 %i.ab, -128
  %i.ad = getelementptr i8, ptr %i.a, i64 %indvars.iv28.i
  %i.ae = getelementptr i8, ptr %i.ad, i64 -1
  store i8 %i.ac, ptr %i.ae, align 1, !tbaa !11
  %i.af = lshr i32 %.02226.i, 12
  %i.ag = trunc i32 %i.af to i8
  %i.ah = and i8 %i.ag, 63
  %i.ai = or disjoint i8 %i.ah, -128
  %i.aj = getelementptr i8, ptr %i.a, i64 %indvars.iv28.i
  %i.ak = getelementptr i8, ptr %i.aj, i64 -2
  store i8 %i.ai, ptr %i.ak, align 1, !tbaa !11
  %i.al = lshr i32 %.02226.i, 18
  %i.am = trunc i32 %i.al to i8
  %i.an = and i8 %i.am, 63
  %i.ao = or disjoint i8 %i.an, -128
  %i.ap = getelementptr i8, ptr %i.a, i64 %indvars.iv28.i
  %i.aq = getelementptr i8, ptr %i.ap, i64 -3
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !11
  %i.ar = lshr i32 %.02226.i, 24                  ; 2 uses
  %indvars.iv.next29.i.3 = add nsw i64 %indvars.iv28.i, -4 ; 2 uses
  %.not.i.3 = icmp eq i64 %indvars.iv.next29.i.3, 0
  br i1 %.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !36

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.preheader.i
  %.022.lcssa.i = phi i32 [ %spec.select23.i, %.preheader.i ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.ar, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw i8, ptr @nk_utfbyte, i64 %indvars.iv.i.i
  %i.at = load i8, ptr %i.as, align 1, !tbaa !11
  %i.au = getelementptr inbounds nuw i8, ptr @nk_utfmask, i64 %indvars.iv.i.i
  %i.av = load i8, ptr %i.au, align 1, !tbaa !11
  %i.aw = zext i8 %i.av to i32
  %i.ax = xor i32 %i.aw, -1
  %i.ay = and i32 %.022.lcssa.i, %i.ax
  %i.az = trunc i32 %i.ay to i8
  %i.ba = or i8 %i.at, %i.az
  store i8 %i.ba, ptr %i.a, align 1, !tbaa !11
  br label %nk_utf_encode.exit

nk_utf_encode.exit:                               ; preds = %nk_utf_validate.exit.i, %._crit_edge.i
  %.015.i = phi i32 [ %i.k, %._crit_edge.i ], [ 0, %nk_utf_validate.exit.i ]
  %i.bb = trunc i64 %indvars.iv to i32
  %i.bc = add i32 %1, %i.bb
  %i.bd = call i32 @nk_str_insert_at_rune(ptr noundef nonnull %0, i32 noundef %i.bc, ptr noundef nonnull %i.a, i32 noundef %.015.i) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !10 ; 2 uses
  %.not = icmp eq i32 %i.bf, 0
  br i1 %.not, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !109

.loopexit.loopexit:                               ; preds = %nk_utf_encode.exit
  %i.bg = trunc nuw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %bb.a
  %.013 = phi i32 [ 0, %bb.a ], [ 0, %.preheader ], [ %i.bg, %.loopexit.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  ret i32 %.013
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_str_remove_chars(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i32 %1, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %1 to i64                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !95   ; 2 uses
  %i.f = icmp ult i64 %i.e, %i.c
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sub nuw i64 %i.e, %i.c                   ; 2 uses
  store i64 %i.g, ptr %i.d, align 8, !tbaa !95
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !98
  %i.j = trunc i64 %i.g to i32
  %i.k = tail call i32 @nk_utf_len(ptr noundef %i.i, i32 noundef %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.k, ptr %i.l, align 8, !tbaa !86
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_str_remove_runes(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i32, align 4
  %i.b = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  %i.c = icmp eq ptr %0, null
  %i.d = icmp slt i32 %1, 0
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %nk_str_remove_chars.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !86   ; 2 uses
  %.not = icmp slt i32 %1, %i.f
  br i1 %.not, label %bb.c, label %nk_str_remove_chars.exit.sink.split

bb.c:                                             ; preds = %bb.b
  %i.g = sub nuw nsw i32 %i.f, %1
  %i.h = call ptr @nk_str_at_rune(ptr noundef nonnull %0, i32 noundef %i.g, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !98   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !95   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.h to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = icmp slt i32 %i.q, -1
  br i1 %i.r, label %nk_str_remove_chars.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = add i64 %i.p, 1
  %i.t = and i64 %i.s, 4294967295                 ; 2 uses
  %i.u = icmp ult i64 %i.l, %i.t
  br i1 %i.u, label %nk_str_remove_chars.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = sub nuw i64 %i.l, %i.t                   ; 2 uses
  store i64 %i.v, ptr %i.k, align 8, !tbaa !95
  %i.w = trunc i64 %i.v to i32
  %i.x = call i32 @nk_utf_len(ptr noundef %i.j, i32 noundef %i.w)
  br label %nk_str_remove_chars.exit.sink.split

nk_str_remove_chars.exit.sink.split:              ; preds = %bb.b, %bb.e
  %.sink = phi i32 [ %i.x, %bb.e ], [ 0, %bb.b ]
  store i32 %.sink, ptr %i.e, align 8, !tbaa !86
  br label %nk_str_remove_chars.exit

nk_str_remove_chars.exit:                         ; preds = %nk_str_remove_chars.exit.sink.split, %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_str_delete_chars(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #19 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne i32 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !95   ; 8 uses
  %i.f = icmp ult i64 %i.e, %i.c
  br i1 %i.f, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %2, %1
  %i.h = sext i32 %i.g to i64                     ; 4 uses
  %i.i = icmp ult i64 %i.e, %i.h
  br i1 %i.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ugt i64 %i.e, %i.h
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !98   ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %i.c
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.h
  %i.o = sub nuw i64 %i.e, %i.h
  %i.p = tail call fastcc ptr @nk_memcopy(ptr noundef %i.m, ptr noundef %i.n, i64 noundef %i.o) ; 0 uses
  %i.q = sext i32 %2 to i64
  %i.r = load i64, ptr %i.d, align 8, !tbaa !95
  %i.s = sub i64 %i.r, %i.q                       ; 2 uses
  store i64 %i.s, ptr %i.d, align 8, !tbaa !95
  br label %nk_str_remove_chars.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp slt i32 %2, 0
  br i1 %i.t, label %nk_str_remove_chars.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = zext nneg i32 %2 to i64                  ; 2 uses
  %i.v = icmp ult i64 %i.e, %i.u
  br i1 %i.v, label %nk_str_remove_chars.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = sub nuw i64 %i.e, %i.u                   ; 3 uses
  store i64 %i.w, ptr %i.d, align 8, !tbaa !95
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !98
  %i.z = trunc i64 %i.w to i32
  %i.aa = tail call i32 @nk_utf_len(ptr noundef %i.y, i32 noundef %i.z)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !86
  br label %nk_str_remove_chars.exit

nk_str_remove_chars.exit:                         ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.ac = phi i64 [ %i.w, %bb.h ], [ %i.e, %bb.g ], [ %i.e, %bb.f ], [ %i.s, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !98
  %i.af = trunc i64 %i.ac to i32
  %i.ag = tail call i32 @nk_utf_len(ptr noundef %i.ae, i32 noundef %i.af)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !86
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.b, %bb.c, %nk_str_remove_chars.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_str_delete_runes(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #19 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !86   ; 2 uses
  %i.e = add nsw i32 %2, %1
  %i.f = icmp slt i32 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %i.h = sub nsw i32 %i.d, %i.g                   ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %nk_str_delete_chars.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %2, %bb.a ], [ %i.h, %bb.b ]    ; 2 uses
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %nk_str_delete_chars.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !98   ; 8 uses
  %i.l = call ptr @nk_str_at_rune(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 3 uses
  %.not37 = icmp eq ptr %i.l, null
  br i1 %.not37, label %nk_str_delete_chars.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.l, ptr %i.j, align 8, !tbaa !98
  %i.m = call ptr @nk_str_at_rune(ptr noundef nonnull %0, i32 noundef %.0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !98
  %.not38 = icmp eq ptr %i.m, null
  br i1 %.not38, label %nk_str_delete_chars.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.q = sub i64 %i.p, %i.n                       ; 3 uses
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %.not41 = icmp eq i32 %i.r, 0
  br i1 %.not41, label %nk_str_delete_chars.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = sub i64 %i.n, %i.o
  %sext = shl i64 %i.s, 32
  %i.t = ashr exact i64 %sext, 32                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !95   ; 8 uses
  %i.w = icmp ult i64 %i.v, %i.t
  br i1 %i.w, label %nk_str_delete_chars.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = sub i64 %i.p, %i.o
  %sext42 = shl i64 %i.x, 32
  %i.y = ashr exact i64 %sext42, 32               ; 4 uses
  %i.z = icmp ult i64 %i.v, %i.y
  br i1 %i.z, label %nk_str_delete_chars.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp ugt i64 %i.v, %i.y
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.k, i64 %i.t
  %i.ac = getelementptr inbounds i8, ptr %i.k, i64 %i.y
  %i.ad = sub nuw i64 %i.v, %i.y
  %i.ae = call fastcc ptr @nk_memcopy(ptr noundef %i.ab, ptr noundef %i.ac, i64 noundef %i.ad) ; 0 uses
  %sext43 = shl i64 %i.q, 32
  %i.af = ashr exact i64 %sext43, 32
  %i.ag = load i64, ptr %i.u, align 8, !tbaa !95
  %i.ah = sub i64 %i.ag, %i.af                    ; 2 uses
  store i64 %i.ah, ptr %i.u, align 8, !tbaa !95
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !98
  br label %nk_str_remove_chars.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ai = icmp slt i32 %i.r, 0
  br i1 %i.ai, label %nk_str_remove_chars.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = and i64 %i.q, 2147483647                ; 2 uses
  %i.ak = icmp ult i64 %i.v, %i.aj
  br i1 %i.ak, label %nk_str_remove_chars.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = sub nuw i64 %i.v, %i.aj                 ; 3 uses
  store i64 %i.al, ptr %i.u, align 8, !tbaa !95
end_hunk_0
begin_hunk_1_@stbrp_pack_rects:bb.a
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 20
  store i32 1, ptr %i.fq, align 4, !tbaa !342
  br label %bb.al

bb.ak:                                            ; preds = %.lr.ph63
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !357
  %.fr = freeze i32 %i.fs
  %i.ft = icmp ne i32 %.fr, 2147483647            ; 2 uses
  %i.fu = zext i1 %i.ft to i32
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fm, i64 20
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !342
  br i1 %i.ft, label %bb.al, label %.lr.ph63.1

bb.al:                                            ; preds = %.thread, %bb.ak
  br label %.lr.ph63.1

.lr.ph63.1:                                       ; preds = %bb.ak, %bb.al
  %i.fw = phi i32 [ %.061, %bb.al ], [ 0, %bb.ak ]
  %i.fx = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv72 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 36
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !356
  %i.ga = icmp eq i32 %i.fz, 2147483647
  br i1 %i.ga, label %bb.am, label %.thread.1

.thread.1:                                        ; preds = %.lr.ph63.1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 44
  store i32 1, ptr %i.gb, align 4, !tbaa !342
  br label %bb.an

bb.am:                                            ; preds = %.lr.ph63.1
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 40
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !357
  %.fr.1 = freeze i32 %i.gd
  %i.ge = icmp ne i32 %.fr.1, 2147483647          ; 2 uses
  %i.gf = zext i1 %i.ge to i32
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fx, i64 44
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !342
  br i1 %i.ge, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am, %.thread.1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.gh = phi i32 [ %i.fw, %bb.an ], [ 0, %bb.am ] ; 3 uses
  %indvars.iv.next73.1 = add nuw nsw i64 %indvars.iv72, 2 ; 2 uses
  %niter113.next.1 = add i64 %niter113, 2         ; 2 uses
  %niter113.ncmp.1 = icmp eq i64 %niter113.next.1, %unroll_iter112
  br i1 %niter113.ncmp.1, label %._crit_edge64.loopexit.unr-lcssa, label %.lr.ph63, !llvm.loop !358

._crit_edge64.loopexit.unr-lcssa:                 ; preds = %bb.ao
  %lcmp.mod109.not = icmp eq i64 %xtraiter107, 0
  br i1 %lcmp.mod109.not, label %._crit_edge64, label %.lr.ph63.epil.preheader

.lr.ph63.epil.preheader:                          ; preds = %._crit_edge64.loopexit.unr-lcssa, %._crit_edge59
  %indvars.iv72.epil.init = phi i64 [ 0, %._crit_edge59 ], [ %indvars.iv.next73.1, %._crit_edge64.loopexit.unr-lcssa ]
  %.061.epil.init = phi i32 [ 1, %._crit_edge59 ], [ %i.gh, %._crit_edge64.loopexit.unr-lcssa ]
  %lcmp.mod111 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod111)
  %i.gi = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv72.epil.init ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !356
  %i.gl = icmp eq i32 %i.gk, 2147483647
  br i1 %i.gl, label %bb.ap, label %.thread.epil

.thread.epil:                                     ; preds = %.lr.ph63.epil.preheader
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 20
  store i32 1, ptr %i.gm, align 4, !tbaa !342
  br label %bb.aq

bb.ap:                                            ; preds = %.lr.ph63.epil.preheader
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !357
  %.fr.epil = freeze i32 %i.go
  %i.gp = icmp ne i32 %.fr.epil, 2147483647       ; 2 uses
  %i.gq = zext i1 %i.gp to i32
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gi, i64 20
  store i32 %i.gq, ptr %i.gr, align 4, !tbaa !342
  br i1 %i.gp, label %bb.aq, label %._crit_edge64

bb.aq:                                            ; preds = %bb.ap, %.thread.epil
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit.unr-lcssa, %bb.aq, %bb.ap, %._crit_edge59.thread
  %.0.lcssa = phi i32 [ 1, %._crit_edge59.thread ], [ %i.gh, %._crit_edge64.loopexit.unr-lcssa ], [ %.061.epil.init, %bb.aq ], [ 0, %bb.ap ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #24

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @rect_height_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !347  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !347  ; 2 uses
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i32 %i.b, %i.d
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !346
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !346
  %i.k = tail call i32 @llvm.scmp.i32.i32(i32 %i.j, i32 %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.k, %bb.c ], [ -1, %bb.a ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @rect_original_order(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !342
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !342
  %i.e = tail call i32 @llvm.scmp.i32.i32(i32 %i.b, i32 %i.d)
  ret i32 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @stbtt_FindGlyphIndex(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !359  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !362  ; 4 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e ; 21 uses
  %.val173 = load i8, ptr %i.f, align 1, !tbaa !11
  %i.g = getelementptr i8, ptr %i.f, i64 1
  %.val174 = load i8, ptr %i.g, align 1, !tbaa !11
  %i.h = zext i8 %.val173 to i16
  %i.i = shl nuw i16 %i.h, 8
  %i.j = zext i8 %.val174 to i16
  %i.k = or disjoint i16 %i.i, %i.j               ; 3 uses
  switch i16 %i.k, label %bb.m [
    i16 0, label %bb.b
    i16 6, label %bb.d
    i16 2, label %.loopexit
    i16 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.val171 = load i8, ptr %i.l, align 1, !tbaa !11
  %i.m = getelementptr i8, ptr %i.f, i64 3
  %.val172 = load i8, ptr %i.m, align 1, !tbaa !11
  %i.n = zext i8 %.val171 to i32
  %i.o = shl nuw nsw i32 %i.n, 8
  %i.p = zext i8 %.val172 to i32
  %i.q = or disjoint i32 %i.o, %i.p
  %i.r = add nsw i32 %i.q, -6
  %i.s = icmp slt i32 %1, %i.r
  br i1 %i.s, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.u = sext i32 %1 to i64
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !11
  %i.x = zext i8 %i.w to i32
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %.val169 = load i8, ptr %i.y, align 1, !tbaa !11
  %i.z = getelementptr i8, ptr %i.f, i64 7
  %.val170 = load i8, ptr %i.z, align 1, !tbaa !11
  %i.aa = zext i8 %.val169 to i32
  %i.ab = shl nuw nsw i32 %i.aa, 8
  %i.ac = zext i8 %.val170 to i32
  %i.ad = or disjoint i32 %i.ab, %i.ac            ; 3 uses
  %.not143 = icmp ult i32 %1, %i.ad
  br i1 %.not143, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val167 = load i8, ptr %i.ae, align 1, !tbaa !11
  %i.af = zext i8 %.val167 to i32
  %i.ag = shl nuw nsw i32 %i.af, 8
  %i.ah = getelementptr i8, ptr %i.f, i64 9
  %.val168 = load i8, ptr %i.ah, align 1, !tbaa !11
  %i.ai = zext i8 %.val168 to i32
  %i.aj = or disjoint i32 %i.ag, %i.ai
  %i.ak = add nuw nsw i32 %i.aj, %i.ad
  %i.al = icmp ult i32 %1, %i.ak
  br i1 %i.al, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.an = sub nuw nsw i32 %1, %i.ad
  %i.ao = shl nuw nsw i32 %i.an, 1
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ap ; 2 uses
  %.val165 = load i8, ptr %i.aq, align 1, !tbaa !11
  %i.ar = getelementptr i8, ptr %i.aq, i64 1
  %.val166 = load i8, ptr %i.ar, align 1, !tbaa !11
  %i.as = zext i8 %.val165 to i32
  %i.at = shl nuw nsw i32 %i.as, 8
  %i.au = zext i8 %.val166 to i32
  %i.av = or disjoint i32 %i.at, %i.au
  br label %.loopexit

bb.g:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %.val163 = load i8, ptr %i.aw, align 1, !tbaa !11
  %i.ax = getelementptr i8, ptr %i.f, i64 7
  %.val164 = load i8, ptr %i.ax, align 1, !tbaa !11
  %i.ay = zext i8 %.val163 to i32
  %i.az = shl nuw nsw i32 %i.ay, 8
  %i.ba = zext i8 %.val164 to i32
  %i.bb = or disjoint i32 %i.az, %i.ba            ; 2 uses
  %i.bc = lshr i32 %i.bb, 1                       ; 2 uses
  %i.bd = icmp sgt i32 %1, 65535
  br i1 %i.bd, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = add i32 %i.d, 14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.val157 = load i8, ptr %i.bf, align 1, !tbaa !11
  %i.bg = zext i8 %.val157 to i16
  %i.bh = shl nuw i16 %i.bg, 8
  %i.bi = getelementptr i8, ptr %i.f, i64 13
  %.val158 = load i8, ptr %i.bi, align 1, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %.val159 = load i8, ptr %i.bj, align 1, !tbaa !11
  %i.bk = zext i8 %.val159 to i16
  %i.bl = shl nuw i16 %i.bk, 8                    ; 2 uses
  %i.bm = getelementptr i8, ptr %i.f, i64 11
  %.val160 = load i8, ptr %i.bm, align 1, !tbaa !11
  %i.bn = zext i8 %.val160 to i16                 ; 3 uses
  %i.bo = or disjoint i16 %i.bl, %i.bn            ; 3 uses
  %i.bp = and i8 %.val158, -2
  %.masked = zext i8 %i.bp to i16
  %i.bq = or disjoint i16 %i.bh, %.masked         ; 2 uses
  %i.br = zext i32 %i.be to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.br ; 2 uses
  %i.bt = zext i16 %i.bq to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bt ; 2 uses
  %.val155 = load i8, ptr %i.bu, align 1, !tbaa !11
  %i.bv = getelementptr i8, ptr %i.bu, i64 1
  %.val156 = load i8, ptr %i.bv, align 1, !tbaa !11
  %i.bw = zext i8 %.val155 to i32
  %i.bx = shl nuw nsw i32 %i.bw, 8
  %i.by = zext i8 %.val156 to i32
  %i.bz = or disjoint i32 %i.bx, %i.by
  %.not = icmp slt i32 %1, %i.bz
  %i.ca = zext i16 %i.bq to i32
  %i.cb = select i1 %.not, i32 0, i32 %i.ca
  %.0123 = add i32 %i.d, 12
  %i.cc = add i32 %.0123, %i.cb                   ; 4 uses
  %.not142183 = icmp eq i16 %i.bo, 0
  br i1 %.not142183, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val161 = load i8, ptr %i.cd, align 1, !tbaa !11
  %i.ce = zext i8 %.val161 to i16
  %i.cf = shl nuw i16 %i.ce, 8
  %i.cg = getelementptr i8, ptr %i.f, i64 9
  %.val162 = load i8, ptr %i.cg, align 1, !tbaa !11
  %i.ch = zext i8 %.val162 to i16
  %i.ci = or disjoint i16 %i.cf, %i.ch            ; 2 uses
  %i.cj = or disjoint i16 %i.bl, %i.bn
  %xtraiter = and i16 %i.bn, 1
  %lcmp.mod.not = icmp eq i16 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %.0127.prol = lshr i16 %i.ci, 1                 ; 2 uses
  %i.ck = zext i32 %i.cc to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ck
  %i.cm = and i16 %.0127.prol, 32766              ; 2 uses
  %i.cn = zext nneg i16 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cn ; 2 uses
  %.val153.prol = load i8, ptr %i.co, align 1, !tbaa !11
  %i.cp = getelementptr i8, ptr %i.co, i64 1
  %.val154.prol = load i8, ptr %i.cp, align 1, !tbaa !11
  %i.cq = zext i8 %.val153.prol to i32
  %i.cr = shl nuw nsw i32 %i.cq, 8
  %i.cs = zext i8 %.val154.prol to i32
  %i.ct = or disjoint i32 %i.cr, %i.cs
  %i.cu = icmp sgt i32 %1, %i.ct
  %i.cv = zext nneg i16 %i.cm to i32
  %i.cw = select i1 %i.cu, i32 %i.cv, i32 0
  %.2125.prol = add i32 %i.cw, %i.cc              ; 2 uses
  %i.cx = add nsw i16 %i.bo, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.2125.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %.2125.prol, %.lr.ph.prol ]
  %.1124186.unr = phi i32 [ %i.cc, %.lr.ph.preheader ], [ %.2125.prol, %.lr.ph.prol ]
  %.0126185.unr = phi i16 [ %i.bo, %.lr.ph.preheader ], [ %i.cx, %.lr.ph.prol ]
  %.0127.in184.unr = phi i16 [ %i.ci, %.lr.ph.preheader ], [ %.0127.prol, %.lr.ph.prol ]
  %i.cy = icmp eq i16 %i.cj, 1
  br i1 %i.cy, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.1124186 = phi i32 [ %.2125.1, %.lr.ph ], [ %.1124186.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.0126185 = phi i16 [ %i.dz, %.lr.ph ], [ %.0126185.unr, %.lr.ph.prol.loopexit ]
  %.0127.in184 = phi i16 [ %.0127.1, %.lr.ph ], [ %.0127.in184.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.0127 = lshr i16 %.0127.in184, 1
  %i.cz = zext i32 %.1124186 to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cz
  %i.db = and i16 %.0127, 32766                   ; 2 uses
  %i.dc = zext nneg i16 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dc ; 2 uses
  %.val153 = load i8, ptr %i.dd, align 1, !tbaa !11
  %i.de = getelementptr i8, ptr %i.dd, i64 1
  %.val154 = load i8, ptr %i.de, align 1, !tbaa !11
  %i.df = zext i8 %.val153 to i32
  %i.dg = shl nuw nsw i32 %i.df, 8
  %i.dh = zext i8 %.val154 to i32
  %i.di = or disjoint i32 %i.dg, %i.dh
  %i.dj = icmp sgt i32 %1, %i.di
  %i.dk = zext nneg i16 %i.db to i32
  %i.dl = select i1 %i.dj, i32 %i.dk, i32 0
  %.2125 = add i32 %i.dl, %.1124186               ; 2 uses
  %.0127.1 = lshr i16 %.0127.in184, 2             ; 2 uses
  %i.dm = zext i32 %.2125 to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dm
  %i.do = and i16 %.0127.1, 16382                 ; 2 uses
  %i.dp = zext nneg i16 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dp ; 2 uses
  %.val153.1 = load i8, ptr %i.dq, align 1, !tbaa !11
  %i.dr = getelementptr i8, ptr %i.dq, i64 1
  %.val154.1 = load i8, ptr %i.dr, align 1, !tbaa !11
  %i.ds = zext i8 %.val153.1 to i32
  %i.dt = shl nuw nsw i32 %i.ds, 8
  %i.du = zext i8 %.val154.1 to i32
  %i.dv = or disjoint i32 %i.dt, %i.du
  %i.dw = icmp sgt i32 %1, %i.dv
  %i.dx = zext nneg i16 %i.do to i32
  %i.dy = select i1 %i.dw, i32 %i.dx, i32 0
  %.2125.1 = add i32 %i.dy, %.2125                ; 2 uses
  %i.dz = add i16 %.0126185, -2                   ; 2 uses
  %.not142.1 = icmp eq i16 %i.dz, 0
  br i1 %.not142.1, label %._crit_edge, label %.lr.ph, !llvm.loop !363

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.h
  %.1124.lcssa = phi i32 [ %i.cc, %bb.h ], [ %.2125.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.2125.1, %.lr.ph ]
  %reass.sub = sub i32 %.1124.lcssa, %i.d
  %i.ea = add i32 %reass.sub, 131060
  %i.eb = getelementptr inbounds nuw i8, ptr %i.f, i64 14 ; 3 uses
  %i.ec = and i32 %i.bb, 65534
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  %i.eg = and i32 %i.ea, 131070
  %i.eh = zext nneg i32 %i.eg to i64              ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.eh ; 2 uses
  %.val151 = load i8, ptr %i.ei, align 1, !tbaa !11
  %i.ej = getelementptr i8, ptr %i.ei, i64 1
  %.val152 = load i8, ptr %i.ej, align 1, !tbaa !11
  %i.ek = zext i8 %.val151 to i32
  %i.el = shl nuw nsw i32 %i.ek, 8
  %i.em = zext i8 %.val152 to i32
  %i.en = or disjoint i32 %i.el, %i.em            ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.eh ; 2 uses
  %.val149 = load i8, ptr %i.eo, align 1, !tbaa !11
  %i.ep = getelementptr i8, ptr %i.eo, i64 1
  %.val150 = load i8, ptr %i.ep, align 1, !tbaa !11
  %i.eq = zext i8 %.val149 to i32
  %i.er = shl nuw nsw i32 %i.eq, 8
  %i.es = zext i8 %.val150 to i32
  %i.et = or disjoint i32 %i.er, %i.es
  %i.eu = icmp slt i32 %1, %i.en
  %i.ev = icmp sgt i32 %1, %i.et
  %or.cond145 = select i1 %i.eu, i1 true, i1 %i.ev
  br i1 %or.cond145, label %bb.l, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.ew = mul nuw nsw i32 %i.bc, 6
  %i.ex = zext nneg i32 %i.ew to i64              ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.eh ; 2 uses
  %.val147 = load i8, ptr %i.fa, align 1, !tbaa !11
  %i.fb = getelementptr i8, ptr %i.fa, i64 1
  %.val148 = load i8, ptr %i.fb, align 1, !tbaa !11
  %i.fc = zext i8 %.val147 to i16
  %i.fd = shl nuw i16 %i.fc, 8
  %i.fe = zext i8 %.val148 to i16
  %i.ff = or disjoint i16 %i.fd, %i.fe            ; 2 uses
  %i.fg = icmp eq i16 %i.ff, 0
  br i1 %i.fg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.fh = shl nuw nsw i32 %i.bc, 2
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 2
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.eh ; 2 uses
  %.val175 = load i8, ptr %i.fl, align 1, !tbaa !11
  %i.fm = getelementptr i8, ptr %i.fl, i64 1
  %.val176 = load i8, ptr %i.fm, align 1, !tbaa !11
  %i.fn = zext i8 %.val175 to i32
  %i.fo = shl nuw nsw i32 %i.fn, 8
  %i.fp = zext i8 %.val176 to i32
  %i.fq = or disjoint i32 %i.fo, %i.fp
  %i.fr = add nuw nsw i32 %i.fq, %1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.fs = zext i16 %i.ff to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fs
  %i.fu = sub nsw i32 %1, %i.en
  %i.fv = shl nsw i32 %i.fu, 1
  %2 = zext nneg i32 %i.fv to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 %2
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.e
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.ex
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.eh ; 2 uses
  %.val = load i8, ptr %i.ga, align 1, !tbaa !11
  %i.gb = getelementptr i8, ptr %i.ga, i64 1
  %.val146 = load i8, ptr %i.gb, align 1, !tbaa !11
  %i.gc = zext i8 %.val to i32
  %i.gd = shl nuw nsw i32 %i.gc, 8
  %i.ge = zext i8 %.val146 to i32
  %i.gf = or disjoint i32 %i.gd, %i.ge
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k, %bb.j
  %.2132.shrunk = phi i32 [ %i.gf, %bb.k ], [ %i.fr, %bb.j ], [ 0, %._crit_edge ]
  %.2132 = and i32 %.2132.shrunk, 65535
  br label %.loopexit

bb.m:                                             ; preds = %bb.a
  %i.gg = icmp eq i16 %i.k, 12
  %i.gh = and i16 %i.k, -2
  %or.cond = icmp eq i16 %i.gh, 12
  br i1 %or.cond, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.gi = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.gj = load i32, ptr %i.gi, align 1
  %i.gk = tail call i32 @llvm.bswap.i32(i32 %i.gj) ; 2 uses
  %i.gl = icmp sgt i32 %i.gk, 0
  br i1 %i.gl, label %.lr.ph190, label %.loopexit

.lr.ph190:                                        ; preds = %bb.n
  %i.gm = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph190, %bb.r
  %.0188 = phi i32 [ %i.gk, %.lr.ph190 ], [ %.2, %bb.r ] ; 2 uses
  %.0120187 = phi i32 [ 0, %.lr.ph190 ], [ %.2122, %bb.r ] ; 3 uses
  %i.gn = sub nsw i32 %.0188, %.0120187
  %i.go = lshr i32 %i.gn, 1
  %i.gp = add nuw nsw i32 %i.go, %.0120187        ; 3 uses
  %i.gq = mul nsw i32 %i.gp, 12
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gr ; 3 uses
  %i.gt = load i32, ptr %i.gs, align 1
  %i.gu = tail call i32 @llvm.bswap.i32(i32 %i.gt) ; 2 uses
  %i.gv = icmp ult i32 %1, %i.gu
  br i1 %i.gv, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %i.gx = load i32, ptr %i.gw, align 1
  %i.gy = tail call i32 @llvm.bswap.i32(i32 %i.gx)
  %i.gz = icmp ugt i32 %1, %i.gy
  br i1 %i.gz, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.ha = add nuw nsw i32 %i.gp, 1
  br label %bb.r

.thread:                                          ; preds = %bb.p
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.hc = load i32, ptr %i.hb, align 1
  %i.hd = tail call i32 @llvm.bswap.i32(i32 %i.hc)
  %i.he = sub i32 %1, %i.gu
  %i.hf = select i1 %i.gg, i32 %i.he, i32 0
  %.5 = add i32 %i.hd, %i.hf
  br label %.loopexit

bb.r:                                             ; preds = %bb.q, %bb.o
  %.2122 = phi i32 [ %.0120187, %bb.o ], [ %i.ha, %bb.q ] ; 2 uses
  %.2 = phi i32 [ %i.gp, %bb.o ], [ %.0188, %bb.q ] ; 2 uses
  %i.hg = icmp slt i32 %.2122, %.2
  br i1 %i.hg, label %bb.o, label %.loopexit, !llvm.loop !364

.loopexit:                                        ; preds = %bb.r, %bb.n, %.thread, %bb.m, %bb.l, %bb.g, %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.8 = phi i32 [ 0, %bb.m ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.g ], [ %i.x, %bb.c ], [ %i.av, %bb.f ], [ 0, %bb.e ], [ %.2132, %bb.l ], [ %.5, %.thread ], [ 0, %bb.n ], [ 0, %bb.r ]
  ret i32 %.8
}

; Function Attrs: nounwind uwtable
define i32 @stbtt_GetCodepointShape(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #17 {
bb.a:
  %i.a = tail call i32 @stbtt_FindGlyphIndex(ptr noundef %0, i32 noundef %1)
  %i.b = tail call i32 @stbtt_GetGlyphShape(ptr noundef %0, i32 noundef %i.a, ptr noundef %2)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define i32 @stbtt_GetGlyphShape(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #17 {
bb.a:
  %3 = alloca %struct.stbtt__csctx, align 8       ; 6 uses
  %4 = alloca %struct.stbtt__csctx, align 8       ; 6 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.c = load i32, ptr %i.b, align 4, !tbaa !365
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.cb

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !359  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !366
  %.not.i18 = icmp slt i32 %1, %i.g
  br i1 %.not.i18, label %bb.c, label %stbtt__GetGlyfOffset.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !367  ; 2 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %stbtt__GetGlyfOffset.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i32 %i.i, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !368
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !369
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %i.e, i64 %i.p ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = shl nsw i32 %1, 1
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %i.s ; 4 uses
  %.val28.i = load i8, ptr %i.t, align 1, !tbaa !11
  %i.u = getelementptr i8, ptr %i.t, i64 1
  %.val29.i = load i8, ptr %i.u, align 1, !tbaa !11
  %i.v = zext i8 %.val28.i to i32
  %i.w = zext i8 %.val29.i to i32
  %i.x = shl nuw nsw i32 %i.v, 9
  %i.y = shl nuw nsw i32 %i.w, 1
  %i.z = or disjoint i32 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %.val.i20 = load i8, ptr %i.aa, align 1, !tbaa !11
  %i.ab = getelementptr i8, ptr %i.t, i64 3
  %.val27.i = load i8, ptr %i.ab, align 1, !tbaa !11
  %i.ac = zext i8 %.val.i20 to i32
  %i.ad = zext i8 %.val27.i to i32
  %i.ae = shl nuw nsw i32 %i.ac, 9
  %i.af = shl nuw nsw i32 %i.ad, 1
  %i.ag = or disjoint i32 %i.af, %i.ae
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ah = shl nsw i32 %1, 2
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.q, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 1
  %i.al = tail call i32 @llvm.bswap.i32(i32 %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.an = load i32, ptr %i.am, align 1
  %i.ao = tail call i32 @llvm.bswap.i32(i32 %i.an)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink.i19 = phi i32 [ %i.ao, %bb.f ], [ %i.ag, %bb.e ]
  %.pn.i = phi i32 [ %i.al, %bb.f ], [ %i.z, %bb.e ] ; 2 uses
  %.023.i = add i32 %.pn.i, %i.m                  ; 2 uses
  %i.ap = icmp eq i32 %.pn.i, %.sink.i19
  br i1 %i.ap, label %stbtt__GetGlyfOffset.exit.thread, label %stbtt__GetGlyfOffset.exit

stbtt__GetGlyfOffset.exit.thread:                 ; preds = %bb.b, %bb.c, %bb.g
  store ptr null, ptr %2, align 8, !tbaa !48
  br label %stbtt__GetGlyphShapeTT.exit

stbtt__GetGlyfOffset.exit:                        ; preds = %bb.g
  store ptr null, ptr %2, align 8, !tbaa !48
  %i.aq = icmp slt i32 %.023.i, 0
  br i1 %i.aq, label %stbtt__GetGlyphShapeTT.exit, label %bb.h

bb.h:                                             ; preds = %stbtt__GetGlyfOffset.exit
  %i.ar = zext nneg i32 %.023.i to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ar ; 4 uses
  %.val400.i = load i8, ptr %i.as, align 1, !tbaa !11
  %i.at = getelementptr i8, ptr %i.as, i64 1
  %.val401.i = load i8, ptr %i.at, align 1, !tbaa !11
  %i.au = zext i8 %.val400.i to i16
  %i.av = shl nuw i16 %i.au, 8                    ; 2 uses
  %i.aw = zext i8 %.val401.i to i16
  %i.ax = or disjoint i16 %i.av, %i.aw            ; 2 uses
  %i.ay = icmp sgt i16 %i.ax, 0
  br i1 %i.ay, label %bb.i, label %bb.bf

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 10 ; 2 uses
  %i.ba = shl nuw i16 %i.ax, 1                    ; 3 uses
  %i.bb = zext i16 %i.ba to i32                   ; 2 uses
  %i.bc = zext i16 %i.ba to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bc ; 5 uses
  %.val378.i = load i8, ptr %i.bd, align 1, !tbaa !11
  %i.be = getelementptr i8, ptr %i.bd, i64 1
  %.val379.i = load i8, ptr %i.be, align 1, !tbaa !11
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -2
  %.val376.i = load i8, ptr %i.bf, align 1, !tbaa !11
  %i.bg = getelementptr i8, ptr %i.bd, i64 -1
  %.val377.i = load i8, ptr %i.bg, align 1, !tbaa !11
  %i.bh = zext i8 %.val376.i to i32
end_hunk_1
begin_hunk_2_@stbtt_IsGlyphEmpty
define range(i32 0, 2) i32 @stbtt_IsGlyphEmpty(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #19 {
bb.a:
  %2 = alloca %struct.stbtt__csctx, align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !365
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  store i32 1, ptr %2, align 8
  %i.c = call fastcc i32 @stbtt__run_charstring(ptr noundef nonnull readonly %0, i32 noundef %1, ptr noundef %2)
  %.not24.i = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.e = load i32, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  %i.f = icmp eq i32 %i.e, 0
  %i.g = select i1 %.not24.i, i1 true, i1 %i.f
  br label %stbtt__GetGlyfOffset.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !366
  %.not.i = icmp slt i32 %1, %i.i
  br i1 %.not.i, label %bb.d, label %stbtt__GetGlyfOffset.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.k = load i32, ptr %i.j, align 4, !tbaa !367  ; 2 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %stbtt__GetGlyfOffset.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = icmp eq i32 %i.k, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !368
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !359  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !369
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %i.t ; 2 uses
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = shl nsw i32 %1, 1
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 %i.w ; 4 uses
  %.val28.i = load i8, ptr %i.x, align 1, !tbaa !11
  %i.y = getelementptr i8, ptr %i.x, i64 1
  %.val29.i = load i8, ptr %i.y, align 1, !tbaa !11
  %i.z = zext i8 %.val28.i to i32
  %i.aa = zext i8 %.val29.i to i32
  %i.ab = shl nuw nsw i32 %i.z, 9
  %i.ac = shl nuw nsw i32 %i.aa, 1
  %i.ad = or disjoint i32 %i.ac, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %.val.i = load i8, ptr %i.ae, align 1, !tbaa !11
  %i.af = getelementptr i8, ptr %i.x, i64 3
  %.val27.i = load i8, ptr %i.af, align 1, !tbaa !11
  %i.ag = zext i8 %.val.i to i32
  %i.ah = zext i8 %.val27.i to i32
  %i.ai = shl nuw nsw i32 %i.ag, 9
  %i.aj = shl nuw nsw i32 %i.ah, 1
  %i.ak = or disjoint i32 %i.aj, %i.ai
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.al = shl nsw i32 %1, 2
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds i8, ptr %i.u, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 1
  %i.ap = tail call i32 @llvm.bswap.i32(i32 %i.ao)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ar = load i32, ptr %i.aq, align 1
  %i.as = tail call i32 @llvm.bswap.i32(i32 %i.ar)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi i32 [ %i.as, %bb.g ], [ %i.ak, %bb.f ]
  %.pn.i = phi i32 [ %i.ap, %bb.g ], [ %i.ad, %bb.f ] ; 2 uses
  %.023.i = add i32 %.pn.i, %i.o                  ; 2 uses
  %i.at = icmp eq i32 %.pn.i, %.sink.i
  %i.au = icmp slt i32 %.023.i, 0
  %or.cond = select i1 %i.at, i1 true, i1 %i.au
  br i1 %or.cond, label %stbtt__GetGlyfOffset.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = zext nneg i32 %.023.i to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.av ; 2 uses
  %.val = load i8, ptr %i.aw, align 1, !tbaa !11
  %i.ax = getelementptr i8, ptr %i.aw, i64 1
  %.val10 = load i8, ptr %i.ax, align 1, !tbaa !11
  %i.ay = or i8 %.val10, %.val
  %i.az = icmp eq i8 %i.ay, 0
  br label %stbtt__GetGlyfOffset.exit.thread

stbtt__GetGlyfOffset.exit.thread:                 ; preds = %bb.h, %bb.d, %bb.c, %bb.i, %bb.b
  %.0.shrunk = phi i1 [ %i.g, %bb.b ], [ %i.az, %bb.i ], [ true, %bb.h ], [ true, %bb.c ], [ true, %bb.d ]
  %.0 = zext i1 %.0.shrunk to i32
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbtt_GetGlyphHMetrics(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !359  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !392
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 34
  %.val = load i8, ptr %i.g, align 1, !tbaa !11
  %i.h = getelementptr i8, ptr %i.f, i64 35
  %.val33 = load i8, ptr %i.h, align 1, !tbaa !11
  %i.i = zext i8 %.val to i32
  %i.j = shl nuw nsw i32 %i.i, 8
  %i.k = zext i8 %.val33 to i32
  %i.l = or disjoint i32 %i.j, %i.k               ; 4 uses
  %i.m = icmp slt i32 %1, %i.l
  %.not31 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %i.m, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not31, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i32, ptr %i.n, align 8, !tbaa !393
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %i.b, i64 %i.p
  %i.r = shl nsw i32 %1, 2
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %i.s ; 2 uses
  %.val40 = load i8, ptr %i.t, align 1, !tbaa !11
  %i.u = getelementptr i8, ptr %i.t, i64 1
  %.val41 = load i8, ptr %i.u, align 1, !tbaa !11
  %i.v = zext i8 %.val40 to i16
  %i.w = shl nuw i16 %i.v, 8
  %i.x = zext i8 %.val41 to i16
  %i.y = or disjoint i16 %i.w, %i.x
  %i.z = sext i16 %i.y to i32
  store i32 %i.z, ptr %2, align 4, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not32 = icmp eq ptr %3, null
  br i1 %.not32, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !393
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr %i.b, i64 %i.ac
  %i.ae = shl nsw i32 %1, 2
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr %i.ad, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.ai = getelementptr i8, ptr %i.ag, i64 3
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  br i1 %.not31, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !393
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.b, i64 %i.al
  %i.an = shl nuw nsw i32 %i.l, 2
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr i8, ptr %i.am, i64 %i.ao  ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 -4
  %.val36 = load i8, ptr %i.aq, align 1, !tbaa !11
  %i.ar = getelementptr i8, ptr %i.ap, i64 -3
  %.val37 = load i8, ptr %i.ar, align 1, !tbaa !11
  %i.as = zext i8 %.val36 to i16
  %i.at = shl nuw i16 %i.as, 8
  %i.au = zext i8 %.val37 to i16
  %i.av = or disjoint i16 %i.at, %i.au
  %i.aw = sext i16 %i.av to i32
  store i32 %i.aw, ptr %2, align 4, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not30 = icmp eq ptr %3, null
  br i1 %.not30, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !393
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %i.b, i64 %i.az
  %i.bb = shl nuw nsw i32 %i.l, 2
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bc
  %i.be = sub nsw i32 %1, %i.l
  %i.bf = shl nsw i32 %i.be, 1
  %4 = zext nneg i32 %i.bf to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %4 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.i
  %.val34.sink.in = phi ptr [ %i.bg, %bb.i ], [ %i.ah, %bb.e ]
  %.val35.sink.in = phi ptr [ %i.bh, %bb.i ], [ %i.ai, %bb.e ]
  %.val35.sink = load i8, ptr %.val35.sink.in, align 1, !tbaa !11
  %.val34.sink = load i8, ptr %.val34.sink.in, align 1, !tbaa !11
  %i.bi = zext i8 %.val34.sink to i16
  %i.bj = shl nuw i16 %i.bi, 8
  %i.bk = zext i8 %.val35.sink to i16
  %i.bl = or disjoint i16 %i.bj, %i.bk
  %i.bm = sext i16 %i.bl to i32
  store i32 %i.bm, ptr %3, align 4, !tbaa !10
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.h, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 65536) i32 @stbtt_GetKerningTableLength(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #27 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !359
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !394  ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 6 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.val10 = load i8, ptr %i.g, align 1, !tbaa !11
  %i.h = getelementptr i8, ptr %i.f, i64 3
  %.val11 = load i8, ptr %i.h, align 1, !tbaa !11
  %i.i = or i8 %.val11, %.val10
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val8 = load i8, ptr %i.k, align 1, !tbaa !11
  %i.l = getelementptr i8, ptr %i.f, i64 9
  %.val9 = load i8, ptr %i.l, align 1, !tbaa !11
  %i.m = zext i8 %.val8 to i16
  %i.n = shl nuw i16 %i.m, 8
  %i.o = zext i8 %.val9 to i16
  %i.p = or disjoint i16 %i.n, %i.o
  %.not6 = icmp eq i16 %i.p, 1
  br i1 %.not6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %.val = load i8, ptr %i.q, align 1, !tbaa !11
  %i.r = getelementptr i8, ptr %i.f, i64 11
  %.val7 = load i8, ptr %i.r, align 1, !tbaa !11
  %i.s = zext i8 %.val to i32
  %i.t = shl nuw nsw i32 %i.s, 8
  %i.u = zext i8 %.val7 to i32
  %i.v = or disjoint i32 %i.t, %i.u
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.v, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2147483648, 65536) i32 @stbtt_GetKerningTable(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !359
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !394  ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 9 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.val37 = load i8, ptr %i.g, align 1, !tbaa !11
  %i.h = getelementptr i8, ptr %i.f, i64 3
  %.val38 = load i8, ptr %i.h, align 1, !tbaa !11
  %i.i = or i8 %.val38, %.val37
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val35 = load i8, ptr %i.k, align 1, !tbaa !11
  %i.l = getelementptr i8, ptr %i.f, i64 9
  %.val36 = load i8, ptr %i.l, align 1, !tbaa !11
  %i.m = zext i8 %.val35 to i16
  %i.n = shl nuw i16 %i.m, 8
  %i.o = zext i8 %.val36 to i16
  %i.p = or disjoint i16 %i.n, %i.o
  %.not29 = icmp eq i16 %i.p, 1
  br i1 %.not29, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %.val33 = load i8, ptr %i.q, align 1, !tbaa !11
  %i.r = getelementptr i8, ptr %i.f, i64 11
  %.val34 = load i8, ptr %i.r, align 1, !tbaa !11
  %i.s = zext i8 %.val33 to i32
  %i.t = shl nuw nsw i32 %i.s, 8
  %i.u = zext i8 %.val34 to i32
  %i.v = or disjoint i32 %i.t, %i.u
  %spec.select = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.v) ; 4 uses
  %i.w = icmp sgt i32 %spec.select, 0
  br i1 %i.w, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 18
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 22
  %wide.trip.count = zext nneg i32 %spec.select to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.aa = mul nuw nsw i64 %indvars.iv, 6          ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aa ; 2 uses
  %.val31 = load i8, ptr %i.ab, align 1, !tbaa !11
  %i.ac = getelementptr i8, ptr %i.ab, i64 1
  %.val32 = load i8, ptr %i.ac, align 1, !tbaa !11
  %i.ad = zext i8 %.val31 to i32
  %i.ae = shl nuw nsw i32 %i.ad, 8
  %i.af = zext i8 %.val32 to i32
  %i.ag = or disjoint i32 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !395
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa ; 2 uses
  %.val = load i8, ptr %i.ai, align 1, !tbaa !11
  %i.aj = getelementptr i8, ptr %i.ai, i64 1
  %.val30 = load i8, ptr %i.aj, align 1, !tbaa !11
  %i.ak = zext i8 %.val to i32
  %i.al = shl nuw nsw i32 %i.ak, 8
  %i.am = zext i8 %.val30 to i32
  %i.an = or disjoint i32 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !397
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa ; 2 uses
  %.val39 = load i8, ptr %i.ap, align 1, !tbaa !11
  %i.aq = getelementptr i8, ptr %i.ap, i64 1
  %.val40 = load i8, ptr %i.aq, align 1, !tbaa !11
  %i.ar = zext i8 %.val39 to i16
  %i.as = shl nuw i16 %i.ar, 8
  %i.at = zext i8 %.val40 to i16
  %i.au = or disjoint i16 %i.as, %i.at
  %i.av = sext i16 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !398
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !399

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.026 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ %spec.select, %bb.d ], [ %spec.select, %bb.e ]
  ret i32 %.026
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -32768, 32768) i32 @stbtt_GetGlyphKernAdvance(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !400  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !359
  %i.e = sext i32 %i.b to i64
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 %i.e ; 7 uses
  %.val178.i = load i8, ptr %i.f, align 1, !tbaa !11
  %i.g = getelementptr i8, ptr %i.f, i64 1
  %.val179.i = load i8, ptr %i.g, align 1, !tbaa !11
  %i.h = zext i8 %.val178.i to i16
  %i.i = shl nuw i16 %i.h, 8
  %i.j = zext i8 %.val179.i to i16
  %i.k = or disjoint i16 %i.i, %i.j
  %.not128.i = icmp eq i16 %i.k, 1
  br i1 %.not128.i, label %bb.c, label %stbtt__GetGlyphGPOSInfoAdvance.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.val176.i = load i8, ptr %i.l, align 1, !tbaa !11
  %i.m = getelementptr i8, ptr %i.f, i64 3
  %.val177.i = load i8, ptr %i.m, align 1, !tbaa !11
  %i.n = or i8 %.val177.i, %.val176.i
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.d, label %stbtt__GetGlyphGPOSInfoAdvance.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val174.i = load i8, ptr %i.p, align 1, !tbaa !11
end_hunk_2
begin_hunk_3_@stbtt_GetGlyphKernAdvance:bb.a
  %.val30.i = load i8, ptr %i.is, align 1, !tbaa !11
  %i.it = getelementptr i8, ptr %i.in, i64 9
  %.val31.i = load i8, ptr %i.it, align 1, !tbaa !11
  %i.iu = zext i8 %.val30.i to i16
  %i.iv = shl nuw i16 %i.iu, 8
  %i.iw = zext i8 %.val31.i to i16
  %i.ix = or disjoint i16 %i.iv, %i.iw
  %.not27.i = icmp eq i16 %i.ix, 1
  br i1 %.not27.i, label %bb.ag, label %stbtt__GetGlyphGPOSInfoAdvance.exit

bb.ag:                                            ; preds = %bb.af
  %i.iy = getelementptr inbounds nuw i8, ptr %i.in, i64 10
  %.val.i14 = load i8, ptr %i.iy, align 1, !tbaa !11
  %i.iz = getelementptr i8, ptr %i.in, i64 11
  %.val29.i = load i8, ptr %i.iz, align 1, !tbaa !11
  %i.ja = zext i8 %.val.i14 to i32
  %i.jb = shl nuw nsw i32 %i.ja, 8
  %i.jc = zext i8 %.val29.i to i32
  %i.jd = or disjoint i32 %i.jb, %i.jc            ; 2 uses
  %i.je = shl i32 %1, 16
  %i.jf = or i32 %i.je, %2                        ; 2 uses
  %.not281.i = icmp eq i32 %i.jd, 0
  br i1 %.not281.i, label %stbtt__GetGlyphGPOSInfoAdvance.exit, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %bb.ag
  %i.jg = add nsw i32 %i.jd, -1
  %i.jh = getelementptr inbounds nuw i8, ptr %i.in, i64 18
  br label %bb.ah

bb.ah:                                            ; preds = %bb.am, %.lr.ph.i15
  %.03.i = phi i32 [ %i.jg, %.lr.ph.i15 ], [ %.1.i, %bb.am ] ; 2 uses
  %.0222.i = phi i32 [ 0, %.lr.ph.i15 ], [ %.123.i, %bb.am ] ; 2 uses
  %i.ji = add nsw i32 %.0222.i, %.03.i
  %i.jj = ashr i32 %i.ji, 1                       ; 3 uses
  %i.jk = mul nsw i32 %i.jj, 6
  %i.jl = sext i32 %i.jk to i64                   ; 2 uses
  %i.jm = getelementptr inbounds i8, ptr %i.jh, i64 %i.jl
  %i.jn = load i32, ptr %i.jm, align 1
  %i.jo = tail call i32 @llvm.bswap.i32(i32 %i.jn) ; 2 uses
  %i.jp = icmp ult i32 %i.jf, %i.jo
  br i1 %i.jp, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.jq = add nsw i32 %i.jj, -1
  br label %bb.am

bb.aj:                                            ; preds = %bb.ah
  %i.jr = icmp ugt i32 %i.jf, %i.jo
  br i1 %i.jr, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.js = add nsw i32 %i.jj, 1
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.jt = getelementptr inbounds nuw i8, ptr %i.in, i64 22
  %i.ju = getelementptr inbounds i8, ptr %i.jt, i64 %i.jl ; 2 uses
  %.val34.i = load i8, ptr %i.ju, align 1, !tbaa !11
  %i.jv = getelementptr i8, ptr %i.ju, i64 1
  %.val35.i = load i8, ptr %i.jv, align 1, !tbaa !11
  %i.jw = zext i8 %.val34.i to i16
  %i.jx = shl nuw i16 %i.jw, 8
  %i.jy = zext i8 %.val35.i to i16
  %i.jz = or disjoint i16 %i.jx, %i.jy
  %i.ka = sext i16 %i.jz to i32
  br label %stbtt__GetGlyphGPOSInfoAdvance.exit

bb.am:                                            ; preds = %bb.ak, %bb.ai
  %.123.i = phi i32 [ %.0222.i, %bb.ai ], [ %i.js, %bb.ak ] ; 2 uses
  %.1.i = phi i32 [ %i.jq, %bb.ai ], [ %.03.i, %bb.ak ] ; 2 uses
  %.not28.i = icmp sgt i32 %.123.i, %.1.i
  br i1 %.not28.i, label %stbtt__GetGlyphGPOSInfoAdvance.exit, label %bb.ah, !llvm.loop !406

stbtt__GetGlyphGPOSInfoAdvance.exit:              ; preds = %.loopexit.i, %bb.t, %bb.s, %bb.r, %bb.am, %bb.al, %bb.ag, %bb.af, %bb.ae, %bb.ac, %bb.ab, %bb.aa, %bb.z, %.thread.i, %bb.d, %bb.c, %bb.b, %bb.ad
  %.0 = phi i32 [ 0, %bb.ad ], [ %i.ka, %bb.al ], [ 0, %bb.am ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.z ], [ 0, %bb.ab ], [ 0, %bb.aa ], [ %i.ii, %bb.ac ], [ %i.gf, %.thread.i ], [ 0, %bb.af ], [ 0, %bb.t ], [ 0, %bb.ag ], [ 0, %bb.ae ], [ 0, %bb.r ], [ 0, %bb.s ], [ 0, %.loopexit.i ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -32768, 32768) i32 @stbtt_GetCodepointKernAdvance(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !394
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !400
  %.not7 = icmp eq i32 %i.d, 0
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call i32 @stbtt_FindGlyphIndex(ptr noundef nonnull %0, i32 noundef %1)
  %i.f = tail call i32 @stbtt_FindGlyphIndex(ptr noundef nonnull %0, i32 noundef %2)
  %i.g = tail call i32 @stbtt_GetGlyphKernAdvance(ptr noundef nonnull %0, i32 noundef %i.e, i32 noundef %i.f)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %i.g, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbtt_GetCodepointHMetrics(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @stbtt_FindGlyphIndex(ptr noundef %0, i32 noundef %1) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !359  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !392
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 34
  %.val.i = load i8, ptr %i.h, align 1, !tbaa !11
  %i.i = getelementptr i8, ptr %i.g, i64 35
  %.val33.i = load i8, ptr %i.i, align 1, !tbaa !11
  %i.j = zext i8 %.val.i to i32
  %i.k = shl nuw nsw i32 %i.j, 8
  %i.l = zext i8 %.val33.i to i32
  %i.m = or disjoint i32 %i.k, %i.l               ; 4 uses
  %i.n = icmp slt i32 %i.a, %i.m
  %.not31.i = icmp eq ptr %2, null                ; 2 uses
  br i1 %i.n, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not31.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load i32, ptr %i.o, align 8, !tbaa !393
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %i.c, i64 %i.q
  %i.s = shl nsw i32 %i.a, 2
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 %i.t ; 2 uses
  %.val40.i = load i8, ptr %i.u, align 1, !tbaa !11
  %i.v = getelementptr i8, ptr %i.u, i64 1
  %.val41.i = load i8, ptr %i.v, align 1, !tbaa !11
  %i.w = zext i8 %.val40.i to i16
  %i.x = shl nuw i16 %i.w, 8
  %i.y = zext i8 %.val41.i to i16
  %i.z = or disjoint i16 %i.x, %i.y
  %i.aa = sext i16 %i.z to i32
  store i32 %i.aa, ptr %2, align 4, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not32.i = icmp eq ptr %3, null
  br i1 %.not32.i, label %stbtt_GetGlyphHMetrics.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !393
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.c, i64 %i.ad
  %i.af = shl nsw i32 %i.a, 2
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.aj = getelementptr i8, ptr %i.ah, i64 3
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.a
  br i1 %.not31.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !393
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds i8, ptr %i.c, i64 %i.am
  %i.ao = shl nuw nsw i32 %i.m, 2
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr i8, ptr %i.an, i64 %i.ap  ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 -4
  %.val36.i = load i8, ptr %i.ar, align 1, !tbaa !11
  %i.as = getelementptr i8, ptr %i.aq, i64 -3
  %.val37.i = load i8, ptr %i.as, align 1, !tbaa !11
  %i.at = zext i8 %.val36.i to i16
  %i.au = shl nuw i16 %i.at, 8
  %i.av = zext i8 %.val37.i to i16
  %i.aw = or disjoint i16 %i.au, %i.av
  %i.ax = sext i16 %i.aw to i32
  store i32 %i.ax, ptr %2, align 4, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not30.i = icmp eq ptr %3, null
  br i1 %.not30.i, label %stbtt_GetGlyphHMetrics.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !393
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %i.c, i64 %i.ba
  %i.bc = shl nuw nsw i32 %i.m, 2
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bd
  %i.bf = sub nsw i32 %i.a, %i.m
  %i.bg = shl nsw i32 %i.bf, 1
  %4 = zext nneg i32 %i.bg to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %4 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.i, %bb.e
  %.val34.sink.in.i = phi ptr [ %i.bh, %bb.i ], [ %i.ai, %bb.e ]
  %.val35.sink.in.i = phi ptr [ %i.bi, %bb.i ], [ %i.aj, %bb.e ]
  %.val35.sink.i = load i8, ptr %.val35.sink.in.i, align 1, !tbaa !11
  %.val34.sink.i = load i8, ptr %.val34.sink.in.i, align 1, !tbaa !11
  %i.bj = zext i8 %.val34.sink.i to i16
  %i.bk = shl nuw i16 %i.bj, 8
  %i.bl = zext i8 %.val35.sink.i to i16
  %i.bm = or disjoint i16 %i.bk, %i.bl
  %i.bn = sext i16 %i.bm to i32
  store i32 %i.bn, ptr %3, align 4, !tbaa !10
  br label %stbtt_GetGlyphHMetrics.exit

stbtt_GetGlyphHMetrics.exit:                      ; preds = %bb.d, %bb.h, %.sink.split.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbtt_GetFontVMetrics(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #26 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !359
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !392
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.val19 = load i8, ptr %i.g, align 1, !tbaa !11
  %i.h = getelementptr i8, ptr %i.f, i64 5
  %.val20 = load i8, ptr %i.h, align 1, !tbaa !11
  %i.i = zext i8 %.val19 to i16
  %i.j = shl nuw i16 %i.i, 8
  %i.k = zext i8 %.val20 to i16
  %i.l = or disjoint i16 %i.j, %i.k
  %i.m = sext i16 %i.l to i32
  store i32 %i.m, ptr %1, align 4, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not14 = icmp eq ptr %2, null
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !359
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !392
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %i.o, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %.val17 = load i8, ptr %i.t, align 1, !tbaa !11
  %i.u = getelementptr i8, ptr %i.s, i64 7
  %.val18 = load i8, ptr %i.u, align 1, !tbaa !11
  %i.v = zext i8 %.val17 to i16
  %i.w = shl nuw i16 %i.v, 8
  %i.x = zext i8 %.val18 to i16
  %i.y = or disjoint i16 %i.w, %i.x
  %i.z = sext i16 %i.y to i32
  store i32 %i.z, ptr %2, align 4, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not15 = icmp eq ptr %3, null
  br i1 %.not15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !359
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !392
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.val = load i8, ptr %i.ag, align 1, !tbaa !11
  %i.ah = getelementptr i8, ptr %i.af, i64 9
  %.val16 = load i8, ptr %i.ah, align 1, !tbaa !11
  %i.ai = zext i8 %.val to i16
  %i.aj = shl nuw i16 %i.ai, 8
  %i.ak = zext i8 %.val16 to i16
  %i.al = or disjoint i16 %i.aj, %i.ak
  %i.am = sext i16 %i.al to i32
  store i32 %i.am, ptr %3, align 4, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbtt_GetFontVMetricsOS2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !359  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !407  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.val.i = load i8, ptr %i.g, align 1, !tbaa !11
  %i.h = getelementptr i8, ptr %i.f, i64 5
  %.val25.i = load i8, ptr %i.h, align 1, !tbaa !11
  %i.i = zext i8 %.val.i to i32
  %i.j = shl nuw nsw i32 %i.i, 8
  %i.k = zext i8 %.val25.i to i32
  %i.l = or disjoint i32 %i.j, %i.k               ; 2 uses
  %i.m = add i32 %i.d, 12
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %stbtt__find_table.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.l to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.n = shl i32 %indvars.iv.tr.i, 4
  %i.o = add i32 %i.m, %i.n
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.p ; 5 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !11
  %i.s = icmp eq i8 %i.r, 79
  br i1 %i.s, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !11
  %i.v = icmp eq i8 %i.u, 83
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !11
  %i.y = icmp eq i8 %i.x, 47
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !11
  %i.ab = icmp eq i8 %i.aa, 50
  br i1 %i.ab, label %stbtt__find_table.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stbtt__find_table.exit.thread, label %bb.b, !llvm.loop !408

stbtt__find_table.exit:                           ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ad = load i32, ptr %i.ac, align 1            ; 2 uses
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %i.ad) ; 3 uses
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %stbtt__find_table.exit.thread, label %bb.g

bb.g:                                             ; preds = %stbtt__find_table.exit
  %.not19 = icmp eq ptr %1, null
  br i1 %.not19, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr %i.b, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 68
  %.val25 = load i8, ptr %i.ah, align 1, !tbaa !11
  %i.ai = getelementptr i8, ptr %i.ag, i64 69
  %.val26 = load i8, ptr %i.ai, align 1, !tbaa !11
  %i.aj = zext i8 %.val25 to i16
  %i.ak = shl nuw i16 %i.aj, 8
  %i.al = zext i8 %.val26 to i16
  %i.am = or disjoint i16 %i.ak, %i.al
  %i.an = sext i16 %i.am to i32
  store i32 %i.an, ptr %1, align 4, !tbaa !10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not20 = icmp eq ptr %2, null
  br i1 %.not20, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = sext i32 %i.ae to i64
  %i.ap = getelementptr inbounds i8, ptr %i.b, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 70
  %.val23 = load i8, ptr %i.aq, align 1, !tbaa !11
  %i.ar = getelementptr i8, ptr %i.ap, i64 71
  %.val24 = load i8, ptr %i.ar, align 1, !tbaa !11
  %i.as = zext i8 %.val23 to i16
  %i.at = shl nuw i16 %i.as, 8
  %i.au = zext i8 %.val24 to i16
  %i.av = or disjoint i16 %i.at, %i.au
  %i.aw = sext i16 %i.av to i32
  store i32 %i.aw, ptr %2, align 4, !tbaa !10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
end_hunk_3
begin_hunk_4_@nk_property:bb.a
bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.ai = load i32, ptr %i.y, align 4, !tbaa !893
  %.not119 = icmp eq i32 %i.ai, 0
  br i1 %.not119, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 268
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !1143
  %i.al = icmp eq i32 %.0109, %i.ak
  br i1 %i.al, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 188
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 252
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 256
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 280 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 260
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 264
  %.pre = load i32, ptr %i.ap, align 8, !tbaa !10
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.i, %bb.j
  %i.as = phi i32 [ %.pre, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.at = phi i1 [ true, %bb.j ], [ false, %bb.i ], [ false, %bb.h ]
  %.0110 = phi ptr [ %i.ap, %bb.j ], [ %i.d, %bb.i ], [ %i.d, %bb.h ] ; 13 uses
  %.0108 = phi ptr [ %i.am, %bb.j ], [ %i.c, %bb.i ], [ %i.c, %bb.h ] ; 7 uses
  %.0107 = phi ptr [ %i.an, %bb.j ], [ %i.e, %bb.i ], [ %i.e, %bb.h ] ; 7 uses
  %.0106 = phi ptr [ %i.ao, %bb.j ], [ %i.f, %bb.i ], [ %i.f, %bb.h ] ; 4 uses
  %.0105 = phi ptr [ %i.aq, %bb.j ], [ %i.g, %bb.i ], [ %i.g, %bb.h ] ; 3 uses
  %.0 = phi ptr [ %i.ar, %bb.j ], [ %i.h, %bb.i ], [ %i.h, %bb.h ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 280 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !1144
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 13008 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 9856
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !tbaa.struct !50
  %i.ay = icmp eq i32 %i.n, 2
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread
  %i.az = load i32, ptr %i.y, align 4, !tbaa !893
  %.not120 = icmp eq i32 %i.az, 0
  br i1 %.not120, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !846
  %i.bc = and i32 %i.bb, 4096
  %i.bd = icmp ne i32 %i.bc, 0
  %i.be = icmp eq i32 %i.n, 3
  %or.cond = or i1 %i.be, %i.bd
  %spec.select = select i1 %or.cond, ptr null, ptr %0
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bf = phi ptr [ null, %bb.k ], [ %spec.select, %bb.l ] ; 24 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 9880 ; 12 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 10 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 3360 ; 2 uses
  %i.bj = load ptr, ptr %i.m, align 8, !tbaa !754 ; 9 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 9884
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !1055 ; 2 uses
  %i.bm = load <2 x float>, ptr %6, align 8       ; 7 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bo = load <2 x float>, ptr %i.bn, align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !166 ; 5 uses
  %i.br = insertelement <2 x float> poison, float %i.bq, i64 0
  %.sroa.729.8.vec.insert.i = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %.sroa.0394.0.vec.extract.i = extractelement <2 x float> %i.bm, i64 0 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 3504 ; 4 uses
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !1145 ; 2 uses
  %i.bu = fadd float %.sroa.0394.0.vec.extract.i, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 3512 ; 3 uses
  %i.bw = load float, ptr %i.bv, align 8, !tbaa !1146
  %i.bx = fadd float %i.bu, %i.bw                 ; 2 uses
  %.sroa.025.0.vec.insert.i = insertelement <2 x float> poison, float %i.bx, i64 0
  %.sroa.0394.4.vec.extract402.i = extractelement <2 x float> %i.bm, i64 1 ; 13 uses
  %i.by = fadd float %.sroa.0394.4.vec.extract402.i, %i.bt
  %.sroa.8403.12.vec.extract409.i = extractelement <2 x float> %i.bo, i64 1 ; 6 uses
  %i.bz = fmul float %.sroa.8403.12.vec.extract409.i, 5.000000e-01
  %i.ca = fadd float %i.bz, %i.by
  %i.cb = fmul float %i.bq, 5.000000e-01
  %i.cc = fsub float %i.ca, %i.cb                 ; 2 uses
  %.sroa.025.4.vec.insert.i = insertelement <2 x float> %.sroa.025.0.vec.insert.i, float %i.cc, i64 1
  %i.cd = load i8, ptr %.0111, align 1, !tbaa !11
  switch i8 %i.cd, label %.lr.ph.i.preheader.i [
    i8 35, label %nk_strlen.exit.i
    i8 0, label %nk_strlen.exit.i
  ]

.lr.ph.i.preheader.i:                             ; preds = %bb.m
  %scevgep.i = getelementptr i8, ptr %.0111, i64 1
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep.i)
  %i.ce = trunc i64 %strlen.i to i32
  %i.cf = add i32 %i.ce, 1
  br label %nk_strlen.exit.i

nk_strlen.exit.i:                                 ; preds = %.lr.ph.i.preheader.i, %bb.m, %bb.m
  %.0286.i = phi i32 [ 0, %bb.m ], [ 0, %bb.m ], [ %i.cf, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !164
  %i.ci = load ptr, ptr %i.bj, align 8
  %i.cj = tail call float %i.ch(ptr %i.ci, float noundef %i.bq, ptr noundef nonnull %.0111, i32 noundef %.0286.i) #50, !inline_history !1147
  %i.ck = fadd float %i.bq, %i.bx
  %i.cl = load float, ptr %i.bv, align 8, !tbaa !1146 ; 3 uses
  %i.cm = fadd float %i.ck, %i.cl                 ; 3 uses
  %.sroa.0.0.vec.insert381.i = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cn = load float, ptr %i.bs, align 8, !tbaa !1145 ; 2 uses
  %i.co = fadd float %.sroa.0394.4.vec.extract402.i, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 3516
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !1148 ; 2 uses
  %i.cr = fadd float %i.co, %i.cq                 ; 3 uses
  %.sroa.0.4.vec.insert385.i = insertelement <2 x float> %.sroa.0.0.vec.insert381.i, float %i.cr, i64 1
  %i.cs = fmul float %i.cq, 2.000000e+00
  %i.ct = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cu = insertelement <2 x float> %i.ct, float %i.cn, i64 1
  %i.cv = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cw = insertelement <2 x float> %i.cv, float %i.cs, i64 1
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> splat (float 2.000000e+00), <2 x float> %i.cw) ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %i.bo, %i.cx ; 2 uses
  %i.cy = extractelement <2 x float> %foldExtExtBinop, i64 1
  %.sroa.8.12.vec.insert392.i = shufflevector <2 x float> %i.cx, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 3>
  %foldExtExtBinop206 = fadd <2 x float> %i.bm, %i.bo
  %i.cz = extractelement <2 x float> %foldExtExtBinop206, i64 0 ; 5 uses
  %i.da = fadd float %i.bq, %i.cl
  %i.db = fsub float %i.cz, %i.da                 ; 3 uses
  %i.dc = insertelement <2 x float> poison, float %i.db, i64 0
  %.sroa.016.0.vec.insert.i = insertelement <2 x float> %i.dc, float %i.cc, i64 1
  %i.dd = load i32, ptr %.0110, align 4, !tbaa !10
  %i.de = icmp eq i32 %i.dd, 1
  br i1 %i.de, label %bb.n, label %bb.o

bb.n:                                             ; preds = %nk_strlen.exit.i
  %i.df = load ptr, ptr %i.cg, align 8, !tbaa !164
  %i.dg = load float, ptr %i.bp, align 8, !tbaa !166
  %i.dh = load i32, ptr %.0107, align 4, !tbaa !10
  %i.di = load ptr, ptr %i.bj, align 8
  %i.dj = call float %i.df(ptr %i.di, float noundef %i.dg, ptr noundef nonnull %.0108, i32 noundef %i.dh) #50, !inline_history !1147
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 4460
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !1149
  %i.dm = fadd float %i.dj, %i.dl
  br label %bb.af

bb.o:                                             ; preds = %nk_strlen.exit.i
  %i.dn = load i32, ptr %2, align 8, !tbaa !1150
  switch i32 %i.dn, label %bb.ae [
    i32 0, label %bb.p
    i32 1, label %bb.u
    i32 2, label %bb.z
  ]

bb.p:                                             ; preds = %bb.o
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !11 ; 3 uses
  %i.dq = sext i32 %i.dp to i64                   ; 2 uses
  %i.dr = icmp eq i32 %i.dp, 0
  br i1 %i.dr, label %nk_itoa.exit.thread.i, label %bb.q

nk_itoa.exit.thread.i:                            ; preds = %bb.p
  store i8 48, ptr %i.b, align 16, !tbaa !11
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 0, ptr %i.ds, align 1, !tbaa !11
  br label %.lr.ph.i360.preheader.i

bb.q:                                             ; preds = %bb.p
  %i.dt = icmp slt i32 %i.dp, 0
  br i1 %i.dt, label %bb.r, label %.preheader

bb.r:                                             ; preds = %bb.q
  store i8 45, ptr %i.b, align 16, !tbaa !11
  %i.du = sub nsw i64 0, %i.dq
  br label %.preheader

.preheader:                                       ; preds = %bb.r, %bb.q
  %.127.i.i.ph = phi i64 [ 0, %bb.q ], [ 1, %bb.r ]
  %.12226.i.i.ph = phi i64 [ %i.dq, %bb.q ], [ %i.du, %bb.r ]
  br label %bb.s

bb.s:                                             ; preds = %.preheader, %bb.s
  %.127.i.i = phi i64 [ %i.dy, %bb.s ], [ %.127.i.i.ph, %.preheader ] ; 2 uses
  %.12226.i.i = phi i64 [ %i.ea, %bb.s ], [ %.12226.i.i.ph, %.preheader ] ; 3 uses
  %i.dv = urem i64 %.12226.i.i, 10
  %i.dw = trunc nuw nsw i64 %i.dv to i8
  %i.dx = or disjoint i8 %i.dw, 48
  %i.dy = add nuw nsw i64 %.127.i.i, 1            ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 %.127.i.i
  store i8 %i.dx, ptr %i.dz, align 1, !tbaa !11
  %i.ea = udiv i64 %.12226.i.i, 10
  %.not.i.i = icmp samesign ult i64 %.12226.i.i, 10
  br i1 %.not.i.i, label %bb.t, label %bb.s, !llvm.loop !1152

bb.t:                                             ; preds = %bb.s
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dy
  store i8 0, ptr %i.eb, align 1, !tbaa !11
  %i.ec = load i8, ptr %i.b, align 16, !tbaa !11  ; 3 uses
  %i.ed = icmp eq i8 %i.ec, 45                    ; 2 uses
  %.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %spec.select.idx.i.sroa.sel.i = select i1 %i.ed, ptr %.sroa.gep.i, ptr %i.b ; 7 uses
  %i.ee = load i8, ptr %spec.select.idx.i.sroa.sel.i, align 1, !tbaa !11
  %.not4.i15.i.i.i = icmp eq i8 %i.ee, 0
  br i1 %.not4.i15.i.i.i, label %nk_itoa.exit.i, label %nk_strlen.exit.i.i.i

nk_strlen.exit.i.i.i:                             ; preds = %bb.t
  %.sroa.gep.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %spec.select.idx.i.sroa.sel.sroa.sel.i = select i1 %i.ed, ptr %.sroa.gep.sroa.gep.i, ptr %.sroa.gep.i
  %strlen.i.i.i = call i64 @strlen(ptr nonnull dereferenceable(1) %spec.select.idx.i.sroa.sel.sroa.sel.i) ; 4 uses
  %i.ef = trunc i64 %strlen.i.i.i to i32
  %i.eg = add i32 %i.ef, 1
  %i.eh = lshr i32 %i.eg, 1                       ; 4 uses
  %.not.i.i.i = icmp eq i32 %i.eh, 0
  br i1 %.not.i.i.i, label %nk_itoa.exit.i, label %.lr.ph19.preheader.i.i.i

.lr.ph19.preheader.i.i.i:                         ; preds = %nk_strlen.exit.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.eh to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.ei = icmp eq i32 %i.eh, 1
  br i1 %i.ei, label %.lr.ph19.i.i.i.epil.preheader, label %.lr.ph19.preheader.i.i.i.new

.lr.ph19.preheader.i.i.i.new:                     ; preds = %.lr.ph19.preheader.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %.lr.ph19.i.i.i

.lr.ph19.i.i.i:                                   ; preds = %.lr.ph19.i.i.i, %.lr.ph19.preheader.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph19.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %.lr.ph19.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph19.preheader.i.i.i.new ], [ %niter.next.1, %.lr.ph19.i.i.i ]
  %i.ej = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.i, i64 %indvars.iv.i.i.i ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !11
  %7 = sub i64 %strlen.i.i.i, %indvars.iv.i.i.i
  %8 = and i64 %7, 4294967295
  %i.el = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.i, i64 %8 ; 2 uses
  %i.em = load i8, ptr %i.el, align 1, !tbaa !11
  store i8 %i.em, ptr %i.ej, align 1, !tbaa !11
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !11
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.i, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !11
  %9 = sub i64 %strlen.i.i.i, %indvars.iv.next.i.i.i
  %10 = and i64 %9, 4294967295
  %i.ep = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.i, i64 %10 ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !11
  store i8 %i.eq, ptr %i.en, align 1, !tbaa !11
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !11
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %nk_itoa.exit.loopexit.i.unr-lcssa, label %.lr.ph19.i.i.i, !llvm.loop !1153

nk_itoa.exit.loopexit.i.unr-lcssa:                ; preds = %.lr.ph19.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %nk_itoa.exit.loopexit.i, label %.lr.ph19.i.i.i.epil.preheader

.lr.ph19.i.i.i.epil.preheader:                    ; preds = %nk_itoa.exit.loopexit.i.unr-lcssa, %.lr.ph19.preheader.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph19.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.1, %nk_itoa.exit.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod215 = trunc i32 %i.eh to i1
  tail call void @llvm.assume(i1 %lcmp.mod215)
  %i.er = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.i, i64 %indvars.iv.i.i.i.epil.init ; 2 uses
  %i.es = load i8, ptr %i.er, align 1, !tbaa !11
  %11 = sub i64 %strlen.i.i.i, %indvars.iv.i.i.i.epil.init
  %12 = and i64 %11, 4294967295
  %i.et = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.i, i64 %12 ; 2 uses
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !11
  store i8 %i.eu, ptr %i.er, align 1, !tbaa !11
  store i8 %i.es, ptr %i.et, align 1, !tbaa !11
  br label %nk_itoa.exit.loopexit.i

nk_itoa.exit.loopexit.i:                          ; preds = %nk_itoa.exit.loopexit.i.unr-lcssa, %.lr.ph19.i.i.i.epil.preheader
  %.pre.i = load i8, ptr %i.b, align 16, !tbaa !11
  br label %nk_itoa.exit.i

nk_itoa.exit.i:                                   ; preds = %nk_itoa.exit.loopexit.i, %nk_strlen.exit.i.i.i, %bb.t
  %i.ev = phi i8 [ %.pre.i, %nk_itoa.exit.loopexit.i ], [ %i.ec, %nk_strlen.exit.i.i.i ], [ %i.ec, %bb.t ]
  %.not4.i363420.i = icmp eq i8 %i.ev, 0
  br i1 %.not4.i363420.i, label %.sink.split.i, label %.lr.ph.i360.preheader.i

.lr.ph.i360.preheader.i:                          ; preds = %nk_itoa.exit.i, %nk_itoa.exit.thread.i
  %scevgep431.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %strlen432.i = call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep431.i)
  %i.ew = trunc i64 %strlen432.i to i32
  %i.ex = add i32 %i.ew, 1
  br label %.sink.split.i

bb.u:                                             ; preds = %bb.o
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ez = load float, ptr %i.ey, align 8, !tbaa !11
  %i.fa = fpext float %i.ez to double
  %i.fb = call fastcc ptr @nk_dtoa(ptr noundef %i.b, double noundef %i.fa) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %.backedge.i.i, %bb.u
  %.011.i.i = phi i32 [ 0, %bb.u ], [ %.011.be.i.i, %.backedge.i.i ] ; 3 uses
  %.0.i365.i = phi ptr [ %i.b, %bb.u ], [ %.0.be.i.i, %.backedge.i.i ] ; 4 uses
  %i.fc = load i8, ptr %.0.i365.i, align 1, !tbaa !11
  switch i8 %i.fc, label %bb.w [
    i8 0, label %nk_string_float_limit.exit.i
    i8 46, label %.backedge.i.i
  ]

.backedge.i.i:                                    ; preds = %bb.y, %bb.v
  %.011.be.i.i = phi i32 [ %spec.select.i366.i, %bb.y ], [ 1, %bb.v ]
  %.0.be.i.i = getelementptr inbounds nuw i8, ptr %.0.i365.i, i64 1
  br label %bb.v, !llvm.loop !1154

bb.w:                                             ; preds = %bb.v
  %i.fd = icmp eq i32 %.011.i.i, 3
  br i1 %i.fd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i8 0, ptr %.0.i365.i, align 1, !tbaa !11
  br label %nk_string_float_limit.exit.i

bb.y:                                             ; preds = %bb.w
  %i.fe = icmp sgt i32 %.011.i.i, 0
  %i.ff = zext i1 %i.fe to i32
  %spec.select.i366.i = add nuw nsw i32 %.011.i.i, %i.ff
  br label %.backedge.i.i

nk_string_float_limit.exit.i:                     ; preds = %bb.v, %bb.x
  %i.fg = ptrtoint ptr %.0.i365.i to i64
  %i.fh = ptrtoint ptr %i.b to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = trunc i64 %i.fi to i32
  br label %.sink.split.i

bb.z:                                             ; preds = %bb.o
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !11
  %i.fm = call fastcc ptr @nk_dtoa(ptr noundef %i.b, double noundef %i.fl) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.backedge.i369.i, %bb.z
  %.011.i367.i = phi i32 [ 0, %bb.z ], [ %.011.be.i370.i, %.backedge.i369.i ] ; 3 uses
  %.0.i368.i = phi ptr [ %i.b, %bb.z ], [ %.0.be.i371.i, %.backedge.i369.i ] ; 4 uses
  %i.fn = load i8, ptr %.0.i368.i, align 1, !tbaa !11
  switch i8 %i.fn, label %bb.ab [
    i8 0, label %nk_string_float_limit.exit373.i
    i8 46, label %.backedge.i369.i
  ]

.backedge.i369.i:                                 ; preds = %bb.ad, %bb.aa
  %.011.be.i370.i = phi i32 [ %spec.select.i372.i, %bb.ad ], [ 1, %bb.aa ]
  %.0.be.i371.i = getelementptr inbounds nuw i8, ptr %.0.i368.i, i64 1
  br label %bb.aa, !llvm.loop !1154

bb.ab:                                            ; preds = %bb.aa
  %i.fo = icmp eq i32 %.011.i367.i, 3
  br i1 %i.fo, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i8 0, ptr %.0.i368.i, align 1, !tbaa !11
  br label %nk_string_float_limit.exit373.i

bb.ad:                                            ; preds = %bb.ab
  %i.fp = icmp sgt i32 %.011.i367.i, 0
  %i.fq = zext i1 %i.fp to i32
  %spec.select.i372.i = add nuw nsw i32 %.011.i367.i, %i.fq
  br label %.backedge.i369.i

nk_string_float_limit.exit373.i:                  ; preds = %bb.aa, %bb.ac
  %i.fr = ptrtoint ptr %.0.i368.i to i64
  %i.fs = ptrtoint ptr %i.b to i64
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = trunc i64 %i.ft to i32
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %nk_string_float_limit.exit373.i, %nk_string_float_limit.exit.i, %.lr.ph.i360.preheader.i, %nk_itoa.exit.i
  %.sink.i = phi i32 [ %i.fu, %nk_string_float_limit.exit373.i ], [ %i.fj, %nk_string_float_limit.exit.i ], [ 0, %nk_itoa.exit.i ], [ %i.ex, %.lr.ph.i360.preheader.i ] ; 2 uses
  store i32 %.sink.i, ptr %i.a, align 4, !tbaa !10
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split.i, %bb.o
  %.0..0..0..i = phi i32 [ 0, %bb.o ], [ %.sink.i, %.sink.split.i ]
  %i.fv = load ptr, ptr %i.cg, align 8, !tbaa !164
  %i.fw = load float, ptr %i.bp, align 8, !tbaa !166
  %i.fx = load ptr, ptr %i.bj, align 8
  %i.fy = call float %i.fv(ptr %i.fx, float noundef %i.fw, ptr noundef nonnull %i.b, i32 noundef %.0..0..0..i) #50, !inline_history !1147
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.n
  %.0285.i = phi float [ %i.dm, %bb.n ], [ %i.fy, %bb.ae ]
  %.0283.i = phi ptr [ %.0108, %bb.n ], [ %i.b, %bb.ae ] ; 2 uses
  %.0.i = phi ptr [ %.0107, %bb.n ], [ %i.a, %bb.ae ] ; 4 uses
  %i.fz = load float, ptr %i.bv, align 8, !tbaa !1146 ; 2 uses
  %i.ga = extractelement <2 x float> %i.cx, i64 0
  %i.gb = fadd float %i.cm, %i.ga                 ; 5 uses
  %i.gc = fsub float %i.db, %i.gb                 ; 2 uses
  %i.gd = load float, ptr %i.bs, align 8, !tbaa !1145 ; 2 uses
  %i.ge = fadd float %.sroa.0394.4.vec.extract402.i, %i.gd
  %i.gf = insertelement <2 x float> poison, float %i.fz, i64 0
  %i.gg = insertelement <2 x float> %i.gf, float %i.gd, i64 1
  %i.gh = insertelement <2 x float> %i.bo, float %.0285.i, i64 0
  %i.gi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gg, <2 x float> <float 2.000000e+00, float -2.000000e+00>, <2 x float> %i.gh) ; 2 uses
  %i.gj = extractelement <2 x float> %i.gi, i64 0 ; 2 uses
  %i.gk = fcmp olt float %i.gj, %i.gc
  %..i = select i1 %i.gk, float %i.gj, float %i.gc ; 2 uses
  %i.gl = fadd float %i.fz, %..i
  %i.gm = fsub float %i.db, %i.gl                 ; 2 uses
  %.sroa.03.0.vec.insert.i = insertelement <2 x float> poison, float %i.gm, i64 0
  %.sroa.03.4.vec.insert.i = insertelement <2 x float> %.sroa.03.0.vec.insert.i, float %i.ge, i64 1 ; 2 uses
  %i.gn = insertelement <2 x float> %i.gi, float %..i, i64 0 ; 2 uses
  %i.go = fsub float %i.gm, %i.gb
  %i.gp = load i32, ptr %.0110, align 4, !tbaa !10
  %i.gq = icmp ne i32 %i.gp, 1
  %i.gr = load i32, ptr %i.bg, align 8, !tbaa !10
  %i.gs = and i32 %i.gr, 2
  %..i.i = or disjoint i32 %i.gs, 4               ; 2 uses
  store i32 %..i.i, ptr %i.bg, align 8, !tbaa !10
  %.not25.i.i = icmp eq ptr %i.bf, null           ; 3 uses
  %.pr53.i.i = load i32, ptr %.0110, align 4, !tbaa !10 ; 2 uses
  br i1 %.not25.i.i, label %.thread52.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  switch i32 %.pr53.i.i, label %nk_property_behavior.exit.i [
    i32 0, label %bb.ah
    i32 2, label %..thread49_crit_edge.i.i
  ]

..thread49_crit_edge.i.i:                         ; preds = %bb.ag
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 268
  %.pre.i.i = load float, ptr %.phi.trans.insert.i.i, align 4, !tbaa !712
  br label %.thread49.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.gt = call fastcc zeroext i1 @nk_button_behavior(ptr noundef nonnull %i.bg, <2 x float> %.sroa.03.4.vec.insert.i, <2 x float> %i.gn, ptr noundef nonnull readonly %i.bf, i32 noundef 0)
  br i1 %i.gt, label %.sink.split.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gu = getelementptr inbounds nuw i8, ptr %i.bf, i64 268
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !712 ; 7 uses
  %i.gw = fcmp ole float %i.cm, %i.gv
  %i.gx = fcmp olt float %i.gv, %i.gb
  %or.cond.i.i.i.i.i = select i1 %i.gw, i1 %i.gx, i1 false
  br i1 %or.cond.i.i.i.i.i, label %nk_input_has_mouse_click_in_rect.exit.i.i.i.i, label %nk_input_is_mouse_click_down_in_rect.exit.thread.i.i

nk_input_has_mouse_click_in_rect.exit.i.i.i.i:    ; preds = %bb.ai
  %i.gy = getelementptr inbounds nuw i8, ptr %i.bf, i64 272
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !713 ; 2 uses
  %i.ha = fcmp ole float %i.cr, %i.gz
  %i.hb = fadd float %i.cr, %i.cy
  %i.hc = fcmp olt float %i.gz, %i.hb
  %or.cond16.i.i.i.i.i = select i1 %i.ha, i1 %i.hc, i1 false
  br i1 %or.cond16.i.i.i.i.i, label %nk_input_has_mouse_click_down_in_rect.exit.i.i.i, label %nk_input_is_mouse_click_down_in_rect.exit.thread.i.i

nk_input_has_mouse_click_down_in_rect.exit.i.i.i: ; preds = %nk_input_has_mouse_click_in_rect.exit.i.i.i.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.bf, i64 260
  %i.he = load i8, ptr %i.hd, align 4, !tbaa !709, !range !79, !noundef !80
  %.not.i374.i = icmp eq i8 %i.he, 0
  br i1 %.not.i374.i, label %nk_input_is_mouse_click_down_in_rect.exit.thread.i.i, label %nk_input_is_mouse_click_down_in_rect.exit.i.i

nk_input_is_mouse_click_down_in_rect.exit.i.i:    ; preds = %nk_input_has_mouse_click_down_in_rect.exit.i.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.bf, i64 264
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !700
  %.not55.i.i = icmp eq i32 %i.hg, 0
  br i1 %.not55.i.i, label %nk_input_is_mouse_click_down_in_rect.exit.thread.i.i, label %bb.aj

bb.aj:                                            ; preds = %nk_input_is_mouse_click_down_in_rect.exit.i.i
  store i32 2, ptr %.0110, align 4, !tbaa !10
  br label %.thread49.i.i

nk_input_is_mouse_click_down_in_rect.exit.thread.i.i: ; preds = %nk_input_is_mouse_click_down_in_rect.exit.i.i, %nk_input_has_mouse_click_down_in_rect.exit.i.i.i, %nk_input_has_mouse_click_in_rect.exit.i.i.i.i, %bb.ai
  %i.hh = fcmp ole float %i.gb, %i.gv
end_hunk_4
begin_hunk_5_@stbtt__cff_get_index:bb.a
  %i.o = sext i32 %i.l to i64
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !11
  %i.r = zext i8 %i.q to i32
  %i.s = or disjoint i32 %.0.i.i, %i.r
  br label %stbtt__buf_get8.exit.i.1

stbtt__buf_get8.exit.i.1:                         ; preds = %bb.c, %stbtt__buf_get8.exit.i
  %i.t = phi i32 [ %i.n, %bb.c ], [ %i.l, %stbtt__buf_get8.exit.i ] ; 5 uses
  %.0.i.i.1 = phi i32 [ %i.s, %bb.c ], [ %.0.i.i, %stbtt__buf_get8.exit.i ] ; 2 uses
  %.not = icmp eq i32 %.0.i.i.1, 0
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %stbtt__buf_get8.exit.i.1
  %.not.i = icmp slt i32 %i.t, %i.d
  br i1 %.not.i, label %bb.e, label %stbtt__buf_get8.exit

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %0, align 8, !tbaa !528
  %i.v = add nsw i32 %i.t, 1                      ; 2 uses
  store i32 %i.v, ptr %i.a, align 8, !tbaa !526
  %i.w = sext i32 %i.t to i64
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !11
  %i.z = zext i8 %i.y to i32
  br label %stbtt__buf_get8.exit

stbtt__buf_get8.exit:                             ; preds = %bb.d, %bb.e
  %i.aa = phi i32 [ %i.v, %bb.e ], [ %i.t, %bb.d ]
  %.0.i = phi i32 [ %i.z, %bb.e ], [ 0, %bb.d ]   ; 6 uses
  %i.ab = mul nuw nsw i32 %.0.i, %.0.i.i.1
  %i.ac = add nsw i32 %i.aa, %i.ab                ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0
  %i.ae = tail call i32 @llvm.smin.i32(i32 %i.ac, i32 %i.d)
  %..i.i = select i1 %i.ad, i32 %i.d, i32 %i.ae   ; 3 uses
  %.not.i13 = icmp eq i32 %.0.i, 0
  br i1 %.not.i13, label %stbtt__buf_get.exit21, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %stbtt__buf_get8.exit
  %xtraiter = and i32 %.0.i, 1
  %i.af = icmp eq i32 %.0.i, 1
  br i1 %i.af, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %.0.i, 254
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %stbtt__buf_get8.exit.i18.1, %.lr.ph.i.preheader.new
  %i.ag = phi i32 [ %..i.i, %.lr.ph.i.preheader.new ], [ %i.ay, %stbtt__buf_get8.exit.i18.1 ] ; 4 uses
  %.056.i16 = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %.0.i.i19.1, %stbtt__buf_get8.exit.i18.1 ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %stbtt__buf_get8.exit.i18.1 ]
  %i.ah = shl i32 %.056.i16, 8                    ; 2 uses
  %.not.i.i17 = icmp slt i32 %i.ag, %i.d
  br i1 %.not.i.i17, label %bb.f, label %stbtt__buf_get8.exit.i18

bb.f:                                             ; preds = %.lr.ph.i
  %i.ai = load ptr, ptr %0, align 8, !tbaa !528
  %i.aj = add nsw i32 %i.ag, 1                    ; 2 uses
  store i32 %i.aj, ptr %i.a, align 8, !tbaa !526
  %i.ak = sext i32 %i.ag to i64
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !11
  %i.an = zext i8 %i.am to i32
  %i.ao = or disjoint i32 %i.ah, %i.an
  br label %stbtt__buf_get8.exit.i18

stbtt__buf_get8.exit.i18:                         ; preds = %bb.f, %.lr.ph.i
  %i.ap = phi i32 [ %i.aj, %bb.f ], [ %i.ag, %.lr.ph.i ] ; 4 uses
  %.0.i.i19 = phi i32 [ %i.ao, %bb.f ], [ %i.ah, %.lr.ph.i ]
  %i.aq = shl i32 %.0.i.i19, 8                    ; 2 uses
  %.not.i.i17.1 = icmp slt i32 %i.ap, %i.d
  br i1 %.not.i.i17.1, label %bb.g, label %stbtt__buf_get8.exit.i18.1

bb.g:                                             ; preds = %stbtt__buf_get8.exit.i18
  %i.ar = load ptr, ptr %0, align 8, !tbaa !528
  %i.as = add nsw i32 %i.ap, 1                    ; 2 uses
  store i32 %i.as, ptr %i.a, align 8, !tbaa !526
  %i.at = sext i32 %i.ap to i64
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !11
  %i.aw = zext i8 %i.av to i32
  %i.ax = or disjoint i32 %i.aq, %i.aw
  br label %stbtt__buf_get8.exit.i18.1

stbtt__buf_get8.exit.i18.1:                       ; preds = %bb.g, %stbtt__buf_get8.exit.i18
  %i.ay = phi i32 [ %i.as, %bb.g ], [ %i.ap, %stbtt__buf_get8.exit.i18 ] ; 3 uses
  %.0.i.i19.1 = phi i32 [ %i.ax, %bb.g ], [ %i.aq, %stbtt__buf_get8.exit.i18 ] ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %stbtt__buf_get.exit21.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !529

stbtt__buf_get.exit21.loopexit.unr-lcssa:         ; preds = %stbtt__buf_get8.exit.i18.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %stbtt__buf_get.exit21.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %stbtt__buf_get.exit21.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.epil.init = phi i32 [ %..i.i, %.lr.ph.i.preheader ], [ %i.ay, %stbtt__buf_get.exit21.loopexit.unr-lcssa ] ; 4 uses
  %.056.i16.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %.0.i.i19.1, %stbtt__buf_get.exit21.loopexit.unr-lcssa ]
  %lcmp.mod33 = trunc i32 %.0.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod33)
  %i.az = shl i32 %.056.i16.epil.init, 8          ; 2 uses
  %.not.i.i17.epil = icmp slt i32 %.epil.init, %i.d
  br i1 %.not.i.i17.epil, label %bb.h, label %stbtt__buf_get.exit21.loopexit

bb.h:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.ba = load ptr, ptr %0, align 8, !tbaa !528
  %i.bb = add nsw i32 %.epil.init, 1              ; 2 uses
  store i32 %i.bb, ptr %i.a, align 8, !tbaa !526
  %i.bc = sext i32 %.epil.init to i64
  %i.bd = getelementptr inbounds i8, ptr %i.ba, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !11
  %i.bf = zext i8 %i.be to i32
  %i.bg = or disjoint i32 %i.az, %i.bf
  br label %stbtt__buf_get.exit21.loopexit

stbtt__buf_get.exit21.loopexit:                   ; preds = %.lr.ph.i.epil.preheader, %bb.h, %stbtt__buf_get.exit21.loopexit.unr-lcssa
  %.lcssa = phi i32 [ %i.ay, %stbtt__buf_get.exit21.loopexit.unr-lcssa ], [ %i.bb, %bb.h ], [ %.epil.init, %.lr.ph.i.epil.preheader ]
  %.0.i.i19.lcssa = phi i32 [ %.0.i.i19.1, %stbtt__buf_get.exit21.loopexit.unr-lcssa ], [ %i.bg, %bb.h ], [ %i.az, %.lr.ph.i.epil.preheader ]
  %i.bh = add i32 %.0.i.i19.lcssa, -1
  br label %stbtt__buf_get.exit21

stbtt__buf_get.exit21:                            ; preds = %stbtt__buf_get.exit21.loopexit, %stbtt__buf_get8.exit
  %i.bi = phi i32 [ %..i.i, %stbtt__buf_get8.exit ], [ %.lcssa, %stbtt__buf_get.exit21.loopexit ]
  %.05.lcssa.i = phi i32 [ -1, %stbtt__buf_get8.exit ], [ %i.bh, %stbtt__buf_get.exit21.loopexit ]
  %i.bj = add nsw i32 %.05.lcssa.i, %i.bi         ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 0
  %i.bl = tail call i32 @llvm.smin.i32(i32 %i.bj, i32 %i.d)
  %..i.i22 = select i1 %i.bk, i32 %i.d, i32 %i.bl ; 2 uses
  store i32 %..i.i22, ptr %i.a, align 8, !tbaa !526
  br label %bb.i

bb.i:                                             ; preds = %stbtt__buf_get.exit21, %stbtt__buf_get8.exit.i.1
  %i.bm = phi i32 [ %..i.i22, %stbtt__buf_get.exit21 ], [ %i.t, %stbtt__buf_get8.exit.i.1 ] ; 2 uses
  %i.bn = sub nsw i32 %i.bm, %i.b                 ; 2 uses
  %i.bo = or i32 %i.bn, %i.b
  %or.cond.not.i = icmp slt i32 %i.bo, 0
  %i.bp = icmp sgt i32 %i.bm, %i.d
  %or.cond = or i1 %or.cond.not.i, %i.bp
  br i1 %or.cond, label %stbtt__buf_range.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = load ptr, ptr %0, align 8, !tbaa !528
  %i.br = zext nneg i32 %i.b to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br
  %i.bt = zext nneg i32 %i.bn to i64
  %i.bu = shl nuw nsw i64 %i.bt, 32
  br label %stbtt__buf_range.exit

stbtt__buf_range.exit:                            ; preds = %bb.i, %bb.j
  %.sroa.0.0.i = phi ptr [ null, %bb.i ], [ %i.bs, %bb.j ]
  %.sroa.5.0.i = phi i64 [ 0, %bb.i ], [ %i.bu, %bb.j ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.5.0.i, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 -1, 65536) i32 @stbtt__GetGlyphClass(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #6 {
bb.a:
  %.val63 = load i8, ptr %0, align 1, !tbaa !11
  %i.a = getelementptr i8, ptr %0, i64 1
  %.val64 = load i8, ptr %i.a, align 1, !tbaa !11
  %i.b = zext i8 %.val63 to i16
  %i.c = shl nuw i16 %i.b, 8
  %i.d = zext i8 %.val64 to i16
  %i.e = or disjoint i16 %i.c, %i.d
  switch i16 %i.e, label %.thread [
    i16 1, label %bb.b
    i16 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.val61 = load i8, ptr %i.f, align 1, !tbaa !11
  %i.g = getelementptr i8, ptr %0, i64 3
  %.val62 = load i8, ptr %i.g, align 1, !tbaa !11
  %i.h = zext i8 %.val61 to i32
  %i.i = shl nuw nsw i32 %i.h, 8
  %i.j = zext i8 %.val62 to i32
  %i.k = or disjoint i32 %i.i, %i.j               ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.not49 = icmp slt i32 %1, %i.k
  br i1 %.not49, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val59 = load i8, ptr %i.m, align 1, !tbaa !11
  %i.n = zext i8 %.val59 to i32
  %i.o = shl nuw nsw i32 %i.n, 8
  %i.p = getelementptr i8, ptr %0, i64 5
  %.val60 = load i8, ptr %i.p, align 1, !tbaa !11
  %i.q = zext i8 %.val60 to i32
  %i.r = or disjoint i32 %i.o, %i.q
  %i.s = add nuw nsw i32 %i.r, %i.k
  %i.t = icmp samesign ult i32 %1, %i.s
  br i1 %i.t, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.u = sub nsw i32 %1, %i.k
  %i.v = shl nsw i32 %i.u, 1
  %2 = zext nneg i32 %i.v to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 %2 ; 2 uses
  %.val57 = load i8, ptr %i.w, align 1, !tbaa !11
  %i.x = getelementptr i8, ptr %i.w, i64 1
  %.val58 = load i8, ptr %i.x, align 1, !tbaa !11
  %i.y = zext i8 %.val57 to i32
  %i.z = shl nuw nsw i32 %i.y, 8
  %i.aa = zext i8 %.val58 to i32
  %i.ab = or disjoint i32 %i.z, %i.aa
  br label %.thread

bb.e:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.val55 = load i8, ptr %i.ac, align 1, !tbaa !11
  %i.ad = getelementptr i8, ptr %0, i64 3
  %.val56 = load i8, ptr %i.ad, align 1, !tbaa !11
  %i.ae = zext i8 %.val55 to i32
  %i.af = shl nuw nsw i32 %i.ae, 8
  %i.ag = zext i8 %.val56 to i32
  %i.ah = or disjoint i32 %i.af, %i.ag            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.not74 = icmp eq i32 %i.ah, 0
  br i1 %.not74, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.aj = add nsw i32 %i.ah, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %.076 = phi i32 [ %.2, %bb.i ], [ %i.aj, %.lr.ph.preheader ] ; 2 uses
  %.03775 = phi i32 [ %.239, %bb.i ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ak = add nsw i32 %.076, %.03775
  %i.al = ashr i32 %i.ak, 1                       ; 3 uses
  %i.am = mul nsw i32 %i.al, 6
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %i.ai, i64 %i.an ; 6 uses
  %.val53 = load i8, ptr %i.ao, align 1, !tbaa !11
  %i.ap = getelementptr i8, ptr %i.ao, i64 1
  %.val54 = load i8, ptr %i.ap, align 1, !tbaa !11
  %i.aq = zext i8 %.val53 to i32
  %i.ar = shl nuw nsw i32 %i.aq, 8
  %i.as = zext i8 %.val54 to i32
  %i.at = or disjoint i32 %i.ar, %i.as
  %i.au = icmp slt i32 %1, %i.at
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.av = add nsw i32 %i.al, -1
  br label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %.val51 = load i8, ptr %i.aw, align 1, !tbaa !11
  %i.ax = zext i8 %.val51 to i32
  %i.ay = shl nuw nsw i32 %i.ax, 8
  %i.az = getelementptr i8, ptr %i.ao, i64 3
  %.val52 = load i8, ptr %i.az, align 1, !tbaa !11
  %i.ba = zext i8 %.val52 to i32
  %i.bb = or disjoint i32 %i.ay, %i.ba
  %i.bc = icmp samesign ugt i32 %1, %i.bb
  br i1 %i.bc, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bd = add nsw i32 %i.al, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %.239 = phi i32 [ %i.bd, %bb.h ], [ %.03775, %bb.f ] ; 2 uses
  %.2 = phi i32 [ %.076, %bb.h ], [ %i.av, %bb.f ] ; 2 uses
  %.not = icmp sgt i32 %.239, %.2
  br i1 %.not, label %.thread, label %.lr.ph, !llvm.loop !1237

bb.j:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %.val = load i8, ptr %i.be, align 1, !tbaa !11
  %i.bf = getelementptr i8, ptr %i.ao, i64 5
  %.val50 = load i8, ptr %i.bf, align 1, !tbaa !11
  %i.bg = zext i8 %.val to i32
  %i.bh = shl nuw nsw i32 %i.bg, 8
  %i.bi = zext i8 %.val50 to i32
  %i.bj = or disjoint i32 %i.bh, %i.bi
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.e, %bb.b, %bb.c, %bb.j, %bb.d, %bb.a
  %.4 = phi i32 [ %i.bj, %bb.j ], [ -1, %bb.a ], [ %i.ab, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.i ]
  ret i32 %.4
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @stbtt__tesselate_curve(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef nonnull captures(none) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %9) unnamed_addr #41 {
bb.a:
  %i.a = icmp sgt i32 %9, 16
  br i1 %i.a, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = insertelement <2 x float> poison, float %4, i64 0
  %i.c = insertelement <2 x float> %i.b, float %5, i64 1 ; 2 uses
  %i.d = insertelement <2 x float> poison, float %2, i64 0
  %i.e = insertelement <2 x float> %i.d, float %3, i64 1 ; 2 uses
  %i.f = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.c, <2 x float> splat (float 2.000000e+00), <2 x float> %i.e)
  %i.g = insertelement <2 x float> poison, float %6, i64 0
  %i.h = insertelement <2 x float> %i.g, float %7, i64 1 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %tailrecurse
  %.tr5767 = phi i32 [ %i.aa, %tailrecurse ], [ %9, %.lr.ph.preheader ]
  %.tr5164 = phi float [ %i.p, %tailrecurse ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.tr5063 = phi float [ %i.t, %tailrecurse ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.i = phi <2 x float> [ %i.ae, %tailrecurse ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %i.j = phi <2 x float> [ %i.af, %tailrecurse ], [ %i.f, %.lr.ph.preheader ]
  %i.k = phi <2 x float> [ %i.m, %tailrecurse ], [ %i.e, %.lr.ph.preheader ]
  %i.l = fadd <2 x float> %i.h, %i.j
  %i.m = fmul <2 x float> %i.l, splat (float 2.500000e-01) ; 4 uses
  %i.n = fadd float %7, %.tr5164
  %i.o = fmul float %i.n, 5.000000e-01
  %i.p = extractelement <2 x float> %i.m, i64 1   ; 3 uses
  %i.q = fsub float %i.o, %i.p                    ; 2 uses
  %i.r = fadd float %6, %.tr5063
  %i.s = fmul float %i.r, 5.000000e-01
  %i.t = extractelement <2 x float> %i.m, i64 0   ; 3 uses
  %i.u = fsub float %i.s, %i.t                    ; 2 uses
  %i.v = fmul float %i.q, %i.q
  %i.w = tail call float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.v)
  %i.x = fcmp ogt float %i.w, %8
  br i1 %i.x, label %tailrecurse, label %bb.b

tailrecurse:                                      ; preds = %.lr.ph
  %i.y = fadd <2 x float> %i.k, %i.i
  %i.z = fmul <2 x float> %i.y, splat (float 5.000000e-01) ; 2 uses
  %i.aa = add nsw i32 %.tr5767, 1                 ; 3 uses
  %i.ab = extractelement <2 x float> %i.z, i64 0
  %i.ac = extractelement <2 x float> %i.z, i64 1
  tail call fastcc void @stbtt__tesselate_curve(ptr noundef %0, ptr noundef %1, float noundef %.tr5063, float noundef %.tr5164, float noundef %i.ab, float noundef %i.ac, float noundef %i.t, float noundef %i.p, float noundef %8, i32 noundef %i.aa)
  %i.ad = fadd <2 x float> %i.h, %i.i
  %i.ae = fmul <2 x float> %i.ad, splat (float 5.000000e-01) ; 2 uses
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> splat (float 2.000000e+00), <2 x float> %i.m)
  %exitcond = icmp eq i32 %i.aa, 17
  br i1 %exitcond, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.ag = load i32, ptr %1, align 4, !tbaa !10    ; 2 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %stbtt__add_point.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ah ; 2 uses
  store float %6, ptr %i.ai, align 4, !tbaa !428
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store float %7, ptr %i.aj, align 4, !tbaa !423
  br label %stbtt__add_point.exit

stbtt__add_point.exit:                            ; preds = %bb.b, %bb.c
  %i.ak = add nsw i32 %i.ag, 1
  store i32 %i.ak, ptr %1, align 4, !tbaa !10
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %stbtt__add_point.exit
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @stbtt__tesselate_cubic(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef nonnull captures(none) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, i32 noundef %11) unnamed_addr #41 {
bb.a:
  %smax = tail call i32 @llvm.smax.i32(i32 %11, i32 17)
  %exitcond108 = icmp sgt i32 %11, 16
  br i1 %exitcond108, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = insertelement <2 x float> poison, float %4, i64 0 ; 2 uses
  %i.b = insertelement <2 x float> %i.a, float %5, i64 1
  %i.c = insertelement <2 x float> poison, float %6, i64 0
  %i.d = insertelement <2 x float> %i.c, float %7, i64 1
  %i.e = insertelement <2 x float> poison, float %2, i64 0 ; 2 uses
  %i.f = insertelement <2 x float> %i.e, float %3, i64 1
  %i.g = insertelement <2 x float> poison, float %3, i64 0
  %i.h = insertelement <2 x float> %i.g, float %5, i64 1
  %i.i = insertelement <2 x float> poison, float %5, i64 0
  %i.j = insertelement <2 x float> %i.i, float %7, i64 1
  %i.k = insertelement <2 x float> %i.e, float %4, i64 1
  %i.l = insertelement <2 x float> %i.a, float %6, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %tailrecurse
  %.tr106115 = phi i32 [ %i.bi, %tailrecurse ], [ %11, %.lr.ph.preheader ]
  %.tr102114 = phi float [ %i.ay, %tailrecurse ], [ %7, %.lr.ph.preheader ] ; 2 uses
  %.tr101113 = phi float [ %i.az, %tailrecurse ], [ %6, %.lr.ph.preheader ] ; 2 uses
  %.tr98110 = phi float [ %i.bg, %tailrecurse ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.tr97109 = phi float [ %i.bh, %tailrecurse ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.m = phi <2 x float> [ %i.bn, %tailrecurse ], [ %i.l, %.lr.ph.preheader ]
  %i.n = phi <2 x float> [ %i.bo, %tailrecurse ], [ %i.k, %.lr.ph.preheader ]
  %i.o = phi <2 x float> [ %i.bp, %tailrecurse ], [ %i.j, %.lr.ph.preheader ]
  %i.p = phi <2 x float> [ %i.br, %tailrecurse ], [ %i.h, %.lr.ph.preheader ]
  %i.q = phi <2 x float> [ %i.bf, %tailrecurse ], [ %i.f, %.lr.ph.preheader ]
  %i.r = phi <2 x float> [ %i.bd, %tailrecurse ], [ %i.b, %.lr.ph.preheader ] ; 2 uses
  %i.s = phi <2 x float> [ %i.ax, %tailrecurse ], [ %i.d, %.lr.ph.preheader ]
  %i.t = fsub float %8, %.tr97109                 ; 2 uses
  %i.u = fsub float %9, %.tr98110                 ; 2 uses
  %i.v = fmul float %i.u, %i.u
  %i.w = tail call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.v)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.w) ; 2 uses
  %i.x = fsub float %8, %.tr101113                ; 2 uses
end_hunk_5
begin_hunk_6_@strlen

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 0, 2) i32 @stbtt__matchpair(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 1, 0) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef range(i32 1, 17) %4, i32 noundef range(i32 -1, 18) %5) unnamed_addr #6 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.val117 = load i8, ptr %i.c, align 1, !tbaa !11
  %i.d = getelementptr i8, ptr %i.b, i64 3
  %.val118 = load i8, ptr %i.d, align 1, !tbaa !11
  %i.e = zext i8 %.val117 to i32
  %i.f = shl nuw nsw i32 %i.e, 8
  %i.g = zext i8 %.val118 to i32
  %i.h = or disjoint i32 %i.f, %i.g               ; 2 uses
  %.not126 = icmp eq i32 %i.h, 0
  br i1 %.not126, label %.critedge91, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.val115 = load i8, ptr %i.i, align 1, !tbaa !11
  %i.j = zext i8 %.val115 to i32
  %i.k = shl nuw nsw i32 %i.j, 8
  %i.l = getelementptr i8, ptr %i.b, i64 5
  %.val116 = load i8, ptr %i.l, align 1, !tbaa !11
  %i.m = zext i8 %.val116 to i32
  %i.n = or disjoint i32 %i.k, %i.m
  %i.o = add i32 %i.n, %1
  %i.p = add i32 %1, 6
  %i.q = sext i32 %i.o to i64
  %i.r = getelementptr inbounds i8, ptr %0, i64 %i.q ; 2 uses
  %i.s = zext nneg i32 %i.h to i64                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %i.t = trunc i64 %indvars.iv to i32
  %i.u = mul i32 %i.t, 12
  %i.v = add i32 %i.p, %i.u
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w ; 24 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 6
  %.val113 = load i8, ptr %i.y, align 1, !tbaa !11
  %i.z = getelementptr i8, ptr %i.x, i64 7
  %.val114 = load i8, ptr %i.z, align 1, !tbaa !11
  %i.aa = zext i8 %.val113 to i32
  %i.ab = shl nuw nsw i32 %i.aa, 8
  %i.ac = zext i8 %.val114 to i32
  %i.ad = or disjoint i32 %i.ab, %i.ac
  %i.ae = icmp eq i32 %4, %i.ad
  br i1 %i.ae, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %.val111 = load i8, ptr %i.x, align 1, !tbaa !11
  %i.af = getelementptr i8, ptr %i.x, i64 1
  %.val112 = load i8, ptr %i.af, align 1, !tbaa !11
  %i.ag = zext i8 %.val111 to i16
  %i.ah = shl nuw i16 %i.ag, 8
  %i.ai = zext i8 %.val112 to i16
  %i.aj = or disjoint i16 %i.ah, %i.ai            ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %.val109 = load i8, ptr %i.ak, align 1, !tbaa !11
  %i.al = getelementptr i8, ptr %i.x, i64 3
  %.val110 = load i8, ptr %i.al, align 1, !tbaa !11
  %i.am = zext i8 %.val109 to i16
  %i.an = shl nuw i16 %i.am, 8
  %i.ao = zext i8 %.val110 to i16
  %i.ap = or disjoint i16 %i.an, %i.ao            ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.val107 = load i8, ptr %i.aq, align 1, !tbaa !11
  %i.ar = getelementptr i8, ptr %i.x, i64 5
  %.val108 = load i8, ptr %i.ar, align 1, !tbaa !11
  %i.as = zext i8 %.val107 to i16
  %i.at = shl nuw i16 %i.as, 8
  %i.au = zext i8 %.val108 to i16
  %i.av = or disjoint i16 %i.at, %i.au
  %i.aw = icmp eq i16 %i.aj, 0
  br i1 %i.aw, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = icmp eq i16 %i.aj, 3
  %i.ay = icmp eq i16 %i.ap, 1
  %i.az = icmp eq i16 %i.ap, 10
  %i.ba = or i1 %i.ay, %i.az
  %or.cond89 = select i1 %i.ax, i1 %i.ba, i1 false
  br i1 %or.cond89, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val105 = load i8, ptr %i.bb, align 1, !tbaa !11
  %i.bc = getelementptr i8, ptr %i.x, i64 9
  %.val106 = load i8, ptr %i.bc, align 1, !tbaa !11
  %i.bd = zext i8 %.val105 to i32
  %i.be = shl nuw nsw i32 %i.bd, 8
  %i.bf = zext i8 %.val106 to i32
  %i.bg = or disjoint i32 %i.be, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  %.val103 = load i8, ptr %i.bh, align 1, !tbaa !11
  %i.bi = getelementptr i8, ptr %i.x, i64 11
  %.val104 = load i8, ptr %i.bi, align 1, !tbaa !11
  %i.bj = zext i8 %.val103 to i64
  %i.bk = shl nuw nsw i64 %i.bj, 8
  %i.bl = zext i8 %.val104 to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bl
  %i.bo = tail call fastcc i32 @stbtt__CompareUTF8toUTF16_bigendian_prefix(ptr noundef %2, i32 noundef %3, ptr noundef %i.bn, i32 noundef %i.bg) ; 6 uses
  %i.bp = icmp sgt i32 %i.bo, -1
  br i1 %i.bp, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.bq = add nuw nsw i64 %indvars.iv, 1
  %i.br = icmp samesign ult i64 %i.bq, %i.s
  br i1 %i.br, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.bs = getelementptr inbounds nuw i8, ptr %i.x, i64 18
  %.val101 = load i8, ptr %i.bs, align 1, !tbaa !11
  %i.bt = getelementptr i8, ptr %i.x, i64 19
  %.val102 = load i8, ptr %i.bt, align 1, !tbaa !11
  %i.bu = zext i8 %.val101 to i32
  %i.bv = shl nuw nsw i32 %i.bu, 8
  %i.bw = zext i8 %.val102 to i32
  %i.bx = or disjoint i32 %i.bv, %i.bw
  %i.by = icmp eq i32 %5, %i.bx
  br i1 %i.by, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.bz = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %.val99 = load i8, ptr %i.bz, align 1, !tbaa !11
  %i.ca = getelementptr i8, ptr %i.x, i64 13
  %.val100 = load i8, ptr %i.ca, align 1, !tbaa !11
  %i.cb = zext i8 %.val99 to i16
  %i.cc = shl nuw i16 %i.cb, 8
  %i.cd = zext i8 %.val100 to i16
  %i.ce = or disjoint i16 %i.cc, %i.cd
  %i.cf = icmp eq i16 %i.ce, %i.aj
  br i1 %i.cf, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.cg = getelementptr inbounds nuw i8, ptr %i.x, i64 14
  %.val97 = load i8, ptr %i.cg, align 1, !tbaa !11
  %i.ch = getelementptr i8, ptr %i.x, i64 15
  %.val98 = load i8, ptr %i.ch, align 1, !tbaa !11
  %i.ci = zext i8 %.val97 to i16
  %i.cj = shl nuw i16 %i.ci, 8
  %i.ck = zext i8 %.val98 to i16
  %i.cl = or disjoint i16 %i.cj, %i.ck
  %i.cm = icmp eq i16 %i.cl, %i.ap
  br i1 %i.cm, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.val95 = load i8, ptr %i.cn, align 1, !tbaa !11
  %i.co = getelementptr i8, ptr %i.x, i64 17
  %.val96 = load i8, ptr %i.co, align 1, !tbaa !11
  %i.cp = zext i8 %.val95 to i16
  %i.cq = shl nuw i16 %i.cp, 8
  %i.cr = zext i8 %.val96 to i16
  %i.cs = or disjoint i16 %i.cq, %i.cr
  %i.ct = icmp eq i16 %i.cs, %i.av
  br i1 %i.ct, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.cu = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %.val93 = load i8, ptr %i.cu, align 1, !tbaa !11
  %i.cv = getelementptr i8, ptr %i.x, i64 21
  %.val94 = load i8, ptr %i.cv, align 1, !tbaa !11
  %i.cw = zext i8 %.val93 to i16
  %i.cx = shl nuw i16 %i.cw, 8
  %i.cy = zext i8 %.val94 to i16
  %i.cz = or disjoint i16 %i.cx, %i.cy            ; 2 uses
  %i.da = zext i16 %i.cz to i32
  %i.db = getelementptr inbounds nuw i8, ptr %i.x, i64 22
  %.val = load i8, ptr %i.db, align 1, !tbaa !11
  %i.dc = getelementptr i8, ptr %i.x, i64 23
  %.val92 = load i8, ptr %i.dc, align 1, !tbaa !11
  %i.dd = zext i8 %.val to i64
  %i.de = shl nuw nsw i64 %i.dd, 8
  %i.df = zext i8 %.val92 to i64
  %i.dg = icmp eq i16 %i.cz, 0
  br i1 %i.dg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dh = icmp eq i32 %i.bo, %3
  br i1 %i.dh, label %.critedge91, label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.di = icmp slt i32 %i.bo, %3
  br i1 %i.di, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.dj = zext nneg i32 %i.bo to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !11
  %i.dm = icmp eq i8 %i.dl, 32
  br i1 %i.dm, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.dn = add nuw nsw i32 %i.bo, 1                ; 2 uses
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 %i.do
  %i.dq = sub nuw nsw i32 %3, %i.dn               ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.de
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.df
  %i.dt = tail call fastcc i32 @stbtt__CompareUTF8toUTF16_bigendian_prefix(ptr noundef nonnull readonly %i.dp, i32 noundef %i.dq, ptr noundef readonly %i.ds, i32 noundef %i.da)
  %.not = icmp eq i32 %i.dq, %i.dt
  br i1 %.not, label %.critedge91, label %.critedge

bb.p:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %i.du = icmp eq i32 %i.bo, %3
  br i1 %i.du, label %.critedge91, label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.m, %bb.n, %bb.o, %bb.l, %bb.p, %bb.e, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.s
  br i1 %exitcond.not, label %.critedge91, label %bb.b, !llvm.loop !1239

.critedge91:                                      ; preds = %.critedge, %bb.l, %bb.o, %bb.p, %bb.a
  %.6 = phi i32 [ 0, %bb.a ], [ 1, %bb.l ], [ 1, %bb.o ], [ 1, %bb.p ], [ 0, %.critedge ]
  ret i32 %.6
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 -2147483647, -2147483648) i32 @stbtt__CompareUTF8toUTF16_bigendian_prefix(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) unnamed_addr #6 {
bb.a:
  %.not97 = icmp eq i32 %3, 0
  br i1 %.not97, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.s
  %.064100 = phi i32 [ %.2, %bb.s ], [ 0, %bb.a ] ; 12 uses
  %.06699 = phi i32 [ %i.ck, %bb.s ], [ %3, %bb.a ] ; 4 uses
  %.07098 = phi ptr [ %i.cj, %bb.s ], [ %2, %bb.a ] ; 7 uses
  %i.a = load i8, ptr %.07098, align 1, !tbaa !11 ; 3 uses
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %.07098, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !11
  %i.f = zext i8 %i.e to i32                      ; 3 uses
  %i.g = or disjoint i32 %i.c, %i.f               ; 5 uses
  %i.h = icmp samesign ult i32 %i.g, 128
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %.not93 = icmp slt i32 %.064100, %1
  br i1 %.not93, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i32 %.064100, 1
  %i.j = sext i32 %.064100 to i64
  %i.k = getelementptr inbounds i8, ptr %0, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !11
  %i.m = zext i8 %i.l to i32
  %.not94 = icmp eq i32 %i.g, %i.m
  br i1 %.not94, label %bb.s, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.n = icmp ult i8 %i.a, 8
  br i1 %i.n, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %.064100, 1                  ; 2 uses
  %.not90 = icmp slt i32 %i.o, %1
  br i1 %.not90, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.p = sext i32 %.064100 to i64
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !11
  %i.s = zext i8 %i.r to i32
  %i.t = lshr i32 %i.g, 6
  %i.u = or disjoint i32 %i.t, 192
  %.not91 = icmp eq i32 %i.u, %i.s
  br i1 %.not91, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %.064100, 2
  %i.w = sext i32 %i.o to i64
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !11
  %i.z = zext i8 %i.y to i32
  %i.aa = and i32 %i.f, 63
  %i.ab = or disjoint i32 %i.aa, 128
  %.not92 = icmp eq i32 %i.ab, %i.z
  br i1 %.not92, label %bb.s, label %.critedge

bb.h:                                             ; preds = %bb.d
  %i.ac = and i8 %i.a, -4                         ; 2 uses
  %or.cond = icmp eq i8 %i.ac, -40
  br i1 %or.cond, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %.07098, i64 2 ; 2 uses
  %i.ae = add nsw i32 %.064100, 3                 ; 2 uses
  %.not85 = icmp slt i32 %i.ae, %1
  br i1 %.not85, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.07098, i64 3
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !11
  %i.ah = load i8, ptr %i.ad, align 1, !tbaa !11
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 8
  %i.ak = zext i8 %i.ag to i32                    ; 2 uses
  %i.al = or disjoint i32 %i.aj, %i.ak
  %i.am = shl nuw nsw i32 %i.g, 10
  %i.an = add nsw i32 %i.am, -56613888
  %i.ao = add nuw nsw i32 %i.an, %i.al            ; 3 uses
  %i.ap = sext i32 %.064100 to i64
  %i.aq = getelementptr i8, ptr %0, i64 %i.ap     ; 3 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !11
  %i.as = zext i8 %i.ar to i32
  %i.at = lshr i32 %i.ao, 18
  %i.au = add nuw nsw i32 %i.at, 240
  %.not86 = icmp eq i32 %i.au, %i.as
  br i1 %.not86, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr i8, ptr %i.aq, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !11
  %i.ax = zext i8 %i.aw to i32
  %i.ay = lshr i32 %i.ao, 12
  %i.az = and i32 %i.ay, 63
  %i.ba = or disjoint i32 %i.az, 128
  %.not87 = icmp eq i32 %i.ba, %i.ax
  br i1 %.not87, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr i8, ptr %i.aq, i64 2
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !11
  %i.bd = zext i8 %i.bc to i32
  %i.be = lshr i32 %i.ao, 6
  %i.bf = and i32 %i.be, 63
  %i.bg = or disjoint i32 %i.bf, 128
  %.not88 = icmp eq i32 %i.bg, %i.bd
  br i1 %.not88, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.bh = sext i32 %i.ae to i64
  %i.bi = getelementptr inbounds i8, ptr %0, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !11
  %i.bk = zext i8 %i.bj to i32
  %i.bl = and i32 %i.ak, 63
  %i.bm = or disjoint i32 %i.bl, 128
  %.not89 = icmp eq i32 %i.bm, %i.bk
  br i1 %.not89, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.bn = add nsw i32 %.064100, 4
  %i.bo = add nsw i32 %.06699, -2
  br label %bb.s

bb.o:                                             ; preds = %bb.h
  %or.cond6 = icmp ne i8 %i.ac, -36
  %i.bp = add nsw i32 %.064100, 2                 ; 2 uses
  %.not81 = icmp slt i32 %i.bp, %1
  %or.cond96 = select i1 %or.cond6, i1 %.not81, i1 false
  br i1 %or.cond96, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.bq = sext i32 %.064100 to i64
  %i.br = getelementptr i8, ptr %0, i64 %i.bq     ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !11
  %i.bt = zext i8 %i.bs to i32
  %i.bu = lshr i32 %i.b, 4
  %i.bv = or disjoint i32 %i.bu, 224
  %.not82 = icmp eq i32 %i.bv, %i.bt
  br i1 %.not82, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr i8, ptr %i.br, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !11
  %i.by = zext i8 %i.bx to i32
  %i.bz = lshr i32 %i.g, 6
  %i.ca = and i32 %i.bz, 63
  %i.cb = or disjoint i32 %i.ca, 128
  %.not83 = icmp eq i32 %i.cb, %i.by
  br i1 %.not83, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.cc = add nsw i32 %.064100, 3
  %i.cd = sext i32 %i.bp to i64
  %i.ce = getelementptr inbounds i8, ptr %0, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !11
  %i.cg = zext i8 %i.cf to i32
  %i.ch = and i32 %i.f, 63
  %i.ci = or disjoint i32 %i.ch, 128
  %.not84 = icmp eq i32 %i.ci, %i.cg
  br i1 %.not84, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.n, %bb.g, %bb.r, %bb.c
  %.272 = phi ptr [ %.07098, %bb.c ], [ %.07098, %bb.g ], [ %i.ad, %bb.n ], [ %.07098, %bb.r ]
  %.268 = phi i32 [ %.06699, %bb.c ], [ %.06699, %bb.g ], [ %i.bo, %bb.n ], [ %.06699, %bb.r ]
  %.2 = phi i32 [ %i.i, %bb.c ], [ %i.v, %bb.g ], [ %i.bn, %bb.n ], [ %i.cc, %bb.r ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.272, i64 2
  %i.ck = add nsw i32 %.268, -2                   ; 2 uses
  %.not = icmp eq i32 %i.ck, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !1240

.critedge:                                        ; preds = %bb.s, %bb.r, %bb.p, %bb.o, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b, %bb.q, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ -1, %bb.r ], [ -1, %bb.p ], [ -1, %bb.o ], [ -1, %bb.m ], [ -1, %bb.g ], [ -1, %bb.f ], [ -1, %bb.q ], [ -1, %bb.e ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.l ], [ -1, %bb.k ], [ -1, %bb.j ], [ -1, %bb.i ], [ %.2, %bb.s ]
  ret i32 %.4
}
end_hunk_6
