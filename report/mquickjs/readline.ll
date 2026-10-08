Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mquickjs/original/readline?download=true
inline.NumInlined: 33
inline.NumDeleted: 20
begin_hunk_0_@term_up_char:bb.a
  %i.r = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #13 ; 2 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21
  %sext.i = shl i64 %i.r, 32
  %i.v = ashr exact i64 %sext.i, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr nonnull align 1 %i.q, i64 %i.v, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.s, ptr %i.w, align 4, !tbaa !18
  store i32 %i.s, ptr %0, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.x, align 4, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %.critedge
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @term_forward_char(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = load i32, ptr %0, align 8, !tbaa !17     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !18
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.h = sext i32 %i.b to i64
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !23
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %utf8_get.exit, label %bb.c, !prof !30

bb.c:                                             ; preds = %bb.b
  %i.l = call i32 @__utf8_get(ptr noundef nonnull %i.i, ptr noundef nonnull %i.a) #11 ; 0 uses
  %.pre = load i64, ptr %i.a, align 8, !tbaa !32
  %.pre5 = load i32, ptr %0, align 8, !tbaa !17
  %i.m = trunc i64 %.pre to i32
  br label %utf8_get.exit

utf8_get.exit:                                    ; preds = %bb.b, %bb.c
  %i.n = phi i32 [ %.pre5, %bb.c ], [ %i.b, %bb.b ]
  %i.o = phi i32 [ %i.m, %bb.c ], [ 1, %bb.b ]
  %i.p = add i32 %i.n, %i.o
  store i32 %i.p, ptr %0, align 8, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %utf8_get.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: optsize
declare i32 @__utf8_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nosync nounwind optsize memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @skip_word_backward(ptr nofree noundef readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !17     ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.a
  %i.c = tail call ptr @__ctype_b_loc() #15
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.012 = phi i32 [ %i.a, %.lr.ph ], [ %i.o, %bb.c ] ; 4 uses
  %i.g = zext nneg i32 %.012 to i64
  %i.h = getelementptr i8, ptr %i.f, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !23
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !39
  %i.n = and i16 %i.m, 8192
  %.not = icmp eq i16 %i.n, 0
  br i1 %.not, label %.lr.ph16, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = add nsw i32 %.012, -1
  %i.p = icmp sgt i32 %.012, 1
  br i1 %i.p, label %bb.b, label %.critedge2, !llvm.loop !55

.lr.ph16:                                         ; preds = %bb.b
  %i.q = tail call ptr @__ctype_b_loc() #15
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph16, %bb.e
  %.115 = phi i32 [ %.012, %.lr.ph16 ], [ %i.ac, %bb.e ] ; 4 uses
  %i.u = zext nneg i32 %.115 to i64
  %i.v = getelementptr i8, ptr %i.t, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 -1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !23
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !39
  %i.ab = and i16 %i.aa, 8192
  %.not11 = icmp eq i16 %i.ab, 0
  br i1 %.not11, label %bb.e, label %.critedge2

bb.e:                                             ; preds = %bb.d
  %i.ac = add nsw i32 %.115, -1
  %i.ad = icmp sgt i32 %.115, 1
  br i1 %i.ad, label %bb.d, label %.critedge2, !llvm.loop !56

.critedge2:                                       ; preds = %bb.c, %bb.d, %bb.e, %bb.a
  %.1.lcssa = phi i32 [ 0, %bb.e ], [ %i.a, %bb.a ], [ %.115, %bb.d ], [ 0, %bb.c ]
  ret i32 %.1.lcssa
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @term_insert_region(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !17     ; 4 uses
  %i.b = add nsw i32 %i.a, %2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !57
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !18
  %i.h = sub nsw i32 %i.g, %i.a                   ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = sext i32 %i.a to i64
  %.pre21 = sext i32 %2 to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.l = sext i32 %i.a to i64                     ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.l ; 2 uses
  %i.n = sext i32 %2 to i64                       ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  %i.p = zext nneg i32 %i.h to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.m, i64 %i.p, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.pre-phi22 = phi i64 [ %.pre21, %._crit_edge ], [ %i.n, %bb.c ]
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.l, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %.pre-phi
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %1, i64 %.pre-phi22, i1 false)
  %i.t = load <2 x i32>, ptr %0, align 8, !tbaa !24
  %i.u = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.v = shufflevector <2 x i32> %i.u, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.w = add nsw <2 x i32> %i.t, %i.v
  store <2 x i32> %i.w, ptr %0, align 8, !tbaa !24
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.x, align 4, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: optsize
declare i64 @__unicode_to_utf8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind optsize memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @skip_word_forward(ptr nofree noundef readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !17     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !18   ; 6 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.a
  %i.e = tail call ptr @__ctype_b_loc() #15
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.i = sext i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.i, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 %indvars.iv
  %i.k = load i8, ptr %i.j, align 1, !tbaa !23
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !39
  %i.o = and i16 %i.n, 8192
  %.not = icmp eq i16 %i.o, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.c, %lftr.wideiv
  br i1 %exitcond.not, label %.critedge2, label %bb.b, !llvm.loop !58

.critedge:                                        ; preds = %bb.b
  %1 = trunc nsw i64 %indvars.iv to i32           ; 2 uses
  %2 = icmp sgt i32 %i.c, %1
  br i1 %2, label %.lr.ph20, label %.critedge2

.lr.ph20:                                         ; preds = %.critedge
  %i.p = tail call ptr @__ctype_b_loc() #15
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !37
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph20, %bb.e
  %indvars.iv25 = phi i64 [ %indvars.iv, %.lr.ph20 ], [ %indvars.iv.next26, %bb.e ] ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %indvars.iv25
  %i.u = load i8, ptr %i.t, align 1, !tbaa !23
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !39
  %i.y = and i16 %i.x, 8192
  %.not13 = icmp eq i16 %i.y, 0
  br i1 %.not13, label %bb.e, label %.critedge2.loopexit.split.loop.exit34

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next26 = add nsw i64 %indvars.iv25, 1 ; 2 uses
  %lftr.wideiv28 = trunc i64 %indvars.iv.next26 to i32
  %exitcond29.not = icmp eq i32 %i.c, %lftr.wideiv28
  br i1 %exitcond29.not, label %.critedge2, label %bb.d, !llvm.loop !59

.critedge2.loopexit.split.loop.exit34:            ; preds = %bb.d
  %i.z = trunc nsw i64 %indvars.iv25 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.c, %bb.e, %.critedge2.loopexit.split.loop.exit34, %bb.a, %.critedge
  %.1.lcssa = phi i32 [ %1, %.critedge ], [ %i.c, %bb.e ], [ %i.a, %bb.a ], [ %i.z, %.critedge2.loopexit.split.loop.exit34 ], [ %i.c, %bb.c ]
  ret i32 %.1.lcssa
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @move_cursor(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre39 = load i32, ptr %i.b, align 4, !tbaa !34
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.e
  %i.d = phi i32 [ %.pre39, %.preheader ], [ %.sink, %bb.e ] ; 2 uses
  %.037 = phi i32 [ %1, %.preheader ], [ %.1, %bb.e ] ; 3 uses
  %i.e = load i32, ptr %i.c, align 8, !tbaa !35
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @term_printf(ptr noundef nonnull @.str.22) #11
  %i.h = add nsw i32 %.037, -1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = sub nsw i32 %i.f, %i.d
  %..i = tail call noundef i32 @llvm.smin.i32(i32 %i.i, i32 %.037) ; 3 uses
  tail call fastcc void @print_csi(i32 noundef %..i, i32 noundef 67) #12
  %i.j = sub nsw i32 %.037, %..i
  %i.k = load i32, ptr %i.b, align 4, !tbaa !34
  %i.l = add nsw i32 %i.k, %..i
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink = phi i32 [ 0, %bb.c ], [ %i.l, %bb.d ]  ; 2 uses
  %.1 = phi i32 [ %i.h, %bb.c ], [ %i.j, %bb.d ]  ; 2 uses
  store i32 %.sink, ptr %i.b, align 4, !tbaa !34
  %.not33 = icmp eq i32 %.1, 0
  br i1 %.not33, label %.loopexit, label %bb.b, !llvm.loop !60

bb.f:                                             ; preds = %bb.a
  %i.m = icmp slt i32 %1, 0
  br i1 %i.m, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.n = sub nsw i32 0, %1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.pre = load i32, ptr %i.o, align 4, !tbaa !34
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.k
  %i.q = phi i32 [ %.pre, %bb.g ], [ %storemerge, %bb.k ] ; 2 uses
  %.236 = phi i32 [ %i.n, %bb.g ], [ %.3, %bb.k ] ; 3 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @term_printf(ptr noundef nonnull @.str.23, i32 noundef 65) #11
  %i.s = load i32, ptr %i.p, align 8, !tbaa !35
  %i.t = add nsw i32 %i.s, -1
  tail call fastcc void @print_csi(i32 noundef %i.t, i32 noundef 67) #12
  %i.u = add nsw i32 %.236, -1
  %i.v = load i32, ptr %i.p, align 8, !tbaa !35
  %i.w = add nsw i32 %i.v, -1
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %..i34 = tail call noundef i32 @llvm.smin.i32(i32 %.236, i32 %i.q) ; 3 uses
  tail call fastcc void @print_csi(i32 noundef %..i34, i32 noundef 68) #12
  %i.x = sub nsw i32 %.236, %..i34
  %i.y = load i32, ptr %i.o, align 4, !tbaa !34
  %i.z = sub nsw i32 %i.y, %..i34
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge = phi i32 [ %i.z, %bb.j ], [ %i.w, %bb.i ] ; 2 uses
  %.3 = phi i32 [ %i.x, %bb.j ], [ %i.u, %bb.i ]  ; 2 uses
  store i32 %storemerge, ptr %i.o, align 4, !tbaa !34
  %.not = icmp eq i32 %.3, 0
  br i1 %.not, label %.loopexit, label %bb.h, !llvm.loop !61

.loopexit:                                        ; preds = %bb.k, %bb.e, %bb.f
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @print_csi(i32 noundef %0, i32 noundef range(i32 65, 75) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %0, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @term_printf(ptr noundef nonnull @.str.23, i32 noundef %1) #11
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void (ptr, ...) @term_printf(ptr noundef nonnull @.str.24, i32 noundef %0, i32 noundef %1) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: optsize
declare void @term_flush() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind optsize memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize willreturn memory(read) }
attributes #14 = { nounwind }
attributes #15 = { nounwind optsize willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260908082138+de2a0dd540f7-1~exp1~20260908202305.1836)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"ReadlineState", !9, i64 0, !9, i64 4, !9, i64 8, !8, i64 12, !8, i64 13, !8, i64 14, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !8, i64 44, !13, i64 48, !9, i64 56, !9, i64 60, !9, i64 64, !13, i64 72, !13, i64 80, !9, i64 88, !13, i64 96, !12, i64 104}
!15 = !{!14, !8, i64 13}
!16 = !{!14, !8, i64 14}
!17 = !{!14, !9, i64 0}
!18 = !{!14, !9, i64 4}
!19 = !{!14, !13, i64 80}
!20 = !{!14, !9, i64 64}
!21 = !{!14, !13, i64 72}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!8, !8, i64 0}
!24 = !{!9, !9, i64 0}
!25 = !{!14, !9, i64 36}
!26 = !{!14, !13, i64 96}
!27 = !{!14, !9, i64 40}
!28 = !{!14, !8, i64 12}
!29 = !{!14, !9, i64 32}
!30 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!31 = !{!"long", !8, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!14, !8, i64 44}
!34 = !{!14, !9, i64 28}
!35 = !{!14, !9, i64 56}
!36 = !{!"p1 short", !12, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"short", !8, i64 0}
!39 = !{!38, !38, i64 0}
!40 = distinct !{!40, !22}
!41 = distinct !{!41, !22}
!42 = distinct !{null, null}
!43 = distinct !{!43, !22}
!44 = distinct !{!44, !22}
!45 = !{!14, !9, i64 8}
!46 = !{!14, !9, i64 24}
!47 = !{!14, !9, i64 16}
!48 = !{!14, !12, i64 104}
!49 = !{!13, !13, i64 0}
!50 = !{!14, !13, i64 48}
!51 = distinct !{!51, !22}
!52 = distinct !{!52, !22}
!53 = !{!14, !9, i64 88}
!54 = distinct !{!54, !22}
!55 = distinct !{!55, !22}
!56 = distinct !{!56, !22}
!57 = !{!14, !9, i64 60}
!58 = distinct !{!58, !22}
end_hunk_0
