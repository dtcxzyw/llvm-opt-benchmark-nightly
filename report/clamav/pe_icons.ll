Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pe_icons?download=true
inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 27
begin_hunk_0_@cli_icongroupset_add:bb.a
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
  %i.h = lshr i32 %0, 2                           ; 57 uses
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
  %i.o = sub nsw i32 %0, %i.h                     ; 4 uses
  %i.p = add nsw i32 %i.h, -1                     ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 236 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 228 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 232 ; 4 uses
  %i.u = zext nneg i32 %i.p to i64
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 10 uses
  %wide.trip.count1528 = zext nneg i32 %i.h to i64
  %wide.trip.count1538 = zext nneg i32 %i.h to i64 ; 2 uses
  br label %.preheader1187

.preheader1187:                                   ; preds = %bb.c, %bb.t
  %.08851213 = phi i32 [ 0, %bb.c ], [ %i.hy, %bb.t ] ; 8 uses
  %i.v = icmp eq i32 %.08851213, 0
  %i.w = mul i32 %.08851213, %0                   ; 2 uses
  %i.x = add i32 %.08851213, %0
  %i.y = mul i32 %i.x, %0                         ; 2 uses
  %i.z = add i32 %i.w, -1
  %i.aa = add i32 %i.y, -1
  %i.ab = add i32 %.08851213, -1                  ; 2 uses
  %i.ac = mul i32 %i.ab, %0                       ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ad
  %i.af = add i32 %i.ab, %0
  %i.ag = mul i32 %i.af, %0
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ah
  %i.aj = add i32 %i.p, %.08851213
  %i.ak = mul i32 %i.aj, %0
  br label %bb.d

.preheader1181:                                   ; preds = %bb.t
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 116 ; 5 uses
  %i.an = xor i32 %i.h, -1
  %i.ao = add nsw i32 %0, %i.an                   ; 3 uses
  %.not1471 = icmp eq i32 %i.ao, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 140 ; 4 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.o, i32 1) ; 3 uses
  %wide.trip.count1563 = zext i32 %i.ao to i64
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 132
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 144
  br label %.preheader1180.lr.ph

bb.d:                                             ; preds = %.preheader1187, %.loopexit1184
  %.08761211 = phi i32 [ 0, %.preheader1187 ], [ %i.hx, %.loopexit1184 ] ; 8 uses
  %i.bh = or i32 %.08761211, %.08851213
  %or.cond = icmp eq i32 %i.bh, 0
  br i1 %or.cond, label %.preheader1182.us, label %bb.i

.preheader1182.us:                                ; preds = %bb.d, %._crit_edge.us
  %indvars.iv1535 = phi i64 [ %indvars.iv.next1536, %._crit_edge.us ], [ 0, %bb.d ] ; 2 uses
  %.08951207.us = phi i32 [ %i.by, %._crit_edge.us ], [ 0, %bb.d ]
  %.09001206.us = phi i32 [ %i.bx, %._crit_edge.us ], [ 0, %bb.d ]
  %i.bi = mul nuw nsw i64 %indvars.iv1535, %i.i
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bi
  br label %bb.e

