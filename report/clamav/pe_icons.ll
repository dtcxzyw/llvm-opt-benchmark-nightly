Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pe_icons?download=true
inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 27
begin_hunk_0_@cli_icongroupset_add:bb.a

bb.i:                                             ; preds = %bb.h, %bb.j
  %indvars.iv = phi i64 [ 0, %bb.h ], [ %indvars.iv.next, %bb.j ] ; 5 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !128
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %i.s) #14
  %.not43 = icmp eq i32 %i.t, 0
  br i1 %.not43, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.u = trunc nuw i64 %indvars.iv to i32
  %i.v = icmp eq i32 %i.j, %i.u
  br i1 %i.v, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.j, %bb.k
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.14, i32 noundef %2, ptr noundef nonnull %0) #13
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.w = and i64 %indvars.iv, 63
  %i.x = lshr i64 %indvars.iv, 6
  %i.y = shl nuw i64 1, %i.w
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.h
  %i.aa = and i64 %i.x, 67108863
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !78
  %i.ad = or i64 %i.ac, %i.y
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !78
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l, %bb.a, %bb.b, %bb.c, %bb.d, %bb.g
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare ptr @cli_gettmpdir() local_unnamed_addr #2

declare ptr @cli_max_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @makebmp(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 16, 257) %2, i32 noundef %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !56
  store i32 %3, ptr %i.b, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @cli_gentemp_with_prefix(ptr noundef nonnull %1, ptr noundef nonnull @.str.27) #13 ; 10 uses
  %.not31 = icmp eq ptr %i.g, null
  br i1 %.not31, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noalias ptr @fopen(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.28) ; 14 uses
  %.not32 = icmp eq ptr %i.h, null
  br i1 %.not32, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @cli_unlink(ptr noundef nonnull %i.g) #13 ; 0 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.29, ptr noundef nonnull %i.g) #13
  tail call void @free(ptr noundef nonnull %i.g) #13
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.j = shl nuw nsw i32 %2, 2                    ; 2 uses
  %i.k = mul i32 %i.j, %3                         ; 2 uses
  %i.l = add nsw i32 %i.k, 54
  store i32 %i.l, ptr %i.c, align 4, !tbaa !74
  store i32 2097153, ptr %i.d, align 4, !tbaa !74
  store i32 0, ptr %i.e, align 4, !tbaa !56
  store i32 %i.k, ptr %i.f, align 4, !tbaa !74
  %i.m = tail call i64 @fwrite(ptr noundef nonnull @.str.30, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %i.h)
  %.not33 = icmp eq i64 %i.m, 0
  br i1 %.not33, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = call i64 @fwrite(ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %i.h)
  %.not34 = icmp eq i64 %i.n, 0
  br i1 %.not34, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call i64 @fwrite(ptr noundef nonnull @.str.31, i64 noundef 12, i64 noundef 1, ptr noundef nonnull %i.h)
  %.not35 = icmp eq i64 %i.o, 0
  br i1 %.not35, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %i.h)
  %.not36 = icmp eq i64 %i.p, 0
  br i1 %.not36, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %i.h)
  %.not37 = icmp eq i64 %i.q, 0
  br i1 %.not37, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = call i64 @fwrite(ptr noundef nonnull %i.d, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %i.h)
  %.not38 = icmp eq i64 %i.r, 0
  br i1 %.not38, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = call i64 @fwrite(ptr noundef nonnull %i.e, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %i.h)
  %.not39 = icmp eq i64 %i.s, 0
  br i1 %.not39, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = call i64 @fwrite(ptr noundef nonnull %i.f, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %i.h)
  %.not40 = icmp eq i64 %i.t, 0
  br i1 %.not40, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = tail call i64 @fwrite(ptr noundef nonnull @.str.32, i64 noundef 16, i64 noundef 1, ptr noundef nonnull %i.h)
  %.not41 = icmp eq i64 %i.u, 0
  br i1 %.not41, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.m
  %i.v = zext nneg i32 %i.j to i64
  br label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.w = tail call i32 @fclose(ptr noundef nonnull %i.h) ; 0 uses
  %i.x = tail call i32 @cli_unlink(ptr noundef nonnull %i.g) #13 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.g) #13
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.33) #13
  br label %bb.t

bb.o:                                             ; preds = %.preheader, %bb.p
  %.0.in = phi i32 [ %.0, %bb.p ], [ %3, %.preheader ]
  %.0 = add i32 %.0.in, -1                        ; 3 uses
  %i.y = icmp ult i32 %.0, %3
  br i1 %i.y, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.z = mul i32 %.0, %2
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aa
  %i.ac = tail call i64 @fwrite(ptr noundef nonnull %i.ab, i64 noundef %i.v, i64 noundef 1, ptr noundef nonnull %i.h)
  %.not42 = icmp eq i64 %i.ac, 0
  br i1 %.not42, label %bb.q, label %bb.o

bb.q:                                             ; preds = %bb.p
  %i.ad = tail call i32 @fclose(ptr noundef nonnull %i.h) ; 0 uses
  %i.ae = tail call i32 @cli_unlink(ptr noundef nonnull %i.g) #13 ; 0 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.af = tail call i32 @fclose(ptr noundef nonnull %i.h) ; 0 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.34, ptr noundef %0, ptr noundef nonnull %i.g) #13
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  tail call void @free(ptr noundef nonnull %i.g) #13
  br label %bb.t

bb.t:                                             ; preds = %bb.b, %bb.a, %bb.s, %bb.n, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

declare void @cli_errmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @getmetrics(i32 noundef range(i32 16, 257) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x i32], align 16               ; 9 uses
  %i.b = alloca [6 x i32], align 16               ; 15 uses
  %i.c = alloca [6 x i32], align 16               ; 15 uses
  %i.d = alloca [6 x i32], align 16               ; 9 uses
  %i.e = alloca [6 x i32], align 16               ; 11 uses
  %i.f = alloca [6 x i32], align 16               ; 11 uses
  %i.g = alloca [125 x i8], align 16              ; 62 uses
  %i.h = lshr i32 %0, 2                           ; 58 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.i = zext nneg i32 %0 to i64                  ; 21 uses
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = mul nuw nsw i64 %i.j, %i.i               ; 2 uses
  %i.l = tail call ptr @cli_max_malloc(i64 noundef %i.k) #13 ; 20 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = mul nuw nsw i32 %0, %0
  %i.n = shl nuw nsw i32 %i.m, 3
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.35, i32 noundef %i.n) #13
  br label %bb.cv

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %2, i8 0, i64 248, i1 false)
  %i.o = add nsw i32 %i.h, -1                     ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 236 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 228 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 232 ; 4 uses
  %4 = zext nneg i32 %i.o to i64
  %5 = add nuw nsw i32 %0, 1
  %6 = sub nsw i32 %5, %i.h
  %7 = zext nneg i32 %0 to i64                    ; 10 uses
  %i.t = zext i32 %6 to i64                       ; 3 uses
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 10 uses
  %wide.trip.count1528 = zext nneg i32 %i.h to i64
  %wide.trip.count1538 = zext nneg i32 %i.h to i64 ; 2 uses
  br label %.preheader1187

.preheader1187:                                   ; preds = %bb.c, %bb.t
  %indvars.iv1545 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next1546, %bb.t ] ; 8 uses
  %i.u = icmp eq i64 %indvars.iv1545, 0
  %8 = mul nuw nsw i64 %indvars.iv1545, %7        ; 2 uses
  %9 = add nuw nsw i64 %indvars.iv1545, %7
  %10 = mul nuw nsw i64 %9, %7                    ; 2 uses
  %11 = add nuw i64 %8, 4294967295
  %12 = add nuw i64 %10, 4294967295
  %13 = add nsw i64 %indvars.iv1545, -1           ; 2 uses
  %14 = trunc i64 %13 to i32
  %i.v = mul i32 %0, %14                          ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.w
  %15 = trunc i64 %13 to i32
  %i.y = add i32 %0, %15
  %i.z = mul i32 %i.y, %0
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.aa
  %16 = and i64 %10, 4294967295
  %17 = and i64 %8, 4294967295
  %18 = trunc i64 %indvars.iv1545 to i32
  %i.ac = add i32 %i.o, %18
  %i.ad = mul i32 %i.ac, %0
  %invariant.gep1903 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %17
  %invariant.gep1905 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %16
  br label %bb.d

.preheader1181:                                   ; preds = %bb.t
  %19 = sub nsw i32 %0, %i.h
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 116 ; 5 uses
  %i.ag = xor i32 %i.h, -1
  %i.ah = add nsw i32 %0, %i.ag                   ; 3 uses
  %.not1471 = icmp eq i32 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 140 ; 4 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %19, i32 1) ; 3 uses
  %wide.trip.count1563 = zext i32 %i.ah to i64
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 132
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 144
  br label %.preheader1180.lr.ph

bb.d:                                             ; preds = %.preheader1187, %.loopexit1184
  %indvars.iv1540 = phi i64 [ 0, %.preheader1187 ], [ %indvars.iv.next1541, %.loopexit1184 ] ; 8 uses
  %20 = trunc nuw nsw i64 %indvars.iv1540 to i32
  %21 = or i64 %indvars.iv1540, %indvars.iv1545
  %or.cond = icmp eq i64 %21, 0
  br i1 %or.cond, label %.preheader1182.us, label %bb.i

.preheader1182.us:                                ; preds = %bb.d, %._crit_edge.us
  %indvars.iv1535 = phi i64 [ %indvars.iv.next1536, %._crit_edge.us ], [ 0, %bb.d ] ; 2 uses
  %.08951207.us = phi i32 [ %i.bq, %._crit_edge.us ], [ 0, %bb.d ]
  %.09001206.us = phi i32 [ %i.bp, %._crit_edge.us ], [ 0, %bb.d ]
  %i.ba = mul nuw nsw i64 %indvars.iv1535, %i.i
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ba
  br label %bb.e

