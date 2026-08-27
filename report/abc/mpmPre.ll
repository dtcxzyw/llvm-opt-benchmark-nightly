Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/mpmPre?download=true
inline.NumInlined: 303
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 15
begin_hunk_0_@Ifd_ObjPrint_rec:bb.a
  %i.aq = and i32 %i.ap, 1610612736
  %i.ar = icmp ne i32 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.at = phi i32 [ %i.as, %bb.j ], [ 1, %bb.i ]
  tail call void @Ifd_ObjPrint_rec(ptr noundef nonnull %0, i32 noundef %i.ag, ptr noundef %2, i32 noundef %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !38 ; 4 uses
  %.not39 = icmp eq i32 %i.av, -1
  br i1 %.not39, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = load i32, ptr %i.i, align 4             ; 2 uses
  %i.ax = and i32 %i.aw, 1610612736
  %i.ay = icmp ne i32 %i.ax, 1610612736
  %i.az = and i32 %i.av, 1
  %.not40 = icmp eq i32 %i.az, 0
  %or.cond47 = and i1 %.not40, %i.ay
  br i1 %or.cond47, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.val = load ptr, ptr %0, align 8, !tbaa !18
  %i.ba = ashr exact i32 %i.av, 1
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [16 x i8], ptr %.val, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = xor i32 %i.bd, %i.aw
  %i.bf = and i32 %i.be, 1610612736
  %i.bg = icmp ne i32 %i.bf, 0
  %i.bh = zext i1 %i.bg to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bi = phi i32 [ %i.bh, %bb.m ], [ 1, %bb.l ]
  tail call void @Ifd_ObjPrint_rec(ptr noundef nonnull %0, i32 noundef %i.av, ptr noundef %2, i32 noundef %i.bi)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  br i1 %.not35, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = load i32, ptr %i.i, align 4
  %i.bk = lshr i32 %i.bj, 29
  %i.bl = and i32 %i.bk, 3
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @__const.Ifd_ObjPrint_rec.Symb, i64 4), i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !45
  %i.bp = sext i8 %i.bo to i32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.p
  %.sink = phi i32 [ %i.bp, %bb.p ], [ %i.f, %bb.d ]
  %putchar41 = tail call i32 @putchar(i32 %.sink) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.o
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind uwtable
define void @Ifd_ObjPrint(ptr noundef %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 0, ptr %i.a, align 4, !tbaa !38
  switch i32 %1, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %putchar3 = tail call i32 @putchar(i32 48)      ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %putchar = tail call i32 @putchar(i32 49)       ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @Ifd_ObjPrint_rec(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.a, i32 noundef 1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Ifd_ManPrint2(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %Ifd_ObjPrint.exit.peel, label %._crit_edge

Ifd_ObjPrint.exit.peel:                           ; preds = %bb.a
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %putchar3.i.peel = tail call i32 @putchar(i32 48) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %putchar.peel = tail call i32 @putchar(i32 10)  ; 0 uses
  %i.f = load i32, ptr %i.b, align 8, !tbaa !17
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %Ifd_ObjPrint.exit, label %._crit_edge

Ifd_ObjPrint.exit:                                ; preds = %Ifd_ObjPrint.exit.peel, %Ifd_ObjPrint.exit
  %.05 = phi i32 [ %i.j, %Ifd_ObjPrint.exit ], [ 1, %Ifd_ObjPrint.exit.peel ] ; 3 uses
  %i.h = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %.05) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 0, ptr %i.a, align 4, !tbaa !38
  %i.i = shl nuw nsw i32 %.05, 1
  call void @Ifd_ObjPrint_rec(ptr noundef nonnull %0, i32 noundef %i.i, ptr noundef nonnull %i.a, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %i.j = add nuw nsw i32 %.05, 1                  ; 2 uses
  %i.k = load i32, ptr %i.b, align 8, !tbaa !17
  %i.l = icmp slt i32 %i.j, %i.k
  br i1 %i.l, label %Ifd_ObjPrint.exit, label %._crit_edge, !llvm.loop !46

._crit_edge:                                      ; preds = %Ifd_ObjPrint.exit, %Ifd_ObjPrint.exit.peel, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @Ifd_ManPrint(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %Ifd_ObjPrint.exit.peel, label %._crit_edge

Ifd_ObjPrint.exit.peel:                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val11.peel = load ptr, ptr %i.i, align 8, !tbaa !34
  %i.j = load i64, ptr %.val11.peel, align 8, !tbaa !48
  store i64 %i.j, ptr %i.b, align 8, !tbaa !48
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7) ; 0 uses
  %i.l = call i32 @Extra_TruthSupportSize(ptr noundef nonnull %i.b, i32 noundef 6) #29
  %i.m = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.l) ; 0 uses
  %i.n = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 0) ; 0 uses
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val.peel = load ptr, ptr %i.p, align 8, !tbaa !23
  %i.q = load i32, ptr %.val.peel, align 4, !tbaa !38
  %i.r = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.q) ; 0 uses
  %i.s = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10) ; 0 uses
  %i.t = load ptr, ptr @stdout, align 8, !tbaa !50
  call void @Extra_PrintHex(ptr noundef %i.t, ptr noundef nonnull %i.b, i32 noundef 6) #29
  %i.u = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %putchar3.i.peel = call i32 @putchar(i32 48)    ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.v = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.w = load i32, ptr %i.c, align 8, !tbaa !17
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %Ifd_ObjPrint.exit, label %._crit_edge

Ifd_ObjPrint.exit:                                ; preds = %Ifd_ObjPrint.exit.peel, %Ifd_ObjPrint.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %Ifd_ObjPrint.exit ], [ 1, %Ifd_ObjPrint.exit.peel ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val11 = load ptr, ptr %i.z, align 8, !tbaa !34
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.val11, i64 %indvars.iv
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !48
  store i64 %i.ab, ptr %i.b, align 8, !tbaa !48
  %i.ac = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7) ; 0 uses
  %i.ad = call i32 @Extra_TruthSupportSize(ptr noundef nonnull %i.b, i32 noundef 6) #29
  %i.ae = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.ad) ; 0 uses
  %.val.i = load ptr, ptr %0, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = lshr i32 %i.ag, 18
  %i.ai = and i32 %i.ah, 63
  %i.aj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.ai) ; 0 uses
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %.val = load ptr, ptr %i.al, align 8, !tbaa !23
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv
  %i.an = load i32, ptr %i.am, align 4, !tbaa !38
  %i.ao = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.an) ; 0 uses
  %i.ap = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10) ; 0 uses
  %i.aq = load ptr, ptr @stdout, align 8, !tbaa !50
  call void @Extra_PrintHex(ptr noundef %i.aq, ptr noundef nonnull %i.b, i32 noundef 6) #29
  %i.ar = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 0, ptr %i.a, align 4, !tbaa !38
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.as = shl nuw i32 %indvars.iv.tr, 1
  call void @Ifd_ObjPrint_rec(ptr noundef nonnull %0, i32 noundef %i.as, ptr noundef nonnull %i.a, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.at = trunc nuw nsw i64 %indvars.iv to i32
  %i.au = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.at) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.av = load i32, ptr %i.c, align 8, !tbaa !17
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp slt i64 %indvars.iv.next, %i.aw
  br i1 %i.ax, label %Ifd_ObjPrint.exit, label %._crit_edge, !llvm.loop !52

._crit_edge:                                      ; preds = %Ifd_ObjPrint.exit, %Ifd_ObjPrint.exit.peel, %bb.a
  ret void
}

declare i32 @Extra_TruthSupportSize(ptr noundef, i32 noundef) local_unnamed_addr #8