bb.e:                                             ; preds = %.preheader1182.us, %bb.h
  %indvars.iv1530 = phi i64 [ 0, %.preheader1182.us ], [ %indvars.iv.next1531, %bb.h ] ; 2 uses
  %.18961201.us = phi i32 [ %.08951207.us, %.preheader1182.us ], [ %i.by, %bb.h ]
  %.19011200.us = phi i32 [ %.09001206.us, %.preheader1182.us ], [ %i.bx, %bb.h ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv1530
  %i.bj = load i32, ptr %gep, align 4, !tbaa !56  ; 3 uses
  %i.bk = lshr i32 %i.bj, 16
  %i.bl = lshr i32 %i.bj, 8
  %i.bm = and i32 %i.bk, 255                      ; 4 uses
  %i.bn = and i32 %i.bl, 255                      ; 4 uses
  %i.bo = and i32 %i.bj, 255                      ; 4 uses
  %..i.us = tail call i32 @llvm.umin.i32(i32 %i.bn, i32 %i.bo)
  %spec.select.i.us = tail call i32 @llvm.umin.i32(i32 %i.bm, i32 %..i.us) ; 2 uses
  %.44.i.us = tail call i32 @llvm.umax.i32(i32 %i.bn, i32 %i.bo)
  %i.bp = tail call i32 @llvm.umax.i32(i32 %i.bm, i32 %.44.i.us) ; 6 uses
  %i.bq = sub nuw nsw i32 %i.bp, %spec.select.i.us ; 2 uses
  %.not.i.us = icmp eq i32 %i.bp, %spec.select.i.us
  br i1 %.not.i.us, label %hsv.exit.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.br = trunc nuw nsw i32 %i.bq to i16
  %.lhs.trunc1102.us = mul nuw i16 %i.br, 255
  %.rhs.trunc1103.us = trunc nuw nsw i32 %i.bp to i16
  %i.bs = udiv i16 %.lhs.trunc1102.us, %.rhs.trunc1103.us
  %.zext1104.us = zext i16 %i.bs to i32
  br label %hsv.exit.us

hsv.exit.us:                                      ; preds = %bb.f, %bb.e
  %storemerge.i.us = phi i32 [ %.zext1104.us, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %i.bt = mul nuw nsw i32 %storemerge.i.us, %i.bp
  %i.bu = mul i32 %i.bt, %storemerge.i.us
  %i.bv = uitofp i32 %i.bu to double
  %sqrt.us = tail call double @llvm.sqrt.f64(double %i.bv)
  %i.bw = fptoui double %sqrt.us to i32
  %i.bx = add i32 %.19011200.us, %i.bw            ; 3 uses
  %i.by = add i32 %i.bp, %.18961201.us            ; 3 uses
  %i.bz = icmp samesign ugt i32 %storemerge.i.us, 85
  %i.ca = icmp samesign ugt i32 %i.bp, 85
  %or.cond3.us = and i1 %i.ca, %i.bz
  br i1 %or.cond3.us, label %bb.g, label %bb.h

bb.g:                                             ; preds = %hsv.exit.us
  %i.cb = sub nsw i32 %i.bn, %i.bo
  %.rhs.trunc.us = trunc nuw nsw i32 %i.bq to i16 ; 2 uses
  %i.cc = sub nsw i32 %i.bm, %i.bo
  %i.cd = sub nsw i32 %i.bm, %i.bn
  %i.ce = tail call i32 @llvm.abs.i32(i32 %i.cd, i1 true)
  %i.cf = trunc nuw nsw i32 %i.ce to i16
  %.lhs.trunc1099.us = mul nuw nsw i16 %i.cf, 100
  %i.cg = udiv i16 %.lhs.trunc1099.us, %.rhs.trunc.us
  %.zext1101.us = zext nneg i16 %i.cg to i32
  %i.ch = tail call i32 @llvm.abs.i32(i32 %i.cc, i1 true)
  %i.ci = tail call i32 @llvm.abs.i32(i32 %i.cb, i1 true)
  %i.cj = trunc nsw i32 %i.ch to i16
  %i.ck = trunc nsw i32 %i.ci to i16
  %4 = insertelement <2 x i16> poison, i16 %i.ck, i64 0
  %5 = insertelement <2 x i16> %4, i16 %i.cj, i64 1
  %6 = mul nuw nsw <2 x i16> %5, splat (i16 100)
  %7 = insertelement <2 x i16> poison, i16 %.rhs.trunc.us, i64 0
  %8 = shufflevector <2 x i16> %7, <2 x i16> poison, <2 x i32> zeroinitializer
  %9 = udiv <2 x i16> %6, %8
  %i.cl = load <4 x i32>, ptr %i.r, align 8, !tbaa !56
  %i.cm = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, i32 %.zext1101.us, i64 2
  %10 = shufflevector <2 x i16> %9, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cn = zext <4 x i16> %10 to <4 x i32>
  %i.co = shufflevector <4 x i32> %i.cn, <4 x i32> %i.cm, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cp = sub <4 x i32> %i.cl, %i.co
  %i.cq = add <4 x i32> %i.cp, <i32 100, i32 100, i32 100, i32 1>
  store <4 x i32> %i.cq, ptr %i.r, align 8, !tbaa !56
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
  %.not975 = icmp eq i32 %.08761211, 0
  br i1 %.not975, label %.lr.ph1196.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.cr = add i32 %i.aa, %.08761211
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !56
  %i.cv = add i32 %i.z, %.08761211
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !56
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %.28971191 = phi i32 [ %i.cu, %.lr.ph.preheader ], [ %i.ep, %bb.o ]
  %.29021190 = phi i32 [ %i.cy, %.lr.ph.preheader ], [ %i.eo, %bb.o ]
  %i.cz = trunc nuw nsw i64 %indvars.iv to i32
  %i.da = add i32 %.08851213, %i.cz
  %i.db = mul i32 %i.da, %0
  %i.dc = add i32 %i.db, %.08761211               ; 2 uses
  %i.dd = add i32 %i.dc, -1
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !56 ; 3 uses
  %i.dh = lshr i32 %i.dg, 16
  %i.di = and i32 %i.dh, 255                      ; 2 uses
  %i.dj = lshr i32 %i.dg, 8
  %i.dk = and i32 %i.dj, 255                      ; 2 uses
  %i.dl = and i32 %i.dg, 255                      ; 2 uses
  %..i1021 = tail call i32 @llvm.umin.i32(i32 %i.dk, i32 %i.dl)
  %spec.select.i1022 = tail call i32 @llvm.umin.i32(i32 %i.di, i32 %..i1021) ; 2 uses
  %.44.i1023 = tail call i32 @llvm.umax.i32(i32 %i.dk, i32 %i.dl)
  %i.dm = tail call i32 @llvm.umax.i32(i32 %i.di, i32 %.44.i1023) ; 5 uses
  %.not.i1024 = icmp eq i32 %i.dm, %spec.select.i1022
  br i1 %.not.i1024, label %hsv.exit1026, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.dn = sub nuw nsw i32 %i.dm, %spec.select.i1022
  %i.do = trunc nuw nsw i32 %i.dn to i16
  %.lhs.trunc1132 = mul nuw i16 %i.do, 255
  %.rhs.trunc1133 = trunc nuw nsw i32 %i.dm to i16
  %i.dp = udiv i16 %.lhs.trunc1132, %.rhs.trunc1133
  %.zext1134 = zext i16 %i.dp to i32              ; 2 uses
  %i.dq = mul nuw nsw i32 %i.dm, %.zext1134
  %i.dr = mul i32 %i.dq, %.zext1134
  %i.ds = uitofp i32 %i.dr to double
  %i.dt = tail call double @llvm.sqrt.f64(double %i.ds)
  %i.du = fptoui double %i.dt to i32
  br label %hsv.exit1026

hsv.exit1026:                                     ; preds = %.lr.ph, %bb.j
  %storemerge.i1025 = phi i32 [ %i.du, %bb.j ], [ 0, %.lr.ph ]
  %i.dv = sub i32 %.29021190, %storemerge.i1025
  %i.dw = sub i32 %.28971191, %i.dm
  %i.dx = add i32 %i.p, %i.dc
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !56 ; 3 uses
  %i.eb = lshr i32 %i.ea, 16
  %i.ec = lshr i32 %i.ea, 8
  %i.ed = and i32 %i.eb, 255                      ; 4 uses
  %i.ee = and i32 %i.ec, 255                      ; 4 uses
  %i.ef = and i32 %i.ea, 255                      ; 4 uses
  %..i1027 = tail call i32 @llvm.umin.i32(i32 %i.ee, i32 %i.ef)
  %spec.select.i1028 = tail call i32 @llvm.umin.i32(i32 %i.ed, i32 %..i1027) ; 2 uses
  %.44.i1029 = tail call i32 @llvm.umax.i32(i32 %i.ee, i32 %i.ef)
  %i.eg = tail call i32 @llvm.umax.i32(i32 %i.ed, i32 %.44.i1029) ; 7 uses
  %i.eh = sub nuw nsw i32 %i.eg, %spec.select.i1028 ; 2 uses
  %.not.i1030 = icmp eq i32 %i.eg, %spec.select.i1028
  br i1 %.not.i1030, label %hsv.exit1032, label %bb.k

bb.k:                                             ; preds = %hsv.exit1026
  %i.ei = trunc nuw nsw i32 %i.eh to i16
  %.lhs.trunc1129 = mul nuw i16 %i.ei, 255
  %.rhs.trunc1130 = trunc nuw nsw i32 %i.eg to i16
  %i.ej = udiv i16 %.lhs.trunc1129, %.rhs.trunc1130
  %.zext1131 = zext i16 %i.ej to i32
  br label %hsv.exit1032

hsv.exit1032:                                     ; preds = %hsv.exit1026, %bb.k
  %storemerge.i1031 = phi i32 [ %.zext1131, %bb.k ], [ 0, %hsv.exit1026 ] ; 4 uses
  %i.ek = mul nuw nsw i32 %storemerge.i1031, %i.eg
  %i.el = mul i32 %i.ek, %storemerge.i1031
  %i.em = uitofp i32 %i.el to double
  %sqrt1138 = tail call double @llvm.sqrt.f64(double %i.em)
  %i.en = fptoui double %sqrt1138 to i32
  %i.eo = add i32 %i.dv, %i.en                    ; 2 uses
  %i.ep = add i32 %i.dw, %i.eg                    ; 2 uses
  br i1 %i.v, label %bb.m, label %bb.l

bb.l:                                             ; preds = %hsv.exit1032
  %i.eq = icmp eq i64 %indvars.iv, %i.u
  %i.er = icmp samesign ugt i32 %storemerge.i1031, 85
  %or.cond5 = select i1 %i.eq, i1 %i.er, i1 false
  %i.es = icmp samesign ugt i32 %i.eg, 85
  %or.cond1135 = select i1 %or.cond5, i1 %i.es, i1 false
  br i1 %or.cond1135, label %bb.n, label %bb.o

bb.m:                                             ; preds = %hsv.exit1032
  %.old4 = icmp samesign ugt i32 %storemerge.i1031, 85
  %.old = icmp samesign ugt i32 %i.eg, 85
  %or.cond1136 = select i1 %.old4, i1 %.old, i1 false
  br i1 %or.cond1136, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.et = sub nsw i32 %i.ee, %i.ef
  %.rhs.trunc1121 = trunc nuw nsw i32 %i.eh to i16 ; 2 uses
  %i.eu = sub nsw i32 %i.ed, %i.ef
  %i.ev = sub nsw i32 %i.ed, %i.ee
  %i.ew = tail call i32 @llvm.abs.i32(i32 %i.ev, i1 true)
  %i.ex = trunc nuw nsw i32 %i.ew to i16
  %.lhs.trunc1126 = mul nuw nsw i16 %i.ex, 100
  %i.ey = udiv i16 %.lhs.trunc1126, %.rhs.trunc1121
  %.zext1128 = zext nneg i16 %i.ey to i32
  %i.ez = tail call i32 @llvm.abs.i32(i32 %i.eu, i1 true)
  %i.fa = tail call i32 @llvm.abs.i32(i32 %i.et, i1 true)
  %i.fb = trunc nsw i32 %i.ez to i16
  %i.fc = trunc nsw i32 %i.fa to i16
  %11 = insertelement <2 x i16> poison, i16 %i.fc, i64 0
  %12 = insertelement <2 x i16> %11, i16 %i.fb, i64 1
  %13 = mul nuw nsw <2 x i16> %12, splat (i16 100)
  %14 = insertelement <2 x i16> poison, i16 %.rhs.trunc1121, i64 0
  %15 = shufflevector <2 x i16> %14, <2 x i16> poison, <2 x i32> zeroinitializer
  %16 = udiv <2 x i16> %13, %15
  %i.fd = load <4 x i32>, ptr %i.r, align 8, !tbaa !56
  %i.fe = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, i32 %.zext1128, i64 2
  %17 = shufflevector <2 x i16> %16, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ff = zext <4 x i16> %17 to <4 x i32>
  %i.fg = shufflevector <4 x i32> %i.ff, <4 x i32> %i.fe, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fh = sub <4 x i32> %i.fd, %i.fg
  %i.fi = add <4 x i32> %i.fh, <i32 100, i32 100, i32 100, i32 1>
  store <4 x i32> %i.fi, ptr %i.r, align 8, !tbaa !56
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit1184, label %.lr.ph

.lr.ph1196.preheader:                             ; preds = %bb.i
  %i.fj = load i32, ptr %i.ai, align 4, !tbaa !56
  %i.fk = load i32, ptr %i.ae, align 4, !tbaa !56
  br label %.lr.ph1196

.lr.ph1196:                                       ; preds = %.lr.ph1196.preheader, %bb.s
  %indvars.iv1525 = phi i64 [ 0, %.lr.ph1196.preheader ], [ %indvars.iv.next1526, %bb.s ] ; 2 uses
  %.38981195 = phi i32 [ %i.fj, %.lr.ph1196.preheader ], [ %i.gy, %bb.s ]
  %.39031194 = phi i32 [ %i.fk, %.lr.ph1196.preheader ], [ %i.gx, %bb.s ]
  %i.fl = trunc nuw nsw i64 %indvars.iv1525 to i32 ; 2 uses
  %i.fm = add i32 %i.ac, %i.fl
  %i.fn = zext i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !56 ; 3 uses
  %i.fq = lshr i32 %i.fp, 16
  %i.fr = and i32 %i.fq, 255                      ; 2 uses
  %i.fs = lshr i32 %i.fp, 8
  %i.ft = and i32 %i.fs, 255                      ; 2 uses
  %i.fu = and i32 %i.fp, 255                      ; 2 uses
  %..i1033 = tail call i32 @llvm.umin.i32(i32 %i.ft, i32 %i.fu)
  %spec.select.i1034 = tail call i32 @llvm.umin.i32(i32 %i.fr, i32 %..i1033) ; 2 uses
  %.44.i1035 = tail call i32 @llvm.umax.i32(i32 %i.ft, i32 %i.fu)
  %i.fv = tail call i32 @llvm.umax.i32(i32 %i.fr, i32 %.44.i1035) ; 5 uses
  %.not.i1036 = icmp eq i32 %i.fv, %spec.select.i1034
  br i1 %.not.i1036, label %hsv.exit1038, label %bb.p

bb.p:                                             ; preds = %.lr.ph1196
  %i.fw = sub nuw nsw i32 %i.fv, %spec.select.i1034
  %i.fx = trunc nuw nsw i32 %i.fw to i16
  %.lhs.trunc1117 = mul nuw i16 %i.fx, 255
  %.rhs.trunc1118 = trunc nuw nsw i32 %i.fv to i16
  %i.fy = udiv i16 %.lhs.trunc1117, %.rhs.trunc1118
  %.zext1119 = zext i16 %i.fy to i32              ; 2 uses
  %i.fz = mul nuw nsw i32 %i.fv, %.zext1119
  %i.ga = mul i32 %i.fz, %.zext1119
  %i.gb = uitofp i32 %i.ga to double
  %i.gc = tail call double @llvm.sqrt.f64(double %i.gb)
  %i.gd = fptoui double %i.gc to i32
  br label %hsv.exit1038

hsv.exit1038:                                     ; preds = %.lr.ph1196, %bb.p
  %storemerge.i1037 = phi i32 [ %i.gd, %bb.p ], [ 0, %.lr.ph1196 ]
  %i.ge = sub i32 %.39031194, %storemerge.i1037
  %i.gf = sub i32 %.38981195, %i.fv
  %i.gg = add i32 %i.ak, %i.fl
  %i.gh = zext i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !56 ; 3 uses
  %i.gk = lshr i32 %i.gj, 16
  %i.gl = lshr i32 %i.gj, 8
  %i.gm = and i32 %i.gk, 255                      ; 4 uses
  %i.gn = and i32 %i.gl, 255                      ; 4 uses
  %i.go = and i32 %i.gj, 255                      ; 4 uses
  %..i1039 = tail call i32 @llvm.umin.i32(i32 %i.gn, i32 %i.go)
  %spec.select.i1040 = tail call i32 @llvm.umin.i32(i32 %i.gm, i32 %..i1039) ; 2 uses
  %.44.i1041 = tail call i32 @llvm.umax.i32(i32 %i.gn, i32 %i.go)
  %i.gp = tail call i32 @llvm.umax.i32(i32 %i.gm, i32 %.44.i1041) ; 6 uses
  %i.gq = sub nuw nsw i32 %i.gp, %spec.select.i1040 ; 2 uses
  %.not.i1042 = icmp eq i32 %i.gp, %spec.select.i1040
  br i1 %.not.i1042, label %hsv.exit1044, label %bb.q

bb.q:                                             ; preds = %hsv.exit1038
  %i.gr = trunc nuw nsw i32 %i.gq to i16
  %.lhs.trunc1114 = mul nuw i16 %i.gr, 255
  %.rhs.trunc1115 = trunc nuw nsw i32 %i.gp to i16
  %i.gs = udiv i16 %.lhs.trunc1114, %.rhs.trunc1115
  %.zext1116 = zext i16 %i.gs to i32
  br label %hsv.exit1044

hsv.exit1044:                                     ; preds = %hsv.exit1038, %bb.q
  %storemerge.i1043 = phi i32 [ %.zext1116, %bb.q ], [ 0, %hsv.exit1038 ] ; 3 uses
  %i.gt = mul nuw nsw i32 %storemerge.i1043, %i.gp
  %i.gu = mul i32 %i.gt, %storemerge.i1043
  %i.gv = uitofp i32 %i.gu to double
  %sqrt1140 = tail call double @llvm.sqrt.f64(double %i.gv)
  %i.gw = fptoui double %sqrt1140 to i32
  %i.gx = add i32 %i.ge, %i.gw                    ; 2 uses
  %i.gy = add i32 %i.gf, %i.gp                    ; 2 uses
  %i.gz = icmp samesign ugt i32 %storemerge.i1043, 85
  %i.ha = icmp samesign ugt i32 %i.gp, 85
  %or.cond8 = and i1 %i.ha, %i.gz
  br i1 %or.cond8, label %bb.r, label %bb.s

bb.r:                                             ; preds = %hsv.exit1044
  %i.hb = sub nsw i32 %i.gn, %i.go
  %.rhs.trunc1106 = trunc nuw nsw i32 %i.gq to i16 ; 2 uses
  %i.hc = sub nsw i32 %i.gm, %i.go
  %i.hd = sub nsw i32 %i.gm, %i.gn
  %i.he = tail call i32 @llvm.abs.i32(i32 %i.hd, i1 true)
  %i.hf = trunc nuw nsw i32 %i.he to i16
  %.lhs.trunc1111 = mul nuw nsw i16 %i.hf, 100
  %i.hg = udiv i16 %.lhs.trunc1111, %.rhs.trunc1106
  %.zext1113 = zext nneg i16 %i.hg to i32
  %i.hh = tail call i32 @llvm.abs.i32(i32 %i.hc, i1 true)
  %i.hi = tail call i32 @llvm.abs.i32(i32 %i.hb, i1 true)
  %i.hj = trunc nsw i32 %i.hh to i16
  %i.hk = trunc nsw i32 %i.hi to i16
  %18 = insertelement <2 x i16> poison, i16 %i.hk, i64 0
  %19 = insertelement <2 x i16> %18, i16 %i.hj, i64 1
  %20 = mul nuw nsw <2 x i16> %19, splat (i16 100)
  %21 = insertelement <2 x i16> poison, i16 %.rhs.trunc1106, i64 0
  %22 = shufflevector <2 x i16> %21, <2 x i16> poison, <2 x i32> zeroinitializer
  %23 = udiv <2 x i16> %20, %22
  %i.hl = load <4 x i32>, ptr %i.r, align 8, !tbaa !56
  %i.hm = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, i32 %.zext1113, i64 2
  %24 = shufflevector <2 x i16> %23, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hn = zext <4 x i16> %24 to <4 x i32>
  %i.ho = shufflevector <4 x i32> %i.hn, <4 x i32> %i.hm, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.hp = sub <4 x i32> %i.hl, %i.ho
  %i.hq = add <4 x i32> %i.hp, <i32 100, i32 100, i32 100, i32 1>
  store <4 x i32> %i.hq, ptr %i.r, align 8, !tbaa !56
  br label %bb.s

bb.s:                                             ; preds = %hsv.exit1044, %bb.r
  %indvars.iv.next1526 = add nuw nsw i64 %indvars.iv1525, 1 ; 2 uses
  %exitcond1529.not = icmp eq i64 %indvars.iv.next1526, %wide.trip.count1528
  br i1 %exitcond1529.not, label %.loopexit1184, label %.lr.ph1196

.loopexit1184:                                    ; preds = %bb.o, %bb.s, %._crit_edge.us
  %.4904 = phi i32 [ %i.gx, %bb.s ], [ %i.bx, %._crit_edge.us ], [ %i.eo, %bb.o ]
  %.4899 = phi i32 [ %i.gy, %bb.s ], [ %i.by, %._crit_edge.us ], [ %i.ep, %bb.o ]
  %i.hr = add i32 %.08761211, %i.w
  %i.hs = zext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.hs
  store i32 %.4904, ptr %i.ht, align 4, !tbaa !56
  %i.hu = add i32 %.08761211, %i.y
  %i.hv = zext i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.hv
  store i32 %.4899, ptr %i.hw, align 4, !tbaa !56
  %i.hx = add i32 %.08761211, 1                   ; 2 uses
  %.not974 = icmp ugt i32 %i.hx, %i.o
  br i1 %.not974, label %bb.t, label %bb.d

bb.t:                                             ; preds = %.loopexit1184
  %i.hy = add i32 %.08851213, 1                   ; 2 uses
  %.not964 = icmp ugt i32 %i.hy, %i.o
  br i1 %.not964, label %.preheader1181, label %.preheader1187

.preheader1175:                                   ; preds = %._crit_edge1244.split
  %i.hz = mul nuw nsw i32 %i.h, %i.h              ; 24 uses
  %i.ia = load i32, ptr %i.ap, align 8, !tbaa !56
  %i.ib = udiv i32 %i.ia, %i.hz
  store i32 %i.ib, ptr %i.ap, align 8, !tbaa !56
  %i.ic = load i32, ptr %i.al, align 4, !tbaa !56
  %i.id = udiv i32 %i.ic, %i.hz
  store i32 %i.id, ptr %i.al, align 4, !tbaa !56
  %i.ie = load i32, ptr %i.au, align 8, !tbaa !56
  %i.if = udiv i32 %i.ie, %i.hz
  store i32 %i.if, ptr %i.au, align 8, !tbaa !56
  %i.ig = load i32, ptr %i.am, align 4, !tbaa !56
  %i.ih = udiv i32 %i.ig, %i.hz
  store i32 %i.ih, ptr %i.am, align 4, !tbaa !56
  %i.ii = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !56
  %i.ik = udiv i32 %i.ij, %i.hz
  store i32 %i.ik, ptr %i.ii, align 4, !tbaa !56
  %i.il = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.im = load i32, ptr %i.il, align 8, !tbaa !56
  %i.in = udiv i32 %i.im, %i.hz
  store i32 %i.in, ptr %i.il, align 8, !tbaa !56
  %i.io = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 3 uses
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !56
  %i.iq = udiv i32 %i.ip, %i.hz
  store i32 %i.iq, ptr %i.io, align 4, !tbaa !56
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 3 uses
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !56
  %i.it = udiv i32 %i.is, %i.hz
  store i32 %i.it, ptr %i.ir, align 8, !tbaa !56
  %i.iu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !56
  %i.iw = udiv i32 %i.iv, %i.hz
  store i32 %i.iw, ptr %i.iu, align 8, !tbaa !56
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 4 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !56
  %i.iz = udiv i32 %i.iy, %i.hz
  store i32 %i.iz, ptr %i.ix, align 4, !tbaa !56
  %i.ja = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !56
  %i.jc = udiv i32 %i.jb, %i.hz
  store i32 %i.jc, ptr %i.ja, align 8, !tbaa !56
  %i.jd = getelementptr inbounds nuw i8, ptr %2, i64 124 ; 3 uses
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !56
  %i.jf = udiv i32 %i.je, %i.hz
  store i32 %i.jf, ptr %i.jd, align 4, !tbaa !56
  %i.jg = load i32, ptr %i.q, align 4, !tbaa !80  ; 4 uses
  %i.jh = mul i32 %i.jg, 100
  %i.ji = mul nuw nsw i32 %0, %0                  ; 2 uses
  %i.jj = udiv i32 %i.jh, %i.ji                   ; 2 uses
  %i.jk = icmp ugt i32 %i.jj, 5                   ; 3 uses
  br i1 %i.jk, label %bb.an, label %bb.ao

.preheader1180.lr.ph:                             ; preds = %._crit_edge1244.split, %.preheader1181
  %indvars.iv1566 = phi i64 [ 0, %.preheader1181 ], [ %indvars.iv.next1567, %._crit_edge1244.split ] ; 22 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv1566 ; 2 uses
  store i32 -1, ptr %i.jl, align 4, !tbaa !56
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv1566 ; 2 uses
  store i32 -1, ptr %i.jm, align 4, !tbaa !56
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv1566 ; 2 uses
  %.not1472 = icmp eq i64 %indvars.iv1566, 0      ; 4 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv1566
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv1566
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv1566
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv1566
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv1566 ; 2 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv1566
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv1566
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv1566
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv1566
  br i1 %.not1471, label %._crit_edge1244.split, label %.preheader1180.lr.ph.split

.preheader1180.lr.ph.split:                       ; preds = %.preheader1180.lr.ph
  %.promoted1245 = load i32, ptr %i.jn, align 4, !tbaa !56
  %.promoted1252 = load i32, ptr %i.js, align 4, !tbaa !56
  %exitcond1544.not = icmp eq i64 %indvars.iv1566, 1
  %exitcond1549.not = icmp eq i64 %indvars.iv1566, 1
  %exitcond1554.not = icmp eq i64 %indvars.iv1566, 1
  %exitcond1559.not = icmp eq i64 %indvars.iv1566, 1 ; 2 uses
  br label %.preheader1180

.preheader1180:                                   ; preds = %.preheader1180.lr.ph.split, %._crit_edge1239
  %.promoted12421259 = phi i32 [ -1, %.preheader1180.lr.ph.split ], [ %.promoted12421257, %._crit_edge1239 ] ; 2 uses
  %.promoted12411255 = phi i32 [ %.promoted1252, %.preheader1180.lr.ph.split ], [ %.promoted12411253, %._crit_edge1239 ] ; 2 uses
  %.promoted12401251 = phi i32 [ -1, %.preheader1180.lr.ph.split ], [ %.promoted12401249, %._crit_edge1239 ] ; 2 uses
  %.promoted1248 = phi i32 [ %.promoted1245, %.preheader1180.lr.ph.split ], [ %.promoted1246, %._crit_edge1239 ] ; 2 uses
  %.18861243 = phi i32 [ 0, %.preheader1180.lr.ph.split ], [ %i.nv, %._crit_edge1239 ] ; 16 uses
  %i.jx = mul i32 %.18861243, %0
  %i.jy = add i32 %.18861243, %0
  %i.jz = mul i32 %i.jy, %0
  %i.ka = add i32 %.18861243, %i.h                ; 8 uses
  br label %bb.u

bb.u:                                             ; preds = %.preheader1180, %bb.am
  %indvars.iv1560 = phi i64 [ 0, %.preheader1180 ], [ %indvars.iv.next1561, %bb.am ] ; 10 uses
  %.promoted12421258 = phi i32 [ %.promoted12421259, %.preheader1180 ], [ %.promoted12421257, %bb.am ] ; 2 uses
  %.promoted12411254 = phi i32 [ %.promoted12411255, %.preheader1180 ], [ %.promoted12411253, %bb.am ] ; 3 uses
  %.promoted12401250 = phi i32 [ %.promoted12401251, %.preheader1180 ], [ %.promoted12401249, %bb.am ] ; 3 uses
  %.promoted1247 = phi i32 [ %.promoted1248, %.preheader1180 ], [ %.promoted1246, %bb.am ] ; 3 uses
  %i.kb = phi i32 [ %.promoted12421259, %.preheader1180 ], [ %i.nu, %bb.am ] ; 3 uses
  %i.kc = phi i32 [ %.promoted12411255, %.preheader1180 ], [ %i.mx, %bb.am ] ; 4 uses
  %i.kd = phi i32 [ %.promoted12401251, %.preheader1180 ], [ %i.mc, %bb.am ] ; 4 uses
  %i.ke = phi i32 [ %.promoted1248, %.preheader1180 ], [ %i.lh, %bb.am ] ; 4 uses
  %indvars1562 = trunc i64 %indvars.iv1560 to i32 ; 10 uses
  %i.kf = add i32 %i.jx, %indvars1562
  %i.kg = zext i32 %i.kf to i64
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.kg
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !56 ; 8 uses
  %i.kj = add i32 %i.jz, %indvars1562
  %i.kk = zext i32 %i.kj to i64
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.kk
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !56 ; 8 uses
  %i.kn = icmp ugt i32 %i.ki, %i.ke
  br i1 %i.kn, label %.preheader1179, label %._crit_edge

.preheader1179:                                   ; preds = %bb.u
  br i1 %.not1472, label %._crit_edge.thread, label %.lr.ph1215

.lr.ph1215:                                       ; preds = %.preheader1179
  %i.ko = add i32 %i.h, %indvars1562              ; 2 uses
  %i.kp = load i32, ptr %i.aq, align 4, !tbaa !56 ; 2 uses
  %i.kq = icmp ugt i32 %i.ko, %i.kp
  %i.kr = add i32 %i.kp, %i.h
  %i.ks = zext i32 %i.kr to i64
  %i.kt = icmp samesign ult i64 %indvars.iv1560, %i.ks
  %or.cond986 = and i1 %i.kq, %i.kt
  br i1 %or.cond986, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph1215
  %i.ku = load i32, ptr %i.ar, align 8, !tbaa !56 ; 2 uses
  %i.kv = icmp ugt i32 %i.ka, %i.ku
  %i.kw = add i32 %i.ku, %i.h
  %i.kx = icmp ult i32 %.18861243, %i.kw
  %or.cond989 = and i1 %i.kv, %i.kx
  br i1 %or.cond989, label %._crit_edge, label %bb.w

bb.w:                                             ; preds = %.lr.ph1215, %bb.v
  br i1 %exitcond1544.not, label %._crit_edge.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ky = load i32, ptr %i.az, align 8, !tbaa !56 ; 2 uses
  %i.kz = icmp ugt i32 %i.ko, %i.ky
  %i.la = add i32 %i.ky, %i.h
  %i.lb = zext i32 %i.la to i64
  %i.lc = icmp samesign ult i64 %indvars.iv1560, %i.lb
  %or.cond986.1 = and i1 %i.kz, %i.lc
  br i1 %or.cond986.1, label %bb.y, label %._crit_edge.thread

bb.y:                                             ; preds = %bb.x
  %i.ld = load i32, ptr %i.ba, align 4, !tbaa !56 ; 2 uses
  %i.le = icmp ugt i32 %i.ka, %i.ld
  %i.lf = add i32 %i.ld, %i.h
  %i.lg = icmp ult i32 %.18861243, %i.lf
  %or.cond989.1 = and i1 %i.le, %i.lg
  br i1 %or.cond989.1, label %._crit_edge, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.w, %bb.y, %bb.x, %.preheader1179
  store i32 %i.ki, ptr %i.jn, align 4, !tbaa !56
  store i32 %indvars1562, ptr %i.jo, align 4, !tbaa !56
  store i32 %.18861243, ptr %i.jp, align 4, !tbaa !56
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.v, %bb.y, %._crit_edge.thread, %bb.u
  %.promoted1246 = phi i32 [ %.promoted1247, %bb.u ], [ %i.ki, %._crit_edge.thread ], [ %.promoted1247, %bb.y ], [ %.promoted1247, %bb.v ] ; 2 uses
  %i.lh = phi i32 [ %i.ke, %bb.u ], [ %i.ki, %._crit_edge.thread ], [ %i.ke, %bb.y ], [ %i.ke, %bb.v ]
  %i.li = icmp ult i32 %i.ki, %i.kd
  br i1 %i.li, label %.preheader1178, label %._crit_edge1221

.preheader1178:                                   ; preds = %._crit_edge
end_hunk_0
begin_hunk_1_@getmetrics:bb.a

bb.aa:                                            ; preds = %.lr.ph1220, %bb.z
  br i1 %exitcond1549.not, label %._crit_edge1221.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.lt = load i32, ptr %i.bb, align 4, !tbaa !56 ; 2 uses
  %i.lu = icmp ugt i32 %i.lj, %i.lt
  %i.lv = add i32 %i.lt, %i.h
  %i.lw = zext i32 %i.lv to i64
  %i.lx = icmp samesign ult i64 %indvars.iv1560, %i.lw
  %or.cond992.1 = and i1 %i.lu, %i.lx
  br i1 %or.cond992.1, label %bb.ac, label %._crit_edge1221.thread

bb.ac:                                            ; preds = %bb.ab
  %i.ly = load i32, ptr %i.bc, align 8, !tbaa !56 ; 2 uses
  %i.lz = icmp ugt i32 %i.ka, %i.ly
  %i.ma = add i32 %i.ly, %i.h
  %i.mb = icmp ult i32 %.18861243, %i.ma
  %or.cond995.1 = and i1 %i.lz, %i.mb
  br i1 %or.cond995.1, label %._crit_edge1221, label %._crit_edge1221.thread

._crit_edge1221.thread:                           ; preds = %bb.aa, %bb.ac, %bb.ab, %.preheader1178
  store i32 %i.ki, ptr %i.jl, align 4, !tbaa !56
  store i32 %indvars1562, ptr %i.jq, align 4, !tbaa !56
  store i32 %.18861243, ptr %i.jr, align 4, !tbaa !56
  br label %._crit_edge1221

._crit_edge1221:                                  ; preds = %bb.z, %bb.ac, %._crit_edge1221.thread, %._crit_edge
  %.promoted12401249 = phi i32 [ %.promoted12401250, %._crit_edge ], [ %i.ki, %._crit_edge1221.thread ], [ %.promoted12401250, %bb.ac ], [ %.promoted12401250, %bb.z ] ; 2 uses
  %i.mc = phi i32 [ %i.kd, %._crit_edge ], [ %i.ki, %._crit_edge1221.thread ], [ %i.kd, %bb.ac ], [ %i.kd, %bb.z ]
  %i.md = icmp ugt i32 %i.km, %i.kc
  br i1 %i.md, label %.preheader1177, label %._crit_edge1227

.preheader1177:                                   ; preds = %._crit_edge1221
  br i1 %.not1472, label %._crit_edge1227.thread, label %.lr.ph1226

.lr.ph1226:                                       ; preds = %.preheader1177
  %i.me = add i32 %i.h, %indvars1562              ; 2 uses
  %i.mf = load i32, ptr %i.av, align 4, !tbaa !56 ; 2 uses
  %i.mg = icmp ugt i32 %i.me, %i.mf
  %i.mh = add i32 %i.mf, %i.h
  %i.mi = zext i32 %i.mh to i64
  %i.mj = icmp samesign ult i64 %indvars.iv1560, %i.mi
  %or.cond998 = and i1 %i.mg, %i.mj
  br i1 %or.cond998, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph1226
  %i.mk = load i32, ptr %i.aw, align 8, !tbaa !56 ; 2 uses
  %i.ml = icmp ugt i32 %i.ka, %i.mk
  %i.mm = add i32 %i.mk, %i.h
  %i.mn = icmp ult i32 %.18861243, %i.mm
  %or.cond1001 = and i1 %i.ml, %i.mn
  br i1 %or.cond1001, label %._crit_edge1227, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph1226, %bb.ad
  br i1 %exitcond1554.not, label %._crit_edge1227.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.mo = load i32, ptr %i.bd, align 8, !tbaa !56 ; 2 uses
  %i.mp = icmp ugt i32 %i.me, %i.mo
  %i.mq = add i32 %i.mo, %i.h
  %i.mr = zext i32 %i.mq to i64
  %i.ms = icmp samesign ult i64 %indvars.iv1560, %i.mr
  %or.cond998.1 = and i1 %i.mp, %i.ms
  br i1 %or.cond998.1, label %bb.ag, label %._crit_edge1227.thread

bb.ag:                                            ; preds = %bb.af
  %i.mt = load i32, ptr %i.be, align 4, !tbaa !56 ; 2 uses
  %i.mu = icmp ugt i32 %i.ka, %i.mt
  %i.mv = add i32 %i.mt, %i.h
  %i.mw = icmp ult i32 %.18861243, %i.mv
  %or.cond1001.1 = and i1 %i.mu, %i.mw
  br i1 %or.cond1001.1, label %._crit_edge1227, label %._crit_edge1227.thread

._crit_edge1227.thread:                           ; preds = %bb.ae, %bb.ag, %bb.af, %.preheader1177
  store i32 %i.km, ptr %i.js, align 4, !tbaa !56
  store i32 %indvars1562, ptr %i.jt, align 4, !tbaa !56
  store i32 %.18861243, ptr %i.ju, align 4, !tbaa !56
  br label %._crit_edge1227

._crit_edge1227:                                  ; preds = %bb.ad, %bb.ag, %._crit_edge1227.thread, %._crit_edge1221
  %.promoted12411253 = phi i32 [ %.promoted12411254, %._crit_edge1221 ], [ %i.km, %._crit_edge1227.thread ], [ %.promoted12411254, %bb.ag ], [ %.promoted12411254, %bb.ad ] ; 2 uses
  %i.mx = phi i32 [ %i.kc, %._crit_edge1221 ], [ %i.km, %._crit_edge1227.thread ], [ %i.kc, %bb.ag ], [ %i.kc, %bb.ad ]
  %i.my = icmp ult i32 %i.km, %i.kb
  br i1 %i.my, label %.preheader1176, label %bb.am

.preheader1176:                                   ; preds = %._crit_edge1227
  br i1 %.not1472, label %._crit_edge1233.thread, label %.lr.ph1232

.lr.ph1232:                                       ; preds = %.preheader1176
  %i.mz = add i32 %i.h, %indvars1562              ; 2 uses
  %i.na = load i32, ptr %i.ax, align 8, !tbaa !56 ; 2 uses
  %i.nb = icmp ugt i32 %i.mz, %i.na
  %i.nc = add i32 %i.na, %i.h
  %i.nd = zext i32 %i.nc to i64
  %i.ne = icmp samesign ult i64 %indvars.iv1560, %i.nd
  %or.cond1004 = and i1 %i.nb, %i.ne
  br i1 %or.cond1004, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph1232
  %i.nf = load i32, ptr %i.ay, align 4, !tbaa !56 ; 2 uses
  %i.ng = icmp ugt i32 %i.ka, %i.nf
  %i.nh = add i32 %i.nf, %i.h
  %i.ni = icmp ult i32 %.18861243, %i.nh
  %or.cond1007 = and i1 %i.ng, %i.ni              ; 2 uses
  %brmerge = or i1 %or.cond1007, %exitcond1559.not
  %.mux = select i1 %or.cond1007, i64 0, i64 %indvars.iv1566
  br i1 %brmerge, label %._crit_edge1233, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph1232
  br i1 %exitcond1559.not, label %._crit_edge1233, label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.nj = load i32, ptr %i.bf, align 4, !tbaa !56 ; 2 uses
  %i.nk = icmp ugt i32 %i.mz, %i.nj
  %i.nl = add i32 %i.nj, %i.h
  %i.nm = zext i32 %i.nl to i64
  %i.nn = icmp samesign ult i64 %indvars.iv1560, %i.nm
  %or.cond1004.1 = and i1 %i.nk, %i.nn
  br i1 %or.cond1004.1, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.no = load i32, ptr %i.bg, align 8, !tbaa !56 ; 2 uses
  %i.np = icmp ugt i32 %i.ka, %i.no
  %i.nq = add i32 %i.no, %i.h
  %i.nr = icmp ult i32 %.18861243, %i.nq
  %or.cond1007.1 = and i1 %i.np, %i.nr
  br i1 %or.cond1007.1, label %._crit_edge1233, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  br label %._crit_edge1233

._crit_edge1233:                                  ; preds = %bb.ah, %bb.al, %bb.ak, %bb.ai
  %.3909.lcssa.ph.in = phi i64 [ %indvars.iv1566, %bb.ai ], [ %.mux, %bb.ah ], [ 1, %bb.ak ], [ %indvars.iv1566, %bb.al ]
  %i.ns = and i64 %.3909.lcssa.ph.in, 4294967295
  %i.nt = icmp eq i64 %i.ns, %indvars.iv1566
  br i1 %i.nt, label %._crit_edge1233.thread, label %bb.am

._crit_edge1233.thread:                           ; preds = %.preheader1176, %._crit_edge1233
  store i32 %i.km, ptr %i.jm, align 4, !tbaa !56
  store i32 %indvars1562, ptr %i.jv, align 4, !tbaa !56
  store i32 %.18861243, ptr %i.jw, align 4, !tbaa !56
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge1233, %._crit_edge1233.thread, %._crit_edge1227
  %.promoted12421257 = phi i32 [ %.promoted12421258, %._crit_edge1233 ], [ %i.km, %._crit_edge1233.thread ], [ %.promoted12421258, %._crit_edge1227 ] ; 2 uses
  %i.nu = phi i32 [ %i.kb, %._crit_edge1233 ], [ %i.km, %._crit_edge1233.thread ], [ %i.kb, %._crit_edge1227 ]
  %indvars.iv.next1561 = add nuw nsw i64 %indvars.iv1560, 1 ; 2 uses
  %exitcond1564.not = icmp eq i64 %indvars.iv.next1561, %wide.trip.count1563
  br i1 %exitcond1564.not, label %._crit_edge1239, label %bb.u

._crit_edge1239:                                  ; preds = %bb.am
  %i.nv = add nuw i32 %.18861243, 1               ; 2 uses
  %exitcond1565.not = icmp eq i32 %i.nv, %umax
  br i1 %exitcond1565.not, label %._crit_edge1244.split, label %.preheader1180

._crit_edge1244.split:                            ; preds = %._crit_edge1239, %.preheader1180.lr.ph
  %indvars.iv.next1567 = add nuw nsw i64 %indvars.iv1566, 1 ; 2 uses
  %exitcond1569.not = icmp eq i64 %indvars.iv.next1567, 3
  br i1 %exitcond1569.not, label %.preheader1175, label %.preheader1180.lr.ph

bb.an:                                            ; preds = %.preheader1175
  %i.nw = load i32, ptr %i.r, align 8, !tbaa !138
  %i.nx = udiv i32 %i.nw, %i.jg
  store i32 %i.nx, ptr %i.r, align 8, !tbaa !138
  %i.ny = load i32, ptr %i.s, align 4, !tbaa !139
  %i.nz = udiv i32 %i.ny, %i.jg
  store i32 %i.nz, ptr %i.s, align 4, !tbaa !139
  %i.oa = load i32, ptr %i.t, align 8, !tbaa !140
  %i.ob = udiv i32 %i.oa, %i.jg
  br label %bb.ap

bb.ao:                                            ; preds = %.preheader1175
  store i32 0, ptr %i.r, align 8, !tbaa !138
  store i32 0, ptr %i.s, align 4, !tbaa !139
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %storemerge = phi i32 [ 0, %bb.ao ], [ %i.ob, %bb.an ]
  %.sink = phi i32 [ 0, %bb.ao ], [ %i.jj, %bb.an ]
  %.0905 = phi i64 [ 6, %bb.ao ], [ 3, %bb.an ]
  store i32 %storemerge, ptr %i.t, align 8, !tbaa !140
  store i32 %.sink, ptr %i.q, align 4, !tbaa !80
  %i.oc = tail call ptr @cli_max_malloc(i64 noundef %i.k) #13 ; 11 uses
  %.not965 = icmp eq ptr %i.oc, null
  br i1 %.not965, label %bb.aq, label %.preheader1173

bb.aq:                                            ; preds = %bb.ap
  %i.od = shl nuw nsw i32 %i.ji, 3
  %i.oe = zext nneg i32 %i.od to i64
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.36, i64 noundef %i.oe) #13
  tail call void @free(ptr noundef %i.l) #13
  br label %bb.cv

.preheader1173:                                   ; preds = %bb.ap, %bb.bj
  %indvars.iv1579 = phi i64 [ %indvars.iv.next1580, %bb.bj ], [ 0, %bb.ap ] ; 2 uses
  %i.of = mul nuw nsw i64 %indvars.iv1579, %i.i
  br label %bb.ar

.preheader1171.us.preheader:                      ; preds = %bb.bj
  %i.og = add nsw i32 %0, -1                      ; 8 uses
  %i.oh = zext nneg i32 %0 to i64                 ; 3 uses
  %wide.trip.count1592 = zext i32 %i.og to i64    ; 4 uses
  %i.oi = add nsw i64 %wide.trip.count1592, -1    ; 5 uses
  %n.vec = and i64 %i.oi, -2                      ; 2 uses
  %i.oj = or i64 %i.oi, 1
  %cmp.n = icmp eq i64 %i.oi, %n.vec
  br label %.preheader1171.us

.preheader1171.us:                                ; preds = %.preheader1171.us.preheader, %._crit_edge1268.us
  %indvars.iv1589 = phi i64 [ 1, %.preheader1171.us.preheader ], [ %indvars.iv.next1590, %._crit_edge1268.us ] ; 3 uses
  %.29141270.us = phi i32 [ 0, %.preheader1171.us.preheader ], [ %spec.select.us.lcssa, %._crit_edge1268.us ]
  %i.ok = add nsw i64 %indvars.iv1589, -1
  %i.ol = mul nuw nsw i64 %i.ok, %i.oh            ; 3 uses
  %i.om = mul nuw nsw i64 %indvars.iv1589, %i.oh  ; 3 uses
  %indvars.iv.next1590 = add nuw nsw i64 %indvars.iv1589, 1 ; 3 uses
  %i.on = mul nuw nsw i64 %indvars.iv.next1590, %i.oh ; 3 uses
  %invariant.gep1892 = getelementptr [8 x i8], ptr %i.oc, i64 %i.ol ; 2 uses
  %invariant.gep1894 = getelementptr [8 x i8], ptr %i.oc, i64 %i.om ; 2 uses
  %invariant.gep1896 = getelementptr [8 x i8], ptr %i.oc, i64 %i.on ; 2 uses
  %invariant.gep1898 = getelementptr [8 x i8], ptr %i.oc, i64 %i.ol ; 2 uses
  %invariant.gep1900 = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %i.om ; 2 uses
  %invariant.gep1902 = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %i.on ; 2 uses
  %invariant.gep1904 = getelementptr [8 x i8], ptr %i.oc, i64 %i.ol ; 2 uses
  %invariant.gep1906 = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %i.on ; 2 uses
  %invariant.gep1908 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.om ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.29141270.us, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader1171.us
  %index = phi i64 [ 0, %.preheader1171.us ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i32> [ %broadcast.splat, %.preheader1171.us ], [ %i.pp, %vector.body ]
  %i.oo = or disjoint i64 %index, 1               ; 3 uses
  %i.op = getelementptr [8 x i8], ptr %invariant.gep1892, i64 %index
  %wide.load = load <2 x double>, ptr %i.op, align 8, !tbaa !142 ; 2 uses
  %i.oq = getelementptr [8 x i8], ptr %invariant.gep1894, i64 %index
  %wide.load22 = load <2 x double>, ptr %i.oq, align 8, !tbaa !142
  %i.or = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load22, <2 x double> splat (double 2.000000e+00), <2 x double> %wide.load)
  %i.os = getelementptr [8 x i8], ptr %invariant.gep1896, i64 %index
  %wide.load23 = load <2 x double>, ptr %i.os, align 8, !tbaa !142 ; 2 uses
  %i.ot = fadd <2 x double> %i.or, %wide.load23
  %i.ou = add nuw nsw i64 %index, 2               ; 3 uses
  %i.ov = getelementptr [8 x i8], ptr %invariant.gep1898, i64 %i.ou
  %wide.load24 = load <2 x double>, ptr %i.ov, align 8, !tbaa !142 ; 2 uses
  %i.ow = fsub <2 x double> %i.ot, %wide.load24
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1900, i64 %i.ou
  %wide.load25 = load <2 x double>, ptr %i.ox, align 8, !tbaa !142
  %i.oy = fneg <2 x double> %wide.load25
  %i.oz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oy, <2 x double> splat (double 2.000000e+00), <2 x double> %i.ow)
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1902, i64 %i.ou
  %wide.load26 = load <2 x double>, ptr %i.pa, align 8, !tbaa !142 ; 2 uses
  %i.pb = fsub <2 x double> %i.oz, %wide.load26   ; 2 uses
  %i.pc = getelementptr [8 x i8], ptr %invariant.gep1904, i64 %i.oo
  %wide.load27 = load <2 x double>, ptr %i.pc, align 8, !tbaa !142
  %i.pd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load27, <2 x double> splat (double 2.000000e+00), <2 x double> %wide.load)
  %i.pe = fadd <2 x double> %wide.load24, %i.pd
  %i.pf = fsub <2 x double> %i.pe, %wide.load23
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1906, i64 %i.oo
  %wide.load28 = load <2 x double>, ptr %i.pg, align 8, !tbaa !142
  %i.ph = fneg <2 x double> %wide.load28
  %i.pi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ph, <2 x double> splat (double 2.000000e+00), <2 x double> %i.pf)
  %i.pj = fsub <2 x double> %i.pi, %wide.load26   ; 2 uses
  %i.pk = fmul <2 x double> %i.pj, %i.pj
  %i.pl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pb, <2 x double> %i.pb, <2 x double> %i.pk)
  %i.pm = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.pl)
  %i.pn = fptosi <2 x double> %i.pm to <2 x i32>  ; 2 uses
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1908, i64 %i.oo
  store <2 x i32> %i.pn, ptr %i.po, align 4, !tbaa !56
  %i.pp = tail call <2 x i32> @llvm.umax.v2i32(<2 x i32> %vec.phi, <2 x i32> %i.pn) ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.pq = icmp eq i64 %index.next, %n.vec
  br i1 %i.pq, label %middle.block, label %vector.body, !llvm.loop !129