bb.e:                                             ; preds = %.preheader1182.us, %bb.h
  %indvars.iv1530 = phi i64 [ 0, %.preheader1182.us ], [ %indvars.iv.next1531, %bb.h ] ; 2 uses
  %.18961201.us = phi i32 [ %.08951207.us, %.preheader1182.us ], [ %i.bq, %bb.h ]
  %.19011200.us = phi i32 [ %.09001206.us, %.preheader1182.us ], [ %i.bp, %bb.h ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv1530
  %i.bb = load i32, ptr %gep, align 4, !tbaa !56  ; 3 uses
  %i.bc = lshr i32 %i.bb, 16
  %i.bd = and i32 %i.bc, 255                      ; 4 uses
  %i.be = lshr i32 %i.bb, 8
  %i.bf = and i32 %i.be, 255                      ; 4 uses
  %i.bg = and i32 %i.bb, 255                      ; 4 uses
  %..i.us = tail call i32 @llvm.umin.i32(i32 %i.bf, i32 %i.bg)
  %spec.select.i.us = tail call i32 @llvm.umin.i32(i32 %i.bd, i32 %..i.us) ; 2 uses
  %.44.i.us = tail call i32 @llvm.umax.i32(i32 %i.bf, i32 %i.bg)
  %i.bh = tail call i32 @llvm.umax.i32(i32 %i.bd, i32 %.44.i.us) ; 6 uses
  %i.bi = sub nuw nsw i32 %i.bh, %spec.select.i.us ; 2 uses
  %.not.i.us = icmp eq i32 %i.bh, %spec.select.i.us
  br i1 %.not.i.us, label %hsv.exit.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = trunc nuw nsw i32 %i.bi to i16
  %.lhs.trunc1102.us = mul nuw i16 %i.bj, 255
  %.rhs.trunc1103.us = trunc nuw nsw i32 %i.bh to i16
  %i.bk = udiv i16 %.lhs.trunc1102.us, %.rhs.trunc1103.us
  %.zext1104.us = zext i16 %i.bk to i32
  br label %hsv.exit.us

hsv.exit.us:                                      ; preds = %bb.f, %bb.e
  %storemerge.i.us = phi i32 [ %.zext1104.us, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %i.bl = mul nuw nsw i32 %storemerge.i.us, %i.bh
  %i.bm = mul i32 %i.bl, %storemerge.i.us
  %i.bn = uitofp i32 %i.bm to double
  %sqrt.us = tail call double @llvm.sqrt.f64(double %i.bn)
  %i.bo = fptoui double %sqrt.us to i32
  %i.bp = add i32 %.19011200.us, %i.bo            ; 3 uses
  %i.bq = add i32 %i.bh, %.18961201.us            ; 3 uses
  %i.br = icmp samesign ugt i32 %storemerge.i.us, 85
  %i.bs = icmp samesign ugt i32 %i.bh, 85
  %or.cond3.us = and i1 %i.bs, %i.br
  br i1 %or.cond3.us, label %bb.g, label %bb.h

bb.g:                                             ; preds = %hsv.exit.us
  %i.bt = sub nsw i32 %i.bf, %i.bg
  %i.bu = tail call i32 @llvm.abs.i32(i32 %i.bt, i1 true)
  %i.bv = trunc nsw i32 %i.bu to i16
  %.rhs.trunc.us = trunc nuw nsw i32 %i.bi to i16
  %i.bw = sub nsw i32 %i.bd, %i.bg
  %i.bx = tail call i32 @llvm.abs.i32(i32 %i.bw, i1 true)
  %i.by = trunc nsw i32 %i.bx to i16
  %i.bz = sub nsw i32 %i.bd, %i.bf
  %i.ca = tail call i32 @llvm.abs.i32(i32 %i.bz, i1 true)
  %i.cb = trunc nsw i32 %i.ca to i16
  %i.cc = insertelement <4 x i16> <i16 poison, i16 poison, i16 poison, i16 1>, i16 %i.bv, i64 0
  %i.cd = insertelement <4 x i16> %i.cc, i16 %i.by, i64 1
  %i.ce = insertelement <4 x i16> %i.cd, i16 %i.cb, i64 2
  %i.cf = mul nuw nsw <4 x i16> %i.ce, <i16 100, i16 100, i16 100, i16 0>
  %i.cg = insertelement <4 x i16> <i16 poison, i16 1, i16 poison, i16 poison>, i16 %.rhs.trunc.us, i64 0
  %i.ch = shufflevector <4 x i16> %i.cg, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ci = udiv <4 x i16> %i.cf, %i.ch
  %i.cj = zext nneg <4 x i16> %i.ci to <4 x i32>
  %i.ck = load <4 x i32>, ptr %i.q, align 8, !tbaa !56
  %i.cl = sub <4 x i32> %i.ck, %i.cj
  %i.cm = add <4 x i32> %i.cl, <i32 100, i32 100, i32 100, i32 1>
  store <4 x i32> %i.cm, ptr %i.q, align 8, !tbaa !56
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %hsv.exit.us
  %indvars.iv.next1531 = add nuw nsw i64 %indvars.iv1530, 1 ; 2 uses
  %exitcond1534.not = icmp eq i64 %indvars.iv.next1531, %wide.trip.count1538
  br i1 %exitcond1534.not, label %._crit_edge.us, label %bb.e

._crit_edge.us:                                   ; preds = %bb.h
  %indvars.iv.next1536 = add nuw nsw i64 %indvars.iv1535, 1 ; 2 uses
  %exitcond1539.not = icmp eq i64 %indvars.iv.next1536, %wide.trip.count1538
  br i1 %exitcond1539.not, label %.loopexit1184, label %.preheader1182.us

bb.i:                                             ; preds = %bb.d
  %.not975 = icmp eq i64 %indvars.iv1540, 0
  br i1 %.not975, label %.lr.ph1196.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %22 = add i64 %12, %indvars.iv1540
  %23 = and i64 %22, 4294967295
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %23
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !56
  %24 = add i64 %11, %indvars.iv1540
  %25 = and i64 %24, 4294967295
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %25
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !56
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %.28971191 = phi i32 [ %i.co, %.lr.ph.preheader ], [ %i.ef, %bb.o ]
  %.29021190 = phi i32 [ %i.cq, %.lr.ph.preheader ], [ %i.ee, %bb.o ]
  %26 = add nuw nsw i64 %indvars.iv, %indvars.iv1545
  %27 = trunc nuw i64 %26 to i32
  %i.cr = mul i32 %0, %27
  %i.cs = add i32 %i.cr, %20                      ; 2 uses
  %i.ct = add i32 %i.cs, -1
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !56 ; 3 uses
  %i.cx = lshr i32 %i.cw, 16
  %i.cy = and i32 %i.cx, 255                      ; 2 uses
  %i.cz = lshr i32 %i.cw, 8
  %i.da = and i32 %i.cz, 255                      ; 2 uses
  %i.db = and i32 %i.cw, 255                      ; 2 uses
  %..i1021 = tail call i32 @llvm.umin.i32(i32 %i.da, i32 %i.db)
  %spec.select.i1022 = tail call i32 @llvm.umin.i32(i32 %i.cy, i32 %..i1021) ; 2 uses
  %.44.i1023 = tail call i32 @llvm.umax.i32(i32 %i.da, i32 %i.db)
  %i.dc = tail call i32 @llvm.umax.i32(i32 %i.cy, i32 %.44.i1023) ; 5 uses
  %.not.i1024 = icmp eq i32 %i.dc, %spec.select.i1022
  br i1 %.not.i1024, label %hsv.exit1026, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.dd = sub nuw nsw i32 %i.dc, %spec.select.i1022
  %i.de = trunc nuw nsw i32 %i.dd to i16
  %.lhs.trunc1132 = mul nuw i16 %i.de, 255
  %.rhs.trunc1133 = trunc nuw nsw i32 %i.dc to i16
  %i.df = udiv i16 %.lhs.trunc1132, %.rhs.trunc1133
  %.zext1134 = zext i16 %i.df to i32              ; 2 uses
  %i.dg = mul nuw nsw i32 %i.dc, %.zext1134
  %i.dh = mul i32 %i.dg, %.zext1134
  %i.di = uitofp i32 %i.dh to double
  %i.dj = tail call double @llvm.sqrt.f64(double %i.di)
  %i.dk = fptoui double %i.dj to i32
  br label %hsv.exit1026

hsv.exit1026:                                     ; preds = %.lr.ph, %bb.j
  %storemerge.i1025 = phi i32 [ %i.dk, %bb.j ], [ 0, %.lr.ph ]
  %i.dl = sub i32 %.29021190, %storemerge.i1025
  %i.dm = sub i32 %.28971191, %i.dc
  %i.dn = add i32 %i.o, %i.cs
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !56 ; 3 uses
  %i.dr = lshr i32 %i.dq, 16
  %i.ds = and i32 %i.dr, 255                      ; 4 uses
  %i.dt = lshr i32 %i.dq, 8
  %i.du = and i32 %i.dt, 255                      ; 4 uses
  %i.dv = and i32 %i.dq, 255                      ; 4 uses
  %..i1027 = tail call i32 @llvm.umin.i32(i32 %i.du, i32 %i.dv)
  %spec.select.i1028 = tail call i32 @llvm.umin.i32(i32 %i.ds, i32 %..i1027) ; 2 uses
  %.44.i1029 = tail call i32 @llvm.umax.i32(i32 %i.du, i32 %i.dv)
  %i.dw = tail call i32 @llvm.umax.i32(i32 %i.ds, i32 %.44.i1029) ; 7 uses
  %i.dx = sub nuw nsw i32 %i.dw, %spec.select.i1028 ; 2 uses
  %.not.i1030 = icmp eq i32 %i.dw, %spec.select.i1028
  br i1 %.not.i1030, label %hsv.exit1032, label %bb.k

bb.k:                                             ; preds = %hsv.exit1026
  %i.dy = trunc nuw nsw i32 %i.dx to i16
  %.lhs.trunc1129 = mul nuw i16 %i.dy, 255
  %.rhs.trunc1130 = trunc nuw nsw i32 %i.dw to i16
  %i.dz = udiv i16 %.lhs.trunc1129, %.rhs.trunc1130
  %.zext1131 = zext i16 %i.dz to i32
  br label %hsv.exit1032

hsv.exit1032:                                     ; preds = %hsv.exit1026, %bb.k
  %storemerge.i1031 = phi i32 [ %.zext1131, %bb.k ], [ 0, %hsv.exit1026 ] ; 4 uses
  %i.ea = mul nuw nsw i32 %storemerge.i1031, %i.dw
  %i.eb = mul i32 %i.ea, %storemerge.i1031
  %i.ec = uitofp i32 %i.eb to double
  %sqrt1138 = tail call double @llvm.sqrt.f64(double %i.ec)
  %i.ed = fptoui double %sqrt1138 to i32
  %i.ee = add i32 %i.dl, %i.ed                    ; 2 uses
  %i.ef = add i32 %i.dm, %i.dw                    ; 2 uses
  br i1 %i.u, label %bb.m, label %bb.l

bb.l:                                             ; preds = %hsv.exit1032
  %i.eg = icmp eq i64 %indvars.iv, %4
  %i.eh = icmp samesign ugt i32 %storemerge.i1031, 85
  %or.cond5 = select i1 %i.eg, i1 %i.eh, i1 false
  %i.ei = icmp samesign ugt i32 %i.dw, 85
  %or.cond1135 = select i1 %or.cond5, i1 %i.ei, i1 false
  br i1 %or.cond1135, label %bb.n, label %bb.o

bb.m:                                             ; preds = %hsv.exit1032
  %.old4 = icmp samesign ugt i32 %storemerge.i1031, 85
  %.old = icmp samesign ugt i32 %i.dw, 85
  %or.cond1136 = select i1 %.old4, i1 %.old, i1 false
  br i1 %or.cond1136, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ej = sub nsw i32 %i.du, %i.dv
  %i.ek = tail call i32 @llvm.abs.i32(i32 %i.ej, i1 true)
  %i.el = trunc nsw i32 %i.ek to i16
  %.rhs.trunc1121 = trunc nuw nsw i32 %i.dx to i16
  %i.em = sub nsw i32 %i.ds, %i.dv
  %i.en = tail call i32 @llvm.abs.i32(i32 %i.em, i1 true)
  %i.eo = trunc nsw i32 %i.en to i16
  %i.ep = sub nsw i32 %i.ds, %i.du
  %i.eq = tail call i32 @llvm.abs.i32(i32 %i.ep, i1 true)
  %i.er = trunc nsw i32 %i.eq to i16
  %i.es = insertelement <4 x i16> <i16 poison, i16 poison, i16 poison, i16 1>, i16 %i.el, i64 0
  %i.et = insertelement <4 x i16> %i.es, i16 %i.eo, i64 1
  %i.eu = insertelement <4 x i16> %i.et, i16 %i.er, i64 2
  %i.ev = mul nuw nsw <4 x i16> %i.eu, <i16 100, i16 100, i16 100, i16 0>
  %i.ew = insertelement <4 x i16> <i16 poison, i16 1, i16 poison, i16 poison>, i16 %.rhs.trunc1121, i64 0
  %i.ex = shufflevector <4 x i16> %i.ew, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ey = udiv <4 x i16> %i.ev, %i.ex
  %i.ez = zext nneg <4 x i16> %i.ey to <4 x i32>
  %i.fa = load <4 x i32>, ptr %i.q, align 8, !tbaa !56
  %i.fb = sub <4 x i32> %i.fa, %i.ez
  %i.fc = add <4 x i32> %i.fb, <i32 100, i32 100, i32 100, i32 1>
  store <4 x i32> %i.fc, ptr %i.q, align 8, !tbaa !56
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit1184, label %.lr.ph

.lr.ph1196.preheader:                             ; preds = %bb.i
  %i.fd = load i32, ptr %i.ab, align 4, !tbaa !56
  %i.fe = load i32, ptr %i.x, align 4, !tbaa !56
  br label %.lr.ph1196

.lr.ph1196:                                       ; preds = %.lr.ph1196.preheader, %bb.s
  %indvars.iv1525 = phi i64 [ 0, %.lr.ph1196.preheader ], [ %indvars.iv.next1526, %bb.s ] ; 2 uses
  %.38981195 = phi i32 [ %i.fd, %.lr.ph1196.preheader ], [ %i.gs, %bb.s ]
  %.39031194 = phi i32 [ %i.fe, %.lr.ph1196.preheader ], [ %i.gr, %bb.s ]
  %i.ff = trunc nuw nsw i64 %indvars.iv1525 to i32 ; 2 uses
  %i.fg = add i32 %i.v, %i.ff
  %i.fh = zext i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !56 ; 3 uses
  %i.fk = lshr i32 %i.fj, 16
  %i.fl = and i32 %i.fk, 255                      ; 2 uses
  %i.fm = lshr i32 %i.fj, 8
  %i.fn = and i32 %i.fm, 255                      ; 2 uses
  %i.fo = and i32 %i.fj, 255                      ; 2 uses
  %..i1033 = tail call i32 @llvm.umin.i32(i32 %i.fn, i32 %i.fo)
  %spec.select.i1034 = tail call i32 @llvm.umin.i32(i32 %i.fl, i32 %..i1033) ; 2 uses
  %.44.i1035 = tail call i32 @llvm.umax.i32(i32 %i.fn, i32 %i.fo)
  %i.fp = tail call i32 @llvm.umax.i32(i32 %i.fl, i32 %.44.i1035) ; 5 uses
  %.not.i1036 = icmp eq i32 %i.fp, %spec.select.i1034
  br i1 %.not.i1036, label %hsv.exit1038, label %bb.p

bb.p:                                             ; preds = %.lr.ph1196
  %i.fq = sub nuw nsw i32 %i.fp, %spec.select.i1034
  %i.fr = trunc nuw nsw i32 %i.fq to i16
  %.lhs.trunc1117 = mul nuw i16 %i.fr, 255
  %.rhs.trunc1118 = trunc nuw nsw i32 %i.fp to i16
  %i.fs = udiv i16 %.lhs.trunc1117, %.rhs.trunc1118
  %.zext1119 = zext i16 %i.fs to i32              ; 2 uses
  %i.ft = mul nuw nsw i32 %i.fp, %.zext1119
  %i.fu = mul i32 %i.ft, %.zext1119
  %i.fv = uitofp i32 %i.fu to double
  %i.fw = tail call double @llvm.sqrt.f64(double %i.fv)
  %i.fx = fptoui double %i.fw to i32
  br label %hsv.exit1038

hsv.exit1038:                                     ; preds = %.lr.ph1196, %bb.p
  %storemerge.i1037 = phi i32 [ %i.fx, %bb.p ], [ 0, %.lr.ph1196 ]
  %i.fy = sub i32 %.39031194, %storemerge.i1037
  %i.fz = sub i32 %.38981195, %i.fp
  %i.ga = add i32 %i.ad, %i.ff
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !56 ; 3 uses
  %i.ge = lshr i32 %i.gd, 16
  %i.gf = and i32 %i.ge, 255                      ; 4 uses
  %i.gg = lshr i32 %i.gd, 8
  %i.gh = and i32 %i.gg, 255                      ; 4 uses
  %i.gi = and i32 %i.gd, 255                      ; 4 uses
  %..i1039 = tail call i32 @llvm.umin.i32(i32 %i.gh, i32 %i.gi)
  %spec.select.i1040 = tail call i32 @llvm.umin.i32(i32 %i.gf, i32 %..i1039) ; 2 uses
  %.44.i1041 = tail call i32 @llvm.umax.i32(i32 %i.gh, i32 %i.gi)
  %i.gj = tail call i32 @llvm.umax.i32(i32 %i.gf, i32 %.44.i1041) ; 6 uses
  %i.gk = sub nuw nsw i32 %i.gj, %spec.select.i1040 ; 2 uses
  %.not.i1042 = icmp eq i32 %i.gj, %spec.select.i1040
  br i1 %.not.i1042, label %hsv.exit1044, label %bb.q

bb.q:                                             ; preds = %hsv.exit1038
  %i.gl = trunc nuw nsw i32 %i.gk to i16
  %.lhs.trunc1114 = mul nuw i16 %i.gl, 255
  %.rhs.trunc1115 = trunc nuw nsw i32 %i.gj to i16
  %i.gm = udiv i16 %.lhs.trunc1114, %.rhs.trunc1115
  %.zext1116 = zext i16 %i.gm to i32
  br label %hsv.exit1044

hsv.exit1044:                                     ; preds = %hsv.exit1038, %bb.q
  %storemerge.i1043 = phi i32 [ %.zext1116, %bb.q ], [ 0, %hsv.exit1038 ] ; 3 uses
  %i.gn = mul nuw nsw i32 %storemerge.i1043, %i.gj
  %i.go = mul i32 %i.gn, %storemerge.i1043
  %i.gp = uitofp i32 %i.go to double
  %sqrt1140 = tail call double @llvm.sqrt.f64(double %i.gp)
  %i.gq = fptoui double %sqrt1140 to i32
  %i.gr = add i32 %i.fy, %i.gq                    ; 2 uses
  %i.gs = add i32 %i.fz, %i.gj                    ; 2 uses
  %i.gt = icmp samesign ugt i32 %storemerge.i1043, 85
  %i.gu = icmp samesign ugt i32 %i.gj, 85
  %or.cond8 = and i1 %i.gu, %i.gt
  br i1 %or.cond8, label %bb.r, label %bb.s

bb.r:                                             ; preds = %hsv.exit1044
  %i.gv = sub nsw i32 %i.gh, %i.gi
  %i.gw = tail call i32 @llvm.abs.i32(i32 %i.gv, i1 true)
  %i.gx = trunc nsw i32 %i.gw to i16
  %.rhs.trunc1106 = trunc nuw nsw i32 %i.gk to i16
  %i.gy = sub nsw i32 %i.gf, %i.gi
  %i.gz = tail call i32 @llvm.abs.i32(i32 %i.gy, i1 true)
  %i.ha = trunc nsw i32 %i.gz to i16
  %i.hb = sub nsw i32 %i.gf, %i.gh
  %i.hc = tail call i32 @llvm.abs.i32(i32 %i.hb, i1 true)
  %i.hd = trunc nsw i32 %i.hc to i16
  %i.he = insertelement <4 x i16> <i16 poison, i16 poison, i16 poison, i16 1>, i16 %i.gx, i64 0
  %i.hf = insertelement <4 x i16> %i.he, i16 %i.ha, i64 1
  %i.hg = insertelement <4 x i16> %i.hf, i16 %i.hd, i64 2
  %i.hh = mul nuw nsw <4 x i16> %i.hg, <i16 100, i16 100, i16 100, i16 0>
  %i.hi = insertelement <4 x i16> <i16 poison, i16 1, i16 poison, i16 poison>, i16 %.rhs.trunc1106, i64 0
  %i.hj = shufflevector <4 x i16> %i.hi, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hk = udiv <4 x i16> %i.hh, %i.hj
  %i.hl = zext nneg <4 x i16> %i.hk to <4 x i32>
  %i.hm = load <4 x i32>, ptr %i.q, align 8, !tbaa !56
  %i.hn = sub <4 x i32> %i.hm, %i.hl
  %i.ho = add <4 x i32> %i.hn, <i32 100, i32 100, i32 100, i32 1>
  store <4 x i32> %i.ho, ptr %i.q, align 8, !tbaa !56
  br label %bb.s

bb.s:                                             ; preds = %hsv.exit1044, %bb.r
  %indvars.iv.next1526 = add nuw nsw i64 %indvars.iv1525, 1 ; 2 uses
  %exitcond1529.not = icmp eq i64 %indvars.iv.next1526, %wide.trip.count1528
  br i1 %exitcond1529.not, label %.loopexit1184, label %.lr.ph1196

.loopexit1184:                                    ; preds = %bb.o, %bb.s, %._crit_edge.us
  %.4904 = phi i32 [ %i.gr, %bb.s ], [ %i.bp, %._crit_edge.us ], [ %i.ee, %bb.o ]
  %.4899 = phi i32 [ %i.gs, %bb.s ], [ %i.bq, %._crit_edge.us ], [ %i.ef, %bb.o ]
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1903, i64 %indvars.iv1540
  store i32 %.4904, ptr %i.hp, align 4, !tbaa !56
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1905, i64 %indvars.iv1540
  store i32 %.4899, ptr %i.hq, align 4, !tbaa !56
  %indvars.iv.next1541 = add nuw nsw i64 %indvars.iv1540, 1 ; 2 uses
  %exitcond1544.not = icmp eq i64 %indvars.iv.next1541, %i.t
  br i1 %exitcond1544.not, label %bb.t, label %bb.d

bb.t:                                             ; preds = %.loopexit1184
  %indvars.iv.next1546 = add nuw nsw i64 %indvars.iv1545, 1 ; 2 uses
  %exitcond1549.not = icmp eq i64 %indvars.iv.next1546, %i.t
  br i1 %exitcond1549.not, label %.preheader1181, label %.preheader1187

.preheader1175:                                   ; preds = %._crit_edge1244.split
  %i.hr = mul nuw nsw i32 %i.h, %i.h              ; 24 uses
  %i.hs = load i32, ptr %i.ai, align 8, !tbaa !56
  %i.ht = udiv i32 %i.hs, %i.hr
  store i32 %i.ht, ptr %i.ai, align 8, !tbaa !56
  %i.hu = load i32, ptr %i.ae, align 4, !tbaa !56
  %i.hv = udiv i32 %i.hu, %i.hr
  store i32 %i.hv, ptr %i.ae, align 4, !tbaa !56
  %i.hw = load i32, ptr %i.an, align 8, !tbaa !56
  %i.hx = udiv i32 %i.hw, %i.hr
  store i32 %i.hx, ptr %i.an, align 8, !tbaa !56
  %i.hy = load i32, ptr %i.af, align 4, !tbaa !56
  %i.hz = udiv i32 %i.hy, %i.hr
  store i32 %i.hz, ptr %i.af, align 4, !tbaa !56
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !56
  %i.ic = udiv i32 %i.ib, %i.hr
  store i32 %i.ic, ptr %i.ia, align 4, !tbaa !56
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !56
  %i.if = udiv i32 %i.ie, %i.hr
  store i32 %i.if, ptr %i.id, align 8, !tbaa !56
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 3 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !56
  %i.ii = udiv i32 %i.ih, %i.hr
  store i32 %i.ii, ptr %i.ig, align 4, !tbaa !56
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 3 uses
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !56
  %i.il = udiv i32 %i.ik, %i.hr
  store i32 %i.il, ptr %i.ij, align 8, !tbaa !56
  %i.im = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.in = load i32, ptr %i.im, align 8, !tbaa !56
  %i.io = udiv i32 %i.in, %i.hr
  store i32 %i.io, ptr %i.im, align 8, !tbaa !56
  %i.ip = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 4 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !56
  %i.ir = udiv i32 %i.iq, %i.hr
  store i32 %i.ir, ptr %i.ip, align 4, !tbaa !56
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.it = load i32, ptr %i.is, align 8, !tbaa !56
  %i.iu = udiv i32 %i.it, %i.hr
  store i32 %i.iu, ptr %i.is, align 8, !tbaa !56
  %i.iv = getelementptr inbounds nuw i8, ptr %2, i64 124 ; 3 uses
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !56
  %i.ix = udiv i32 %i.iw, %i.hr
  store i32 %i.ix, ptr %i.iv, align 4, !tbaa !56
  %i.iy = load i32, ptr %i.p, align 4, !tbaa !80  ; 4 uses
  %i.iz = mul i32 %i.iy, 100
  %i.ja = mul nuw nsw i32 %0, %0                  ; 2 uses
  %i.jb = udiv i32 %i.iz, %i.ja                   ; 2 uses
  %i.jc = icmp ugt i32 %i.jb, 5                   ; 3 uses
  br i1 %i.jc, label %bb.an, label %bb.ao

.preheader1180.lr.ph:                             ; preds = %._crit_edge1244.split, %.preheader1181
  %indvars.iv1566 = phi i64 [ 0, %.preheader1181 ], [ %indvars.iv.next1567, %._crit_edge1244.split ] ; 22 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv1566 ; 2 uses
  store i32 -1, ptr %i.jd, align 4, !tbaa !56
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv1566 ; 2 uses
  store i32 -1, ptr %i.je, align 4, !tbaa !56
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv1566 ; 2 uses
  %.not1472 = icmp eq i64 %indvars.iv1566, 0      ; 4 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv1566
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv1566
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv1566
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv1566
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv1566 ; 2 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv1566
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv1566
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv1566
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv1566
  br i1 %.not1471, label %._crit_edge1244.split, label %.preheader1180.lr.ph.split

.preheader1180.lr.ph.split:                       ; preds = %.preheader1180.lr.ph
  %.promoted1245 = load i32, ptr %i.jf, align 4, !tbaa !56
  %.promoted1252 = load i32, ptr %i.jk, align 4, !tbaa !56
  %exitcond1544.not.a = icmp eq i64 %indvars.iv1566, 1
  %exitcond1549.not.a = icmp eq i64 %indvars.iv1566, 1
  %exitcond1554.not = icmp eq i64 %indvars.iv1566, 1
  %exitcond1559.not = icmp eq i64 %indvars.iv1566, 1 ; 2 uses
  br label %.preheader1180

.preheader1180:                                   ; preds = %.preheader1180.lr.ph.split, %._crit_edge1239
  %.promoted12421259 = phi i32 [ -1, %.preheader1180.lr.ph.split ], [ %.promoted12421257, %._crit_edge1239 ] ; 2 uses
  %.promoted12411255 = phi i32 [ %.promoted1252, %.preheader1180.lr.ph.split ], [ %.promoted12411253, %._crit_edge1239 ] ; 2 uses
  %.promoted12401251 = phi i32 [ -1, %.preheader1180.lr.ph.split ], [ %.promoted12401249, %._crit_edge1239 ] ; 2 uses
  %.promoted1248 = phi i32 [ %.promoted1245, %.preheader1180.lr.ph.split ], [ %.promoted1246, %._crit_edge1239 ] ; 2 uses
  %.18861243 = phi i32 [ 0, %.preheader1180.lr.ph.split ], [ %i.nn, %._crit_edge1239 ] ; 16 uses
  %i.jp = mul nuw nsw i32 %.18861243, %0
  %i.jq = add nuw nsw i32 %.18861243, %0
  %i.jr = mul nuw nsw i32 %i.jq, %0
  %i.js = add nuw nsw i32 %.18861243, %i.h        ; 8 uses
  br label %bb.u

bb.u:                                             ; preds = %.preheader1180, %bb.am
  %indvars.iv1560 = phi i64 [ 0, %.preheader1180 ], [ %indvars.iv.next1561, %bb.am ] ; 10 uses
  %.promoted12421258 = phi i32 [ %.promoted12421259, %.preheader1180 ], [ %.promoted12421257, %bb.am ] ; 2 uses
  %.promoted12411254 = phi i32 [ %.promoted12411255, %.preheader1180 ], [ %.promoted12411253, %bb.am ] ; 3 uses
  %.promoted12401250 = phi i32 [ %.promoted12401251, %.preheader1180 ], [ %.promoted12401249, %bb.am ] ; 3 uses
  %.promoted1247 = phi i32 [ %.promoted1248, %.preheader1180 ], [ %.promoted1246, %bb.am ] ; 3 uses
  %i.jt = phi i32 [ %.promoted12421259, %.preheader1180 ], [ %i.nm, %bb.am ] ; 3 uses
  %i.ju = phi i32 [ %.promoted12411255, %.preheader1180 ], [ %i.mp, %bb.am ] ; 4 uses
  %i.jv = phi i32 [ %.promoted12401251, %.preheader1180 ], [ %i.lu, %bb.am ] ; 4 uses
  %i.jw = phi i32 [ %.promoted1248, %.preheader1180 ], [ %i.kz, %bb.am ] ; 4 uses
  %indvars1562 = trunc i64 %indvars.iv1560 to i32 ; 10 uses
  %i.jx = add i32 %i.jp, %indvars1562
  %i.jy = zext i32 %i.jx to i64
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.jy
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !56 ; 8 uses
  %i.kb = add i32 %i.jr, %indvars1562
  %i.kc = zext i32 %i.kb to i64
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !56 ; 8 uses
  %i.kf = icmp ugt i32 %i.ka, %i.jw
  br i1 %i.kf, label %.preheader1179, label %._crit_edge

.preheader1179:                                   ; preds = %bb.u
  br i1 %.not1472, label %._crit_edge.thread, label %.lr.ph1215

.lr.ph1215:                                       ; preds = %.preheader1179
  %i.kg = add i32 %i.h, %indvars1562              ; 2 uses
  %i.kh = load i32, ptr %i.aj, align 4, !tbaa !56 ; 2 uses
  %i.ki = icmp ugt i32 %i.kg, %i.kh
  %i.kj = add i32 %i.kh, %i.h
  %i.kk = zext i32 %i.kj to i64
  %i.kl = icmp samesign ult i64 %indvars.iv1560, %i.kk
  %or.cond986 = and i1 %i.ki, %i.kl
  br i1 %or.cond986, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph1215
  %i.km = load i32, ptr %i.ak, align 8, !tbaa !56 ; 2 uses
  %i.kn = icmp ugt i32 %i.js, %i.km
  %i.ko = add i32 %i.km, %i.h
  %i.kp = icmp ult i32 %.18861243, %i.ko
  %or.cond989 = and i1 %i.kn, %i.kp
  br i1 %or.cond989, label %._crit_edge, label %bb.w

bb.w:                                             ; preds = %.lr.ph1215, %bb.v
  br i1 %exitcond1544.not.a, label %._crit_edge.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.kq = load i32, ptr %i.as, align 8, !tbaa !56 ; 2 uses
  %i.kr = icmp ugt i32 %i.kg, %i.kq
  %i.ks = add i32 %i.kq, %i.h
  %i.kt = zext i32 %i.ks to i64
  %i.ku = icmp samesign ult i64 %indvars.iv1560, %i.kt
  %or.cond986.1 = and i1 %i.kr, %i.ku
  br i1 %or.cond986.1, label %bb.y, label %._crit_edge.thread

bb.y:                                             ; preds = %bb.x
  %i.kv = load i32, ptr %i.at, align 4, !tbaa !56 ; 2 uses
  %i.kw = icmp ugt i32 %i.js, %i.kv
  %i.kx = add i32 %i.kv, %i.h
  %i.ky = icmp ult i32 %.18861243, %i.kx
  %or.cond989.1 = and i1 %i.kw, %i.ky
  br i1 %or.cond989.1, label %._crit_edge, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.w, %bb.y, %bb.x, %.preheader1179
  store i32 %i.ka, ptr %i.jf, align 4, !tbaa !56
  store i32 %indvars1562, ptr %i.jg, align 4, !tbaa !56
  store i32 %.18861243, ptr %i.jh, align 4, !tbaa !56
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.v, %bb.y, %._crit_edge.thread, %bb.u
  %.promoted1246 = phi i32 [ %.promoted1247, %bb.u ], [ %i.ka, %._crit_edge.thread ], [ %.promoted1247, %bb.y ], [ %.promoted1247, %bb.v ] ; 2 uses
  %i.kz = phi i32 [ %i.jw, %bb.u ], [ %i.ka, %._crit_edge.thread ], [ %i.jw, %bb.y ], [ %i.jw, %bb.v ]
  %i.la = icmp ult i32 %i.ka, %i.jv
  br i1 %i.la, label %.preheader1178, label %._crit_edge1221

.preheader1178:                                   ; preds = %._crit_edge
  br i1 %.not1472, label %._crit_edge1221.thread, label %.lr.ph1220

.lr.ph1220:                                       ; preds = %.preheader1178
  %i.lb = add i32 %i.h, %indvars1562              ; 2 uses
  %i.lc = load i32, ptr %i.al, align 8, !tbaa !56 ; 2 uses
  %i.ld = icmp ugt i32 %i.lb, %i.lc
  %i.le = add i32 %i.lc, %i.h
  %i.lf = zext i32 %i.le to i64
  %i.lg = icmp samesign ult i64 %indvars.iv1560, %i.lf
  %or.cond992 = and i1 %i.ld, %i.lg
  br i1 %or.cond992, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph1220
  %i.lh = load i32, ptr %i.am, align 4, !tbaa !56 ; 2 uses
  %i.li = icmp ugt i32 %i.js, %i.lh
  %i.lj = add i32 %i.lh, %i.h
  %i.lk = icmp ult i32 %.18861243, %i.lj
  %or.cond995 = and i1 %i.li, %i.lk
  br i1 %or.cond995, label %._crit_edge1221, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph1220, %bb.z
  br i1 %exitcond1549.not.a, label %._crit_edge1221.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ll = load i32, ptr %i.au, align 4, !tbaa !56 ; 2 uses
  %i.lm = icmp ugt i32 %i.lb, %i.ll
  %i.ln = add i32 %i.ll, %i.h
  %i.lo = zext i32 %i.ln to i64
  %i.lp = icmp samesign ult i64 %indvars.iv1560, %i.lo
  %or.cond992.1 = and i1 %i.lm, %i.lp
  br i1 %or.cond992.1, label %bb.ac, label %._crit_edge1221.thread

bb.ac:                                            ; preds = %bb.ab
  %i.lq = load i32, ptr %i.av, align 8, !tbaa !56 ; 2 uses
  %i.lr = icmp ugt i32 %i.js, %i.lq
  %i.ls = add i32 %i.lq, %i.h
  %i.lt = icmp ult i32 %.18861243, %i.ls
  %or.cond995.1 = and i1 %i.lr, %i.lt
  br i1 %or.cond995.1, label %._crit_edge1221, label %._crit_edge1221.thread

._crit_edge1221.thread:                           ; preds = %bb.aa, %bb.ac, %bb.ab, %.preheader1178
  store i32 %i.ka, ptr %i.jd, align 4, !tbaa !56
  store i32 %indvars1562, ptr %i.ji, align 4, !tbaa !56
  store i32 %.18861243, ptr %i.jj, align 4, !tbaa !56
  br label %._crit_edge1221

._crit_edge1221:                                  ; preds = %bb.z, %bb.ac, %._crit_edge1221.thread, %._crit_edge
  %.promoted12401249 = phi i32 [ %.promoted12401250, %._crit_edge ], [ %i.ka, %._crit_edge1221.thread ], [ %.promoted12401250, %bb.ac ], [ %.promoted12401250, %bb.z ] ; 2 uses
  %i.lu = phi i32 [ %i.jv, %._crit_edge ], [ %i.ka, %._crit_edge1221.thread ], [ %i.jv, %bb.ac ], [ %i.jv, %bb.z ]
  %i.lv = icmp ugt i32 %i.ke, %i.ju
  br i1 %i.lv, label %.preheader1177, label %._crit_edge1227

.preheader1177:                                   ; preds = %._crit_edge1221
  br i1 %.not1472, label %._crit_edge1227.thread, label %.lr.ph1226

.lr.ph1226:                                       ; preds = %.preheader1177
  %i.lw = add i32 %i.h, %indvars1562              ; 2 uses
  %i.lx = load i32, ptr %i.ao, align 4, !tbaa !56 ; 2 uses
  %i.ly = icmp ugt i32 %i.lw, %i.lx
  %i.lz = add i32 %i.lx, %i.h
  %i.ma = zext i32 %i.lz to i64
  %i.mb = icmp samesign ult i64 %indvars.iv1560, %i.ma
  %or.cond998 = and i1 %i.ly, %i.mb
  br i1 %or.cond998, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph1226
  %i.mc = load i32, ptr %i.ap, align 8, !tbaa !56 ; 2 uses
  %i.md = icmp ugt i32 %i.js, %i.mc
  %i.me = add i32 %i.mc, %i.h
  %i.mf = icmp ult i32 %.18861243, %i.me
  %or.cond1001 = and i1 %i.md, %i.mf
  br i1 %or.cond1001, label %._crit_edge1227, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph1226, %bb.ad
  br i1 %exitcond1554.not, label %._crit_edge1227.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.mg = load i32, ptr %i.aw, align 8, !tbaa !56 ; 2 uses
  %i.mh = icmp ugt i32 %i.lw, %i.mg
  %i.mi = add i32 %i.mg, %i.h
  %i.mj = zext i32 %i.mi to i64
  %i.mk = icmp samesign ult i64 %indvars.iv1560, %i.mj
  %or.cond998.1 = and i1 %i.mh, %i.mk
  br i1 %or.cond998.1, label %bb.ag, label %._crit_edge1227.thread

bb.ag:                                            ; preds = %bb.af
  %i.ml = load i32, ptr %i.ax, align 4, !tbaa !56 ; 2 uses
  %i.mm = icmp ugt i32 %i.js, %i.ml
  %i.mn = add i32 %i.ml, %i.h
  %i.mo = icmp ult i32 %.18861243, %i.mn
  %or.cond1001.1 = and i1 %i.mm, %i.mo
  br i1 %or.cond1001.1, label %._crit_edge1227, label %._crit_edge1227.thread

._crit_edge1227.thread:                           ; preds = %bb.ae, %bb.ag, %bb.af, %.preheader1177
  store i32 %i.ke, ptr %i.jk, align 4, !tbaa !56
  store i32 %indvars1562, ptr %i.jl, align 4, !tbaa !56
  store i32 %.18861243, ptr %i.jm, align 4, !tbaa !56
  br label %._crit_edge1227

._crit_edge1227:                                  ; preds = %bb.ad, %bb.ag, %._crit_edge1227.thread, %._crit_edge1221
  %.promoted12411253 = phi i32 [ %.promoted12411254, %._crit_edge1221 ], [ %i.ke, %._crit_edge1227.thread ], [ %.promoted12411254, %bb.ag ], [ %.promoted12411254, %bb.ad ] ; 2 uses
  %i.mp = phi i32 [ %i.ju, %._crit_edge1221 ], [ %i.ke, %._crit_edge1227.thread ], [ %i.ju, %bb.ag ], [ %i.ju, %bb.ad ]
  %i.mq = icmp ult i32 %i.ke, %i.jt
  br i1 %i.mq, label %.preheader1176, label %bb.am

.preheader1176:                                   ; preds = %._crit_edge1227
  br i1 %.not1472, label %._crit_edge1233.thread, label %.lr.ph1232

.lr.ph1232:                                       ; preds = %.preheader1176
  %i.mr = add i32 %i.h, %indvars1562              ; 2 uses
  %i.ms = load i32, ptr %i.aq, align 8, !tbaa !56 ; 2 uses
  %i.mt = icmp ugt i32 %i.mr, %i.ms
  %i.mu = add i32 %i.ms, %i.h
  %i.mv = zext i32 %i.mu to i64
  %i.mw = icmp samesign ult i64 %indvars.iv1560, %i.mv
  %or.cond1004 = and i1 %i.mt, %i.mw
  br i1 %or.cond1004, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph1232
  %i.mx = load i32, ptr %i.ar, align 4, !tbaa !56 ; 2 uses
  %i.my = icmp ugt i32 %i.js, %i.mx
  %i.mz = add i32 %i.mx, %i.h
  %i.na = icmp ult i32 %.18861243, %i.mz
  %or.cond1007 = and i1 %i.my, %i.na              ; 2 uses
  %brmerge = or i1 %or.cond1007, %exitcond1559.not
  %.mux = select i1 %or.cond1007, i64 0, i64 %indvars.iv1566
  br i1 %brmerge, label %._crit_edge1233, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph1232
  br i1 %exitcond1559.not, label %._crit_edge1233, label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.nb = load i32, ptr %i.ay, align 4, !tbaa !56 ; 2 uses
  %i.nc = icmp ugt i32 %i.mr, %i.nb
  %i.nd = add i32 %i.nb, %i.h
  %i.ne = zext i32 %i.nd to i64
  %i.nf = icmp samesign ult i64 %indvars.iv1560, %i.ne
  %or.cond1004.1 = and i1 %i.nc, %i.nf
  br i1 %or.cond1004.1, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ng = load i32, ptr %i.az, align 8, !tbaa !56 ; 2 uses
  %i.nh = icmp ugt i32 %i.js, %i.ng
  %i.ni = add i32 %i.ng, %i.h
  %i.nj = icmp ult i32 %.18861243, %i.ni
  %or.cond1007.1 = and i1 %i.nh, %i.nj
  br i1 %or.cond1007.1, label %._crit_edge1233, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  br label %._crit_edge1233

._crit_edge1233:                                  ; preds = %bb.ah, %bb.al, %bb.ak, %bb.ai
  %.3909.lcssa.ph.in = phi i64 [ %indvars.iv1566, %bb.ai ], [ %.mux, %bb.ah ], [ 1, %bb.ak ], [ %indvars.iv1566, %bb.al ]
  %i.nk = and i64 %.3909.lcssa.ph.in, 4294967295
  %i.nl = icmp eq i64 %i.nk, %indvars.iv1566
  br i1 %i.nl, label %._crit_edge1233.thread, label %bb.am

._crit_edge1233.thread:                           ; preds = %.preheader1176, %._crit_edge1233
  store i32 %i.ke, ptr %i.je, align 4, !tbaa !56
  store i32 %indvars1562, ptr %i.jn, align 4, !tbaa !56
  store i32 %.18861243, ptr %i.jo, align 4, !tbaa !56
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge1233, %._crit_edge1233.thread, %._crit_edge1227
  %.promoted12421257 = phi i32 [ %.promoted12421258, %._crit_edge1233 ], [ %i.ke, %._crit_edge1233.thread ], [ %.promoted12421258, %._crit_edge1227 ] ; 2 uses
  %i.nm = phi i32 [ %i.jt, %._crit_edge1233 ], [ %i.ke, %._crit_edge1233.thread ], [ %i.jt, %._crit_edge1227 ]
  %indvars.iv.next1561 = add nuw nsw i64 %indvars.iv1560, 1 ; 2 uses
  %exitcond1564.not = icmp eq i64 %indvars.iv.next1561, %wide.trip.count1563
  br i1 %exitcond1564.not, label %._crit_edge1239, label %bb.u

._crit_edge1239:                                  ; preds = %bb.am
  %i.nn = add nuw nsw i32 %.18861243, 1           ; 2 uses
  %exitcond1565.not = icmp eq i32 %i.nn, %umax
  br i1 %exitcond1565.not, label %._crit_edge1244.split, label %.preheader1180

._crit_edge1244.split:                            ; preds = %._crit_edge1239, %.preheader1180.lr.ph
  %indvars.iv.next1567 = add nuw nsw i64 %indvars.iv1566, 1 ; 2 uses
  %exitcond1569.not = icmp eq i64 %indvars.iv.next1567, 3
  br i1 %exitcond1569.not, label %.preheader1175, label %.preheader1180.lr.ph

bb.an:                                            ; preds = %.preheader1175
  %i.no = load i32, ptr %i.q, align 8, !tbaa !138
  %i.np = udiv i32 %i.no, %i.iy
  store i32 %i.np, ptr %i.q, align 8, !tbaa !138
  %i.nq = load i32, ptr %i.r, align 4, !tbaa !139
  %i.nr = udiv i32 %i.nq, %i.iy
  store i32 %i.nr, ptr %i.r, align 4, !tbaa !139
  %i.ns = load i32, ptr %i.s, align 8, !tbaa !140
  %i.nt = udiv i32 %i.ns, %i.iy
  br label %bb.ap

bb.ao:                                            ; preds = %.preheader1175
  store i32 0, ptr %i.q, align 8, !tbaa !138
  store i32 0, ptr %i.r, align 4, !tbaa !139
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %storemerge = phi i32 [ 0, %bb.ao ], [ %i.nt, %bb.an ]
  %.sink = phi i32 [ 0, %bb.ao ], [ %i.jb, %bb.an ]
  %.0905 = phi i64 [ 6, %bb.ao ], [ 3, %bb.an ]
  store i32 %storemerge, ptr %i.s, align 8, !tbaa !140
  store i32 %.sink, ptr %i.p, align 4, !tbaa !80
  %i.nu = tail call ptr @cli_max_malloc(i64 noundef %i.k) #13 ; 11 uses
  %.not965 = icmp eq ptr %i.nu, null
  br i1 %.not965, label %bb.aq, label %.preheader1173

bb.aq:                                            ; preds = %bb.ap
  %i.nv = shl nuw nsw i32 %i.ja, 3
  %i.nw = zext nneg i32 %i.nv to i64
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.36, i64 noundef %i.nw) #13
  tail call void @free(ptr noundef %i.l) #13
  br label %bb.cv

.preheader1173:                                   ; preds = %bb.ap, %bb.bj
  %indvars.iv1579 = phi i64 [ %indvars.iv.next1580, %bb.bj ], [ 0, %bb.ap ] ; 2 uses
  %i.nx = mul nuw nsw i64 %indvars.iv1579, %i.i
  br label %bb.ar

.preheader1171.us.preheader:                      ; preds = %bb.bj
  %i.ny = add nsw i32 %0, -1                      ; 8 uses
  %wide.trip.count1592 = zext i32 %i.ny to i64    ; 5 uses
  %i.nz = add nsw i64 %wide.trip.count1592, -1    ; 3 uses
  %n.vec = and i64 %i.nz, -2                      ; 2 uses
  %i.oa = or i64 %i.nz, 1
  %cmp.n = icmp eq i64 %i.nz, %n.vec
  br label %.preheader1171.us

.preheader1171.us:                                ; preds = %.preheader1171.us.preheader, %._crit_edge1268.us
  %indvars.iv1589 = phi i64 [ 1, %.preheader1171.us.preheader ], [ %indvars.iv.next1590.a, %._crit_edge1268.us ] ; 3 uses
  %.29141270.us = phi i32 [ 0, %.preheader1171.us.preheader ], [ %spec.select.us.lcssa, %._crit_edge1268.us ]
  %i.ob = add nsw i64 %indvars.iv1589, -1
  %i.oc = mul nuw nsw i64 %i.ob, %7               ; 3 uses
  %i.od = mul nuw nsw i64 %indvars.iv1589, %7     ; 3 uses
  %indvars.iv.next1590.a = add nuw nsw i64 %indvars.iv1589, 1 ; 3 uses
  %i.oe = mul nuw nsw i64 %indvars.iv.next1590.a, %7 ; 3 uses
  %invariant.gep1892 = getelementptr [8 x i8], ptr %i.nu, i64 %i.oc ; 2 uses
  %invariant.gep1894 = getelementptr [8 x i8], ptr %i.nu, i64 %i.od ; 2 uses
  %invariant.gep1896 = getelementptr [8 x i8], ptr %i.nu, i64 %i.oe ; 2 uses
  %invariant.gep1898 = getelementptr [8 x i8], ptr %i.nu, i64 %i.oc ; 2 uses
  %invariant.gep1900 = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %i.od ; 2 uses
  %invariant.gep1902 = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %i.oe ; 2 uses
  %invariant.gep1904 = getelementptr [8 x i8], ptr %i.nu, i64 %i.oc ; 2 uses
  %invariant.gep1906 = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %i.oe ; 2 uses
  %invariant.gep1908 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.od ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.29141270.us, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader1171.us
  %index = phi i64 [ 0, %.preheader1171.us ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i32> [ %broadcast.splat, %.preheader1171.us ], [ %i.pg, %vector.body ]
  %i.of = or disjoint i64 %index, 1               ; 3 uses
  %i.og = getelementptr [8 x i8], ptr %invariant.gep1892, i64 %index
  %wide.load = load <2 x double>, ptr %i.og, align 8, !tbaa !142 ; 2 uses
  %i.oh = getelementptr [8 x i8], ptr %invariant.gep1894, i64 %index
  %wide.load22 = load <2 x double>, ptr %i.oh, align 8, !tbaa !142
  %i.oi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load22, <2 x double> splat (double 2.000000e+00), <2 x double> %wide.load)
  %i.oj = getelementptr [8 x i8], ptr %invariant.gep1896, i64 %index
  %wide.load23 = load <2 x double>, ptr %i.oj, align 8, !tbaa !142 ; 2 uses
  %i.ok = fadd <2 x double> %i.oi, %wide.load23
  %i.ol = add nuw nsw i64 %index, 2               ; 3 uses
  %i.om = getelementptr [8 x i8], ptr %invariant.gep1898, i64 %i.ol
  %wide.load24 = load <2 x double>, ptr %i.om, align 8, !tbaa !142 ; 2 uses
  %i.on = fsub <2 x double> %i.ok, %wide.load24
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1900, i64 %i.ol
  %wide.load25 = load <2 x double>, ptr %i.oo, align 8, !tbaa !142
  %i.op = fneg <2 x double> %wide.load25
  %i.oq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.op, <2 x double> splat (double 2.000000e+00), <2 x double> %i.on)
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1902, i64 %i.ol
  %wide.load26 = load <2 x double>, ptr %i.or, align 8, !tbaa !142 ; 2 uses
  %i.os = fsub <2 x double> %i.oq, %wide.load26   ; 2 uses
  %i.ot = getelementptr [8 x i8], ptr %invariant.gep1904, i64 %i.of
  %wide.load27 = load <2 x double>, ptr %i.ot, align 8, !tbaa !142
  %i.ou = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load27, <2 x double> splat (double 2.000000e+00), <2 x double> %wide.load)
  %i.ov = fadd <2 x double> %wide.load24, %i.ou
  %i.ow = fsub <2 x double> %i.ov, %wide.load23
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1906, i64 %i.of
  %wide.load28 = load <2 x double>, ptr %i.ox, align 8, !tbaa !142
  %i.oy = fneg <2 x double> %wide.load28
  %i.oz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oy, <2 x double> splat (double 2.000000e+00), <2 x double> %i.ow)
  %i.pa = fsub <2 x double> %i.oz, %wide.load26   ; 2 uses
  %i.pb = fmul <2 x double> %i.pa, %i.pa
  %i.pc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.os, <2 x double> %i.os, <2 x double> %i.pb)
  %i.pd = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.pc)
  %i.pe = fptosi <2 x double> %i.pd to <2 x i32>  ; 2 uses
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1908, i64 %i.of
  store <2 x i32> %i.pe, ptr %i.pf, align 4, !tbaa !56
  %i.pg = tail call <2 x i32> @llvm.umax.v2i32(<2 x i32> %vec.phi, <2 x i32> %i.pe) ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ph = icmp eq i64 %index.next, %n.vec
  br i1 %i.ph, label %middle.block, label %vector.body, !llvm.loop !129

