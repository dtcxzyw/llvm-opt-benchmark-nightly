Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mov?download=true
inline.NumInlined: 191
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@mov_read_schm:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !47   ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.h = add i32 %i.d, -1
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 268
  %i.o = load i32, ptr %i.n, align 4, !tbaa !86
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef nonnull @.str.280) #16
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.p = icmp slt i64 %3, 8
  br i1 %i.p, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call i32 @avio_rb32(ptr noundef %1) #16 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 1624 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !293
  %.not13 = icmp eq ptr %i.s, null
  br i1 %.not13, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = tail call ptr @av_encryption_info_alloc(i32 noundef 0, i32 noundef 16, i32 noundef 16) #16 ; 2 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !293
  %.not14 = icmp eq ptr %i.t, null
  br i1 %.not14, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = tail call i32 @avio_rb32(ptr noundef %1) #16
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !293
  store i32 %i.u, ptr %i.v, align 8, !tbaa !298
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.a, %bb.g, %bb.c
  %.0 = phi i32 [ -1094995529, %bb.d ], [ -1163346256, %bb.c ], [ 0, %bb.a ], [ 0, %bb.g ], [ -12, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1163346256, 1) i32 @mov_read_tenc(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 %2, i64 %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !47   ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.h = add i32 %i.d, -1
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 268
  %i.o = load i32, ptr %i.n, align 4, !tbaa !86
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef nonnull @.str.281) #16
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 1624 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !293
  %.not46 = icmp eq ptr %i.q, null
  br i1 %.not46, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = tail call ptr @av_encryption_info_alloc(i32 noundef 0, i32 noundef 16, i32 noundef 16) #16 ; 2 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !293
  %.not47 = icmp eq ptr %i.r, null
  br i1 %.not47, label %bb.v, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = icmp slt i64 %3, 20
  br i1 %i.s, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = tail call i32 @avio_r8(ptr noundef %1) #16
  %i.u = tail call i32 @avio_rb24(ptr noundef %1) #16 ; 0 uses
  %i.v = tail call i32 @avio_r8(ptr noundef %1) #16 ; 0 uses
  %i.w = tail call i32 @avio_r8(ptr noundef %1) #16 ; 2 uses
  %.not48 = icmp eq i32 %i.t, 0
  br i1 %.not48, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = lshr i32 %i.w, 4
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !293  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 %i.x, ptr %i.z, align 4, !tbaa !299
  %i.aa = and i32 %i.w, 15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !300
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = tail call i32 @avio_r8(ptr noundef %1) #16
  %.not49 = icmp eq i32 %i.ac, 0                  ; 2 uses
  br i1 %.not49, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 1632 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !285
  %.not50 = icmp eq ptr %i.ae, null
  br i1 %.not50, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = tail call noalias ptr @av_mallocz(i64 noundef 56) #16 ; 2 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !285
  %.not51 = icmp eq ptr %i.af, null
  br i1 %.not51, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.ag = tail call i32 @avio_r8(ptr noundef %1) #16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 1616 ; 2 uses
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !429
  switch i32 %i.ag, label %bb.m [
    i32 0, label %bb.n
    i32 8, label %bb.n
    i32 16, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ai, i32 noundef 16, ptr noundef nonnull @.str.282) #16
  br label %bb.v

bb.n:                                             ; preds = %bb.l, %bb.l, %bb.l
  %i.aj = load ptr, ptr %i.p, align 8, !tbaa !293
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !430
  %i.am = tail call i32 @avio_read(ptr noundef %1, ptr noundef %i.al, i32 noundef 16) #16
  %.not55 = icmp eq i32 %i.am, 16
  br i1 %.not55, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.an, i32 noundef 16, ptr noundef nonnull @.str.283) #16
  br label %bb.v

bb.p:                                             ; preds = %bb.n
  br i1 %.not49, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = load i32, ptr %i.ah, align 8, !tbaa !429
  %.not56 = icmp eq i32 %i.ao, 0
  br i1 %.not56, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.ap = tail call i32 @avio_r8(ptr noundef %1) #16 ; 3 uses
  switch i32 %i.ap, label %bb.s [
    i32 16, label %bb.t
    i32 8, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aq, i32 noundef 16, ptr noundef nonnull @.str.284) #16
  br label %bb.v