middle.block:                                     ; preds = %vector.body
  %i.pr = tail call i32 @llvm.vector.reduce.umax.v2i32(<2 x i32> %i.pp) ; 2 uses
  br i1 %cmp.n, label %._crit_edge1268.us, label %scalar.ph

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %indvars.iv1584 = phi i64 [ %indvars.iv.next1585, %scalar.ph ], [ %i.oj, %middle.block ] ; 5 uses
  %.39151265.us = phi i32 [ %spec.select.us, %scalar.ph ], [ %i.pr, %middle.block ]
  %i.ps = add nsw i64 %indvars.iv1584, -1         ; 3 uses
  %gep1893 = getelementptr [8 x i8], ptr %invariant.gep1892, i64 %i.ps
  %i.pt = load double, ptr %gep1893, align 8, !tbaa !142
  %gep1895 = getelementptr [8 x i8], ptr %invariant.gep1894, i64 %i.ps
  %i.pu = load double, ptr %gep1895, align 8, !tbaa !142
  %gep1897 = getelementptr [8 x i8], ptr %invariant.gep1896, i64 %i.ps
  %i.pv = load double, ptr %gep1897, align 8, !tbaa !142 ; 2 uses
  %indvars.iv.next1585 = add nuw nsw i64 %indvars.iv1584, 1 ; 5 uses
  %gep1899 = getelementptr [8 x i8], ptr %invariant.gep1898, i64 %indvars.iv.next1585
  %gep1901 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1900, i64 %indvars.iv.next1585
  %i.pw = load double, ptr %gep1901, align 8, !tbaa !142
  %i.px = fneg double %i.pw
  %gep1903 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1902, i64 %indvars.iv.next1585
  %i.py = load double, ptr %gep1903, align 8, !tbaa !142 ; 2 uses
  %gep1905 = getelementptr [8 x i8], ptr %invariant.gep1904, i64 %indvars.iv1584
  %i.pz = load <2 x double>, ptr %gep1905, align 8, !tbaa !142 ; 2 uses
  %i.qa = load double, ptr %gep1899, align 8, !tbaa !142
  %i.qb = shufflevector <2 x double> %i.pz, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.qc = insertelement <2 x double> %i.qb, double %i.pu, i64 0
  %i.qd = insertelement <2 x double> poison, double %i.pt, i64 0
  %i.qe = shufflevector <2 x double> %i.qd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qc, <2 x double> splat (double 2.000000e+00), <2 x double> %i.qe)
  %i.qg = insertelement <2 x double> %i.pz, double %i.pv, i64 0
  %i.qh = fadd <2 x double> %i.qf, %i.qg
  %i.qi = insertelement <2 x double> poison, double %i.qa, i64 0
  %i.qj = insertelement <2 x double> %i.qi, double %i.pv, i64 1
  %i.qk = fsub <2 x double> %i.qh, %i.qj          ; 2 uses
  %i.ql = extractelement <2 x double> %i.qk, i64 0
  %i.qm = tail call double @llvm.fmuladd.f64(double %i.px, double 2.000000e+00, double %i.ql)
  %i.qn = fsub double %i.qm, %i.py                ; 2 uses
  %gep1907 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1906, i64 %indvars.iv1584
  %i.qo = load double, ptr %gep1907, align 8, !tbaa !142
  %i.qp = fneg double %i.qo
  %i.qq = extractelement <2 x double> %i.qk, i64 1
  %i.qr = tail call double @llvm.fmuladd.f64(double %i.qp, double 2.000000e+00, double %i.qq)
  %i.qs = fsub double %i.qr, %i.py                ; 2 uses
  %i.qt = fmul double %i.qs, %i.qs
  %i.qu = tail call double @llvm.fmuladd.f64(double %i.qn, double %i.qn, double %i.qt)
  %sqrt1141.us = tail call double @llvm.sqrt.f64(double %i.qu)
  %i.qv = fptosi double %sqrt1141.us to i32       ; 2 uses
  %gep1909 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1908, i64 %indvars.iv1584
  store i32 %i.qv, ptr %gep1909, align 4, !tbaa !56
  %spec.select.us = tail call i32 @llvm.umax.i32(i32 %.39151265.us, i32 %i.qv) ; 2 uses
  %exitcond1588.not = icmp eq i64 %indvars.iv.next1585, %wide.trip.count1592
  br i1 %exitcond1588.not, label %._crit_edge1268.us, label %scalar.ph, !llvm.loop !130