middle.block:                                     ; preds = %vector.body
  %i.pi = tail call i32 @llvm.vector.reduce.umax.v2i32(<2 x i32> %i.pg) ; 2 uses
  br i1 %cmp.n, label %._crit_edge1268.us, label %scalar.ph

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %indvars.iv1584.a = phi i64 [ %indvars.iv.next1585.a, %scalar.ph ], [ %i.oa, %middle.block ] ; 5 uses
  %.39151265.us = phi i32 [ %spec.select.us, %scalar.ph ], [ %i.pi, %middle.block ]
  %i.pj = add nsw i64 %indvars.iv1584.a, -1       ; 3 uses
  %gep1893 = getelementptr [8 x i8], ptr %invariant.gep1892, i64 %i.pj
  %i.pk = load double, ptr %gep1893, align 8, !tbaa !142
  %gep1895 = getelementptr [8 x i8], ptr %invariant.gep1894, i64 %i.pj
  %i.pl = load double, ptr %gep1895, align 8, !tbaa !142
  %gep1897 = getelementptr [8 x i8], ptr %invariant.gep1896, i64 %i.pj
  %i.pm = load double, ptr %gep1897, align 8, !tbaa !142 ; 2 uses
  %indvars.iv.next1585.a = add nuw nsw i64 %indvars.iv1584.a, 1 ; 5 uses
  %gep1899 = getelementptr [8 x i8], ptr %invariant.gep1898, i64 %indvars.iv.next1585.a
  %gep1901 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1900, i64 %indvars.iv.next1585.a
  %i.pn = load double, ptr %gep1901, align 8, !tbaa !142
  %i.po = fneg double %i.pn
  %gep1903 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1902, i64 %indvars.iv.next1585.a
  %i.pp = load double, ptr %gep1903, align 8, !tbaa !142 ; 2 uses
  %gep1905 = getelementptr [8 x i8], ptr %invariant.gep1904, i64 %indvars.iv1584.a
  %i.pq = load <2 x double>, ptr %gep1905, align 8, !tbaa !142 ; 2 uses
  %i.pr = load double, ptr %gep1899, align 8, !tbaa !142
  %i.ps = shufflevector <2 x double> %i.pq, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.pt = insertelement <2 x double> %i.ps, double %i.pl, i64 0
  %i.pu = insertelement <2 x double> poison, double %i.pk, i64 0
  %i.pv = shufflevector <2 x double> %i.pu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pt, <2 x double> splat (double 2.000000e+00), <2 x double> %i.pv)
  %i.px = insertelement <2 x double> %i.pq, double %i.pm, i64 0
  %i.py = fadd <2 x double> %i.pw, %i.px
  %i.pz = insertelement <2 x double> poison, double %i.pr, i64 0
  %i.qa = insertelement <2 x double> %i.pz, double %i.pm, i64 1
  %i.qb = fsub <2 x double> %i.py, %i.qa          ; 2 uses
  %i.qc = extractelement <2 x double> %i.qb, i64 0
  %i.qd = tail call double @llvm.fmuladd.f64(double %i.po, double 2.000000e+00, double %i.qc)
  %i.qe = fsub double %i.qd, %i.pp                ; 2 uses
  %gep1907 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1906, i64 %indvars.iv1584.a
  %i.qf = load double, ptr %gep1907, align 8, !tbaa !142
  %i.qg = fneg double %i.qf
  %i.qh = extractelement <2 x double> %i.qb, i64 1
  %i.qi = tail call double @llvm.fmuladd.f64(double %i.qg, double 2.000000e+00, double %i.qh)
  %i.qj = fsub double %i.qi, %i.pp                ; 2 uses
  %i.qk = fmul double %i.qj, %i.qj
  %i.ql = tail call double @llvm.fmuladd.f64(double %i.qe, double %i.qe, double %i.qk)
  %sqrt1141.us = tail call double @llvm.sqrt.f64(double %i.ql)
  %i.qm = fptosi double %sqrt1141.us to i32       ; 2 uses
  %gep1909 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1908, i64 %indvars.iv1584.a
  store i32 %i.qm, ptr %gep1909, align 4, !tbaa !56
  %spec.select.us = tail call i32 @llvm.umax.i32(i32 %.39151265.us, i32 %i.qm) ; 2 uses
  %exitcond1588.not.a = icmp eq i64 %indvars.iv.next1585.a, %wide.trip.count1592
  br i1 %exitcond1588.not.a, label %._crit_edge1268.us, label %scalar.ph, !llvm.loop !130

