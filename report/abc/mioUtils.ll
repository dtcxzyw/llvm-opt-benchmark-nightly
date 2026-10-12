Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/mioUtils?download=true
inline.NumInlined: 166
inline.NumDeleted: 72
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 21
begin_hunk_0_@Mio_CheckGates:bb.a
  %.011 = phi i32 [ 0, %bb.e ], [ 1, %bb.a ], [ 0, %Mio_CheckPins.exit ], [ 0, %bb.f ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 1, %._crit_edge ]
  ret i32 %.011
}

; Function Attrs: nofree nounwind uwtable
define void @Mio_WritePin(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.3, i64 7, i64 1, ptr %0) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !67
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %2, ptr noundef %i.a) #30 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !78
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @__const.Mio_WritePin.pPhaseNames, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !68
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %i.g) #30 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !72
  %i.k = fptosi double %i.j to i32
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %i.k) #30 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load double, ptr %i.m, align 8, !tbaa !73
  %i.o = fptosi double %i.n to i32
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %i.o) #30 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load double, ptr %i.q, align 8, !tbaa !74
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, double noundef %i.r) #30 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load double, ptr %i.t, align 8, !tbaa !75
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, double noundef %i.u) #30 ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load double, ptr %i.w, align 8, !tbaa !76
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, double noundef %i.x) #30 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = load double, ptr %i.z, align 8, !tbaa !77
  %i.ab = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, double noundef %i.aa) #30 ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define void @Mio_WriteGate(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [5000 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65
  %i.f = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %i.c, ptr noundef %i.e) #30 ; 0 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !64
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %2, ptr noundef %i.g) #30 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !79
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, double noundef %i.j) #30 ; 0 uses
  %i.l = add nsw i32 %4, %3
  %i.m = tail call i32 @llvm.smin.i32(i32 %i.l, i32 58)
  %i.n = add nsw i32 %i.m, 2
  %i.o = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %i.n, ptr noundef nonnull %i.a) #30 ; 0 uses
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !80   ; 2 uses
  %.not27 = icmp eq ptr %i.q, null
  %spec.select = select i1 %.not27, ptr @.str.14, ptr %i.q
  %fputs = call i32 @fputs(ptr nonnull %spec.select, ptr %0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not28 = icmp eq i32 %6, 0
  br i1 %.not28, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !81   ; 8 uses
  %.not29 = icmp eq ptr %i.s, null
  br i1 %.not29, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.3, i64 7, i64 1, ptr %0) ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !78
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @__const.Mio_WritePin.pPhaseNames, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !68
  %i.y = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %i.x) #30 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.aa = load double, ptr %i.z, align 8, !tbaa !72
  %i.ab = fptosi double %i.aa to i32
  %i.ac = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %i.ab) #30 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !73
  %i.af = fptosi double %i.ae to i32
  %i.ag = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %i.af) #30 ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !74
  %i.aj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, double noundef %i.ai) #30 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.al = load double, ptr %i.ak, align 8, !tbaa !75
  %i.am = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, double noundef %i.al) #30 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.ao = load double, ptr %i.an, align 8, !tbaa !76
  %i.ap = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, double noundef %i.ao) #30 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !77
  %i.as = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, double noundef %i.ar) #30 ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.at = call ptr @Mio_GateReadPins(ptr noundef nonnull %1) #30 ; 2 uses
  %.not3031 = icmp eq ptr %i.at, null
  br i1 %.not3031, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.032 = phi ptr [ %i.bw, %.lr.ph ], [ %i.at, %bb.f ] ; 9 uses
  %i.au = load ptr, ptr %.032, align 8, !tbaa !67
  %i.av = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %3, ptr noundef %i.au) #30 ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.032, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !78
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @__const.Mio_WritePin.pPhaseNames, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !68
  %i.bb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %i.ba) #30 ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.032, i64 16
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !72
  %i.be = fptosi double %i.bd to i32
  %i.bf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %i.be) #30 ; 0 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.032, i64 24
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !73
  %i.bi = fptosi double %i.bh to i32
  %i.bj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %i.bi) #30 ; 0 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.032, i64 32
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !74
  %i.bm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, double noundef %i.bl) #30 ; 0 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.032, i64 40
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !75
  %i.bp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, double noundef %i.bo) #30 ; 0 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.032, i64 48
  %i.br = load double, ptr %i.bq, align 8, !tbaa !76
  %i.bs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, double noundef %i.br) #30 ; 0 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.032, i64 56
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !77
  %i.bv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, double noundef %i.bu) #30 ; 0 uses
  %i.bw = call ptr @Mio_PinReadNext(ptr noundef nonnull %.032) #30 ; 2 uses
  %.not30 = icmp eq ptr %i.bw, null
  br i1 %.not30, label %.loopexit, label %.lr.ph, !llvm.loop !129

.loopexit:                                        ; preds = %.lr.ph, %bb.f, %bb.e
  %fputc = call i32 @fputc(i32 10, ptr %0)        ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define void @Mio_WriteLibrary(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call noalias dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #31 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @Mio_CheckGates(ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i32 [ 1, %bb.a ], [ %i.c, %bb.b ]
  %.not55 = icmp eq i32 %4, 0
  br i1 %.not55, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !82
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph79, label %.critedge

.lr.ph79:                                         ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr (...) @Abc_FrameReadLibGen() #30
  %i.j = call noundef ptr @Mio_CollectRootsNew2(ptr noundef %i.i, i32 noundef 6, ptr noundef nonnull %i.a, i32 noundef 0) ; 4 uses
  %i.k = load i32, ptr %i.a, align 4, !tbaa !69   ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %bb.n

.lr.ph:                                           ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.k to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %Vec_PtrPush.exit
  %indvars.iv110 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next111, %Vec_PtrPush.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_PtrPush.exit ] ; 7 uses
  %storemerge76 = phi ptr [ %i.b, %.lr.ph ], [ %storemerge77, %Vec_PtrPush.exit ] ; 6 uses
  %spec.select.sink.i74 = phi i32 [ 1000, %.lr.ph ], [ %spec.select.sink.i73, %Vec_PtrPush.exit ] ; 3 uses
  %i.m = getelementptr inbounds nuw [80 x i8], ptr %i.j, i64 %indvars.iv110
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !86
  %i.p = trunc nsw i64 %indvars.iv to i32
  %i.q = icmp eq i32 %spec.select.sink.i74, %i.p
  br i1 %i.q, label %bb.f, label %Vec_PtrPush.exit