bb.t:                                             ; preds = %bb.r, %bb.r
  %i.ar = load ptr, ptr %i.p, align 8, !tbaa !293
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !302
  %i.au = tail call i32 @avio_read(ptr noundef %1, ptr noundef %i.at, i32 noundef %i.ap) #16
  %.not57 = icmp eq i32 %i.au, %i.ap
  br i1 %.not57, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.av, i32 noundef 16, ptr noundef nonnull @.str.285) #16
  br label %bb.v

bb.v:                                             ; preds = %bb.p, %bb.q, %bb.t, %bb.k, %bb.f, %bb.e, %bb.a, %bb.u, %bb.s, %bb.o, %bb.m, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ -1163346256, %bb.c ], [ -12, %bb.e ], [ -1094995529, %bb.m ], [ -1094995529, %bb.o ], [ -12, %bb.k ], [ -1094995529, %bb.s ], [ -1094995529, %bb.u ], [ -1094995529, %bb.f ], [ 0, %bb.t ], [ 0, %bb.q ], [ 0, %bb.p ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @mov_read_dfla(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 %2, i64 %3) #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !47   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.i = add i32 %i.e, -1
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.m = add i64 %3, -1073741825
  %or.cond = icmp ult i64 %i.m, -1073741783
  br i1 %or.cond, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call i32 @avio_r8(ptr noundef %1) #16
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 @avio_rb24(ptr noundef %1) #16 ; 0 uses
  %i.p = call i32 @avio_read(ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 4) #16
  %.not25 = icmp eq i32 %i.p, 4
  br i1 %.not25, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.q, i32 noundef 16, ptr noundef nonnull @.str.286) #16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.s = load i32, ptr %i.r, align 4, !tbaa !652  ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  %spec.select = select i1 %i.t, i32 %i.s, i32 -1094995529
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr %i.a, align 1, !tbaa !94    ; 2 uses
  %i.v = and i8 %i.u, 127
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %4 = load i8, ptr %i.w, align 1, !tbaa !94
  %5 = zext i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 16
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %8 = load i8, ptr %7, align 1, !tbaa !94
  %i.x = zext i8 %8 to i32
  %i.y = shl nuw nsw i32 %i.x, 8
  %9 = or disjoint i32 %i.y, %6
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !94
  %i.ab = zext i8 %i.aa to i32
  %i.ac = or disjoint i32 %9, %i.ab
  %i.ad = icmp ne i8 %i.v, 0
  %i.ae = icmp ne i32 %i.ac, 34
  %or.cond4 = select i1 %i.ad, i1 true, i1 %i.ae
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !36  ; 2 uses
  br i1 %or.cond4, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.af, i32 noundef 16, ptr noundef nonnull @.str.287) #16
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !60
  %i.ai = call i32 @ff_get_extradata(ptr noundef %i.af, ptr noundef %i.ah, ptr noundef %1, i32 noundef 34) #16 ; 2 uses
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not26 = icmp sgt i8 %i.u, -1
  br i1 %.not26, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ak, i32 noundef 24, ptr noundef nonnull @.str.288) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h, %bb.c, %bb.b, %bb.a, %bb.g, %bb.e
  %.0 = phi i32 [ %i.ai, %bb.h ], [ 0, %bb.a ], [ -1094995529, %bb.b ], [ %spec.select, %bb.e ], [ -1094995529, %bb.g ], [ -1094995529, %bb.c ], [ 0, %bb.j ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 1) i32 @mov_read_st3d(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 %2, i64 %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !47   ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.h = add i32 %i.d, -1
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57   ; 2 uses
  %i.n = icmp slt i64 %3, 5
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef nonnull @.str.289) #16
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1512 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !242
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.q = tail call i64 @avio_skip(ptr noundef %1, i64 noundef 4) #16 ; 0 uses
  %i.r = tail call i32 @avio_r8(ptr noundef %1) #16 ; 3 uses
  %i.s = icmp ult i32 %i.r, 3
  br i1 %i.s, label %switch.lookup, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.t, i32 noundef 24, ptr noundef nonnull @.str.290, i32 noundef %i.r) #16
  br label %bb.h