._crit_edge1268.us:                               ; preds = %scalar.ph, %middle.block
  %spec.select.us.lcssa = phi i32 [ %i.pi, %middle.block ], [ %spec.select.us, %scalar.ph ] ; 5 uses
  %exitcond1593.not.a = icmp eq i64 %indvars.iv.next1590.a, %wide.trip.count1592
  br i1 %exitcond1593.not.a, label %._crit_edge1272, label %.preheader1171.us

bb.ar:                                            ; preds = %.preheader1173, %labdiff.exit
  %indvars.iv1574 = phi i64 [ 0, %.preheader1173 ], [ %indvars.iv.next1575, %labdiff.exit ] ; 2 uses
  %i.qn = add nuw nsw i64 %indvars.iv1574, %i.nx  ; 2 uses
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.qn
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !56 ; 3 uses
  %i.qq = lshr i32 %i.qp, 16
  %i.qr = and i32 %i.qq, 255
  %i.qs = lshr i32 %i.qp, 8
  %i.qt = uitofp nneg i32 %i.qr to double
  %i.qu = and i32 %i.qs, 255
  %i.qv = and i32 %i.qp, 255
  %i.qw = uitofp nneg i32 %i.qu to double
  %i.qx = uitofp nneg i32 %i.qv to double
  %i.qy = fdiv double %i.qt, 2.550000e+02         ; 3 uses
  %i.qz = insertelement <2 x double> poison, double %i.qw, i64 0
  %i.ra = insertelement <2 x double> %i.qz, double %i.qx, i64 1
  %i.rb = fdiv <2 x double> %i.ra, splat (double 2.550000e+02) ; 2 uses
  %i.rc = fcmp ogt double %i.qy, f0x3FA4B5DCC0000000
  br i1 %i.rc, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.rd = fadd double %i.qy, f0x3FAC28F5C0000000
  %i.re = fdiv double %i.rd, f0x3FF0E147A0000000
  %i.rf = tail call double @pow(double noundef %i.re, double noundef f0x4003333340000000) #13
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.rg = fdiv nnan double %i.qy, f0x4029D70A40000000
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.046.i.i = phi double [ %i.rf, %bb.as ], [ %i.rg, %bb.at ]
  %i.rh = extractelement <2 x double> %i.rb, i64 0 ; 3 uses
  %i.ri = fcmp ogt double %i.rh, f0x3FA4B5DCC0000000
  br i1 %i.ri, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.rj = fadd double %i.rh, f0x3FAC28F5C0000000
  %i.rk = fdiv double %i.rj, f0x3FF0E147A0000000
  %i.rl = tail call double @pow(double noundef %i.rk, double noundef f0x4003333340000000) #13
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.rm = fdiv nnan double %i.rh, f0x4029D70A40000000
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.047.i.i = phi double [ %i.rl, %bb.av ], [ %i.rm, %bb.aw ]
  %i.rn = extractelement <2 x double> %i.rb, i64 1 ; 3 uses
  %i.ro = fcmp ogt double %i.rn, f0x3FA4B5DCC0000000
  br i1 %i.ro, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.rp = fadd double %i.rn, f0x3FAC28F5C0000000
  %i.rq = fdiv double %i.rp, f0x3FF0E147A0000000
  %i.rr = tail call double @pow(double noundef %i.rq, double noundef f0x4003333340000000) #13
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.rs = fdiv nnan double %i.rn, f0x4029D70A40000000
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.048.i.i = phi double [ %i.rr, %bb.ay ], [ %i.rs, %bb.az ]
  %i.rt = fmul double %.046.i.i, 1.000000e+02     ; 2 uses
  %i.ru = fmul double %.047.i.i, 1.000000e+02     ; 2 uses
  %i.rv = fmul double %.048.i.i, 1.000000e+02     ; 2 uses
  %i.rw = fmul double %i.ru, f0x3FBE83E420000000
  %i.rx = tail call double @llvm.fmuladd.f64(double %i.rt, double f0x3F93C36120000000, double %i.rw)
  %i.ry = tail call double @llvm.fmuladd.f64(double %i.rv, double f0x3FEE6A7F00000000, double %i.rx)
  %i.rz = insertelement <2 x double> poison, double %i.ru, i64 0
  %i.sa = shufflevector <2 x double> %i.rz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sb = fmul <2 x double> %i.sa, <double f0x3FD6E2EB20000000, double f0x3FE6E2EB20000000>
  %i.sc = insertelement <2 x double> poison, double %i.rt, i64 0
  %i.sd = shufflevector <2 x double> %i.sc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.se = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sd, <2 x double> <double f0x3FDA64C300000000, double f0x3FCB367A00000000>, <2 x double> %i.sb)
  %i.sf = insertelement <2 x double> poison, double %i.rv, i64 0
  %i.sg = shufflevector <2 x double> %i.sf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sg, <2 x double> <double f0x3FC71A9FC0000000, double f0x3FB27BB300000000>, <2 x double> %i.se)
  %i.si = fdiv <2 x double> %i.sh, <double f0x4057C30200000000, double 1.000000e+02> ; 2 uses
  %i.sj = fdiv double %i.ry, f0x405B388320000000  ; 3 uses
  %i.sk = extractelement <2 x double> %i.si, i64 0 ; 3 uses
  %i.sl = fcmp ogt double %i.sk, f0x3F82231840000000
  br i1 %i.sl, label %bb.bb, label %bb.bc

end_hunk_0
begin_hunk_1_@getmetrics:bb.a
  %i.sy = fsub double %.044.i.i, %.0.i.i
  %i.sz = fmul double %i.sy, 2.000000e+02
  %i.ta = fsub double f0x404A98AD00000000, %i.sv
  %i.tb = tail call double @pow(double noundef %i.ta, double noundef 2.000000e+00) #13
  %i.tc = fsub double f0x3F69BD7300000000, %i.sx
  %i.td = tail call double @pow(double noundef %i.tc, double noundef 2.000000e+00) #13
  %i.te = fadd double %i.tb, %i.td
  %i.tf = fsub double f0xBF796D20A0000000, %i.sz
  %i.tg = tail call double @pow(double noundef %i.tf, double noundef 2.000000e+00) #13
  %i.th = fadd double %i.te, %i.tg
  %i.ti = tail call double @sqrt(double noundef %i.th) #13
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %i.qn
  store double %i.ti, ptr %i.tj, align 8, !tbaa !142
  %indvars.iv.next1575 = add nuw nsw i64 %indvars.iv1574, 1 ; 2 uses
  %exitcond1578.not = icmp eq i64 %indvars.iv.next1575, %i.i
  br i1 %exitcond1578.not, label %bb.bj, label %bb.ar

bb.bj:                                            ; preds = %labdiff.exit
  %indvars.iv.next1580 = add nuw nsw i64 %indvars.iv1579, 1 ; 2 uses
  %exitcond1583.not = icmp eq i64 %indvars.iv.next1580, %i.i
  br i1 %exitcond1583.not, label %.preheader1171.us.preheader, label %.preheader1173

._crit_edge1272:                                  ; preds = %._crit_edge1268.us
  tail call void @free(ptr noundef nonnull %i.nu) #13
  %.not966.not = icmp eq i32 %spec.select.us.lcssa, 0
  br i1 %.not966.not, label %.loopexit1170, label %.preheader1168.preheader

.preheader1168.preheader:                         ; preds = %._crit_edge1272
  %wide.trip.count1602 = zext nneg i32 %i.ny to i64
  %i.tk = add nsw i64 %wide.trip.count1592, -1    ; 3 uses
  %xtraiter = and i64 %i.tk, 1
  %i.tl = icmp eq i32 %i.ny, 2
  %unroll_iter = and i64 %i.tk, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod107 = trunc i64 %i.tk to i1
  br label %.preheader1168

.preheader1168:                                   ; preds = %.preheader1168.preheader, %._crit_edge1278
  %indvars.iv1599 = phi i64 [ 1, %.preheader1168.preheader ], [ %indvars.iv.next1600, %._crit_edge1278 ] ; 2 uses
  %i.tm = mul nuw nsw i64 %indvars.iv1599, %i.i   ; 3 uses
  br i1 %i.tl, label %.epil.preheader, label %.preheader1168.new

.preheader1168.new:                               ; preds = %.preheader1168
  %invariant.op = add nuw nsw i64 1, %i.tm
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %.preheader1168.new
  %indvars.iv1594 = phi i64 [ 1, %.preheader1168.new ], [ %indvars.iv.next1595.1, %bb.bk ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader1168.new ], [ %niter.next.1, %bb.bk ]
  %i.tn = add nuw nsw i64 %indvars.iv1594, %i.tm  ; 2 uses
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.tn
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !56
  %i.tq = mul i32 %i.tp, 255
  %i.tr = udiv i32 %i.tq, %spec.select.us.lcssa   ; 3 uses
  %i.ts = shl i32 %i.tr, 8
  %i.tt = shl i32 %i.tr, 16
  %i.tu = or i32 %i.tt, %i.ts
  %i.tv = or i32 %i.tu, %i.tr
  %i.tw = or i32 %i.tv, -16777216
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.tn
  store i32 %i.tw, ptr %i.tx, align 4, !tbaa !56
  %.reass = add nuw nsw i64 %indvars.iv1594, %invariant.op ; 2 uses
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.reass
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !56
  %i.ua = mul i32 %i.tz, 255
  %i.ub = udiv i32 %i.ua, %spec.select.us.lcssa   ; 3 uses
  %i.uc = shl i32 %i.ub, 8
  %i.ud = shl i32 %i.ub, 16
  %i.ue = or i32 %i.ud, %i.uc
  %i.uf = or i32 %i.ue, %i.ub
  %i.ug = or i32 %i.uf, -16777216
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.reass
  store i32 %i.ug, ptr %i.uh, align 4, !tbaa !56
  %indvars.iv.next1595.1 = add nuw nsw i64 %indvars.iv1594, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge1278.unr-lcssa, label %bb.bk

._crit_edge1278.unr-lcssa:                        ; preds = %bb.bk
  br i1 %lcmp.mod.not, label %._crit_edge1278, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge1278.unr-lcssa, %.preheader1168
  %indvars.iv1594.epil.init = phi i64 [ 1, %.preheader1168 ], [ %indvars.iv.next1595.1, %._crit_edge1278.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod107)
  %i.ui = add nuw nsw i64 %indvars.iv1594.epil.init, %i.tm ; 2 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ui
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !56
  %i.ul = mul i32 %i.uk, 255
  %i.um = udiv i32 %i.ul, %spec.select.us.lcssa   ; 3 uses
  %i.un = shl i32 %i.um, 8
  %i.uo = shl i32 %i.um, 16
  %i.up = or i32 %i.uo, %i.un
  %i.uq = or i32 %i.up, %i.um
  %i.ur = or i32 %i.uq, -16777216
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ui
  store i32 %i.ur, ptr %i.us, align 4, !tbaa !56
  br label %._crit_edge1278

._crit_edge1278:                                  ; preds = %._crit_edge1278.unr-lcssa, %.epil.preheader
  %indvars.iv.next1600 = add nuw nsw i64 %indvars.iv1599, 1 ; 2 uses
  %exitcond1603.not = icmp eq i64 %indvars.iv.next1600, %wide.trip.count1602
  br i1 %exitcond1603.not, label %.loopexit1170, label %.preheader1168

.loopexit1170:                                    ; preds = %._crit_edge1278, %._crit_edge1272
  %i.ut = mul nuw nsw i32 %i.ny, %0
  %i.uu = zext nneg i32 %i.ut to i64
  %invariant.gep1910 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.uu ; 2 uses
  %n.vec31 = and i64 %i.i, 508                    ; 3 uses
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %.loopexit1170
  %index33 = phi i64 [ 0, %.loopexit1170 ], [ %index.next34, %vector.body32 ] ; 3 uses
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index33
  store <4 x i32> splat (i32 -16777216), ptr %i.uv, align 4, !tbaa !56
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1910, i64 %index33
  store <4 x i32> splat (i32 -16777216), ptr %i.uw, align 4, !tbaa !56
  %index.next34 = add nuw i64 %index33, 4         ; 2 uses
  %i.ux = icmp eq i64 %index.next34, %n.vec31
  br i1 %i.ux, label %middle.block35, label %vector.body32, !llvm.loop !131

middle.block35:                                   ; preds = %vector.body32
  %cmp.n36 = icmp eq i64 %n.vec31, %i.i
  br i1 %cmp.n36, label %.preheader1167.preheader, label %scalar.ph29

scalar.ph29:                                      ; preds = %middle.block35, %scalar.ph29
  %indvars.iv1604 = phi i64 [ %indvars.iv.next1605, %scalar.ph29 ], [ %n.vec31, %middle.block35 ] ; 3 uses
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv1604
  store i32 -16777216, ptr %i.uy, align 4, !tbaa !56
  %gep1911 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1910, i64 %indvars.iv1604
  store i32 -16777216, ptr %gep1911, align 4, !tbaa !56
  %indvars.iv.next1605 = add nuw nsw i64 %indvars.iv1604, 1 ; 2 uses
  %exitcond1608.not = icmp eq i64 %indvars.iv.next1605, %i.i
  br i1 %exitcond1608.not, label %.preheader1167.preheader, label %scalar.ph29, !llvm.loop !132

.preheader1167.preheader:                         ; preds = %scalar.ph29, %middle.block35
  %invariant.gep1912 = getelementptr [4 x i8], ptr %1, i64 %i.i ; 5 uses
  %xtraiter108 = and i64 %i.i, 3                  ; 3 uses
  %unroll_iter111 = and i64 %i.i, 508
  br label %.preheader1167

.preheader1167:                                   ; preds = %.preheader1167, %.preheader1167.preheader
  %indvars.iv1609 = phi i64 [ 0, %.preheader1167.preheader ], [ %indvars.iv.next1610.3, %.preheader1167 ] ; 5 uses
  %niter112 = phi i64 [ 0, %.preheader1167.preheader ], [ %niter112.next.3, %.preheader1167 ]
  %i.uz = mul nuw nsw i64 %indvars.iv1609, %i.i   ; 2 uses
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.uz
  store i32 -16777216, ptr %i.va, align 4, !tbaa !56
  %gep1913 = getelementptr [4 x i8], ptr %invariant.gep1912, i64 %i.uz
  %i.vb = getelementptr i8, ptr %gep1913, i64 -4
  store i32 -16777216, ptr %i.vb, align 4, !tbaa !56
  %indvars.iv.next1610 = or disjoint i64 %indvars.iv1609, 1
  %i.vc = mul nuw nsw i64 %indvars.iv.next1610, %i.i ; 2 uses
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vc
  store i32 -16777216, ptr %i.vd, align 4, !tbaa !56
  %gep1913.1 = getelementptr [4 x i8], ptr %invariant.gep1912, i64 %i.vc
  %i.ve = getelementptr i8, ptr %gep1913.1, i64 -4
  store i32 -16777216, ptr %i.ve, align 4, !tbaa !56
  %indvars.iv.next1610.1 = or disjoint i64 %indvars.iv1609, 2
  %i.vf = mul nuw nsw i64 %indvars.iv.next1610.1, %i.i ; 2 uses
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vf
  store i32 -16777216, ptr %i.vg, align 4, !tbaa !56
  %gep1913.2 = getelementptr [4 x i8], ptr %invariant.gep1912, i64 %i.vf
  %i.vh = getelementptr i8, ptr %gep1913.2, i64 -4
  store i32 -16777216, ptr %i.vh, align 4, !tbaa !56
  %indvars.iv.next1610.2 = or disjoint i64 %indvars.iv1609, 3
  %i.vi = mul nuw nsw i64 %indvars.iv.next1610.2, %i.i ; 2 uses
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vi
  store i32 -16777216, ptr %i.vj, align 4, !tbaa !56
  %gep1913.3 = getelementptr [4 x i8], ptr %invariant.gep1912, i64 %i.vi
  %i.vk = getelementptr i8, ptr %gep1913.3, i64 -4
  store i32 -16777216, ptr %i.vk, align 4, !tbaa !56
  %indvars.iv.next1610.3 = add nuw nsw i64 %indvars.iv1609, 4 ; 2 uses
  %niter112.next.3 = add nuw nsw i64 %niter112, 4 ; 2 uses
  %niter112.ncmp.3 = icmp eq i64 %niter112.next.3, %unroll_iter111
  br i1 %niter112.ncmp.3, label %.preheader1166.preheader.unr-lcssa, label %.preheader1167

.preheader1166.preheader.unr-lcssa:               ; preds = %.preheader1167
  %lcmp.mod109.not = icmp eq i64 %xtraiter108, 0
  br i1 %lcmp.mod109.not, label %.preheader1166.preheader, label %.preheader1167.epil.preheader

.preheader1167.epil.preheader:                    ; preds = %.preheader1166.preheader.unr-lcssa
  %lcmp.mod110 = icmp ne i64 %xtraiter108, 0
  tail call void @llvm.assume(i1 %lcmp.mod110)
  br label %.preheader1167.epil

.preheader1167.epil:                              ; preds = %.preheader1167.epil, %.preheader1167.epil.preheader
  %indvars.iv1609.epil = phi i64 [ %indvars.iv.next1610.3, %.preheader1167.epil.preheader ], [ %indvars.iv.next1610.epil, %.preheader1167.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader1167.epil.preheader ], [ %epil.iter.next, %.preheader1167.epil ]
  %i.vl = mul nuw nsw i64 %indvars.iv1609.epil, %i.i ; 2 uses
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vl
  store i32 -16777216, ptr %i.vm, align 4, !tbaa !56
  %gep1913.epil = getelementptr [4 x i8], ptr %invariant.gep1912, i64 %i.vl
  %i.vn = getelementptr i8, ptr %gep1913.epil, i64 -4
  store i32 -16777216, ptr %i.vn, align 4, !tbaa !56
  %indvars.iv.next1610.epil = add nuw nsw i64 %indvars.iv1609.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter108
  br i1 %epil.iter.cmp.not, label %.preheader1166.preheader, label %.preheader1167.epil, !llvm.loop !133