declare void @Extra_PrintHex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @Ifd_ObjTruth_rec(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq i32 %1, 2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %2, align 4, !tbaa !38     ; 2 uses
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %2, align 4, !tbaa !38
  %i.d = sext i32 %i.b to i64
  %i.e = getelementptr inbounds [8 x i8], ptr @Extra_Truth6ChangePhase.Truth6, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !48
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !18
  %i.g = ashr i32 %1, 1
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [16 x i8], ptr %.val, i64 %i.h ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !38
  %i.l = and i32 %i.k, -2
  %i.m = tail call i64 @Ifd_ObjTruth_rec(ptr noundef nonnull %0, i32 noundef %i.l, ptr noundef %2)
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !38
  %i.p = and i32 %i.o, -2
  %i.q = tail call i64 @Ifd_ObjTruth_rec(ptr noundef nonnull %0, i32 noundef %i.p, ptr noundef %2)
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !38   ; 2 uses
  %.not = icmp eq i32 %i.s, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = and i32 %i.s, -2
  %i.u = tail call i64 @Ifd_ObjTruth_rec(ptr noundef nonnull %0, i32 noundef %i.t, ptr noundef %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ %i.u, %bb.d ], [ 0, %bb.c ]
  %i.v = load i32, ptr %i.j, align 4, !tbaa !38
  %i.w = and i32 %i.v, 1
  %sext = sub nsw i32 0, %i.w
  %i.x = sext i32 %sext to i64
  %i.y = xor i64 %i.m, %i.x                       ; 3 uses
  %i.z = load i32, ptr %i.n, align 4, !tbaa !38
  %i.aa = and i32 %i.z, 1
  %sext42 = sub nsw i32 0, %i.aa
  %i.ab = sext i32 %sext42 to i64
  %i.ac = xor i64 %i.q, %i.ab                     ; 3 uses
  %i.ad = load i32, ptr %i.i, align 4
  %i.ae = lshr i32 %i.ad, 29
  %i.af = and i32 %i.ae, 3
  switch i32 %i.af, label %default.unreachable [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 0, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.ag = and i64 %i.ac, %i.y
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ah = xor i64 %i.ac, %i.y
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ai = load i32, ptr %i.r, align 4, !tbaa !38  ; 2 uses
  %.not43 = icmp eq i32 %i.ai, -1
  %i.aj = and i32 %i.ai, 1
  %sext45 = sub nsw i32 0, %i.aj
  %narrow = select i1 %.not43, i32 0, i32 %sext45
  %i.ak = sext i32 %narrow to i64
  %.1 = xor i64 %.0, %i.ak                        ; 2 uses
  %i.al = and i64 %.1, %i.ac
  %i.am = xor i64 %.1, -1
  %i.an = and i64 %i.y, %i.am
  %i.ao = or i64 %i.al, %i.an
  br label %bb.i

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.g, %bb.f, %bb.b
  %.035 = phi i64 [ %i.f, %bb.b ], [ %i.ag, %bb.f ], [ %i.ah, %bb.g ], [ %i.ao, %bb.h ], [ -1, %bb.e ]
  ret i64 %.035
}

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @Ifd_ObjTruth(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 0, ptr %i.a, align 4, !tbaa !38
  switch i32 %1, label %bb.c [
    i32 0, label %bb.d
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = and i32 %1, -2
  %i.c = call i64 @Ifd_ObjTruth_rec(ptr noundef %0, i32 noundef %i.b, ptr noundef nonnull %i.a)
  %i.d = and i32 %1, 1
  %sext = sub nsw i32 0, %i.d
  %i.e = sext i32 %sext to i64
  %i.f = xor i64 %i.c, %i.e
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i64 [ %i.f, %bb.c ], [ -1, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i64 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Ifd_ManTruthAll(ptr noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %Ifd_ObjTruth.exit.peel, label %._crit_edge

Ifd_ObjTruth.exit.peel:                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !40  ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.f = getelementptr inbounds nuw i8, ptr %.pre, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !30   ; 7 uses
  %i.h = load i32, ptr %.pre, align 8, !tbaa !33
  %i.i = icmp eq i32 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %Vec_WrdPush.exit.peel

bb.b:                                             ; preds = %Ifd_ObjTruth.exit.peel
  %i.j = icmp slt i32 %i.g, 16
  br i1 %i.j, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp samesign ult i32 %i.g, 1073741823
  %i.l = shl nuw nsw i32 %i.g, 1
  %spec.select.i.peel = select i1 %i.k, i32 %i.l, i32 2147483647 ; 3 uses
  %.not.i9.i.peel = icmp samesign ult i32 %i.g, %spec.select.i.peel
  br i1 %.not.i9.i.peel, label %bb.d, label %Vec_WrdPush.exit.peel

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !34   ; 2 uses
  %.not9.i10.i.peel = icmp eq ptr %i.n, null
  %i.o = zext nneg i32 %spec.select.i.peel to i64
  %i.p = shl nuw nsw i64 %i.o, 3                  ; 2 uses
  br i1 %.not9.i10.i.peel, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call ptr @realloc(ptr noundef nonnull %i.n, i64 noundef %i.p) #30
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.p) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = phi ptr [ %i.q, %bb.e ], [ %i.r, %bb.f ]
  store ptr %i.s, ptr %i.m, align 8, !tbaa !34
  br label %Vec_WrdGrow.exit11.sink.split.i.peel

bb.h:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !34   ; 2 uses
  %.not9.i.i.peel = icmp eq ptr %i.u, null
  br i1 %.not9.i.i.peel, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.u, i64 noundef 128) #30
  br label %Vec_WrdGrow.exit.i.peel

end_hunk_0
begin_hunk_1_@Ifd_ManDsdTruths:bb.a

bb.l:                                             ; preds = %Ifd_ManOper.exit179.thread
  %i.cv = load ptr, ptr %i.c, align 8, !tbaa !39  ; 5 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 4      ; 3 uses
  store i32 0, ptr %i.cw, align 4, !tbaa !19
  tail call void @Ifd_ManOperSuper_rec(ptr noundef nonnull %i.a, i32 noundef %i.ad, i32 noundef 1, ptr noundef %i.cv)
  %i.cx = trunc i64 %i.aj to i32
  %i.cy = or disjoint i32 %i.cx, 1
  tail call void @Ifd_ManOperSuper_rec(ptr noundef nonnull %i.a, i32 noundef %i.cy, i32 noundef 1, ptr noundef %i.cv)
  %i.cz = getelementptr i8, ptr %i.cv, i64 8      ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !23
  %i.db = load i32, ptr %i.cw, align 4, !tbaa !19
  %i.dc = sext i32 %i.db to i64
  tail call void @qsort(ptr noundef %i.da, i64 noundef %i.dc, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompare2) #29
  %.val94.i182 = load i32, ptr %i.cw, align 4, !tbaa !19
  %i.dd = icmp sgt i32 %.val94.i182, 1
  br i1 %i.dd, label %.lr.ph.i186.preheader, label %Ifd_ManOper.exit192

.lr.ph.i186.preheader:                            ; preds = %bb.l
  %.val85.i181 = load ptr, ptr %i.cz, align 8, !tbaa !23
  %i.de = load i32, ptr %.val85.i181, align 4, !tbaa !38
  br label %.lr.ph.i186

.lr.ph.i186:                                      ; preds = %.lr.ph.i186.preheader, %.lr.ph.i186
  %indvars.iv.i187 = phi i64 [ %indvars.iv.next.i190, %.lr.ph.i186 ], [ 1, %.lr.ph.i186.preheader ] ; 2 uses
  %i.df = phi ptr [ %i.dl, %.lr.ph.i186 ], [ %i.cv, %.lr.ph.i186.preheader ]
  %.06596.i188 = phi i32 [ %i.dk, %.lr.ph.i186 ], [ %i.de, %.lr.ph.i186.preheader ]
  %i.dg = getelementptr i8, ptr %i.df, i64 8
  %.val84.i189 = load ptr, ptr %i.dg, align 8, !tbaa !23
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.val84.i189, i64 %indvars.iv.i187
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !38
  %i.dj = tail call i32 @Ifd_ManHashFindOrAdd(ptr noundef nonnull %i.a, i32 noundef %.06596.i188, i32 noundef %i.di, i32 noundef -1, i32 noundef 1)
  %i.dk = shl nsw i32 %i.dj, 1
  %indvars.iv.next.i190 = add nuw nsw i64 %indvars.iv.i187, 1 ; 2 uses
  %i.dl = load ptr, ptr %i.c, align 8, !tbaa !39  ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 4
  %.val.i191 = load i32, ptr %i.dm, align 4, !tbaa !19
  %i.dn = sext i32 %.val.i191 to i64
  %i.do = icmp slt i64 %indvars.iv.next.i190, %i.dn
  br i1 %i.do, label %.lr.ph.i186, label %Ifd_ManOper.exit192, !llvm.loop !69

Ifd_ManOper.exit192:                              ; preds = %.lr.ph.i186, %Ifd_ManOper.exit166, %bb.l, %Ifd_ManOper.exit179.thread, %Ifd_ManOper.exit179
  %i.dp = icmp slt i64 %indvars.iv340, 1
  %or.cond216 = or i1 %i.z, %i.dp
  br i1 %or.cond216, label %Ifd_ManOper.exit204, label %bb.m

bb.m:                                             ; preds = %Ifd_ManOper.exit192
  %i.dq = load ptr, ptr %i.c, align 8, !tbaa !39  ; 5 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 4      ; 3 uses
  store i32 0, ptr %i.dr, align 4, !tbaa !19
  tail call void @Ifd_ManOperSuper_rec(ptr noundef nonnull %i.a, i32 noundef %i.ae, i32 noundef 2, ptr noundef %i.dq)
  %i.ds = trunc nsw i64 %i.aj to i32
  tail call void @Ifd_ManOperSuper_rec(ptr noundef nonnull %i.a, i32 noundef %i.ds, i32 noundef 2, ptr noundef %i.dq)
  %i.dt = getelementptr i8, ptr %i.dq, i64 8      ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !23
  %i.dv = load i32, ptr %i.dr, align 4, !tbaa !19
  %i.dw = sext i32 %i.dv to i64
  tail call void @qsort(ptr noundef %i.du, i64 noundef %i.dw, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompare2) #29
  %.val94.i194 = load i32, ptr %i.dr, align 4, !tbaa !19
  %i.dx = icmp sgt i32 %.val94.i194, 1
  br i1 %i.dx, label %.lr.ph.i198.preheader, label %Ifd_ManOper.exit204

.lr.ph.i198.preheader:                            ; preds = %bb.m
  %.val85.i193 = load ptr, ptr %i.dt, align 8, !tbaa !23
  %i.dy = load i32, ptr %.val85.i193, align 4, !tbaa !38
  br label %.lr.ph.i198

.lr.ph.i198:                                      ; preds = %.lr.ph.i198.preheader, %.lr.ph.i198
  %indvars.iv.i199 = phi i64 [ %indvars.iv.next.i202, %.lr.ph.i198 ], [ 1, %.lr.ph.i198.preheader ] ; 2 uses
  %i.dz = phi ptr [ %i.ef, %.lr.ph.i198 ], [ %i.dq, %.lr.ph.i198.preheader ]
  %.06596.i200 = phi i32 [ %i.ee, %.lr.ph.i198 ], [ %i.dy, %.lr.ph.i198.preheader ]
  %i.ea = getelementptr i8, ptr %i.dz, i64 8
  %.val84.i201 = load ptr, ptr %i.ea, align 8, !tbaa !23
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.val84.i201, i64 %indvars.iv.i199
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !38
  %i.ed = tail call i32 @Ifd_ManHashFindOrAdd(ptr noundef nonnull %i.a, i32 noundef %.06596.i200, i32 noundef %i.ec, i32 noundef -1, i32 noundef 2)
  %i.ee = shl nsw i32 %i.ed, 1
  %indvars.iv.next.i202 = add nuw nsw i64 %indvars.iv.i199, 1 ; 2 uses
  %i.ef = load ptr, ptr %i.c, align 8, !tbaa !39  ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 4
  %.val.i203 = load i32, ptr %i.eg, align 4, !tbaa !19
  %i.eh = sext i32 %.val.i203 to i64
  %i.ei = icmp slt i64 %indvars.iv.next.i202, %i.eh
  br i1 %i.ei, label %.lr.ph.i198, label %Ifd_ManOper.exit204, !llvm.loop !69

Ifd_ManOper.exit204:                              ; preds = %.lr.ph.i198, %bb.j, %bb.m, %Ifd_ManOper.exit192
  %indvars.iv.next = add nsw i64 %indvars.iv340, 1 ; 3 uses
  %i.ej = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.ek = getelementptr i8, ptr %i.ej, i64 8
  %.val145 = load ptr, ptr %i.ek, align 8, !tbaa !23 ; 5 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.val145, i64 %indvars.iv262
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.en = load i32, ptr %i.em, align 4, !tbaa !38
  %i.eo = sext i32 %i.en to i64
  %i.ep = icmp slt i64 %indvars.iv.next, %i.eo
  br i1 %i.ep, label %bb.f, label %Ifd_ManOper.exit204..critedge2.loopexit_crit_edge, !llvm.loop !75

Ifd_ManOper.exit204..critedge2.loopexit_crit_edge: ; preds = %Ifd_ManOper.exit204
  br label %.critedge2, !llvm.loop !75

.critedge2:                                       ; preds = %bb.f, %.lr.ph, %Ifd_ManOper.exit204..critedge2.loopexit_crit_edge, %bb.e
  %.val147.pre.pre312 = phi ptr [ %.val147.pre.pre311, %bb.e ], [ %.val147.pre.pre311, %.lr.ph ], [ %.val145, %Ifd_ManOper.exit204..critedge2.loopexit_crit_edge ], [ %.val145, %bb.f ]
  %.val147 = phi ptr [ %.val147305, %bb.e ], [ %.val147.pre.pre311, %.lr.ph ], [ %.val145, %Ifd_ManOper.exit204..critedge2.loopexit_crit_edge ], [ %.val145, %bb.f ] ; 2 uses
  %indvars.iv.next260 = add nsw i64 %indvars.iv259, 1 ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.val147, i64 %indvars.iv265
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !38
  %i.et = sext i32 %i.es to i64
  %i.eu = icmp slt i64 %indvars.iv.next260, %i.et
  br i1 %i.eu, label %bb.d, label %.critedge, !llvm.loop !76

.critedge:                                        ; preds = %bb.d, %.critedge2, %bb.c, %bb.b
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next263, %indvars.iv298
  br i1 %exitcond.not, label %bb.n, label %bb.b, !llvm.loop !77

bb.n:                                             ; preds = %.critedge
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 1 ; 2 uses
  %exitcond269.not = icmp eq i64 %indvars.iv.next266, %indvars.iv298
  br i1 %exitcond269.not, label %.preheader220, label %.preheader219, !llvm.loop !78

.preheader218:                                    ; preds = %.preheader220, %._crit_edge251
  %indvars.iv291 = phi i64 [ %indvars.iv.next292, %._crit_edge251 ], [ 1, %.preheader220 ] ; 4 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader218, %._crit_edge
  %indvars.iv286 = phi i64 [ 1, %.preheader218 ], [ %indvars.iv.next287, %._crit_edge ] ; 4 uses
  %i.ev = add nuw nsw i64 %indvars.iv286, %indvars.iv291
  br label %bb.o

bb.o:                                             ; preds = %.preheader, %.critedge4
  %indvars.iv279 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next280, %.critedge4 ] ; 5 uses
  %i.ew = add nuw nsw i64 %i.ev, %indvars.iv279
  %i.ex = icmp eq i64 %i.ew, %indvars.iv298
  br i1 %i.ex, label %bb.p, label %.critedge4

bb.p:                                             ; preds = %bb.o
  %i.ey = load ptr, ptr %i.b, align 8, !tbaa !37  ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ey, i64 8
  %.val144 = load ptr, ptr %i.ez, align 8, !tbaa !23 ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.val144, i64 %indvars.iv291 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !38 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !38
  %i.fe = icmp slt i32 %i.fb, %i.fd
  br i1 %i.fe, label %.lr.ph245, label %.critedge4

.lr.ph245:                                        ; preds = %bb.p
  %i.ff = sext i32 %i.fb to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph245, %.critedge6
  %.val143308 = phi ptr [ %.val144, %.lr.ph245 ], [ %.val143, %.critedge6 ] ; 3 uses
  %i.fg = phi ptr [ %i.ey, %.lr.ph245 ], [ %i.ho, %.critedge6 ] ; 3 uses
  %indvars.iv276 = phi i64 [ %i.ff, %.lr.ph245 ], [ %indvars.iv.next277, %.critedge6 ] ; 4 uses
  %.val151 = load ptr, ptr %i.a, align 8, !tbaa !18 ; 2 uses
  %i.fh = getelementptr inbounds [16 x i8], ptr %.val151, i64 %indvars.iv276 ; 2 uses
  %.not128 = icmp eq ptr %.val151, null
  br i1 %.not128, label %.critedge4, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.val143308, i64 %indvars.iv286 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !38 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !38
  %i.fm = icmp slt i32 %i.fj, %i.fl
  br i1 %i.fm, label %.lr.ph240, label %.critedge6

.lr.ph240:                                        ; preds = %bb.r
  %i.fn = shl nsw i64 %indvars.iv276, 1           ; 3 uses
  %i.fo = or disjoint i64 %i.fn, 1                ; 2 uses
  %i.fp = sext i32 %i.fj to i64
  %i.fq = trunc nsw i64 %i.fn to i32
  %i.fr = trunc nsw i64 %i.fo to i32
  %i.fs = trunc nsw i64 %i.fn to i32
  %i.ft = trunc nsw i64 %i.fo to i32
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph240, %.critedge8
  %i.fu = phi ptr [ %i.fg, %.lr.ph240 ], [ %i.hf, %.critedge8 ] ; 4 uses
  %i.fv = phi ptr [ %i.fg, %.lr.ph240 ], [ %i.hg, %.critedge8 ] ; 3 uses
  %indvars.iv273 = phi i64 [ %i.fp, %.lr.ph240 ], [ %indvars.iv.next274, %.critedge8 ] ; 4 uses
  %.val233 = phi ptr [ %.val143308, %.lr.ph240 ], [ %.val141, %.critedge8 ]
  %.val150 = load ptr, ptr %i.a, align 8, !tbaa !18 ; 2 uses
  %i.fw = getelementptr inbounds [16 x i8], ptr %.val150, i64 %indvars.iv273 ; 2 uses
  %.not129 = icmp eq ptr %.val150, null
  br i1 %.not129, label %.critedge6.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.val233, i64 %indvars.iv279 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !38 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !38
  %i.gb = icmp slt i32 %i.fy, %i.ga
  br i1 %i.gb, label %.lr.ph235, label %.critedge8

.lr.ph235:                                        ; preds = %bb.t
  %i.gc = icmp slt i64 %indvars.iv276, %indvars.iv273
  %.fr = freeze i1 %i.gc
  %indvars.iv273.tr = trunc i64 %indvars.iv273 to i32
  %i.gd = shl nsw i32 %indvars.iv273.tr, 1        ; 4 uses
  %.val149353 = load ptr, ptr %i.a, align 8, !tbaa !18 ; 2 uses
  %.not130354 = icmp eq ptr %.val149353, null     ; 2 uses
  br i1 %.fr, label %.lr.ph235.split.preheader, label %.lr.ph235.split.us.preheader

.lr.ph235.split.us.preheader:                     ; preds = %.lr.ph235
  br i1 %.not130354, label %.critedge8, label %.lr.ph348

.lr.ph235.split.preheader:                        ; preds = %.lr.ph235
  br i1 %.not130354, label %.critedge8, label %.lr.ph357

.lr.ph357:                                        ; preds = %.lr.ph235.split.preheader
  %i.ge = sext i32 %i.fy to i64
  br label %bb.x

.lr.ph235.split.us:                               ; preds = %bb.w
  %.val149.us = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not130.us = icmp eq ptr %.val149.us, null
  br i1 %.not130.us, label %.critedge8, label %.lr.ph348, !llvm.loop !79

.lr.ph348:                                        ; preds = %.lr.ph235.split.us.preheader, %.lr.ph235.split.us
  %.0234.us347 = phi i32 [ %i.gk, %.lr.ph235.split.us ], [ %i.fy, %.lr.ph235.split.us.preheader ] ; 2 uses
  %i.gf = shl nsw i32 %.0234.us347, 1             ; 2 uses
  %i.gg = tail call i32 @Ifd_ManHashFindOrAdd(ptr noundef nonnull %i.a, i32 noundef %i.fq, i32 noundef %i.gd, i32 noundef %i.gf, i32 noundef 3) ; 0 uses
  %i.gh = load i32, ptr %i.fh, align 4
  %.not132.us = icmp sgt i32 %i.gh, -1
  br i1 %.not132.us, label %bb.u, label %bb.w

bb.u:                                             ; preds = %.lr.ph348
  %i.gi = load i32, ptr %i.fw, align 4
  %.not133.us = icmp sgt i32 %i.gi, -1
  br i1 %.not133.us, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gj = tail call i32 @Ifd_ManHashFindOrAdd(ptr noundef nonnull %i.a, i32 noundef %i.fr, i32 noundef %i.gd, i32 noundef %i.gf, i32 noundef 3) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %.lr.ph348
  %i.gk = add nsw i32 %.0234.us347, 1             ; 2 uses
  %i.gl = load ptr, ptr %i.b, align 8, !tbaa !37  ; 5 uses
  %i.gm = getelementptr i8, ptr %i.gl, i64 8
  %.val.us = load ptr, ptr %i.gm, align 8, !tbaa !23
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %.val.us, i64 %indvars.iv279
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !38
  %i.gq = icmp slt i32 %i.gk, %i.gp
  br i1 %i.gq, label %.lr.ph235.split.us, label %..critedge8.loopexit335_crit_edge, !llvm.loop !79

.lr.ph235.split:                                  ; preds = %bb.ab
  %.val149 = load ptr, ptr %i.a, align 8, !tbaa !18 ; 2 uses
  %.not130 = icmp eq ptr %.val149, null
  br i1 %.not130, label %.critedge8, label %bb.x, !llvm.loop !79

bb.x:                                             ; preds = %.lr.ph357, %.lr.ph235.split
  %.val149356 = phi ptr [ %.val149353, %.lr.ph357 ], [ %.val149, %.lr.ph235.split ]
  %indvars.iv270355 = phi i64 [ %i.ge, %.lr.ph357 ], [ %indvars.iv.next271, %.lr.ph235.split ] ; 3 uses
  %i.gr = getelementptr inbounds [16 x i8], ptr %.val149356, i64 %indvars.iv270355
  %i.gs = load i32, ptr %i.gr, align 4
  %.not131 = icmp slt i32 %i.gs, 0
  br i1 %.not131, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %indvars.iv270.tr = trunc i64 %indvars.iv270355 to i32
  %i.gt = shl nsw i32 %indvars.iv270.tr, 1        ; 2 uses
  %i.gu = tail call i32 @Ifd_ManHashFindOrAdd(ptr noundef nonnull %i.a, i32 noundef %i.fs, i32 noundef %i.gd, i32 noundef %i.gt, i32 noundef 3) ; 0 uses
  %i.gv = load i32, ptr %i.fh, align 4
  %.not132 = icmp sgt i32 %i.gv, -1
  br i1 %.not132, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.gw = load i32, ptr %i.fw, align 4
  %.not133 = icmp sgt i32 %i.gw, -1
  br i1 %.not133, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gx = tail call i32 @Ifd_ManHashFindOrAdd(ptr noundef nonnull %i.a, i32 noundef %i.ft, i32 noundef %i.gd, i32 noundef %i.gt, i32 noundef 3) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.x, %bb.y, %bb.z, %bb.aa
  %indvars.iv.next271 = add nsw i64 %indvars.iv270355, 1 ; 2 uses
  %i.gy = load ptr, ptr %i.b, align 8, !tbaa !37  ; 5 uses
  %i.gz = getelementptr i8, ptr %i.gy, i64 8
  %.val = load ptr, ptr %i.gz, align 8, !tbaa !23
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv279
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !38
  %i.hd = sext i32 %i.hc to i64
  %i.he = icmp slt i64 %indvars.iv.next271, %i.hd
  br i1 %i.he, label %.lr.ph235.split, label %..critedge8.loopexit_crit_edge, !llvm.loop !79

..critedge8.loopexit_crit_edge:                   ; preds = %bb.ab
  br label %.critedge8, !llvm.loop !79

..critedge8.loopexit335_crit_edge:                ; preds = %bb.w
  br label %.critedge8, !llvm.loop !79

.critedge8:                                       ; preds = %.lr.ph235.split.us, %.lr.ph235.split, %.lr.ph235.split.us.preheader, %..critedge8.loopexit335_crit_edge, %.lr.ph235.split.preheader, %..critedge8.loopexit_crit_edge, %bb.t
  %i.hf = phi ptr [ %i.gy, %.lr.ph235.split ], [ %i.fu, %bb.t ], [ %i.fu, %.lr.ph235.split.preheader ], [ %i.gy, %..critedge8.loopexit_crit_edge ], [ %i.fu, %.lr.ph235.split.us.preheader ], [ %i.gl, %..critedge8.loopexit335_crit_edge ], [ %i.gl, %.lr.ph235.split.us ] ; 2 uses
  %i.hg = phi ptr [ %i.gy, %.lr.ph235.split ], [ %i.fv, %bb.t ], [ %i.fv, %.lr.ph235.split.preheader ], [ %i.gy, %..critedge8.loopexit_crit_edge ], [ %i.fv, %.lr.ph235.split.us.preheader ], [ %i.gl, %..critedge8.loopexit335_crit_edge ], [ %i.gl, %.lr.ph235.split.us ] ; 2 uses
  %indvars.iv.next274 = add nsw i64 %indvars.iv273, 1 ; 2 uses
  %i.hh = getelementptr i8, ptr %i.hg, i64 8
  %.val141 = load ptr, ptr %i.hh, align 8, !tbaa !23 ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.val141, i64 %indvars.iv286
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !38
  %i.hl = sext i32 %i.hk to i64
  %i.hm = icmp slt i64 %indvars.iv.next274, %i.hl
  br i1 %i.hm, label %bb.s, label %.critedge6.loopexit, !llvm.loop !80

.critedge6.loopexit:                              ; preds = %bb.s, %.critedge8
  %i.hn = phi ptr [ %i.fu, %bb.s ], [ %i.hf, %.critedge8 ] ; 2 uses
  %.phi.trans.insert307 = getelementptr i8, ptr %i.hn, i64 8
  %.val143.pre = load ptr, ptr %.phi.trans.insert307, align 8, !tbaa !23
  br label %.critedge6

.critedge6:                                       ; preds = %.critedge6.loopexit, %bb.r
  %.val143 = phi ptr [ %.val143.pre, %.critedge6.loopexit ], [ %.val143308, %bb.r ] ; 2 uses
  %i.ho = phi ptr [ %i.hn, %.critedge6.loopexit ], [ %i.fg, %bb.r ]
  %indvars.iv.next277 = add nsw i64 %indvars.iv276, 1 ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.val143, i64 %indvars.iv291
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !38
  %i.hs = sext i32 %i.hr to i64
  %i.ht = icmp slt i64 %indvars.iv.next277, %i.hs
  br i1 %i.ht, label %bb.q, label %.critedge4, !llvm.loop !81

.critedge4:                                       ; preds = %bb.q, %.critedge6, %bb.p, %bb.o
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 1 ; 2 uses
  %exitcond285.not = icmp eq i64 %indvars.iv.next280, %indvars.iv296
  br i1 %exitcond285.not, label %._crit_edge, label %bb.o, !llvm.loop !82

._crit_edge:                                      ; preds = %.critedge4
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %exitcond290.not = icmp eq i64 %indvars.iv.next287, %indvars.iv296
  br i1 %exitcond290.not, label %._crit_edge251, label %.preheader, !llvm.loop !83

._crit_edge251:                                   ; preds = %._crit_edge
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %exitcond295.not = icmp eq i64 %indvars.iv.next292, %indvars.iv296
  br i1 %exitcond295.not, label %._crit_edge253, label %.preheader218, !llvm.loop !84

._crit_edge253:                                   ; preds = %._crit_edge251, %.preheader220
  %i.hu = load ptr, ptr %i.b, align 8, !tbaa !37  ; 6 uses
  %i.hv = load i32, ptr %i.d, align 8, !tbaa !17
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 4 ; 3 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !19 ; 7 uses
  %i.hy = load i32, ptr %i.hu, align 8, !tbaa !22
  %i.hz = icmp eq i32 %i.hx, %i.hy
  br i1 %i.hz, label %bb.ac, label %Vec_IntPush.exit

bb.ac:                                            ; preds = %._crit_edge253
  %i.ia = icmp slt i32 %i.hx, 16
  br i1 %i.ia, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !23 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ic, null
  br i1 %.not9.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.id = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ic, i64 noundef 64) #30
  br label %Vec_IntGrow.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.ie = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.af, %bb.ae
  %i.if = phi ptr [ %i.id, %bb.ae ], [ %i.ie, %bb.af ]
  store ptr %i.if, ptr %i.ib, align 8, !tbaa !23
  br label %Vec_IntGrow.exit11.sink.split.i

bb.ag:                                            ; preds = %bb.ac
  %i.ig = icmp samesign ult i32 %i.hx, 1073741823
  %i.ih = shl nuw nsw i32 %i.hx, 1
  %spec.select.i211 = select i1 %i.ig, i32 %i.ih, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.hx, %spec.select.i211
  br i1 %.not.i9.i, label %bb.ah, label %Vec_IntPush.exit

bb.ah:                                            ; preds = %bb.ag
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !23 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ij, null
  %i.ik = zext nneg i32 %spec.select.i211 to i64
  %i.il = shl nuw nsw i64 %i.ik, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.im = tail call ptr @realloc(ptr noundef nonnull %i.ij, i64 noundef %i.il) #30
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.in = tail call noalias ptr @malloc(i64 noundef %i.il) #28
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.io = phi ptr [ %i.im, %bb.ai ], [ %i.in, %bb.aj ]
  store ptr %i.io, ptr %i.ii, align 8, !tbaa !23
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.ak, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i211, %bb.ak ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.hu, align 8, !tbaa !22
  %.pre = load i32, ptr %i.hw, align 4, !tbaa !19
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %._crit_edge253, %bb.ag, %Vec_IntGrow.exit11.sink.split.i
  %i.ip = phi i32 [ %i.hx, %._crit_edge253 ], [ %i.hx, %bb.ag ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !23
  %i.is = add nsw i32 %i.ip, 1
  store i32 %i.is, ptr %i.hw, align 4, !tbaa !19
  %i.it = sext i32 %i.ip to i64
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.ir, i64 %i.it
  store i32 %i.hv, ptr %i.iu, align 4, !tbaa !38
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, 1 ; 2 uses
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1
  %exitcond304.not = icmp eq i64 %indvars.iv.next299, %wide.trip.count303
  br i1 %exitcond304.not, label %._crit_edge256, label %.preheader221, !llvm.loop !85

._crit_edge256:                                   ; preds = %Vec_IntPush.exit, %bb.a
  tail call void @Ifd_ManTruthAll(ptr noundef %i.a)
  tail call void @Mpm_ComputeCnfSizeAll(ptr noundef %i.a)
  %i.iv = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !40
  store ptr null, ptr %i.iv, align 8, !tbaa !40
  tail call void @Ifd_ManStop(ptr noundef %i.a)
  ret ptr %i.iw
}

; Function Attrs: nofree nounwind uwtable
define void @Ifd_ManDsdPermPrint(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.c = load i32, ptr %i.b, align 4, !tbaa !38
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.c) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !86

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Ifd_ManDsdPermJT(i32 noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  store i32 0, ptr %i.b, align 4, !tbaa !19
  store i32 100, ptr %i.a, align 8, !tbaa !22
  %i.c = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #28 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !23
  %i.e = sext i32 %0 to i64                       ; 2 uses
  %i.f = shl nsw i64 %i.e, 2
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #28 ; 13 uses
  %i.h = tail call noalias ptr @calloc(i64 noundef %i.e, i64 noundef 4) #27 ; 8 uses
  %i.i = icmp sgt i32 %0, 0                       ; 2 uses
  br i1 %i.i, label %.lr.ph.preheader, label %.preheader98

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %0, 8
  br i1 %min.iters.check, label %.lr.ph.preheader140, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store <4 x i32> %vec.ind, ptr %i.j, align 4, !tbaa !38
  store <4 x i32> %step.add, ptr %i.k, align 4, !tbaa !38
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader140

.lr.ph.preheader140:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader140, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader140 ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.n, ptr %i.m, align 4, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !90

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %Vec_IntPush.exit94, label %.preheader98

.preheader98:                                     ; preds = %bb.a, %._crit_edge
  %i.o = add nsw i32 %0, -1                       ; 3 uses
  %i.p = zext i32 %i.o to i64
  %wide.trip.count121 = zext i32 %0 to i64        ; 3 uses
  %.not83.peel = icmp eq i32 %i.o, 0
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %xtraiter = and i64 %wide.trip.count121, 1
  %i.r = icmp eq i32 %0, 1
  %unroll_iter = and i64 %wide.trip.count121, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod141 = trunc i32 %0 to i1
  br label %bb.b

bb.b:                                             ; preds = %.preheader98, %._crit_edge105
  %indvars.iv124 = phi i64 [ 0, %.preheader98 ], [ %indvars.iv.next125, %._crit_edge105 ] ; 7 uses
  %storemerge110 = phi ptr [ %i.c, %.preheader98 ], [ %storemerge111, %._crit_edge105 ] ; 6 uses
  %spec.select.sink.i108 = phi i32 [ 100, %.preheader98 ], [ %spec.select.sink.i107, %._crit_edge105 ] ; 3 uses
  %.0 = phi i32 [ %i.o, %.preheader98 ], [ %.2, %._crit_edge105 ] ; 3 uses
  %i.s = sext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !38   ; 4 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.s ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !38   ; 2 uses
  %.not81 = icmp eq i32 %i.w, 0
  %.v = select i1 %.not81, i32 -1, i32 1
  %i.x = add nsw i32 %.v, %.0                     ; 2 uses
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !38
  store i32 %i.aa, ptr %i.t, align 4, !tbaa !38
  store i32 %i.u, ptr %i.z, align 4, !tbaa !38
  %i.ab = tail call noundef i32 @llvm.smin.i32(i32 %.0, i32 %i.x)
  %i.ac = trunc nsw i64 %indvars.iv124 to i32
  %i.ad = icmp eq i32 %spec.select.sink.i108, %i.ac
  br i1 %i.ad, label %bb.c, label %Vec_IntPush.exit

bb.c:                                             ; preds = %bb.b
  %i.ae = icmp samesign ult i64 %indvars.iv124, 16
  br i1 %i.ae, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not9.i.i = icmp eq ptr %storemerge110, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge110, i64 noundef 64) #30
  br label %Vec_IntPush.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.c
  %i.ah = icmp samesign ult i64 %indvars.iv124, 1073741823
  %indvars.iv124.tr = trunc i64 %indvars.iv124 to i32
  %i.ai = shl nsw i32 %indvars.iv124.tr, 1
  %spec.select.i = select i1 %i.ah, i32 %i.ai, i32 2147483647 ; 4 uses
  %i.aj = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv124, %i.aj
  br i1 %.not.i9.i, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %.not9.i10.i = icmp eq ptr %storemerge110, null
  %i.ak = zext nneg i32 %spec.select.i to i64
  %i.al = shl nuw nsw i64 %i.ak, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = tail call ptr @realloc(ptr noundef nonnull %storemerge110, i64 noundef %i.al) #30
  br label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.h
  %i.an = tail call noalias ptr @malloc(i64 noundef %i.al) #28
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.f, %bb.e, %bb.j, %bb.i, %bb.b, %bb.g
  %storemerge111 = phi ptr [ %storemerge110, %bb.b ], [ %storemerge110, %bb.g ], [ %i.ag, %bb.f ], [ %i.af, %bb.e ], [ %i.am, %bb.i ], [ %i.an, %bb.j ] ; 9 uses
  %spec.select.sink.i107 = phi i32 [ %spec.select.sink.i108, %bb.b ], [ %spec.select.sink.i108, %bb.g ], [ 16, %bb.f ], [ 16, %bb.e ], [ %spec.select.i, %bb.i ], [ %spec.select.i, %bb.j ] ; 7 uses
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %storemerge111, i64 %indvars.iv124
  store i32 %i.ab, ptr %i.ao, align 4, !tbaa !38
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.y ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !38
  store i32 %i.aq, ptr %i.v, align 4, !tbaa !38
  store i32 %i.w, ptr %i.ap, align 4, !tbaa !38
  br i1 %i.i, label %.lr.ph101.preheader, label %._crit_edge105.thread

.lr.ph101.preheader:                              ; preds = %Vec_IntPush.exit
  br i1 %i.r, label %.lr.ph101.epil.preheader, label %.lr.ph101

.preheader.unr-lcssa:                             ; preds = %bb.o
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph101.epil.preheader

.lr.ph101.epil.preheader:                         ; preds = %.preheader.unr-lcssa, %.lr.ph101.preheader
  %indvars.iv113.epil.init = phi i64 [ 0, %.lr.ph101.preheader ], [ %indvars.iv.next114.1, %.preheader.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod141)
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv113.epil.init
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !38
  %i.at = icmp sgt i32 %i.as, %i.u
  br i1 %i.at, label %bb.k, label %.preheader

bb.k:                                             ; preds = %.lr.ph101.epil.preheader
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv113.epil.init ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !38
  %.not84.epil = icmp eq i32 %i.av, 0
  %i.aw = zext i1 %.not84.epil to i32
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !38
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph101.epil.preheader, %bb.k, %.preheader.unr-lcssa
  %i.ax = load i32, ptr %i.h, align 4, !tbaa !38
  %i.ay = icmp eq i32 %i.ax, 0
  %or.cond85.peel = select i1 %i.ay, i1 true, i1 %.not83.peel
  br i1 %or.cond85.peel, label %.lr.ph104.preheader, label %bb.l

.lr.ph104.preheader:                              ; preds = %bb.l, %.preheader
  %.1103.ph = phi i32 [ %0, %.preheader ], [ %spec.select139, %bb.l ]
  br label %.lr.ph104

bb.l:                                             ; preds = %.preheader
  %i.az = load i32, ptr %i.g, align 4, !tbaa !38
  %i.ba = load i32, ptr %i.q, align 4, !tbaa !38
  %i.bb = icmp sgt i32 %i.az, %i.ba
  %spec.select139 = select i1 %i.bb, i32 0, i32 %0
  br label %.lr.ph104.preheader

.lr.ph101:                                        ; preds = %.lr.ph101.preheader, %bb.o
  %indvars.iv113 = phi i64 [ %indvars.iv.next114.1, %bb.o ], [ 0, %.lr.ph101.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.o ], [ 0, %.lr.ph101.preheader ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv113
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !38
  %i.be = icmp sgt i32 %i.bd, %i.u
  br i1 %i.be, label %bb.m, label %.lr.ph101.1

bb.m:                                             ; preds = %.lr.ph101
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv113 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !38
  %.not84 = icmp eq i32 %i.bg, 0
  %i.bh = zext i1 %.not84 to i32
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !38
  br label %.lr.ph101.1

.lr.ph101.1:                                      ; preds = %.lr.ph101, %bb.m
  %indvars.iv.next114 = or disjoint i64 %indvars.iv113, 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next114
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !38
  %i.bk = icmp sgt i32 %i.bj, %i.u
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph101.1
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next114 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !38
  %.not84.1 = icmp eq i32 %i.bm, 0
  %i.bn = zext i1 %.not84.1 to i32
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !38
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph101.1
  %indvars.iv.next114.1 = add nuw nsw i64 %indvars.iv113, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.unr-lcssa, label %.lr.ph101, !llvm.loop !91

.lr.ph104:                                        ; preds = %.lr.ph104.preheader, %.thread
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %.thread ], [ 1, %.lr.ph104.preheader ] ; 6 uses
  %.1103 = phi i32 [ %.2, %.thread ], [ %.1103.ph, %.lr.ph104.preheader ] ; 6 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv118
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !38
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph104
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv118 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !38 ; 2 uses
  %i.bt = getelementptr i8, ptr %i.br, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !38
  %i.bv = icmp sgt i32 %i.bs, %i.bu
  br i1 %i.bv, label %bb.s, label %.thread

bb.q:                                             ; preds = %.lr.ph104
  %.not83 = icmp eq i64 %indvars.iv118, %i.p
  br i1 %.not83, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv118 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !38 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !38
  %i.ca = icmp sgt i32 %i.bx, %i.bz
  br i1 %i.ca, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.cb = phi i32 [ %i.bx, %bb.r ], [ %i.bs, %bb.p ]
  %i.cc = sext i32 %.1103 to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !38
  %i.cf = icmp sgt i32 %i.cb, %i.ce
  %i.cg = icmp eq i32 %.1103, %0
  %or.cond86 = select i1 %i.cf, i1 true, i1 %i.cg
  %i.ch = trunc nuw nsw i64 %indvars.iv118 to i32
  %spec.select = select i1 %or.cond86, i32 %i.ch, i32 %.1103
  br label %.thread

.thread:                                          ; preds = %bb.p, %bb.s, %bb.q, %bb.r
  %.2 = phi i32 [ %.1103, %bb.q ], [ %spec.select, %bb.s ], [ %.1103, %bb.r ], [ %.1103, %bb.p ] ; 3 uses
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count121
  br i1 %exitcond122.not, label %._crit_edge105, label %.lr.ph104, !llvm.loop !92

._crit_edge105:                                   ; preds = %.thread
  %i.ci = icmp slt i32 %.2, %0
  br i1 %i.ci, label %bb.b, label %._crit_edge105.thread, !llvm.loop !93

._crit_edge105.thread:                            ; preds = %Vec_IntPush.exit, %._crit_edge105
  %i.cj = trunc nsw i64 %indvars.iv.next125 to i32 ; 5 uses
  store i32 %i.cj, ptr %i.b, align 4, !tbaa !19
  store i32 %spec.select.sink.i107, ptr %i.a, align 8
  store ptr %storemerge111, ptr %i.d, align 8
  %i.ck = icmp eq i32 %spec.select.sink.i107, %i.cj
  br i1 %i.ck, label %bb.t, label %Vec_IntPush.exit94

bb.t:                                             ; preds = %._crit_edge105.thread
  %i.cl = icmp slt i32 %spec.select.sink.i107, 16
  br i1 %i.cl, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %.not9.i.i92 = icmp eq ptr %storemerge111, null
  br i1 %.not9.i.i92, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cm = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge111, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i90

bb.w:                                             ; preds = %bb.u
  %i.cn = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i90

bb.x:                                             ; preds = %bb.t
  %i.co = icmp samesign ult i32 %spec.select.sink.i107, 1073741823
  %i.cp = shl nuw nsw i32 %spec.select.sink.i107, 1
  %spec.select.i87 = select i1 %i.co, i32 %i.cp, i32 2147483647 ; 4 uses
  %.not.i9.i88 = icmp samesign ult i32 %spec.select.sink.i107, %spec.select.i87
  br i1 %.not.i9.i88, label %bb.y, label %Vec_IntPush.exit94

bb.y:                                             ; preds = %bb.x
  %.not9.i10.i89 = icmp eq ptr %storemerge111, null
  %i.cq = zext nneg i32 %spec.select.i87 to i64
  %i.cr = shl nuw nsw i64 %i.cq, 2                ; 2 uses
  br i1 %.not9.i10.i89, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cs = tail call ptr @realloc(ptr noundef nonnull %storemerge111, i64 noundef %i.cr) #30
  br label %Vec_IntGrow.exit11.sink.split.i90

bb.aa:                                            ; preds = %bb.y
  %i.ct = tail call noalias ptr @malloc(i64 noundef %i.cr) #28
end_hunk_1
begin_hunk_2_@Ifd_ComputeSignature:vector.ph
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %spec.select.4.i
  store i32 %i.fa, ptr %i.by, align 4, !tbaa !38
  store i32 %i.ey, ptr %i.fb, align 4, !tbaa !38
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @Ifd_ManDsdTest33() local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [6 x i32], align 16               ; 9 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = tail call ptr @Ifd_ManDsdTruths(i32 noundef 6) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.d = getelementptr i8, ptr %i.c, i64 4        ; 2 uses
  %.val1416 = load i32, ptr %i.d, align 4, !tbaa !30
  %i.e = icmp sgt i32 %.val1416, 0
  br i1 %i.e, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.val = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv
  %i.m = load i64, ptr %i.l, align 8, !tbaa !48   ; 2 uses
  store i64 %i.m, ptr %i.b, align 8, !tbaa !48
  call void @Ifd_ComputeSignature(i64 noundef %i.m, ptr noundef nonnull %i.a)
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  %i.o = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.n) ; 0 uses
  %i.p = load i32, ptr %i.a, align 16, !tbaa !38  ; 3 uses
  %i.q = lshr i32 %i.p, 20
  %i.r = and i32 %i.q, 255
  %i.s = lshr i32 %i.p, 10
  %i.t = and i32 %i.s, 255
  %i.u = and i32 %i.p, 255
  %i.v = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.r, i32 noundef %i.t, i32 noundef %i.u) ; 0 uses
  %i.w = load i32, ptr %i.g, align 4, !tbaa !38   ; 3 uses
  %i.x = lshr i32 %i.w, 20
  %i.y = and i32 %i.x, 255
  %i.z = lshr i32 %i.w, 10
  %i.aa = and i32 %i.z, 255
  %i.ab = and i32 %i.w, 255
  %i.ac = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.y, i32 noundef %i.aa, i32 noundef %i.ab) ; 0 uses
  %i.ad = load i32, ptr %i.h, align 8, !tbaa !38  ; 3 uses
  %i.ae = lshr i32 %i.ad, 20
  %i.af = and i32 %i.ae, 255
  %i.ag = lshr i32 %i.ad, 10
  %i.ah = and i32 %i.ag, 255
  %i.ai = and i32 %i.ad, 255
  %i.aj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.af, i32 noundef %i.ah, i32 noundef %i.ai) ; 0 uses
  %i.ak = load i32, ptr %i.i, align 4, !tbaa !38  ; 3 uses
  %i.al = lshr i32 %i.ak, 20
  %i.am = and i32 %i.al, 255
  %i.an = lshr i32 %i.ak, 10
  %i.ao = and i32 %i.an, 255
  %i.ap = and i32 %i.ak, 255
  %i.aq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.am, i32 noundef %i.ao, i32 noundef %i.ap) ; 0 uses
  %i.ar = load i32, ptr %i.j, align 16, !tbaa !38 ; 3 uses
  %i.as = lshr i32 %i.ar, 20
  %i.at = and i32 %i.as, 255
  %i.au = lshr i32 %i.ar, 10
  %i.av = and i32 %i.au, 255
  %i.aw = and i32 %i.ar, 255
  %i.ax = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.at, i32 noundef %i.av, i32 noundef %i.aw) ; 0 uses
  %i.ay = load i32, ptr %i.k, align 4, !tbaa !38  ; 3 uses
  %i.az = lshr i32 %i.ay, 20
  %i.ba = and i32 %i.az, 255
  %i.bb = lshr i32 %i.ay, 10
  %i.bc = and i32 %i.bb, 255
  %i.bd = and i32 %i.ay, 255
  %i.be = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.ba, i32 noundef %i.bc, i32 noundef %i.bd) ; 0 uses
  %i.bf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18) ; 0 uses
  call void @Kit_DsdPrintFromTruth(ptr noundef nonnull %i.b, i32 noundef 6) #29
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val14 = load i32, ptr %i.d, align 4, !tbaa !30
  %i.bg = sext i32 %.val14 to i64
  %i.bh = icmp slt i64 %indvars.iv.next, %i.bg
  br i1 %i.bh, label %bb.b, label %.critedge, !llvm.loop !99