bb.f:                                             ; preds = %bb.e
  %i.r = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.r, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.not9.i.i = icmp eq ptr %storemerge76, null
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge76, i64 noundef 128) #33
  br label %Vec_PtrPush.exit

bb.i:                                             ; preds = %bb.g
  %i.t = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #31
  br label %Vec_PtrPush.exit

bb.j:                                             ; preds = %bb.f
  %i.u = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.v = shl nuw nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.u, i32 %i.v, i32 2147483647 ; 4 uses
  %5 = zext nneg i32 %spec.select.i to i64
  %.not.i10.i = icmp samesign ult i64 %indvars.iv, %5
  br i1 %.not.i10.i, label %bb.k, label %Vec_PtrPush.exit

bb.k:                                             ; preds = %bb.j
  %.not9.i11.i = icmp eq ptr %storemerge76, null
  %i.w = zext nneg i32 %spec.select.i to i64
  %i.x = shl nuw nsw i64 %i.w, 3                  ; 2 uses
  br i1 %.not9.i11.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = call ptr @realloc(ptr noundef nonnull %storemerge76, i64 noundef %i.x) #33
  br label %Vec_PtrPush.exit

bb.m:                                             ; preds = %bb.k
  %i.z = call noalias ptr @malloc(i64 noundef %i.x) #31
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.i, %bb.h, %bb.m, %bb.l, %bb.e, %bb.j
  %storemerge77 = phi ptr [ %storemerge76, %bb.e ], [ %storemerge76, %bb.j ], [ %i.t, %bb.i ], [ %i.s, %bb.h ], [ %i.y, %bb.l ], [ %i.z, %bb.m ] ; 3 uses
  %spec.select.sink.i73 = phi i32 [ %spec.select.sink.i74, %bb.e ], [ %spec.select.sink.i74, %bb.j ], [ 16, %bb.i ], [ 16, %bb.h ], [ %spec.select.i, %bb.l ], [ %spec.select.i, %bb.m ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %storemerge77, i64 %indvars.iv
  store ptr %i.o, ptr %i.aa, align 8, !tbaa !87
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.e, !llvm.loop !130

.thread:                                          ; preds = %Vec_PtrPush.exit
  call void @free(ptr noundef nonnull %i.j) #30
  br label %.loopexit

bb.n:                                             ; preds = %bb.d
  %.not56 = icmp eq ptr %i.j, null
  br i1 %.not56, label %.critedge, label %..loopexit_crit_edge

bb.o:                                             ; preds = %.lr.ph79, %Vec_PtrPush.exit69
  %indvars.iv117 = phi i64 [ 0, %.lr.ph79 ], [ %indvars.iv.next118, %Vec_PtrPush.exit69 ] ; 2 uses
  %indvars.iv115 = phi i64 [ 0, %.lr.ph79 ], [ %indvars.iv.next116, %Vec_PtrPush.exit69 ] ; 7 uses
  %storemerge7086 = phi ptr [ %i.b, %.lr.ph79 ], [ %storemerge7087, %Vec_PtrPush.exit69 ] ; 6 uses
  %spec.select.sink.i6684 = phi i32 [ 1000, %.lr.ph79 ], [ %spec.select.sink.i6683, %Vec_PtrPush.exit69 ] ; 3 uses
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv117
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !88
  %i.ae = trunc nsw i64 %indvars.iv115 to i32
  %i.af = icmp eq i32 %spec.select.sink.i6684, %i.ae
  br i1 %i.af, label %bb.p, label %Vec_PtrPush.exit69

bb.p:                                             ; preds = %bb.o
  %i.ag = icmp samesign ult i64 %indvars.iv115, 16
  br i1 %i.ag, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %.not9.i.i67 = icmp eq ptr %storemerge7086, null
  br i1 %.not9.i.i67, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ah = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge7086, i64 noundef 128) #33
  br label %Vec_PtrPush.exit69

bb.s:                                             ; preds = %bb.q
  %i.ai = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #31
  br label %Vec_PtrPush.exit69

bb.t:                                             ; preds = %bb.p
  %i.aj = icmp samesign ult i64 %indvars.iv115, 1073741823
  %indvars.iv115.tr = trunc nsw i64 %indvars.iv115 to i32
  %i.ak = shl nuw nsw i32 %indvars.iv115.tr, 1
  %spec.select.i62 = select i1 %i.aj, i32 %i.ak, i32 2147483647 ; 4 uses
  %6 = zext nneg i32 %spec.select.i62 to i64
  %.not.i10.i63 = icmp samesign ult i64 %indvars.iv115, %6
  br i1 %.not.i10.i63, label %bb.u, label %Vec_PtrPush.exit69

bb.u:                                             ; preds = %bb.t
  %.not9.i11.i64 = icmp eq ptr %storemerge7086, null
  %i.al = zext nneg i32 %spec.select.i62 to i64
  %i.am = shl nuw nsw i64 %i.al, 3                ; 2 uses
  br i1 %.not9.i11.i64, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.an = tail call ptr @realloc(ptr noundef nonnull %storemerge7086, i64 noundef %i.am) #33
  br label %Vec_PtrPush.exit69