.preheader1166.preheader:                         ; preds = %.preheader1167.epil, %.preheader1166.preheader.unr-lcssa
  tail call fastcc void @makebmp(ptr noundef nonnull @.str.37, ptr noundef %3, i32 noundef %0, i32 noundef %0, ptr noundef %1)
  %wide.trip.count1626 = zext nneg i32 %i.ny to i64 ; 2 uses
  %i.vo = shl nuw nsw i64 %i.i, 2
  %i.vp = shl nuw nsw i64 %i.i, 2
  %i.vq = getelementptr i8, ptr %1, i64 %i.vo
  br label %.preheader1166

.preheader1166:                                   ; preds = %.preheader1166.preheader, %._crit_edge1286
  %indvar = phi i64 [ 0, %.preheader1166.preheader ], [ %indvar.next, %._crit_edge1286 ] ; 2 uses
  %indvars.iv1623 = phi i64 [ 1, %.preheader1166.preheader ], [ %indvars.iv.next1624, %._crit_edge1286 ] ; 2 uses
  %i.vr = mul i64 %i.vp, %indvar
  %scevgep = getelementptr i8, ptr %i.vq, i64 %i.vr
  %i.vs = mul nuw nsw i64 %indvars.iv1623, %7
  %load_initial = load i32, ptr %scevgep, align 4
  %i.vt = and i32 %load_initial, 255
  br label %.preheader1165

.preheader1163.preheader:                         ; preds = %._crit_edge1286
  %wide.trip.count1640 = zext nneg i32 %i.ny to i64 ; 2 uses
  %i.vu = add nsw i64 %wide.trip.count1592, -1    ; 2 uses
  %n.vec39 = and i64 %i.vu, -4                    ; 3 uses
  %i.vv = or disjoint i64 %n.vec39, 1
  %cmp.n47 = icmp eq i64 %i.vu, %n.vec39
  br label %.preheader1163

.preheader1165:                                   ; preds = %.preheader1166, %.preheader1165
  %store_forwarded = phi i32 [ %i.vt, %.preheader1166 ], [ %i.vz, %.preheader1165 ]
  %indvars.iv1618 = phi i64 [ 1, %.preheader1166 ], [ %indvars.iv.next1619, %.preheader1165 ] ; 2 uses
  %i.vw = add nuw nsw i64 %indvars.iv1618, %i.vs  ; 2 uses
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vw ; 2 uses
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !56
  %i.vz = and i32 %i.vy, 255                      ; 3 uses
  %i.wa = shl nuw nsw i32 %i.vz, 1
  %i.wb = add nuw nsw i32 %i.wa, %store_forwarded
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vw
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 4
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !56
  %i.wf = and i32 %i.we, 255
  %i.wg = add nuw nsw i32 %i.wf, %i.wb
  %i.wh = shl nuw nsw i32 %i.wg, 6
  %i.wi = and i32 %i.wh, 130816
  %i.wj = or disjoint i32 %i.vz, %i.wi
  store i32 %i.wj, ptr %i.vx, align 4, !tbaa !56
  %indvars.iv.next1619 = add nuw nsw i64 %indvars.iv1618, 1 ; 2 uses
  %exitcond1622.not = icmp eq i64 %indvars.iv.next1619, %wide.trip.count1626
  br i1 %exitcond1622.not, label %._crit_edge1286, label %.preheader1165

._crit_edge1286:                                  ; preds = %.preheader1165
  %indvars.iv.next1624 = add nuw nsw i64 %indvars.iv1623, 1 ; 2 uses
  %exitcond1627.not = icmp eq i64 %indvars.iv.next1624, %wide.trip.count1626
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1627.not, label %.preheader1163.preheader, label %.preheader1166

.preheader1163:                                   ; preds = %.preheader1163.preheader, %._crit_edge1293
  %indvars.iv1637 = phi i64 [ 1, %.preheader1163.preheader ], [ %i.wp, %._crit_edge1293 ] ; 3 uses
  %i.wk = mul nuw nsw i64 %indvars.iv1637, %7
  %i.wl = add nsw i64 %indvars.iv1637, -1
  %i.wm = mul nuw nsw i64 %i.wl, %7
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wm ; 2 uses
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wk ; 2 uses
  %i.wp = add nuw nsw i64 %indvars.iv1637, 1      ; 3 uses
  %i.wq = mul nuw nsw i64 %i.wp, %7
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wq ; 2 uses
  br label %vector.body40

vector.body40:                                    ; preds = %vector.body40, %.preheader1163
  %index41 = phi i64 [ 0, %.preheader1163 ], [ %index.next45, %vector.body40 ] ; 2 uses
  %i.ws = or disjoint i64 %index41, 1             ; 3 uses
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.wn, i64 %i.ws
  %wide.load42 = load <4 x i32>, ptr %i.wt, align 4, !tbaa !56
  %i.wu = lshr <4 x i32> %wide.load42, splat (i32 8)
  %i.wv = and <4 x i32> %i.wu, splat (i32 255)
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.wo, i64 %i.ws ; 2 uses
  %wide.load43 = load <4 x i32>, ptr %i.ww, align 4, !tbaa !56
  %i.wx = lshr <4 x i32> %wide.load43, splat (i32 7)
  %i.wy = and <4 x i32> %i.wx, splat (i32 510)
  %i.wz = add nuw nsw <4 x i32> %i.wy, %i.wv
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %i.ws
  %wide.load44 = load <4 x i32>, ptr %i.xa, align 4, !tbaa !56
  %i.xb = lshr <4 x i32> %wide.load44, splat (i32 8)
  %i.xc = and <4 x i32> %i.xb, splat (i32 255)
  %i.xd = add nuw nsw <4 x i32> %i.xc, %i.wz
  %i.xe = lshr <4 x i32> %i.xd, splat (i32 2)     ; 3 uses
  %i.xf = shl nuw nsw <4 x i32> %i.xe, splat (i32 8)
  %i.xg = shl nuw nsw <4 x i32> %i.xe, splat (i32 16)
  %i.xh = or <4 x i32> %i.xg, %i.xf
  %i.xi = or <4 x i32> %i.xh, %i.xe
  %i.xj = or <4 x i32> %i.xi, splat (i32 -16777216)
  store <4 x i32> %i.xj, ptr %i.ww, align 4, !tbaa !56
  %index.next45 = add nuw i64 %index41, 4         ; 2 uses
  %i.xk = icmp eq i64 %index.next45, %n.vec39
  br i1 %i.xk, label %middle.block46, label %vector.body40, !llvm.loop !134

middle.block46:                                   ; preds = %vector.body40
  br i1 %cmp.n47, label %._crit_edge1293, label %.preheader1162

.preheader1162:                                   ; preds = %middle.block46, %.preheader1162
  %indvars.iv1632 = phi i64 [ %indvars.iv.next1633, %.preheader1162 ], [ %i.vv, %middle.block46 ] ; 4 uses
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.wn, i64 %indvars.iv1632
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !56
  %i.xn = lshr i32 %i.xm, 8
  %i.xo = and i32 %i.xn, 255
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.wo, i64 %indvars.iv1632 ; 2 uses
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !56
  %i.xr = lshr i32 %i.xq, 7
  %i.xs = and i32 %i.xr, 510
  %i.xt = add nuw nsw i32 %i.xs, %i.xo
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %indvars.iv1632
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !56
  %i.xw = lshr i32 %i.xv, 8
  %i.xx = and i32 %i.xw, 255
  %i.xy = add nuw nsw i32 %i.xx, %i.xt
  %i.xz = lshr i32 %i.xy, 2                       ; 3 uses
  %i.ya = shl nuw nsw i32 %i.xz, 8
  %i.yb = shl nuw nsw i32 %i.xz, 16
  %i.yc = or i32 %i.yb, %i.ya
  %i.yd = or i32 %i.yc, %i.xz
  %i.ye = or i32 %i.yd, -16777216
  store i32 %i.ye, ptr %i.xp, align 4, !tbaa !56
  %indvars.iv.next1633 = add nuw nsw i64 %indvars.iv1632, 1 ; 2 uses
  %exitcond1636.not = icmp eq i64 %indvars.iv.next1633, %wide.trip.count1640
  br i1 %exitcond1636.not, label %._crit_edge1293, label %.preheader1162, !llvm.loop !135

._crit_edge1293:                                  ; preds = %.preheader1162, %middle.block46
  %exitcond1641.not = icmp eq i64 %i.wp, %wide.trip.count1640
  br i1 %exitcond1641.not, label %._crit_edge1297.split, label %.preheader1163

._crit_edge1297.split:                            ; preds = %._crit_edge1293
  tail call fastcc void @makebmp(ptr noundef nonnull @.str.38, ptr noundef %3, i32 noundef %0, i32 noundef %0, ptr noundef %1)
  %i.yf = sub nsw i32 %i.ny, %i.h
  %wide.trip.count1650 = zext nneg i32 %i.h to i64
  %wide.trip.count1660 = zext nneg i32 %i.h to i64 ; 2 uses
  %i.yg = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter114 = and i64 %wide.trip.count, 1
  %i.yh = icmp eq i64 %i.yg, 0
  %unroll_iter119 = and i64 %wide.trip.count, 126
  %lcmp.mod116.not = icmp eq i64 %xtraiter114, 0
  %lcmp.mod118 = trunc i32 %i.h to i1
  %min.iters.check61 = icmp samesign ult i32 %0, 48
  %i.yi = trunc nsw i64 %i.yg to i32              ; 2 uses
  %i.yj = icmp ugt i64 %i.yg, 4294967295
  %n.vec63 = and i64 %wide.trip.count, 120        ; 9 uses
  %i.yk = icmp eq i64 %n.vec63, 8
  %i.yl = icmp eq i64 %n.vec63, 16
  %i.ym = icmp eq i64 %n.vec63, 24
  %i.yn = icmp eq i64 %n.vec63, 32
  %i.yo = icmp eq i64 %n.vec63, 40
  %i.yp = icmp eq i64 %n.vec63, 48
  %i.yq = icmp eq i64 %n.vec63, 56
  %cmp.n75 = icmp eq i64 %n.vec63, %wide.trip.count
  %xtraiter121 = and i64 %wide.trip.count, 1
  %lcmp.mod122.not = icmp eq i64 %xtraiter121, 0
  %i.yr = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp samesign ult i32 %0, 32
  %n.vec50 = and i64 %wide.trip.count, 120        ; 9 uses
  %i.ys = icmp eq i64 %n.vec50, 8
  %i.yt = icmp eq i64 %n.vec50, 16
  %i.yu = icmp eq i64 %n.vec50, 24
  %i.yv = icmp eq i64 %n.vec50, 32
  %i.yw = icmp eq i64 %n.vec50, 40
  %i.yx = icmp eq i64 %n.vec50, 48
  %i.yy = icmp eq i64 %n.vec50, 56
  %cmp.n59 = icmp eq i64 %n.vec50, %wide.trip.count
  br label %.preheader1161.split.us.preheader

.preheader1161.split.us.preheader:                ; preds = %.split.us, %._crit_edge1297.split
  %indvars.iv1687 = phi i64 [ 0, %._crit_edge1297.split ], [ %indvars.iv.next1688, %.split.us ] ; 8 uses
  %28 = trunc i64 %indvars.iv1687 to i32
  %i.yz = mul i32 %0, %28                         ; 2 uses
  %i.za = add nsw i32 %i.yz, -1
  %29 = trunc i64 %indvars.iv1687 to i32
  %i.zb = add i32 %29, -1
  %i.zc = mul i32 %i.zb, %0                       ; 13 uses
  %i.zd = zext i32 %i.zc to i64
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.zd
  %30 = trunc nuw nsw i64 %indvars.iv1687 to i32
  %31 = trunc i64 %indvars.iv1687 to i32
  %i.zf = add i32 %i.o, %31
  %i.zg = mul i32 %i.zf, %0                       ; 12 uses
  %i.zh = xor i32 %i.zc, -1
  %i.zi = icmp ult i32 %i.zh, %i.yi
  %i.zj = xor i32 %i.zg, -1
  %i.zk = icmp ult i32 %i.zj, %i.yi
  %i.zl = or i1 %i.zk, %i.yj
  %i.zm = or i1 %i.zi, %i.zl
  %i.zn = zext i32 %i.zc to i64
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zn ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 16
  %i.zq = zext i32 %i.zg to i64
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zq ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 16
  %i.zt = add i32 %i.zc, 8
  %i.zu = zext i32 %i.zt to i64
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zu ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 16
  %i.zx = add i32 %i.zg, 8
  %i.zy = zext i32 %i.zx to i64
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zy ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 16
  %i.aab = add i32 %i.zc, 16
  %i.aac = zext i32 %i.aab to i64
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aac ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 16
  %i.aaf = add i32 %i.zg, 16
  %i.aag = zext i32 %i.aaf to i64
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aag ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 16
  %i.aaj = add i32 %i.zc, 24
  %i.aak = zext i32 %i.aaj to i64
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aak ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 16
  %i.aan = add i32 %i.zg, 24
  %i.aao = zext i32 %i.aan to i64
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aao ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 16
  %i.aar = add i32 %i.zc, 32
  %i.aas = zext i32 %i.aar to i64
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aas ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 16
  %i.aav = add i32 %i.zg, 32
  %i.aaw = zext i32 %i.aav to i64
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aaw ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 16
  %i.aaz = add i32 %i.zc, 40
  %i.aba = zext i32 %i.aaz to i64
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aba ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 16
  %i.abd = add i32 %i.zg, 40
  %i.abe = zext i32 %i.abd to i64
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.abe ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 16
  %i.abh = add i32 %i.zc, 48
  %i.abi = zext i32 %i.abh to i64
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.abi ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 16
  %i.abl = add i32 %i.zg, 48
  %i.abm = zext i32 %i.abl to i64
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.abm ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 16
  %i.abp = add i32 %i.zc, 56
  %i.abq = zext i32 %i.abp to i64
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.abq ; 2 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 16
  %i.abt = add i32 %i.zg, 56
  %i.abu = zext i32 %i.abt to i64
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.abu ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 16
  br label %.preheader1161.split.us

.preheader1161.split.us:                          ; preds = %.preheader1161.split.us.preheader, %..loopexit1160_crit_edge.us
  %.81317.us = phi i32 [ %i.ajy, %..loopexit1160_crit_edge.us ], [ 0, %.preheader1161.split.us.preheader ] ; 8 uses
  %i.abx = or i32 %.81317.us, %30
  %or.cond11.us = icmp eq i32 %i.abx, 0
  br i1 %or.cond11.us, label %.preheader1156.us.us, label %bb.bl

bb.bl:                                            ; preds = %.preheader1161.split.us
  %.not971.us = icmp eq i32 %.81317.us, 0
  br i1 %.not971.us, label %.lr.ph1306.us.preheader, label %.lr.ph1301.us

.lr.ph1301.us:                                    ; preds = %bb.bl
  %i.aby = add i32 %i.za, %.81317.us
  %i.abz = zext i32 %i.aby to i64
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.abz
  %i.acb = load i32, ptr %i.aca, align 4, !tbaa !56 ; 2 uses
  br i1 %i.yh, label %.epil.preheader113, label %.lr.ph1301.us.new

.lr.ph1301.us.new:                                ; preds = %.lr.ph1301.us, %.lr.ph1301.us.new
  %indvars.iv1642 = phi i64 [ %indvars.iv.next1643.1, %.lr.ph1301.us.new ], [ 0, %.lr.ph1301.us ] ; 3 uses
  %.28691299.us = phi i32 [ %i.add, %.lr.ph1301.us.new ], [ %i.acb, %.lr.ph1301.us ]
  %niter120 = phi i64 [ %niter120.next.1, %.lr.ph1301.us.new ], [ 0, %.lr.ph1301.us ]
  %32 = add nuw nsw i64 %indvars.iv1642, %indvars.iv1687
  %33 = trunc nuw i64 %32 to i32
  %i.acc = mul i32 %0, %33
  %i.acd = add i32 %i.acc, %.81317.us             ; 2 uses
  %i.ace = add i32 %i.acd, -1
  %i.acf = zext i32 %i.ace to i64
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.acf
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !56
  %i.aci = and i32 %i.ach, 255
  %i.acj = add i32 %i.o, %i.acd
  %i.ack = zext i32 %i.acj to i64
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ack
  %i.acm = load i32, ptr %i.acl, align 4, !tbaa !56
  %i.acn = and i32 %i.acm, 255
  %indvars.iv.next1653 = or disjoint i64 %indvars.iv1642, 1
  %34 = add nuw nsw i64 %indvars.iv.next1653, %indvars.iv1687
  %35 = trunc nuw i64 %34 to i32
  %i.aco = mul i32 %0, %35
  %i.acp = add i32 %i.aco, %.81317.us             ; 2 uses
  %i.acq = add i32 %i.acp, -1
  %i.acr = zext i32 %i.acq to i64
  %i.acs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.acr
  %i.act = load i32, ptr %i.acs, align 4, !tbaa !56
  %i.acu = and i32 %i.act, 255
  %i.acv = add i32 %.28691299.us, %i.acn
  %i.acw = add nuw nsw i32 %i.aci, %i.acu
  %i.acx = sub i32 %i.acv, %i.acw
  %i.acy = add i32 %i.o, %i.acp
  %i.acz = zext i32 %i.acy to i64
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.acz
  %i.adb = load i32, ptr %i.ada, align 4, !tbaa !56
  %i.adc = and i32 %i.adb, 255
  %i.add = add i32 %i.acx, %i.adc                 ; 3 uses
  %indvars.iv.next1643.1 = add nuw nsw i64 %indvars.iv1642, 2 ; 2 uses
  %niter120.next.1 = add nuw nsw i64 %niter120, 2 ; 2 uses
  %niter120.ncmp.1 = icmp eq i64 %niter120.next.1, %unroll_iter119
  br i1 %niter120.ncmp.1, label %..loopexit1160_crit_edge.us.loopexit86.unr-lcssa, label %.lr.ph1301.us.new

.lr.ph1306.us.preheader:                          ; preds = %bb.bl
  %i.ade = load i32, ptr %i.ze, align 4, !tbaa !56 ; 2 uses
  %brmerge137 = select i1 %min.iters.check61, i1 true, i1 %i.zm
  br i1 %brmerge137, label %.lr.ph1306.us.preheader84, label %vector.body64

vector.body64:                                    ; preds = %.lr.ph1306.us.preheader
  %i.adf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ade, i64 0
  %wide.load68 = load <4 x i32>, ptr %i.zo, align 4, !tbaa !56
  %wide.load69 = load <4 x i32>, ptr %i.zp, align 4, !tbaa !56
  %i.adg = and <4 x i32> %wide.load68, splat (i32 255)
  %i.adh = and <4 x i32> %wide.load69, splat (i32 255)
  %i.adi = sub <4 x i32> %i.adf, %i.adg
  %wide.load70 = load <4 x i32>, ptr %i.zr, align 4, !tbaa !56
  %wide.load71 = load <4 x i32>, ptr %i.zs, align 4, !tbaa !56
  %i.adj = and <4 x i32> %wide.load70, splat (i32 255)
  %i.adk = and <4 x i32> %wide.load71, splat (i32 255)
  %i.adl = add <4 x i32> %i.adi, %i.adj           ; 2 uses
  %i.adm = sub nsw <4 x i32> %i.adk, %i.adh       ; 2 uses
  br i1 %i.yk, label %middle.block73, label %vector.body64.1

vector.body64.1:                                  ; preds = %vector.body64
  %wide.load68.1 = load <4 x i32>, ptr %i.zv, align 4, !tbaa !56
  %wide.load69.1 = load <4 x i32>, ptr %i.zw, align 4, !tbaa !56
  %i.adn = and <4 x i32> %wide.load68.1, splat (i32 255)
  %i.ado = and <4 x i32> %wide.load69.1, splat (i32 255)
  %i.adp = sub <4 x i32> %i.adl, %i.adn
  %i.adq = sub nsw <4 x i32> %i.adm, %i.ado
  %wide.load70.1 = load <4 x i32>, ptr %i.zz, align 4, !tbaa !56
  %wide.load71.1 = load <4 x i32>, ptr %i.aaa, align 4, !tbaa !56
  %i.adr = and <4 x i32> %wide.load70.1, splat (i32 255)
  %i.ads = and <4 x i32> %wide.load71.1, splat (i32 255)
  %i.adt = add <4 x i32> %i.adp, %i.adr           ; 2 uses
  %i.adu = add nsw <4 x i32> %i.adq, %i.ads       ; 2 uses
  br i1 %i.yl, label %middle.block73, label %vector.body64.2

vector.body64.2:                                  ; preds = %vector.body64.1
  %wide.load68.2 = load <4 x i32>, ptr %i.aad, align 4, !tbaa !56
  %wide.load69.2 = load <4 x i32>, ptr %i.aae, align 4, !tbaa !56
  %i.adv = and <4 x i32> %wide.load68.2, splat (i32 255)
  %i.adw = and <4 x i32> %wide.load69.2, splat (i32 255)
  %i.adx = sub <4 x i32> %i.adt, %i.adv
  %i.ady = sub nsw <4 x i32> %i.adu, %i.adw
  %wide.load70.2 = load <4 x i32>, ptr %i.aah, align 4, !tbaa !56
  %wide.load71.2 = load <4 x i32>, ptr %i.aai, align 4, !tbaa !56
  %i.adz = and <4 x i32> %wide.load70.2, splat (i32 255)
  %i.aea = and <4 x i32> %wide.load71.2, splat (i32 255)
  %i.aeb = add <4 x i32> %i.adx, %i.adz           ; 2 uses
  %i.aec = add nsw <4 x i32> %i.ady, %i.aea       ; 2 uses
  br i1 %i.ym, label %middle.block73, label %vector.body64.3

