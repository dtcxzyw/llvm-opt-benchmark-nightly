Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_truetype?download=true
inline.NumInlined: 388
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@stbtt__cff_index_get:bb.a
  %or.cond.not.i = icmp sgt i32 %i.by, -1
  br i1 %or.cond.not.i, label %bb.j, label %stbtt__buf_range.exit

bb.j:                                             ; preds = %stbtt__buf_get.exit26
  %i.bz = icmp sgt i32 %i.bw, %.sroa.18.8.extract.trunc
  %i.ca = sub nsw i32 %.sroa.18.8.extract.trunc, %i.bw
  %i.cb = icmp sgt i32 %i.bx, %i.ca
  %or.cond.i = select i1 %i.bz, i1 true, i1 %i.cb
  br i1 %or.cond.i, label %stbtt__buf_range.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = zext nneg i32 %i.bw to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %i.cc
  %i.ce = zext i32 %i.bx to i64
  %i.cf = shl nuw i64 %i.ce, 32
  br label %stbtt__buf_range.exit

stbtt__buf_range.exit:                            ; preds = %stbtt__buf_get.exit26, %bb.j, %bb.k
  %.sroa.0.0.i = phi ptr [ null, %stbtt__buf_get.exit26 ], [ null, %bb.j ], [ %i.cd, %bb.k ]
  %.sroa.5.0.i = phi i64 [ 0, %stbtt__buf_get.exit26 ], [ 0, %bb.j ], [ %i.cf, %bb.k ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.5.0.i, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i16 @ttUSHORT(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !14
  %i.b = zext i8 %i.a to i16
  %i.c = shl nuw i16 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14
  %i.f = zext i8 %i.e to i16
  %i.g = or disjoint i16 %i.c, %i.f
  ret i16 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define signext i16 @ttSHORT(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !14
  %i.b = zext i8 %i.a to i16
  %i.c = shl nuw i16 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14
  %i.f = zext i8 %i.e to i16
  %i.g = or disjoint i16 %i.c, %i.f
  ret i16 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @ttULONG(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 1
  %i.b = tail call i32 @llvm.bswap.i32(i32 %i.a)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @ttLONG(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 1
  %i.b = tail call i32 @llvm.bswap.i32(i32 %i.a)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @stbtt__isfont(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !14
  switch i8 %i.a, label %.thread26 [
    i8 49, label %bb.b
    i8 116, label %bb.e
    i8 79, label %bb.h
    i8 0, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !14
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %.thread26

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i8, ptr %i.e, align 1, !tbaa !14
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %.thread26

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.i = load i8, ptr %i.h, align 1, !tbaa !14
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.p, label %.thread26

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  switch i8 %i.l, label %.thread26 [
    i8 121, label %bb.f
    i8 114, label %bb.n
  ]

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !14
  %i.o = icmp eq i8 %i.n, 112
  br i1 %i.o, label %bb.g, label %.thread26

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  %i.r = icmp eq i8 %i.q, 49
  br i1 %i.r, label %bb.p, label %.thread26

bb.h:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !14
  %i.u = icmp eq i8 %i.t, 84
  br i1 %i.u, label %bb.i, label %.thread26

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !14
  %i.x = icmp eq i8 %i.w, 84
  br i1 %i.x, label %bb.j, label %.thread26

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !14
  %i.aa = icmp eq i8 %i.z, 79
  br i1 %i.aa, label %bb.p, label %.thread26

bb.k:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !14
  %i.ad = icmp eq i8 %i.ac, 1
  br i1 %i.ad, label %bb.l, label %.thread26

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !14
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.m, label %.thread26

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !14
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.p, label %.thread26

bb.n:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !14
  %i.am = icmp eq i8 %i.al, 117
  br i1 %i.am, label %bb.o, label %.thread26

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !14
  %i.ap = icmp eq i8 %i.ao, 101
  br i1 %i.ap, label %bb.p, label %.thread26

.thread26:                                        ; preds = %bb.e, %bb.g, %bb.f, %bb.a, %bb.j, %bb.i, %bb.h, %bb.k, %bb.l, %bb.m, %bb.b, %bb.c, %bb.d, %bb.o, %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.j, %bb.g, %bb.d, %.thread26
  %.0 = phi i32 [ 0, %.thread26 ], [ 1, %bb.d ], [ 1, %bb.g ], [ 1, %bb.j ], [ 1, %bb.m ], [ 1, %bb.o ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @stbtt__find_table(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i8, ptr %i.c, align 1, !tbaa !14
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = zext i8 %i.h to i32
  %i.j = or disjoint i32 %i.f, %i.i               ; 2 uses
  %i.k = add i32 %1, 12
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = load i8, ptr %2, align 1, !tbaa !14
  %i.m = sext i8 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 3
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 4
  %i.r = add i32 %i.k, %i.q
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.s ; 5 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !14
  %i.v = zext i8 %i.u to i32
  %i.w = icmp eq i32 %i.v, %i.m
  br i1 %i.w, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !14
  %i.z = zext i8 %i.y to i32
  %i.aa = load i8, ptr %i.n, align 1, !tbaa !14
  %i.ab = sext i8 %i.aa to i32
  %i.ac = icmp eq i32 %i.z, %i.ab
  br i1 %i.ac, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !14
  %i.af = zext i8 %i.ae to i32
  %i.ag = load i8, ptr %i.o, align 1, !tbaa !14
  %i.ah = sext i8 %i.ag to i32
  %i.ai = icmp eq i32 %i.af, %i.ah
  br i1 %i.ai, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !14
  %i.al = zext i8 %i.ak to i32
  %i.am = load i8, ptr %i.p, align 1, !tbaa !14
  %i.an = sext i8 %i.am to i32
  %i.ao = icmp eq i32 %i.al, %i.an
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.aq = load i32, ptr %i.ap, align 1
  %i.ar = tail call i32 @llvm.bswap.i32(i32 %i.aq)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !21

.loopexit:                                        ; preds = %bb.g, %bb.a, %bb.f
  %.2 = phi i32 [ %i.ar, %bb.f ], [ 0, %bb.a ], [ 0, %bb.g ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @stbtt_GetFontOffsetForIndex_internal(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @stbtt__isfont(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i32 %1, 0
  %i.c = sext i1 %i.b to i32
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 1, !tbaa !14
  %i.e = icmp eq i8 %i.d, 116
  br i1 %i.e, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !14
  %i.h = icmp eq i8 %i.g, 116
  br i1 %i.h, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !14
  %i.k = icmp eq i8 %i.j, 99
  br i1 %i.k, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !14
  %i.n = icmp eq i8 %i.m, 102
  br i1 %i.n, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load i32, ptr %i.o, align 1
  %i.q = tail call i32 @llvm.bswap.i32(i32 %i.p)
  switch i32 %i.q, label %bb.j [
    i32 65536, label %bb.h
    i32 131072, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i32, ptr %i.r, align 1
  %i.t = tail call i32 @llvm.bswap.i32(i32 %i.s)
  %.not14 = icmp slt i32 %1, %i.t
  br i1 %.not14, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = shl nsw i32 %1, 2
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 %i.w
  %i.y = load i32, ptr %i.x, align 1
  %i.z = tail call i32 @llvm.bswap.i32(i32 %i.y)
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.c, %bb.d, %bb.e, %bb.f, %bb.i, %bb.h, %bb.b
  %.1 = phi i32 [ %i.c, %bb.b ], [ -1, %bb.h ], [ %i.z, %bb.i ], [ -1, %bb.g ], [ -1, %bb.f ], [ -1, %bb.e ], [ -1, %bb.d ], [ -1, %bb.c ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @stbtt_GetNumberOfFonts_internal(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @stbtt__isfont(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !14
  %i.c = icmp eq i8 %i.b, 116
  br i1 %i.c, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14
  %i.f = icmp eq i8 %i.e, 116
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = icmp eq i8 %i.h, 99
  br i1 %i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !14
  %i.l = icmp eq i8 %i.k, 102
  br i1 %i.l, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 1
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.n)
  switch i32 %i.o, label %bb.h [
    i32 65536, label %bb.g
    i32 131072, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i32, ptr %i.p, align 1
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.q)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.b, %bb.c, %bb.d, %bb.e, %bb.a, %bb.g
  %.0 = phi i32 [ 1, %bb.a ], [ %i.r, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i64 } @stbtt__get_subrs(ptr %0, i64 %1, ptr %2, i64 %3) local_unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.stbtt__buf, align 8         ; 6 uses
  %5 = alloca %struct.stbtt__buf, align 8         ; 8 uses
  %6 = alloca %struct.stbtt__buf, align 8         ; 3 uses
  %7 = alloca %struct.stbtt__buf, align 8         ; 5 uses
  %.sroa.15.8.extract.shift = lshr i64 %1, 32
  %.sroa.15.8.extract.trunc = trunc nuw i64 %.sroa.15.8.extract.shift to i32 ; 15 uses
  store ptr %2, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %3, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.b = call { ptr, i64 } @stbtt__dict_get(ptr noundef nonnull %6, i32 noundef 18) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  store ptr %i.c, ptr %5, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.b, 1        ; 3 uses
  store i64 %i.e, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i32
  %i.g = lshr i64 %i.e, 32
  %i.h = trunc nuw i64 %i.g to i32
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %.lr.ph.i.preheader, label %stbtt__dict_get_ints.exit.thread

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.k = call i32 @stbtt__cff_int(ptr noundef nonnull %5) ; 4 uses
  %i.l = load i32, ptr %i.d, align 8
  %i.m = load i32, ptr %i.j, align 4
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %stbtt__dict_get_ints.exit, label %stbtt__dict_get_ints.exit.thread

end_hunk_0
begin_hunk_1_@stbtt__get_subrs:bb.a
  %i.al = add nsw i32 %..i, 1
  %i.am = sext i32 %..i to i64
  %i.an = getelementptr inbounds i8, ptr %0, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !14
  %i.ap = zext i8 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.ap, 8
  br label %stbtt__buf_get8.exit.i.i

stbtt__buf_get8.exit.i.i:                         ; preds = %bb.f, %bb.e
  %i.ar = phi i32 [ %i.al, %bb.f ], [ %..i, %bb.e ] ; 4 uses
  %.0.i.i.i = phi i32 [ %i.aq, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %.not.i.i.1.i = icmp slt i32 %i.ar, %.sroa.15.8.extract.trunc
  br i1 %.not.i.i.1.i, label %bb.g, label %stbtt__buf_get8.exit.i.1.i

bb.g:                                             ; preds = %stbtt__buf_get8.exit.i.i
  %i.as = add nsw i32 %i.ar, 1
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr inbounds i8, ptr %0, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !14
  %i.aw = zext i8 %i.av to i32
  %i.ax = or disjoint i32 %.0.i.i.i, %i.aw
  br label %stbtt__buf_get8.exit.i.1.i

stbtt__buf_get8.exit.i.1.i:                       ; preds = %bb.g, %stbtt__buf_get8.exit.i.i
  %i.ay = phi i32 [ %i.as, %bb.g ], [ %i.ar, %stbtt__buf_get8.exit.i.i ] ; 5 uses
  %.0.i.i.1.i = phi i32 [ %i.ax, %bb.g ], [ %.0.i.i.i, %stbtt__buf_get8.exit.i.i ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i.i.1.i, 0
  br i1 %.not.i, label %stbtt__cff_get_index.exit, label %bb.h

bb.h:                                             ; preds = %stbtt__buf_get8.exit.i.1.i
  %.not.i.i = icmp slt i32 %i.ay, %.sroa.15.8.extract.trunc
  br i1 %.not.i.i, label %bb.i, label %stbtt__buf_get8.exit.i

bb.i:                                             ; preds = %bb.h
  %i.az = add nsw i32 %i.ay, 1
  %i.ba = sext i32 %i.ay to i64
  %i.bb = getelementptr inbounds i8, ptr %0, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !14
  %i.bd = zext i8 %i.bc to i32
  br label %stbtt__buf_get8.exit.i

stbtt__buf_get8.exit.i:                           ; preds = %bb.i, %bb.h
  %i.be = phi i32 [ %i.az, %bb.i ], [ %i.ay, %bb.h ]
  %.0.i.i = phi i32 [ %i.bd, %bb.i ], [ 0, %bb.h ] ; 6 uses
  %i.bf = mul nuw nsw i32 %.0.i.i, %.0.i.i.1.i
  %i.bg = add nsw i32 %i.bf, %i.be                ; 2 uses
  %i.bh = icmp slt i32 %i.bg, 0
  %i.bi = tail call i32 @llvm.smin.i32(i32 %i.bg, i32 %.sroa.15.8.extract.trunc)
  %..i.i.i = select i1 %i.bh, i32 %.sroa.15.8.extract.trunc, i32 %i.bi ; 3 uses
  %.not22.i = icmp eq i32 %.0.i.i, 0
  br i1 %.not22.i, label %stbtt__buf_get.exit20.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %stbtt__buf_get8.exit.i
  %xtraiter = and i32 %.0.i.i, 1
  %i.bj = icmp eq i32 %.0.i.i, 1
  br i1 %i.bj, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %.0.i.i, 254
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %stbtt__buf_get8.exit.i17.i.1, %.lr.ph.i.i.preheader.new
  %i.bk = phi i32 [ %..i.i.i, %.lr.ph.i.i.preheader.new ], [ %i.ca, %stbtt__buf_get8.exit.i17.i.1 ] ; 4 uses
  %.056.i15.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %.0.i.i18.i.1, %stbtt__buf_get8.exit.i17.i.1 ]
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %stbtt__buf_get8.exit.i17.i.1 ]
  %i.bl = shl i32 %.056.i15.i, 8                  ; 2 uses
  %.not.i.i16.i = icmp slt i32 %i.bk, %.sroa.15.8.extract.trunc
  br i1 %.not.i.i16.i, label %bb.j, label %stbtt__buf_get8.exit.i17.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.bm = add nsw i32 %i.bk, 1
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds i8, ptr %0, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !14
  %i.bq = zext i8 %i.bp to i32
  %i.br = or disjoint i32 %i.bl, %i.bq
  br label %stbtt__buf_get8.exit.i17.i

stbtt__buf_get8.exit.i17.i:                       ; preds = %bb.j, %.lr.ph.i.i
  %i.bs = phi i32 [ %i.bm, %bb.j ], [ %i.bk, %.lr.ph.i.i ] ; 4 uses
  %.0.i.i18.i = phi i32 [ %i.br, %bb.j ], [ %i.bl, %.lr.ph.i.i ]
  %i.bt = shl i32 %.0.i.i18.i, 8                  ; 2 uses
  %.not.i.i16.i.1 = icmp slt i32 %i.bs, %.sroa.15.8.extract.trunc
  br i1 %.not.i.i16.i.1, label %bb.k, label %stbtt__buf_get8.exit.i17.i.1

bb.k:                                             ; preds = %stbtt__buf_get8.exit.i17.i
  %i.bu = add nsw i32 %i.bs, 1
  %i.bv = sext i32 %i.bs to i64
  %i.bw = getelementptr inbounds i8, ptr %0, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !14
  %i.by = zext i8 %i.bx to i32
  %i.bz = or disjoint i32 %i.bt, %i.by
  br label %stbtt__buf_get8.exit.i17.i.1

stbtt__buf_get8.exit.i17.i.1:                     ; preds = %bb.k, %stbtt__buf_get8.exit.i17.i
  %i.ca = phi i32 [ %i.bu, %bb.k ], [ %i.bs, %stbtt__buf_get8.exit.i17.i ] ; 3 uses
  %.0.i.i18.i.1 = phi i32 [ %i.bz, %bb.k ], [ %i.bt, %stbtt__buf_get8.exit.i17.i ] ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %stbtt__buf_get.exit20.loopexit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !15

stbtt__buf_get.exit20.loopexit.i.unr-lcssa:       ; preds = %stbtt__buf_get8.exit.i17.i.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %stbtt__buf_get.exit20.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %stbtt__buf_get.exit20.loopexit.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.epil.init = phi i32 [ %..i.i.i, %.lr.ph.i.i.preheader ], [ %i.ca, %stbtt__buf_get.exit20.loopexit.i.unr-lcssa ] ; 4 uses
  %.056.i15.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %.0.i.i18.i.1, %stbtt__buf_get.exit20.loopexit.i.unr-lcssa ]
  %lcmp.mod35 = trunc i32 %.0.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod35)
  %i.cb = shl i32 %.056.i15.i.epil.init, 8        ; 2 uses
  %.not.i.i16.i.epil = icmp slt i32 %.epil.init, %.sroa.15.8.extract.trunc
  br i1 %.not.i.i16.i.epil, label %bb.l, label %stbtt__buf_get.exit20.loopexit.i

bb.l:                                             ; preds = %.lr.ph.i.i.epil.preheader
  %i.cc = add nsw i32 %.epil.init, 1
  %i.cd = sext i32 %.epil.init to i64
  %i.ce = getelementptr inbounds i8, ptr %0, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !14
  %i.cg = zext i8 %i.cf to i32
  %i.ch = or disjoint i32 %i.cb, %i.cg
  br label %stbtt__buf_get.exit20.loopexit.i

stbtt__buf_get.exit20.loopexit.i:                 ; preds = %.lr.ph.i.i.epil.preheader, %bb.l, %stbtt__buf_get.exit20.loopexit.i.unr-lcssa
  %.lcssa = phi i32 [ %i.ca, %stbtt__buf_get.exit20.loopexit.i.unr-lcssa ], [ %i.cc, %bb.l ], [ %.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.0.i.i18.i.lcssa = phi i32 [ %.0.i.i18.i.1, %stbtt__buf_get.exit20.loopexit.i.unr-lcssa ], [ %i.ch, %bb.l ], [ %i.cb, %.lr.ph.i.i.epil.preheader ]
  %i.ci = add i32 %.0.i.i18.i.lcssa, -1
  br label %stbtt__buf_get.exit20.i

stbtt__buf_get.exit20.i:                          ; preds = %stbtt__buf_get.exit20.loopexit.i, %stbtt__buf_get8.exit.i
  %i.cj = phi i32 [ %..i.i.i, %stbtt__buf_get8.exit.i ], [ %.lcssa, %stbtt__buf_get.exit20.loopexit.i ]
  %.05.lcssa.i.i = phi i32 [ -1, %stbtt__buf_get8.exit.i ], [ %i.ci, %stbtt__buf_get.exit20.loopexit.i ]
  %i.ck = add nsw i32 %.05.lcssa.i.i, %i.cj       ; 2 uses
  %i.cl = icmp slt i32 %i.ck, 0
  %i.cm = tail call i32 @llvm.smin.i32(i32 %i.ck, i32 %.sroa.15.8.extract.trunc)
  %..i.i21.i = select i1 %i.cl, i32 %.sroa.15.8.extract.trunc, i32 %i.cm
  br label %stbtt__cff_get_index.exit

stbtt__cff_get_index.exit:                        ; preds = %stbtt__buf_get.exit20.i, %stbtt__buf_get8.exit.i.1.i
  %i.cn = phi i32 [ %..i.i21.i, %stbtt__buf_get.exit20.i ], [ %i.ay, %stbtt__buf_get8.exit.i.1.i ] ; 2 uses
  %i.co = sub nsw i32 %i.cn, %..i                 ; 2 uses
  %i.cp = or i32 %i.co, %..i
  %or.cond.not.i.i = icmp slt i32 %i.cp, 0
  %i.cq = icmp sgt i32 %i.cn, %.sroa.15.8.extract.trunc
  %or.cond.i13 = or i1 %i.cq, %or.cond.not.i.i    ; 2 uses
  %i.cr = zext nneg i32 %..i to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 %i.cr
  %i.ct = zext i32 %i.co to i64
  %i.cu = shl nuw i64 %i.ct, 32
  %.sroa.0.0.i.i = select i1 %or.cond.i13, ptr null, ptr %i.cs
  %.sroa.5.0.i.i = select i1 %or.cond.i13, i64 0, i64 %i.cu
  %.fca.0.insert.i.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, i64 } %.fca.0.insert.i.i, i64 %.sroa.5.0.i.i, 1
  br label %bb.m

bb.m:                                             ; preds = %stbtt__dict_get_ints.exit.thread, %stbtt__dict_get_ints.exit12, %stbtt__dict_get_ints.exit12.thread, %stbtt__dict_get_ints.exit, %stbtt__cff_get_index.exit
  %.pn = phi { ptr, i64 } [ %.fca.1.insert.i.i, %stbtt__cff_get_index.exit ], [ zeroinitializer, %stbtt__dict_get_ints.exit ], [ zeroinitializer, %stbtt__dict_get_ints.exit12.thread ], [ zeroinitializer, %stbtt__dict_get_ints.exit12 ], [ zeroinitializer, %stbtt__dict_get_ints.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  ret { ptr, i64 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @stbtt__get_svg(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23   ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !26   ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i8, ptr %i.j, align 1, !tbaa !14
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  %i.o = load i8, ptr %i.n, align 1, !tbaa !14
  %i.p = zext i8 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 2 uses
  %i.r = add i32 %i.g, 12
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.q to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.s = shl i32 %indvars.iv.tr.i, 4
  %i.t = add i32 %i.r, %i.s
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.u ; 5 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !14
  %i.x = icmp eq i8 %i.w, 83
  br i1 %i.x, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !14
  %i.aa = icmp eq i8 %i.z, 86
  br i1 %i.aa, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !14
  %i.ad = icmp eq i8 %i.ac, 71
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !14
  %i.ag = icmp eq i8 %i.af, 32
  br i1 %i.ag, label %stbtt__find_table.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.sink.split, label %bb.c, !llvm.loop !21

stbtt__find_table.exit:                           ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ai = load i32, ptr %i.ah, align 1            ; 2 uses
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %stbtt__find_table.exit
  %i.aj = tail call i32 @llvm.bswap.i32(i32 %i.ai) ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.an = load i32, ptr %i.am, align 1
  %i.ao = tail call i32 @llvm.bswap.i32(i32 %i.an)
  %i.ap = add i32 %i.ao, %i.aj
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %stbtt__find_table.exit, %bb.b, %bb.h
  %.sink = phi i32 [ %i.ap, %bb.h ], [ 0, %stbtt__find_table.exit ], [ 0, %bb.b ], [ 0, %bb.g ] ; 2 uses
  store i32 %.sink, ptr %i.a, align 4, !tbaa !23
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a
  %i.aq = phi i32 [ %i.b, %bb.a ], [ %.sink, %.sink.split ]
  ret i32 %i.aq
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbtt_InitFont_internal(ptr nofree noundef captures(none) initializes((8, 20), (64, 80)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct.stbtt__buf, align 8         ; 5 uses
  %4 = alloca %struct.stbtt__buf, align 8         ; 5 uses
  %5 = alloca %struct.stbtt__buf, align 8         ; 5 uses
  %6 = alloca %struct.stbtt__buf, align 8         ; 5 uses
  %7 = alloca %struct.stbtt__buf, align 8         ; 28 uses
  %8 = alloca %struct.stbtt__buf, align 8         ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %i.b, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = zext i32 %2 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.g = load i8, ptr %i.f, align 1, !tbaa !14
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 5 ; 9 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !14
  %i.l = zext i8 %i.k to i32
  %i.m = or disjoint i32 %i.i, %i.l               ; 2 uses
  %i.n = add i32 %2, 12                           ; 10 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %stbtt__find_table.exit130, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.m to i64  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.o = shl i32 %indvars.iv.tr.i, 4
  %i.p = add i32 %i.o, %i.n
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 5 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !14
  %i.t = icmp eq i8 %i.s, 99
  br i1 %i.t, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !14
  %i.w = icmp eq i8 %i.v, 109
  br i1 %i.w, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.y = load i8, ptr %i.x, align 1, !tbaa !14
  %i.z = icmp eq i8 %i.y, 97
  br i1 %i.z, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !14
  %i.ac = icmp eq i8 %i.ab, 112
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ae = load i32, ptr %i.ad, align 1
  %i.af = tail call i32 @llvm.bswap.i32(i32 %i.ae)
  br label %.lr.ph.i123

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph.i123, label %bb.b, !llvm.loop !21

.lr.ph.i123:                                      ; preds = %bb.g, %bb.f
  %.2.i = phi i32 [ %i.af, %bb.f ], [ 0, %bb.g ]  ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.m, %.lr.ph.i123
  %indvars.iv.i125 = phi i64 [ 0, %.lr.ph.i123 ], [ %indvars.iv.next.i127, %bb.m ] ; 2 uses
  %indvars.iv.tr.i126 = trunc i64 %indvars.iv.i125 to i32
  %i.ag = shl i32 %indvars.iv.tr.i126, 4
  %i.ah = add i32 %i.ag, %i.n
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai ; 5 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !14
  %i.al = icmp eq i8 %i.ak, 108
  br i1 %i.al, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !14
  %i.ao = icmp eq i8 %i.an, 111
  br i1 %i.ao, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !14
  %i.ar = icmp eq i8 %i.aq, 99
  br i1 %i.ar, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !14
  %i.au = icmp eq i8 %i.at, 97
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.aw = load i32, ptr %i.av, align 1
  %i.ax = tail call i32 @llvm.bswap.i32(i32 %i.aw)
  br label %stbtt__find_table.exit130

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %indvars.iv.next.i127 = add nuw nsw i64 %indvars.iv.i125, 1 ; 2 uses
  %exitcond.not.i128 = icmp eq i64 %indvars.iv.next.i127, %wide.trip.count.i
  br i1 %exitcond.not.i128, label %stbtt__find_table.exit130, label %bb.h, !llvm.loop !21

stbtt__find_table.exit130:                        ; preds = %bb.m, %bb.a, %bb.l
  %.2.i342 = phi i32 [ %.2.i, %bb.l ], [ 0, %bb.a ], [ %.2.i, %bb.m ] ; 4 uses
  %.2.i129 = phi i32 [ %i.ax, %bb.l ], [ 0, %bb.a ], [ 0, %bb.m ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.2.i129, ptr %i.ay, align 8, !tbaa !27
  %i.az = load i8, ptr %i.f, align 1, !tbaa !14
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw nsw i32 %i.ba, 8
  %i.bc = load i8, ptr %i.j, align 1, !tbaa !14
  %i.bd = zext i8 %i.bc to i32
  %i.be = or disjoint i32 %i.bb, %i.bd            ; 2 uses
  %.not.i131 = icmp eq i32 %i.be, 0
  br i1 %.not.i131, label %stbtt__find_table.exit139, label %.lr.ph.i132

.lr.ph.i132:                                      ; preds = %stbtt__find_table.exit130
  %wide.trip.count.i133 = zext nneg i32 %i.be to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.s, %.lr.ph.i132
  %indvars.iv.i134 = phi i64 [ 0, %.lr.ph.i132 ], [ %indvars.iv.next.i136, %bb.s ] ; 2 uses
  %indvars.iv.tr.i135 = trunc i64 %indvars.iv.i134 to i32
  %i.bf = shl i32 %indvars.iv.tr.i135, 4
  %i.bg = add i32 %i.bf, %i.n
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %i.bh ; 5 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !14
  %i.bk = icmp eq i8 %i.bj, 104
  br i1 %i.bk, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !14
  %i.bn = icmp eq i8 %i.bm, 101
  br i1 %i.bn, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !14
  %i.bq = icmp eq i8 %i.bp, 97
  br i1 %i.bq, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !14
  %i.bt = icmp eq i8 %i.bs, 100
  br i1 %i.bt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bv = load i32, ptr %i.bu, align 1
  %i.bw = tail call i32 @llvm.bswap.i32(i32 %i.bv)
  br label %stbtt__find_table.exit139

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %indvars.iv.next.i136 = add nuw nsw i64 %indvars.iv.i134, 1 ; 2 uses
  %exitcond.not.i137 = icmp eq i64 %indvars.iv.next.i136, %wide.trip.count.i133
  br i1 %exitcond.not.i137, label %stbtt__find_table.exit139, label %bb.n, !llvm.loop !21

stbtt__find_table.exit139:                        ; preds = %bb.s, %stbtt__find_table.exit130, %bb.r
  %i.bx = phi i32 [ %i.bw, %bb.r ], [ 0, %stbtt__find_table.exit130 ], [ 0, %bb.s ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !28
  %i.bz = load i8, ptr %i.f, align 1, !tbaa !14
  %i.ca = zext i8 %i.bz to i32
  %i.cb = shl nuw nsw i32 %i.ca, 8
  %i.cc = load i8, ptr %i.j, align 1, !tbaa !14
  %i.cd = zext i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd            ; 2 uses
  %.not.i140 = icmp eq i32 %i.ce, 0
  br i1 %.not.i140, label %stbtt__find_table.exit148, label %.lr.ph.i141

.lr.ph.i141:                                      ; preds = %stbtt__find_table.exit139
  %wide.trip.count.i142 = zext nneg i32 %i.ce to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.y, %.lr.ph.i141
  %indvars.iv.i143 = phi i64 [ 0, %.lr.ph.i141 ], [ %indvars.iv.next.i145, %bb.y ] ; 2 uses
  %indvars.iv.tr.i144 = trunc i64 %indvars.iv.i143 to i32
  %i.cf = shl i32 %indvars.iv.tr.i144, 4
  %i.cg = add i32 %i.cf, %i.n
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 %i.ch ; 5 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !14
  %i.ck = icmp eq i8 %i.cj, 103
  br i1 %i.ck, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !14
  %i.cn = icmp eq i8 %i.cm, 108
  br i1 %i.cn, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !14
  %i.cq = icmp eq i8 %i.cp, 121
  br i1 %i.cq, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 3
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !14
  %i.ct = icmp eq i8 %i.cs, 102
  br i1 %i.ct, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cv = load i32, ptr %i.cu, align 1
  %i.cw = tail call i32 @llvm.bswap.i32(i32 %i.cv)
  br label %stbtt__find_table.exit148

bb.y:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %indvars.iv.next.i145 = add nuw nsw i64 %indvars.iv.i143, 1 ; 2 uses
  %exitcond.not.i146 = icmp eq i64 %indvars.iv.next.i145, %wide.trip.count.i142
  br i1 %exitcond.not.i146, label %stbtt__find_table.exit148, label %bb.t, !llvm.loop !21

stbtt__find_table.exit148:                        ; preds = %bb.y, %stbtt__find_table.exit139, %bb.x
  %.2.i147 = phi i32 [ %i.cw, %bb.x ], [ 0, %stbtt__find_table.exit139 ], [ 0, %bb.y ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.2.i147, ptr %i.cx, align 8, !tbaa !29
  %i.cy = load i8, ptr %i.f, align 1, !tbaa !14
  %i.cz = zext i8 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 8
  %i.db = load i8, ptr %i.j, align 1, !tbaa !14
  %i.dc = zext i8 %i.db to i32
  %i.dd = or disjoint i32 %i.da, %i.dc            ; 2 uses
  %.not.i149 = icmp eq i32 %i.dd, 0
  br i1 %.not.i149, label %stbtt__find_table.exit157, label %.lr.ph.i150

.lr.ph.i150:                                      ; preds = %stbtt__find_table.exit148
  %wide.trip.count.i151 = zext nneg i32 %i.dd to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.ae, %.lr.ph.i150
  %indvars.iv.i152 = phi i64 [ 0, %.lr.ph.i150 ], [ %indvars.iv.next.i154, %bb.ae ] ; 2 uses
  %indvars.iv.tr.i153 = trunc i64 %indvars.iv.i152 to i32
  %i.de = shl i32 %indvars.iv.tr.i153, 4
  %i.df = add i32 %i.de, %i.n
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 %i.dg ; 5 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !14
  %i.dj = icmp eq i8 %i.di, 104
  br i1 %i.dj, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !14
  %i.dm = icmp eq i8 %i.dl, 104
  br i1 %i.dm, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 2
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !14
  %i.dp = icmp eq i8 %i.do, 101
  br i1 %i.dp, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 3
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !14
  %i.ds = icmp eq i8 %i.dr, 97
  br i1 %i.ds, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.du = load i32, ptr %i.dt, align 1
  %i.dv = tail call i32 @llvm.bswap.i32(i32 %i.du)
  br label %stbtt__find_table.exit157

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z
  %indvars.iv.next.i154 = add nuw nsw i64 %indvars.iv.i152, 1 ; 2 uses
  %exitcond.not.i155 = icmp eq i64 %indvars.iv.next.i154, %wide.trip.count.i151
  br i1 %exitcond.not.i155, label %stbtt__find_table.exit157, label %bb.z, !llvm.loop !21

stbtt__find_table.exit157:                        ; preds = %bb.ae, %stbtt__find_table.exit148, %bb.ad
  %.2.i156 = phi i32 [ %i.dv, %bb.ad ], [ 0, %stbtt__find_table.exit148 ], [ 0, %bb.ae ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.2.i156, ptr %i.dw, align 4, !tbaa !30
  %i.dx = load i8, ptr %i.f, align 1, !tbaa !14
  %i.dy = zext i8 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 8
  %i.ea = load i8, ptr %i.j, align 1, !tbaa !14
  %i.eb = zext i8 %i.ea to i32
  %i.ec = or disjoint i32 %i.dz, %i.eb            ; 2 uses
  %.not.i158 = icmp eq i32 %i.ec, 0
  br i1 %.not.i158, label %stbtt__find_table.exit166, label %.lr.ph.i159

.lr.ph.i159:                                      ; preds = %stbtt__find_table.exit157
  %wide.trip.count.i160 = zext nneg i32 %i.ec to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ak, %.lr.ph.i159
  %indvars.iv.i161 = phi i64 [ 0, %.lr.ph.i159 ], [ %indvars.iv.next.i163, %bb.ak ] ; 2 uses
  %indvars.iv.tr.i162 = trunc i64 %indvars.iv.i161 to i32
  %i.ed = shl i32 %indvars.iv.tr.i162, 4
  %i.ee = add i32 %i.ed, %i.n
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 %i.ef ; 5 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !14
  %i.ei = icmp eq i8 %i.eh, 104
  br i1 %i.ei, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !14
  %i.el = icmp eq i8 %i.ek, 109
  br i1 %i.el, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %i.en = load i8, ptr %i.em, align 1, !tbaa !14
  %i.eo = icmp eq i8 %i.en, 116
  br i1 %i.eo, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 3
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !14
  %i.er = icmp eq i8 %i.eq, 120
  br i1 %i.er, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.es = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.et = load i32, ptr %i.es, align 1
  %i.eu = tail call i32 @llvm.bswap.i32(i32 %i.et)
  br label %stbtt__find_table.exit166

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %indvars.iv.next.i163 = add nuw nsw i64 %indvars.iv.i161, 1 ; 2 uses
  %exitcond.not.i164 = icmp eq i64 %indvars.iv.next.i163, %wide.trip.count.i160
  br i1 %exitcond.not.i164, label %stbtt__find_table.exit166, label %bb.af, !llvm.loop !21

stbtt__find_table.exit166:                        ; preds = %bb.ak, %stbtt__find_table.exit157, %bb.aj
  %.2.i165 = phi i32 [ %i.eu, %bb.aj ], [ 0, %stbtt__find_table.exit157 ], [ 0, %bb.ak ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.2.i165, ptr %i.ev, align 8, !tbaa !31
  %i.ew = load i8, ptr %i.f, align 1, !tbaa !14
  %i.ex = zext i8 %i.ew to i32
  %i.ey = shl nuw nsw i32 %i.ex, 8
  %i.ez = load i8, ptr %i.j, align 1, !tbaa !14
  %i.fa = zext i8 %i.ez to i32
  %i.fb = or disjoint i32 %i.ey, %i.fa            ; 2 uses
  %.not.i167 = icmp eq i32 %i.fb, 0
  br i1 %.not.i167, label %stbtt__find_table.exit175, label %.lr.ph.i168

.lr.ph.i168:                                      ; preds = %stbtt__find_table.exit166
  %wide.trip.count.i169 = zext nneg i32 %i.fb to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.aq, %.lr.ph.i168
  %indvars.iv.i170 = phi i64 [ 0, %.lr.ph.i168 ], [ %indvars.iv.next.i172, %bb.aq ] ; 2 uses
  %indvars.iv.tr.i171 = trunc i64 %indvars.iv.i170 to i32
  %i.fc = shl i32 %indvars.iv.tr.i171, 4
  %i.fd = add i32 %i.fc, %i.n
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 %i.fe ; 5 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !14
  %i.fh = icmp eq i8 %i.fg, 107
  br i1 %i.fh, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !14
  %i.fk = icmp eq i8 %i.fj, 101
  br i1 %i.fk, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 2
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !14
  %i.fn = icmp eq i8 %i.fm, 114
  br i1 %i.fn, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ff, i64 3
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !14
  %i.fq = icmp eq i8 %i.fp, 110
  br i1 %i.fq, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fs = load i32, ptr %i.fr, align 1
  %i.ft = tail call i32 @llvm.bswap.i32(i32 %i.fs)
  br label %stbtt__find_table.exit175

bb.aq:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al
  %indvars.iv.next.i172 = add nuw nsw i64 %indvars.iv.i170, 1 ; 2 uses
  %exitcond.not.i173 = icmp eq i64 %indvars.iv.next.i172, %wide.trip.count.i169
  br i1 %exitcond.not.i173, label %stbtt__find_table.exit175, label %bb.al, !llvm.loop !21

stbtt__find_table.exit175:                        ; preds = %bb.aq, %stbtt__find_table.exit166, %bb.ap
  %.2.i174 = phi i32 [ %i.ft, %bb.ap ], [ 0, %stbtt__find_table.exit166 ], [ 0, %bb.aq ]
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.2.i174, ptr %i.fu, align 4, !tbaa !32
  %i.fv = load i8, ptr %i.f, align 1, !tbaa !14
  %i.fw = zext i8 %i.fv to i32
  %i.fx = shl nuw nsw i32 %i.fw, 8
  %i.fy = load i8, ptr %i.j, align 1, !tbaa !14
  %i.fz = zext i8 %i.fy to i32
  %i.ga = or disjoint i32 %i.fx, %i.fz            ; 2 uses
  %.not.i176 = icmp eq i32 %i.ga, 0
  br i1 %.not.i176, label %stbtt__find_table.exit184, label %.lr.ph.i177

.lr.ph.i177:                                      ; preds = %stbtt__find_table.exit175
  %wide.trip.count.i178 = zext nneg i32 %i.ga to i64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aw, %.lr.ph.i177
  %indvars.iv.i179 = phi i64 [ 0, %.lr.ph.i177 ], [ %indvars.iv.next.i181, %bb.aw ] ; 2 uses
  %indvars.iv.tr.i180 = trunc i64 %indvars.iv.i179 to i32
  %i.gb = shl i32 %indvars.iv.tr.i180, 4
  %i.gc = add i32 %i.gb, %i.n
  %i.gd = zext i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 %i.gd ; 5 uses
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !14
  %i.gg = icmp eq i8 %i.gf, 71
  br i1 %i.gg, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 1
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !14
  %i.gj = icmp eq i8 %i.gi, 80
  br i1 %i.gj, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 2
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !14
  %i.gm = icmp eq i8 %i.gl, 79
  br i1 %i.gm, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ge, i64 3
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !14
  %i.gp = icmp eq i8 %i.go, 83
  br i1 %i.gp, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gr = load i32, ptr %i.gq, align 1
  %i.gs = tail call i32 @llvm.bswap.i32(i32 %i.gr)
  br label %stbtt__find_table.exit184

bb.aw:                                            ; preds = %bb.au, %bb.at, %bb.as, %bb.ar
  %indvars.iv.next.i181 = add nuw nsw i64 %indvars.iv.i179, 1 ; 2 uses
  %exitcond.not.i182 = icmp eq i64 %indvars.iv.next.i181, %wide.trip.count.i178
  br i1 %exitcond.not.i182, label %stbtt__find_table.exit184, label %bb.ar, !llvm.loop !21

stbtt__find_table.exit184:                        ; preds = %bb.aw, %stbtt__find_table.exit175, %bb.av
  %.2.i183 = phi i32 [ %i.gs, %bb.av ], [ 0, %stbtt__find_table.exit175 ], [ 0, %bb.aw ]
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.2.i183, ptr %i.gt, align 8, !tbaa !33
  %.not = icmp eq i32 %.2.i342, 0
  %.not111 = icmp eq i32 %i.bx, 0
  %or.cond371 = select i1 %.not, i1 true, i1 %.not111
  %.not112 = icmp eq i32 %.2.i156, 0
  %or.cond372 = select i1 %or.cond371, i1 true, i1 %.not112
  %.not113 = icmp eq i32 %.2.i165, 0
  %or.cond373 = select i1 %or.cond372, i1 true, i1 %.not113
  br i1 %or.cond373, label %._crit_edge.thread, label %bb.ax

bb.ax:                                            ; preds = %stbtt__find_table.exit184
  %.not114 = icmp eq i32 %.2.i147, 0
  br i1 %.not114, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.not119 = icmp eq i32 %.2.i129, 0
  br i1 %.not119, label %._crit_edge.thread, label %bb.cx

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.gu = load i8, ptr %i.f, align 1, !tbaa !14
  %i.gv = zext i8 %i.gu to i32
  %i.gw = shl nuw nsw i32 %i.gv, 8
  %i.gx = load i8, ptr %i.j, align 1, !tbaa !14
  %i.gy = zext i8 %i.gx to i32
  %i.gz = or disjoint i32 %i.gw, %i.gy            ; 2 uses
  %.not.i185 = icmp eq i32 %i.gz, 0
  br i1 %.not.i185, label %.critedge, label %.lr.ph.i186

.lr.ph.i186:                                      ; preds = %bb.az
  %wide.trip.count.i187 = zext nneg i32 %i.gz to i64
  br label %bb.ba

bb.ba:                                            ; preds = %bb.be, %.lr.ph.i186
  %indvars.iv.i188 = phi i64 [ 0, %.lr.ph.i186 ], [ %indvars.iv.next.i190, %bb.be ] ; 2 uses
  %indvars.iv.tr.i189 = trunc i64 %indvars.iv.i188 to i32
  %i.ha = shl i32 %indvars.iv.tr.i189, 4
  %i.hb = add i32 %i.ha, %i.n
  %i.hc = zext i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 %i.hc ; 5 uses
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !14
  %i.hf = icmp eq i8 %i.he, 67
  br i1 %i.hf, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 1
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !14
  %i.hi = icmp eq i8 %i.hh, 70
  br i1 %i.hi, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hd, i64 2
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !14
  %i.hl = icmp eq i8 %i.hk, 70
  br i1 %i.hl, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hd, i64 3
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !14
  %i.ho = icmp eq i8 %i.hn, 32
  br i1 %i.ho, label %stbtt__find_table.exit193, label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba
  %indvars.iv.next.i190 = add nuw nsw i64 %indvars.iv.i188, 1 ; 2 uses
  %exitcond.not.i191 = icmp eq i64 %indvars.iv.next.i190, %wide.trip.count.i187
  br i1 %exitcond.not.i191, label %.critedge, label %bb.ba, !llvm.loop !21

stbtt__find_table.exit193:                        ; preds = %bb.bd
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hq = load i32, ptr %i.hp, align 1            ; 2 uses
  %.not115 = icmp eq i32 %i.hq, 0
  br i1 %.not115, label %.critedge, label %bb.bf

bb.bf:                                            ; preds = %stbtt__find_table.exit193
  %i.hr = tail call i32 @llvm.bswap.i32(i32 %i.hq)
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.hu = zext i32 %i.hr to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 %i.hu
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hs, i8 0, i64 32, i1 false)
  store ptr %i.hv, ptr %i.c, align 8, !tbaa !22
  store i64 2305843009213693952, ptr %.sroa.431.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !34
  %i.hw = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 17 uses
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !8  ; 2 uses
  %i.hy = add nsw i32 %i.hx, 2
  %i.hz = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !12 ; 48 uses
  %i.ib = icmp slt i32 %i.hx, -2
  %i.ic = tail call i32 @llvm.smin.i32(i32 %i.hy, i32 %i.ia)
  %..i.i = select i1 %i.ib, i32 %i.ia, i32 %i.ic  ; 2 uses
  %.not.i194 = icmp slt i32 %..i.i, %i.ia
  br i1 %.not.i194, label %bb.bg, label %stbtt__buf_get8.exit

bb.bg:                                            ; preds = %bb.bf
  %i.id = load ptr, ptr %7, align 8, !tbaa !13
  %i.ie = sext i32 %..i.i to i64
  %i.if = getelementptr inbounds i8, ptr %i.id, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !14
  %i.ih = zext i8 %i.ig to i32
  br label %stbtt__buf_get8.exit

stbtt__buf_get8.exit:                             ; preds = %bb.bf, %bb.bg
  %.0.i = phi i32 [ %i.ih, %bb.bg ], [ 0, %bb.bf ] ; 2 uses
  %i.ii = tail call i32 @llvm.smin.i32(i32 %.0.i, i32 %i.ia) ; 4 uses
  store i32 %i.ii, ptr %i.hw, align 8, !tbaa !8
  %.not.i.i.i = icmp slt i32 %.0.i, %i.ia
  br i1 %.not.i.i.i, label %bb.bh, label %stbtt__buf_get8.exit.i.i

bb.bh:                                            ; preds = %stbtt__buf_get8.exit
  %i.ij = load ptr, ptr %7, align 8, !tbaa !13
  %i.ik = add nsw i32 %i.ii, 1                    ; 2 uses
  store i32 %i.ik, ptr %i.hw, align 8, !tbaa !8
  %i.il = sext i32 %i.ii to i64
  %i.im = getelementptr inbounds i8, ptr %i.ij, i64 %i.il
  %i.in = load i8, ptr %i.im, align 1, !tbaa !14
  %i.io = zext i8 %i.in to i32
  %i.ip = shl nuw nsw i32 %i.io, 8
  br label %stbtt__buf_get8.exit.i.i

stbtt__buf_get8.exit.i.i:                         ; preds = %bb.bh, %stbtt__buf_get8.exit
  %i.iq = phi i32 [ %i.ik, %bb.bh ], [ %i.ii, %stbtt__buf_get8.exit ] ; 4 uses
  %.0.i.i.i = phi i32 [ %i.ip, %bb.bh ], [ 0, %stbtt__buf_get8.exit ] ; 2 uses
  %.not.i.i.1.i = icmp slt i32 %i.iq, %i.ia
  br i1 %.not.i.i.1.i, label %bb.bi, label %stbtt__buf_get8.exit.i.1.i

bb.bi:                                            ; preds = %stbtt__buf_get8.exit.i.i
  %i.ir = load ptr, ptr %7, align 8, !tbaa !13
  %i.is = add nsw i32 %i.iq, 1                    ; 2 uses
  store i32 %i.is, ptr %i.hw, align 8, !tbaa !8
  %i.it = sext i32 %i.iq to i64
  %i.iu = getelementptr inbounds i8, ptr %i.ir, i64 %i.it
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !14
  %i.iw = zext i8 %i.iv to i32
  %i.ix = or disjoint i32 %.0.i.i.i, %i.iw
  br label %stbtt__buf_get8.exit.i.1.i

stbtt__buf_get8.exit.i.1.i:                       ; preds = %bb.bi, %stbtt__buf_get8.exit.i.i
  %i.iy = phi i32 [ %i.is, %bb.bi ], [ %i.iq, %stbtt__buf_get8.exit.i.i ] ; 5 uses
  %.0.i.i.1.i = phi i32 [ %i.ix, %bb.bi ], [ %.0.i.i.i, %stbtt__buf_get8.exit.i.i ] ; 2 uses
  %.not.i195 = icmp eq i32 %.0.i.i.1.i, 0
  br i1 %.not.i195, label %stbtt__cff_get_index.exit, label %bb.bj

bb.bj:                                            ; preds = %stbtt__buf_get8.exit.i.1.i
  %.not.i.i = icmp slt i32 %i.iy, %i.ia
  br i1 %.not.i.i, label %bb.bk, label %stbtt__buf_get8.exit.i

bb.bk:                                            ; preds = %bb.bj
  %i.iz = load ptr, ptr %7, align 8, !tbaa !13
  %i.ja = add nsw i32 %i.iy, 1
  %i.jb = sext i32 %i.iy to i64
  %i.jc = getelementptr inbounds i8, ptr %i.iz, i64 %i.jb
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !14
  %i.je = zext i8 %i.jd to i32
  br label %stbtt__buf_get8.exit.i

stbtt__buf_get8.exit.i:                           ; preds = %bb.bk, %bb.bj
  %.promoted = phi i32 [ %i.ja, %bb.bk ], [ %i.iy, %bb.bj ]
  %.0.i.i = phi i32 [ %i.je, %bb.bk ], [ 0, %bb.bj ] ; 6 uses
  %i.jf = mul nuw nsw i32 %.0.i.i, %.0.i.i.1.i
  %i.jg = add nsw i32 %i.jf, %.promoted           ; 2 uses
  %i.jh = icmp slt i32 %i.jg, 0
  %i.ji = tail call i32 @llvm.smin.i32(i32 %i.jg, i32 %i.ia)
  %..i.i.i = select i1 %i.jh, i32 %i.ia, i32 %i.ji ; 3 uses
  %.not22.i = icmp eq i32 %.0.i.i, 0
  br i1 %.not22.i, label %stbtt__buf_get.exit20.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %stbtt__buf_get8.exit.i
  %i.jj = load ptr, ptr %7, align 8               ; 3 uses
  %xtraiter = and i32 %.0.i.i, 1
  %i.jk = icmp eq i32 %.0.i.i, 1
  br i1 %i.jk, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %.0.i.i, 254
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %stbtt__buf_get8.exit.i17.i.1, %.lr.ph.i.i.preheader.new
  %i.jl = phi i32 [ %..i.i.i, %.lr.ph.i.i.preheader.new ], [ %i.kb, %stbtt__buf_get8.exit.i17.i.1 ] ; 4 uses
  %.056.i15.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %.0.i.i18.i.1, %stbtt__buf_get8.exit.i17.i.1 ]
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %stbtt__buf_get8.exit.i17.i.1 ]
  %i.jm = shl i32 %.056.i15.i, 8                  ; 2 uses
  %.not.i.i16.i = icmp slt i32 %i.jl, %i.ia
  br i1 %.not.i.i16.i, label %bb.bl, label %stbtt__buf_get8.exit.i17.i

bb.bl:                                            ; preds = %.lr.ph.i.i
  %i.jn = add nsw i32 %i.jl, 1
  %i.jo = sext i32 %i.jl to i64
  %i.jp = getelementptr inbounds i8, ptr %i.jj, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !14
  %i.jr = zext i8 %i.jq to i32
  %i.js = or disjoint i32 %i.jm, %i.jr
  br label %stbtt__buf_get8.exit.i17.i

stbtt__buf_get8.exit.i17.i:                       ; preds = %bb.bl, %.lr.ph.i.i
  %i.jt = phi i32 [ %i.jn, %bb.bl ], [ %i.jl, %.lr.ph.i.i ] ; 4 uses
  %.0.i.i18.i = phi i32 [ %i.js, %bb.bl ], [ %i.jm, %.lr.ph.i.i ]
  %i.ju = shl i32 %.0.i.i18.i, 8                  ; 2 uses
  %.not.i.i16.i.1 = icmp slt i32 %i.jt, %i.ia
  br i1 %.not.i.i16.i.1, label %bb.bm, label %stbtt__buf_get8.exit.i17.i.1

bb.bm:                                            ; preds = %stbtt__buf_get8.exit.i17.i
  %i.jv = add nsw i32 %i.jt, 1
  %i.jw = sext i32 %i.jt to i64
  %i.jx = getelementptr inbounds i8, ptr %i.jj, i64 %i.jw
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !14
  %i.jz = zext i8 %i.jy to i32
  %i.ka = or disjoint i32 %i.ju, %i.jz
  br label %stbtt__buf_get8.exit.i17.i.1

stbtt__buf_get8.exit.i17.i.1:                     ; preds = %bb.bm, %stbtt__buf_get8.exit.i17.i
  %i.kb = phi i32 [ %i.jv, %bb.bm ], [ %i.jt, %stbtt__buf_get8.exit.i17.i ] ; 3 uses
  %.0.i.i18.i.1 = phi i32 [ %i.ka, %bb.bm ], [ %i.ju, %stbtt__buf_get8.exit.i17.i ] ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %stbtt__buf_get.exit20.loopexit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !15

stbtt__buf_get.exit20.loopexit.i.unr-lcssa:       ; preds = %stbtt__buf_get8.exit.i17.i.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %stbtt__buf_get.exit20.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %stbtt__buf_get.exit20.loopexit.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.epil.init = phi i32 [ %..i.i.i, %.lr.ph.i.i.preheader ], [ %i.kb, %stbtt__buf_get.exit20.loopexit.i.unr-lcssa ] ; 4 uses
  %.056.i15.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %.0.i.i18.i.1, %stbtt__buf_get.exit20.loopexit.i.unr-lcssa ]
  %lcmp.mod587 = trunc i32 %.0.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod587)
  %i.kc = shl i32 %.056.i15.i.epil.init, 8        ; 2 uses
  %.not.i.i16.i.epil = icmp slt i32 %.epil.init, %i.ia
  br i1 %.not.i.i16.i.epil, label %bb.bn, label %stbtt__buf_get.exit20.loopexit.i

bb.bn:                                            ; preds = %.lr.ph.i.i.epil.preheader
  %i.kd = add nsw i32 %.epil.init, 1
  %i.ke = sext i32 %.epil.init to i64
  %i.kf = getelementptr inbounds i8, ptr %i.jj, i64 %i.ke
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !14
end_hunk_1
begin_hunk_2_@stbtt_InitFont_internal:bb.a
  br label %stbtt__buf_get.exit20.loopexit.i291

stbtt__buf_get.exit20.loopexit.i291:              ; preds = %.lr.ph.i.i284.epil.preheader, %bb.ct, %stbtt__buf_get.exit20.loopexit.i291.unr-lcssa
  %.lcssa563 = phi i32 [ %i.ud, %stbtt__buf_get.exit20.loopexit.i291.unr-lcssa ], [ %i.uf, %bb.ct ], [ %.epil.init625, %.lr.ph.i.i284.epil.preheader ]
  %.0.i.i18.i289.lcssa = phi i32 [ %.0.i.i18.i289.1, %stbtt__buf_get.exit20.loopexit.i291.unr-lcssa ], [ %i.uk, %bb.ct ], [ %i.ue, %.lr.ph.i.i284.epil.preheader ]
  %i.ul = add i32 %.0.i.i18.i289.lcssa, -1
  br label %stbtt__buf_get.exit20.i292

stbtt__buf_get.exit20.i292:                       ; preds = %stbtt__buf_get.exit20.loopexit.i291, %stbtt__buf_get8.exit.i280
  %i.um = phi i32 [ %..i.i.i282, %stbtt__buf_get8.exit.i280 ], [ %.lcssa563, %stbtt__buf_get.exit20.loopexit.i291 ]
  %.05.lcssa.i.i293 = phi i32 [ -1, %stbtt__buf_get8.exit.i280 ], [ %i.ul, %stbtt__buf_get.exit20.loopexit.i291 ]
  %i.un = add nsw i32 %.05.lcssa.i.i293, %i.um    ; 2 uses
  %i.uo = icmp slt i32 %i.un, 0
  %i.up = tail call i32 @llvm.smin.i32(i32 %i.un, i32 %i.ia)
  %..i.i21.i294 = select i1 %i.uo, i32 %i.ia, i32 %i.up ; 2 uses
  store i32 %..i.i21.i294, ptr %i.hw, align 8, !tbaa !8
  br label %stbtt__cff_get_index.exit301

stbtt__cff_get_index.exit301:                     ; preds = %stbtt__buf_get.exit20.i292, %stbtt__buf_get8.exit.i.1.i276
  %i.uq = phi i32 [ %..i.i21.i294, %stbtt__buf_get.exit20.i292 ], [ %i.ta, %stbtt__buf_get8.exit.i.1.i276 ] ; 2 uses
  %i.ur = sub nsw i32 %i.uq, %i.sj                ; 2 uses
  %i.us = or i32 %i.ur, %i.sj
  %or.cond.not.i.i295 = icmp slt i32 %i.us, 0
  %i.ut = icmp sgt i32 %i.uq, %i.ia
  %or.cond.i296 = or i1 %i.ut, %or.cond.not.i.i295 ; 2 uses
  %i.uu = load ptr, ptr %7, align 8               ; 2 uses
  %i.uv = zext nneg i32 %i.sj to i64
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uu, i64 %i.uv
  %i.ux = zext i32 %i.ur to i64
  %i.uy = shl nuw i64 %i.ux, 32
  %.sroa.0.0.i.i297 = select i1 %or.cond.i296, ptr null, ptr %i.uw
  %.sroa.5.0.i.i298 = select i1 %or.cond.i296, i64 0, i64 %i.uy
  store ptr %.sroa.0.0.i.i297, ptr %i.sk, align 8, !tbaa !22
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.5.0.i.i298, ptr %.sroa.411.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.uz = call { ptr, i64 } @stbtt__dict_get(ptr noundef nonnull %8, i32 noundef 17) ; 2 uses
  %i.va = extractvalue { ptr, i64 } %i.uz, 0
  store ptr %i.va, ptr %6, align 8
  %i.vb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.vc = extractvalue { ptr, i64 } %i.uz, 1      ; 3 uses
  store i64 %i.vc, ptr %i.vb, align 8
  %i.vd = trunc i64 %i.vc to i32
  %i.ve = lshr i64 %i.vc, 32
  %i.vf = trunc nuw i64 %i.ve to i32
  %i.vg = icmp slt i32 %i.vd, %i.vf
  br i1 %i.vg, label %.lr.ph.preheader.i, label %stbtt__dict_get_ints.exit

.lr.ph.preheader.i:                               ; preds = %stbtt__cff_get_index.exit301
  %i.vh = call i32 @stbtt__cff_int(ptr noundef nonnull %6)
  br label %stbtt__dict_get_ints.exit, !llvm.loop !20

stbtt__dict_get_ints.exit:                        ; preds = %stbtt__cff_get_index.exit301, %.lr.ph.preheader.i
  %.0339 = phi i32 [ %i.vh, %.lr.ph.preheader.i ], [ 0, %stbtt__cff_get_index.exit301 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.vi = call { ptr, i64 } @stbtt__dict_get(ptr noundef nonnull %8, i32 noundef 262) ; 2 uses
  %i.vj = extractvalue { ptr, i64 } %i.vi, 0
  store ptr %i.vj, ptr %5, align 8
  %i.vk = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.vl = extractvalue { ptr, i64 } %i.vi, 1      ; 3 uses
  store i64 %i.vl, ptr %i.vk, align 8
  %i.vm = trunc i64 %i.vl to i32
  %i.vn = lshr i64 %i.vl, 32
  %i.vo = trunc nuw i64 %i.vn to i32
  %i.vp = icmp slt i32 %i.vm, %i.vo
  br i1 %i.vp, label %.lr.ph.preheader.i305, label %stbtt__dict_get_ints.exit309

.lr.ph.preheader.i305:                            ; preds = %stbtt__dict_get_ints.exit
  %i.vq = call i32 @stbtt__cff_int(ptr noundef nonnull %5)
  %i.vr = icmp ne i32 %i.vq, 2
  br label %stbtt__dict_get_ints.exit309, !llvm.loop !20

stbtt__dict_get_ints.exit309:                     ; preds = %stbtt__dict_get_ints.exit, %.lr.ph.preheader.i305
  %.0340 = phi i1 [ %i.vr, %.lr.ph.preheader.i305 ], [ false, %stbtt__dict_get_ints.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.vs = call { ptr, i64 } @stbtt__dict_get(ptr noundef nonnull %8, i32 noundef 292) ; 2 uses
  %i.vt = extractvalue { ptr, i64 } %i.vs, 0
  store ptr %i.vt, ptr %4, align 8
  %i.vu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.vv = extractvalue { ptr, i64 } %i.vs, 1      ; 3 uses
  store i64 %i.vv, ptr %i.vu, align 8
  %i.vw = trunc i64 %i.vv to i32
  %i.vx = lshr i64 %i.vv, 32
  %i.vy = trunc nuw i64 %i.vx to i32
  %i.vz = icmp slt i32 %i.vw, %i.vy
  br i1 %i.vz, label %.lr.ph.preheader.i310, label %stbtt__dict_get_ints.exit314

.lr.ph.preheader.i310:                            ; preds = %stbtt__dict_get_ints.exit309
  %i.wa = call i32 @stbtt__cff_int(ptr noundef nonnull %4)
  br label %stbtt__dict_get_ints.exit314, !llvm.loop !20

stbtt__dict_get_ints.exit314:                     ; preds = %stbtt__dict_get_ints.exit309, %.lr.ph.preheader.i310
  %.0338 = phi i32 [ %i.wa, %.lr.ph.preheader.i310 ], [ 0, %stbtt__dict_get_ints.exit309 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.wb = call { ptr, i64 } @stbtt__dict_get(ptr noundef nonnull %8, i32 noundef 293) ; 2 uses
  %i.wc = extractvalue { ptr, i64 } %i.wb, 0
  store ptr %i.wc, ptr %3, align 8
  %i.wd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.we = extractvalue { ptr, i64 } %i.wb, 1      ; 3 uses
  store i64 %i.we, ptr %i.wd, align 8
  %i.wf = trunc i64 %i.we to i32
  %i.wg = lshr i64 %i.we, 32
  %i.wh = trunc nuw i64 %i.wg to i32
  %i.wi = icmp slt i32 %i.wf, %i.wh
  br i1 %i.wi, label %.lr.ph.preheader.i315, label %stbtt__dict_get_ints.exit319

.lr.ph.preheader.i315:                            ; preds = %stbtt__dict_get_ints.exit314
  %i.wj = call i32 @stbtt__cff_int(ptr noundef nonnull %3)
  br label %stbtt__dict_get_ints.exit319, !llvm.loop !20

stbtt__dict_get_ints.exit319:                     ; preds = %stbtt__dict_get_ints.exit314, %.lr.ph.preheader.i315
  %.0 = phi i32 [ %i.wj, %.lr.ph.preheader.i315 ], [ 0, %stbtt__dict_get_ints.exit314 ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.wk = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.wl = load i64, ptr %i.hw, align 8            ; 2 uses
  %i.wm = load ptr, ptr %8, align 8
  %i.wn = load i64, ptr %.sroa.414.0..sroa_idx, align 8
  %i.wo = tail call { ptr, i64 } @stbtt__get_subrs(ptr %i.uu, i64 %i.wl, ptr %i.wm, i64 %i.wn) ; 2 uses
  %i.wp = extractvalue { ptr, i64 } %i.wo, 0
  %i.wq = extractvalue { ptr, i64 } %i.wo, 1
  store ptr %i.wp, ptr %i.wk, align 8, !tbaa !22
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.wq, ptr %.sroa.49.0..sroa_idx, align 8
  %i.wr = icmp eq i32 %.0339, 0
  %or.cond = select i1 %.0340, i1 true, i1 %i.wr
  br i1 %or.cond, label %.critedge, label %bb.cu

bb.cu:                                            ; preds = %stbtt__dict_get_ints.exit319
  %i.ws = lshr i64 %i.wl, 32
  %i.wt = trunc nuw i64 %i.ws to i32
  %.not117 = icmp eq i32 %.0338, 0
  br i1 %.not117, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.not118 = icmp eq i32 %.0, 0
  br i1 %.not118, label %.critedge, label %stbtt__buf_range.exit

stbtt__buf_range.exit:                            ; preds = %bb.cv
  %i.wu = icmp slt i32 %.0338, 0
  %i.wv = tail call i32 @llvm.smin.i32(i32 %.0338, i32 %i.ia)
  %..i = select i1 %i.wu, i32 %i.ia, i32 %i.wv
  store i32 %..i, ptr %i.hw, align 8, !tbaa !8
  %i.ww = call { ptr, i64 } @stbtt__cff_get_index(ptr noundef nonnull %7) ; 2 uses
  %i.wx = extractvalue { ptr, i64 } %i.ww, 0
  %i.wy = extractvalue { ptr, i64 } %i.ww, 1
  store ptr %i.wx, ptr %i.hs, align 8, !tbaa !22
  store i64 %i.wy, ptr %.sroa.424.0..sroa_idx, align 8
  %i.wz = load i32, ptr %i.hz, align 4, !tbaa !12 ; 3 uses
  %i.xa = sub i32 %i.wz, %.0                      ; 2 uses
  %i.xb = or i32 %i.xa, %.0
  %or.cond.not.i = icmp slt i32 %i.xb, 0
  %i.xc = icmp sgt i32 %.0, %i.wz
  %or.cond374 = or i1 %i.xc, %or.cond.not.i       ; 2 uses
  %i.xd = load ptr, ptr %7, align 8
  %i.xe = zext nneg i32 %.0 to i64
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.xe
  %i.xg = zext i32 %i.xa to i64
  %i.xh = shl nuw i64 %i.xg, 32
  %.sroa.0.0.i = select i1 %or.cond374, ptr null, ptr %i.xf
  %.sroa.5.0.i = select i1 %or.cond374, i64 0, i64 %i.xh
  store ptr %.sroa.0.0.i, ptr %i.ht, align 8, !tbaa !22
  store i64 %.sroa.5.0.i, ptr %.sroa.422.0..sroa_idx, align 8
  br label %bb.cw

bb.cw:                                            ; preds = %stbtt__buf_range.exit, %bb.cu
  %i.xi = phi i32 [ %i.wz, %stbtt__buf_range.exit ], [ %i.wt, %bb.cu ] ; 2 uses
  %i.xj = icmp slt i32 %.0339, 0
  %i.xk = tail call i32 @llvm.smin.i32(i32 %.0339, i32 %i.xi)
  %..i323 = select i1 %i.xj, i32 %i.xi, i32 %i.xk
  store i32 %..i323, ptr %i.hw, align 8, !tbaa !8
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.xm = call { ptr, i64 } @stbtt__cff_get_index(ptr noundef nonnull %7) ; 2 uses
  %i.xn = extractvalue { ptr, i64 } %i.xm, 0
  %i.xo = extractvalue { ptr, i64 } %i.xm, 1
  store ptr %i.xn, ptr %i.xl, align 8, !tbaa !22
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.xo, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.ay
  %i.xp = load i8, ptr %i.f, align 1, !tbaa !14
  %i.xq = zext i8 %i.xp to i32
  %i.xr = shl nuw nsw i32 %i.xq, 8
  %i.xs = load i8, ptr %i.j, align 1, !tbaa !14
  %i.xt = zext i8 %i.xs to i32
  %i.xu = or disjoint i32 %i.xr, %i.xt            ; 2 uses
  %.not.i324 = icmp eq i32 %i.xu, 0
  br i1 %.not.i324, label %stbtt__find_table.exit332.thread, label %.lr.ph.i325

.lr.ph.i325:                                      ; preds = %bb.cx
  %wide.trip.count.i326 = zext nneg i32 %i.xu to i64
  br label %bb.cy

bb.cy:                                            ; preds = %bb.dc, %.lr.ph.i325
  %indvars.iv.i327 = phi i64 [ 0, %.lr.ph.i325 ], [ %indvars.iv.next.i329, %bb.dc ] ; 2 uses
  %indvars.iv.tr.i328 = trunc i64 %indvars.iv.i327 to i32
  %i.xv = shl i32 %indvars.iv.tr.i328, 4
  %i.xw = add i32 %i.xv, %i.n
  %i.xx = zext i32 %i.xw to i64
  %i.xy = getelementptr inbounds nuw i8, ptr %1, i64 %i.xx ; 5 uses
  %i.xz = load i8, ptr %i.xy, align 1, !tbaa !14
  %i.ya = icmp eq i8 %i.xz, 109
  br i1 %i.ya, label %bb.cz, label %bb.dc

bb.cz:                                            ; preds = %bb.cy
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xy, i64 1
  %i.yc = load i8, ptr %i.yb, align 1, !tbaa !14
  %i.yd = icmp eq i8 %i.yc, 97
  br i1 %i.yd, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %bb.cz
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xy, i64 2
  %i.yf = load i8, ptr %i.ye, align 1, !tbaa !14
  %i.yg = icmp eq i8 %i.yf, 120
  br i1 %i.yg, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xy, i64 3
  %i.yi = load i8, ptr %i.yh, align 1, !tbaa !14
  %i.yj = icmp eq i8 %i.yi, 112
  br i1 %i.yj, label %stbtt__find_table.exit332, label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %bb.cz, %bb.cy
  %indvars.iv.next.i329 = add nuw nsw i64 %indvars.iv.i327, 1 ; 2 uses
  %exitcond.not.i330 = icmp eq i64 %indvars.iv.next.i329, %wide.trip.count.i326
  br i1 %exitcond.not.i330, label %stbtt__find_table.exit332.thread, label %bb.cy, !llvm.loop !21

stbtt__find_table.exit332:                        ; preds = %bb.db
  %i.yk = getelementptr inbounds nuw i8, ptr %i.xy, i64 8
  %i.yl = load i32, ptr %i.yk, align 1            ; 2 uses
  %.not120 = icmp eq i32 %i.yl, 0
  br i1 %.not120, label %stbtt__find_table.exit332.thread, label %bb.dd

bb.dd:                                            ; preds = %stbtt__find_table.exit332
  %i.ym = tail call i32 @llvm.bswap.i32(i32 %i.yl)
  %i.yn = zext i32 %i.ym to i64
  %i.yo = getelementptr inbounds nuw i8, ptr %1, i64 %i.yn ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 4
  %i.yq = load i8, ptr %i.yp, align 1, !tbaa !14
  %i.yr = zext i8 %i.yq to i32
  %i.ys = shl nuw nsw i32 %i.yr, 8
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yo, i64 5
  %i.yu = load i8, ptr %i.yt, align 1, !tbaa !14
  %i.yv = zext i8 %i.yu to i32
  %i.yw = or disjoint i32 %i.ys, %i.yv
  br label %stbtt__find_table.exit332.thread

stbtt__find_table.exit332.thread:                 ; preds = %bb.dc, %stbtt__find_table.exit332, %bb.cx, %bb.dd
  %.sink = phi i32 [ %i.yw, %bb.dd ], [ 65535, %stbtt__find_table.exit332 ], [ 65535, %bb.cx ], [ 65535, %bb.dc ]
  %i.yx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sink, ptr %i.yx, align 4, !tbaa !35
  %i.yy = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 -1, ptr %i.yy, align 4, !tbaa !23
  %i.yz = zext i32 %.2.i342 to i64
  %i.za = getelementptr inbounds nuw i8, ptr %1, i64 %i.yz ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 2
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !14
  %i.zd = zext i8 %i.zc to i32
  %i.ze = shl nuw nsw i32 %i.zd, 8
  %i.zf = getelementptr inbounds nuw i8, ptr %i.za, i64 3
  %i.zg = load i8, ptr %i.zf, align 1, !tbaa !14
  %i.zh = zext i8 %i.zg to i32
  %i.zi = or disjoint i32 %i.ze, %i.zh            ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i32 0, ptr %i.zj, align 8, !tbaa !36
  %.not406 = icmp eq i32 %i.zi, 0
  br i1 %.not406, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %stbtt__find_table.exit332.thread
  %i.zk = add i32 %.2.i342, 4
  %wide.trip.count = zext nneg i32 %i.zi to i64
  br label %bb.de

bb.de:                                            ; preds = %.lr.ph, %bb.dg
  %i.zl = phi i32 [ 0, %.lr.ph ], [ %i.aaj, %bb.dg ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.dg ] ; 2 uses
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.zm = shl i32 %indvars.iv.tr, 3
  %i.zn = add i32 %i.zk, %i.zm
  %i.zo = zext i32 %i.zn to i64
  %i.zp = getelementptr inbounds nuw i8, ptr %1, i64 %i.zo ; 5 uses
  %i.zq = load i8, ptr %i.zp, align 1, !tbaa !14
  %i.zr = zext i8 %i.zq to i16
  %i.zs = shl nuw i16 %i.zr, 8
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zp, i64 1
  %i.zu = load i8, ptr %i.zt, align 1, !tbaa !14
  %i.zv = zext i8 %i.zu to i16
  %i.zw = or disjoint i16 %i.zs, %i.zv
  switch i16 %i.zw, label %bb.dg [
    i16 3, label %bb.df
    i16 0, label %.sink.split
  ]

bb.df:                                            ; preds = %bb.de
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zp, i64 2
  %i.zy = load i8, ptr %i.zx, align 1, !tbaa !14
  %i.zz = zext i8 %i.zy to i16
  %i.aaa = shl nuw i16 %i.zz, 8
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zp, i64 3
  %i.aac = load i8, ptr %i.aab, align 1, !tbaa !14
  %i.aad = zext i8 %i.aac to i16
  %i.aae = or disjoint i16 %i.aaa, %i.aad
  switch i16 %i.aae, label %bb.dg [
    i16 1, label %.sink.split
    i16 10, label %.sink.split
  ]

.sink.split:                                      ; preds = %bb.de, %bb.df, %bb.df
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zp, i64 4
  %i.aag = load i32, ptr %i.aaf, align 1
  %i.aah = tail call i32 @llvm.bswap.i32(i32 %i.aag)
  %i.aai = add i32 %i.aah, %.2.i342               ; 2 uses
  store i32 %i.aai, ptr %i.zj, align 8, !tbaa !36
  br label %bb.dg

bb.dg:                                            ; preds = %.sink.split, %bb.df, %bb.de
  %i.aaj = phi i32 [ %i.zl, %bb.df ], [ %i.zl, %bb.de ], [ %i.aai, %.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.de, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.dg
  %i.aak = icmp eq i32 %i.aaj, 0
  br i1 %i.aak, label %._crit_edge.thread, label %bb.dh

bb.dh:                                            ; preds = %._crit_edge
  %i.aal = sext i32 %i.bx to i64
  %i.aam = getelementptr inbounds i8, ptr %1, i64 %i.aal ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 50
  %i.aao = load i8, ptr %i.aan, align 1, !tbaa !14
  %i.aap = zext i8 %i.aao to i32
  %i.aaq = shl nuw nsw i32 %i.aap, 8
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aam, i64 51
  %i.aas = load i8, ptr %i.aar, align 1, !tbaa !14
  %i.aat = zext i8 %i.aas to i32
  %i.aau = or disjoint i32 %i.aaq, %i.aat
  %i.aav = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.aau, ptr %i.aav, align 4, !tbaa !38
  br label %._crit_edge.thread

.critedge:                                        ; preds = %bb.be, %bb.az, %bb.cv, %stbtt__dict_get_ints.exit319, %stbtt__find_table.exit193
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %stbtt__find_table.exit332.thread, %._crit_edge, %.critedge, %bb.ay, %stbtt__find_table.exit184, %bb.dh
  %.1 = phi i32 [ 0, %bb.ay ], [ 1, %bb.dh ], [ 0, %stbtt__find_table.exit184 ], [ 0, %.critedge ], [ 0, %._crit_edge ], [ 0, %stbtt__find_table.exit332.thread ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @stbtt_FindGlyphIndex(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !36   ; 4 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e ; 21 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !14
  %i.h = zext i8 %i.g to i16
  %i.i = shl nuw i16 %i.h, 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !14
  %i.l = zext i8 %i.k to i16
  %i.m = or disjoint i16 %i.i, %i.l               ; 3 uses
  switch i16 %i.m, label %bb.m [
    i16 0, label %bb.b
    i16 6, label %bb.d
    i16 2, label %.loopexit
    i16 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !14
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !14
  %i.t = zext i8 %i.s to i32
  %i.u = or disjoint i32 %i.q, %i.t
  %i.v = add nsw i32 %i.u, -6
  %i.w = icmp slt i32 %1, %i.v
  br i1 %i.w, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.y = sext i32 %1 to i64
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !14
  %i.ab = zext i8 %i.aa to i32
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !14
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 7
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !14
  %i.ai = zext i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.af, %i.ai            ; 3 uses
  %.not143 = icmp ult i32 %1, %i.aj
  br i1 %.not143, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !14
  %i.am = zext i8 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !14
  %i.aq = zext i8 %i.ap to i32
  %i.ar = or disjoint i32 %i.an, %i.aq
  %i.as = add nuw nsw i32 %i.ar, %i.aj
  %i.at = icmp ult i32 %1, %i.as
  br i1 %i.at, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.av = sub nuw nsw i32 %1, %i.aj
  %i.aw = shl nuw nsw i32 %i.av, 1
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ax ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !14
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw nsw i32 %i.ba, 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !14
  %i.be = zext i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bb, %i.be
  br label %.loopexit

bb.g:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !14
  %i.bi = zext i8 %i.bh to i32
  %i.bj = shl nuw nsw i32 %i.bi, 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 7
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !14
  %i.bm = zext i8 %i.bl to i32
  %i.bn = or disjoint i32 %i.bj, %i.bm            ; 2 uses
  %i.bo = lshr i32 %i.bn, 1                       ; 2 uses
  %i.bp = icmp sgt i32 %1, 65535
  br i1 %i.bp, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bq = add i32 %i.d, 14
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !14
  %i.bt = zext i8 %i.bs to i16
  %i.bu = shl nuw i16 %i.bt, 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 13
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !14
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !14
  %i.bz = zext i8 %i.by to i16
  %i.ca = shl nuw i16 %i.bz, 8                    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !14
  %i.cd = zext i8 %i.cc to i16                    ; 3 uses
  %i.ce = or disjoint i16 %i.ca, %i.cd            ; 3 uses
  %i.cf = and i8 %i.bw, -2
  %.masked = zext i8 %i.cf to i16
  %i.cg = or disjoint i16 %i.bu, %.masked         ; 2 uses
  %i.ch = zext i32 %i.bq to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ch ; 2 uses
  %i.cj = zext i16 %i.cg to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cj ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !14
  %i.cm = zext i8 %i.cl to i32
  %i.cn = shl nuw nsw i32 %i.cm, 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !14
  %i.cq = zext i8 %i.cp to i32
  %i.cr = or disjoint i32 %i.cn, %i.cq
  %.not = icmp slt i32 %1, %i.cr
end_hunk_2
begin_hunk_3_@stbtt_GetCodepointHMetrics:bb.a

bb.b:                                             ; preds = %bb.a
  br i1 %.not31.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !31
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %i.c, i64 %i.s
  %i.u = shl nsw i32 %i.a, 2
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 %i.v ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !14
  %i.y = zext i8 %i.x to i16
  %i.z = shl nuw i16 %i.y, 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !14
  %i.ac = zext i8 %i.ab to i16
  %i.ad = or disjoint i16 %i.z, %i.ac
  %i.ae = sext i16 %i.ad to i32
  store i32 %i.ae, ptr %2, align 4, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not32.i = icmp eq ptr %3, null
  br i1 %.not32.i, label %stbtt_GetGlyphHMetrics.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !31
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds i8, ptr %i.c, i64 %i.ah
  %i.aj = shl nsw i32 %i.a, 2
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 3
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.a
  br i1 %.not31.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !31
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.c, i64 %i.aq
  %i.as = shl nuw nsw i32 %i.o, 2
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr i8, ptr %i.ar, i64 %i.at  ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 -4
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !14
  %i.ax = zext i8 %i.aw to i16
  %i.ay = shl nuw i16 %i.ax, 8
  %i.az = getelementptr i8, ptr %i.au, i64 -3
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !14
  %i.bb = zext i8 %i.ba to i16
  %i.bc = or disjoint i16 %i.ay, %i.bb
  %i.bd = sext i16 %i.bc to i32
  store i32 %i.bd, ptr %2, align 4, !tbaa !19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not30.i = icmp eq ptr %3, null
  br i1 %.not30.i, label %stbtt_GetGlyphHMetrics.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !31
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %i.c, i64 %i.bg
  %i.bi = shl nuw nsw i32 %i.o, 2
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bj
  %i.bl = sub nsw i32 %i.a, %i.o
  %i.bm = shl nsw i32 %i.bl, 1
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %i.bk, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.i, %bb.e
  %.sink40.in.i = phi ptr [ %i.bp, %bb.i ], [ %i.an, %bb.e ]
  %.sink.in.in.in.i = phi ptr [ %i.bo, %bb.i ], [ %i.am, %bb.e ]
  %.sink.in.in.i = load i8, ptr %.sink.in.in.in.i, align 1, !tbaa !14
  %.sink.in.i = zext i8 %.sink.in.in.i to i16
  %.sink.i = shl nuw i16 %.sink.in.i, 8
  %.sink40.i = load i8, ptr %.sink40.in.i, align 1, !tbaa !14
  %i.bq = zext i8 %.sink40.i to i16
  %i.br = or disjoint i16 %.sink.i, %i.bq
  %i.bs = sext i16 %i.br to i32
  store i32 %i.bs, ptr %3, align 4, !tbaa !19
  br label %stbtt_GetGlyphHMetrics.exit

stbtt_GetGlyphHMetrics.exit:                      ; preds = %bb.d, %bb.h, %.sink.split.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbtt_GetFontVMetrics(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !30
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = zext i8 %i.h to i16
  %i.j = shl nuw i16 %i.i, 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = zext i8 %i.l to i16
  %i.n = or disjoint i16 %i.j, %i.m
  %i.o = sext i16 %i.n to i32
  store i32 %i.o, ptr %1, align 4, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not14 = icmp eq ptr %2, null
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !30
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  %i.w = load i8, ptr %i.v, align 1, !tbaa !14
  %i.x = zext i8 %i.w to i16
  %i.y = shl nuw i16 %i.x, 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 7
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !14
  %i.ab = zext i8 %i.aa to i16
  %i.ac = or disjoint i16 %i.y, %i.ab
  %i.ad = sext i16 %i.ac to i32
  store i32 %i.ad, ptr %2, align 4, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not15 = icmp eq ptr %3, null
  br i1 %.not15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !30
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !14
  %i.am = zext i8 %i.al to i16
  %i.an = shl nuw i16 %i.am, 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 9
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !14
  %i.aq = zext i8 %i.ap to i16
  %i.ar = or disjoint i16 %i.an, %i.aq
  %i.as = sext i16 %i.ar to i32
  store i32 %i.as, ptr %3, align 4, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbtt_GetFontVMetricsOS2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = zext i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = zext i8 %i.l to i32
  %i.n = or disjoint i32 %i.j, %i.m               ; 2 uses
  %i.o = add i32 %i.d, 12
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %stbtt__find_table.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.n to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.p = shl i32 %indvars.iv.tr.i, 4
  %i.q = add i32 %i.o, %i.p
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.r ; 5 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !14
  %i.u = icmp eq i8 %i.t, 79
  br i1 %i.u, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !14
  %i.x = icmp eq i8 %i.w, 83
  br i1 %i.x, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.z = load i8, ptr %i.y, align 1, !tbaa !14
  %i.aa = icmp eq i8 %i.z, 47
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !14
  %i.ad = icmp eq i8 %i.ac, 50
  br i1 %i.ad, label %stbtt__find_table.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stbtt__find_table.exit.thread, label %bb.b, !llvm.loop !21

stbtt__find_table.exit:                           ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.af = load i32, ptr %i.ae, align 1            ; 2 uses
  %i.ag = tail call i32 @llvm.bswap.i32(i32 %i.af) ; 3 uses
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %stbtt__find_table.exit.thread, label %bb.g

bb.g:                                             ; preds = %stbtt__find_table.exit
  %.not19 = icmp eq ptr %1, null
  br i1 %.not19, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds i8, ptr %i.b, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 68
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !14
  %i.al = zext i8 %i.ak to i16
  %i.am = shl nuw i16 %i.al, 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 69
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !14
  %i.ap = zext i8 %i.ao to i16
  %i.aq = or disjoint i16 %i.am, %i.ap
  %i.ar = sext i16 %i.aq to i32
  store i32 %i.ar, ptr %1, align 4, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not20 = icmp eq ptr %2, null
  br i1 %.not20, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = sext i32 %i.ag to i64
  %i.at = getelementptr inbounds i8, ptr %i.b, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 70
  %i.av = load i8, ptr %i.au, align 1, !tbaa !14
  %i.aw = zext i8 %i.av to i16
  %i.ax = shl nuw i16 %i.aw, 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 71
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !14
  %i.ba = zext i8 %i.az to i16
  %i.bb = or disjoint i16 %i.ax, %i.ba
  %i.bc = sext i16 %i.bb to i32
  store i32 %i.bc, ptr %2, align 4, !tbaa !19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not21 = icmp eq ptr %3, null
  br i1 %.not21, label %stbtt__find_table.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = sext i32 %i.ag to i64
  %i.be = getelementptr inbounds i8, ptr %i.b, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !14
  %i.bh = zext i8 %i.bg to i16
  %i.bi = shl nuw i16 %i.bh, 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 73
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !14
  %i.bl = zext i8 %i.bk to i16
  %i.bm = or disjoint i16 %i.bi, %i.bl
  %i.bn = sext i16 %i.bm to i32
  store i32 %i.bn, ptr %3, align 4, !tbaa !19
  br label %stbtt__find_table.exit.thread

stbtt__find_table.exit.thread:                    ; preds = %bb.f, %bb.a, %bb.k, %bb.l, %stbtt__find_table.exit
  %.0 = phi i32 [ 0, %stbtt__find_table.exit ], [ 1, %bb.l ], [ 1, %bb.k ], [ 0, %bb.a ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbtt_GetFontBoundingBox(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !28
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = zext i8 %i.h to i16
  %i.j = shl nuw i16 %i.i, 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 37
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = zext i8 %i.l to i16
  %i.n = or disjoint i16 %i.j, %i.m
  %i.o = sext i16 %i.n to i32
  store i32 %i.o, ptr %1, align 4, !tbaa !19
  %i.p = load i32, ptr %i.c, align 4, !tbaa !28
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %i.b, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 38
  %i.t = load i8, ptr %i.s, align 1, !tbaa !14
  %i.u = zext i8 %i.t to i16
  %i.v = shl nuw i16 %i.u, 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 39
  %i.x = load i8, ptr %i.w, align 1, !tbaa !14
  %i.y = zext i8 %i.x to i16
  %i.z = or disjoint i16 %i.v, %i.y
  %i.aa = sext i16 %i.z to i32
  store i32 %i.aa, ptr %2, align 4, !tbaa !19
  %i.ab = load i32, ptr %i.c, align 4, !tbaa !28
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !14
  %i.ag = zext i8 %i.af to i16
  %i.ah = shl nuw i16 %i.ag, 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 41
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !14
  %i.ak = zext i8 %i.aj to i16
  %i.al = or disjoint i16 %i.ah, %i.ak
  %i.am = sext i16 %i.al to i32
  store i32 %i.am, ptr %3, align 4, !tbaa !19
  %i.an = load i32, ptr %i.c, align 4, !tbaa !28
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %i.b, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 42
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !14
  %i.as = zext i8 %i.ar to i16
  %i.at = shl nuw i16 %i.as, 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 43
  %i.av = load i8, ptr %i.au, align 1, !tbaa !14
  %i.aw = zext i8 %i.av to i16
  %i.ax = or disjoint i16 %i.at, %i.aw
  %i.ay = sext i16 %i.ax to i32
  store i32 %i.ay, ptr %4, align 4, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define float @stbtt_ScaleForPixelHeight(ptr nofree noundef readonly captures(none) %0, float noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !30
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = zext i8 %i.h to i16
  %i.j = shl nuw i16 %i.i, 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = zext i8 %i.l to i16
  %i.n = or disjoint i16 %i.j, %i.m
  %i.o = sext i16 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  %i.r = zext i8 %i.q to i16
  %i.s = shl nuw i16 %i.r, 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 7
  %i.u = load i8, ptr %i.t, align 1, !tbaa !14
  %i.v = zext i8 %i.u to i16
  %i.w = or disjoint i16 %i.s, %i.v
  %i.x = sext i16 %i.w to i32
  %i.y = sub nsw i32 %i.o, %i.x
  %i.z = sitofp i32 %i.y to float
  %i.aa = fdiv float %1, %i.z
  ret float %i.aa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define float @stbtt_ScaleForMappingEmToPixels(ptr nofree noundef readonly captures(none) %0, float noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !28
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 18
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = zext i8 %i.h to i16
  %i.j = shl nuw i16 %i.i, 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 19
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = zext i8 %i.l to i16
  %i.n = or disjoint i16 %i.j, %i.m
  %i.o = uitofp i16 %i.n to float
  %i.p = fdiv float %1, %i.o
  ret float %i.p
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @stbtt_FreeShape(ptr nofree noundef readnone captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #19 {
bb.a:
  tail call void @free(ptr noundef %1) #29
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @stbtt_FindSVGDoc(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %stbtt__get_svg.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !26   ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i8, ptr %i.j, align 1, !tbaa !14
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  %i.o = load i8, ptr %i.n, align 1, !tbaa !14
  %i.p = zext i8 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 2 uses
  %i.r = add i32 %i.g, 12
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %.sink.split.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %wide.trip.count.i.i = zext nneg i32 %i.q to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.g ] ; 2 uses
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.s = shl i32 %indvars.iv.tr.i.i, 4
  %i.t = add i32 %i.r, %i.s
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.u ; 5 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !14
  %i.x = icmp eq i8 %i.w, 83
  br i1 %i.x, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !14
  %i.aa = icmp eq i8 %i.z, 86
  br i1 %i.aa, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !14
  %i.ad = icmp eq i8 %i.ac, 71
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !14
  %i.ag = icmp eq i8 %i.af, 32
  br i1 %i.ag, label %stbtt__find_table.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.sink.split.i, label %bb.c, !llvm.loop !21

stbtt__find_table.exit.i:                         ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ai = load i32, ptr %i.ah, align 1            ; 2 uses
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %.sink.split.i, label %bb.h

bb.h:                                             ; preds = %stbtt__find_table.exit.i
  %i.aj = tail call i32 @llvm.bswap.i32(i32 %i.ai) ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.an = load i32, ptr %i.am, align 1
  %i.ao = tail call i32 @llvm.bswap.i32(i32 %i.an)
  %i.ap = add i32 %i.ao, %i.aj
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %bb.h, %stbtt__find_table.exit.i, %bb.b
  %.sink.i = phi i32 [ %i.ap, %bb.h ], [ 0, %stbtt__find_table.exit.i ], [ 0, %bb.b ], [ 0, %bb.g ] ; 2 uses
  store i32 %.sink.i, ptr %i.c, align 4, !tbaa !23
  br label %stbtt__get_svg.exit

stbtt__get_svg.exit:                              ; preds = %bb.a, %.sink.split.i
  %i.aq = phi i32 [ %i.d, %bb.a ], [ %.sink.i, %.sink.split.i ]
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.b, i64 %i.ar ; 3 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !14
  %i.au = zext i8 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !14
  %i.ay = zext i8 %i.ax to i32
  %i.az = or disjoint i32 %i.av, %i.ay            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %.not27 = icmp eq i32 %i.az, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %stbtt__get_svg.exit
  %wide.trip.count = zext nneg i32 %i.az to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.bb = mul nuw nsw i64 %indvars.iv, 12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bb ; 5 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !14
  %i.be = zext i8 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !14
  %i.bi = zext i8 %i.bh to i32
  %i.bj = or disjoint i32 %i.bf, %i.bi
  %.not = icmp slt i32 %1, %i.bj
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !14
  %i.bm = zext i8 %i.bl to i32
  %i.bn = shl nuw nsw i32 %i.bm, 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 3
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !14
  %i.bq = zext i8 %i.bp to i32
  %i.br = or disjoint i32 %i.bn, %i.bq
  %.not19 = icmp samesign ugt i32 %1, %i.br
  br i1 %.not19, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !100

._crit_edge:                                      ; preds = %bb.j, %bb.i, %stbtt__get_svg.exit
  %.2 = phi ptr [ null, %stbtt__get_svg.exit ], [ %i.bc, %bb.i ], [ null, %bb.j ]
  ret ptr %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @stbtt_GetGlyphSVG(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @stbtt_FindSVGDoc(ptr noundef nonnull %0, i32 noundef %1) ; 6 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.c, align 4, !tbaa !23
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %i.b, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.k = load i8, ptr %i.j, align 1, !tbaa !14
  %i.l = zext i8 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %i.o = load i8, ptr %i.n, align 1, !tbaa !14
  %i.p = zext i8 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.s = load i8, ptr %i.r, align 1, !tbaa !14
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 7
  %i.w = load i8, ptr %i.v, align 1, !tbaa !14
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.q
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x
  store ptr %i.ab, ptr %2, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ad = load i32, ptr %i.ac, align 1
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %i.ad)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ %i.ae, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @stbtt_GetCodepointSVG(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @stbtt_FindGlyphIndex(ptr noundef %0, i32 noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !23
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %stbtt_GetGlyphSVG.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @stbtt_FindSVGDoc(ptr noundef nonnull %0, i32 noundef %i.a) ; 6 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %stbtt_GetGlyphSVG.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.d, align 4, !tbaa !23
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds i8, ptr %i.c, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = zext i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !14
  %i.q = zext i8 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  %i.t = load i8, ptr %i.s, align 1, !tbaa !14
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 7
  %i.x = load i8, ptr %i.w, align 1, !tbaa !14
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.r
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.n
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.v
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y
  store ptr %i.ac, ptr %2, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ae = load i32, ptr %i.ad, align 1
  %i.af = tail call i32 @llvm.bswap.i32(i32 %i.ae)
  br label %stbtt_GetGlyphSVG.exit

end_hunk_3
begin_hunk_4_@stbtt__CompareUTF8toUTF16_bigendian_prefix:bb.a
  %i.h = icmp samesign ult i32 %i.g, 128
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %.not93 = icmp slt i32 %.064100, %1
  br i1 %.not93, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i32 %.064100, 1
  %i.j = sext i32 %.064100 to i64
  %i.k = getelementptr inbounds i8, ptr %0, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
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
  %i.r = load i8, ptr %i.q, align 1, !tbaa !14
  %i.s = zext i8 %i.r to i32
  %i.t = lshr i32 %i.g, 6
  %i.u = or disjoint i32 %i.t, 192
  %.not91 = icmp eq i32 %i.u, %i.s
  br i1 %.not91, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %.064100, 2
  %i.w = sext i32 %i.o to i64
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !14
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
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !14
  %i.ah = load i8, ptr %i.ad, align 1, !tbaa !14
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 8
  %i.ak = zext i8 %i.ag to i32                    ; 2 uses
  %i.al = or disjoint i32 %i.aj, %i.ak
  %i.am = shl nuw nsw i32 %i.g, 10
  %i.an = add nsw i32 %i.am, -56613888
  %i.ao = add nuw nsw i32 %i.an, %i.al            ; 3 uses
  %i.ap = sext i32 %.064100 to i64
  %i.aq = getelementptr i8, ptr %0, i64 %i.ap     ; 3 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !14
  %i.as = zext i8 %i.ar to i32
  %i.at = lshr i32 %i.ao, 18
  %i.au = add nuw nsw i32 %i.at, 240
  %.not86 = icmp eq i32 %i.au, %i.as
  br i1 %.not86, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr i8, ptr %i.aq, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !14
  %i.ax = zext i8 %i.aw to i32
  %i.ay = lshr i32 %i.ao, 12
  %i.az = and i32 %i.ay, 63
  %i.ba = or disjoint i32 %i.az, 128
  %.not87 = icmp eq i32 %i.ba, %i.ax
  br i1 %.not87, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr i8, ptr %i.aq, i64 2
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !14
  %i.bd = zext i8 %i.bc to i32
  %i.be = lshr i32 %i.ao, 6
  %i.bf = and i32 %i.be, 63
  %i.bg = or disjoint i32 %i.bf, 128
  %.not88 = icmp eq i32 %i.bg, %i.bd
  br i1 %.not88, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.bh = sext i32 %i.ae to i64
  %i.bi = getelementptr inbounds i8, ptr %0, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !14
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
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !14
  %i.bt = zext i8 %i.bs to i32
  %i.bu = lshr i32 %i.b, 4
  %i.bv = or disjoint i32 %i.bu, 224
  %.not82 = icmp eq i32 %i.bv, %i.bt
  br i1 %.not82, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr i8, ptr %i.br, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !14
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
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !14
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
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !244

.critedge:                                        ; preds = %bb.s, %bb.r, %bb.p, %bb.o, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b, %bb.q, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ -1, %bb.r ], [ -1, %bb.p ], [ -1, %bb.o ], [ -1, %bb.m ], [ -1, %bb.g ], [ -1, %bb.f ], [ -1, %bb.q ], [ -1, %bb.e ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.l ], [ -1, %bb.k ], [ -1, %bb.j ], [ -1, %bb.i ], [ %.2, %bb.s ]
  ret i32 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 0, 2) i32 @stbtt_CompareUTF8toUTF16_bigendian_internal(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 @stbtt__CompareUTF8toUTF16_bigendian_prefix(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  %i.b = icmp eq i32 %1, %i.a
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @stbtt_GetFontNameString(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = zext i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = zext i8 %i.l to i32
  %i.n = or disjoint i32 %i.j, %i.m               ; 2 uses
  %i.o = add i32 %i.d, 12
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %stbtt__find_table.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.n to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.p = shl i32 %indvars.iv.tr.i, 4
  %i.q = add i32 %i.o, %i.p
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.r ; 5 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !14
  %i.u = icmp eq i8 %i.t, 110
  br i1 %i.u, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !14
  %i.x = icmp eq i8 %i.w, 97
  br i1 %i.x, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.z = load i8, ptr %i.y, align 1, !tbaa !14
  %i.aa = icmp eq i8 %i.z, 109
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !14
  %i.ad = icmp eq i8 %i.ac, 101
  br i1 %i.ad, label %stbtt__find_table.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stbtt__find_table.exit.thread, label %bb.b, !llvm.loop !21

stbtt__find_table.exit:                           ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.af = load i32, ptr %i.ae, align 1            ; 2 uses
  %i.ag = tail call i32 @llvm.bswap.i32(i32 %i.af) ; 3 uses
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %stbtt__find_table.exit.thread, label %bb.g

bb.g:                                             ; preds = %stbtt__find_table.exit
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ah ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !14
  %i.al = zext i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 3
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !14
  %i.ap = zext i8 %i.ao to i32
  %i.aq = or disjoint i32 %i.am, %i.ap            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !14
  %i.at = zext i8 %i.as to i32
  %i.au = shl nuw nsw i32 %i.at, 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 5
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !14
  %i.ax = zext i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.au, %i.ax
  %i.az = add i32 %i.ay, %i.ag
  %.not47 = icmp eq i32 %i.aq, 0
  br i1 %.not47, label %stbtt__find_table.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ba = add i32 %i.ag, 6
  %wide.trip.count = zext nneg i32 %i.aq to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %i.bb = trunc i64 %indvars.iv to i32
  %i.bc = mul i32 %i.bb, 12
  %i.bd = add i32 %i.ba, %i.bc
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.be ; 12 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !14
  %i.bh = zext i8 %i.bg to i32
  %i.bi = shl nuw nsw i32 %i.bh, 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !14
  %i.bl = zext i8 %i.bk to i32
  %i.bm = or disjoint i32 %i.bi, %i.bl
  %i.bn = icmp eq i32 %2, %i.bm
  br i1 %i.bn, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !14
  %i.bq = zext i8 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bf, i64 3
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !14
  %i.bu = zext i8 %i.bt to i32
  %i.bv = or disjoint i32 %i.br, %i.bu
  %i.bw = icmp eq i32 %3, %i.bv
  br i1 %i.bw, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !14
  %i.bz = zext i8 %i.by to i32
  %i.ca = shl nuw nsw i32 %i.bz, 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bf, i64 5
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !14
  %i.cd = zext i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.ca, %i.cd
  %i.cf = icmp eq i32 %4, %i.ce
  br i1 %i.cf, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bf, i64 6
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !14
  %i.ci = zext i8 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bf, i64 7
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !14
  %i.cm = zext i8 %i.cl to i32
  %i.cn = or disjoint i32 %i.cj, %i.cm
  %i.co = icmp eq i32 %5, %i.cn
  br i1 %i.co, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !14
  %i.cr = zext i8 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bf, i64 9
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !14
  %i.cv = zext i8 %i.cu to i32
  %i.cw = or disjoint i32 %i.cs, %i.cv
  store i32 %i.cw, ptr %1, align 4, !tbaa !19
  %i.cx = sext i32 %i.az to i64
  %i.cy = getelementptr inbounds i8, ptr %i.b, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bf, i64 10
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !14
  %i.db = zext i8 %i.da to i64
  %i.dc = shl nuw nsw i64 %i.db, 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bf, i64 11
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !14
  %i.df = zext i8 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.dc
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.df
  br label %stbtt__find_table.exit.thread

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %stbtt__find_table.exit.thread, label %bb.h, !llvm.loop !245

stbtt__find_table.exit.thread:                    ; preds = %bb.f, %bb.m, %bb.g, %bb.a, %bb.l, %stbtt__find_table.exit
  %.2 = phi ptr [ %i.dh, %bb.l ], [ null, %stbtt__find_table.exit ], [ null, %bb.g ], [ null, %bb.a ], [ null, %bb.m ], [ null, %bb.f ]
  ret ptr %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 0, 2) i32 @stbtt__matchpair(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #7 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.d = load i8, ptr %i.c, align 1, !tbaa !14
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = zext i8 %i.h to i32
  %i.j = or disjoint i32 %i.f, %i.i               ; 2 uses
  %.not99 = icmp eq i32 %i.j, 0
  br i1 %.not99, label %.critedge91, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = zext i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !14
  %i.q = zext i8 %i.p to i32
  %i.r = or disjoint i32 %i.n, %i.q
  %i.s = add i32 %i.r, %1
  %i.t = add i32 %1, 6
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u ; 2 uses
  %i.w = zext nneg i32 %i.j to i64                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %i.x = trunc i64 %indvars.iv to i32
  %i.y = mul i32 %i.x, 12
  %i.z = add i32 %i.t, %i.y
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa ; 24 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 6
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !14
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 7
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !14
  %i.ai = zext i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.af, %i.ai
  %i.ak = icmp eq i32 %4, %i.aj
  br i1 %i.ak, label %bb.c, label %.critedge
end_hunk_4
begin_hunk_5_@stbtt__matchpair:bb.a
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !14
  %i.ay = zext i8 %i.ax to i16
  %i.az = or disjoint i16 %i.av, %i.ay            ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !14
  %i.bc = zext i8 %i.bb to i16
  %i.bd = shl nuw i16 %i.bc, 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ab, i64 5
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !14
  %i.bg = zext i8 %i.bf to i16
  %i.bh = or disjoint i16 %i.bd, %i.bg
  %i.bi = icmp eq i16 %i.ar, 0
  br i1 %i.bi, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bj = icmp eq i16 %i.ar, 3
  %i.bk = icmp eq i16 %i.az, 1
  %i.bl = icmp eq i16 %i.az, 10
  %i.bm = or i1 %i.bk, %i.bl
  %or.cond89 = select i1 %i.bj, i1 %i.bm, i1 false
  br i1 %or.cond89, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !14
  %i.bp = zext i8 %i.bo to i32
  %i.bq = shl nuw nsw i32 %i.bp, 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.ab, i64 9
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !14
  %i.bt = zext i8 %i.bs to i32
  %i.bu = or disjoint i32 %i.bq, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ab, i64 10
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !14
  %i.bx = zext i8 %i.bw to i64
  %i.by = shl nuw nsw i64 %i.bx, 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ab, i64 11
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !14
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.by
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cb
  %i.ce = tail call i32 @stbtt__CompareUTF8toUTF16_bigendian_prefix(ptr noundef %2, i32 noundef %3, ptr noundef %i.cd, i32 noundef %i.bu) ; 6 uses
  %i.cf = icmp sgt i32 %i.ce, -1
  br i1 %i.cf, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.cg = add nuw nsw i64 %indvars.iv, 1
  %i.ch = icmp samesign ult i64 %i.cg, %i.w
  br i1 %i.ch, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ab, i64 18
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !14
  %i.ck = zext i8 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ab, i64 19
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !14
  %i.co = zext i8 %i.cn to i32
  %i.cp = or disjoint i32 %i.cl, %i.co
  %i.cq = icmp eq i32 %5, %i.cp
  br i1 %i.cq, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !14
  %i.ct = zext i8 %i.cs to i16
  %i.cu = shl nuw i16 %i.ct, 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ab, i64 13
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !14
  %i.cx = zext i8 %i.cw to i16
  %i.cy = or disjoint i16 %i.cu, %i.cx
  %i.cz = icmp eq i16 %i.cy, %i.ar
  br i1 %i.cz, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.da = getelementptr inbounds nuw i8, ptr %i.ab, i64 14
  %i.db = load i8, ptr %i.da, align 1, !tbaa !14
  %i.dc = zext i8 %i.db to i16
  %i.dd = shl nuw i16 %i.dc, 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.ab, i64 15
  %i.df = load i8, ptr %i.de, align 1, !tbaa !14
  %i.dg = zext i8 %i.df to i16
  %i.dh = or disjoint i16 %i.dd, %i.dg
  %i.di = icmp eq i16 %i.dh, %i.az
  br i1 %i.di, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !14
  %i.dl = zext i8 %i.dk to i16
  %i.dm = shl nuw i16 %i.dl, 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ab, i64 17
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !14
  %i.dp = zext i8 %i.do to i16
  %i.dq = or disjoint i16 %i.dm, %i.dp
  %i.dr = icmp eq i16 %i.dq, %i.bh
  br i1 %i.dr, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !14
  %i.du = zext i8 %i.dt to i16
  %i.dv = shl nuw i16 %i.du, 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ab, i64 21
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !14
  %i.dy = zext i8 %i.dx to i16
  %i.dz = or disjoint i16 %i.dv, %i.dy            ; 2 uses
  %i.ea = zext i16 %i.dz to i32
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ab, i64 22
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !14
  %i.ed = zext i8 %i.ec to i64
  %i.ee = shl nuw nsw i64 %i.ed, 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ab, i64 23
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !14
  %i.eh = zext i8 %i.eg to i64
  %i.ei = icmp eq i16 %i.dz, 0
  br i1 %i.ei, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ej = icmp eq i32 %i.ce, %3
  br i1 %i.ej, label %.critedge91, label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.ek = icmp slt i32 %i.ce, %3
  br i1 %i.ek, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.el = zext nneg i32 %i.ce to i64
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !14
  %i.eo = icmp eq i8 %i.en, 32
  br i1 %i.eo, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.ep = add nuw nsw i32 %i.ce, 1                ; 2 uses
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 %i.eq
  %i.es = sub nuw nsw i32 %3, %i.ep               ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ee
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.eh
  %i.ev = tail call i32 @stbtt__CompareUTF8toUTF16_bigendian_prefix(ptr noundef nonnull readonly %i.er, i32 noundef %i.es, ptr noundef readonly %i.eu, i32 noundef %i.ea)
  %.not = icmp eq i32 %i.es, %i.ev
  br i1 %.not, label %.critedge91, label %.critedge

bb.p:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %i.ew = icmp eq i32 %i.ce, %3
  br i1 %i.ew, label %.critedge91, label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.m, %bb.n, %bb.o, %bb.l, %bb.p, %bb.e, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.w
  br i1 %exitcond.not, label %.critedge91, label %bb.b, !llvm.loop !246

.critedge91:                                      ; preds = %.critedge, %bb.l, %bb.o, %bb.p, %bb.a
  %.6 = phi i32 [ 0, %bb.a ], [ 1, %bb.l ], [ 1, %bb.o ], [ 1, %bb.p ], [ 0, %.critedge ]
  ret i32 %.6
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 0, 2) i32 @stbtt__matches(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #31
  %i.b = trunc i64 %i.a to i32                    ; 6 uses
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 4 uses
  %i.e = tail call i32 @stbtt__isfont(ptr noundef %i.d)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %stbtt__find_table.exit56.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not39 = icmp eq i32 %3, 0                     ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !14 ; 2 uses
  %.pre74 = add i32 %1, 12                        ; 2 uses
  br i1 %.not39, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert65 = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %.pre66 = load i8, ptr %.phi.trans.insert65, align 1, !tbaa !14
  %.pre67 = zext i8 %.pre to i32
  %.pre68 = shl nuw nsw i32 %.pre67, 8
  %.pre70 = zext i8 %.pre66 to i32
  %.pre72 = or disjoint i32 %.pre68, %.pre70
  br label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.f = zext i8 %.pre to i32
  %i.g = shl nuw nsw i32 %i.f, 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.i = load i8, ptr %i.h, align 1, !tbaa !14
  %i.j = zext i8 %i.i to i32
  %i.k = or disjoint i32 %i.g, %i.j               ; 3 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %stbtt__find_table.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %i.k to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 2 uses
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.l = shl i32 %indvars.iv.tr.i, 4
  %i.m = add i32 %.pre74, %i.l
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 5 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !14
  %i.q = icmp eq i8 %i.p, 104
  br i1 %i.q, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !14
  %i.t = icmp eq i8 %i.s, 101
  br i1 %i.t, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !14
  %i.w = icmp eq i8 %i.v, 97
  br i1 %i.w, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.y = load i8, ptr %i.x, align 1, !tbaa !14
  %i.z = icmp eq i8 %i.y, 100
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ab = load i32, ptr %i.aa, align 1
  %i.ac = tail call i32 @llvm.bswap.i32(i32 %i.ab)
  %i.ad = zext i32 %i.ac to i64
  br label %stbtt__find_table.exit

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stbtt__find_table.exit, label %bb.d, !llvm.loop !21

stbtt__find_table.exit:                           ; preds = %bb.i, %bb.c, %bb.h
  %.2.i = phi i64 [ %i.ad, %bb.h ], [ 0, %bb.c ], [ 0, %bb.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.2.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 45
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !14
  %i.ah = and i8 %i.ag, 7
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = and i32 %3, 7
  %.not40 = icmp eq i32 %i.aj, %i.ai
  br i1 %.not40, label %bb.j, label %stbtt__find_table.exit56.thread

bb.j:                                             ; preds = %._crit_edge, %stbtt__find_table.exit
  %.pre-phi73 = phi i32 [ %.pre72, %._crit_edge ], [ %i.k, %stbtt__find_table.exit ] ; 2 uses
  %.not.i48 = icmp eq i32 %.pre-phi73, 0
  br i1 %.not.i48, label %stbtt__find_table.exit56.thread, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %bb.j
  %wide.trip.count.i50 = zext nneg i32 %.pre-phi73 to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.lr.ph.i49
  %indvars.iv.i51 = phi i64 [ 0, %.lr.ph.i49 ], [ %indvars.iv.next.i53, %bb.o ] ; 2 uses
  %indvars.iv.tr.i52 = trunc i64 %indvars.iv.i51 to i32
  %i.ak = shl i32 %indvars.iv.tr.i52, 4
  %i.al = add i32 %.pre74, %i.ak
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.am ; 5 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !14
  %i.ap = icmp eq i8 %i.ao, 110
  br i1 %i.ap, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !14
  %i.as = icmp eq i8 %i.ar, 97
  br i1 %i.as, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.au = load i8, ptr %i.at, align 1, !tbaa !14
  %i.av = icmp eq i8 %i.au, 109
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !14
  %i.ay = icmp eq i8 %i.ax, 101
  br i1 %i.ay, label %stbtt__find_table.exit56, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %indvars.iv.next.i53 = add nuw nsw i64 %indvars.iv.i51, 1 ; 2 uses
  %exitcond.not.i54 = icmp eq i64 %indvars.iv.next.i53, %wide.trip.count.i50
  br i1 %exitcond.not.i54, label %stbtt__find_table.exit56.thread, label %bb.k, !llvm.loop !21

stbtt__find_table.exit56:                         ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ba = load i32, ptr %i.az, align 1            ; 2 uses
  %i.bb = tail call i32 @llvm.bswap.i32(i32 %i.ba) ; 6 uses
  %.not41 = icmp eq i32 %i.ba, 0
  br i1 %.not41, label %stbtt__find_table.exit56.thread, label %bb.p

bb.p:                                             ; preds = %stbtt__find_table.exit56
  br i1 %.not39, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = tail call i32 @stbtt__matchpair(ptr noundef nonnull %0, i32 noundef %i.bb, ptr noundef nonnull %2, i32 noundef %i.b, i32 noundef 16, i32 noundef -1)
  %.not45 = icmp eq i32 %i.bc, 0
  br i1 %.not45, label %bb.r, label %stbtt__find_table.exit56.thread

bb.r:                                             ; preds = %bb.q
  %i.bd = tail call i32 @stbtt__matchpair(ptr noundef nonnull %0, i32 noundef %i.bb, ptr noundef nonnull %2, i32 noundef %i.b, i32 noundef 1, i32 noundef -1)
  %.not46 = icmp eq i32 %i.bd, 0
  br i1 %.not46, label %bb.s, label %stbtt__find_table.exit56.thread

bb.s:                                             ; preds = %bb.r
  %i.be = tail call i32 @stbtt__matchpair(ptr noundef nonnull %0, i32 noundef %i.bb, ptr noundef nonnull %2, i32 noundef %i.b, i32 noundef 3, i32 noundef -1)
  %.not47 = icmp eq i32 %i.be, 0
  br i1 %.not47, label %bb.w, label %stbtt__find_table.exit56.thread

bb.t:                                             ; preds = %bb.p
  %i.bf = tail call i32 @stbtt__matchpair(ptr noundef nonnull %0, i32 noundef %i.bb, ptr noundef nonnull %2, i32 noundef %i.b, i32 noundef 16, i32 noundef 17)
  %.not42 = icmp eq i32 %i.bf, 0
  br i1 %.not42, label %bb.u, label %stbtt__find_table.exit56.thread

bb.u:                                             ; preds = %bb.t
  %i.bg = tail call i32 @stbtt__matchpair(ptr noundef nonnull %0, i32 noundef %i.bb, ptr noundef nonnull %2, i32 noundef %i.b, i32 noundef 1, i32 noundef 2)
  %.not43 = icmp eq i32 %i.bg, 0
  br i1 %.not43, label %bb.v, label %stbtt__find_table.exit56.thread

bb.v:                                             ; preds = %bb.u
  %i.bh = tail call i32 @stbtt__matchpair(ptr noundef nonnull %0, i32 noundef %i.bb, ptr noundef nonnull %2, i32 noundef %i.b, i32 noundef 3, i32 noundef -1)
  %.not44 = icmp eq i32 %i.bh, 0
  br i1 %.not44, label %bb.w, label %stbtt__find_table.exit56.thread

bb.w:                                             ; preds = %bb.v, %bb.s
  br label %stbtt__find_table.exit56.thread

stbtt__find_table.exit56.thread:                  ; preds = %bb.o, %bb.j, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %stbtt__find_table.exit56, %stbtt__find_table.exit, %bb.a, %bb.w
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %stbtt__find_table.exit56 ], [ 1, %bb.q ], [ 1, %bb.r ], [ 0, %bb.w ], [ 1, %bb.s ], [ 1, %bb.t ], [ 1, %bb.u ], [ 0, %stbtt__find_table.exit ], [ 1, %bb.v ], [ 0, %bb.j ], [ 0, %bb.o ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #27

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @stbtt_FindMatchingFont_internal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 @stbtt_GetFontOffsetForIndex_internal(ptr noundef readonly %0, i32 noundef 0) ; 3 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %.thread, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.c = add nuw nsw i32 %.01118, 1               ; 2 uses
  %i.d = tail call i32 @stbtt_GetFontOffsetForIndex_internal(ptr noundef readonly %0, i32 noundef %i.c) ; 3 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.01118 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  %i.g = tail call i32 @stbtt__matches(ptr noundef %0, i32 noundef %i.f, ptr noundef %1, i32 noundef %2)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.b, %bb.a
  %.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.d, %bb.b ], [ %i.f, %.lr.ph ]
  ret i32 %.lcssa
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -2147483647, -2147483648) i32 @stbtt_BakeFontBitmap(ptr noundef %0, i32 noundef %1, float noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef writeonly captures(none) %8) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call i32 @stbtt_BakeFontBitmap_internal(ptr noundef %0, i32 noundef %1, float noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @stbtt_GetNumberOfFonts(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @stbtt__isfont(ptr noundef readonly %0)
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %stbtt_GetNumberOfFonts_internal.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !14
  %i.c = icmp eq i8 %i.b, 116
  br i1 %i.c, label %bb.c, label %stbtt_GetNumberOfFonts_internal.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14
  %i.f = icmp eq i8 %i.e, 116
  br i1 %i.f, label %bb.d, label %stbtt_GetNumberOfFonts_internal.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = icmp eq i8 %i.h, 99
  br i1 %i.i, label %bb.e, label %stbtt_GetNumberOfFonts_internal.exit

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !14
  %i.l = icmp eq i8 %i.k, 102
  br i1 %i.l, label %bb.f, label %stbtt_GetNumberOfFonts_internal.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 1
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.n)
  switch i32 %i.o, label %stbtt_GetNumberOfFonts_internal.exit [
    i32 65536, label %bb.g
    i32 131072, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i32, ptr %i.p, align 1
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.q)
  br label %stbtt_GetNumberOfFonts_internal.exit

stbtt_GetNumberOfFonts_internal.exit:             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i32 [ 1, %bb.a ], [ %i.r, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @stbtt_FindMatchingFont(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 @stbtt_GetFontOffsetForIndex_internal(ptr noundef readonly %0, i32 noundef 0) ; 3 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %stbtt_FindMatchingFont_internal.exit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = add nuw nsw i32 %.01118.i, 1             ; 2 uses
  %i.d = tail call i32 @stbtt_GetFontOffsetForIndex_internal(ptr noundef readonly %0, i32 noundef %i.c) ; 3 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %stbtt_FindMatchingFont_internal.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.01118.i = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  %i.g = tail call i32 @stbtt__matches(ptr noundef readonly %0, i32 noundef %i.f, ptr noundef readonly %1, i32 noundef %2)
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.b, label %stbtt_FindMatchingFont_internal.exit

stbtt_FindMatchingFont_internal.exit:             ; preds = %bb.b, %.lr.ph.i, %bb.a
  %.lcssa.i = phi i32 [ %i.a, %bb.a ], [ %i.f, %.lr.ph.i ], [ %i.d, %bb.b ]
  ret i32 %.lcssa.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 0, 2) i32 @stbtt_CompareUTF8toUTF16_bigendian(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 @stbtt__CompareUTF8toUTF16_bigendian_prefix(ptr noundef readonly %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3)
  %i.b = icmp eq i32 %1, %i.a
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

declare float @sqrtf(float) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_5
