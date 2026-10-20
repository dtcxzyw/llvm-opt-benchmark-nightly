Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pg_locale?download=true
inline.NumInlined: 54
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@pg_downcase_ident:bb.a
  %i.ab = add <16 x i8> %wide.load, splat (i8 -65)
  %i.ac = add <16 x i8> %wide.load27, splat (i8 -65)
  %i.ad = icmp ult <16 x i8> %i.ab, splat (i8 26)
  %i.ae = icmp ult <16 x i8> %i.ac, splat (i8 26)
  %i.af = or disjoint <16 x i8> %wide.load, splat (i8 32)
  %i.ag = or disjoint <16 x i8> %wide.load27, splat (i8 32)
  %i.ah = select <16 x i1> %i.ad, <16 x i8> %i.af, <16 x i8> %wide.load
  %i.ai = select <16 x i1> %i.ae, <16 x i8> %i.ag, <16 x i8> %wide.load27
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <16 x i8> %i.ah, ptr %i.aj, align 1
  store <16 x i8> %i.ai, ptr %i.ak, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 32)
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %i.am = add <16 x i32> %vec.ind, splat (i32 17)
  %i.an = sext <16 x i32> %i.am to <16 x i64>
  %i.ao = icmp ugt <16 x i64> %broadcast.splat, %i.an
  %i.ap = extractelement <16 x i1> %i.ao, i64 15
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !10

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %i.y, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec28 = and i64 %i.p, -4                     ; 5 uses
  %i.aq = trunc i64 %n.vec28 to i32
  %broadcast.splatinsert29 = insertelement <4 x i64> poison, i64 %1, i64 0
  %broadcast.splat30 = shufflevector <4 x i64> %broadcast.splatinsert29, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert31 = insertelement <4 x i32> poison, i32 %bc.resume.val, i64 0
  %broadcast.splat32 = shufflevector <4 x i32> %broadcast.splatinsert31, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat32, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 3 uses
  %vec.ind34 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next37, %vec.epilog.vector.body ] ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %2, i64 %index33
  %wide.load35 = load <4 x i8>, ptr %i.ar, align 1 ; 3 uses
  %i.as = add <4 x i8> %wide.load35, splat (i8 -65)
  %i.at = icmp ult <4 x i8> %i.as, splat (i8 26)
  %i.au = or disjoint <4 x i8> %wide.load35, splat (i8 32)
  %i.av = select <4 x i1> %i.at, <4 x i8> %i.au, <4 x i8> %wide.load35
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %index33
  store <4 x i8> %i.av, ptr %i.aw, align 1
  %index.next36 = add nuw i64 %index33, 4         ; 2 uses
  %vec.ind.next37 = add <4 x i32> %vec.ind34, splat (i32 4)
  %i.ax = icmp eq i64 %index.next36, %n.vec28
  br i1 %i.ax, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !26

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ay = add <4 x i32> %vec.ind34, splat (i32 1)
  %i.az = sext <4 x i32> %i.ay to <4 x i64>
  %i.ba = icmp ugt <4 x i64> %broadcast.splat30, %i.az
  %i.bb = extractelement <4 x i1> %i.ba, i64 3
  %cmp.n38 = icmp eq i64 %i.p, %n.vec28
  br i1 %cmp.n38, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.scevcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec28, %vec.epilog.middle.block ]
  %.015.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %iter.check ], [ %i.y, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.bc = phi i64 [ %i.bj, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.015.i = phi i32 [ %i.bi, %.lr.ph.i ], [ %.015.i.ph, %.lr.ph.i.preheader ]
  %i.bd = getelementptr inbounds i8, ptr %2, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1             ; 3 uses
  %i.bf = add i8 %i.be, -65
  %or.cond.i.i = icmp ult i8 %i.bf, 26
  %i.bg = or disjoint i8 %i.be, 32
  %spec.select.i.i = select i1 %or.cond.i.i, i8 %i.bg, i8 %i.be
  %i.bh = getelementptr inbounds i8, ptr %0, i64 %i.bc
  store i8 %spec.select.i.i, ptr %i.bh, align 1
  %i.bi = add i32 %.015.i, 1                      ; 2 uses
  %i.bj = sext i32 %i.bi to i64                   ; 4 uses
  %i.bk = icmp ugt i64 %3, %i.bj
  %i.bl = icmp ugt i64 %1, %i.bj                  ; 2 uses
  %i.bm = and i1 %i.bk, %i.bl
  br i1 %i.bm, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !27

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.d
  %.lcssa14.i = phi i64 [ 0, %bb.d ], [ %n.vec28, %vec.epilog.middle.block ], [ %n.vec, %middle.block ], [ %i.bj, %.lr.ph.i ]
  %.lcssa.i = phi i1 [ %i.l, %bb.d ], [ %i.bb, %vec.epilog.middle.block ], [ %i.ap, %middle.block ], [ %i.bl, %.lr.ph.i ]
  br i1 %.lcssa.i, label %bb.e, label %strlower_c.exit

bb.e:                                             ; preds = %._crit_edge.i
  %i.bn = getelementptr inbounds i8, ptr %0, i64 %.lcssa14.i
  store i8 0, ptr %i.bn, align 1
  br label %strlower_c.exit

bb.f:                                             ; preds = %bb.c
  %i.bo = tail call i64 %i.i(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %i.c) #19
  br label %strlower_c.exit

strlower_c.exit:                                  ; preds = %bb.e, %._crit_edge.i, %bb.f
  %.0 = phi i64 [ %i.bo, %bb.f ], [ %3, %._crit_edge.i ], [ %3, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @pg_strcoll(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 %i.d(ptr noundef %0, ptr noundef %1, ptr noundef %2) #19
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local i32 @pg_strncoll(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 %i.c(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #19
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i1 @pg_strxfrm_enabled(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !6, !noundef !7
  %i.e = trunc nuw i8 %i.d to i1
  ret i1 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local i64 @pg_strxfrm(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i64 %i.d(ptr noundef %0, i64 noundef %2, ptr noundef %1, ptr noundef %3) #19
  ret i64 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local i64 @pg_strnxfrm(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i64 %i.d(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #19
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i1 @pg_strxfrm_prefix_enabled(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp ne ptr %i.d, null
  ret i1 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local i64 @pg_strxfrm_prefix(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i64 %i.d(ptr noundef %0, i64 noundef %2, ptr noundef %1, ptr noundef %3) #19
  ret i64 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local i64 @pg_strnxfrm_prefix(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i64 %i.d(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #19
  ret i64 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @pg_iswdigit(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %2 = add i32 %0, -48
  %3 = icmp ult i32 %2, 10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call zeroext i1 %i.e(i32 noundef %0, ptr noundef nonnull %1) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %3, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @pg_iswalpha(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i32 %0, 128
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = zext nneg i32 %0 to i64
  %i.f = getelementptr inbounds nuw i8, ptr @pg_char_properties, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1
  %i.h = and i8 %i.g, 2
  %i.i = icmp ne i8 %i.h, 0
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call zeroext i1 %i.k(i32 noundef %0, ptr noundef nonnull %1) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi i1 [ %i.l, %bb.d ], [ false, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @pg_iswalnum(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i32 %0, 128
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = zext nneg i32 %0 to i64
  %i.f = getelementptr inbounds nuw i8, ptr @pg_char_properties, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1
  %i.h = and i8 %i.g, 3
  %i.i = icmp ne i8 %i.h, 0
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call zeroext i1 %i.k(i32 noundef %0, ptr noundef nonnull %1) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi i1 [ %i.l, %bb.d ], [ false, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @pg_iswupper(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %0, -65
  %i.e = icmp ult i32 %i.d, 26
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call zeroext i1 %i.g(i32 noundef %0, ptr noundef nonnull %1) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.e, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @pg_iswlower(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %0, -97
  %i.e = icmp ult i32 %i.d, 26
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call zeroext i1 %i.g(i32 noundef %0, ptr noundef nonnull %1) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.e, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @pg_iswgraph(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %0, -33
  %i.e = icmp ult i32 %i.d, 94
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call zeroext i1 %i.g(i32 noundef %0, ptr noundef nonnull %1) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.e, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @pg_iswprint(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %0, -32
  %i.e = icmp ult i32 %i.d, 95
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call zeroext i1 %i.g(i32 noundef %0, ptr noundef nonnull %1) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.e, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @pg_iswpunct(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i32 %0, 128
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = zext nneg i32 %0 to i64
  %i.f = getelementptr inbounds nuw i8, ptr @pg_char_properties, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1
  %i.h = and i8 %i.g, 64
  %i.i = icmp ne i8 %i.h, 0
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call zeroext i1 %i.k(i32 noundef %0, ptr noundef nonnull %1) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi i1 [ %i.l, %bb.d ], [ false, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @pg_iswspace(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.d

end_hunk_0