vector.body64.3:                                  ; preds = %vector.body64.2
  %wide.load68.3 = load <4 x i32>, ptr %i.aal, align 4, !tbaa !56
  %wide.load69.3 = load <4 x i32>, ptr %i.aam, align 4, !tbaa !56
  %i.aed = and <4 x i32> %wide.load68.3, splat (i32 255)
  %i.aee = and <4 x i32> %wide.load69.3, splat (i32 255)
  %i.aef = sub <4 x i32> %i.aeb, %i.aed
  %i.aeg = sub nsw <4 x i32> %i.aec, %i.aee
  %wide.load70.3 = load <4 x i32>, ptr %i.aap, align 4, !tbaa !56
  %wide.load71.3 = load <4 x i32>, ptr %i.aaq, align 4, !tbaa !56
  %i.aeh = and <4 x i32> %wide.load70.3, splat (i32 255)
  %i.aei = and <4 x i32> %wide.load71.3, splat (i32 255)
  %i.aej = add <4 x i32> %i.aef, %i.aeh           ; 2 uses
  %i.aek = add <4 x i32> %i.aeg, %i.aei           ; 2 uses
  br i1 %i.yn, label %middle.block73, label %vector.body64.4

vector.body64.4:                                  ; preds = %vector.body64.3
  %wide.load68.4 = load <4 x i32>, ptr %i.aat, align 4, !tbaa !56
  %wide.load69.4 = load <4 x i32>, ptr %i.aau, align 4, !tbaa !56
  %i.ael = and <4 x i32> %wide.load68.4, splat (i32 255)
  %i.aem = and <4 x i32> %wide.load69.4, splat (i32 255)
  %i.aen = sub <4 x i32> %i.aej, %i.ael
  %i.aeo = sub <4 x i32> %i.aek, %i.aem
  %wide.load70.4 = load <4 x i32>, ptr %i.aax, align 4, !tbaa !56
  %wide.load71.4 = load <4 x i32>, ptr %i.aay, align 4, !tbaa !56
  %i.aep = and <4 x i32> %wide.load70.4, splat (i32 255)
  %i.aeq = and <4 x i32> %wide.load71.4, splat (i32 255)
  %i.aer = add <4 x i32> %i.aen, %i.aep           ; 2 uses
  %i.aes = add <4 x i32> %i.aeo, %i.aeq           ; 2 uses
  br i1 %i.yo, label %middle.block73, label %vector.body64.5

vector.body64.5:                                  ; preds = %vector.body64.4
  %wide.load68.5 = load <4 x i32>, ptr %i.abb, align 4, !tbaa !56
  %wide.load69.5 = load <4 x i32>, ptr %i.abc, align 4, !tbaa !56
  %i.aet = and <4 x i32> %wide.load68.5, splat (i32 255)
  %i.aeu = and <4 x i32> %wide.load69.5, splat (i32 255)
  %i.aev = sub <4 x i32> %i.aer, %i.aet
  %i.aew = sub <4 x i32> %i.aes, %i.aeu
  %wide.load70.5 = load <4 x i32>, ptr %i.abf, align 4, !tbaa !56
  %wide.load71.5 = load <4 x i32>, ptr %i.abg, align 4, !tbaa !56
  %i.aex = and <4 x i32> %wide.load70.5, splat (i32 255)
  %i.aey = and <4 x i32> %wide.load71.5, splat (i32 255)
  %i.aez = add <4 x i32> %i.aev, %i.aex           ; 2 uses
  %i.afa = add <4 x i32> %i.aew, %i.aey           ; 2 uses
  br i1 %i.yp, label %middle.block73, label %vector.body64.6

vector.body64.6:                                  ; preds = %vector.body64.5
  %wide.load68.6 = load <4 x i32>, ptr %i.abj, align 4, !tbaa !56
  %wide.load69.6 = load <4 x i32>, ptr %i.abk, align 4, !tbaa !56
  %i.afb = and <4 x i32> %wide.load68.6, splat (i32 255)
  %i.afc = and <4 x i32> %wide.load69.6, splat (i32 255)
  %i.afd = sub <4 x i32> %i.aez, %i.afb
  %i.afe = sub <4 x i32> %i.afa, %i.afc
  %wide.load70.6 = load <4 x i32>, ptr %i.abn, align 4, !tbaa !56
  %wide.load71.6 = load <4 x i32>, ptr %i.abo, align 4, !tbaa !56
  %i.aff = and <4 x i32> %wide.load70.6, splat (i32 255)
  %i.afg = and <4 x i32> %wide.load71.6, splat (i32 255)
  %i.afh = add <4 x i32> %i.afd, %i.aff           ; 2 uses
  %i.afi = add <4 x i32> %i.afe, %i.afg           ; 2 uses
  br i1 %i.yq, label %middle.block73, label %vector.body64.7

vector.body64.7:                                  ; preds = %vector.body64.6
  %wide.load68.7 = load <4 x i32>, ptr %i.abr, align 4, !tbaa !56
  %wide.load69.7 = load <4 x i32>, ptr %i.abs, align 4, !tbaa !56
  %i.afj = and <4 x i32> %wide.load68.7, splat (i32 255)
  %i.afk = and <4 x i32> %wide.load69.7, splat (i32 255)
  %i.afl = sub <4 x i32> %i.afh, %i.afj
  %i.afm = sub <4 x i32> %i.afi, %i.afk
  %wide.load70.7 = load <4 x i32>, ptr %i.abv, align 4, !tbaa !56
  %wide.load71.7 = load <4 x i32>, ptr %i.abw, align 4, !tbaa !56
  %i.afn = and <4 x i32> %wide.load70.7, splat (i32 255)
  %i.afo = and <4 x i32> %wide.load71.7, splat (i32 255)
  %i.afp = add <4 x i32> %i.afl, %i.afn
  %i.afq = add <4 x i32> %i.afm, %i.afo
  br label %middle.block73

middle.block73:                                   ; preds = %vector.body64.7, %vector.body64.6, %vector.body64.5, %vector.body64.4, %vector.body64.3, %vector.body64.2, %vector.body64.1, %vector.body64
  %.lcssa89 = phi <4 x i32> [ %i.adl, %vector.body64 ], [ %i.adt, %vector.body64.1 ], [ %i.aeb, %vector.body64.2 ], [ %i.aej, %vector.body64.3 ], [ %i.aer, %vector.body64.4 ], [ %i.aez, %vector.body64.5 ], [ %i.afh, %vector.body64.6 ], [ %i.afp, %vector.body64.7 ]
  %.lcssa88 = phi <4 x i32> [ %i.adm, %vector.body64 ], [ %i.adu, %vector.body64.1 ], [ %i.aec, %vector.body64.2 ], [ %i.aek, %vector.body64.3 ], [ %i.aes, %vector.body64.4 ], [ %i.afa, %vector.body64.5 ], [ %i.afi, %vector.body64.6 ], [ %i.afq, %vector.body64.7 ]
  %bin.rdx74 = add <4 x i32> %.lcssa88, %.lcssa89
  %i.afr = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx74) ; 2 uses
  br i1 %cmp.n75, label %..loopexit1160_crit_edge.us, label %.lr.ph1306.us.preheader84

.lr.ph1306.us.preheader84:                        ; preds = %.lr.ph1306.us.preheader, %middle.block73
  %indvars.iv1647.ph = phi i64 [ %n.vec63, %middle.block73 ], [ 0, %.lr.ph1306.us.preheader ] ; 4 uses
  %.38701304.us.ph = phi i32 [ %i.afr, %middle.block73 ], [ %i.ade, %.lr.ph1306.us.preheader ] ; 2 uses
  br i1 %lcmp.mod122.not, label %.lr.ph1306.us.prol.loopexit, label %.lr.ph1306.us.prol

.lr.ph1306.us.prol:                               ; preds = %.lr.ph1306.us.preheader84
  %i.afs = trunc nuw nsw i64 %indvars.iv1647.ph to i32 ; 2 uses
  %i.aft = add i32 %i.zc, %i.afs
  %i.afu = zext i32 %i.aft to i64
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.afu
  %i.afw = load i32, ptr %i.afv, align 4, !tbaa !56
  %i.afx = and i32 %i.afw, 255
  %i.afy = sub i32 %.38701304.us.ph, %i.afx
  %i.afz = add i32 %i.zg, %i.afs
  %i.aga = zext i32 %i.afz to i64
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aga
  %i.agc = load i32, ptr %i.agb, align 4, !tbaa !56
  %i.agd = and i32 %i.agc, 255
  %i.age = add i32 %i.afy, %i.agd                 ; 2 uses
  %indvars.iv.next1648.prol = or disjoint i64 %indvars.iv1647.ph, 1
  br label %.lr.ph1306.us.prol.loopexit

.lr.ph1306.us.prol.loopexit:                      ; preds = %.lr.ph1306.us.prol, %.lr.ph1306.us.preheader84
  %.lcssa90.unr = phi i32 [ poison, %.lr.ph1306.us.preheader84 ], [ %i.age, %.lr.ph1306.us.prol ]
  %indvars.iv1647.unr = phi i64 [ %indvars.iv1647.ph, %.lr.ph1306.us.preheader84 ], [ %indvars.iv.next1648.prol, %.lr.ph1306.us.prol ]
  %.38701304.us.unr = phi i32 [ %.38701304.us.ph, %.lr.ph1306.us.preheader84 ], [ %i.age, %.lr.ph1306.us.prol ]
  %i.agf = icmp eq i64 %indvars.iv1647.ph, %i.yr
  br i1 %i.agf, label %..loopexit1160_crit_edge.us, label %.lr.ph1306.us

.lr.ph1306.us:                                    ; preds = %.lr.ph1306.us.prol.loopexit, %.lr.ph1306.us
  %indvars.iv1647 = phi i64 [ %indvars.iv.next1648.1, %.lr.ph1306.us ], [ %indvars.iv1647.unr, %.lr.ph1306.us.prol.loopexit ] ; 3 uses
  %.38701304.us = phi i32 [ %i.ahg, %.lr.ph1306.us ], [ %.38701304.us.unr, %.lr.ph1306.us.prol.loopexit ]
  %i.agg = trunc nuw nsw i64 %indvars.iv1647 to i32 ; 2 uses
  %i.agh = add i32 %i.zc, %i.agg
  %i.agi = zext i32 %i.agh to i64
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.agi
  %i.agk = load i32, ptr %i.agj, align 4, !tbaa !56
  %i.agl = and i32 %i.agk, 255
  %i.agm = add i32 %i.zg, %i.agg
  %i.agn = zext i32 %i.agm to i64
  %i.ago = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.agn
  %i.agp = load i32, ptr %i.ago, align 4, !tbaa !56
  %i.agq = and i32 %i.agp, 255
  %i.agr = trunc i64 %indvars.iv1647 to i32
  %i.ags = add i32 %i.agr, 1                      ; 2 uses
  %i.agt = add i32 %i.zc, %i.ags
  %i.agu = zext i32 %i.agt to i64
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.agu
  %i.agw = load i32, ptr %i.agv, align 4, !tbaa !56
  %i.agx = and i32 %i.agw, 255
  %i.agy = add i32 %.38701304.us, %i.agq
  %i.agz = add nuw nsw i32 %i.agl, %i.agx
  %i.aha = sub i32 %i.agy, %i.agz
  %i.ahb = add i32 %i.zg, %i.ags
  %i.ahc = zext i32 %i.ahb to i64
  %i.ahd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ahc
  %i.ahe = load i32, ptr %i.ahd, align 4, !tbaa !56
  %i.ahf = and i32 %i.ahe, 255
  %i.ahg = add i32 %i.aha, %i.ahf                 ; 2 uses
  %indvars.iv.next1648.1 = add nuw nsw i64 %indvars.iv1647, 2 ; 2 uses
  %exitcond1651.not.1 = icmp eq i64 %indvars.iv.next1648.1, %wide.trip.count1650
  br i1 %exitcond1651.not.1, label %..loopexit1160_crit_edge.us, label %.lr.ph1306.us, !llvm.loop !136

.preheader1156.us.us:                             ; preds = %.preheader1161.split.us, %._crit_edge1311.us.us
  %indvars.iv1657 = phi i64 [ %indvars.iv.next1658, %._crit_edge1311.us.us ], [ 0, %.preheader1161.split.us ] ; 2 uses
  %.08671314.us.us = phi i32 [ %.lcssa12, %._crit_edge1311.us.us ], [ 0, %.preheader1161.split.us ] ; 2 uses
  %i.ahh = mul nuw nsw i64 %indvars.iv1657, %i.i
  %invariant.gep1914 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ahh ; 17 uses
  br i1 %min.iters.check, label %scalar.ph48.preheader, label %vector.body51

vector.body51:                                    ; preds = %.preheader1156.us.us
  %i.ahi = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.08671314.us.us, i64 0
  %i.ahj = getelementptr inbounds nuw i8, ptr %invariant.gep1914, i64 16
  %wide.load55 = load <4 x i32>, ptr %invariant.gep1914, align 4, !tbaa !56
  %wide.load56 = load <4 x i32>, ptr %i.ahj, align 4, !tbaa !56
  %i.ahk = and <4 x i32> %wide.load55, splat (i32 255)
  %i.ahl = and <4 x i32> %wide.load56, splat (i32 255) ; 2 uses
  %i.ahm = add <4 x i32> %i.ahk, %i.ahi           ; 2 uses
  br i1 %i.ys, label %middle.block58, label %vector.body51.1

vector.body51.1:                                  ; preds = %vector.body51
  %i.ahn = getelementptr inbounds nuw i8, ptr %invariant.gep1914, i64 32
  %i.aho = getelementptr inbounds nuw i8, ptr %invariant.gep1914, i64 48
  %wide.load55.1 = load <4 x i32>, ptr %i.ahn, align 4, !tbaa !56
  %wide.load56.1 = load <4 x i32>, ptr %i.aho, align 4, !tbaa !56
  %i.ahp = and <4 x i32> %wide.load55.1, splat (i32 255)
  %i.ahq = and <4 x i32> %wide.load56.1, splat (i32 255)
  %i.ahr = add <4 x i32> %i.ahp, %i.ahm           ; 2 uses
  %i.ahs = add nuw nsw <4 x i32> %i.ahq, %i.ahl   ; 2 uses
  br i1 %i.yt, label %middle.block58, label %vector.body51.2

vector.body51.2:                                  ; preds = %vector.body51.1
  %i.aht = getelementptr inbounds nuw i8, ptr %invariant.gep1914, i64 64
  %i.ahu = getelementptr inbounds nuw i8, ptr %invariant.gep1914, i64 80
  %wide.load55.2 = load <4 x i32>, ptr %i.aht, align 4, !tbaa !56
  %wide.load56.2 = load <4 x i32>, ptr %i.ahu, align 4, !tbaa !56
  %i.ahv = and <4 x i32> %wide.load55.2, splat (i32 255)
  %i.ahw = and <4 x i32> %wide.load56.2, splat (i32 255)
  %i.ahx = add <4 x i32> %i.ahv, %i.ahr           ; 2 uses
  %i.ahy = add nuw nsw <4 x i32> %i.ahw, %i.ahs   ; 2 uses
  br i1 %i.yu, label %middle.block58, label %vector.body51.3

vector.body51.3:                                  ; preds = %vector.body51.2
  %i.ahz = getelementptr inbounds nuw i8, ptr %invariant.gep1914, i64 96
  %i.aia = getelementptr inbounds nuw i8, ptr %invariant.gep1914, i64 112
  %wide.load55.3 = load <4 x i32>, ptr %i.ahz, align 4, !tbaa !56
  %wide.load56.3 = load <4 x i32>, ptr %i.aia, align 4, !tbaa !56
  %i.aib = and <4 x i32> %wide.load55.3, splat (i32 255)
  %i.aic = and <4 x i32> %wide.load56.3, splat (i32 255)
  %i.aid = add <4 x i32> %i.aib, %i.ahx           ; 2 uses
  %i.aie = add nuw nsw <4 x i32> %i.aic, %i.ahy   ; 2 uses
  br i1 %i.yv, label %middle.block58, label %vector.body51.4

vector.body51.4:                                  ; preds = %vector.body51.3
  %i.aif = getelementptr inbounds nuw i8, ptr %invariant.gep1914, i64 128
  %i.aig = getelementptr inbounds nuw i8, ptr %invariant.gep1914, i64 144
  %wide.load55.4 = load <4 x i32>, ptr %i.aif, align 4, !tbaa !56
  %wide.load56.4 = load <4 x i32>, ptr %i.aig, align 4, !tbaa !56
  %i.aih = and <4 x i32> %wide.load55.4, splat (i32 255)
  %i.aii = and <4 x i32> %wide.load56.4, splat (i32 255)
  %i.aij = add <4 x i32> %i.aih, %i.aid           ; 2 uses
  %i.aik = add nuw nsw <4 x i32> %i.aii, %i.aie   ; 2 uses
  br i1 %i.yw, label %middle.block58, label %vector.body51.5

vector.body51.5:                                  ; preds = %vector.body51.4
  %i.ail = getelementptr inbounds nuw i8, ptr %invariant.gep1914, i64 160
  %i.aim = getelementptr inbounds nuw i8, ptr %invariant.gep1914, i64 176
  %wide.load55.5 = load <4 x i32>, ptr %i.ail, align 4, !tbaa !56
  %wide.load56.5 = load <4 x i32>, ptr %i.aim, align 4, !tbaa !56
  %i.ain = and <4 x i32> %wide.load55.5, splat (i32 255)
  %i.aio = and <4 x i32> %wide.load56.5, splat (i32 255)
  %i.aip = add <4 x i32> %i.ain, %i.aij           ; 2 uses
  %i.aiq = add nuw nsw <4 x i32> %i.aio, %i.aik   ; 2 uses
  br i1 %i.yx, label %middle.block58, label %vector.body51.6

vector.body51.6:                                  ; preds = %vector.body51.5
  %i.air = getelementptr inbounds nuw i8, ptr %invariant.gep1914, i64 192
  %i.ais = getelementptr inbounds nuw i8, ptr %invariant.gep1914, i64 208
  %wide.load55.6 = load <4 x i32>, ptr %i.air, align 4, !tbaa !56
  %wide.load56.6 = load <4 x i32>, ptr %i.ais, align 4, !tbaa !56
  %i.ait = and <4 x i32> %wide.load55.6, splat (i32 255)
  %i.aiu = and <4 x i32> %wide.load56.6, splat (i32 255)
  %i.aiv = add <4 x i32> %i.ait, %i.aip           ; 2 uses
  %i.aiw = add nuw nsw <4 x i32> %i.aiu, %i.aiq   ; 2 uses
  br i1 %i.yy, label %middle.block58, label %vector.body51.7

vector.body51.7:                                  ; preds = %vector.body51.6
  %i.aix = getelementptr inbounds nuw i8, ptr %invariant.gep1914, i64 224
  %i.aiy = getelementptr inbounds nuw i8, ptr %invariant.gep1914, i64 240
  %wide.load55.7 = load <4 x i32>, ptr %i.aix, align 4, !tbaa !56
  %wide.load56.7 = load <4 x i32>, ptr %i.aiy, align 4, !tbaa !56
  %i.aiz = and <4 x i32> %wide.load55.7, splat (i32 255)
  %i.aja = and <4 x i32> %wide.load56.7, splat (i32 255)
  %i.ajb = add <4 x i32> %i.aiz, %i.aiv
  %i.ajc = add <4 x i32> %i.aja, %i.aiw
  br label %middle.block58

middle.block58:                                   ; preds = %vector.body51.7, %vector.body51.6, %vector.body51.5, %vector.body51.4, %vector.body51.3, %vector.body51.2, %vector.body51.1, %vector.body51
  %.lcssa92 = phi <4 x i32> [ %i.ahm, %vector.body51 ], [ %i.ahr, %vector.body51.1 ], [ %i.ahx, %vector.body51.2 ], [ %i.aid, %vector.body51.3 ], [ %i.aij, %vector.body51.4 ], [ %i.aip, %vector.body51.5 ], [ %i.aiv, %vector.body51.6 ], [ %i.ajb, %vector.body51.7 ]
  %.lcssa91 = phi <4 x i32> [ %i.ahl, %vector.body51 ], [ %i.ahs, %vector.body51.1 ], [ %i.ahy, %vector.body51.2 ], [ %i.aie, %vector.body51.3 ], [ %i.aik, %vector.body51.4 ], [ %i.aiq, %vector.body51.5 ], [ %i.aiw, %vector.body51.6 ], [ %i.ajc, %vector.body51.7 ]
  %bin.rdx = add <4 x i32> %.lcssa91, %.lcssa92
  %i.ajd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n59, label %._crit_edge1311.us.us, label %scalar.ph48.preheader

