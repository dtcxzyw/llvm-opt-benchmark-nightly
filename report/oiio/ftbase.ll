inline.NumInlined: 362
inline.NumDeleted: 35
begin_hunk_0_@FT_Request_Metrics:bb.a
  %i.fn = sext i16 %i.fm to i64
  %sext2.i17.i = shl i64 %i.ds, 32
  %i.fo = ashr exact i64 %sext2.i17.i, 32
  %i.fp = mul nsw i64 %i.fo, %i.fn                ; 2 uses
  %i.fq = ashr i64 %i.fp, 63
  %i.fr = add nsw i64 %i.fp, 32768
  %i.fs = add nsw i64 %i.fr, %i.fq
  %i.ft = ashr i64 %i.fs, 16
  %i.fu = add nsw i64 %i.ft, 32
  %i.fv = and i64 %i.fu, -64
  br label %.sink.split

bb.z:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i8 0, i64 56, i1 false)
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 65536, ptr %i.fw, align 8, !tbaa !145
  br label %.sink.split

.sink.split:                                      ; preds = %bb.y, %bb.z
  %.sink153 = phi i64 [ 40, %bb.z ], [ 72, %bb.y ]
  %.sink = phi i64 [ 65536, %bb.z ], [ %i.fv, %bb.y ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sink153
  store i64 %.sink, ptr %i.fx, align 8, !tbaa !39
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split, %bb.x, %.thread149, %bb.o
  %.195 = phi i32 [ 133, %.thread149 ], [ 23, %bb.x ], [ 133, %bb.o ], [ 0, %.sink.split ]
  ret i32 %.195
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: nounwind uwtable
define i32 @FT_Select_Size(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !74
  %i.c = and i64 %i.b, 2
  %.not17 = icmp eq i64 %i.c, 0
  br i1 %.not17, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp slt i32 %1, 0
  br i1 %i.d, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i32, ptr %i.e, align 8, !tbaa !357
  %.not18 = icmp slt i32 %1, %i.f
  br i1 %.not18, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 184
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !427  ; 2 uses
  %.not19 = icmp eq ptr %i.l, null
  br i1 %.not19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38
  %i.o = zext nneg i32 %1 to i64
  %i.p = tail call i32 %i.l(ptr noundef %i.n, i64 noundef %i.o) #30
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.q = zext nneg i32 %1 to i64
  tail call void @FT_Select_Metrics(ptr noundef nonnull %0, i64 noundef %i.q)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.d, %bb.a, %bb.b
  %.0 = phi i32 [ 35, %bb.a ], [ 6, %bb.c ], [ 35, %bb.b ], [ 6, %bb.d ], [ %i.p, %bb.f ], [ 0, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @FT_Request_Size(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 3 uses
  %.not27 = icmp eq ptr %i.c, null
  br i1 %.not27, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not28 = icmp eq ptr %1, null
  br i1 %.not28, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !407
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !409
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load i32, ptr %1, align 8, !tbaa !404
  %i.k = icmp ugt i32 %i.j, 4
  br i1 %i.k, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !382
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 0, ptr %i.n, align 8, !tbaa !428
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 176
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !430  ; 2 uses
  %.not29 = icmp eq ptr %i.t, null
  br i1 %.not29, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call i32 %i.t(ptr noundef nonnull %i.c, ptr noundef nonnull %1) #30
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !74
  %i.x = and i64 %i.w, 3
  %or.cond.not = icmp eq i64 %i.x, 2
  br i1 %or.cond.not, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.y = call i32 @FT_Match_Size(ptr noundef nonnull %0, ptr noundef nonnull %1, i8 noundef zeroext 0, ptr noundef nonnull %i.a) ; 2 uses
  %.not32 = icmp eq i32 %i.y, 0
  br i1 %.not32, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.z = load i64, ptr %i.a, align 8, !tbaa !39
  %i.aa = trunc i64 %i.z to i32
  %i.ab = call i32 @FT_Select_Size(ptr noundef nonnull %0, i32 noundef %i.aa)
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ac = tail call i32 @FT_Request_Metrics(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.h, %bb.l, %bb.c, %bb.d, %bb.e, %bb.f, %bb.b, %bb.a, %bb.k
  %.0 = phi i32 [ 36, %bb.b ], [ 6, %bb.c ], [ %i.ab, %bb.k ], [ 35, %bb.a ], [ 6, %bb.f ], [ 6, %bb.e ], [ 6, %bb.d ], [ %i.u, %bb.h ], [ %i.ac, %bb.l ], [ %i.y, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @FT_Set_Char_Size(ptr noundef readonly captures(address_is_null) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.FT_Size_RequestRec_, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %.not = icmp eq i64 %1, 0                       ; 2 uses
  %.not24 = icmp ne i64 %2, 0
  %.019 = select i1 %.not, i64 %2, i64 %1
  %i.a = or i1 %.not, %.not24
  %.018 = select i1 %i.a, i64 %2, i64 %1
  %.not25 = icmp eq i32 %3, 0                     ; 2 uses
  %.not26 = icmp ne i32 %4, 0
  %.016 = select i1 %.not25, i32 %4, i32 %3       ; 2 uses
  %i.b = or i1 %.not25, %.not26
  %.0 = select i1 %i.b, i32 %4, i32 %3
  %.not27 = icmp eq i32 %.016, 0                  ; 2 uses
  %spec.select29 = select i1 %.not27, i32 72, i32 %.016
  %spec.select30 = select i1 %.not27, i32 72, i32 %.0
  %spec.store.select1 = tail call i64 @llvm.smax.i64(i64 %.018, i64 64)
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %.019, i64 64)
  store i32 0, ptr %5, align 8, !tbaa !404
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %spec.store.select, ptr %i.c, align 8, !tbaa !407
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %spec.store.select1, ptr %i.d, align 8, !tbaa !409
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %spec.select29, ptr %i.e, align 8, !tbaa !406
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 %spec.select30, ptr %i.f, align 4, !tbaa !408
  %i.g = call i32 @FT_Request_Size(ptr noundef %0, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define i32 @FT_Set_Pixel_Sizes(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.FT_Size_RequestRec_, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 @llvm.umax.i32(i32 %2, i32 1) ; 2 uses
  br label %bb.a

8:                                                ; preds = %3
  %9 = icmp eq i32 %2, 0
  %spec.select = select i1 %9, i32 %1, i32 %2
  br label %bb.a

bb.a:                                             ; preds = %8, %6
  %.013 = phi i32 [ %7, %6 ], [ %1, %8 ]
  %.0 = phi i32 [ %7, %6 ], [ %spec.select, %8 ]
  %spec.store.select1 = tail call i32 @llvm.umin.i32(i32 %.013, i32 65535)
  %spec.store.select3 = tail call i32 @llvm.umin.i32(i32 %.0, i32 65535)
  store i32 0, ptr %4, align 8, !tbaa !404
  %i.a = shl nuw nsw i32 %spec.store.select1, 6
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.b, ptr %i.c, align 8, !tbaa !407
  %i.d = shl nuw nsw i32 %spec.store.select3, 6
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.e, ptr %i.f, align 8, !tbaa !409
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 0, ptr %i.g, align 8, !tbaa !406
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 0, ptr %i.h, align 4, !tbaa !408
  %i.i = call i32 @FT_Request_Size(ptr noundef %0, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret i32 %i.i
}

; Function Attrs: nounwind uwtable
define i32 @FT_Get_Kerning(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not42 = icmp eq ptr %4, null
  br i1 %.not42, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !431  ; 2 uses
  %.not43 = icmp eq ptr %i.g, null
  br i1 %.not43, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 %i.g(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %4) #30 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  %i.j = icmp ne i32 %3, 2
  %or.cond = and i1 %i.j, %i.i
  br i1 %or.cond, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.k = load i64, ptr %4, align 8, !tbaa !166
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !38   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !432
  %sext.i = shl i64 %i.k, 32
  %i.p = ashr exact i64 %sext.i, 32
  %sext2.i = shl i64 %i.o, 32
  %i.q = ashr exact i64 %sext2.i, 32
  %i.r = mul nsw i64 %i.q, %i.p                   ; 2 uses
  %i.s = ashr i64 %i.r, 63
  %i.t = add nsw i64 %i.r, 32768
  %i.u = add nsw i64 %i.t, %i.s
  %i.v = shl i64 %i.u, 16
  %i.w = ashr i64 %i.v, 32                        ; 4 uses
  store i64 %i.w, ptr %4, align 8, !tbaa !166
  %i.x = load i64, ptr %i.c, align 8, !tbaa !168
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !433
  %sext.i45 = shl i64 %i.x, 32
  %i.aa = ashr exact i64 %sext.i45, 32
  %sext2.i46 = shl i64 %i.z, 32
  %i.ab = ashr exact i64 %sext2.i46, 32
  %i.ac = mul nsw i64 %i.ab, %i.aa                ; 2 uses
  %i.ad = ashr i64 %i.ac, 63
  %i.ae = add nsw i64 %i.ac, 32768
  %i.af = add nsw i64 %i.ae, %i.ad
  %i.ag = shl i64 %i.af, 16
  %i.ah = ashr i64 %i.ag, 32                      ; 4 uses
  store i64 %i.ah, ptr %i.c, align 8, !tbaa !168
  %.not44 = icmp eq i32 %3, 1
  br i1 %.not44, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.aj = load i16, ptr %i.ai, align 8, !tbaa !85 ; 2 uses
  %i.ak = icmp ult i16 %i.aj, 25
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = zext nneg i16 %i.aj to i64
  %spec.select.i = tail call i64 @llvm.abs.i64(i64 %i.w, i1 true)
  %i.am = mul nuw nsw i64 %spec.select.i, %i.al
  %i.an = add nuw nsw i64 %i.am, 12
  %i.ao = udiv i64 %i.an, 25                      ; 2 uses
  %i.ap = icmp slt i64 %i.w, 0
  %i.aq = sub nsw i64 0, %i.ao
  %i.ar = select i1 %i.ap, i64 %i.aq, i64 %i.ao
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.as = phi i64 [ %i.ar, %bb.g ], [ %i.w, %bb.f ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 26
  %i.au = load i16, ptr %i.at, align 2, !tbaa !88 ; 2 uses
  %i.av = icmp ult i16 %i.au, 25
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aw = zext nneg i16 %i.au to i64
  %spec.select.i48 = tail call i64 @llvm.abs.i64(i64 %i.ah, i1 true)
  %i.ax = mul nuw nsw i64 %spec.select.i48, %i.aw
  %i.ay = add nuw nsw i64 %i.ax, 12
  %i.az = udiv i64 %i.ay, 25                      ; 2 uses
  %i.ba = icmp slt i64 %i.ah, 0
  %i.bb = sub nsw i64 0, %i.az
  %i.bc = select i1 %i.ba, i64 %i.bb, i64 %i.az
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bd = phi i64 [ %i.bc, %bb.i ], [ %i.ah, %bb.h ]
  %i.be = add nsw i64 %i.as, 32
  %i.bf = and i64 %i.be, -64
  store i64 %i.bf, ptr %4, align 8, !tbaa !166
  %i.bg = add nsw i64 %i.bd, 32
  %i.bh = and i64 %i.bg, -64
  store i64 %i.bh, ptr %i.c, align 8, !tbaa !168
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.j, %bb.e, %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ 6, %bb.b ], [ 35, %bb.a ], [ 0, %bb.j ], [ 0, %bb.e ], [ %i.h, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @FT_Get_Track_Kerning(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not18 = icmp eq ptr %3, null
  br i1 %.not18, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !97   ; 2 uses
  %.not19 = icmp eq ptr %i.e, null
  br i1 %.not19, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr %i.e(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.3) #30 ; 2 uses
  %.not20 = icmp eq ptr %i.f, null
  br i1 %.not20, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !434
  %i.h = tail call i32 %i.g(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2, ptr noundef nonnull %3) #30
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.b, %bb.a, %bb.e
  %.014 = phi i32 [ %i.h, %bb.e ], [ 6, %bb.b ], [ 35, %bb.a ], [ 7, %bb.d ], [ 7, %bb.c ]
  ret i32 %.014
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 39) i32 @FT_Select_Charmap(ptr noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %find_unicode_charmap.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.j [
    i32 0, label %bb.c
    i32 1970170211, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !387
  %.not20 = icmp eq i32 %i.b, 0
  br i1 %.not20, label %find_unicode_charmap.exit, label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !388  ; 4 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %find_unicode_charmap.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i32, ptr %i.e, align 8, !tbaa !387  ; 2 uses
  %i.g = sext i32 %i.f to i64
  %.idx.i = shl nsw i64 %i.g, 3
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %.idx.i ; 2 uses
  %.not2427.i = icmp slt i32 %i.f, 1
  br i1 %.not2427.i, label %.preheader.i.preheader, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread.i, %.lr.ph.preheader.i
  %i.j = phi ptr [ %i.w, %.thread.i ], [ %i.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !389  ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !436
  %i.n = icmp eq i32 %i.m, 1970170211
  br i1 %i.n, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.p = load i16, ptr %i.o, align 4, !tbaa !437
  switch i16 %i.p, label %.thread.i [
    i16 3, label %bb.g
end_hunk_0
