Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ustr?download=true
inline.NumInlined: 11
inline.NumDeleted: 1
begin_hunk_0_@ustr_initChars:bb.a
  store i32 %i.at, ptr %i.e, align 8, !tbaa !14
  %i.au = load ptr, ptr %0, align 8, !tbaa !13
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.av
  store i16 0, ptr %i.aw, align 2, !tbaa !17
  br label %ustr_ucat.exit

ustr_ucat.exit:                                   ; preds = %.lr.ph, %ustr_resize.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %ustr_resize.exit.thread, label %.lr.ph, !llvm.loop !18

ustr_resize.exit.thread:                          ; preds = %ustr_ucat.exit, %bb.d, %bb.e, %ustr_resize.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare void @u_charsToUChars_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @ustr_ucat(ptr nofree noundef captures(none) %0, i16 noundef zeroext %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !9
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !14   ; 4 uses
  %.not = icmp sgt i32 %i.d, %i.f
  %.pre = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i32 %i.f, 127
  %i.h = shl nuw nsw i32 %i.f, 1
  %i.i = add nuw nsw i32 %i.h, 128
  %i.j = and i32 %i.i, 2147483520
  %i.k = select i1 %i.g, i32 128, i32 %i.j        ; 2 uses
  %i.l = shl nuw i32 %i.k, 1
  %i.m = or disjoint i32 %i.l, 2
  %i.n = zext i32 %i.m to i64
  %i.o = tail call ptr @uprv_realloc_78(ptr noundef %.pre, i64 noundef %i.n) #8 ; 3 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !13
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %ustr_resize.exit

bb.d:                                             ; preds = %bb.c
  store i32 7, ptr %2, align 4, !tbaa !9
  store i32 0, ptr %i.e, align 8, !tbaa !14
  br label %ustr_resize.exit

ustr_resize.exit:                                 ; preds = %bb.c, %bb.d
  %.sink = phi i32 [ 0, %bb.d ], [ %i.k, %bb.c ]
  store i32 %.sink, ptr %i.c, align 4, !tbaa !15
  %i.q = load i32, ptr %2, align 4, !tbaa !9
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %ustr_resize.exit._crit_edge

ustr_resize.exit._crit_edge:                      ; preds = %ustr_resize.exit
  %.pre13 = load i32, ptr %i.e, align 8, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %ustr_resize.exit._crit_edge, %bb.b
  %i.s = phi i32 [ %i.f, %bb.b ], [ %.pre13, %ustr_resize.exit._crit_edge ]
  %i.t = phi ptr [ %.pre, %bb.b ], [ %i.o, %ustr_resize.exit._crit_edge ]
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds [2 x i8], ptr %i.t, i64 %i.u
  store i16 %1, ptr %i.v, align 2
  %i.w = load i32, ptr %i.e, align 8, !tbaa !14
  %i.x = add nsw i32 %i.w, 1                      ; 2 uses
  store i32 %i.x, ptr %i.e, align 8, !tbaa !14
  %i.y = load ptr, ptr %0, align 8, !tbaa !13
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.z
  store i16 0, ptr %i.aa, align 2, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %ustr_resize.exit, %bb.a, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local void @ustr_deinit(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  tail call void @uprv_free_78(ptr noundef %i.a) #9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @ustr_cpy(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !9
  %i.b = icmp sgt i32 %i.a, 0
  %i.c = icmp eq ptr %0, %1
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !14   ; 3 uses
  %i.h = icmp slt i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = icmp slt i32 %i.g, 128
  %i.j = shl nuw nsw i32 %i.g, 1
  %i.k = add nuw nsw i32 %i.j, 128
  %i.l = and i32 %i.k, 2147483520
  %i.m = select i1 %i.i, i32 128, i32 %i.l        ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !13
  %i.o = shl nuw i32 %i.m, 1
  %i.p = or disjoint i32 %i.o, 2
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @uprv_realloc_78(ptr noundef %i.n, i64 noundef %i.q) #8 ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !13
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %ustr_resize.exit

bb.d:                                             ; preds = %bb.c
  store i32 7, ptr %2, align 4, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.t, align 8, !tbaa !14
  br label %ustr_resize.exit

ustr_resize.exit:                                 ; preds = %bb.c, %bb.d
  %.sink = phi i32 [ 0, %bb.d ], [ %i.m, %bb.c ]
  store i32 %.sink, ptr %i.d, align 4, !tbaa !15
  %i.u = load i32, ptr %2, align 4, !tbaa !9
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.e

bb.e:                                             ; preds = %ustr_resize.exit, %bb.b
  %i.w = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i32, ptr %i.f, align 8, !tbaa !14
  %i.ab = tail call ptr @u_memcpy_78(ptr noundef nonnull %i.y, ptr noundef nonnull %i.w, i32 noundef %i.aa) #9 ; 0 uses
  %i.ac = load i32, ptr %i.f, align 8, !tbaa !14  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !14
  %i.ae = load ptr, ptr %0, align 8, !tbaa !13
  %i.af = sext i32 %i.ac to i64
  %i.ag = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.af
  store i16 0, ptr %i.ag, align 2, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %ustr_resize.exit, %bb.a, %bb.g
  ret void
}

declare ptr @u_memcpy_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @ustr_setlen(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !9
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15
  %.not = icmp sgt i32 %i.d, %1
  %.pre = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i32 %1, 128
  %i.f = shl nuw nsw i32 %1, 1
  %i.g = and i32 %i.f, 2147483520
  %i.h = add nuw nsw i32 %i.g, 128
  %i.i = select i1 %i.e, i32 128, i32 %i.h        ; 2 uses
  %3 = shl nuw i32 %i.i, 1
  %4 = or disjoint i32 %3, 2
  %5 = zext i32 %4 to i64
  %i.j = tail call ptr @uprv_realloc_78(ptr noundef %.pre, i64 noundef %5) #8 ; 3 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !13
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %ustr_resize.exit

bb.d:                                             ; preds = %bb.c
  store i32 7, ptr %2, align 4, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.l, align 8, !tbaa !14
  br label %ustr_resize.exit

ustr_resize.exit:                                 ; preds = %bb.c, %bb.d
  %.sink = phi i32 [ 0, %bb.d ], [ %i.i, %bb.c ]
  store i32 %.sink, ptr %i.c, align 4, !tbaa !15
  %i.m = load i32, ptr %2, align 4, !tbaa !9
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %ustr_resize.exit, %bb.b
  %i.o = phi ptr [ %i.j, %ustr_resize.exit ], [ %.pre, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.p, align 8, !tbaa !14
  %i.q = sext i32 %1 to i64
  %i.r = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.q
  store i16 0, ptr %i.r, align 2, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %ustr_resize.exit, %bb.a, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ustr_cat(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.c = load i32, ptr %2, align 4, !tbaa !9
  %i.d = icmp sgt i32 %i.c, 0
  %i.e = icmp eq ptr %0, %1
  %or.cond.i = or i1 %i.e, %i.d
  br i1 %or.cond.i, label %ustr_ncat.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !14   ; 3 uses
  %i.j = add nsw i32 %i.i, %i.b                   ; 2 uses
  %i.k = icmp slt i32 %i.g, %i.j
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !13  ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = icmp slt i32 %i.j, 128
  %i.m = shl nsw i32 %i.i, 1
  %i.n = add nsw i32 %i.m, %i.b
  %i.o = and i32 %i.n, -128
  %i.p = add nsw i32 %i.o, 128
  %i.q = select i1 %i.l, i32 128, i32 %i.p        ; 2 uses
  %i.r = or disjoint i32 %i.q, 1
  %i.s = sext i32 %i.r to i64
  %i.t = shl nsw i64 %i.s, 1
  %i.u = tail call ptr @uprv_realloc_78(ptr noundef %.pre.i, i64 noundef %i.t) #8 ; 3 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !13
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.d, label %ustr_resize.exit.i

bb.d:                                             ; preds = %bb.c
  store i32 7, ptr %2, align 4, !tbaa !9
  store i32 0, ptr %i.h, align 8, !tbaa !14
  br label %ustr_resize.exit.i

ustr_resize.exit.i:                               ; preds = %bb.d, %bb.c
  %.sink.i = phi i32 [ 0, %bb.d ], [ %i.q, %bb.c ]
  store i32 %.sink.i, ptr %i.f, align 4, !tbaa !15
  %i.w = load i32, ptr %2, align 4, !tbaa !9
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %ustr_ncat.exit, label %ustr_resize.exit._crit_edge.i

ustr_resize.exit._crit_edge.i:                    ; preds = %ustr_resize.exit.i
  %.pre22.i = load i32, ptr %i.h, align 8, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %ustr_resize.exit._crit_edge.i, %bb.b
  %i.y = phi i32 [ %i.i, %bb.b ], [ %.pre22.i, %ustr_resize.exit._crit_edge.i ]
  %i.z = phi ptr [ %.pre.i, %bb.b ], [ %i.u, %ustr_resize.exit._crit_edge.i ]
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load ptr, ptr %1, align 8, !tbaa !13
  %i.ad = sext i32 %i.b to i64
  %i.ae = shl nsw i64 %i.ad, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ab, ptr align 2 %i.ac, i64 %i.ae, i1 false)
  %i.af = load i32, ptr %i.a, align 8, !tbaa !14
  %i.ag = load i32, ptr %i.h, align 8, !tbaa !14
  %i.ah = add nsw i32 %i.ag, %i.af                ; 2 uses
  store i32 %i.ah, ptr %i.h, align 8, !tbaa !14
  %i.ai = load ptr, ptr %0, align 8, !tbaa !13
  %i.aj = sext i32 %i.ah to i64
  %i.ak = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.aj
  store i16 0, ptr %i.ak, align 2, !tbaa !17
  br label %ustr_ncat.exit

ustr_ncat.exit:                                   ; preds = %bb.a, %ustr_resize.exit.i, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ustr_ncat(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !9
  %i.b = icmp sgt i32 %i.a, 0
  %i.c = icmp eq ptr %0, %1
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !14   ; 3 uses
  %i.h = add nsw i32 %i.g, %2                     ; 2 uses
  %i.i = icmp slt i32 %i.e, %i.h
  %.pre = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = icmp slt i32 %i.h, 128
  %i.k = shl nsw i32 %i.g, 1
  %i.l = add nsw i32 %i.k, %2
  %i.m = and i32 %i.l, -128
  %i.n = add nsw i32 %i.m, 128
  %i.o = select i1 %i.j, i32 128, i32 %i.n        ; 2 uses
  %i.p = or disjoint i32 %i.o, 1
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 1
  %i.s = tail call ptr @uprv_realloc_78(ptr noundef %.pre, i64 noundef %i.r) #8 ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !13
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.d, label %ustr_resize.exit

bb.d:                                             ; preds = %bb.c
  store i32 7, ptr %3, align 4, !tbaa !9
  store i32 0, ptr %i.f, align 8, !tbaa !14
  br label %ustr_resize.exit

ustr_resize.exit:                                 ; preds = %bb.c, %bb.d
  %.sink = phi i32 [ 0, %bb.d ], [ %i.o, %bb.c ]
  store i32 %.sink, ptr %i.d, align 4, !tbaa !15
  %i.u = load i32, ptr %3, align 4, !tbaa !9
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %ustr_resize.exit._crit_edge

ustr_resize.exit._crit_edge:                      ; preds = %ustr_resize.exit
  %.pre22 = load i32, ptr %i.f, align 8, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %ustr_resize.exit._crit_edge, %bb.b
  %i.w = phi i32 [ %i.g, %bb.b ], [ %.pre22, %ustr_resize.exit._crit_edge ]
  %i.x = phi ptr [ %.pre, %bb.b ], [ %i.s, %ustr_resize.exit._crit_edge ]
  %i.y = sext i32 %i.w to i64
  %i.z = getelementptr inbounds [2 x i8], ptr %i.x, i64 %i.y
  %i.aa = load ptr, ptr %1, align 8, !tbaa !13
  %i.ab = sext i32 %2 to i64
  %i.ac = shl nsw i64 %i.ab, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.z, ptr align 2 %i.aa, i64 %i.ac, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !14
  %i.af = load i32, ptr %i.f, align 8, !tbaa !14
  %i.ag = add nsw i32 %i.af, %i.ae                ; 2 uses
  store i32 %i.ag, ptr %i.f, align 8, !tbaa !14
  %i.ah = load ptr, ptr %0, align 8, !tbaa !13
  %i.ai = sext i32 %i.ag to i64
  %i.aj = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %i.ai
  store i16 0, ptr %i.aj, align 2, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %ustr_resize.exit, %bb.a, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local void @ustr_u32cat(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %1, 1114111
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 12, ptr %2, align 4, !tbaa !9
  br label %ustr_ucat.exit17

bb.c:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 65535
  br i1 %i.b, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.c = lshr i32 %1, 10
  %i.d = trunc nuw nsw i32 %i.c to i16
end_hunk_0