._crit_edge1268.us:                               ; preds = %scalar.ph, %middle.block
  %spec.select.us.lcssa = phi i32 [ %i.pr, %middle.block ], [ %spec.select.us, %scalar.ph ] ; 5 uses
  %exitcond1593.not = icmp eq i64 %indvars.iv.next1590, %wide.trip.count1592
  br i1 %exitcond1593.not, label %._crit_edge1272, label %.preheader1171.us

bb.ar:                                            ; preds = %.preheader1173, %labdiff.exit
  %indvars.iv1574 = phi i64 [ 0, %.preheader1173 ], [ %indvars.iv.next1575, %labdiff.exit ] ; 2 uses
  %i.qw = add nuw nsw i64 %indvars.iv1574, %i.of  ; 2 uses
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.qw
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !56 ; 3 uses
  %i.qz = lshr i32 %i.qy, 16
  %i.ra = and i32 %i.qz, 255
  %i.rb = lshr i32 %i.qy, 8
  %i.rc = uitofp nneg i32 %i.ra to double
  %i.rd = and i32 %i.qy, 255
  %i.re = and i32 %i.rb, 255
  %i.rf = uitofp nneg i32 %i.rd to double
  %i.rg = uitofp nneg i32 %i.re to double
  %i.rh = fdiv double %i.rc, 2.550000e+02         ; 3 uses
  %i.ri = insertelement <2 x double> poison, double %i.rg, i64 0
  %i.rj = insertelement <2 x double> %i.ri, double %i.rf, i64 1
  %i.rk = fdiv <2 x double> %i.rj, splat (double 2.550000e+02) ; 2 uses
  %i.rl = fcmp ogt double %i.rh, f0x3FA4B5DCC0000000
  br i1 %i.rl, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.rm = fadd double %i.rh, f0x3FAC28F5C0000000
  %i.rn = fdiv double %i.rm, f0x3FF0E147A0000000
  %i.ro = tail call double @pow(double noundef %i.rn, double noundef f0x4003333340000000) #13
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.rp = fdiv nnan double %i.rh, f0x4029D70A40000000
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.046.i.i = phi double [ %i.ro, %bb.as ], [ %i.rp, %bb.at ]
  %i.rq = extractelement <2 x double> %i.rk, i64 0 ; 3 uses
  %i.rr = fcmp ogt double %i.rq, f0x3FA4B5DCC0000000
  br i1 %i.rr, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.rs = fadd double %i.rq, f0x3FAC28F5C0000000
  %i.rt = fdiv double %i.rs, f0x3FF0E147A0000000
  %i.ru = tail call double @pow(double noundef %i.rt, double noundef f0x4003333340000000) #13
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.rv = fdiv nnan double %i.rq, f0x4029D70A40000000
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.047.i.i = phi double [ %i.ru, %bb.av ], [ %i.rv, %bb.aw ]
  %i.rw = extractelement <2 x double> %i.rk, i64 1 ; 3 uses
  %i.rx = fcmp ogt double %i.rw, f0x3FA4B5DCC0000000
  br i1 %i.rx, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ry = fadd double %i.rw, f0x3FAC28F5C0000000
  %i.rz = fdiv double %i.ry, f0x3FF0E147A0000000
  %i.sa = tail call double @pow(double noundef %i.rz, double noundef f0x4003333340000000) #13
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.sb = fdiv nnan double %i.rw, f0x4029D70A40000000
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.048.i.i = phi double [ %i.sa, %bb.ay ], [ %i.sb, %bb.az ]
  %i.sc = insertelement <3 x double> poison, double %.048.i.i, i64 0
  %i.sd = insertelement <3 x double> %i.sc, double %.046.i.i, i64 1
  %i.se = insertelement <3 x double> %i.sd, double %.047.i.i, i64 2
  %i.sf = fmul <3 x double> %i.se, splat (double 1.000000e+02) ; 6 uses
  %i.sg = extractelement <3 x double> %i.sf, i64 2
  %i.sh = fmul double %i.sg, f0x3FBE83E420000000
  %i.si = extractelement <3 x double> %i.sf, i64 1
  %i.sj = tail call double @llvm.fmuladd.f64(double %i.si, double f0x3F93C36120000000, double %i.sh)
  %i.sk = extractelement <3 x double> %i.sf, i64 0
  %i.sl = tail call double @llvm.fmuladd.f64(double %i.sk, double f0x3FEE6A7F00000000, double %i.sj)
  %i.sm = shufflevector <3 x double> %i.sf, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.sn = fmul <2 x double> %i.sm, <double f0x3FD6E2EB20000000, double f0x3FE6E2EB20000000>
  %i.so = shufflevector <3 x double> %i.sf, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.sp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.so, <2 x double> <double f0x3FDA64C300000000, double f0x3FCB367A00000000>, <2 x double> %i.sn)
  %i.sq = shufflevector <3 x double> %i.sf, <3 x double> poison, <2 x i32> zeroinitializer
  %i.sr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sq, <2 x double> <double f0x3FC71A9FC0000000, double f0x3FB27BB300000000>, <2 x double> %i.sp)
  %i.ss = fdiv <2 x double> %i.sr, <double f0x4057C30200000000, double 1.000000e+02> ; 2 uses
  %i.st = fdiv double %i.sl, f0x405B388320000000  ; 3 uses
  %i.su = extractelement <2 x double> %i.ss, i64 0 ; 3 uses
  %i.sv = fcmp ogt double %i.su, f0x3F82231840000000
  br i1 %i.sv, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.sw = tail call double @pow(double noundef %i.su, double noundef f0x3FD5555560000000) #13
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.sx = tail call double @llvm.fmuladd.f64(double %i.su, double f0x401F25E360000000, double f0x3FC1A7B960000000)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.045.i.i = phi double [ %i.sw, %bb.bb ], [ %i.sx, %bb.bc ]
  %i.sy = extractelement <2 x double> %i.ss, i64 1 ; 3 uses
  %i.sz = fcmp ogt double %i.sy, f0x3F82231840000000
  br i1 %i.sz, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ta = tail call double @pow(double noundef %i.sy, double noundef f0x3FD5555560000000) #13
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.tb = tail call double @llvm.fmuladd.f64(double %i.sy, double f0x401F25E360000000, double f0x3FC1A7B960000000)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.044.i.i = phi double [ %i.ta, %bb.be ], [ %i.tb, %bb.bf ] ; 3 uses
  %i.tc = fcmp ogt double %i.st, f0x3F82231840000000
  br i1 %i.tc, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.td = tail call double @pow(double noundef %i.st, double noundef f0x3FD5555560000000) #13
  br label %labdiff.exit