bb.w:                                             ; preds = %bb.u
  %i.ao = tail call noalias ptr @malloc(i64 noundef %i.am) #31
  br label %Vec_PtrPush.exit69

Vec_PtrPush.exit69:                               ; preds = %bb.s, %bb.r, %bb.w, %bb.v, %bb.o, %bb.t
  %storemerge7087 = phi ptr [ %storemerge7086, %bb.o ], [ %storemerge7086, %bb.t ], [ %i.ai, %bb.s ], [ %i.ah, %bb.r ], [ %i.an, %bb.v ], [ %i.ao, %bb.w ] ; 3 uses
  %spec.select.sink.i6683 = phi i32 [ %spec.select.sink.i6684, %bb.o ], [ %spec.select.sink.i6684, %bb.t ], [ 16, %bb.s ], [ 16, %bb.r ], [ %spec.select.i62, %bb.v ], [ %spec.select.i62, %bb.w ]
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %storemerge7087, i64 %indvars.iv115
  store ptr %i.ad, ptr %i.ap, align 8, !tbaa !87
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %i.aq = load i32, ptr %i.e, align 8, !tbaa !82
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp slt i64 %indvars.iv.next118, %i.ar
  br i1 %i.as, label %bb.o, label %.loopexit, !llvm.loop !131

..loopexit_crit_edge:                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.j) #30
  br label %.critedge

.loopexit:                                        ; preds = %Vec_PtrPush.exit69, %.thread
  %.val59148.in = phi i64 [ %indvars.iv.next, %.thread ], [ %indvars.iv.next116, %Vec_PtrPush.exit69 ] ; 2 uses
  %i.at = phi ptr [ %storemerge77, %.thread ], [ %storemerge7087, %Vec_PtrPush.exit69 ] ; 2 uses
  %.val59148 = trunc i64 %.val59148.in to i32
  %wide.trip.count125 = and i64 %.val59148.in, 4294967295
  br label %bb.x

bb.x:                                             ; preds = %.loopexit, %._crit_edge93
  %indvars.iv122 = phi i64 [ 0, %.loopexit ], [ %indvars.iv.next123, %._crit_edge93 ] ; 2 uses
  %.097 = phi i32 [ 0, %.loopexit ], [ %i.bj, %._crit_edge93 ]
  %.04996 = phi i32 [ 0, %.loopexit ], [ %.1.lcssa, %._crit_edge93 ]
  %.05095 = phi i32 [ 0, %.loopexit ], [ %i.az, %._crit_edge93 ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv122
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !87 ; 4 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !64
  %i.ax = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #32
  %i.ay = trunc i64 %i.ax to i32
  %i.az = call noundef i32 @llvm.smax.i32(i32 %.05095, i32 %i.ay) ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !63
  %i.bc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bb) #32
  %i.bd = trunc i64 %i.bc to i32
  %i.be = call noundef i32 @llvm.smax.i32(i32 %.04996, i32 %i.bd) ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !65
  %i.bh = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bg) #32
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = call noundef i32 @llvm.smax.i32(i32 %.097, i32 %i.bi) ; 2 uses
  %i.bk = call ptr @Mio_GateReadPins(ptr noundef nonnull %i.av) #30 ; 2 uses
  %.not5788 = icmp eq ptr %i.bk, null
  br i1 %.not5788, label %._crit_edge93, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.x, %.lr.ph92
  %.190 = phi i32 [ %i.bo, %.lr.ph92 ], [ %i.be, %bb.x ]
  %.05389 = phi ptr [ %i.bp, %.lr.ph92 ], [ %i.bk, %bb.x ] ; 2 uses
  %i.bl = load ptr, ptr %.05389, align 8, !tbaa !67
  %i.bm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bl) #32
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = call noundef i32 @llvm.smax.i32(i32 %.190, i32 %i.bn) ; 2 uses
  %i.bp = call ptr @Mio_PinReadNext(ptr noundef nonnull %.05389) #30 ; 2 uses
  %.not57 = icmp eq ptr %i.bp, null
  br i1 %.not57, label %._crit_edge93, label %.lr.ph92, !llvm.loop !132

._crit_edge93:                                    ; preds = %.lr.ph92, %bb.x
  %.1.lcssa = phi i32 [ %i.be, %bb.x ], [ %i.bo, %.lr.ph92 ] ; 2 uses
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %.critedge, label %bb.x, !llvm.loop !133

.critedge:                                        ; preds = %._crit_edge93, %bb.n, %.preheader, %..loopexit_crit_edge
  %i.bq = phi i1 [ false, %..loopexit_crit_edge ], [ false, %bb.n ], [ false, %.preheader ], [ true, %._crit_edge93 ]
  %.val59145 = phi i32 [ 0, %..loopexit_crit_edge ], [ 0, %bb.n ], [ 0, %.preheader ], [ %.val59148, %._crit_edge93 ] ; 2 uses
  %i.br = phi ptr [ %i.b, %..loopexit_crit_edge ], [ %i.b, %bb.n ], [ %i.b, %.preheader ], [ %i.at, %._crit_edge93 ] ; 3 uses
  %.050.lcssa = phi i32 [ 0, %..loopexit_crit_edge ], [ 0, %bb.n ], [ 0, %.preheader ], [ %i.az, %._crit_edge93 ]
  %.049.lcssa = phi i32 [ 0, %..loopexit_crit_edge ], [ 0, %bb.n ], [ 0, %.preheader ], [ %.1.lcssa, %._crit_edge93 ]
  %.0.lcssa = phi i32 [ 0, %..loopexit_crit_edge ], [ 0, %bb.n ], [ 0, %.preheader ], [ %i.bj, %._crit_edge93 ]
  %i.bs = load ptr, ptr %1, align 8, !tbaa !28
  %i.bt = call ptr (...) @Extra_TimeStamp() #30
  %i.bu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef %i.bs, i32 noundef %.val59145, ptr noundef %i.bt) #30 ; 0 uses
  br i1 %i.bq, label %.lr.ph105, label %.critedge2