switch.lookup:                                    ; preds = %bb.e
  %i.u = zext nneg i32 %i.r to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.mov_read_st3d, i64 %i.u
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 1520
  %i.w = tail call ptr @av_stereo3d_alloc_size(ptr noundef nonnull %i.v) #16 ; 3 uses
  store ptr %i.w, ptr %i.o, align 8, !tbaa !242
  %.not19 = icmp eq ptr %i.w, null
  br i1 %.not19, label %bb.h, label %bb.g

bb.g:                                             ; preds = %switch.lookup
  %switch.ext = zext i8 %switch.load to i32
  store i32 %switch.ext, ptr %i.w, align 4, !tbaa !432
  br label %bb.h

bb.h:                                             ; preds = %switch.lookup, %bb.d, %bb.a, %bb.g, %bb.f, %bb.c
  %.016 = phi i32 [ -1094995529, %bb.d ], [ -1094995529, %bb.c ], [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.g ], [ -12, %switch.lookup ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 1) i32 @mov_read_sv3d(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 %2, i64 %3) #0 {
bb.a:
  %i.a = alloca [32 x i8], align 1                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !47   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.i = add i32 %i.e, -1
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57   ; 2 uses
  %i.o = icmp slt i64 %3, 8
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.c, i32 noundef 16, ptr noundef nonnull @.str.291) #16
  br label %bb.ad

bb.d:                                             ; preds = %bb.b
  %i.p = tail call i32 @avio_rb32(ptr noundef %1) #16 ; 3 uses
  %i.q = icmp slt i32 %i.p, 13
  %i.r = zext nneg i32 %i.p to i64
  %i.s = icmp samesign ult i64 %3, %i.r
  %or.cond127 = select i1 %i.q, i1 true, i1 %i.s
  br i1 %or.cond127, label %bb.ad, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = tail call i32 @avio_rl32(ptr noundef %1) #16
  %.not = icmp eq i32 %i.t, 1684567667
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.u, i32 noundef 16, ptr noundef nonnull @.str.292) #16
  br label %bb.ad

bb.g:                                             ; preds = %bb.e
  %i.v = tail call i32 @avio_r8(ptr noundef %1) #16 ; 2 uses
  %.not117 = icmp eq i32 %i.v, 0
  br i1 %.not117, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.w, i32 noundef 24, ptr noundef nonnull @.str.293, i32 noundef %i.v) #16
  br label %bb.ad

bb.i:                                             ; preds = %bb.g
  %i.x = tail call i64 @avio_skip(ptr noundef %1, i64 noundef 3) #16 ; 0 uses
  %i.y = add nsw i32 %i.p, -12
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = tail call i64 @avio_skip(ptr noundef %1, i64 noundef %i.z) #16 ; 0 uses
  %i.ab = tail call i32 @avio_rb32(ptr noundef %1) #16
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %3, %i.ac
  br i1 %i.ad, label %bb.ad, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call i32 @avio_rl32(ptr noundef %1) #16
  %.not118 = icmp eq i32 %i.ae, 1785688688
  br i1 %.not118, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.af, i32 noundef 16, ptr noundef nonnull @.str.294) #16
  br label %bb.ad

bb.l:                                             ; preds = %bb.j
  %i.ag = tail call i32 @avio_rb32(ptr noundef %1) #16
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp slt i64 %3, %i.ah
  br i1 %i.ai, label %bb.ad, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = tail call i32 @avio_rl32(ptr noundef %1) #16
  %.not119 = icmp eq i32 %i.aj, 1684566640
  br i1 %.not119, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ak, i32 noundef 16, ptr noundef nonnull @.str.295) #16
  br label %bb.ad

bb.o:                                             ; preds = %bb.m
  %i.al = tail call i32 @avio_r8(ptr noundef %1) #16 ; 2 uses
  %.not120 = icmp eq i32 %i.al, 0
  br i1 %.not120, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.am, i32 noundef 24, ptr noundef nonnull @.str.293, i32 noundef %i.al) #16
  br label %bb.ad

bb.q:                                             ; preds = %bb.o
  %i.an = tail call i64 @avio_skip(ptr noundef %1, i64 noundef 3) #16 ; 0 uses
  %i.ao = tail call i32 @avio_rb32(ptr noundef %1) #16
  %i.ap = tail call i32 @avio_rb32(ptr noundef %1) #16
end_hunk_0