bb.bi:                                            ; preds = %bb.bg
  %i.te = tail call double @llvm.fmuladd.f64(double %i.st, double f0x401F25E360000000, double f0x3FC1A7B960000000)
  br label %labdiff.exit

labdiff.exit:                                     ; preds = %bb.bh, %bb.bi
  %.0.i.i = phi double [ %i.td, %bb.bh ], [ %i.te, %bb.bi ]
  %i.tf = tail call double @llvm.fmuladd.f64(double %.044.i.i, double 1.160000e+02, double -1.600000e+01)
  %i.tg = fsub double %.045.i.i, %.044.i.i
  %i.th = fmul double %i.tg, 5.000000e+02
  %i.ti = fsub double %.044.i.i, %.0.i.i
  %i.tj = fmul double %i.ti, 2.000000e+02
  %i.tk = fsub double f0x404A98AD00000000, %i.tf
  %i.tl = tail call double @pow(double noundef %i.tk, double noundef 2.000000e+00) #13
  %i.tm = fsub double f0x3F69BD7300000000, %i.th
  %i.tn = tail call double @pow(double noundef %i.tm, double noundef 2.000000e+00) #13
  %i.to = fadd double %i.tl, %i.tn
  %i.tp = fsub double f0xBF796D20A0000000, %i.tj
  %i.tq = tail call double @pow(double noundef %i.tp, double noundef 2.000000e+00) #13
  %i.tr = fadd double %i.to, %i.tq
  %i.ts = tail call double @sqrt(double noundef %i.tr) #13
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %i.qw
  store double %i.ts, ptr %i.tt, align 8, !tbaa !142
  %indvars.iv.next1575 = add nuw nsw i64 %indvars.iv1574, 1 ; 2 uses
  %exitcond1578.not = icmp eq i64 %indvars.iv.next1575, %i.i
  br i1 %exitcond1578.not, label %bb.bj, label %bb.ar