.lr.ph105:                                        ; preds = %.critedge
  %wide.trip.count130 = zext nneg i32 %.val59145 to i64
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph105, %bb.y
  %indvars.iv127 = phi i64 [ 0, %.lr.ph105 ], [ %indvars.iv.next128, %bb.y ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv127
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !87
  call void @Mio_WriteGate(ptr noundef %0, ptr noundef %i.bw, i32 noundef %.050.lcssa, i32 noundef %.049.lcssa, i32 noundef %.0.lcssa, i32 noundef %2, i32 noundef %i.d)
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count130
  br i1 %exitcond131.not, label %.critedge2.thread, label %bb.y, !llvm.loop !134

.critedge2:                                       ; preds = %.critedge
  %.not.i = icmp eq ptr %i.br, null
  br i1 %.not.i, label %Vec_PtrFree.exit, label %.critedge2.thread

.critedge2.thread:                                ; preds = %bb.y, %.critedge2
  call void @free(ptr noundef nonnull %i.br) #30
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %.critedge2, %.critedge2.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @Mio_CollectRootsNewDefault2(i32 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (...) @Abc_FrameReadLibGen() #30
  %i.b = tail call ptr @Mio_CollectRootsNew2(ptr noundef %i.a, i32 noundef %0, ptr noundef %1, i32 noundef %2)
  ret ptr %i.b
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

declare ptr @Extra_TimeStamp(...) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define void @Exp_PrintNodeVerilog(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #9 {
bb.a:
  %i.a = shl nsw i32 %4, 1                        ; 2 uses
  %i.b = or disjoint i32 %i.a, 1
  %i.c = getelementptr i8, ptr %2, i64 8          ; 6 uses
  %.val42 = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.d = sext i32 %i.b to i64                     ; 3 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %.val42, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !69   ; 2 uses
  %i.g = shl nsw i32 %1, 1                        ; 4 uses
  %.not = icmp slt i32 %i.f, %i.g
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %fputc = tail call i32 @fputc(i32 40, ptr %0)   ; 0 uses
  %.val41.pre = load ptr, ptr %i.c, align 8, !tbaa !39
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %.val41.pre, i64 %i.d
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !69
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ %.pre, %bb.b ], [ %i.f, %bb.a ]
  %i.i = xor i32 %i.h, %5
  tail call void @Exp_PrintLitVerilog(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %i.i)
  %.val40 = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.j = getelementptr inbounds [4 x i8], ptr %.val40, i64 %i.d
  %i.k = load i32, ptr %i.j, align 4, !tbaa !69
  %.not31 = icmp slt i32 %i.k, %i.g
  br i1 %.not31, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %fputc32 = tail call i32 @fputc(i32 41, ptr %0) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not33 = icmp eq i32 %5, 0
  %i.l = select i1 %.not33, i32 38, i32 124
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %i.l) #30 ; 0 uses
  %.val39 = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.n = sext i32 %i.a to i64                     ; 3 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %.val39, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !69   ; 2 uses
  %.not34 = icmp slt i32 %i.p, %i.g
  br i1 %.not34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %fputc35 = tail call i32 @fputc(i32 40, ptr %0) ; 0 uses
  %.val38.pre = load ptr, ptr %i.c, align 8, !tbaa !39
  %.phi.trans.insert45 = getelementptr inbounds [4 x i8], ptr %.val38.pre, i64 %i.n
  %.pre46 = load i32, ptr %.phi.trans.insert45, align 4, !tbaa !69
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = phi i32 [ %.pre46, %bb.f ], [ %i.p, %bb.e ]
  %i.r = xor i32 %i.q, %5
  tail call void @Exp_PrintLitVerilog(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %i.r)
  %.val = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.s = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.n
  %i.t = load i32, ptr %i.s, align 4, !tbaa !69
  %.not36 = icmp slt i32 %i.t, %i.g
  br i1 %.not36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %fputc37 = tail call i32 @fputc(i32 41, ptr %0) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Exp_PrintLitVerilog(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #9 {
bb.a:
  switch i32 %4, label %bb.d [
    i32 -1, label %bb.b
    i32 -2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %fwrite16 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 4, i64 1, ptr %0) ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.21, i64 4, i64 1, ptr %0) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.a = shl nsw i32 %1, 1
  %i.b = icmp slt i32 %4, %i.a
  br i1 %i.b, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.c = and i32 %4, 1
  %.not = icmp eq i32 %i.c, 0
  %i.d = select i1 %.not, ptr @.str.24, ptr @.str.23
  %i.e = sdiv i32 %4, 2
  %i.f = getelementptr i8, ptr %3, i64 8
  %.val = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.g = sext i32 %i.e to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !87
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.d, ptr noundef %i.i) #30 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.k = sdiv i32 %4, 2
  %i.l = sub nsw i32 %i.k, %1
  %i.m = and i32 %4, 1
  tail call void @Exp_PrintNodeVerilog(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.l, i32 noundef %i.m)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.b
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Exp_PrintVerilog(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 4
  %.val = load i32, ptr %i.a, align 4, !tbaa !89
  %i.b = getelementptr i8, ptr %2, i64 8
  %.val4 = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.c = sext i32 %.val to i64
  %i.d = getelementptr [4 x i8], ptr %.val4, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !69   ; 6 uses
  switch i32 %i.f, label %bb.d [
    i32 -1, label %bb.b
    i32 -2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %fwrite16.i = tail call i64 @fwrite(ptr nonnull @.str.20, i64 4, i64 1, ptr %0), !inline_history !135 ; 0 uses
  br label %Exp_PrintLitVerilog.exit

bb.c:                                             ; preds = %bb.a
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.21, i64 4, i64 1, ptr %0), !inline_history !135 ; 0 uses
  br label %Exp_PrintLitVerilog.exit

bb.d:                                             ; preds = %bb.a
  %i.g = shl nsw i32 %1, 1
  %i.h = icmp slt i32 %i.f, %i.g
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = and i32 %i.f, 1
  %.not.i = icmp eq i32 %i.i, 0
  %i.j = select i1 %.not.i, ptr @.str.24, ptr @.str.23
  %i.k = sdiv i32 %i.f, 2
  %i.l = getelementptr i8, ptr %3, i64 8
  %.val.i = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.m = sext i32 %i.k to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !87
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.j, ptr noundef %i.o) #30, !inline_history !135 ; 0 uses
  br label %Exp_PrintLitVerilog.exit