scalar.ph48.preheader:                            ; preds = %.preheader1156.us.us, %middle.block58
  %indvars.iv1652.ph = phi i64 [ 0, %.preheader1156.us.us ], [ %n.vec50, %middle.block58 ]
  %.18681309.us.us.ph = phi i32 [ %.08671314.us.us, %.preheader1156.us.us ], [ %i.ajd, %middle.block58 ]
  br label %scalar.ph48

scalar.ph48:                                      ; preds = %scalar.ph48.preheader, %scalar.ph48
  %indvars.iv1652 = phi i64 [ %indvars.iv.next1653.a, %scalar.ph48 ], [ %indvars.iv1652.ph, %scalar.ph48.preheader ] ; 2 uses
  %.18681309.us.us = phi i32 [ %i.ajg, %scalar.ph48 ], [ %.18681309.us.us.ph, %scalar.ph48.preheader ]
  %gep1915 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1914, i64 %indvars.iv1652
  %i.aje = load i32, ptr %gep1915, align 4, !tbaa !56
  %i.ajf = and i32 %i.aje, 255
  %i.ajg = add i32 %i.ajf, %.18681309.us.us       ; 2 uses
  %indvars.iv.next1653.a = add nuw nsw i64 %indvars.iv1652, 1 ; 2 uses
  %exitcond1656.not = icmp eq i64 %indvars.iv.next1653.a, %wide.trip.count1660
  br i1 %exitcond1656.not, label %._crit_edge1311.us.us, label %scalar.ph48, !llvm.loop !137

._crit_edge1311.us.us:                            ; preds = %scalar.ph48, %middle.block58
  %.lcssa12 = phi i32 [ %i.ajd, %middle.block58 ], [ %i.ajg, %scalar.ph48 ] ; 2 uses
  %indvars.iv.next1658 = add nuw nsw i64 %indvars.iv1657, 1 ; 2 uses
  %exitcond1661.not = icmp eq i64 %indvars.iv.next1658, %wide.trip.count1660
  br i1 %exitcond1661.not, label %..loopexit1160_crit_edge.us, label %.preheader1156.us.us

..loopexit1160_crit_edge.us.loopexit86.unr-lcssa: ; preds = %.lr.ph1301.us.new
  br i1 %lcmp.mod116.not, label %..loopexit1160_crit_edge.us, label %.epil.preheader113

.epil.preheader113:                               ; preds = %..loopexit1160_crit_edge.us.loopexit86.unr-lcssa, %.lr.ph1301.us
  %indvars.iv1642.epil.init = phi i64 [ 0, %.lr.ph1301.us ], [ %indvars.iv.next1643.1, %..loopexit1160_crit_edge.us.loopexit86.unr-lcssa ]
  %.28691299.us.epil.init = phi i32 [ %i.acb, %.lr.ph1301.us ], [ %i.add, %..loopexit1160_crit_edge.us.loopexit86.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod118)
  %36 = add nuw nsw i64 %indvars.iv1642.epil.init, %indvars.iv1687
  %37 = trunc nuw i64 %36 to i32
  %i.ajh = mul i32 %0, %37
  %i.aji = add i32 %i.ajh, %.81317.us             ; 2 uses
  %i.ajj = add i32 %i.aji, -1
  %i.ajk = zext i32 %i.ajj to i64
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ajk
  %i.ajm = load i32, ptr %i.ajl, align 4, !tbaa !56
  %i.ajn = and i32 %i.ajm, 255
  %i.ajo = sub i32 %.28691299.us.epil.init, %i.ajn
  %i.ajp = add i32 %i.o, %i.aji
  %i.ajq = zext i32 %i.ajp to i64
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ajq
  %i.ajs = load i32, ptr %i.ajr, align 4, !tbaa !56
  %i.ajt = and i32 %i.ajs, 255
  %i.aju = add i32 %i.ajo, %i.ajt
  br label %..loopexit1160_crit_edge.us

..loopexit1160_crit_edge.us:                      ; preds = %.epil.preheader113, %..loopexit1160_crit_edge.us.loopexit86.unr-lcssa, %.lr.ph1306.us.prol.loopexit, %.lr.ph1306.us, %._crit_edge1311.us.us, %middle.block73
  %.4871.us = phi i32 [ %i.ahg, %.lr.ph1306.us ], [ %.lcssa12, %._crit_edge1311.us.us ], [ %i.afr, %middle.block73 ], [ %.lcssa90.unr, %.lr.ph1306.us.prol.loopexit ], [ %i.add, %..loopexit1160_crit_edge.us.loopexit86.unr-lcssa ], [ %i.aju, %.epil.preheader113 ]
  %i.ajv = add i32 %.81317.us, %i.yz
  %i.ajw = zext i32 %i.ajv to i64
  %i.ajx = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ajw
  store i32 %.4871.us, ptr %i.ajx, align 4, !tbaa !56
  %i.ajy = add i32 %.81317.us, 1                  ; 2 uses
  %.not970.us = icmp ugt i32 %i.ajy, %i.yf
  br i1 %.not970.us, label %.split.us, label %.preheader1161.split.us

.preheader1155:                                   ; preds = %.split.us
  %.not1480 = icmp eq i32 %i.ny, %i.h
  %umax1690 = tail call i32 @llvm.umax.i32(i32 %i.ah, i32 1) ; 2 uses
  %wide.trip.count1691 = zext i32 %umax1690 to i64
  %wide.trip.count1744 = zext i32 %umax1690 to i64
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aka = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.akb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.akc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.akd = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ake = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.akf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.akg = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.akh = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.aki = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.akj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.akk = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.akl = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.akm = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.akn = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ako = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %.preheader1154.lr.ph

.split.us:                                        ; preds = %..loopexit1160_crit_edge.us
  %indvars.iv.next1688 = add nuw nsw i64 %indvars.iv1687, 1 ; 2 uses
  %exitcond1691.not = icmp eq i64 %indvars.iv.next1688, %i.t
  br i1 %exitcond1691.not, label %.preheader1155, label %.preheader1161.split.us.preheader

.preheader1154.lr.ph:                             ; preds = %._crit_edge1380, %.preheader1155
  %indvars.iv1748 = phi i64 [ 0, %.preheader1155 ], [ %indvars.iv.next1749, %._crit_edge1380 ] ; 26 uses
  %i.akp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv1748 ; 2 uses
  store i32 0, ptr %i.akp, align 4, !tbaa !56
  %i.akq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv1748 ; 2 uses
  store i32 -1, ptr %i.akq, align 4, !tbaa !56
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv1748 ; 2 uses
  %i.aks = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv1748 ; 2 uses
  %i.akt = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv1748 ; 2 uses
  %i.aku = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv1748 ; 2 uses
  br i1 %.not1480, label %._crit_edge1380, label %.preheader1154.lr.ph.split.us

.preheader1154.lr.ph.split.us:                    ; preds = %.preheader1154.lr.ph
  %.not1482 = icmp eq i64 %indvars.iv1748, 0
  br i1 %.not1482, label %.preheader1154.us.us1406.us, label %.lr.ph1333.split.us.us.us.split.us.preheader.preheader

.lr.ph1333.split.us.us.us.split.us.preheader.preheader: ; preds = %.preheader1154.lr.ph.split.us
  %exitcond1681.not = icmp eq i64 %indvars.iv1748, 1
  %exitcond1681.not.1 = icmp eq i64 %indvars.iv1748, 2
  %exitcond1681.not.2 = icmp eq i64 %indvars.iv1748, 3
  %exitcond1681.not.3 = icmp eq i64 %indvars.iv1748, 4
  %exitcond1686.not = icmp eq i64 %indvars.iv1748, 1 ; 2 uses
  %exitcond1686.not.1 = icmp eq i64 %indvars.iv1748, 2 ; 2 uses
  %exitcond1686.not.2 = icmp eq i64 %indvars.iv1748, 3 ; 2 uses
  %exitcond1686.not.3 = icmp eq i64 %indvars.iv1748, 4 ; 2 uses
  br label %.lr.ph1333.split.us.us.us.split.us.preheader

.lr.ph1333.split.us.us.us.split.us.preheader:     ; preds = %.lr.ph1333.split.us.us.us.split.us.preheader.preheader, %._crit_edge1334.split.us.us.us
  %.us-phi1339.us1395.us = phi i32 [ %i.aow, %._crit_edge1334.split.us.us.us ], [ -1, %.lr.ph1333.split.us.us.us.split.us.preheader.preheader ]
  %.us-phi1340.us1393.us = phi i32 [ %i.amy, %._crit_edge1334.split.us.us.us ], [ 0, %.lr.ph1333.split.us.us.us.split.us.preheader.preheader ]
  %.98941375.us.us = phi i32 [ %i.aox, %._crit_edge1334.split.us.us.us ], [ 0, %.lr.ph1333.split.us.us.us.split.us.preheader.preheader ] ; 15 uses
  %i.akv = mul nuw nsw i32 %.98941375.us.us, %0
  %i.akw = add nuw nsw i32 %.98941375.us.us, %i.h ; 10 uses
  br label %.lr.ph1333.split.us.us.us.split.us

.lr.ph1333.split.us.us.us.split.us:               ; preds = %.lr.ph1333.split.us.us.us.split.us.preheader, %bb.co
  %indvars.iv1687.a = phi i64 [ 0, %.lr.ph1333.split.us.us.us.split.us.preheader ], [ %indvars.iv.next1688.a, %bb.co ] ; 12 uses
  %i.akx = phi i32 [ %.us-phi1339.us1395.us, %.lr.ph1333.split.us.us.us.split.us.preheader ], [ %i.aow, %bb.co ] ; 3 uses
  %i.aky = phi i32 [ %.us-phi1340.us1393.us, %.lr.ph1333.split.us.us.us.split.us.preheader ], [ %i.amy, %bb.co ] ; 7 uses
  %indvars1689 = trunc i64 %indvars.iv1687.a to i32 ; 5 uses
  %i.akz = add i32 %i.akv, %indvars1689
  %i.ala = zext i32 %i.akz to i64
  %i.alb = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ala
  %i.alc = load i32, ptr %i.alb, align 4, !tbaa !56 ; 4 uses
  %i.ald = icmp ugt i32 %i.alc, %i.aky
  br i1 %i.ald, label %.preheader1153.us.us.us.us, label %._crit_edge1324.us.us.us.us

.preheader1153.us.us.us.us:                       ; preds = %.lr.ph1333.split.us.us.us.split.us
  %i.ale = add i32 %i.h, %indvars1689             ; 5 uses
  %i.alf = load i32, ptr %i.b, align 16, !tbaa !56 ; 2 uses
  %i.alg = icmp ugt i32 %i.ale, %i.alf
  %i.alh = add i32 %i.alf, %i.h
  %i.ali = zext i32 %i.alh to i64
  %i.alj = icmp samesign ult i64 %indvars.iv1687.a, %i.ali
  %or.cond1011.us.us.us.us = and i1 %i.alg, %i.alj
  br i1 %or.cond1011.us.us.us.us, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.preheader1153.us.us.us.us
  %i.alk = load i32, ptr %i.c, align 16, !tbaa !56 ; 2 uses
  %i.all = icmp ugt i32 %i.akw, %i.alk
  %i.alm = add i32 %i.alk, %i.h
  %i.aln = icmp ult i32 %.98941375.us.us, %i.alm
  %or.cond1014.us.us.us.us = and i1 %i.all, %i.aln
  br i1 %or.cond1014.us.us.us.us, label %._crit_edge1324.us.us.us.us, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.preheader1153.us.us.us.us
  br i1 %exitcond1681.not, label %._crit_edge1324.us.us.us.us.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.alo = load i32, ptr %i.ajz, align 4, !tbaa !56 ; 2 uses
  %i.alp = icmp ugt i32 %i.ale, %i.alo
  %i.alq = add i32 %i.alo, %i.h
  %i.alr = zext i32 %i.alq to i64
  %i.als = icmp samesign ult i64 %indvars.iv1687.a, %i.alr
  %or.cond1011.us.us.us.us.1 = and i1 %i.alp, %i.als
  br i1 %or.cond1011.us.us.us.us.1, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.alt = load i32, ptr %i.aka, align 4, !tbaa !56 ; 2 uses
  %i.alu = icmp ugt i32 %i.akw, %i.alt
  %i.alv = add i32 %i.alt, %i.h
  %i.alw = icmp ult i32 %.98941375.us.us, %i.alv
  %or.cond1014.us.us.us.us.1 = and i1 %i.alu, %i.alw
  br i1 %or.cond1014.us.us.us.us.1, label %._crit_edge1324.us.us.us.us, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  br i1 %exitcond1681.not.1, label %._crit_edge1324.us.us.us.us.thread, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.alx = load i32, ptr %i.akb, align 8, !tbaa !56 ; 2 uses
  %i.aly = icmp ugt i32 %i.ale, %i.alx
  %i.alz = add i32 %i.alx, %i.h
  %i.ama = zext i32 %i.alz to i64
  %i.amb = icmp samesign ult i64 %indvars.iv1687.a, %i.ama
  %or.cond1011.us.us.us.us.2 = and i1 %i.aly, %i.amb
  br i1 %or.cond1011.us.us.us.us.2, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.amc = load i32, ptr %i.akc, align 8, !tbaa !56 ; 2 uses
  %i.amd = icmp ugt i32 %i.akw, %i.amc
  %i.ame = add i32 %i.amc, %i.h
  %i.amf = icmp ult i32 %.98941375.us.us, %i.ame
  %or.cond1014.us.us.us.us.2 = and i1 %i.amd, %i.amf
  br i1 %or.cond1014.us.us.us.us.2, label %._crit_edge1324.us.us.us.us, label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  br i1 %exitcond1681.not.2, label %._crit_edge1324.us.us.us.us.thread, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.amg = load i32, ptr %i.akd, align 4, !tbaa !56 ; 2 uses
  %i.amh = icmp ugt i32 %i.ale, %i.amg
  %i.ami = add i32 %i.amg, %i.h
  %i.amj = zext i32 %i.ami to i64
  %i.amk = icmp samesign ult i64 %indvars.iv1687.a, %i.amj
  %or.cond1011.us.us.us.us.3 = and i1 %i.amh, %i.amk
  br i1 %or.cond1011.us.us.us.us.3, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.aml = load i32, ptr %i.ake, align 4, !tbaa !56 ; 2 uses
  %i.amm = icmp ugt i32 %i.akw, %i.aml
  %i.amn = add i32 %i.aml, %i.h
  %i.amo = icmp ult i32 %.98941375.us.us, %i.amn
  %or.cond1014.us.us.us.us.3 = and i1 %i.amm, %i.amo
  br i1 %or.cond1014.us.us.us.us.3, label %._crit_edge1324.us.us.us.us, label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  br i1 %exitcond1681.not.3, label %._crit_edge1324.us.us.us.us.thread, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.amp = load i32, ptr %i.akf, align 16, !tbaa !56 ; 2 uses
  %i.amq = icmp ugt i32 %i.ale, %i.amp
  %i.amr = add i32 %i.amp, %i.h
  %i.ams = zext i32 %i.amr to i64
  %i.amt = icmp samesign ult i64 %indvars.iv1687.a, %i.ams
  %or.cond1011.us.us.us.us.4 = and i1 %i.amq, %i.amt
  br i1 %or.cond1011.us.us.us.us.4, label %bb.by, label %._crit_edge1324.us.us.us.us.thread

bb.by:                                            ; preds = %bb.bx
  %i.amu = load i32, ptr %i.akg, align 16, !tbaa !56 ; 2 uses
  %i.amv = icmp ugt i32 %i.akw, %i.amu
  %i.amw = add i32 %i.amu, %i.h
  %i.amx = icmp ult i32 %.98941375.us.us, %i.amw
  %or.cond1014.us.us.us.us.4 = and i1 %i.amv, %i.amx
  br i1 %or.cond1014.us.us.us.us.4, label %._crit_edge1324.us.us.us.us, label %._crit_edge1324.us.us.us.us.thread

._crit_edge1324.us.us.us.us.thread:               ; preds = %bb.bn, %bb.bq, %bb.bt, %bb.bw, %bb.by, %bb.bx
  store i32 %indvars1689, ptr %i.akr, align 4, !tbaa !56
  store i32 %.98941375.us.us, ptr %i.aks, align 4, !tbaa !56
  br label %._crit_edge1324.us.us.us.us

._crit_edge1324.us.us.us.us:                      ; preds = %bb.bm, %bb.bp, %bb.bs, %bb.bv, %bb.by, %._crit_edge1324.us.us.us.us.thread, %.lr.ph1333.split.us.us.us.split.us
  %i.amy = phi i32 [ %i.aky, %.lr.ph1333.split.us.us.us.split.us ], [ %i.alc, %._crit_edge1324.us.us.us.us.thread ], [ %i.aky, %bb.by ], [ %i.aky, %bb.bv ], [ %i.aky, %bb.bs ], [ %i.aky, %bb.bp ], [ %i.aky, %bb.bm ] ; 3 uses
  %i.amz = icmp ult i32 %i.alc, %i.akx
  br i1 %i.amz, label %.preheader1152.us.us.us.us, label %bb.co

.preheader1152.us.us.us.us:                       ; preds = %._crit_edge1324.us.us.us.us
  %i.ana = add i32 %i.h, %indvars1689             ; 5 uses
  %i.anb = load i32, ptr %i.e, align 16, !tbaa !56 ; 2 uses
  %i.anc = icmp ugt i32 %i.ana, %i.anb
  %i.and = add i32 %i.anb, %i.h
  %i.ane = zext i32 %i.and to i64
  %i.anf = icmp samesign ult i64 %indvars.iv1687.a, %i.ane
  %or.cond1017.us.us.us.us = and i1 %i.anc, %i.anf
  br i1 %or.cond1017.us.us.us.us, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %.preheader1152.us.us.us.us
  %i.ang = load i32, ptr %i.f, align 16, !tbaa !56 ; 2 uses
  %i.anh = icmp ugt i32 %i.akw, %i.ang
  %i.ani = add i32 %i.ang, %i.h
  %i.anj = icmp ult i32 %.98941375.us.us, %i.ani
  %or.cond1020.us.us.us.us = and i1 %i.anh, %i.anj ; 2 uses
  %brmerge138 = or i1 %or.cond1020.us.us.us.us, %exitcond1686.not
  %.mux139 = select i1 %or.cond1020.us.us.us.us, i64 0, i64 %indvars.iv1748
  br i1 %brmerge138, label %._crit_edge1330.us.us.us.us, label %bb.cb

bb.ca:                                            ; preds = %.preheader1152.us.us.us.us
  br i1 %exitcond1686.not, label %._crit_edge1330.us.us.us.us, label %bb.cb

bb.cb:                                            ; preds = %bb.bz, %bb.ca
  %i.ank = load i32, ptr %i.akh, align 4, !tbaa !56 ; 2 uses
  %i.anl = icmp ugt i32 %i.ana, %i.ank
  %i.anm = add i32 %i.ank, %i.h
  %i.ann = zext i32 %i.anm to i64
  %i.ano = icmp samesign ult i64 %indvars.iv1687.a, %i.ann
  %or.cond1017.us.us.us.us.1 = and i1 %i.anl, %i.ano
  br i1 %or.cond1017.us.us.us.us.1, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.anp = load i32, ptr %i.aki, align 4, !tbaa !56 ; 2 uses
  %i.anq = icmp ugt i32 %i.akw, %i.anp
  %i.anr = add i32 %i.anp, %i.h
  %i.ans = icmp ult i32 %.98941375.us.us, %i.anr
  %or.cond1020.us.us.us.us.1 = and i1 %i.anq, %i.ans ; 2 uses
  %brmerge140 = or i1 %or.cond1020.us.us.us.us.1, %exitcond1686.not.1
  %.mux141 = select i1 %or.cond1020.us.us.us.us.1, i64 1, i64 %indvars.iv1748
  br i1 %brmerge140, label %._crit_edge1330.us.us.us.us, label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  br i1 %exitcond1686.not.1, label %._crit_edge1330.us.us.us.us, label %bb.ce

bb.ce:                                            ; preds = %bb.cc, %bb.cd
  %i.ant = load i32, ptr %i.akj, align 8, !tbaa !56 ; 2 uses
  %i.anu = icmp ugt i32 %i.ana, %i.ant
  %i.anv = add i32 %i.ant, %i.h
  %i.anw = zext i32 %i.anv to i64
  %i.anx = icmp samesign ult i64 %indvars.iv1687.a, %i.anw
  %or.cond1017.us.us.us.us.2 = and i1 %i.anu, %i.anx
  br i1 %or.cond1017.us.us.us.us.2, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.any = load i32, ptr %i.akk, align 8, !tbaa !56 ; 2 uses
  %i.anz = icmp ugt i32 %i.akw, %i.any
  %i.aoa = add i32 %i.any, %i.h
  %i.aob = icmp ult i32 %.98941375.us.us, %i.aoa
  %or.cond1020.us.us.us.us.2 = and i1 %i.anz, %i.aob ; 2 uses
  %brmerge142 = or i1 %or.cond1020.us.us.us.us.2, %exitcond1686.not.2
  %.mux143 = select i1 %or.cond1020.us.us.us.us.2, i64 2, i64 %indvars.iv1748
  br i1 %brmerge142, label %._crit_edge1330.us.us.us.us, label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  br i1 %exitcond1686.not.2, label %._crit_edge1330.us.us.us.us, label %bb.ch