bb.bj:                                            ; preds = %labdiff.exit
  %indvars.iv.next1580 = add nuw nsw i64 %indvars.iv1579, 1 ; 2 uses
  %exitcond1583.not = icmp eq i64 %indvars.iv.next1580, %i.i
  br i1 %exitcond1583.not, label %.preheader1171.us.preheader, label %.preheader1173

._crit_edge1272:                                  ; preds = %._crit_edge1268.us
  tail call void @free(ptr noundef nonnull %i.oc) #13
  %.not966.not = icmp eq i32 %spec.select.us.lcssa, 0
  br i1 %.not966.not, label %.loopexit1170, label %.preheader1168.preheader

.preheader1168.preheader:                         ; preds = %._crit_edge1272
  %wide.trip.count1602 = zext nneg i32 %i.og to i64
  %25 = add nsw i64 %wide.trip.count1592, -1      ; 3 uses
  %xtraiter = and i64 %25, 1
  %26 = icmp eq i32 %i.og, 2
  %unroll_iter = and i64 %25, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod108 = trunc i64 %25 to i1
  br label %.preheader1168

.preheader1168:                                   ; preds = %.preheader1168.preheader, %._crit_edge1278
  %indvars.iv1599 = phi i64 [ 1, %.preheader1168.preheader ], [ %indvars.iv.next1600, %._crit_edge1278 ] ; 2 uses
  %i.tu = mul nuw nsw i64 %indvars.iv1599, %i.i   ; 3 uses
  br i1 %26, label %.epil.preheader, label %.preheader1168.new