bb.f:                                             ; preds = %bb.d
  %i.q = sdiv i32 %i.f, 2
  %i.r = sub nsw i32 %i.q, %1
  %i.s = and i32 %i.f, 1
  tail call void @Exp_PrintNodeVerilog(ptr noundef %0, i32 noundef %1, ptr noundef nonnull readonly %2, ptr noundef readonly %3, i32 noundef %i.r, i32 noundef %i.s) #34, !inline_history !135
  br label %Exp_PrintLitVerilog.exit

Exp_PrintLitVerilog.exit:                         ; preds = %bb.b, %bb.c, %bb.e, %bb.f
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Mio_WriteGateVerilog(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !64
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef %i.a) #30 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63
  %fputs = tail call i32 @fputs(ptr %i.d, ptr %0) ; 0 uses
  %i.e = getelementptr i8, ptr %2, i64 4          ; 6 uses
  %.val3943 = load i32, ptr %i.e, align 4, !tbaa !90
  %i.f = icmp sgt i32 %.val3943, 0
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.val42 = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.val42, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !87
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef %i.i) #30 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val39 = load i32, ptr %i.e, align 4, !tbaa !90
  %i.k = sext i32 %.val39 to i64
  %i.l = icmp slt i64 %indvars.iv.next, %i.k
  br i1 %i.l, label %bb.b, label %.critedge, !llvm.loop !136

.critedge:                                        ; preds = %bb.b, %bb.a
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.27, i64 4, i64 1, ptr %0) ; 0 uses
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, ptr noundef %i.m) #30 ; 0 uses
  %.val38 = load i32, ptr %i.e, align 4, !tbaa !90
  %i.o = icmp sgt i32 %.val38, 0
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  %i.p = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %.val41 = load ptr, ptr %i.p, align 8, !tbaa !50
  %i.q = load ptr, ptr %.val41, align 8, !tbaa !87
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef %i.q) #30 ; 0 uses
  %.val3745 = load i32, ptr %i.e, align 4, !tbaa !90
  %i.s = icmp sgt i32 %.val3745, 1
  br i1 %i.s, label %.lr.ph47, label %.critedge2

.lr.ph47:                                         ; preds = %bb.c, %.lr.ph47
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %.lr.ph47 ], [ 1, %bb.c ] ; 2 uses
  %.val40 = load ptr, ptr %i.p, align 8, !tbaa !50
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.val40, i64 %indvars.iv49
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !87
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef %i.u) #30 ; 0 uses
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %.val37 = load i32, ptr %i.e, align 4, !tbaa !90
  %i.w = sext i32 %.val37 to i64
  %i.x = icmp slt i64 %indvars.iv.next50, %i.w
  br i1 %i.x, label %.lr.ph47, label %.critedge2, !llvm.loop !137

.critedge2:                                       ; preds = %.lr.ph47, %bb.c
  %fwrite34 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.critedge2, %.critedge
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef %i.y) #30 ; 0 uses
  %.val = load i32, ptr %i.e, align 4, !tbaa !90
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !91
  tail call void @Exp_PrintVerilog(ptr noundef %0, i32 noundef %.val, ptr noundef %i.ab, ptr noundef nonnull %2)
  %fwrite35 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %0) ; 0 uses
  %fwrite36 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 11, i64 1, ptr %0) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @Mio_WriteLibraryVerilog(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  store i32 0, ptr %i.c, align 4, !tbaa !90
  store i32 1000, ptr %i.b, align 8, !tbaa !92
  %i.d = tail call noalias dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #31 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !50
  %i.f = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  store i32 0, ptr %i.g, align 4, !tbaa !90
  store i32 100, ptr %i.f, align 8, !tbaa !92
  %i.h = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #31
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !82
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph66, label %.loopexit

.lr.ph66:                                         ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.n = tail call ptr (...) @Abc_FrameReadLibGen() #30
  %i.o = call noundef ptr @Mio_CollectRootsNew2(ptr noundef %i.n, i32 noundef 6, ptr noundef nonnull %i.a, i32 noundef 0) ; 3 uses
  %i.p = load i32, ptr %i.a, align 4, !tbaa !69   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %bb.l

.lr.ph:                                           ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %i.p to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %Vec_PtrPush.exit
  %indvars.iv93 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next94, %Vec_PtrPush.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_PtrPush.exit ] ; 7 uses
  %storemerge63 = phi ptr [ %i.d, %.lr.ph ], [ %storemerge64, %Vec_PtrPush.exit ] ; 6 uses
  %spec.select.sink.i61 = phi i32 [ 1000, %.lr.ph ], [ %spec.select.sink.i60, %Vec_PtrPush.exit ] ; 3 uses
  %i.r = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %indvars.iv93
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !86
  %i.u = trunc nsw i64 %indvars.iv to i32
  %i.v = icmp eq i32 %spec.select.sink.i61, %i.u
  br i1 %i.v, label %bb.d, label %Vec_PtrPush.exit

