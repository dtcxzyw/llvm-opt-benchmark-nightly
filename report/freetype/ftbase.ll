Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/ftbase?download=true
inline.NumInlined: 363
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@FT_GlyphLoader_Done:bb.a
bb.f:                                             ; preds = %ft_mem_free.exit24.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !108
  tail call void %i.q(ptr noundef %i.a, ptr noundef nonnull %i.o) #30, !inline_history !118
  br label %ft_mem_free.exit26.i

ft_mem_free.exit26.i:                             ; preds = %bb.f, %ft_mem_free.exit24.i
  store ptr null, ptr %i.n, align 8, !tbaa !112
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !113  ; 2 uses
  %.not.i27.i = icmp eq ptr %i.s, null
  br i1 %.not.i27.i, label %ft_mem_free.exit, label %bb.g

bb.g:                                             ; preds = %ft_mem_free.exit26.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !108
  tail call void %i.u(ptr noundef %i.a, ptr noundef nonnull %i.s) #30, !inline_history !118
  br label %ft_mem_free.exit

ft_mem_free.exit:                                 ; preds = %ft_mem_free.exit26.i, %bb.g
  store ptr null, ptr %i.r, align 8, !tbaa !113
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.v, align 8, !tbaa !114
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.w, align 8, !tbaa !115
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !116
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.y, align 8, !tbaa !117
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 0, ptr %i.ab, align 2, !tbaa !99
  store i16 0, ptr %i.z, align 8, !tbaa !100
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.ac, align 8, !tbaa !101
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.ad, align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aa, ptr noundef nonnull align 8 dereferenceable(72) %i.z, i64 72, i1 false), !tbaa.struct !103
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !108
  tail call void %i.af(ptr noundef %i.a, ptr noundef nonnull %0) #30, !inline_history !109
  br label %bb.h