.preheader1168.new:                               ; preds = %.preheader1168
  %invariant.op = add nuw nsw i64 1, %i.tu
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %.preheader1168.new
  %indvars.iv1594 = phi i64 [ 1, %.preheader1168.new ], [ %indvars.iv.next1595.1, %bb.bk ] ; 3 uses
  %indvars.iv1594.a = phi i64 [ 0, %.preheader1168.new ], [ %indvars.iv.next1595, %bb.bk ]
  %27 = add nuw nsw i64 %indvars.iv1594, %i.tu    ; 2 uses
  %28 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !56
  %30 = mul i32 %29, 255
  %31 = udiv i32 %30, %spec.select.us.lcssa       ; 3 uses
  %32 = shl i32 %31, 8
  %33 = shl i32 %31, 16
  %34 = or i32 %33, %32
  %35 = or i32 %34, %31
  %36 = or i32 %35, -16777216
  %37 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %27
  store i32 %36, ptr %37, align 4, !tbaa !56
  %i.tv = add nuw nsw i64 %indvars.iv1594, %invariant.op ; 2 uses
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.tv
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !56
  %i.ty = mul i32 %i.tx, 255
  %i.tz = udiv i32 %i.ty, %spec.select.us.lcssa   ; 3 uses
  %i.ua = shl i32 %i.tz, 8
  %i.ub = shl i32 %i.tz, 16
  %i.uc = or i32 %i.ub, %i.ua
  %i.ud = or i32 %i.uc, %i.tz
  %i.ue = or i32 %i.ud, -16777216
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.tv
  store i32 %i.ue, ptr %i.uf, align 4, !tbaa !56
  %indvars.iv.next1595.1 = add nuw nsw i64 %indvars.iv1594, 2 ; 2 uses
  %indvars.iv.next1595 = add nuw nsw i64 %indvars.iv1594.a, 2 ; 2 uses
  %exitcond1598.not = icmp eq i64 %indvars.iv.next1595, %unroll_iter
  br i1 %exitcond1598.not, label %._crit_edge1278.unr-lcssa, label %bb.bk

._crit_edge1278.unr-lcssa:                        ; preds = %bb.bk
  br i1 %lcmp.mod.not, label %._crit_edge1278, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge1278.unr-lcssa, %.preheader1168
  %indvars.iv1594.epil.init = phi i64 [ 1, %.preheader1168 ], [ %indvars.iv.next1595.1, %._crit_edge1278.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod108)
  %38 = add nuw nsw i64 %indvars.iv1594.epil.init, %i.tu ; 2 uses
  %39 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !56
  %41 = mul i32 %40, 255
  %42 = udiv i32 %41, %spec.select.us.lcssa       ; 3 uses
  %43 = shl i32 %42, 8
  %44 = shl i32 %42, 16
  %45 = or i32 %44, %43
  %46 = or i32 %45, %42
  %47 = or i32 %46, -16777216
  %48 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %38
  store i32 %47, ptr %48, align 4, !tbaa !56
  br label %._crit_edge1278

._crit_edge1278:                                  ; preds = %._crit_edge1278.unr-lcssa, %.epil.preheader
  %indvars.iv.next1600 = add nuw nsw i64 %indvars.iv1599, 1 ; 2 uses
  %exitcond1603.not = icmp eq i64 %indvars.iv.next1600, %wide.trip.count1602
  br i1 %exitcond1603.not, label %.loopexit1170, label %.preheader1168

.loopexit1170:                                    ; preds = %._crit_edge1278, %._crit_edge1272
  %i.ug = mul nuw nsw i32 %i.og, %0
  %i.uh = zext nneg i32 %i.ug to i64
  %invariant.gep1910 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.uh ; 2 uses
  %n.vec31 = and i64 %i.i, 508                    ; 3 uses
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %.loopexit1170
  %index33 = phi i64 [ 0, %.loopexit1170 ], [ %index.next34, %vector.body32 ] ; 3 uses
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index33
  store <4 x i32> splat (i32 -16777216), ptr %i.ui, align 4, !tbaa !56
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1910, i64 %index33
  store <4 x i32> splat (i32 -16777216), ptr %i.uj, align 4, !tbaa !56
  %index.next34 = add nuw i64 %index33, 4         ; 2 uses
  %i.uk = icmp eq i64 %index.next34, %n.vec31
  br i1 %i.uk, label %middle.block35, label %vector.body32, !llvm.loop !131

middle.block35:                                   ; preds = %vector.body32
  %cmp.n36 = icmp eq i64 %n.vec31, %i.i
  br i1 %cmp.n36, label %.preheader1167.preheader, label %scalar.ph29

scalar.ph29:                                      ; preds = %middle.block35, %scalar.ph29
  %indvars.iv1604 = phi i64 [ %indvars.iv.next1605, %scalar.ph29 ], [ %n.vec31, %middle.block35 ] ; 3 uses
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv1604
  store i32 -16777216, ptr %i.ul, align 4, !tbaa !56
  %gep1911 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1910, i64 %indvars.iv1604
  store i32 -16777216, ptr %gep1911, align 4, !tbaa !56
  %indvars.iv.next1605 = add nuw nsw i64 %indvars.iv1604, 1 ; 2 uses
  %exitcond1608.not = icmp eq i64 %indvars.iv.next1605, %i.i
  br i1 %exitcond1608.not, label %.preheader1167.preheader, label %scalar.ph29, !llvm.loop !132

.preheader1167.preheader:                         ; preds = %scalar.ph29, %middle.block35
  %invariant.gep1912 = getelementptr [4 x i8], ptr %1, i64 %i.i ; 5 uses
  %xtraiter.a = and i64 %i.i, 3                   ; 3 uses
  %unroll_iter.a = and i64 %i.i, 508
  br label %.preheader1167