.critedge:                                        ; preds = %bb.b, %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !34 ; 2 uses
  %.not.i = icmp eq ptr %i.bj, null
  br i1 %.not.i, label %Vec_WrdFree.exit, label %bb.c

bb.c:                                             ; preds = %.critedge
  call void @free(ptr noundef nonnull %i.bj) #29
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %.critedge, %bb.c
  call void @free(ptr noundef nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 1
}

declare void @Kit_DsdPrintFromTruth(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define noundef i32 @Ifd_ManDsdTest() local_unnamed_addr #4 {
bb.a:
  %0 = alloca %struct.Vec_Int_t_, align 8         ; 6 uses
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = tail call ptr @Ifd_ManDsdTruths(i32 noundef 6) ; 4 uses
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 4 uses
  store i32 0, ptr %i.d, align 4, !tbaa !30
  store i32 4000000, ptr %i.c, align 8, !tbaa !33
  %i.e = tail call noalias dereferenceable_or_null(32000000) ptr @malloc(i64 noundef 32000000) #28
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !34
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 4 uses
  store i32 0, ptr %i.h, align 4, !tbaa !19
  store i32 4000000, ptr %i.g, align 8, !tbaa !22
  %i.i = tail call noalias dereferenceable_or_null(16000000) ptr @malloc(i64 noundef 16000000) #28
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !23
  %i.k = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  store i32 46080, ptr %i.k, align 8, !tbaa !22
  %i.m = tail call noalias dereferenceable_or_null(184320) ptr @malloc(i64 noundef 184320) #28 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 5 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !23
  %i.o = tail call ptr @Extra_GreyCodeSchedule(i32 noundef 6) #29 ; 3 uses
  %i.p = tail call ptr @Extra_PermSchedule(i32 noundef 6) #29 ; 3 uses
  %i.q = getelementptr i8, ptr %i.b, i64 4        ; 2 uses
  %.val87135 = load i32, ptr %i.q, align 4, !tbaa !30
  %i.r = icmp sgt i32 %.val87135, 0
  br i1 %i.r, label %.lr.ph138, label %.critedge

.lr.ph138:                                        ; preds = %bb.a
  %i.s = getelementptr i8, ptr %i.b, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph138, %Vec_WrdFree.exit
  %indvars.iv163 = phi i64 [ 0, %.lr.ph138 ], [ %indvars.iv.next164, %Vec_WrdFree.exit ] ; 3 uses
  %.0137 = phi i32 [ 0, %.lr.ph138 ], [ %i.fu, %Vec_WrdFree.exit ]
  %.val84 = load ptr, ptr %i.s, align 8, !tbaa !34
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.val84, i64 %indvars.iv163
  %i.w = load i64, ptr %i.v, align 8, !tbaa !48
  %i.x = call ptr @Extra_Truth6AllConfigs(i64 noundef %i.w, ptr noundef %i.o, ptr noundef %i.p, i32 noundef 6) ; 5 uses
  store i32 0, ptr %i.l, align 4, !tbaa !19
  %i.y = getelementptr i8, ptr %i.x, i64 4
  %.val86 = load i32, ptr %i.y, align 4, !tbaa !30 ; 6 uses
  %i.z = icmp sgt i32 %.val86, 0                  ; 2 uses
  br i1 %i.z, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.b
  %i.aa = getelementptr i8, ptr %i.x, i64 8
  %.val83 = load ptr, ptr %i.aa, align 8, !tbaa !34
  %.promoted125 = load i32, ptr %i.k, align 8, !tbaa !22
  %.promoted128 = load ptr, ptr %i.n, align 8, !tbaa !23
  %wide.trip.count = zext nneg i32 %.val86 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %indvars.iv145 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next146, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 7 uses
  %storemerge118129 = phi ptr [ %.promoted128, %.lr.ph ], [ %storemerge118130, %Vec_IntPush.exit ] ; 6 uses
  %spec.select.sink.i127 = phi i32 [ %.promoted125, %.lr.ph ], [ %spec.select.sink.i126, %Vec_IntPush.exit ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.val83, i64 %indvars.iv145 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !48 ; 3 uses
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 1
  %i.af = trunc nsw i64 %indvars.iv to i32
  %i.ag = icmp eq i32 %spec.select.sink.i127, %i.af
  br i1 %i.ag, label %bb.d, label %Vec_IntPush.exit

bb.d:                                             ; preds = %bb.c
  %i.ah = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.ah, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not9.i.i = icmp eq ptr %storemerge118129, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge118129, i64 noundef 64) #30
  br label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.e
  %i.aj = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.d
  %i.ak = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.al = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.ak, i32 %i.al, i32 2147483647 ; 4 uses
  %i.am = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.am
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i10.i = icmp eq ptr %storemerge118129, null
  %i.an = zext nneg i32 %spec.select.i to i64
  %i.ao = shl nuw nsw i64 %i.an, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = call ptr @realloc(ptr noundef nonnull %storemerge118129, i64 noundef %i.ao) #30
  br label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.i
  %i.aq = call noalias ptr @malloc(i64 noundef %i.ao) #28
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.g, %bb.f, %bb.k, %bb.j, %bb.c, %bb.h
  %storemerge118130 = phi ptr [ %storemerge118129, %bb.c ], [ %storemerge118129, %bb.h ], [ %i.aj, %bb.g ], [ %i.ai, %bb.f ], [ %i.ap, %bb.j ], [ %i.aq, %bb.k ] ; 3 uses
  %spec.select.sink.i126 = phi i32 [ %spec.select.sink.i127, %bb.c ], [ %spec.select.sink.i127, %bb.h ], [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %storemerge118130, i64 %indvars.iv
  store i32 %i.ae, ptr %i.ar, align 4, !tbaa !38
  %i.as = and i64 %i.ac, 1
  %sext = sub nsw i64 0, %i.as
  %i.at = xor i64 %i.ac, %sext
  store i64 %i.at, ptr %i.ab, align 8, !tbaa !48
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next146, %wide.trip.count
  br i1 %exitcond.not, label %..critedge2_crit_edge, label %bb.c, !llvm.loop !100

..critedge2_crit_edge:                            ; preds = %Vec_IntPush.exit
  %i.au = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.au, ptr %i.l, align 4, !tbaa !19
  store i32 %spec.select.sink.i126, ptr %i.k, align 8
  store ptr %storemerge118130, ptr %i.n, align 8
  br label %.critedge2

.critedge2:                                       ; preds = %..critedge2_crit_edge, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #29
  %.val17.i = load i32, ptr %i.x, align 8, !tbaa !33
  %i.av = shl nsw i32 %.val17.i, 1
  store i32 %i.av, ptr %0, align 8, !tbaa !22
  %i.aw = shl nsw i32 %.val86, 1
  store i32 %i.aw, ptr %i.t, align 4, !tbaa !19
  %i.ax = getelementptr i8, ptr %i.x, i64 8       ; 3 uses
  %.val16.i = load ptr, ptr %i.ax, align 8, !tbaa !34
  store ptr %.val16.i, ptr %i.u, align 8, !tbaa !23
  %i.ay = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 5 uses
  store i32 0, ptr %i.az, align 4, !tbaa !19
  store i32 100, ptr %i.ay, align 8, !tbaa !22
  %i.ba = call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #28 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !23
  %i.bc = call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #27 ; 6 uses
  store i32 2, ptr %i.bc, align 8, !tbaa !26
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %0, ptr %i.bd, align 8, !tbaa !28
  %i.be = add nsw i32 %.val86, -1                 ; 2 uses
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge.i.i.i.backedge, %.critedge2
  %.012.i.i.i = phi i32 [ %i.be, %.critedge2 ], [ %i.bf, %.critedge.i.i.i.backedge ] ; 3 uses
  %i.bf = add i32 %.012.i.i.i, 1                  ; 7 uses
  %i.bg = and i32 %.012.i.i.i, 1
  %.not.not.i.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.not.i.i.i, label %.preheader.i.i.i, label %.critedge.i.i.i.backedge

.critedge.i.i.i.backedge:                         ; preds = %.lr.ph.i.i.i, %.critedge.i.i.i
  br label %.critedge.i.i.i

.preheader.i.i.i:                                 ; preds = %.critedge.i.i.i
  %.not15.i.i.i = icmp ult i32 %i.bf, 9
  br i1 %.not15.i.i.i, label %Abc_PrimeCudd.exit.i.i, label %.lr.ph.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.bh = add nuw nsw i32 %.01116.i.i.i, 2        ; 3 uses
  %i.bi = mul nuw nsw i32 %i.bh, %i.bh
  %.not.i.i.i = icmp ugt i32 %i.bi, %i.bf
  br i1 %.not.i.i.i, label %Abc_PrimeCudd.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !8

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.l
  %.01116.i.i.i = phi i32 [ %i.bh, %bb.l ], [ 3, %.preheader.i.i.i ] ; 2 uses
  %i.bj = urem i32 %i.bf, %.01116.i.i.i
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %.critedge.i.i.i.backedge, label %bb.l

Abc_PrimeCudd.exit.i.i:                           ; preds = %.preheader.i.i.i, %bb.l
  %i.bl = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %or.cond.i.i.i.i = icmp samesign ult i32 %.012.i.i.i, 15
  %spec.store.select.i.i.i.i = select i1 %or.cond.i.i.i.i, i32 16, i32 %i.bf ; 2 uses
  store i32 %spec.store.select.i.i.i.i, ptr %i.bl, align 8, !tbaa !22
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = zext nneg i32 %spec.store.select.i.i.i.i to i64
  %i.bo = shl nuw nsw i64 %i.bn, 2
  %i.bp = call noalias ptr @malloc(i64 noundef %i.bo) #28 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !23
  store i32 %i.bf, ptr %i.bm, align 4, !tbaa !19
  %.not.i8.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i8.i.i, label %Vec_IntStartFull.exit.i.i, label %bb.m

bb.m:                                             ; preds = %Abc_PrimeCudd.exit.i.i
  %i.br = zext nneg i32 %i.bf to i64
  %i.bs = shl nuw nsw i64 %i.br, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bp, i8 -1, i64 %i.bs, i1 false)
  br label %Vec_IntStartFull.exit.i.i

Vec_IntStartFull.exit.i.i:                        ; preds = %bb.m, %Abc_PrimeCudd.exit.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store ptr %i.bl, ptr %i.bt, align 8, !tbaa !29
  %i.bu = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %or.cond.i.i.i = icmp ult i32 %i.be, 15
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i32 16, i32 %.val86 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i32 0, ptr %i.bv, align 4, !tbaa !30
  store i32 %spec.store.select.i.i.i, ptr %i.bu, align 8, !tbaa !33
  %.not.i9.i.i = icmp eq i32 %spec.store.select.i.i.i, 0
  br i1 %.not.i9.i.i, label %Hsh_IntManStart.exit.i, label %bb.n

bb.n:                                             ; preds = %Vec_IntStartFull.exit.i.i
  %i.bw = sext i32 %spec.store.select.i.i.i to i64
  %i.bx = shl nsw i64 %i.bw, 3
  %i.by = call noalias ptr @malloc(i64 noundef %i.bx) #28
  br label %Hsh_IntManStart.exit.i

Hsh_IntManStart.exit.i:                           ; preds = %bb.n, %Vec_IntStartFull.exit.i.i
  %i.bz = phi ptr [ %i.by, %bb.n ], [ null, %Vec_IntStartFull.exit.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !34
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr %i.bu, ptr %i.cb, align 8, !tbaa !35
  br i1 %i.z, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %Hsh_IntManStart.exit.i
  %wide.trip.count155 = zext nneg i32 %.val86 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %Vec_IntPush.exit.i
  %indvars.iv150 = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next151, %Vec_IntPush.exit.i ] ; 4 uses
  %i.cc = phi ptr [ %i.ba, %.lr.ph.i.preheader ], [ %i.cq, %Vec_IntPush.exit.i ] ; 6 uses
  %i.cd = phi i32 [ 100, %.lr.ph.i.preheader ], [ %i.cr, %Vec_IntPush.exit.i ] ; 7 uses
  %indvars154 = trunc i64 %indvars.iv150 to i32
  %i.ce = call fastcc i32 @Hsh_IntManAdd(ptr noundef nonnull %i.bc, i32 noundef %indvars154)
  %i.cf = zext i32 %i.cd to i64
  %i.cg = icmp eq i64 %indvars.iv150, %i.cf
  br i1 %i.cg, label %bb.o, label %Vec_IntPush.exit.i

bb.o:                                             ; preds = %.lr.ph.i
  %i.ch = icmp slt i32 %i.cd, 16
  br i1 %i.ch, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %.not9.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not9.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.cc, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.r:                                             ; preds = %bb.p
  %i.cj = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.s:                                             ; preds = %bb.o
  %i.ck = icmp samesign ult i32 %i.cd, 1073741823
  %i.cl = shl nuw nsw i32 %i.cd, 1
  %spec.select.i.i = select i1 %i.ck, i32 %i.cl, i32 2147483647 ; 4 uses
  %.not.i9.i18.i = icmp samesign ult i32 %i.cd, %spec.select.i.i
  br i1 %.not.i9.i18.i, label %bb.t, label %Vec_IntPush.exit.i

bb.t:                                             ; preds = %bb.s
  %.not9.i10.i.i = icmp eq ptr %i.cc, null
  %i.cm = zext nneg i32 %spec.select.i.i to i64
  %i.cn = shl nuw nsw i64 %i.cm, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = call ptr @realloc(ptr noundef nonnull %i.cc, i64 noundef %i.cn) #30
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.v:                                             ; preds = %bb.t
  %i.cp = call noalias ptr @malloc(i64 noundef %i.cn) #28
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.v, %bb.u, %bb.r, %bb.q
  %storemerge.i = phi ptr [ %i.cj, %bb.r ], [ %i.ci, %bb.q ], [ %i.co, %bb.u ], [ %i.cp, %bb.v ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.r ], [ 16, %bb.q ], [ %spec.select.i.i, %bb.u ], [ %spec.select.i.i, %bb.v ] ; 2 uses
  store ptr %storemerge.i, ptr %i.bb, align 8, !tbaa !23
  store i32 %spec.select.sink.i.i, ptr %i.ay, align 8, !tbaa !22
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.s, %.lr.ph.i
  %i.cq = phi ptr [ %i.cc, %.lr.ph.i ], [ %i.cc, %bb.s ], [ %storemerge.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 3 uses
  %i.cr = phi i32 [ %i.cd, %.lr.ph.i ], [ %i.cd, %bb.s ], [ %spec.select.sink.i.i, %Vec_IntGrow.exit11.sink.split.i.i ]
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 3 uses
  %i.cs = trunc nuw nsw i64 %indvars.iv.next151 to i32
end_hunk_2