bb.d:                                             ; preds = %bb.c
  %i.w = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.w, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not9.i.i = icmp eq ptr %storemerge63, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge63, i64 noundef 128) #33
  br label %Vec_PtrPush.exit

bb.g:                                             ; preds = %bb.e
  %i.y = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #31
  br label %Vec_PtrPush.exit

bb.h:                                             ; preds = %bb.d
  %i.z = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.aa = shl nuw nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.z, i32 %i.aa, i32 2147483647 ; 4 uses
  %5 = zext nneg i32 %spec.select.i to i64
  %.not.i10.i = icmp samesign ult i64 %indvars.iv, %5
  br i1 %.not.i10.i, label %bb.i, label %Vec_PtrPush.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i11.i = icmp eq ptr %storemerge63, null
  %i.ab = zext nneg i32 %spec.select.i to i64
  %i.ac = shl nuw nsw i64 %i.ab, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = call ptr @realloc(ptr noundef nonnull %storemerge63, i64 noundef %i.ac) #33
  br label %Vec_PtrPush.exit

bb.k:                                             ; preds = %bb.i
  %i.ae = call noalias ptr @malloc(i64 noundef %i.ac) #31
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.g, %bb.f, %bb.k, %bb.j, %bb.c, %bb.h
  %storemerge64 = phi ptr [ %storemerge63, %bb.c ], [ %storemerge63, %bb.h ], [ %i.y, %bb.g ], [ %i.x, %bb.f ], [ %i.ad, %bb.j ], [ %i.ae, %bb.k ] ; 3 uses
  %spec.select.sink.i60 = phi i32 [ %spec.select.sink.i61, %bb.c ], [ %spec.select.sink.i61, %bb.h ], [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %storemerge64, i64 %indvars.iv
  store ptr %i.t, ptr %i.af, align 8, !tbaa !87
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.c, !llvm.loop !138

.thread:                                          ; preds = %Vec_PtrPush.exit
  %i.ag = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  store i32 %i.ag, ptr %i.c, align 4, !tbaa !90
  store i32 %spec.select.sink.i60, ptr %i.b, align 8
  store ptr %storemerge64, ptr %i.e, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  %.not34 = icmp eq ptr %i.o, null
  br i1 %.not34, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l
  %.val36114122 = phi i32 [ %i.ag, %.thread ], [ 0, %bb.l ]
  call void @free(ptr noundef nonnull %i.o) #30
  br label %.loopexit

bb.n:                                             ; preds = %.lr.ph66, %Vec_PtrPush.exit45
  %indvars.iv100 = phi i64 [ 0, %.lr.ph66 ], [ %indvars.iv.next101, %Vec_PtrPush.exit45 ] ; 2 uses
  %indvars.iv98 = phi i64 [ 0, %.lr.ph66 ], [ %indvars.iv.next99, %Vec_PtrPush.exit45 ] ; 7 uses
  %storemerge5773 = phi ptr [ %i.d, %.lr.ph66 ], [ %storemerge5774, %Vec_PtrPush.exit45 ] ; 6 uses
  %spec.select.sink.i4271 = phi i32 [ 1000, %.lr.ph66 ], [ %spec.select.sink.i4270, %Vec_PtrPush.exit45 ] ; 3 uses
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !31
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv100
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !88
  %i.ak = trunc nsw i64 %indvars.iv98 to i32
  %i.al = icmp eq i32 %spec.select.sink.i4271, %i.ak
  br i1 %i.al, label %bb.o, label %Vec_PtrPush.exit45

bb.o:                                             ; preds = %bb.n
  %i.am = icmp samesign ult i64 %indvars.iv98, 16
  br i1 %i.am, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %.not9.i.i43 = icmp eq ptr %storemerge5773, null
  br i1 %.not9.i.i43, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge5773, i64 noundef 128) #33
  br label %Vec_PtrPush.exit45

bb.r:                                             ; preds = %bb.p
  %i.ao = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #31
  br label %Vec_PtrPush.exit45

bb.s:                                             ; preds = %bb.o
  %i.ap = icmp samesign ult i64 %indvars.iv98, 1073741823
  %indvars.iv98.tr = trunc nsw i64 %indvars.iv98 to i32
  %i.aq = shl nuw nsw i32 %indvars.iv98.tr, 1
  %spec.select.i38 = select i1 %i.ap, i32 %i.aq, i32 2147483647 ; 4 uses
  %6 = zext nneg i32 %spec.select.i38 to i64
  %.not.i10.i39 = icmp samesign ult i64 %indvars.iv98, %6
  br i1 %.not.i10.i39, label %bb.t, label %Vec_PtrPush.exit45

bb.t:                                             ; preds = %bb.s
  %.not9.i11.i40 = icmp eq ptr %storemerge5773, null
  %i.ar = zext nneg i32 %spec.select.i38 to i64
  %i.as = shl nuw nsw i64 %i.ar, 3                ; 2 uses
  br i1 %.not9.i11.i40, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.at = tail call ptr @realloc(ptr noundef nonnull %storemerge5773, i64 noundef %i.as) #33
  br label %Vec_PtrPush.exit45

bb.v:                                             ; preds = %bb.t
  %i.au = tail call noalias ptr @malloc(i64 noundef %i.as) #31
  br label %Vec_PtrPush.exit45