.preheader1167:                                   ; preds = %.preheader1167, %.preheader1167.preheader
  %indvars.iv1609 = phi i64 [ 0, %.preheader1167.preheader ], [ %indvars.iv.next1610.3, %.preheader1167 ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader1167.preheader ], [ %niter.next.3, %.preheader1167 ]
  %i.um = mul nuw nsw i64 %indvars.iv1609, %i.i   ; 2 uses
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.um
  store i32 -16777216, ptr %i.un, align 4, !tbaa !56
  %gep1913 = getelementptr [4 x i8], ptr %invariant.gep1912, i64 %i.um
  %i.uo = getelementptr i8, ptr %gep1913, i64 -4
  store i32 -16777216, ptr %i.uo, align 4, !tbaa !56
  %indvars.iv.next1610 = or disjoint i64 %indvars.iv1609, 1
  %i.up = mul nuw nsw i64 %indvars.iv.next1610, %i.i ; 2 uses
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.up
  store i32 -16777216, ptr %i.uq, align 4, !tbaa !56
  %gep1913.1 = getelementptr [4 x i8], ptr %invariant.gep1912, i64 %i.up
  %i.ur = getelementptr i8, ptr %gep1913.1, i64 -4
  store i32 -16777216, ptr %i.ur, align 4, !tbaa !56
  %indvars.iv.next1610.1 = or disjoint i64 %indvars.iv1609, 2
  %i.us = mul nuw nsw i64 %indvars.iv.next1610.1, %i.i ; 2 uses
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.us
  store i32 -16777216, ptr %i.ut, align 4, !tbaa !56
  %gep1913.2 = getelementptr [4 x i8], ptr %invariant.gep1912, i64 %i.us
  %i.uu = getelementptr i8, ptr %gep1913.2, i64 -4
  store i32 -16777216, ptr %i.uu, align 4, !tbaa !56
  %indvars.iv.next1610.2 = or disjoint i64 %indvars.iv1609, 3
  %i.uv = mul nuw nsw i64 %indvars.iv.next1610.2, %i.i ; 2 uses
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.uv
  store i32 -16777216, ptr %i.uw, align 4, !tbaa !56
  %gep1913.3 = getelementptr [4 x i8], ptr %invariant.gep1912, i64 %i.uv
  %i.ux = getelementptr i8, ptr %gep1913.3, i64 -4
  store i32 -16777216, ptr %i.ux, align 4, !tbaa !56
  %indvars.iv.next1610.3 = add nuw nsw i64 %indvars.iv1609, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter.a
  br i1 %niter.ncmp.3, label %.preheader1166.preheader.unr-lcssa, label %.preheader1167

.preheader1166.preheader.unr-lcssa:               ; preds = %.preheader1167
  %lcmp.mod.not.a = icmp eq i64 %xtraiter.a, 0
  br i1 %lcmp.mod.not.a, label %.preheader1166.preheader, label %.preheader1167.epil.preheader

.preheader1167.epil.preheader:                    ; preds = %.preheader1166.preheader.unr-lcssa
  %lcmp.mod108.a = icmp ne i64 %xtraiter.a, 0
  tail call void @llvm.assume(i1 %lcmp.mod108.a)
  br label %.preheader1167.epil

.preheader1167.epil:                              ; preds = %.preheader1167.epil, %.preheader1167.epil.preheader
  %indvars.iv1609.epil = phi i64 [ %indvars.iv.next1610.3, %.preheader1167.epil.preheader ], [ %indvars.iv.next1610.epil, %.preheader1167.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader1167.epil.preheader ], [ %epil.iter.next, %.preheader1167.epil ]
  %i.uy = mul nuw nsw i64 %indvars.iv1609.epil, %i.i ; 2 uses
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.uy
  store i32 -16777216, ptr %i.uz, align 4, !tbaa !56
  %gep1913.epil = getelementptr [4 x i8], ptr %invariant.gep1912, i64 %i.uy
  %i.va = getelementptr i8, ptr %gep1913.epil, i64 -4
  store i32 -16777216, ptr %i.va, align 4, !tbaa !56
  %indvars.iv.next1610.epil = add nuw nsw i64 %indvars.iv1609.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter.a
  br i1 %epil.iter.cmp.not, label %.preheader1166.preheader, label %.preheader1167.epil, !llvm.loop !133

.preheader1166.preheader:                         ; preds = %.preheader1167.epil, %.preheader1166.preheader.unr-lcssa
  tail call fastcc void @makebmp(ptr noundef nonnull @.str.37, ptr noundef %3, i32 noundef %0, i32 noundef %0, ptr noundef %1)
  %i.vb = zext nneg i32 %0 to i64
  %wide.trip.count1626 = zext nneg i32 %i.og to i64 ; 2 uses
  %i.vc = shl nuw nsw i64 %i.i, 2
  %i.vd = shl nuw nsw i64 %i.i, 2
  %i.ve = getelementptr i8, ptr %1, i64 %i.vc
  br label %.preheader1166

.preheader1166:                                   ; preds = %.preheader1166.preheader, %._crit_edge1286
  %indvar = phi i64 [ 0, %.preheader1166.preheader ], [ %indvar.next, %._crit_edge1286 ] ; 2 uses
  %indvars.iv1623 = phi i64 [ 1, %.preheader1166.preheader ], [ %indvars.iv.next1624, %._crit_edge1286 ] ; 2 uses
  %i.vf = mul i64 %i.vd, %indvar
  %scevgep = getelementptr i8, ptr %i.ve, i64 %i.vf
  %i.vg = mul nuw nsw i64 %indvars.iv1623, %i.vb
  %load_initial = load i32, ptr %scevgep, align 4
  %i.vh = and i32 %load_initial, 255
  br label %.preheader1165

.preheader1163.preheader:                         ; preds = %._crit_edge1286
  %i.vi = zext nneg i32 %0 to i64                 ; 3 uses
  %wide.trip.count1640 = zext nneg i32 %i.og to i64 ; 2 uses
  %n.vec39 = and i64 %i.oi, -4                    ; 3 uses
  %i.vj = or disjoint i64 %n.vec39, 1
  %cmp.n47 = icmp eq i64 %i.oi, %n.vec39
  br label %.preheader1163

.preheader1165:                                   ; preds = %.preheader1166, %.preheader1165
  %store_forwarded = phi i32 [ %i.vh, %.preheader1166 ], [ %i.vn, %.preheader1165 ]
  %indvars.iv1618 = phi i64 [ 1, %.preheader1166 ], [ %indvars.iv.next1619, %.preheader1165 ] ; 2 uses
  %i.vk = add nuw nsw i64 %indvars.iv1618, %i.vg  ; 2 uses
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vk ; 2 uses
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !56
  %i.vn = and i32 %i.vm, 255                      ; 3 uses
  %i.vo = shl nuw nsw i32 %i.vn, 1
  %i.vp = add nuw nsw i32 %i.vo, %store_forwarded
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vk
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 4
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !56
  %i.vt = and i32 %i.vs, 255
  %i.vu = add nuw nsw i32 %i.vt, %i.vp
  %i.vv = shl nuw nsw i32 %i.vu, 6
  %i.vw = and i32 %i.vv, 130816
  %i.vx = or disjoint i32 %i.vn, %i.vw
  store i32 %i.vx, ptr %i.vl, align 4, !tbaa !56
  %indvars.iv.next1619 = add nuw nsw i64 %indvars.iv1618, 1 ; 2 uses
  %exitcond1622.not = icmp eq i64 %indvars.iv.next1619, %wide.trip.count1626
  br i1 %exitcond1622.not, label %._crit_edge1286, label %.preheader1165

._crit_edge1286:                                  ; preds = %.preheader1165
  %indvars.iv.next1624 = add nuw nsw i64 %indvars.iv1623, 1 ; 2 uses
  %exitcond1627.not = icmp eq i64 %indvars.iv.next1624, %wide.trip.count1626
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1627.not, label %.preheader1163.preheader, label %.preheader1166

.preheader1163:                                   ; preds = %.preheader1163.preheader, %._crit_edge1293
  %indvars.iv1637 = phi i64 [ 1, %.preheader1163.preheader ], [ %i.wd, %._crit_edge1293 ] ; 3 uses
  %i.vy = mul nuw nsw i64 %indvars.iv1637, %i.vi
  %i.vz = add nsw i64 %indvars.iv1637, -1
  %i.wa = mul nuw nsw i64 %i.vz, %i.vi
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wa ; 2 uses
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vy ; 2 uses
  %i.wd = add nuw nsw i64 %indvars.iv1637, 1      ; 3 uses
  %i.we = mul nuw nsw i64 %i.wd, %i.vi
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.we ; 2 uses
  br label %vector.body40

vector.body40:                                    ; preds = %vector.body40, %.preheader1163
  %index41 = phi i64 [ 0, %.preheader1163 ], [ %index.next45, %vector.body40 ] ; 2 uses
  %i.wg = or disjoint i64 %index41, 1             ; 3 uses
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.wb, i64 %i.wg
  %wide.load42 = load <4 x i32>, ptr %i.wh, align 4, !tbaa !56
  %i.wi = lshr <4 x i32> %wide.load42, splat (i32 8)
  %i.wj = and <4 x i32> %i.wi, splat (i32 255)
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.wc, i64 %i.wg ; 2 uses
  %wide.load43 = load <4 x i32>, ptr %i.wk, align 4, !tbaa !56
  %i.wl = lshr <4 x i32> %wide.load43, splat (i32 7)
  %i.wm = and <4 x i32> %i.wl, splat (i32 510)
  %i.wn = add nuw nsw <4 x i32> %i.wm, %i.wj
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.wf, i64 %i.wg
  %wide.load44 = load <4 x i32>, ptr %i.wo, align 4, !tbaa !56
  %i.wp = lshr <4 x i32> %wide.load44, splat (i32 8)
  %i.wq = and <4 x i32> %i.wp, splat (i32 255)
  %i.wr = add nuw nsw <4 x i32> %i.wq, %i.wn
  %i.ws = lshr <4 x i32> %i.wr, splat (i32 2)     ; 3 uses
  %i.wt = shl nuw nsw <4 x i32> %i.ws, splat (i32 8)
  %i.wu = shl nuw nsw <4 x i32> %i.ws, splat (i32 16)
  %i.wv = or <4 x i32> %i.wu, %i.wt
  %i.ww = or <4 x i32> %i.wv, %i.ws
  %i.wx = or <4 x i32> %i.ww, splat (i32 -16777216)
  store <4 x i32> %i.wx, ptr %i.wk, align 4, !tbaa !56
  %index.next45 = add nuw i64 %index41, 4         ; 2 uses
  %i.wy = icmp eq i64 %index.next45, %n.vec39
  br i1 %i.wy, label %middle.block46, label %vector.body40, !llvm.loop !134

middle.block46:                                   ; preds = %vector.body40
  br i1 %cmp.n47, label %._crit_edge1293, label %.preheader1162

.preheader1162:                                   ; preds = %middle.block46, %.preheader1162
  %indvars.iv1632 = phi i64 [ %indvars.iv.next1633, %.preheader1162 ], [ %i.vj, %middle.block46 ] ; 4 uses
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.wb, i64 %indvars.iv1632
end_hunk_1