bb.h:                                             ; preds = %ft_mem_free.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 65) i32 @FT_GlyphLoader_CreateExtra(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !90     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !115  ; 4 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %ft_mem_realloc.exit.thread20, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !112
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %ft_mem_realloc.exit.thread20

bb.c:                                             ; preds = %bb.b
  %i.g = shl i32 %i.c, 1                          ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %ft_mem_realloc.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ugt i32 %i.g, 134217727
  br i1 %i.i, label %ft_mem_realloc.exit.thread20, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !87
  %i.l = shl i32 %i.c, 5
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = tail call ptr %i.k(ptr noundef %i.a, i64 noundef %i.m) #30, !inline_history !119 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %ft_mem_realloc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.m, i1 false)
  %.pre = load i32, ptr %i.b, align 8, !tbaa !115
  br label %ft_mem_realloc.exit.thread

ft_mem_realloc.exit.thread:                       ; preds = %bb.f, %bb.c
  %i.p = phi i32 [ %i.c, %bb.c ], [ %.pre, %bb.f ]
  %.134.i24.i.ph = phi ptr [ null, %bb.c ], [ %i.n, %bb.f ] ; 3 uses
  store ptr %.134.i24.i.ph, ptr %i.e, align 8, !tbaa !112
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 1, ptr %i.q, align 4, !tbaa !120
  %i.r = zext i32 %i.p to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.134.i24.i.ph, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.s, ptr %i.t, align 8, !tbaa !114
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !121  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.h, label %bb.g

ft_mem_realloc.exit:                              ; preds = %bb.e
  store ptr null, ptr %i.e, align 8, !tbaa !112
  br label %ft_mem_realloc.exit.thread20

bb.g:                                             ; preds = %ft_mem_realloc.exit.thread
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.y = load i16, ptr %i.x, align 2, !tbaa !122
  %i.z = zext i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.z
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %ft_mem_realloc.exit.thread
  %i.ab = phi ptr [ %i.aa, %bb.g ], [ null, %ft_mem_realloc.exit.thread ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !121
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !123 ; 2 uses
  %.not23.i = icmp eq ptr %i.ae, null
  br i1 %.not23.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !122
  %i.ah = zext i16 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aj = phi ptr [ %i.ai, %bb.i ], [ null, %bb.h ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !123
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !124 ; 2 uses
  %.not24.i = icmp eq ptr %i.am, null
  br i1 %.not24.i, label %FT_GlyphLoader_Adjust_Points.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load i16, ptr %i.u, align 8, !tbaa !125
  %i.ao = zext i16 %i.an to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.ao
  br label %FT_GlyphLoader_Adjust_Points.exit

FT_GlyphLoader_Adjust_Points.exit:                ; preds = %bb.k, %bb.j
  %i.aq = phi ptr [ %i.ap, %bb.k ], [ null, %bb.j ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !124
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.at = load i16, ptr %i.as, align 2, !tbaa !122
  %i.au = zext i16 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.134.i24.i.ph, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !126
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.au
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !127
  br label %ft_mem_realloc.exit.thread20

ft_mem_realloc.exit.thread20:                     ; preds = %bb.d, %ft_mem_realloc.exit, %FT_GlyphLoader_Adjust_Points.exit, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %FT_GlyphLoader_Adjust_Points.exit ], [ 64, %ft_mem_realloc.exit ], [ 10, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @ft_mem_realloc(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = or i64 %2, %1
  %i.b = or i64 %i.a, %3
  %or.cond3.not.i = icmp sgt i64 %i.b, -1
  br i1 %or.cond3.not.i, label %bb.b, label %ft_mem_qrealloc.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %3, 0
  %i.d = icmp eq i64 %1, 0
  %or.cond5.i = or i1 %i.d, %i.c
  br i1 %or.cond5.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %4, null
  br i1 %.not.i.i, label %ft_mem_qrealloc.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !108
  tail call void %i.f(ptr noundef %0, ptr noundef nonnull %4) #30, !inline_history !128
  br label %ft_mem_qrealloc.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.g = udiv i64 2147483647, %1
  %i.h = icmp sgt i64 %3, %i.g
  br i1 %i.h, label %ft_mem_qrealloc.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !87
  %i.l = mul nsw i64 %3, %1
  %i.m = tail call ptr %i.k(ptr noundef %0, i64 noundef %i.l) #30, !inline_history !129 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br label %ft_mem_qrealloc.exit

bb.h:                                             ; preds = %bb.f
  %i.o = mul nsw i64 %2, %1
  %i.p = mul nsw i64 %3, %1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !130
  %i.s = tail call ptr %i.r(ptr noundef %0, i64 noundef %i.o, i64 noundef %i.p, ptr noundef %4) #30, !inline_history !129 ; 2 uses
  %.not.i = icmp eq ptr %i.s, null                ; 2 uses
  %..i = select i1 %.not.i, ptr %4, ptr %i.s
  br label %ft_mem_qrealloc.exit

ft_mem_qrealloc.exit:                             ; preds = %bb.g, %bb.h
  %.sink = phi i1 [ %i.n, %bb.g ], [ %.not.i, %bb.h ] ; 2 uses
  %.134.i = phi ptr [ %i.m, %bb.g ], [ %..i, %bb.h ] ; 4 uses
  %spec.select41.i = select i1 %.sink, i32 64, i32 0
  %not..sink = xor i1 %.sink, true
  %i.t = icmp ne ptr %.134.i, null
  %or.cond = select i1 %not..sink, i1 %i.t, i1 false
  %i.u = icmp sgt i64 %3, %2
  %or.cond18 = and i1 %i.u, %or.cond
  br i1 %or.cond18, label %bb.i, label %ft_mem_qrealloc.exit.thread

bb.i:                                             ; preds = %ft_mem_qrealloc.exit
  %i.v = mul nsw i64 %2, %1
  %i.w = getelementptr inbounds i8, ptr %.134.i, i64 %i.v
  %i.x = sub nuw nsw i64 %3, %2
  %i.y = mul nsw i64 %i.x, %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.w, i8 0, i64 %i.y, i1 false)
  br label %ft_mem_qrealloc.exit.thread

ft_mem_qrealloc.exit.thread:                      ; preds = %bb.d, %bb.c, %bb.e, %bb.a, %bb.i, %ft_mem_qrealloc.exit
  %.1.i25 = phi i32 [ %spec.select41.i, %ft_mem_qrealloc.exit ], [ 0, %bb.i ], [ 0, %bb.d ], [ 0, %bb.c ], [ 10, %bb.e ], [ 6, %bb.a ]
  %.134.i24 = phi ptr [ %.134.i, %ft_mem_qrealloc.exit ], [ %.134.i, %bb.i ], [ null, %bb.d ], [ null, %bb.c ], [ %4, %bb.e ], [ %4, %bb.a ]
  store i32 %.1.i25, ptr %5, align 4, !tbaa !98
  ret ptr %.134.i24
}

; Function Attrs: nounwind uwtable
define hidden i32 @FT_GlyphLoader_CheckPoints(ptr nofree noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !90     ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !115  ; 5 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !112
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.j = shl i32 %i.f, 1                          ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %ft_mem_realloc.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ugt i32 %i.j, 134217727
  br i1 %i.l, label %FT_GlyphLoader_Adjust_Points.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !87
  %i.o = shl i32 %i.f, 5
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = tail call ptr %i.n(ptr noundef %i.b, i64 noundef %i.p) #30, !inline_history !131 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %ft_mem_realloc.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 0, i64 %i.p, i1 false)
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !115
  br label %ft_mem_realloc.exit.thread.i

ft_mem_realloc.exit.thread.i:                     ; preds = %bb.f, %bb.c
  %i.s = phi i32 [ %i.f, %bb.c ], [ %.pre.i, %bb.f ] ; 2 uses
  %.134.i24.i.ph.i = phi ptr [ null, %bb.c ], [ %i.q, %bb.f ] ; 3 uses
  store ptr %.134.i24.i.ph.i, ptr %i.h, align 8, !tbaa !112
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 1, ptr %i.t, align 4, !tbaa !120
  %i.u = zext i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.134.i24.i.ph.i, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.v, ptr %i.w, align 8, !tbaa !114
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !121  ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

ft_mem_realloc.exit.i:                            ; preds = %bb.e
  store ptr null, ptr %i.h, align 8, !tbaa !112
  br label %FT_GlyphLoader_Adjust_Points.exit.thread

bb.g:                                             ; preds = %ft_mem_realloc.exit.thread.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !122
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.ab
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %ft_mem_realloc.exit.thread.i
  %i.ad = phi ptr [ %i.ac, %bb.g ], [ null, %ft_mem_realloc.exit.thread.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !121
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !123 ; 2 uses
  %.not23.i.i = icmp eq ptr %i.ag, null
  br i1 %.not23.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !122
  %i.aj = zext i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = phi ptr [ %i.ak, %bb.i ], [ null, %bb.h ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.al, ptr %i.am, align 8, !tbaa !123
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !124 ; 2 uses
  %.not24.i.i = icmp eq ptr %i.ao, null
  br i1 %.not24.i.i, label %FT_GlyphLoader_Adjust_Points.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = load i16, ptr %i.c, align 8, !tbaa !125
  %i.aq = zext i16 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.aq
  br label %FT_GlyphLoader_Adjust_Points.exit.i

FT_GlyphLoader_Adjust_Points.exit.i:              ; preds = %bb.k, %bb.j
  %i.as = phi ptr [ %i.ar, %bb.k ], [ null, %bb.j ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.as, ptr %i.at, align 8, !tbaa !124
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.av = load i16, ptr %i.au, align 2, !tbaa !122
  %i.aw = zext i16 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %.134.i24.i.ph.i, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !126
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !127
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.b, %FT_GlyphLoader_Adjust_Points.exit.i
  %i.bb = phi i32 [ 0, %bb.a ], [ %i.f, %bb.b ], [ %i.s, %FT_GlyphLoader_Adjust_Points.exit.i ] ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 7 uses
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !122
  %i.be = zext i16 %i.bd to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !122
  %i.bh = zext i16 %i.bg to i32
  %i.bi = add i32 %1, %i.be
  %i.bj = add i32 %i.bi, %i.bh                    ; 3 uses
  %.not = icmp ugt i32 %i.bj, %i.bb               ; 2 uses
  br i1 %.not, label %bb.m, label %bb.ae

bb.m:                                             ; preds = %bb.l
  %i.bk = icmp ugt i32 %i.bj, 65535
  br i1 %i.bk, label %FT_GlyphLoader_Adjust_Points.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = lshr i32 %i.bb, 1
  %i.bm = add i32 %i.bl, %i.bb
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.bj, i32 %i.bm)
  %i.bn = add i32 %spec.select, 7                 ; 2 uses
  %i.bo = and i32 %i.bn, -8
  %i.bp = icmp ugt i32 %i.bn, 65535
  %spec.store.select = select i1 %i.bp, i32 65535, i32 %i.bo ; 7 uses
  %i.bq = zext i32 %i.bb to i64                   ; 8 uses
  %i.br = zext i32 %spec.store.select to i64      ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !121 ; 5 uses
  %i.bu = icmp eq i32 %spec.store.select, 0
  br i1 %i.bu, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !108
  tail call void %i.bw(ptr noundef %i.b, ptr noundef nonnull %i.bt) #30, !inline_history !132
  br label %bb.v

bb.q:                                             ; preds = %bb.n
  %i.bx = icmp ugt i32 %spec.store.select, 134217727
  br i1 %i.bx, label %ft_mem_realloc.exit.thread118, label %bb.r

ft_mem_realloc.exit.thread118:                    ; preds = %bb.q
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !121
  br label %FT_GlyphLoader_Adjust_Points.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.by = icmp eq i32 %i.bb, 0                    ; 2 uses
  br i1 %i.by, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !87
  %i.cb = shl nuw nsw i64 %i.br, 4
  %i.cc = tail call ptr %i.ca(ptr noundef %i.b, i64 noundef %i.cb) #30, !inline_history !119 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br label %ft_mem_qrealloc.exit.i

bb.t:                                             ; preds = %bb.r
  %i.ce = shl nuw nsw i64 %i.bq, 4
  %i.cf = shl nuw nsw i64 %i.br, 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !130
  %i.ci = tail call ptr %i.ch(ptr noundef %i.b, i64 noundef %i.ce, i64 noundef %i.cf, ptr noundef %i.bt) #30, !inline_history !119 ; 2 uses
  %.not.i.i86 = icmp eq ptr %i.ci, null           ; 2 uses
  %..i.i = select i1 %.not.i.i86, ptr %i.bt, ptr %i.ci
  br label %ft_mem_qrealloc.exit.i

ft_mem_qrealloc.exit.i:                           ; preds = %bb.t, %bb.s
  %.sink.i = phi i1 [ %i.cd, %bb.s ], [ %.not.i.i86, %bb.t ] ; 2 uses
  %.134.i.i = phi ptr [ %i.cc, %bb.s ], [ %..i.i, %bb.t ] ; 4 uses
  %not..sink.i = xor i1 %.sink.i, true
end_hunk_0
begin_hunk_1_@FT_CMap_Done:bb.a

bb.c:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv59 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next60, %bb.p ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 9 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !327
  %i.k = icmp eq ptr %i.j, %0
  br i1 %i.k, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.l = trunc nuw nsw i64 %indvars.iv to i32
  %i.m = add nsw i32 %i.e, -1                     ; 2 uses
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !327  ; 3 uses
  %i.q = icmp eq i32 %i.m, 0
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !108
  tail call void %i.s(ptr noundef %i.c, ptr noundef nonnull %i.h) #30, !inline_history !128
  br label %ft_mem_qrealloc.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp sgt i32 %i.e, 268435456
  br i1 %i.t, label %ft_mem_qrealloc.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = shl nuw nsw i64 %wide.trip.count, 3
  %i.v = shl nuw nsw i64 %i.n, 3
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !130
  %i.y = tail call ptr %i.x(ptr noundef %i.c, i64 noundef %i.u, i64 noundef %i.v, ptr noundef nonnull %i.h) #30, !inline_history !129 ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %ft_mem_qrealloc.exit.thread, label %ft_mem_qrealloc.exit

ft_mem_qrealloc.exit.thread:                      ; preds = %bb.f, %bb.g
  store ptr %i.h, ptr %i.g, align 8, !tbaa !325
  br label %.critedge

ft_mem_qrealloc.exit:                             ; preds = %bb.g, %bb.e
  %.134.i = phi ptr [ %i.y, %bb.g ], [ null, %bb.e ] ; 7 uses
  store ptr %.134.i, ptr %i.g, align 8, !tbaa !325
  %i.z = load i32, ptr %i.d, align 8, !tbaa !326  ; 4 uses
  %.03453 = add nuw nsw i32 %i.l, 1
  %i.aa = icmp slt i32 %.03453, %i.z
  br i1 %i.aa, label %.lr.ph56, label %ft_mem_qrealloc.exit.._crit_edge_crit_edge

ft_mem_qrealloc.exit.._crit_edge_crit_edge:       ; preds = %ft_mem_qrealloc.exit
  %.pre = add nsw i32 %i.z, -1
  br label %._crit_edge

.lr.ph56:                                         ; preds = %ft_mem_qrealloc.exit
  %i.ab = add i32 %i.z, -2
  %i.ac = zext i32 %i.ab to i64                   ; 3 uses
  %i.ad = add nsw i32 %i.z, -1                    ; 3 uses
  %wide.trip.count70 = zext i32 %i.ad to i64      ; 3 uses
  %i.ae = sub nsw i64 %wide.trip.count70, %indvars.iv
  %.neg = add nuw i64 %indvars.iv, 1
  %xtraiter = and i64 %i.ae, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph56
  %i.af = icmp eq i64 %indvars.iv, %i.ac
  br i1 %i.af, label %.prol.loopexit.unr-lcssa, label %bb.h

bb.h:                                             ; preds = %.prol.preheader
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.134.i, i64 %indvars.iv59
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !327
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.h, %.prol.preheader
  %.sink.prol = phi ptr [ %i.ah, %bb.h ], [ %i.p, %.prol.preheader ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.134.i, i64 %indvars.iv
  store ptr %.sink.prol, ptr %i.ai, align 8, !tbaa !327
  %indvars.iv.next63.prol = add nuw nsw i64 %indvars.iv59, 1
  %indvars.iv.next66.prol = add nuw nsw i64 %indvars.iv, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph56
  %indvars.iv65.unr = phi i64 [ %indvars.iv, %.lr.ph56 ], [ %indvars.iv.next66.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv62.unr = phi i64 [ %indvars.iv59, %.lr.ph56 ], [ %indvars.iv.next63.prol, %.prol.loopexit.unr-lcssa ]
  %i.aj = icmp eq i64 %.neg, %wide.trip.count70
  br i1 %i.aj, label %._crit_edge, label %.lr.ph56.new

.lr.ph56.new:                                     ; preds = %.prol.loopexit, %bb.l
  %indvars.iv65 = phi i64 [ %indvars.iv.next66.1, %bb.l ], [ %indvars.iv65.unr, %.prol.loopexit ] ; 4 uses
  %indvars.iv62 = phi i64 [ %indvars.iv.next63.1, %bb.l ], [ %indvars.iv62.unr, %.prol.loopexit ] ; 3 uses
  %i.ak = icmp eq i64 %indvars.iv65, %i.ac
  br i1 %i.ak, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph56.new
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.134.i, i64 %indvars.iv62
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !327
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph56.new, %bb.i
  %.sink = phi ptr [ %i.am, %bb.i ], [ %i.p, %.lr.ph56.new ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.134.i, i64 %indvars.iv65
  store ptr %.sink, ptr %i.an, align 8, !tbaa !327
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %i.ao = icmp eq i64 %indvars.iv.next66, %i.ac
  br i1 %i.ao, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.134.i, i64 %indvars.iv62
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !327
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink.1 = phi ptr [ %i.ar, %bb.k ], [ %i.p, %bb.j ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.134.i, i64 %indvars.iv.next66
  store ptr %.sink.1, ptr %i.as, align 8, !tbaa !327
  %indvars.iv.next63.1 = add nuw nsw i64 %indvars.iv62, 2
  %indvars.iv.next66.1 = add nuw nsw i64 %indvars.iv65, 2 ; 2 uses
  %exitcond71.not.1 = icmp eq i64 %indvars.iv.next66.1, %wide.trip.count70
  br i1 %exitcond71.not.1, label %._crit_edge, label %.lr.ph56.new, !llvm.loop !446

._crit_edge:                                      ; preds = %.prol.loopexit, %bb.l, %ft_mem_qrealloc.exit.._crit_edge_crit_edge
  %.pre-phi = phi i32 [ %.pre, %ft_mem_qrealloc.exit.._crit_edge_crit_edge ], [ %i.ad, %bb.l ], [ %i.ad, %.prol.loopexit ]
  store i32 %.pre-phi, ptr %i.d, align 8, !tbaa !326
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !317
  %i.av = icmp eq ptr %i.au, %0
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge
  store ptr null, ptr %i.at, align 8, !tbaa !317
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !318
  %i.ay = load ptr, ptr %0, align 8, !tbaa !396
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 184
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !207 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !397 ; 2 uses
  %.not.i40 = icmp eq ptr %i.bc, null
  br i1 %.not.i40, label %ft_cmap_done_internal.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void %i.bc(ptr noundef nonnull %0) #30, !inline_history !447
  br label %ft_cmap_done_internal.exit

ft_cmap_done_internal.exit:                       ; preds = %bb.n, %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !108
  tail call void %i.be(ptr noundef %i.ba, ptr noundef nonnull %0) #30, !inline_history !448
  br label %.critedge

bb.p:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  br i1 %exitcond.not, label %.critedge, label %bb.c, !llvm.loop !449

.critedge:                                        ; preds = %bb.p, %bb.b, %ft_cmap_done_internal.exit, %ft_mem_qrealloc.exit.thread, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @ft_mem_qrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = or i64 %2, %1
  %i.b = or i64 %i.a, %3
  %or.cond3.not = icmp sgt i64 %i.b, -1
  br i1 %or.cond3.not, label %bb.b, label %ft_mem_free.exit

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %3, 0
  %i.d = icmp eq i64 %1, 0
  %or.cond5 = or i1 %i.d, %i.c
  br i1 %or.cond5, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %4, null
  br i1 %.not.i, label %ft_mem_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !108
  tail call void %i.f(ptr noundef %0, ptr noundef nonnull %4) #30, !inline_history !109
  br label %ft_mem_free.exit

bb.e:                                             ; preds = %bb.b
  %i.g = udiv i64 2147483647, %1
  %i.h = icmp sgt i64 %3, %i.g
  br i1 %i.h, label %ft_mem_free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !87
  %i.l = mul nsw i64 %3, %1
  %i.m = tail call ptr %i.k(ptr noundef %0, i64 noundef %i.l) #30 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  %spec.select41 = select i1 %i.n, i32 64, i32 0
  br label %ft_mem_free.exit

bb.h:                                             ; preds = %bb.f
  %i.o = mul nsw i64 %2, %1
  %i.p = mul nsw i64 %3, %1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !130
  %i.s = tail call ptr %i.r(ptr noundef %0, i64 noundef %i.o, i64 noundef %i.p, ptr noundef %4) #30 ; 2 uses
  %.not = icmp eq ptr %i.s, null                  ; 2 uses
  %. = select i1 %.not, ptr %4, ptr %i.s
  %.42 = select i1 %.not, i32 64, i32 0
  br label %ft_mem_free.exit

ft_mem_free.exit:                                 ; preds = %bb.d, %bb.c, %bb.g, %bb.e, %bb.a, %bb.h
  %.134 = phi ptr [ %., %bb.h ], [ %i.m, %bb.g ], [ %4, %bb.a ], [ %4, %bb.e ], [ null, %bb.c ], [ null, %bb.d ]
  %.1 = phi i32 [ %.42, %bb.h ], [ %spec.select41, %bb.g ], [ 6, %bb.a ], [ 10, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ]
  store i32 %.1, ptr %5, align 4, !tbaa !98
  ret ptr %.134
}

; Function Attrs: nounwind uwtable
define hidden i32 @FT_CMap_New(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !331    ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !207  ; 7 uses
  %i.f = load i64, ptr %0, align 8, !tbaa !450    ; 4 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %ft_mem_qalloc.exit.i, label %ft_mem_qalloc.exit.thread.i

ft_mem_qalloc.exit.thread.i:                      ; preds = %bb.c
  %.not14.i.i = icmp ne i64 %i.f, 0
  tail call void @llvm.assume(i1 %.not14.i.i)
  br label %ft_mem_alloc.exit

ft_mem_qalloc.exit.i:                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !87
  %i.j = tail call ptr %i.i(ptr noundef %i.e, i64 noundef %i.f) #30, !inline_history !89 ; 10 uses
  %.not.i.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i.not.i, label %ft_mem_alloc.exit, label %select.unfold

select.unfold:                                    ; preds = %ft_mem_qalloc.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.j, i8 0, i64 %i.f, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !451
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store ptr %0, ptr %i.k, align 8, !tbaa !318
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !452  ; 2 uses
  %.not35 = icmp eq ptr %i.m, null
  br i1 %.not35, label %bb.e, label %bb.d

bb.d:                                             ; preds = %select.unfold
  %i.n = tail call i32 %i.m(ptr noundef nonnull %i.j, ptr noundef %1) #30 ; 2 uses
  %.not36 = icmp eq i32 %i.n, 0
  br i1 %.not36, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d, %select.unfold
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !326  ; 4 uses
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = add nsw i32 %i.p, 1                      ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !325  ; 6 uses
  %i.v = or i64 %i.s, %i.q
  %or.cond3.not.i = icmp sgt i64 %i.v, -1
  br i1 %or.cond3.not.i, label %bb.f, label %ft_mem_qrealloc.exit

bb.f:                                             ; preds = %bb.e
  %i.w = icmp eq i32 %i.r, 0
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !108
  tail call void %i.y(ptr noundef nonnull %i.e, ptr noundef nonnull %i.u) #30, !inline_history !128
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.z = icmp sgt i32 %i.p, 268435454
  br i1 %i.z, label %ft_mem_qrealloc.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp eq i32 %i.p, 0
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !87
  %i.ac = tail call ptr %i.ab(ptr noundef nonnull %i.e, i64 noundef 8) #30, !inline_history !129 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %ft_mem_qrealloc.exit, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ae = shl nuw nsw i64 %i.q, 3
  %i.af = shl nuw nsw i64 %i.s, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !130
  %i.ai = tail call ptr %i.ah(ptr noundef nonnull %i.e, i64 noundef %i.ae, i64 noundef %i.af, ptr noundef %i.u) #30, !inline_history !129 ; 2 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %ft_mem_qrealloc.exit, label %bb.l

ft_mem_qrealloc.exit:                             ; preds = %bb.j, %bb.k, %bb.e, %bb.h
  %.134.i = phi ptr [ %i.u, %bb.h ], [ %i.u, %bb.k ], [ %i.u, %bb.e ], [ null, %bb.j ]
  %.1.i = phi i32 [ 10, %bb.h ], [ 64, %bb.k ], [ 6, %bb.e ], [ 64, %bb.j ]
  store ptr %.134.i, ptr %i.t, align 8, !tbaa !325
  br label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.j
  %.134.i.ph = phi ptr [ %i.ai, %bb.k ], [ %i.ac, %bb.j ] ; 2 uses
  store ptr %.134.i.ph, ptr %i.t, align 8, !tbaa !325
  %i.aj = load i32, ptr %i.o, align 8, !tbaa !326 ; 2 uses
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.o, align 8, !tbaa !326
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %.134.i.ph, i64 %i.al
  store ptr %i.j, ptr %i.am, align 8, !tbaa !327
  br label %ft_mem_alloc.exit

ft_mem_alloc.exit:                                ; preds = %ft_mem_qalloc.exit.thread.i, %ft_mem_qalloc.exit.i, %bb.l, %ft_cmap_done_internal.exit
  %.042 = phi i32 [ 0, %bb.l ], [ %.1, %ft_cmap_done_internal.exit ], [ 6, %ft_mem_qalloc.exit.thread.i ], [ 64, %ft_mem_qalloc.exit.i ] ; 2 uses
  %.0 = phi ptr [ %i.j, %bb.l ], [ null, %ft_cmap_done_internal.exit ], [ null, %ft_mem_qalloc.exit.thread.i ], [ null, %ft_mem_qalloc.exit.i ]
  %.not38 = icmp eq ptr %3, null
  br i1 %.not38, label %bb.p, label %bb.m

bb.m:                                             ; preds = %ft_mem_alloc.exit
  store ptr %.0, ptr %3, align 8, !tbaa !453
  br label %bb.p

bb.n:                                             ; preds = %ft_mem_qrealloc.exit, %bb.d
  %.1 = phi i32 [ %.1.i, %ft_mem_qrealloc.exit ], [ %i.n, %bb.d ]
  %i.an = load ptr, ptr %i.k, align 8, !tbaa !318
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !396
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 184
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !207 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !397 ; 2 uses
  %.not.i39 = icmp eq ptr %i.as, null
  br i1 %.not.i39, label %ft_cmap_done_internal.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void %i.as(ptr noundef nonnull %i.j) #30, !inline_history !447
  br label %ft_cmap_done_internal.exit

ft_cmap_done_internal.exit:                       ; preds = %bb.n, %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !108
  tail call void %i.au(ptr noundef %i.aq, ptr noundef nonnull %i.j) #30, !inline_history !448
  br label %ft_mem_alloc.exit

bb.p:                                             ; preds = %ft_mem_alloc.exit, %bb.m, %bb.a, %bb.b
  %.028 = phi i32 [ 6, %bb.a ], [ 6, %bb.b ], [ %.042, %bb.m ], [ %.042, %ft_mem_alloc.exit ]
  ret i32 %.028
}

; Function Attrs: nounwind uwtable
define range(i64 0, 4294967296) i64 @FT_Get_First_Char(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %FT_Get_Next_Char.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !317  ; 3 uses
  %.not9 = icmp eq ptr %i.c, null
  br i1 %.not9, label %FT_Get_Next_Char.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !8
  %.not10 = icmp eq i64 %i.e, 0
  br i1 %.not10, label %FT_Get_Next_Char.exit, label %FT_Get_Char_Index.exit

FT_Get_Char_Index.exit:                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !318
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !322
  %i.j = tail call i32 %i.i(ptr noundef nonnull %i.c, i32 noundef 0) #30, !inline_history !324 ; 3 uses
  %i.k = load i64, ptr %i.d, align 8, !tbaa !8    ; 2 uses
  %i.l = trunc i64 %i.k to i32
  %.not12.i = icmp uge i32 %i.j, %i.l
  %i.m = icmp eq i32 %i.j, 0
  %i.n = or i1 %i.m, %.not12.i
  br i1 %i.n, label %bb.d, label %FT_Get_Next_Char.exit

bb.d:                                             ; preds = %FT_Get_Char_Index.exit
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !317  ; 3 uses
  %.not17.i = icmp eq ptr %i.o, null
  %.not18.i = icmp eq i64 %i.k, 0
  %or.cond = or i1 %.not17.i, %.not18.i
  br i1 %or.cond, label %FT_Get_Next_Char.exit, label %bb.e

end_hunk_1
