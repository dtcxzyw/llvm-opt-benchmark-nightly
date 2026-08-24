Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
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
end_hunk_1
begin_hunk_2_@strlen

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
end_hunk_2
