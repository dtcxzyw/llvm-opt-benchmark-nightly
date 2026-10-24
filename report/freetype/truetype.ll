Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/truetype?download=true
inline.NumInlined: 310
inline.NumDeleted: 164
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 49
begin_hunk_0_@Round_To_Double_Grid
define internal range(i64 -9223372036854775808, 9223372036854775777) i64 @Round_To_Double_Grid(ptr nofree readnone captures(none) %0, i64 noundef %1, i64 noundef %2) #1 {
bb.a:
  %i.a = icmp sgt i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw i64 %1, 16
  %i.c = add i64 %i.b, %2
  %i.d = tail call i64 @llvm.smax.i64(i64 %i.c, i64 0)
  %spec.store.select = and i64 %i.d, 9223372036854775776
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %reass.sub = sub i64 %2, %1
  %i.e = add i64 %reass.sub, 16
  %i.f = and i64 %i.e, -32
  %i.g = sub i64 0, %i.f
  %spec.store.select1 = tail call i64 @llvm.smin.i64(i64 %i.g, i64 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %spec.store.select, %bb.b ], [ %spec.store.select1, %bb.c ]
  ret i64 %.0
}

declare hidden i64 @FT_MulDiv_No_Round(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @Round_None(ptr nofree readnone captures(none) %0, i64 noundef %1, i64 noundef %2) #1 {
bb.a:
  %i.a = icmp sgt i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %2, %1
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %i.b, i64 0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = sub i64 %1, %2
  %spec.store.select1 = tail call i64 @llvm.smin.i64(i64 %i.c, i64 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %spec.store.select, %bb.b ], [ %spec.store.select1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @Round_Super(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) #10 {
bb.a:
  %i.a = icmp sgt i64 %1, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.c = load i64, ptr %i.b, align 8, !tbaa !310  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.e = load i64, ptr %i.d, align 8, !tbaa !309  ; 6 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %2, %1
  %i.g = add i64 %i.f, %i.c
  %i.h = sub i64 %i.g, %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.j = load i64, ptr %i.i, align 8, !tbaa !308
  %i.k = sub nsw i64 0, %i.j
  %i.l = and i64 %i.h, %i.k
  %i.m = add i64 %i.l, %i.e                       ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  %spec.select = select i1 %i.n, i64 %i.e, i64 %i.m
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = sub i64 0, %i.e
  %i.p = add i64 %2, %i.c
  %i.q = add i64 %1, %i.e
  %i.r = sub i64 %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.t = load i64, ptr %i.s, align 8, !tbaa !308
  %i.u = sub nsw i64 0, %i.t
  %i.v = and i64 %i.r, %i.u
  %i.w = add i64 %i.e, %i.v
  %i.x = sub i64 0, %i.w                          ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  %spec.select22 = select i1 %i.y, i64 %i.o, i64 %i.x
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %spec.select, %bb.b ], [ %spec.select22, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @Round_Super_45(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) #10 {
bb.a:
  %i.a = icmp sgt i64 %1, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.c = load i64, ptr %i.b, align 8, !tbaa !310  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.e = load i64, ptr %i.d, align 8, !tbaa !309  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.g = load i64, ptr %i.f, align 8, !tbaa !308  ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = sub nsw i64 %i.c, %i.e
  %.fr26 = freeze i64 %i.h
  %i.i = add i64 %2, %1
  %i.j = add i64 %i.i, %.fr26                     ; 2 uses
  %i.k = srem i64 %i.j, %i.g
  %i.l = sub nsw i64 %i.j, %i.k
  %i.m = add i64 %i.l, %i.e                       ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  %spec.select = select i1 %i.n, i64 %i.e, i64 %i.m
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = sub i64 0, %i.e
  %i.p = add i64 %2, %i.c
  %i.q = add i64 %1, %i.e
  %i.r = sub i64 %i.p, %i.q
  %.fr = freeze i64 %i.r                          ; 2 uses
  %i.s = srem i64 %.fr, %i.g
  %i.t = add i64 %.fr, %i.e
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = icmp sgt i64 %i.u, 0
  %spec.select27 = select i1 %i.v, i64 %i.o, i64 %i.u
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %spec.select, %bb.b ], [ %spec.select27, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal range(i64 -9223372036854775808, 9223372036854775745) i64 @Round_Up_To_Grid(ptr nofree readnone captures(none) %0, i64 noundef %1, i64 noundef %2) #1 {
bb.a:
  %i.a = icmp sgt i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw i64 %1, 63
  %i.c = add i64 %i.b, %2
  %i.d = tail call i64 @llvm.smax.i64(i64 %i.c, i64 0)
  %spec.store.select = and i64 %i.d, 9223372036854775744
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %reass.sub = sub i64 %2, %1
  %i.e = add i64 %reass.sub, 63
  %i.f = and i64 %i.e, -64
  %i.g = sub i64 0, %i.f
  %spec.store.select1 = tail call i64 @llvm.smin.i64(i64 %i.g, i64 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %spec.store.select, %bb.b ], [ %spec.store.select1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal range(i64 -9223372036854775808, 9223372036854775745) i64 @Round_Down_To_Grid(ptr nofree readnone captures(none) %0, i64 noundef %1, i64 noundef %2) #1 {
bb.a:
  %i.a = icmp sgt i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %2, %1
  %i.c = tail call i64 @llvm.smax.i64(i64 %i.b, i64 0)
  %spec.store.select = and i64 %i.c, 9223372036854775744
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = sub i64 %2, %1
  %i.e = and i64 %i.d, -64
  %i.f = sub i64 0, %i.e
  %spec.store.select1 = tail call i64 @llvm.smin.i64(i64 %i.f, i64 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %spec.store.select, %bb.b ], [ %spec.store.select1, %bb.c ]
  ret i64 %.0
}

declare hidden ptr @FT_Get_Module_Interface(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc zeroext range(i8 0, 2) i8 @tt_check_trickyness(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [31 x i32], align 16              ; 14 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %tt_check_trickyness_family.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !885  ; 10 uses
  %.not6 = icmp eq ptr %i.c, null
  br i1 %.not6, label %bb.ad, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !186
  %1 = add i8 %i.d, -65
  %i.e = icmp ult i8 %1, 26
  br i1 %i.e, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !186
  %2 = add i8 %i.g, -65
  %i.h = icmp ult i8 %2, 26
  br i1 %i.h, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !186
  %3 = add i8 %i.j, -65
  %i.k = icmp ult i8 %3, 26
  br i1 %i.k, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !186
  %4 = add i8 %i.m, -65
  %i.n = icmp ult i8 %4, 26
  br i1 %i.n, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.p = load i8, ptr %i.o, align 1, !tbaa !186
  %5 = add i8 %i.p, -65
  %i.q = icmp ult i8 %5, 26
  br i1 %i.q, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.s = load i8, ptr %i.r, align 1, !tbaa !186
  %6 = add i8 %i.s, -65
  %i.t = icmp ult i8 %6, 26
  br i1 %i.t, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.v = load i8, ptr %i.u, align 1, !tbaa !186
  %i.w = icmp eq i8 %i.v, 43
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 7 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !186
  %.not.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i, label %bb.k, label %tt_skip_pdffont_random_tag.exit.i

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  br label %tt_skip_pdffont_random_tag.exit.i

tt_skip_pdffont_random_tag.exit.i:                ; preds = %bb.k, %bb.j
  %.0.i.i = phi ptr [ %i.c, %bb.k ], [ %i.x, %bb.j ] ; 20 uses
  %i.z = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i.i, ptr noundef nonnull dereferenceable(1) @tt_check_trickyness_family.trick_names) #22
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bb.l, label %tt_check_trickyness_family.exit.thread

bb.l:                                             ; preds = %tt_skip_pdffont_random_tag.exit.i
  %i.aa = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 20)) #22
  %.not.1.i = icmp eq ptr %i.aa, null
  br i1 %.not.1.i, label %bb.m, label %tt_check_trickyness_family.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ab = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 40)) #22
  %.not.2.i = icmp eq ptr %i.ab, null
  br i1 %.not.2.i, label %bb.n, label %tt_check_trickyness_family.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ac = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 60)) #22
  %.not.3.i = icmp eq ptr %i.ac, null
  br i1 %.not.3.i, label %bb.o, label %tt_check_trickyness_family.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ad = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 80)) #22
  %.not.4.i = icmp eq ptr %i.ad, null
  br i1 %.not.4.i, label %bb.p, label %tt_check_trickyness_family.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.ae = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 100)) #22
  %.not.5.i = icmp eq ptr %i.ae, null
  br i1 %.not.5.i, label %bb.q, label %tt_check_trickyness_family.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 120)) #22
  %.not.6.i = icmp eq ptr %i.af, null
  br i1 %.not.6.i, label %bb.r, label %tt_check_trickyness_family.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.ag = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 140)) #22
  %.not.7.i = icmp eq ptr %i.ag, null
  br i1 %.not.7.i, label %bb.s, label %tt_check_trickyness_family.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.ah = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 160)) #22
  %.not.8.i = icmp eq ptr %i.ah, null
  br i1 %.not.8.i, label %bb.t, label %tt_check_trickyness_family.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.ai = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 180)) #22
  %.not.9.i = icmp eq ptr %i.ai, null
  br i1 %.not.9.i, label %bb.u, label %tt_check_trickyness_family.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.aj = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 200)) #22
  %.not.10.i = icmp eq ptr %i.aj, null
  br i1 %.not.10.i, label %bb.v, label %tt_check_trickyness_family.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.ak = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 220)) #22
  %.not.11.i = icmp eq ptr %i.ak, null
  br i1 %.not.11.i, label %bb.w, label %tt_check_trickyness_family.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.al = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 240)) #22
  %.not.12.i = icmp eq ptr %i.al, null
  br i1 %.not.12.i, label %bb.x, label %tt_check_trickyness_family.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.am = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 260)) #22
  %.not.13.i = icmp eq ptr %i.am, null
  br i1 %.not.13.i, label %bb.y, label %tt_check_trickyness_family.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.an = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 280)) #22
  %.not.14.i = icmp eq ptr %i.an, null
  br i1 %.not.14.i, label %bb.z, label %tt_check_trickyness_family.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.ao = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 300)) #22
  %.not.15.i = icmp eq ptr %i.ao, null
  br i1 %.not.15.i, label %bb.aa, label %tt_check_trickyness_family.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.ap = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 320)) #22
  %.not.16.i = icmp eq ptr %i.ap, null
  br i1 %.not.16.i, label %bb.ab, label %tt_check_trickyness_family.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.aq = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 340)) #22
  %.not.17.i = icmp eq ptr %i.aq, null
  br i1 %.not.17.i, label %bb.ac, label %tt_check_trickyness_family.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.ar = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 360)) #22
  %.not.18.i = icmp eq ptr %i.ar, null
  br i1 %.not.18.i, label %tt_check_trickyness_family.exit, label %tt_check_trickyness_family.exit.thread

