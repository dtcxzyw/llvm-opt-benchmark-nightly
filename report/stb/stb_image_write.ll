Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image_write?download=true
inline.NumInlined: 97
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 28
begin_hunk_0_@stbi__start_write_file:bb.a
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nofree nounwind uwtable
define void @stbi__end_write_file(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = tail call i32 @fclose(ptr noundef %i.b)  ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @stbiw__writefv(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [2 x i8], align 2                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = load i8, ptr %1, align 1, !tbaa !17      ; 2 uses
  %.not20 = icmp eq i8 %i.d, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %i.h = phi i8 [ %i.d, %.lr.ph ], [ %i.av, %bb.o ]
  %.021 = phi ptr [ %1, %.lr.ph ], [ %i.i, %bb.o ]
  %i.i = getelementptr inbounds nuw i8, ptr %.021, i64 1 ; 2 uses
  switch i8 %i.h, label %._crit_edge [
    i8 32, label %bb.o
    i8 49, label %bb.c
    i8 50, label %bb.g
    i8 52, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.j = load i32, ptr %2, align 8                ; 3 uses
  %i.k = icmp ult i32 %i.j, 41
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.f, align 8
  %i.m = zext nneg i32 %i.j to i64
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m
  %i.o = add nuw nsw i32 %i.j, 8
  store i32 %i.o, ptr %2, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8
  store ptr %i.q, ptr %i.e, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = phi ptr [ %i.n, %bb.d ], [ %i.p, %bb.e ]
  %i.s = load i32, ptr %i.r, align 4, !tbaa !12
  %i.t = trunc i32 %i.s to i8
  store i8 %i.t, ptr %i.a, align 1, !tbaa !17
  %i.u = load ptr, ptr %0, align 8, !tbaa !15
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !16
  call void %i.u(ptr noundef %i.v, ptr noundef nonnull %i.a, i32 noundef 1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.o

bb.g:                                             ; preds = %bb.b
  %i.w = load i32, ptr %2, align 8                ; 3 uses
  %i.x = icmp ult i32 %i.w, 41
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.f, align 8
  %i.z = zext nneg i32 %i.w to i64
  %i.aa = getelementptr i8, ptr %i.y, i64 %i.z
  %i.ab = add nuw nsw i32 %i.w, 8
  store i32 %i.ab, ptr %2, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  store ptr %i.ad, ptr %i.e, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ae = phi ptr [ %i.aa, %bb.h ], [ %i.ac, %bb.i ]
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.ag = trunc i32 %i.af to i16
  store i16 %i.ag, ptr %i.b, align 2
  %i.ah = load ptr, ptr %0, align 8, !tbaa !15
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !16
  call void %i.ah(ptr noundef %i.ai, ptr noundef nonnull %i.b, i32 noundef 2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.o

bb.k:                                             ; preds = %bb.b
  %i.aj = load i32, ptr %2, align 8               ; 3 uses
  %i.ak = icmp ult i32 %i.aj, 41
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %i.f, align 8
  %i.am = zext nneg i32 %i.aj to i64
  %i.an = getelementptr i8, ptr %i.al, i64 %i.am
  %i.ao = add nuw nsw i32 %i.aj, 8
  store i32 %i.ao, ptr %2, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  store ptr %i.aq, ptr %i.e, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ar = phi ptr [ %i.an, %bb.l ], [ %i.ap, %bb.m ]
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i32 %i.as, ptr %i.c, align 4
  %i.at = load ptr, ptr %0, align 8, !tbaa !15
  %i.au = load ptr, ptr %i.g, align 8, !tbaa !16
  call void %i.at(ptr noundef %i.au, ptr noundef nonnull %i.c, i32 noundef 4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j, %bb.f, %bb.b
  %i.av = load i8, ptr %i.i, align 1, !tbaa !17   ; 2 uses
  %.not = icmp eq i8 %i.av, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !34

._crit_edge:                                      ; preds = %bb.o, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbiw__writef(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ...) local_unnamed_addr #5 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.va_start.p0(ptr nonnull %2)
  call void @stbiw__writefv(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #6

; Function Attrs: nounwind uwtable
define void @stbiw__write_flush(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %i.c(ptr noundef %i.e, ptr noundef nonnull %i.f, i32 noundef %i.b) #25
  store i32 0, ptr %i.a, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbiw__putc(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i8, align 1                       ; 2 uses
  store i8 %1, ptr %i.a, align 1, !tbaa !17
  %i.b = load ptr, ptr %0, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  call void %i.b(ptr noundef %i.d, ptr noundef nonnull %i.a, i32 noundef 1) #25
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbiw__write1(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %2 = sext i32 %i.b to i64
  %3 = add nsw i64 %2, 1
  %i.c = icmp ult i64 %3, 65
  br i1 %i.c, label %stbiw__write_flush.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %i.d(ptr noundef %i.f, ptr noundef nonnull %i.g, i32 noundef %i.b) #25, !inline_history !20
  br label %stbiw__write_flush.exit

stbiw__write_flush.exit:                          ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ 0, %bb.b ], [ %i.b, %bb.a ]    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = add nsw i32 %i.h, 1
  store i32 %i.j, ptr %i.a, align 8, !tbaa !19
  %i.k = sext i32 %i.h to i64
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 %i.k
  store i8 %1, ptr %i.l, align 1, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbiw__write3(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %4 = sext i32 %i.b to i64
  %5 = add nsw i64 %4, 3
  %i.c = icmp ult i64 %5, 65
  br i1 %i.c, label %stbiw__write_flush.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %i.d(ptr noundef %i.f, ptr noundef nonnull %i.g, i32 noundef %i.b) #25, !inline_history !20
  br label %stbiw__write_flush.exit

stbiw__write_flush.exit:                          ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ 0, %bb.b ], [ %i.b, %bb.a ]    ; 2 uses
  %i.i = add nsw i32 %i.h, 3
  store i32 %i.i, ptr %i.a, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = sext i32 %i.h to i64
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 %i.k ; 3 uses
  store i8 %1, ptr %i.l, align 1, !tbaa !17
  %i.m = getelementptr i8, ptr %i.l, i64 1
  store i8 %2, ptr %i.m, align 1, !tbaa !17
  %i.n = getelementptr i8, ptr %i.l, i64 2
  store i8 %3, ptr %i.n, align 1, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbiw__write_pixel(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = icmp slt i32 %3, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr i8, ptr %5, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !19   ; 3 uses
  %6 = sext i32 %i.h to i64
  %7 = add nsw i64 %6, 1
  %i.i = icmp ult i64 %7, 65
  br i1 %i.i, label %stbiw__write1.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %0, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %i.j(ptr noundef %i.l, ptr noundef nonnull %i.m, i32 noundef %i.h) #25, !inline_history !21
  br label %stbiw__write1.exit

stbiw__write1.exit:                               ; preds = %bb.b, %bb.c
  %i.n = phi i32 [ 0, %bb.c ], [ %i.h, %bb.b ]    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = add nsw i32 %i.n, 1
  store i32 %i.p, ptr %i.g, align 8, !tbaa !19
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 %i.q
  store i8 %i.f, ptr %i.r, align 1, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %stbiw__write1.exit, %bb.a
  switch i32 %2, label %bb.n [
    i32 2, label %bb.e
    i32 1, label %bb.e
    i32 4, label %bb.j
    i32 3, label %bb.l
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %.not33 = icmp eq i32 %4, 0
  %i.s = load i8, ptr %5, align 1, !tbaa !17      ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !19   ; 5 uses
  %8 = sext i32 %i.u to i64                       ; 2 uses
  br i1 %.not33, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %9 = add nsw i64 %8, 3
  %i.v = icmp ult i64 %9, 65
  br i1 %i.v, label %stbiw__write3.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %0, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %i.w(ptr noundef %i.y, ptr noundef nonnull %i.z, i32 noundef %i.u) #25, !inline_history !35
  br label %stbiw__write3.exit

stbiw__write3.exit:                               ; preds = %bb.f, %bb.g
  %i.aa = phi i32 [ 0, %bb.g ], [ %i.u, %bb.f ]   ; 2 uses
  %i.ab = add nsw i32 %i.aa, 3
  store i32 %i.ab, ptr %i.t, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = sext i32 %i.aa to i64
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 %i.ad ; 3 uses
  store i8 %i.s, ptr %i.ae, align 1, !tbaa !17
  %i.af = getelementptr i8, ptr %i.ae, i64 1
  store i8 %i.s, ptr %i.af, align 1, !tbaa !17
  %i.ag = getelementptr i8, ptr %i.ae, i64 2
  store i8 %i.s, ptr %i.ag, align 1, !tbaa !17
  br label %bb.n

bb.h:                                             ; preds = %bb.e
  %10 = add nsw i64 %8, 1
  %i.ah = icmp ult i64 %10, 65
  br i1 %i.ah, label %stbiw__write1.exit34, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %0, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %i.ai(ptr noundef %i.ak, ptr noundef nonnull %i.al, i32 noundef %i.u) #25, !inline_history !21
  br label %stbiw__write1.exit34

stbiw__write1.exit34:                             ; preds = %bb.h, %bb.i
  %i.am = phi i32 [ 0, %bb.i ], [ %i.u, %bb.h ]   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = add nsw i32 %i.am, 1
  store i32 %i.ao, ptr %i.t, align 8, !tbaa !19
  %i.ap = sext i32 %i.am to i64
  %i.aq = getelementptr inbounds i8, ptr %i.an, i64 %i.ap
  store i8 %i.s, ptr %i.aq, align 1, !tbaa !17
  br label %bb.n

bb.j:                                             ; preds = %bb.d
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !17
  %i.at = zext i8 %i.as to i32                    ; 3 uses
  %i.au = load i8, ptr %5, align 1, !tbaa !17
  %i.av = xor i8 %i.au, -1
  %.neg46 = zext i8 %i.av to i32
  %.neg47 = mul nuw nsw i32 %.neg46, %i.at
  %.lhs.trunc = trunc nuw i32 %.neg47 to i16
  %i.aw = udiv i16 %.lhs.trunc, 255
  %.zext = trunc i16 %i.aw to i8
  %i.ax = xor i8 %.zext, -1
  store i8 %i.ax, ptr %i.a, align 1, !tbaa !17
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !17
  %i.ba = zext i8 %i.az to i32
  %i.bb = mul nuw nsw i32 %i.ba, %i.at
  %.lhs.trunc40 = trunc nuw i32 %i.bb to i16
  %i.bc = udiv i16 %.lhs.trunc40, 255
  %i.bd = trunc i16 %i.bc to i8                   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !17
  %i.bh = xor i8 %i.bg, -1
  %.neg = zext i8 %i.bh to i32
  %.neg48 = mul nuw nsw i32 %.neg, %i.at
  %.lhs.trunc44 = trunc nuw i32 %.neg48 to i16
  %i.bi = udiv i16 %.lhs.trunc44, 255
  %.zext45 = trunc i16 %i.bi to i8
  %i.bj = xor i8 %.zext45, -1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !17
  %i.bl = sub nsw i32 1, %1
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds i8, ptr %i.a, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !17
  %i.bp = sext i32 %1 to i64
  %i.bq = getelementptr i8, ptr %i.a, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !17
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !19 ; 3 uses
  %11 = sext i32 %i.bu to i64
  %12 = add nsw i64 %11, 3
  %i.bv = icmp ult i64 %12, 65
  br i1 %i.bv, label %.thread, label %bb.k

bb.k:                                             ; preds = %.preheader
  %i.bw = load ptr, ptr %0, align 8, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !16
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %i.bw(ptr noundef %i.by, ptr noundef nonnull %i.bz, i32 noundef %i.bu) #25, !inline_history !35
  br label %.thread

.thread:                                          ; preds = %bb.k, %.preheader
  %i.ca = phi i32 [ 0, %bb.k ], [ %i.bu, %.preheader ] ; 2 uses
  %i.cb = add nsw i32 %i.ca, 3
  store i32 %i.cb, ptr %i.bt, align 8, !tbaa !19
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cd = sext i32 %i.ca to i64
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 %i.cd ; 3 uses
  store i8 %i.bo, ptr %i.ce, align 1, !tbaa !17
  %i.cf = getelementptr i8, ptr %i.ce, i64 1
  store i8 %i.bd, ptr %i.cf, align 1, !tbaa !17
  %i.cg = getelementptr i8, ptr %i.ce, i64 2
  store i8 %i.bs, ptr %i.cg, align 1, !tbaa !17
  br label %bb.q

bb.l:                                             ; preds = %bb.j, %bb.d
  %i.ch = sub nsw i32 1, %1
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds i8, ptr %5, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !17
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !17
  %i.cn = sext i32 %1 to i64
  %i.co = getelementptr i8, ptr %5, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !17
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !19 ; 3 uses
  %13 = sext i32 %i.cs to i64
  %14 = add nsw i64 %13, 3
  %i.ct = icmp ult i64 %14, 65
  br i1 %i.ct, label %stbiw__write3.exit36, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cu = load ptr, ptr %0, align 8, !tbaa !15
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !16
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %i.cu(ptr noundef %i.cw, ptr noundef nonnull %i.cx, i32 noundef %i.cs) #25, !inline_history !35
  br label %stbiw__write3.exit36

stbiw__write3.exit36:                             ; preds = %bb.l, %bb.m
  %i.cy = phi i32 [ 0, %bb.m ], [ %i.cs, %bb.l ]  ; 2 uses
  %i.cz = add nsw i32 %i.cy, 3
  store i32 %i.cz, ptr %i.cr, align 8, !tbaa !19
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.db = sext i32 %i.cy to i64
  %i.dc = getelementptr inbounds i8, ptr %i.da, i64 %i.db ; 3 uses
  store i8 %i.ck, ptr %i.dc, align 1, !tbaa !17
  %i.dd = getelementptr i8, ptr %i.dc, i64 1
  store i8 %i.cm, ptr %i.dd, align 1, !tbaa !17
  %i.de = getelementptr i8, ptr %i.dc, i64 2
  store i8 %i.cq, ptr %i.de, align 1, !tbaa !17
  br label %bb.n

bb.n:                                             ; preds = %stbiw__write3.exit, %stbiw__write1.exit34, %stbiw__write3.exit36, %bb.d
  %i.df = icmp sgt i32 %3, 0
  br i1 %i.df, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.dg = sext i32 %2 to i64
  %i.dh = getelementptr i8, ptr %5, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 -1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !17
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !19 ; 3 uses
  %15 = sext i32 %i.dl to i64
  %16 = add nsw i64 %15, 1
  %i.dm = icmp ult i64 %16, 65
  br i1 %i.dm, label %stbiw__write1.exit37, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dn = load ptr, ptr %0, align 8, !tbaa !15
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !16
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %i.dn(ptr noundef %i.dp, ptr noundef nonnull %i.dq, i32 noundef %i.dl) #25, !inline_history !21
  br label %stbiw__write1.exit37

stbiw__write1.exit37:                             ; preds = %bb.o, %bb.p
  %i.dr = phi i32 [ 0, %bb.p ], [ %i.dl, %bb.o ]  ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dt = add nsw i32 %i.dr, 1
  store i32 %i.dt, ptr %i.dk, align 8, !tbaa !19
  %i.du = sext i32 %i.dr to i64
  %i.dv = getelementptr inbounds i8, ptr %i.ds, i64 %i.du
  store i8 %i.dj, ptr %i.dv, align 1, !tbaa !17
  br label %bb.q

bb.q:                                             ; preds = %.thread, %stbiw__write1.exit37, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define void @stbiw__write_pixels(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4, !tbaa !12
  %i.b = icmp slt i32 %4, 1
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @stbi__flip_vertically_on_write, align 4, !tbaa !12
  %.not = icmp eq i32 %i.c, 0
  %i.d = sub nsw i32 0, %2
  %spec.select = select i1 %.not, i32 %2, i32 %i.d ; 3 uses
  %i.e = icmp slt i32 %spec.select, 0             ; 2 uses
  %i.f = add nsw i32 %4, -1
  %.027 = select i1 %i.e, i32 %i.f, i32 0         ; 2 uses
  %.026 = select i1 %i.e, i32 -1, i32 %4          ; 2 uses
  %i.g = icmp sgt i32 %3, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.g, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %bb.b
  %i.k = sext i32 %5 to i64
  %i.l = zext nneg i32 %.027 to i64
  %i.m = sext i32 %spec.select to i64
  %i.n = zext nneg i32 %3 to i64
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %stbiw__write_flush.exit.us
  %indvars.iv36 = phi i64 [ %i.l, %.preheader.us.preheader ], [ %indvars.iv.next37, %stbiw__write_flush.exit.us ] ; 2 uses
  %i.o = mul nsw i64 %indvars.iv36, %i.n
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.p = add nsw i64 %indvars.iv, %i.o
  %i.q = mul nsw i64 %i.p, %i.k
  %i.r = getelementptr inbounds i8, ptr %6, i64 %i.q
  call void @stbiw__write_pixel(ptr noundef %0, i32 noundef %1, i32 noundef %5, i32 noundef %7, i32 noundef %9, ptr noundef %i.r)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !36

bb.d:                                             ; preds = %._crit_edge.us
  %i.s = load ptr, ptr %0, align 8, !tbaa !15
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !16
  call void %i.s(ptr noundef %i.t, ptr noundef nonnull %i.j, i32 noundef %i.x) #25, !inline_history !20
  store i32 0, ptr %i.h, align 8, !tbaa !19
  br label %stbiw__write_flush.exit.us

stbiw__write_flush.exit.us:                       ; preds = %bb.d, %._crit_edge.us
  %i.u = load ptr, ptr %0, align 8, !tbaa !15
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !16
  call void %i.u(ptr noundef %i.v, ptr noundef nonnull %i.a, i32 noundef %8) #25
  %indvars.iv.next37 = add nsw i64 %indvars.iv36, %i.m ; 2 uses
  %i.w = trunc nsw i64 %indvars.iv.next37 to i32
  %.not31.us = icmp eq i32 %.026, %i.w
  br i1 %.not31.us, label %.loopexit, label %.preheader.us, !llvm.loop !37

._crit_edge.us:                                   ; preds = %bb.c
  %i.x = load i32, ptr %i.h, align 8, !tbaa !19   ; 2 uses
  %.not.i.us = icmp eq i32 %i.x, 0
  br i1 %.not.i.us, label %stbiw__write_flush.exit.us, label %bb.d

.preheader:                                       ; preds = %bb.b, %stbiw__write_flush.exit
  %.133 = phi i32 [ %i.ad, %stbiw__write_flush.exit ], [ %.027, %bb.b ]
  %i.y = load i32, ptr %i.h, align 8, !tbaa !19   ; 2 uses
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %stbiw__write_flush.exit, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.z = load ptr, ptr %0, align 8, !tbaa !15
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !16
  call void %i.z(ptr noundef %i.aa, ptr noundef nonnull %i.j, i32 noundef %i.y) #25, !inline_history !20
  store i32 0, ptr %i.h, align 8, !tbaa !19
  br label %stbiw__write_flush.exit

stbiw__write_flush.exit:                          ; preds = %.preheader, %bb.e
  %i.ab = load ptr, ptr %0, align 8, !tbaa !15
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !16
  call void %i.ab(ptr noundef %i.ac, ptr noundef nonnull %i.a, i32 noundef %8) #25
  %i.ad = add nsw i32 %.133, %spec.select         ; 2 uses
  %.not31 = icmp eq i32 %i.ad, %.026
  br i1 %.not31, label %.loopexit, label %.preheader, !llvm.loop !37

.loopexit:                                        ; preds = %stbiw__write_flush.exit, %stbiw__write_flush.exit.us, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbiw__outfile(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8, i32 noundef %9, ptr nofree noundef readonly captures(none) %10, ...) local_unnamed_addr #5 {
bb.a:
  %11 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = or i32 %4, %3
  %or.cond.not = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.va_start.p0(ptr nonnull %11)
  call void @stbiw__writefv(ptr noundef %0, ptr noundef %10, ptr noundef nonnull %11)
  call void @llvm.va_end.p0(ptr nonnull %11)
  call void @stbiw__write_pixels(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi_write_bmp_core(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq i32 %3, 4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = and i32 %1, 3                            ; 2 uses
  %i.b = mul nsw i32 %1, 3
  %i.c = add nsw i32 %i.b, %i.a
  %i.d = mul nsw i32 %i.c, %2
  %i.e = add nsw i32 %i.d, 54
  %i.f = tail call i32 (ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ...) @stbiw__outfile(ptr noundef %0, i32 noundef -1, i32 noundef -1, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 1, ptr noundef %4, i32 noundef 0, i32 noundef %i.a, ptr noundef nonnull @.str.1, i32 noundef 66, i32 noundef 77, i32 noundef %i.e, i32 noundef 0, i32 noundef 0, i32 noundef 54, i32 noundef 40, i32 noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 24, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = shl i32 %1, 2
  %i.h = mul i32 %i.g, %2
  %i.i = add nsw i32 %i.h, 122
  %i.j = tail call i32 (ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ...) @stbiw__outfile(ptr noundef %0, i32 noundef -1, i32 noundef -1, i32 noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef 1, ptr noundef %4, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 66, i32 noundef 77, i32 noundef %i.i, i32 noundef 0, i32 noundef 0, i32 noundef 122, i32 noundef 108, i32 noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 32, i32 noundef 3, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 16711680, i32 noundef 65280, i32 noundef 255, i32 noundef -16777216, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.j, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi_write_bmp_to_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #5 {
bb.a:
  %6 = alloca %struct.stbi__write_context, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  store ptr %0, ptr %6, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !16
  %i.c = call i32 @stbi_write_bmp_core(ptr noundef nonnull %6, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret i32 %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi_write_bmp(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.stbi__write_context, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  %i.b = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str) ; 2 uses
  store ptr @stbi__stdio_write, ptr %5, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !16
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @stbi_write_bmp_core(ptr noundef nonnull %5, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.f = call i32 @fclose(ptr noundef %i.e)       ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi_write_tga_core(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %3, 2
  %i.b = icmp eq i32 %3, 4
  %i.c = or i1 %i.a, %i.b                         ; 4 uses
  %i.d = zext i1 %i.c to i32                      ; 5 uses
  %i.e = sext i1 %i.c to i32
  %i.f = add nsw i32 %3, %i.e                     ; 3 uses
  %i.g = icmp slt i32 %i.f, 2
  %i.h = select i1 %i.g, i32 3, i32 2             ; 2 uses
  %i.i = or i32 %2, %1
  %or.cond.not = icmp sgt i32 %i.i, -1
  br i1 %or.cond.not, label %bb.b, label %stbiw__write_flush.exit

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr @stbi_write_tga_with_rle, align 4, !tbaa !12
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i32 %i.f, %i.d
  %i.l = shl nsw i32 %i.k, 3
  %i.m = select i1 %i.c, i32 8, i32 0
  %i.n = tail call i32 (ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ...) @stbiw__outfile(ptr noundef %0, i32 noundef -1, i32 noundef -1, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef %4, i32 noundef %i.d, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i32 noundef %i.h, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %1, i32 noundef %2, i32 noundef %i.l, i32 noundef %i.m)
  br label %stbiw__write_flush.exit

bb.d:                                             ; preds = %bb.b
  %i.o = or disjoint i32 %i.h, 8
  %i.p = add nsw i32 %i.f, %i.d
  %i.q = shl nsw i32 %i.p, 3
  %i.r = select i1 %i.c, i32 8, i32 0
  tail call void (ptr, ptr, ...) @stbiw__writef(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i32 noundef %i.o, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %1, i32 noundef %2, i32 noundef %i.q, i32 noundef %i.r)
  %i.s = load i32, ptr @stbi__flip_vertically_on_write, align 4, !tbaa !12
  %.not116 = icmp eq i32 %i.s, 0                  ; 3 uses
  %i.t = add nsw i32 %2, -1
  %.0109 = select i1 %.not116, i32 %i.t, i32 0    ; 2 uses
  %.0105 = select i1 %.not116, i32 -1, i32 %2     ; 2 uses
  %.0104 = select i1 %.not116, i64 4294967295, i64 1
  %.not117147 = icmp eq i32 %.0109, %.0105
  br i1 %.not117147, label %._crit_edge151, label %.lr.ph150

.lr.ph150:                                        ; preds = %bb.d
  %i.u = mul i32 %3, %1
  %i.v = icmp sgt i32 %1, 0
  %i.w = add nsw i32 %1, -1
  %i.x = sext i32 %3 to i64                       ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br i1 %i.v, label %.lr.ph145.us.preheader, label %._crit_edge151

.lr.ph145.us.preheader:                           ; preds = %.lr.ph150
  %i.ab = zext nneg i32 %1 to i64                 ; 2 uses
  %i.ac = zext i32 %.0109 to i64
  br label %.lr.ph145.us

.lr.ph145.us:                                     ; preds = %.lr.ph145.us.preheader, %._crit_edge146.us
  %indvars.iv161 = phi i64 [ %i.ac, %.lr.ph145.us.preheader ], [ %indvars.iv.next162, %._crit_edge146.us ] ; 2 uses
  %i.ad = trunc i64 %indvars.iv161 to i32
  %i.ae = mul i32 %i.u, %i.ad
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr %4, i64 %i.af ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph145.us, %.loopexit.us
  %.0111142.us = phi i32 [ 0, %.lr.ph145.us ], [ %i.ce, %.loopexit.us ] ; 5 uses
  %i.ah = mul nsw i32 %.0111142.us, %3
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 %i.ai ; 5 uses
  %i.ak = icmp slt i32 %.0111142.us, %i.w
  br i1 %i.ak, label %bb.f, label %.loopexit129.us

bb.f:                                             ; preds = %bb.e
  %i.al = add nsw i32 %.0111142.us, 1
  %i.am = mul nsw i32 %i.al, %3
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %i.ag, i64 %i.an
  %bcmp122.us = tail call i32 @bcmp(ptr %i.aj, ptr %i.ao, i64 %i.x)
  %.not118.us = icmp eq i32 %bcmp122.us, 0
  %i.ap = add nsw i32 %.0111142.us, 2             ; 3 uses
  %i.aq = icmp slt i32 %i.ap, %1                  ; 2 uses
  br i1 %.not118.us, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.aq, label %.lr.ph.us.preheader, label %.loopexit129.us

.lr.ph.us.preheader:                              ; preds = %bb.g
  %i.ar = sext i32 %i.ap to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.h
  %indvars.iv = phi i64 [ %i.ar, %.lr.ph.us.preheader ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.0101133.us = phi ptr [ %i.aj, %.lr.ph.us.preheader ], [ %i.au, %bb.h ] ; 2 uses
  %.0103132.us = phi i32 [ 2, %.lr.ph.us.preheader ], [ %i.av, %bb.h ] ; 3 uses
  %i.as = mul nsw i64 %indvars.iv, %i.x
  %i.at = getelementptr inbounds i8, ptr %i.ag, i64 %i.as
  %bcmp120.us = tail call i32 @bcmp(ptr %.0101133.us, ptr %i.at, i64 %i.x)
  %.not121.us = icmp eq i32 %bcmp120.us, 0
  br i1 %.not121.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.us
  %i.au = getelementptr inbounds i8, ptr %.0101133.us, i64 %i.x
  %i.av = add nuw nsw i32 %.0103132.us, 1         ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.aw = icmp slt i64 %indvars.iv.next, %i.ab
  %i.ax = icmp samesign ult i32 %.0103132.us, 127
  %i.ay = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %i.ay, label %.lr.ph.us, label %.loopexit129.us, !llvm.loop !38

bb.i:                                             ; preds = %.lr.ph.us
  %i.az = add nsw i32 %.0103132.us, -1
  br label %.loopexit129.us

.loopexit129.us:                                  ; preds = %bb.h, %bb.g, %bb.i, %bb.e
  %.3.ph.us = phi i32 [ 1, %bb.e ], [ %i.az, %bb.i ], [ 2, %bb.g ], [ %i.av, %bb.h ] ; 5 uses
  %i.ba = trunc i32 %.3.ph.us to i8
  %i.bb = add i8 %i.ba, -1
  %i.bc = load i32, ptr %i.y, align 8, !tbaa !19  ; 3 uses
  %5 = sext i32 %i.bc to i64
  %6 = add nsw i64 %5, 1
  %i.bd = icmp ult i64 %6, 65
  br i1 %i.bd, label %stbiw__write1.exit.us, label %bb.j

bb.j:                                             ; preds = %.loopexit129.us
  %i.be = load ptr, ptr %0, align 8, !tbaa !15
  %i.bf = load ptr, ptr %i.z, align 8, !tbaa !16
  tail call void %i.be(ptr noundef %i.bf, ptr noundef nonnull %i.aa, i32 noundef %i.bc) #25, !inline_history !21
  br label %stbiw__write1.exit.us

stbiw__write1.exit.us:                            ; preds = %bb.j, %.loopexit129.us
  %i.bg = phi i32 [ 0, %bb.j ], [ %i.bc, %.loopexit129.us ] ; 2 uses
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.y, align 8, !tbaa !19
  %i.bi = sext i32 %i.bg to i64
  %i.bj = getelementptr inbounds i8, ptr %i.aa, i64 %i.bi
  store i8 %i.bb, ptr %i.bj, align 1, !tbaa !17
  %i.bk = icmp sgt i32 %.3.ph.us, 0
  br i1 %i.bk, label %.lr.ph135.us.preheader, label %.loopexit.us

.lr.ph135.us.preheader:                           ; preds = %stbiw__write1.exit.us
  %wide.trip.count = zext nneg i32 %.3.ph.us to i64
  br label %.lr.ph135.us

.lr.ph135.us:                                     ; preds = %.lr.ph135.us.preheader, %.lr.ph135.us
  %indvars.iv155 = phi i64 [ 0, %.lr.ph135.us.preheader ], [ %indvars.iv.next156, %.lr.ph135.us ] ; 2 uses
  %i.bl = mul nsw i64 %indvars.iv155, %i.x
  %i.bm = getelementptr inbounds i8, ptr %i.aj, i64 %i.bl
  tail call void @stbiw__write_pixel(ptr noundef nonnull %0, i32 noundef -1, i32 noundef %3, i32 noundef %i.d, i32 noundef 0, ptr noundef %i.bm)
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.us, label %.lr.ph135.us, !llvm.loop !39

bb.k:                                             ; preds = %bb.f
  br i1 %i.aq, label %.lr.ph138.us.preheader, label %._crit_edge.us

.lr.ph138.us.preheader:                           ; preds = %bb.k
  %i.bn = sext i32 %i.ap to i64
  br label %.lr.ph138.us

.lr.ph138.us:                                     ; preds = %.lr.ph138.us.preheader, %bb.l
  %indvars.iv158 = phi i64 [ %i.bn, %.lr.ph138.us.preheader ], [ %indvars.iv.next159, %bb.l ] ; 2 uses
  %.2137.us = phi i32 [ 2, %.lr.ph138.us.preheader ], [ %i.bq, %bb.l ] ; 3 uses
  %i.bo = mul nsw i64 %indvars.iv158, %i.x
  %i.bp = getelementptr inbounds i8, ptr %i.ag, i64 %i.bo
  %bcmp.us = tail call i32 @bcmp(ptr %i.aj, ptr %i.bp, i64 %i.x)
  %.not119.us = icmp eq i32 %bcmp.us, 0
  br i1 %.not119.us, label %bb.l, label %._crit_edge.us

bb.l:                                             ; preds = %.lr.ph138.us
  %i.bq = add nuw nsw i32 %.2137.us, 1            ; 2 uses
  %indvars.iv.next159 = add nsw i64 %indvars.iv158, 1 ; 2 uses
  %i.br = icmp slt i64 %indvars.iv.next159, %i.ab
  %i.bs = icmp samesign ult i32 %.2137.us, 127
  %i.bt = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %i.bt, label %.lr.ph138.us, label %._crit_edge.us, !llvm.loop !40

._crit_edge.us:                                   ; preds = %.lr.ph138.us, %bb.l, %bb.k
  %.2.lcssa.us = phi i32 [ 2, %bb.k ], [ %i.bq, %bb.l ], [ %.2137.us, %.lr.ph138.us ] ; 2 uses
  %i.bu = trunc nuw i32 %.2.lcssa.us to i8
  %i.bv = add nuw i8 %i.bu, 127
  %i.bw = load i32, ptr %i.y, align 8, !tbaa !19  ; 3 uses
  %7 = sext i32 %i.bw to i64
  %8 = add nsw i64 %7, 1
  %i.bx = icmp ult i64 %8, 65
  br i1 %i.bx, label %stbiw__write1.exit124.us, label %bb.m

bb.m:                                             ; preds = %._crit_edge.us
  %i.by = load ptr, ptr %0, align 8, !tbaa !15
  %i.bz = load ptr, ptr %i.z, align 8, !tbaa !16
  tail call void %i.by(ptr noundef %i.bz, ptr noundef nonnull %i.aa, i32 noundef %i.bw) #25, !inline_history !21
  br label %stbiw__write1.exit124.us

stbiw__write1.exit124.us:                         ; preds = %bb.m, %._crit_edge.us
  %i.ca = phi i32 [ 0, %bb.m ], [ %i.bw, %._crit_edge.us ] ; 2 uses
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.y, align 8, !tbaa !19
  %i.cc = sext i32 %i.ca to i64
  %i.cd = getelementptr inbounds i8, ptr %i.aa, i64 %i.cc
  store i8 %i.bv, ptr %i.cd, align 1, !tbaa !17
  tail call void @stbiw__write_pixel(ptr noundef nonnull %0, i32 noundef -1, i32 noundef %3, i32 noundef %i.d, i32 noundef 0, ptr noundef %i.aj)
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %.lr.ph135.us, %stbiw__write1.exit.us, %stbiw__write1.exit124.us
  %.3128.us = phi i32 [ %.2.lcssa.us, %stbiw__write1.exit124.us ], [ %.3.ph.us, %stbiw__write1.exit.us ], [ %.3.ph.us, %.lr.ph135.us ]
  %i.ce = add nsw i32 %.3128.us, %.0111142.us     ; 2 uses
  %i.cf = icmp slt i32 %i.ce, %1
  br i1 %i.cf, label %bb.e, label %._crit_edge146.us, !llvm.loop !41

._crit_edge146.us:                                ; preds = %.loopexit.us
  %indvars.iv.next162 = add i64 %indvars.iv161, %.0104 ; 2 uses
  %i.cg = trunc i64 %indvars.iv.next162 to i32
  %.not117.us = icmp eq i32 %.0105, %i.cg
  br i1 %.not117.us, label %._crit_edge151, label %.lr.ph145.us, !llvm.loop !42

._crit_edge151:                                   ; preds = %._crit_edge146.us, %.lr.ph150, %bb.d
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !19 ; 2 uses
  %.not.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i, label %stbiw__write_flush.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge151
  %i.cj = load ptr, ptr %0, align 8, !tbaa !15
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !16
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %i.cj(ptr noundef %i.cl, ptr noundef nonnull %i.cm, i32 noundef %i.ci) #25, !inline_history !20
  store i32 0, ptr %i.ch, align 8, !tbaa !19
  br label %stbiw__write_flush.exit

stbiw__write_flush.exit:                          ; preds = %bb.n, %._crit_edge151, %bb.a, %bb.c
  %.0 = phi i32 [ %i.n, %bb.c ], [ 0, %bb.a ], [ 1, %._crit_edge151 ], [ 1, %bb.n ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi_write_tga_to_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #5 {
bb.a:
  %6 = alloca %struct.stbi__write_context, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  store ptr %0, ptr %6, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !16
  %i.c = call i32 @stbi_write_tga_core(ptr noundef nonnull %6, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi_write_tga(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.stbi__write_context, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  %i.b = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str) ; 2 uses
  store ptr @stbi__stdio_write, ptr %5, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !16
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @stbi_write_tga_core(ptr noundef nonnull %5, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.f = call i32 @fclose(ptr noundef %i.e)       ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @stbiw__linear_to_rgbe(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = load float, ptr %1, align 4, !tbaa !23   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !23 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !23 ; 2 uses
  %i.g = fcmp ogt float %i.d, %i.f
  %. = select i1 %i.g, float %i.d, float %i.f     ; 2 uses
  %i.h = fcmp ogt float %i.b, %.
  %i.i = select i1 %i.h, float %i.b, float %.     ; 3 uses
  %i.j = fcmp olt float %i.i, 1.000000e-32
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.k, align 1, !tbaa !17
  store i8 0, ptr %0, align 1, !tbaa !17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = fpext float %i.i to double
  %i.m = call double @frexp(double noundef %i.l, ptr noundef nonnull %i.a) #25
  %i.n = fptrunc double %i.m to float
  %i.o = fmul float %i.n, 2.560000e+02
  %i.p = fdiv float %i.o, %i.i                    ; 3 uses
  %i.q = fmul float %i.b, %i.p
  %i.r = fptoui float %i.q to i8
  store i8 %i.r, ptr %0, align 1, !tbaa !17
  %i.s = load float, ptr %i.c, align 4, !tbaa !23
  %i.t = fmul float %i.s, %i.p
  %i.u = fptoui float %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.u, ptr %i.v, align 1, !tbaa !17
  %i.w = load float, ptr %i.e, align 4, !tbaa !23
  %i.x = fmul float %i.p, %i.w
  %i.y = fptoui float %i.x to i8
  %i.z = load i32, ptr %i.a, align 4, !tbaa !12
  %i.aa = trunc i32 %i.z to i8
  %i.ab = xor i8 %i.aa, -128
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink32 = phi i8 [ 0, %bb.b ], [ %i.ab, %bb.c ]
  %.sink = phi i8 [ 0, %bb.b ], [ %i.y, %bb.c ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %.sink32, ptr %i.ac, align 1, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.sink, ptr %i.ad, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define void @stbiw__write_run_data(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i8, align 1                       ; 2 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  store i8 %2, ptr %i.a, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.c = trunc i32 %1 to i8
  %i.d = xor i8 %i.c, -128
  store i8 %i.d, ptr %i.b, align 1, !tbaa !17
  %i.e = load ptr, ptr %0, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  call void %i.e(ptr noundef %i.g, ptr noundef nonnull %i.b, i32 noundef 1) #25
  %i.h = load ptr, ptr %0, align 8, !tbaa !15
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !16
  call void %i.h(ptr noundef %i.i, ptr noundef nonnull %i.a, i32 noundef 1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbiw__write_dump_data(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = trunc i32 %1 to i8
  store i8 %i.b, ptr %i.a, align 1, !tbaa !17
  %i.c = load ptr, ptr %0, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  call void %i.c(ptr noundef %i.e, ptr noundef nonnull %i.a, i32 noundef 1) #25
  %i.f = load ptr, ptr %0, align 8, !tbaa !15
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !16
  call void %i.f(ptr noundef %i.g, ptr noundef %2, i32 noundef %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbiw__write_hdr_scanline(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [4 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
end_hunk_0