Vec_PtrPush.exit45:                               ; preds = %bb.r, %bb.q, %bb.v, %bb.u, %bb.n, %bb.s
  %storemerge5774 = phi ptr [ %storemerge5773, %bb.n ], [ %storemerge5773, %bb.s ], [ %i.ao, %bb.r ], [ %i.an, %bb.q ], [ %i.at, %bb.u ], [ %i.au, %bb.v ] ; 3 uses
  %spec.select.sink.i4270 = phi i32 [ %spec.select.sink.i4271, %bb.n ], [ %spec.select.sink.i4271, %bb.s ], [ 16, %bb.r ], [ 16, %bb.q ], [ %spec.select.i38, %bb.u ], [ %spec.select.i38, %bb.v ] ; 2 uses
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %storemerge5774, i64 %indvars.iv98
  store ptr %i.aj, ptr %i.av, align 8, !tbaa !87
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %i.aw = load i32, ptr %i.j, align 8, !tbaa !82
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp slt i64 %indvars.iv.next101, %i.ax
  br i1 %i.ay, label %bb.n, label %..loopexit_crit_edge, !llvm.loop !139

..loopexit_crit_edge:                             ; preds = %Vec_PtrPush.exit45
  %i.az = trunc nsw i64 %indvars.iv.next99 to i32 ; 2 uses
  store i32 %i.az, ptr %i.c, align 4, !tbaa !90
  store i32 %spec.select.sink.i4270, ptr %i.b, align 8
  store ptr %storemerge5774, ptr %i.e, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %..loopexit_crit_edge, %bb.m, %bb.l
  %.val36 = phi i32 [ 0, %.preheader ], [ %i.az, %..loopexit_crit_edge ], [ %.val36114122, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %i.ba = load ptr, ptr %1, align 8, !tbaa !28
  %i.bb = call ptr (...) @Extra_TimeStamp() #30
  %i.bc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef %i.ba, i32 noundef %.val36, ptr noundef %i.bb) #30 ; 0 uses
  %i.bd = icmp sgt i32 %.val36, 0
  br i1 %i.bd, label %.lr.ph90.preheader, label %.critedge

.lr.ph90.preheader:                               ; preds = %.loopexit
  %wide.trip.count111 = zext nneg i32 %.val36 to i64
  br label %.lr.ph90

.lr.ph90:                                         ; preds = %.lr.ph90.preheader, %bb.af
  %indvars.iv108 = phi i64 [ 0, %.lr.ph90.preheader ], [ %indvars.iv.next109, %bb.af ] ; 2 uses
  %.val37 = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.val37, i64 %indvars.iv108
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !87 ; 2 uses
  store i32 0, ptr %i.g, align 4, !tbaa !90
  %i.bg = call ptr @Mio_GateReadPins(ptr noundef %i.bf) #30 ; 2 uses
  %.not3575 = icmp eq ptr %i.bg, null
  br i1 %.not3575, label %bb.af, label %.lr.ph78

.lr.ph78:                                         ; preds = %.lr.ph90
  %.promoted82 = load i32, ptr %i.f, align 8, !tbaa !92
  %.promoted85 = load ptr, ptr %i.i, align 8, !tbaa !50
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph78, %Vec_PtrPush.exit53
  %indvars.iv105 = phi i64 [ 0, %.lr.ph78 ], [ %indvars.iv.next106, %Vec_PtrPush.exit53 ] ; 7 uses
  %storemerge5686 = phi ptr [ %.promoted85, %.lr.ph78 ], [ %storemerge5687, %Vec_PtrPush.exit53 ] ; 6 uses
  %spec.select.sink.i5084 = phi i32 [ %.promoted82, %.lr.ph78 ], [ %spec.select.sink.i5083, %Vec_PtrPush.exit53 ] ; 3 uses
  %.03276 = phi ptr [ %i.bg, %.lr.ph78 ], [ %i.bu, %Vec_PtrPush.exit53 ] ; 2 uses
  %i.bh = load ptr, ptr %.03276, align 8, !tbaa !67
  %i.bi = trunc nsw i64 %indvars.iv105 to i32
  %i.bj = icmp eq i32 %spec.select.sink.i5084, %i.bi
  br i1 %i.bj, label %bb.x, label %Vec_PtrPush.exit53

bb.x:                                             ; preds = %bb.w
  %i.bk = icmp samesign ult i64 %indvars.iv105, 16
  br i1 %i.bk, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %.not9.i.i51 = icmp eq ptr %storemerge5686, null
  br i1 %.not9.i.i51, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bl = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge5686, i64 noundef 128) #33
  br label %Vec_PtrPush.exit53

bb.aa:                                            ; preds = %bb.y
  %i.bm = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #31
  br label %Vec_PtrPush.exit53

bb.ab:                                            ; preds = %bb.x
  %i.bn = icmp samesign ult i64 %indvars.iv105, 1073741823
  %indvars.iv105.tr = trunc nsw i64 %indvars.iv105 to i32
  %i.bo = shl nuw nsw i32 %indvars.iv105.tr, 1
  %spec.select.i46 = select i1 %i.bn, i32 %i.bo, i32 2147483647 ; 4 uses
  %7 = zext nneg i32 %spec.select.i46 to i64
  %.not.i10.i47 = icmp samesign ult i64 %indvars.iv105, %7
  br i1 %.not.i10.i47, label %bb.ac, label %Vec_PtrPush.exit53

bb.ac:                                            ; preds = %bb.ab
  %.not9.i11.i48 = icmp eq ptr %storemerge5686, null
  %i.bp = zext nneg i32 %spec.select.i46 to i64
  %i.bq = shl nuw nsw i64 %i.bp, 3                ; 2 uses
  br i1 %.not9.i11.i48, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.br = call ptr @realloc(ptr noundef nonnull %storemerge5686, i64 noundef %i.bq) #33
  br label %Vec_PtrPush.exit53

bb.ae:                                            ; preds = %bb.ac
  %i.bs = call noalias ptr @malloc(i64 noundef %i.bq) #31
  br label %Vec_PtrPush.exit53