tt_check_trickyness_family.exit:                  ; preds = %bb.ac
  %i.as = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 380)) #22
  %.not.19.i.not = icmp eq ptr %i.as, null
  br i1 %.not.19.i.not, label %bb.ad, label %tt_check_trickyness_family.exit.thread

bb.ad:                                            ; preds = %tt_check_trickyness_family.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(124) %i.a, i8 0, i64 124, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.au = load i16, ptr %i.at, align 8, !tbaa !473 ; 2 uses
  %.not62.i = icmp eq i16 %i.au, 0
  br i1 %.not62.i, label %.preheader.split.i.preheader, label %.lr.ph.i

.preheader.split.i.preheader:                     ; preds = %.preheader.i, %bb.ad
  br label %.preheader.split.i

.lr.ph.i:                                         ; preds = %bb.ad
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  br label %bb.ae

.preheader.i:                                     ; preds = %.loopexit51.i
  %i.ay = icmp eq i8 %.240.i, 0
  br i1 %i.ay, label %.preheader.split.i.preheader, label %tt_check_trickyness_sfnt_ids.exit

bb.ae:                                            ; preds = %.loopexit51.i, %.lr.ph.i
  %i.az = phi i16 [ %i.au, %.lr.ph.i ], [ %i.ek, %.loopexit51.i ]
  %indvars.iv70.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next71.i, %.loopexit51.i ] ; 4 uses
  %.03859.i = phi i8 [ 0, %.lr.ph.i ], [ %.240.i, %.loopexit51.i ] ; 3 uses
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !474
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %indvars.iv70.i
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !886
  switch i64 %i.bc, label %.loopexit51.i [
    i64 1668707360, label %bb.ah
    i64 1718642541, label %bb.af
    i64 1886545264, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %.139.i = phi i8 [ %.03859.i, %bb.ag ], [ %.03859.i, %bb.af ], [ 1, %bb.ae ]
  %.0.i = phi i64 [ 2, %bb.ag ], [ 1, %bb.af ], [ 0, %bb.ae ]
  %invariant.gep.i = getelementptr inbounds nuw [16 x i8], ptr @tt_check_trickyness_sfnt_ids.sfnt_id, i64 %.0.i
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ap, %bb.ah
  %indvars.iv.i = phi i64 [ 0, %bb.ah ], [ %indvars.iv.next.i, %bb.ap ] ; 3 uses
  %.04157.i = phi i64 [ 0, %bb.ah ], [ %.243.i, %bb.ap ] ; 3 uses
  %i.bd = load ptr, ptr %i.av, align 8, !tbaa !474
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.bd, i64 %indvars.iv70.i ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !887
  %gep.i = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !889
  %i.bj = icmp eq i64 %i.bg, %i.bi
  br i1 %i.bj, label %bb.aj, label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  %.not50.i = icmp eq i64 %.04157.i, 0
  br i1 %.not50.i, label %bb.ak, label %tt_get_sfnt_checksum.exit.i

bb.ak:                                            ; preds = %bb.aj
  %i.bk = load ptr, ptr %i.aw, align 8, !tbaa !323 ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i10, label %tt_get_sfnt_checksum.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bl = load i64, ptr %i.be, align 8, !tbaa !886
  %i.bm = load ptr, ptr %i.ax, align 8, !tbaa !69
  %i.bn = tail call i32 %i.bk(ptr noundef nonnull %0, i64 noundef %i.bl, ptr noundef %i.bm, ptr noundef null) #21, !inline_history !878
  %.not10.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not10.i.i, label %bb.am, label %tt_get_sfnt_checksum.exit.i

bb.am:                                            ; preds = %bb.al
  %i.bo = load ptr, ptr %i.ax, align 8, !tbaa !69 ; 3 uses
  %i.bp = load ptr, ptr %i.av, align 8, !tbaa !474
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.bp, i64 %indvars.iv70.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !887 ; 6 uses
  %i.bt = tail call i32 @FT_Stream_EnterFrame(ptr noundef %i.bo, i64 noundef %i.bs) #21
end_hunk_0