bb.ch:                                            ; preds = %bb.cf, %bb.cg
  %i.aoc = load i32, ptr %i.akl, align 4, !tbaa !56 ; 2 uses
  %i.aod = icmp ugt i32 %i.ana, %i.aoc
  %i.aoe = add i32 %i.aoc, %i.h
  %i.aof = zext i32 %i.aoe to i64
  %i.aog = icmp samesign ult i64 %indvars.iv1687.a, %i.aof
  %or.cond1017.us.us.us.us.3 = and i1 %i.aod, %i.aog
  br i1 %or.cond1017.us.us.us.us.3, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.aoh = load i32, ptr %i.akm, align 4, !tbaa !56 ; 2 uses
  %i.aoi = icmp ugt i32 %i.akw, %i.aoh
  %i.aoj = add i32 %i.aoh, %i.h
  %i.aok = icmp ult i32 %.98941375.us.us, %i.aoj
  %or.cond1020.us.us.us.us.3 = and i1 %i.aoi, %i.aok ; 2 uses
  %brmerge144 = or i1 %or.cond1020.us.us.us.us.3, %exitcond1686.not.3
  %.mux145 = select i1 %or.cond1020.us.us.us.us.3, i64 3, i64 %indvars.iv1748
  br i1 %brmerge144, label %._crit_edge1330.us.us.us.us, label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  br i1 %exitcond1686.not.3, label %._crit_edge1330.us.us.us.us, label %bb.ck

bb.ck:                                            ; preds = %bb.ci, %bb.cj
  %i.aol = load i32, ptr %i.akn, align 16, !tbaa !56 ; 2 uses
  %i.aom = icmp ugt i32 %i.ana, %i.aol
  %i.aon = add i32 %i.aol, %i.h
  %i.aoo = zext i32 %i.aon to i64
  %i.aop = icmp samesign ult i64 %indvars.iv1687.a, %i.aoo
  %or.cond1017.us.us.us.us.4 = and i1 %i.aom, %i.aop
  br i1 %or.cond1017.us.us.us.us.4, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.aoq = load i32, ptr %i.ako, align 16, !tbaa !56 ; 2 uses
  %i.aor = icmp ugt i32 %i.akw, %i.aoq
  %i.aos = add i32 %i.aoq, %i.h
  %i.aot = icmp ult i32 %.98941375.us.us, %i.aos
  %or.cond1020.us.us.us.us.4 = and i1 %i.aor, %i.aot
  br i1 %or.cond1020.us.us.us.us.4, label %._crit_edge1330.us.us.us.us, label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  br label %._crit_edge1330.us.us.us.us

._crit_edge1330.us.us.us.us:                      ; preds = %bb.ci, %bb.cf, %bb.cc, %bb.bz, %bb.cm, %bb.cl, %bb.cj, %bb.cg, %bb.cd, %bb.ca
  %.5911.lcssa.us.us.us.us.in = phi i64 [ %indvars.iv1748, %bb.ca ], [ %.mux139, %bb.bz ], [ %.mux141, %bb.cc ], [ %indvars.iv1748, %bb.cd ], [ %.mux143, %bb.cf ], [ %indvars.iv1748, %bb.cg ], [ %.mux145, %bb.ci ], [ %indvars.iv1748, %bb.cj ], [ 4, %bb.cl ], [ %indvars.iv1748, %bb.cm ]
  %i.aou = and i64 %.5911.lcssa.us.us.us.us.in, 4294967295
  %i.aov = icmp eq i64 %i.aou, %indvars.iv1748
  br i1 %i.aov, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %._crit_edge1330.us.us.us.us
  store i32 %indvars1689, ptr %i.akt, align 4, !tbaa !56
  store i32 %.98941375.us.us, ptr %i.aku, align 4, !tbaa !56
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %._crit_edge1330.us.us.us.us, %._crit_edge1324.us.us.us.us
  %i.aow = phi i32 [ %i.akx, %._crit_edge1330.us.us.us.us ], [ %i.alc, %bb.cn ], [ %i.akx, %._crit_edge1324.us.us.us.us ] ; 3 uses
  %indvars.iv.next1688.a = add nuw nsw i64 %indvars.iv1687.a, 1 ; 2 uses
  %exitcond1692.not = icmp eq i64 %indvars.iv.next1688.a, %wide.trip.count1691
  br i1 %exitcond1692.not, label %._crit_edge1334.split.us.us.us, label %.lr.ph1333.split.us.us.us.split.us

._crit_edge1334.split.us.us.us:                   ; preds = %bb.co
  %i.aox = add nuw nsw i32 %.98941375.us.us, 1    ; 2 uses
  %exitcond1705.not = icmp eq i32 %i.aox, %umax
  br i1 %exitcond1705.not, label %._crit_edge1380.split.us, label %.lr.ph1333.split.us.us.us.split.us.preheader

.preheader1154.us.us1406.us:                      ; preds = %.preheader1154.lr.ph.split.us, %._crit_edge1334.split.split.split.us.us.us.split.us.us
  %.us-phi1339.us1395.us1407.us = phi i32 [ %i.apj, %._crit_edge1334.split.split.split.us.us.us.split.us.us ], [ -1, %.preheader1154.lr.ph.split.us ]
  %.us-phi1340.us1393.us1408.us = phi i32 [ %i.aph, %._crit_edge1334.split.split.split.us.us.us.split.us.us ], [ 0, %.preheader1154.lr.ph.split.us ]
  %.98941375.us.us1409.us = phi i32 [ %i.apk, %._crit_edge1334.split.split.split.us.us.us.split.us.us ], [ 0, %.preheader1154.lr.ph.split.us ] ; 4 uses
  %i.aoy = mul nuw nsw i32 %.98941375.us.us1409.us, %0
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cr, %.preheader1154.us.us1406.us
  %indvars.iv1741 = phi i64 [ %indvars.iv.next1742, %bb.cr ], [ 0, %.preheader1154.us.us1406.us ] ; 2 uses
  %i.aoz = phi i32 [ %i.apj, %bb.cr ], [ %.us-phi1339.us1395.us1407.us, %.preheader1154.us.us1406.us ] ; 2 uses
  %i.apa = phi i32 [ %i.aph, %bb.cr ], [ %.us-phi1340.us1393.us1408.us, %.preheader1154.us.us1406.us ] ; 2 uses
  %i.apb = trunc nuw i64 %indvars.iv1741 to i32   ; 3 uses
  %i.apc = add i32 %i.aoy, %i.apb
  %i.apd = zext i32 %i.apc to i64
  %i.ape = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.apd
  %i.apf = load i32, ptr %i.ape, align 4, !tbaa !56 ; 4 uses
  %i.apg = icmp ugt i32 %i.apf, %i.apa
  br i1 %i.apg, label %.preheader1153.us1360.us.us.us.us, label %bb.cq

.preheader1153.us1360.us.us.us.us:                ; preds = %bb.cp
  store i32 %i.apb, ptr %i.akr, align 16, !tbaa !56
  store i32 %.98941375.us.us1409.us, ptr %i.aks, align 16, !tbaa !56
  br label %bb.cq

bb.cq:                                            ; preds = %.preheader1153.us1360.us.us.us.us, %bb.cp
  %i.aph = phi i32 [ %i.apa, %bb.cp ], [ %i.apf, %.preheader1153.us1360.us.us.us.us ] ; 3 uses
  %i.api = icmp ult i32 %i.apf, %i.aoz
  br i1 %i.api, label %.preheader1152.us1361.us.us.us.us, label %bb.cr

.preheader1152.us1361.us.us.us.us:                ; preds = %bb.cq
  store i32 %i.apb, ptr %i.akt, align 16, !tbaa !56
  store i32 %.98941375.us.us1409.us, ptr %i.aku, align 16, !tbaa !56
  br label %bb.cr

bb.cr:                                            ; preds = %.preheader1152.us1361.us.us.us.us, %bb.cq
  %i.apj = phi i32 [ %i.aoz, %bb.cq ], [ %i.apf, %.preheader1152.us1361.us.us.us.us ] ; 3 uses
  %indvars.iv.next1742 = add nuw nsw i64 %indvars.iv1741, 1 ; 2 uses
  %exitcond1745.not = icmp eq i64 %indvars.iv.next1742, %wide.trip.count1744
  br i1 %exitcond1745.not, label %._crit_edge1334.split.split.split.us.us.us.split.us.us, label %bb.cp

._crit_edge1334.split.split.split.us.us.us.split.us.us: ; preds = %bb.cr
  %i.apk = add nuw nsw i32 %.98941375.us.us1409.us, 1 ; 2 uses
  %exitcond1747.not = icmp eq i32 %i.apk, %umax
  br i1 %exitcond1747.not, label %._crit_edge1380.split.us, label %.preheader1154.us.us1406.us

._crit_edge1380.split.us:                         ; preds = %._crit_edge1334.split.us.us.us, %._crit_edge1334.split.split.split.us.us.us.split.us.us
  %.us-phi1396 = phi i32 [ %i.apj, %._crit_edge1334.split.split.split.us.us.us.split.us.us ], [ %i.aow, %._crit_edge1334.split.us.us.us ]
  %.us-phi1397 = phi i32 [ %i.aph, %._crit_edge1334.split.split.split.us.us.us.split.us.us ], [ %i.amy, %._crit_edge1334.split.us.us.us ]
  store i32 %.us-phi1397, ptr %i.akp, align 4
  store i32 %.us-phi1396, ptr %i.akq, align 4
  br label %._crit_edge1380

._crit_edge1380:                                  ; preds = %.preheader1154.lr.ph, %._crit_edge1380.split.us
  %indvars.iv.next1749 = add nuw nsw i64 %indvars.iv1748, 1 ; 2 uses
  %exitcond1752.not = icmp eq i64 %indvars.iv.next1749, %.0905
  br i1 %exitcond1752.not, label %bb.cs, label %.preheader1154.lr.ph

bb.cs:                                            ; preds = %._crit_edge1380
  tail call void @free(ptr noundef %i.l) #13
  %i.apl = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %2, i64 164 ; 2 uses
  %i.apn = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %2, i64 188 ; 3 uses
  %i.app = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 3 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %2, i64 212 ; 2 uses
  %i.apr = load i32, ptr %i.a, align 16, !tbaa !56
  %i.aps = udiv i32 %i.apr, %i.hr                 ; 2 uses
  store i32 %i.aps, ptr %i.apl, align 8, !tbaa !56
  %i.apt = load i32, ptr %i.b, align 16, !tbaa !56 ; 2 uses
  store i32 %i.apt, ptr %i.apm, align 4, !tbaa !56
  %i.apu = load i32, ptr %i.c, align 16, !tbaa !56 ; 2 uses
  store i32 %i.apu, ptr %i.apn, align 8, !tbaa !56
  %i.apv = load i32, ptr %i.d, align 16, !tbaa !56
  %i.apw = udiv i32 %i.apv, %i.hr
  store i32 %i.apw, ptr %i.apo, align 4, !tbaa !56
  %i.apx = load i32, ptr %i.e, align 16, !tbaa !56
  store i32 %i.apx, ptr %i.app, align 8, !tbaa !56
  %i.apy = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.apz = load i32, ptr %i.apy, align 4, !tbaa !56
  %i.aqa = udiv i32 %i.apz, %i.hr                 ; 2 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %2, i64 156 ; 2 uses
  store i32 %i.aqa, ptr %i.aqb, align 4, !tbaa !56
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aqd = load i32, ptr %i.aqc, align 4, !tbaa !56 ; 2 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  store i32 %i.aqd, ptr %i.aqe, align 8, !tbaa !56
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.aqg = load i32, ptr %i.aqf, align 4, !tbaa !56 ; 2 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %2, i64 180 ; 2 uses
  store i32 %i.aqg, ptr %i.aqh, align 4, !tbaa !56
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.aqj = load i32, ptr %i.aqi, align 4, !tbaa !56
  %i.aqk = udiv i32 %i.aqj, %i.hr
  %i.aql = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  store i32 %i.aqk, ptr %i.aql, align 8, !tbaa !56
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.aqn = getelementptr inbounds nuw i8, ptr %2, i64 204 ; 2 uses
  %i.aqo = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aqq = load i32, ptr %i.aqp, align 8, !tbaa !56
  %i.aqr = udiv i32 %i.aqq, %i.hr                 ; 2 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  store i32 %i.aqr, ptr %i.aqs, align 8, !tbaa !56
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aqu = load i32, ptr %i.aqt, align 8, !tbaa !56 ; 2 uses
  %i.aqv = getelementptr inbounds nuw i8, ptr %2, i64 172 ; 2 uses
  store i32 %i.aqu, ptr %i.aqv, align 4, !tbaa !56
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aqx = load i32, ptr %i.aqw, align 8, !tbaa !56 ; 2 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  store i32 %i.aqx, ptr %i.aqy, align 8, !tbaa !56
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ara = load i32, ptr %i.aqz, align 8, !tbaa !56
  %i.arb = udiv i32 %i.ara, %i.hr
  %i.arc = getelementptr inbounds nuw i8, ptr %2, i64 196 ; 2 uses
  store i32 %i.arb, ptr %i.arc, align 4, !tbaa !56
  %i.ard = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.are = load <2 x i32>, ptr %i.f, align 16, !tbaa !56
  %i.arf = load <2 x i32>, ptr %i.aqm, align 4, !tbaa !56
  %i.arg = shufflevector <2 x i32> %i.arf, <2 x i32> %i.are, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.arg, ptr %i.aqn, align 4, !tbaa !56
  %i.arh = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ari = load i32, ptr %i.arh, align 8, !tbaa !56
  %i.arj = getelementptr inbounds nuw i8, ptr %2, i64 220 ; 2 uses
  store i32 %i.ari, ptr %i.arj, align 4, !tbaa !56
  br i1 %i.jc, label %.loopexit, label %.preheader1151

.preheader1151:                                   ; preds = %bb.cs
  %i.ark = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.arl = load i32, ptr %i.ark, align 4, !tbaa !56
  %i.arm = udiv i32 %i.arl, %i.hr
  store i32 %i.arm, ptr %i.ai, align 8, !tbaa !56
  %i.arn = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aro = load i32, ptr %i.arn, align 4, !tbaa !56 ; 2 uses
  store i32 %i.aro, ptr %i.aj, align 4, !tbaa !56
  %i.arp = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.arq = load i32, ptr %i.arp, align 4, !tbaa !56 ; 2 uses
  store i32 %i.arq, ptr %i.ak, align 8, !tbaa !56
  %i.arr = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.ars = load i32, ptr %i.arr, align 4, !tbaa !56
  %i.art = udiv i32 %i.ars, %i.hr
  store i32 %i.art, ptr %i.ae, align 4, !tbaa !56
  store i32 %i.aro, ptr %i.al, align 8, !tbaa !56
  store i32 %i.arq, ptr %i.am, align 4, !tbaa !56
  %i.aru = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.arv = load i32, ptr %i.aru, align 16, !tbaa !56
  %i.arw = udiv i32 %i.arv, %i.hr
  store i32 %i.arw, ptr %i.ia, align 4, !tbaa !56
  %i.arx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ary = load i32, ptr %i.arx, align 16, !tbaa !56 ; 2 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.ary, ptr %i.arz, align 8, !tbaa !56
  %i.asa = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.asb = load i32, ptr %i.asa, align 16, !tbaa !56 ; 2 uses
  %i.asc = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 %i.asb, ptr %i.asc, align 4, !tbaa !56
  %i.asd = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ase = load i32, ptr %i.asd, align 16, !tbaa !56
  %i.asf = udiv i32 %i.ase, %i.hr
  store i32 %i.asf, ptr %i.id, align 8, !tbaa !56
  %i.asg = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i32 %i.ary, ptr %i.asg, align 4, !tbaa !56
  %i.ash = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i32 %i.asb, ptr %i.ash, align 8, !tbaa !56
  %i.asi = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.asj = load i32, ptr %i.asi, align 4, !tbaa !56
  %i.ask = udiv i32 %i.asj, %i.hr
  store i32 %i.ask, ptr %i.im, align 8, !tbaa !56
  %i.asl = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.asm = load i32, ptr %i.asl, align 4, !tbaa !56 ; 2 uses
  %i.asn = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %i.asm, ptr %i.asn, align 4, !tbaa !56
  %i.aso = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.asp = load i32, ptr %i.aso, align 4, !tbaa !56 ; 2 uses
  %i.asq = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.asp, ptr %i.asq, align 8, !tbaa !56
  %i.asr = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.ass = load i32, ptr %i.asr, align 4, !tbaa !56
  %i.ast = udiv i32 %i.ass, %i.hr
  store i32 %i.ast, ptr %i.ip, align 4, !tbaa !56
  %i.asu = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 %i.asm, ptr %i.asu, align 8, !tbaa !56
  %i.asv = getelementptr inbounds nuw i8, ptr %2, i64 76
  store i32 %i.asp, ptr %i.asv, align 4, !tbaa !56
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader1151, %bb.cs
  %i.asw = phi ptr [ @.str.45, %bb.cs ], [ @.str.44, %.preheader1151 ]
  %i.asx = phi ptr [ @.str.43, %bb.cs ], [ @.str.42, %.preheader1151 ]
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.39, i32 noundef %i.aps, i32 noundef %i.apt, i32 noundef %i.apu, i32 noundef %i.aqa, i32 noundef %i.aqd, i32 noundef %i.aqg, i32 noundef %i.aqr, i32 noundef %i.aqu, i32 noundef %i.aqx) #13
  %i.asy = load i32, ptr %i.apo, align 4, !tbaa !56
  %i.asz = load i32, ptr %i.app, align 8, !tbaa !56
  %i.ata = load i32, ptr %i.apq, align 4, !tbaa !56
  %i.atb = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.atc = load i32, ptr %i.atb, align 8, !tbaa !56
  %i.atd = getelementptr inbounds nuw i8, ptr %2, i64 204
  %i.ate = load i32, ptr %i.atd, align 4, !tbaa !56
  %i.atf = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.atg = load i32, ptr %i.atf, align 8, !tbaa !56
  %i.ath = getelementptr inbounds nuw i8, ptr %2, i64 196
  %i.ati = load i32, ptr %i.ath, align 4, !tbaa !56
  %i.atj = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.atk = load i32, ptr %i.atj, align 8, !tbaa !56
  %i.atl = getelementptr inbounds nuw i8, ptr %2, i64 220
  %i.atm = load i32, ptr %i.atl, align 4, !tbaa !56
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.40, i32 noundef %i.asy, i32 noundef %i.asz, i32 noundef %i.ata, i32 noundef %i.atc, i32 noundef %i.ate, i32 noundef %i.atg, i32 noundef %i.ati, i32 noundef %i.atk, i32 noundef %i.atm) #13
  %i.atn = load i32, ptr %i.ai, align 8, !tbaa !56
  %i.ato = load i32, ptr %i.aj, align 4, !tbaa !56
  %i.atp = load i32, ptr %i.ak, align 8, !tbaa !56
  %i.atq = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.atr = load i32, ptr %i.atq, align 4, !tbaa !56
  %i.ats = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.att = load i32, ptr %i.ats, align 8, !tbaa !56
  %i.atu = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.atv = load i32, ptr %i.atu, align 4, !tbaa !56
  %i.atw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.atx = load i32, ptr %i.atw, align 8, !tbaa !56
  %i.aty = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.atz = load i32, ptr %i.aty, align 4, !tbaa !56
  %i.aua = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aub = load i32, ptr %i.aua, align 8, !tbaa !56
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.41, ptr noundef nonnull %i.asx, i32 noundef %i.atn, i32 noundef %i.ato, i32 noundef %i.atp, i32 noundef %i.atr, i32 noundef %i.att, i32 noundef %i.atv, i32 noundef %i.atx, i32 noundef %i.atz, i32 noundef %i.aub) #13
  %i.auc = load i32, ptr %i.ae, align 4, !tbaa !56
  %i.aud = load i32, ptr %i.al, align 8, !tbaa !56
  %i.aue = load i32, ptr %i.am, align 4, !tbaa !56
  %i.auf = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aug = load i32, ptr %i.auf, align 8, !tbaa !56
  %i.auh = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.aui = load i32, ptr %i.auh, align 4, !tbaa !56
  %i.auj = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.auk = load i32, ptr %i.auj, align 8, !tbaa !56
  %i.aul = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.aum = load i32, ptr %i.aul, align 4, !tbaa !56
  %i.aun = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.auo = load i32, ptr %i.aun, align 8, !tbaa !56
  %i.aup = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.auq = load i32, ptr %i.aup, align 4, !tbaa !56
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.41, ptr noundef nonnull %i.asw, i32 noundef %i.auc, i32 noundef %i.aud, i32 noundef %i.aue, i32 noundef %i.aug, i32 noundef %i.aui, i32 noundef %i.auk, i32 noundef %i.aum, i32 noundef %i.auo, i32 noundef %i.auq) #13
  %i.aur = load i32, ptr %i.an, align 8, !tbaa !56
  %i.aus = load i32, ptr %i.ao, align 4, !tbaa !56
  %i.aut = load i32, ptr %i.ap, align 8, !tbaa !56
  %i.auu = getelementptr inbounds nuw i8, ptr %2, i64 84
end_hunk_1