Vec_PtrPush.exit53:                               ; preds = %bb.aa, %bb.z, %bb.ae, %bb.ad, %bb.w, %bb.ab
  %storemerge5687 = phi ptr [ %storemerge5686, %bb.w ], [ %storemerge5686, %bb.ab ], [ %i.bm, %bb.aa ], [ %i.bl, %bb.z ], [ %i.br, %bb.ad ], [ %i.bs, %bb.ae ] ; 3 uses
  %spec.select.sink.i5083 = phi i32 [ %spec.select.sink.i5084, %bb.w ], [ %spec.select.sink.i5084, %bb.ab ], [ 16, %bb.aa ], [ 16, %bb.z ], [ %spec.select.i46, %bb.ad ], [ %spec.select.i46, %bb.ae ] ; 2 uses
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %storemerge5687, i64 %indvars.iv105
  store ptr %i.bh, ptr %i.bt, align 8, !tbaa !87
  %i.bu = call ptr @Mio_PinReadNext(ptr noundef nonnull %.03276) #30 ; 2 uses
  %.not35 = icmp eq ptr %i.bu, null
  br i1 %.not35, label %._crit_edge79, label %bb.w, !llvm.loop !140

._crit_edge79:                                    ; preds = %Vec_PtrPush.exit53
  %i.bv = trunc nsw i64 %indvars.iv.next106 to i32
  store i32 %i.bv, ptr %i.g, align 4, !tbaa !90
  store i32 %spec.select.sink.i5083, ptr %i.f, align 8
  store ptr %storemerge5687, ptr %i.i, align 8
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge79, %.lr.ph90
  call void @Mio_WriteGateVerilog(ptr noundef %0, ptr noundef %i.bf, ptr noundef nonnull %i.f)
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count111
  br i1 %exitcond112.not, label %.critedge, label %.lr.ph90, !llvm.loop !141

.critedge:                                        ; preds = %bb.af, %.loopexit
  %i.bw = load ptr, ptr %i.i, align 8, !tbaa !50  ; 2 uses
  %.not.i = icmp eq ptr %i.bw, null
  br i1 %.not.i, label %Vec_PtrFree.exit, label %bb.ag

bb.ag:                                            ; preds = %.critedge
  call void @free(ptr noundef nonnull %i.bw) #30
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %.critedge, %bb.ag
  call void @free(ptr noundef nonnull %i.f) #30
  %i.bx = load ptr, ptr %i.e, align 8, !tbaa !50  ; 2 uses
  %.not.i54 = icmp eq ptr %i.bx, null
  br i1 %.not.i54, label %Vec_PtrFree.exit55, label %bb.ah

bb.ah:                                            ; preds = %Vec_PtrFree.exit
  call void @free(ptr noundef nonnull %i.bx) #30
  br label %Vec_PtrFree.exit55

Vec_PtrFree.exit55:                               ; preds = %Vec_PtrFree.exit, %bb.ah
  call void @free(ptr noundef nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -1, 2) i32 @Mio_DelayCompare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #12 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !88     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load double, ptr %i.b, align 8, !tbaa !93 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !88     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.f = load double, ptr %i.e, align 8, !tbaa !93 ; 2 uses
  %i.g = fadd double %i.f, f0xBF8361A6E0000000
  %i.h = fcmp olt double %i.c, %i.g
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = fadd double %i.f, f0x3F8361A6E0000000
  %i.j = fcmp ogt double %i.c, %i.i
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(1) %i.l) #32 ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp ne i32 %i.m, 0
  %. = zext i1 %.not to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.a ], [ 1, %bb.b ], [ %., %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -1, 2) i32 @Mio_AreaCompare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 28                        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = lshr i32 %i.e, 28                        ; 2 uses
  %i.g = icmp samesign ult i32 %i.c, %i.f
  br i1 %i.g, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp samesign ugt i32 %i.c, %i.f
  br i1 %i.h, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load float, ptr %i.i, align 4, !tbaa !95 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load float, ptr %i.k, align 4, !tbaa !95 ; 2 uses
  %i.m = fadd float %i.l, -9.463600e-03
  %i.n = fcmp olt float %i.j, %i.m
  br i1 %i.n, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = fadd float %i.l, 9.463600e-03
  %i.p = fcmp ogt float %i.j, %i.o
  br i1 %i.p, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %0, align 8, !tbaa !96
  %i.r = load ptr, ptr %1, align 8, !tbaa !96
  %i.s = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(1) %i.r) #32 ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not = icmp ne i32 %i.s, 0
  %. = zext i1 %.not to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.e ], [ -1, %bb.a ], [ 1, %bb.b ], [ -1, %bb.c ], [ 1, %bb.d ], [ %., %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -1, 2) i32 @Mio_AreaCompare2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 28                        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8
  %i.f = lshr i32 %i.e, 28                        ; 2 uses
  %i.g = icmp samesign ult i32 %i.c, %i.f
  br i1 %i.g, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp samesign ugt i32 %i.c, %i.f
  br i1 %i.h, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !97   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !97   ; 2 uses
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp ugt i64 %i.j, %i.l
  br i1 %i.n, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %0, align 8, !tbaa !98
  %i.p = load ptr, ptr %1, align 8, !tbaa !98
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(1) %i.p) #32 ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not = icmp ne i32 %i.q, 0
  %. = zext i1 %.not to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.e ], [ -1, %bb.a ], [ 1, %bb.b ], [ -1, %bb.c ], [ 1, %bb.d ], [ %., %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define noundef ptr @Mio_CollectRoots(ptr noundef %0, i32 noundef %1, float noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @Mio_LibraryReadGateNum(ptr noundef %0) #30
  %i.b = sext i32 %i.a to i64
end_hunk_0
