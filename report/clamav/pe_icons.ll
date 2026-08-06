inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 26
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
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !123
  %i.ad = or i64 %i.ac, %i.y
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !123
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
  store i32 %2, ptr %i.a, align 4, !tbaa !57
  store i32 %3, ptr %i.b, align 4, !tbaa !57
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
  store i32 %i.l, ptr %i.c, align 4, !tbaa !77
  store i32 2097153, ptr %i.d, align 4, !tbaa !77
  store i32 0, ptr %i.e, align 4, !tbaa !57
  store i32 %i.k, ptr %i.f, align 4, !tbaa !77
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
  %i.h = lshr i32 %0, 2                           ; 82 uses
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
  %i.l = tail call ptr @cli_max_malloc(i64 noundef %i.k) #13 ; 18 uses
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
  %wide.trip.count1498 = zext nneg i32 %i.h to i64
  %wide.trip.count1508 = zext nneg i32 %i.h to i64 ; 2 uses
  br label %.preheader1157

.preheader1157:                                   ; preds = %bb.c, %bb.t
  %.08821183 = phi i32 [ 0, %bb.c ], [ %i.ie, %bb.t ] ; 8 uses
  %i.v = icmp eq i32 %.08821183, 0
  %i.w = mul i32 %.08821183, %0                   ; 2 uses
  %i.x = add i32 %.08821183, %0
  %i.y = mul i32 %i.x, %0                         ; 2 uses
  %i.z = add i32 %i.w, -1
  %i.aa = add i32 %i.y, -1
  %i.ab = add i32 %.08821183, -1                  ; 2 uses
  %i.ac = mul i32 %i.ab, %0                       ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ad
  %i.af = add i32 %i.ab, %0
  %i.ag = mul i32 %i.af, %0
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ah
  %i.aj = add i32 %i.p, %.08821183
  %i.ak = mul i32 %i.aj, %0
  br label %bb.d

.preheader1151:                                   ; preds = %bb.t
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 116 ; 5 uses
  %i.an = xor i32 %i.h, -1
  %i.ao = add nsw i32 %0, %i.an                   ; 3 uses
  %.not1441 = icmp eq i32 %i.ao, 0
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
  %wide.trip.count1533 = zext i32 %i.ao to i64
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 132
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 144
  br label %.preheader1150.lr.ph

bb.d:                                             ; preds = %.preheader1157, %.loopexit1154
  %.08731181 = phi i32 [ 0, %.preheader1157 ], [ %i.id, %.loopexit1154 ] ; 8 uses
  %i.bh = or i32 %.08731181, %.08821183
  %or.cond = icmp eq i32 %i.bh, 0
  br i1 %or.cond, label %.preheader1152.us, label %bb.i

.preheader1152.us:                                ; preds = %bb.d, %._crit_edge.us
  %indvars.iv1505 = phi i64 [ %indvars.iv.next1506, %._crit_edge.us ], [ 0, %bb.d ] ; 2 uses
  %.09201176.us = phi i32 [ %i.by, %._crit_edge.us ], [ 0, %bb.d ]
  %.09251175.us = phi i32 [ %i.bx, %._crit_edge.us ], [ 0, %bb.d ]
  %i.bi = mul nuw nsw i64 %indvars.iv1505, %i.i
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bi
  br label %bb.e

bb.e:                                             ; preds = %.preheader1152.us, %bb.h
  %indvars.iv1500 = phi i64 [ 0, %.preheader1152.us ], [ %indvars.iv.next1501, %bb.h ] ; 2 uses
  %.19211170.us = phi i32 [ %.09201176.us, %.preheader1152.us ], [ %i.by, %bb.h ]
  %.19261169.us = phi i32 [ %.09251175.us, %.preheader1152.us ], [ %i.bx, %bb.h ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv1500
  %i.bj = load i32, ptr %gep, align 4, !tbaa !57  ; 3 uses
  %i.bk = and i32 %i.bj, 255                      ; 4 uses
  %i.bl = lshr i32 %i.bj, 16
  %i.bm = lshr i32 %i.bj, 8
  %i.bn = and i32 %i.bl, 255                      ; 4 uses
  %i.bo = and i32 %i.bm, 255                      ; 4 uses
  %..i.us = tail call i32 @llvm.umin.i32(i32 %i.bo, i32 %i.bk)
  %spec.select.i.us = tail call i32 @llvm.umin.i32(i32 %i.bn, i32 %..i.us) ; 2 uses
  %.44.i.us = tail call i32 @llvm.umax.i32(i32 %i.bo, i32 %i.bk)
  %i.bp = tail call i32 @llvm.umax.i32(i32 %i.bn, i32 %.44.i.us) ; 6 uses
  %i.bq = sub nsw i32 %i.bp, %spec.select.i.us    ; 4 uses
  %.not.i.us = icmp eq i32 %i.bp, %spec.select.i.us
  br i1 %.not.i.us, label %hsv.exit.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.br = mul nsw i32 %i.bq, 255
  %i.bs = udiv i32 %i.br, %i.bp
  br label %hsv.exit.us

hsv.exit.us:                                      ; preds = %bb.f, %bb.e
  %storemerge.i.us = phi i32 [ %i.bs, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %i.bt = mul i32 %storemerge.i.us, %i.bp
  %i.bu = mul i32 %i.bt, %storemerge.i.us
  %i.bv = uitofp i32 %i.bu to double
  %sqrt.us = tail call double @llvm.sqrt.f64(double %i.bv)
  %i.bw = fptoui double %sqrt.us to i32
  %i.bx = add i32 %.19261169.us, %i.bw            ; 3 uses
  %i.by = add i32 %i.bp, %.19211170.us            ; 3 uses
  %i.bz = icmp ugt i32 %storemerge.i.us, 85
  %i.ca = icmp samesign ugt i32 %i.bp, 85
  %or.cond3.us = and i1 %i.ca, %i.bz
  br i1 %or.cond3.us, label %bb.g, label %bb.h

bb.g:                                             ; preds = %hsv.exit.us
  %i.cb = sub nsw i32 %i.bo, %i.bk
  %i.cc = sub nsw i32 %i.bn, %i.bk
  %i.cd = sub nsw i32 %i.bn, %i.bo
  %i.ce = tail call i32 @llvm.abs.i32(i32 %i.cd, i1 true)
  %i.cf = tail call i32 @llvm.abs.i32(i32 %i.cc, i1 true)
  %i.cg = tail call i32 @llvm.abs.i32(i32 %i.cb, i1 true)
  %i.ch = mul nuw nsw i32 %i.ce, 100
  %i.ci = mul nuw nsw i32 %i.cf, 100
  %i.cj = mul nuw nsw i32 %i.cg, 100
  %i.ck = udiv i32 %i.ch, %i.bq
  %i.cl = udiv i32 %i.ci, %i.bq
  %i.cm = udiv i32 %i.cj, %i.bq
  %i.cn = load <4 x i32>, ptr %i.r, align 8, !tbaa !57
  %i.co = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, i32 %i.cm, i64 0
  %i.cp = insertelement <4 x i32> %i.co, i32 %i.cl, i64 1
  %i.cq = insertelement <4 x i32> %i.cp, i32 %i.ck, i64 2
  %i.cr = sub <4 x i32> %i.cn, %i.cq
  %i.cs = add <4 x i32> %i.cr, <i32 100, i32 100, i32 100, i32 1>
  store <4 x i32> %i.cs, ptr %i.r, align 8, !tbaa !57
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %hsv.exit.us
  %indvars.iv.next1501 = add nuw nsw i64 %indvars.iv1500, 1 ; 2 uses
  %exitcond1504.not = icmp eq i64 %indvars.iv.next1501, %wide.trip.count1508
  br i1 %exitcond1504.not, label %._crit_edge.us, label %bb.e

._crit_edge.us:                                   ; preds = %bb.h
  %indvars.iv.next1506 = add nuw nsw i64 %indvars.iv1505, 1 ; 2 uses
  %exitcond1509.not = icmp eq i64 %indvars.iv.next1506, %wide.trip.count1508
  br i1 %exitcond1509.not, label %.loopexit1154, label %.preheader1152.us

bb.i:                                             ; preds = %bb.d
  %.not975 = icmp eq i32 %.08731181, 0
  br i1 %.not975, label %.lr.ph1166.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.ct = add i32 %i.aa, %.08731181
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !57
  %i.cx = add i32 %i.z, %.08731181
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !57
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %.29221160 = phi i32 [ %i.cw, %.lr.ph.preheader ], [ %i.er, %bb.o ]
  %.29271159 = phi i32 [ %i.da, %.lr.ph.preheader ], [ %i.eq, %bb.o ]
  %i.db = trunc nuw nsw i64 %indvars.iv to i32
  %i.dc = add i32 %.08821183, %i.db
  %i.dd = mul i32 %i.dc, %0
  %i.de = add i32 %i.dd, %.08731181               ; 2 uses
  %i.df = add i32 %i.de, -1
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !57 ; 3 uses
  %i.dj = lshr i32 %i.di, 16
  %i.dk = and i32 %i.dj, 255                      ; 2 uses
  %i.dl = lshr i32 %i.di, 8
  %i.dm = and i32 %i.dl, 255                      ; 2 uses
end_hunk_0
begin_hunk_1_@getmetrics:bb.a
  %i.dy = sub i32 %.29221160, %i.do
  %i.dz = add i32 %i.p, %i.de
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !57 ; 3 uses
  %i.ed = and i32 %i.ec, 255                      ; 4 uses
  %i.ee = lshr i32 %i.ec, 16
  %i.ef = lshr i32 %i.ec, 8
  %i.eg = and i32 %i.ee, 255                      ; 4 uses
  %i.eh = and i32 %i.ef, 255                      ; 4 uses
  %..i1027 = tail call i32 @llvm.umin.i32(i32 %i.eh, i32 %i.ed)
  %spec.select.i1028 = tail call i32 @llvm.umin.i32(i32 %i.eg, i32 %..i1027) ; 2 uses
  %.44.i1029 = tail call i32 @llvm.umax.i32(i32 %i.eh, i32 %i.ed)
  %i.ei = tail call i32 @llvm.umax.i32(i32 %i.eg, i32 %.44.i1029) ; 7 uses
  %i.ej = sub nsw i32 %i.ei, %spec.select.i1028   ; 4 uses
  %.not.i1030 = icmp eq i32 %i.ei, %spec.select.i1028
  br i1 %.not.i1030, label %hsv.exit1032, label %bb.k

bb.k:                                             ; preds = %hsv.exit1026
  %i.ek = mul nsw i32 %i.ej, 255
  %i.el = udiv i32 %i.ek, %i.ei
  br label %hsv.exit1032

hsv.exit1032:                                     ; preds = %hsv.exit1026, %bb.k
  %storemerge.i1031 = phi i32 [ %i.el, %bb.k ], [ 0, %hsv.exit1026 ] ; 4 uses
  %i.em = mul i32 %storemerge.i1031, %i.ei
  %i.en = mul i32 %i.em, %storemerge.i1031
  %i.eo = uitofp i32 %i.en to double
  %sqrt1099 = tail call double @llvm.sqrt.f64(double %i.eo)
  %i.ep = fptoui double %sqrt1099 to i32
  %i.eq = add i32 %i.dx, %i.ep                    ; 2 uses
  %i.er = add i32 %i.dy, %i.ei                    ; 2 uses
  br i1 %i.v, label %bb.m, label %bb.l

bb.l:                                             ; preds = %hsv.exit1032
  %i.es = icmp eq i64 %indvars.iv, %i.u
  %i.et = icmp ugt i32 %storemerge.i1031, 85
  %or.cond5 = and i1 %i.es, %i.et
  %i.eu = icmp samesign ugt i32 %i.ei, 85
  %or.cond1096 = select i1 %or.cond5, i1 %i.eu, i1 false
  br i1 %or.cond1096, label %bb.n, label %bb.o

bb.m:                                             ; preds = %hsv.exit1032
  %.old4 = icmp ugt i32 %storemerge.i1031, 85
  %.old = icmp samesign ugt i32 %i.ei, 85
  %or.cond1097 = select i1 %.old4, i1 %.old, i1 false
  br i1 %or.cond1097, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ev = sub nsw i32 %i.eh, %i.ed
  %i.ew = sub nsw i32 %i.eg, %i.ed
  %i.ex = sub nsw i32 %i.eg, %i.eh
  %i.ey = tail call i32 @llvm.abs.i32(i32 %i.ex, i1 true)
  %i.ez = tail call i32 @llvm.abs.i32(i32 %i.ew, i1 true)
  %i.fa = tail call i32 @llvm.abs.i32(i32 %i.ev, i1 true)
  %i.fb = mul nuw nsw i32 %i.ey, 100
  %i.fc = mul nuw nsw i32 %i.ez, 100
  %i.fd = mul nuw nsw i32 %i.fa, 100
  %i.fe = udiv i32 %i.fb, %i.ej
  %i.ff = udiv i32 %i.fc, %i.ej
  %i.fg = udiv i32 %i.fd, %i.ej
  %i.fh = load <4 x i32>, ptr %i.r, align 8, !tbaa !57
  %i.fi = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, i32 %i.fg, i64 0
  %i.fj = insertelement <4 x i32> %i.fi, i32 %i.ff, i64 1
  %i.fk = insertelement <4 x i32> %i.fj, i32 %i.fe, i64 2
  %i.fl = sub <4 x i32> %i.fh, %i.fk
  %i.fm = add <4 x i32> %i.fl, <i32 100, i32 100, i32 100, i32 1>
  store <4 x i32> %i.fm, ptr %i.r, align 8, !tbaa !57
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit1154, label %.lr.ph

.lr.ph1166.preheader:                             ; preds = %bb.i
  %i.fn = load i32, ptr %i.ai, align 4, !tbaa !57
  %i.fo = load i32, ptr %i.ae, align 4, !tbaa !57
  br label %.lr.ph1166

.lr.ph1166:                                       ; preds = %.lr.ph1166.preheader, %bb.s
  %indvars.iv1495 = phi i64 [ 0, %.lr.ph1166.preheader ], [ %indvars.iv.next1496, %bb.s ] ; 2 uses
  %.39231164 = phi i32 [ %i.fn, %.lr.ph1166.preheader ], [ %i.hc, %bb.s ]
  %.39281163 = phi i32 [ %i.fo, %.lr.ph1166.preheader ], [ %i.hb, %bb.s ]
  %i.fp = trunc nuw nsw i64 %indvars.iv1495 to i32 ; 2 uses
  %i.fq = add i32 %i.ac, %i.fp
  %i.fr = zext i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fr
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !57 ; 3 uses
  %i.fu = lshr i32 %i.ft, 16
  %i.fv = and i32 %i.fu, 255                      ; 2 uses
  %i.fw = lshr i32 %i.ft, 8
  %i.fx = and i32 %i.fw, 255                      ; 2 uses
  %i.fy = and i32 %i.ft, 255                      ; 2 uses
  %..i1033 = tail call i32 @llvm.umin.i32(i32 %i.fx, i32 %i.fy)
  %spec.select.i1034 = tail call i32 @llvm.umin.i32(i32 %i.fv, i32 %..i1033) ; 2 uses
  %.44.i1035 = tail call i32 @llvm.umax.i32(i32 %i.fx, i32 %i.fy)
  %i.fz = tail call i32 @llvm.umax.i32(i32 %i.fv, i32 %.44.i1035) ; 5 uses
  %.not.i1036 = icmp eq i32 %i.fz, %spec.select.i1034
  br i1 %.not.i1036, label %hsv.exit1038, label %bb.p

bb.p:                                             ; preds = %.lr.ph1166
  %i.ga = sub nsw i32 %i.fz, %spec.select.i1034
  %i.gb = mul nsw i32 %i.ga, 255
  %i.gc = udiv i32 %i.gb, %i.fz                   ; 2 uses
  %i.gd = mul i32 %i.gc, %i.fz
  %i.ge = mul i32 %i.gd, %i.gc
  %i.gf = uitofp i32 %i.ge to double
  %i.gg = tail call double @llvm.sqrt.f64(double %i.gf)
  %i.gh = fptoui double %i.gg to i32
  br label %hsv.exit1038

hsv.exit1038:                                     ; preds = %.lr.ph1166, %bb.p
  %storemerge.i1037 = phi i32 [ %i.gh, %bb.p ], [ 0, %.lr.ph1166 ]
  %i.gi = sub i32 %.39281163, %storemerge.i1037
  %i.gj = sub i32 %.39231164, %i.fz
  %i.gk = add i32 %i.ak, %i.fp
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !57 ; 3 uses
  %i.go = and i32 %i.gn, 255                      ; 4 uses
  %i.gp = lshr i32 %i.gn, 16
  %i.gq = lshr i32 %i.gn, 8
  %i.gr = and i32 %i.gp, 255                      ; 4 uses
  %i.gs = and i32 %i.gq, 255                      ; 4 uses
  %..i1039 = tail call i32 @llvm.umin.i32(i32 %i.gs, i32 %i.go)
  %spec.select.i1040 = tail call i32 @llvm.umin.i32(i32 %i.gr, i32 %..i1039) ; 2 uses
  %.44.i1041 = tail call i32 @llvm.umax.i32(i32 %i.gs, i32 %i.go)
  %i.gt = tail call i32 @llvm.umax.i32(i32 %i.gr, i32 %.44.i1041) ; 6 uses
  %i.gu = sub nsw i32 %i.gt, %spec.select.i1040   ; 4 uses
  %.not.i1042 = icmp eq i32 %i.gt, %spec.select.i1040
  br i1 %.not.i1042, label %hsv.exit1044, label %bb.q

bb.q:                                             ; preds = %hsv.exit1038
  %i.gv = mul nsw i32 %i.gu, 255
  %i.gw = udiv i32 %i.gv, %i.gt
  br label %hsv.exit1044

hsv.exit1044:                                     ; preds = %hsv.exit1038, %bb.q
  %storemerge.i1043 = phi i32 [ %i.gw, %bb.q ], [ 0, %hsv.exit1038 ] ; 3 uses
  %i.gx = mul i32 %storemerge.i1043, %i.gt
  %i.gy = mul i32 %i.gx, %storemerge.i1043
  %i.gz = uitofp i32 %i.gy to double
  %sqrt1101 = tail call double @llvm.sqrt.f64(double %i.gz)
  %i.ha = fptoui double %sqrt1101 to i32
  %i.hb = add i32 %i.gi, %i.ha                    ; 2 uses
  %i.hc = add i32 %i.gj, %i.gt                    ; 2 uses
  %i.hd = icmp ugt i32 %storemerge.i1043, 85
  %i.he = icmp samesign ugt i32 %i.gt, 85
  %or.cond8 = and i1 %i.he, %i.hd
  br i1 %or.cond8, label %bb.r, label %bb.s

bb.r:                                             ; preds = %hsv.exit1044
  %i.hf = sub nsw i32 %i.gs, %i.go
  %i.hg = sub nsw i32 %i.gr, %i.go
  %i.hh = sub nsw i32 %i.gr, %i.gs
  %i.hi = tail call i32 @llvm.abs.i32(i32 %i.hh, i1 true)
  %i.hj = tail call i32 @llvm.abs.i32(i32 %i.hg, i1 true)
  %i.hk = tail call i32 @llvm.abs.i32(i32 %i.hf, i1 true)
  %i.hl = mul nuw nsw i32 %i.hi, 100
  %i.hm = mul nuw nsw i32 %i.hj, 100
  %i.hn = mul nuw nsw i32 %i.hk, 100
  %i.ho = udiv i32 %i.hl, %i.gu
  %i.hp = udiv i32 %i.hm, %i.gu
  %i.hq = udiv i32 %i.hn, %i.gu
  %i.hr = load <4 x i32>, ptr %i.r, align 8, !tbaa !57
  %i.hs = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, i32 %i.hq, i64 0
  %i.ht = insertelement <4 x i32> %i.hs, i32 %i.hp, i64 1
  %i.hu = insertelement <4 x i32> %i.ht, i32 %i.ho, i64 2
  %i.hv = sub <4 x i32> %i.hr, %i.hu
  %i.hw = add <4 x i32> %i.hv, <i32 100, i32 100, i32 100, i32 1>
  store <4 x i32> %i.hw, ptr %i.r, align 8, !tbaa !57
  br label %bb.s

bb.s:                                             ; preds = %hsv.exit1044, %bb.r
  %indvars.iv.next1496 = add nuw nsw i64 %indvars.iv1495, 1 ; 2 uses
  %exitcond1499.not = icmp eq i64 %indvars.iv.next1496, %wide.trip.count1498
  br i1 %exitcond1499.not, label %.loopexit1154, label %.lr.ph1166

.loopexit1154:                                    ; preds = %bb.o, %bb.s, %._crit_edge.us
  %.4929 = phi i32 [ %i.hb, %bb.s ], [ %i.bx, %._crit_edge.us ], [ %i.eq, %bb.o ]
  %.4924 = phi i32 [ %i.hc, %bb.s ], [ %i.by, %._crit_edge.us ], [ %i.er, %bb.o ]
  %i.hx = add i32 %.08731181, %i.w
  %i.hy = zext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.hy
  store i32 %.4929, ptr %i.hz, align 4, !tbaa !57
  %i.ia = add i32 %.08731181, %i.y
  %i.ib = zext i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ib
  store i32 %.4924, ptr %i.ic, align 4, !tbaa !57
  %i.id = add i32 %.08731181, 1                   ; 2 uses
  %.not974 = icmp ugt i32 %i.id, %i.o
  br i1 %.not974, label %bb.t, label %bb.d

bb.t:                                             ; preds = %.loopexit1154
  %i.ie = add i32 %.08821183, 1                   ; 2 uses
  %.not964 = icmp ugt i32 %i.ie, %i.o
  br i1 %.not964, label %.preheader1151, label %.preheader1157

.preheader1145:                                   ; preds = %._crit_edge1214.split
  %i.if = mul nuw nsw i32 %i.h, %i.h              ; 12 uses
  %i.ig = load i32, ptr %i.ap, align 4, !tbaa !57
  %i.ih = udiv i32 %i.ig, %i.if
  store i32 %i.ih, ptr %i.ap, align 4, !tbaa !57
  %i.ii = load i32, ptr %i.al, align 4, !tbaa !57
  %i.ij = udiv i32 %i.ii, %i.if
  store i32 %i.ij, ptr %i.al, align 4, !tbaa !57
  %i.ik = load i32, ptr %i.au, align 4, !tbaa !57
  %i.il = udiv i32 %i.ik, %i.if
  store i32 %i.il, ptr %i.au, align 4, !tbaa !57
  %i.im = load i32, ptr %i.am, align 4, !tbaa !57
  %i.in = udiv i32 %i.im, %i.if
  store i32 %i.in, ptr %i.am, align 4, !tbaa !57
  %i.io = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !57
  %i.iq = udiv i32 %i.ip, %i.if
  store i32 %i.iq, ptr %i.io, align 4, !tbaa !57
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !57
  %i.it = udiv i32 %i.is, %i.if
  store i32 %i.it, ptr %i.ir, align 4, !tbaa !57
  %i.iu = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 3 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !57
  %i.iw = udiv i32 %i.iv, %i.if
  store i32 %i.iw, ptr %i.iu, align 4, !tbaa !57
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 3 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !57
  %i.iz = udiv i32 %i.iy, %i.if
  store i32 %i.iz, ptr %i.ix, align 4, !tbaa !57
  %i.ja = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !57
  %i.jc = udiv i32 %i.jb, %i.if
  store i32 %i.jc, ptr %i.ja, align 4, !tbaa !57
  %i.jd = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 4 uses
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !57
  %i.jf = udiv i32 %i.je, %i.if
  store i32 %i.jf, ptr %i.jd, align 4, !tbaa !57
  %i.jg = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !57
  %i.ji = udiv i32 %i.jh, %i.if
  store i32 %i.ji, ptr %i.jg, align 4, !tbaa !57
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 124 ; 3 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !57
  %i.jl = udiv i32 %i.jk, %i.if
  store i32 %i.jl, ptr %i.jj, align 4, !tbaa !57
  %i.jm = load i32, ptr %i.q, align 4, !tbaa !124 ; 4 uses
  %i.jn = mul i32 %i.jm, 100
  %4 = udiv i32 %i.jn, %0
  %i.jo = udiv i32 %4, %0                         ; 2 uses
  %i.jp = icmp ugt i32 %i.jo, 5                   ; 3 uses
  br i1 %i.jp, label %bb.an, label %bb.ao

.preheader1150.lr.ph:                             ; preds = %._crit_edge1214.split, %.preheader1151
  %indvars.iv1536 = phi i64 [ 0, %.preheader1151 ], [ %indvars.iv.next1537, %._crit_edge1214.split ] ; 22 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv1536 ; 2 uses
  store i32 -1, ptr %i.jq, align 4, !tbaa !57
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv1536 ; 2 uses
  store i32 -1, ptr %i.jr, align 4, !tbaa !57
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv1536 ; 2 uses
  %.not1442 = icmp eq i64 %indvars.iv1536, 0      ; 4 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv1536
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv1536
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv1536
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv1536
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv1536 ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv1536
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv1536
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv1536
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv1536
  br i1 %.not1441, label %._crit_edge1214.split, label %.preheader1150.lr.ph.split

.preheader1150.lr.ph.split:                       ; preds = %.preheader1150.lr.ph
  %.promoted1215 = load i32, ptr %i.js, align 4, !tbaa !57
  %.promoted1222 = load i32, ptr %i.jx, align 4, !tbaa !57
  %exitcond1514.not = icmp eq i64 %indvars.iv1536, 1
  %exitcond1519.not = icmp eq i64 %indvars.iv1536, 1
  %exitcond1524.not = icmp eq i64 %indvars.iv1536, 1
  %exitcond1529.not = icmp eq i64 %indvars.iv1536, 1 ; 2 uses
  br label %.preheader1150

.preheader1150:                                   ; preds = %.preheader1150.lr.ph.split, %._crit_edge1209
  %.promoted12121229 = phi i32 [ -1, %.preheader1150.lr.ph.split ], [ %.promoted12121227, %._crit_edge1209 ] ; 2 uses
  %.promoted12111225 = phi i32 [ %.promoted1222, %.preheader1150.lr.ph.split ], [ %.promoted12111223, %._crit_edge1209 ] ; 2 uses
  %.promoted12101221 = phi i32 [ -1, %.preheader1150.lr.ph.split ], [ %.promoted12101219, %._crit_edge1209 ] ; 2 uses
  %.promoted1218 = phi i32 [ %.promoted1215, %.preheader1150.lr.ph.split ], [ %.promoted1216, %._crit_edge1209 ] ; 2 uses
  %.18831213 = phi i32 [ 0, %.preheader1150.lr.ph.split ], [ %i.oa, %._crit_edge1209 ] ; 16 uses
  %i.kc = mul i32 %.18831213, %0
  %i.kd = add i32 %.18831213, %0
  %i.ke = mul i32 %i.kd, %0
  %i.kf = add i32 %.18831213, %i.h                ; 8 uses
  br label %bb.u

bb.u:                                             ; preds = %.preheader1150, %bb.am
  %indvars.iv1530 = phi i64 [ 0, %.preheader1150 ], [ %indvars.iv.next1531, %bb.am ] ; 10 uses
  %.promoted12121228 = phi i32 [ %.promoted12121229, %.preheader1150 ], [ %.promoted12121227, %bb.am ] ; 2 uses
  %.promoted12111224 = phi i32 [ %.promoted12111225, %.preheader1150 ], [ %.promoted12111223, %bb.am ] ; 3 uses
  %.promoted12101220 = phi i32 [ %.promoted12101221, %.preheader1150 ], [ %.promoted12101219, %bb.am ] ; 3 uses
  %.promoted1217 = phi i32 [ %.promoted1218, %.preheader1150 ], [ %.promoted1216, %bb.am ] ; 3 uses
  %i.kg = phi i32 [ %.promoted12121229, %.preheader1150 ], [ %i.nz, %bb.am ] ; 3 uses
  %i.kh = phi i32 [ %.promoted12111225, %.preheader1150 ], [ %i.nc, %bb.am ] ; 4 uses
  %i.ki = phi i32 [ %.promoted12101221, %.preheader1150 ], [ %i.mh, %bb.am ] ; 4 uses
  %i.kj = phi i32 [ %.promoted1218, %.preheader1150 ], [ %i.lm, %bb.am ] ; 4 uses
  %indvars1532 = trunc i64 %indvars.iv1530 to i32 ; 10 uses
  %i.kk = add i32 %i.kc, %indvars1532
  %i.kl = zext i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.kl
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !57 ; 8 uses
  %i.ko = add i32 %i.ke, %indvars1532
  %i.kp = zext i32 %i.ko to i64
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.kp
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !57 ; 8 uses
  %i.ks = icmp ugt i32 %i.kn, %i.kj
  br i1 %i.ks, label %.preheader1149, label %._crit_edge

.preheader1149:                                   ; preds = %bb.u
  br i1 %.not1442, label %._crit_edge.thread, label %.lr.ph1185

.lr.ph1185:                                       ; preds = %.preheader1149
  %i.kt = add i32 %i.h, %indvars1532              ; 2 uses
  %i.ku = load i32, ptr %i.aq, align 4, !tbaa !57 ; 2 uses
  %i.kv = icmp ugt i32 %i.kt, %i.ku
  %i.kw = add i32 %i.ku, %i.h
  %i.kx = zext i32 %i.kw to i64
  %i.ky = icmp samesign ult i64 %indvars.iv1530, %i.kx
  %or.cond986 = and i1 %i.kv, %i.ky
  br i1 %or.cond986, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph1185
  %i.kz = load i32, ptr %i.ar, align 4, !tbaa !57 ; 2 uses
  %i.la = icmp ugt i32 %i.kf, %i.kz
  %i.lb = add i32 %i.kz, %i.h
  %i.lc = icmp ult i32 %.18831213, %i.lb
  %or.cond989 = and i1 %i.la, %i.lc
  br i1 %or.cond989, label %._crit_edge, label %bb.w

bb.w:                                             ; preds = %.lr.ph1185, %bb.v
  br i1 %exitcond1514.not, label %._crit_edge.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ld = load i32, ptr %i.az, align 4, !tbaa !57 ; 2 uses
  %i.le = icmp ugt i32 %i.kt, %i.ld
  %i.lf = add i32 %i.ld, %i.h
  %i.lg = zext i32 %i.lf to i64
  %i.lh = icmp samesign ult i64 %indvars.iv1530, %i.lg
  %or.cond986.1 = and i1 %i.le, %i.lh
  br i1 %or.cond986.1, label %bb.y, label %._crit_edge.thread

bb.y:                                             ; preds = %bb.x
  %i.li = load i32, ptr %i.ba, align 4, !tbaa !57 ; 2 uses
  %i.lj = icmp ugt i32 %i.kf, %i.li
  %i.lk = add i32 %i.li, %i.h
  %i.ll = icmp ult i32 %.18831213, %i.lk
  %or.cond989.1 = and i1 %i.lj, %i.ll
  br i1 %or.cond989.1, label %._crit_edge, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.w, %bb.y, %bb.x, %.preheader1149
  store i32 %i.kn, ptr %i.js, align 4, !tbaa !57
  store i32 %indvars1532, ptr %i.jt, align 4, !tbaa !57
  store i32 %.18831213, ptr %i.ju, align 4, !tbaa !57
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.v, %bb.y, %._crit_edge.thread, %bb.u
  %.promoted1216 = phi i32 [ %.promoted1217, %bb.u ], [ %i.kn, %._crit_edge.thread ], [ %.promoted1217, %bb.y ], [ %.promoted1217, %bb.v ] ; 2 uses
  %i.lm = phi i32 [ %i.kj, %bb.u ], [ %i.kn, %._crit_edge.thread ], [ %i.kj, %bb.y ], [ %i.kj, %bb.v ]
  %i.ln = icmp ult i32 %i.kn, %i.ki
  br i1 %i.ln, label %.preheader1148, label %._crit_edge1191

.preheader1148:                                   ; preds = %._crit_edge
  br i1 %.not1442, label %._crit_edge1191.thread, label %.lr.ph1190

.lr.ph1190:                                       ; preds = %.preheader1148
  %i.lo = add i32 %i.h, %indvars1532              ; 2 uses
  %i.lp = load i32, ptr %i.as, align 4, !tbaa !57 ; 2 uses
  %i.lq = icmp ugt i32 %i.lo, %i.lp
  %i.lr = add i32 %i.lp, %i.h
  %i.ls = zext i32 %i.lr to i64
  %i.lt = icmp samesign ult i64 %indvars.iv1530, %i.ls
  %or.cond992 = and i1 %i.lq, %i.lt
  br i1 %or.cond992, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph1190
  %i.lu = load i32, ptr %i.at, align 4, !tbaa !57 ; 2 uses
  %i.lv = icmp ugt i32 %i.kf, %i.lu
  %i.lw = add i32 %i.lu, %i.h
  %i.lx = icmp ult i32 %.18831213, %i.lw
  %or.cond995 = and i1 %i.lv, %i.lx
  br i1 %or.cond995, label %._crit_edge1191, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph1190, %bb.z
  br i1 %exitcond1519.not, label %._crit_edge1191.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ly = load i32, ptr %i.bb, align 4, !tbaa !57 ; 2 uses
  %i.lz = icmp ugt i32 %i.lo, %i.ly
  %i.ma = add i32 %i.ly, %i.h
  %i.mb = zext i32 %i.ma to i64
  %i.mc = icmp samesign ult i64 %indvars.iv1530, %i.mb
  %or.cond992.1 = and i1 %i.lz, %i.mc
  br i1 %or.cond992.1, label %bb.ac, label %._crit_edge1191.thread

bb.ac:                                            ; preds = %bb.ab
  %i.md = load i32, ptr %i.bc, align 4, !tbaa !57 ; 2 uses
  %i.me = icmp ugt i32 %i.kf, %i.md
  %i.mf = add i32 %i.md, %i.h
  %i.mg = icmp ult i32 %.18831213, %i.mf
  %or.cond995.1 = and i1 %i.me, %i.mg
  br i1 %or.cond995.1, label %._crit_edge1191, label %._crit_edge1191.thread

._crit_edge1191.thread:                           ; preds = %bb.aa, %bb.ac, %bb.ab, %.preheader1148
  store i32 %i.kn, ptr %i.jq, align 4, !tbaa !57
  store i32 %indvars1532, ptr %i.jv, align 4, !tbaa !57
  store i32 %.18831213, ptr %i.jw, align 4, !tbaa !57
  br label %._crit_edge1191

._crit_edge1191:                                  ; preds = %bb.z, %bb.ac, %._crit_edge1191.thread, %._crit_edge
  %.promoted12101219 = phi i32 [ %.promoted12101220, %._crit_edge ], [ %i.kn, %._crit_edge1191.thread ], [ %.promoted12101220, %bb.ac ], [ %.promoted12101220, %bb.z ] ; 2 uses
  %i.mh = phi i32 [ %i.ki, %._crit_edge ], [ %i.kn, %._crit_edge1191.thread ], [ %i.ki, %bb.ac ], [ %i.ki, %bb.z ]
  %i.mi = icmp ugt i32 %i.kr, %i.kh
  br i1 %i.mi, label %.preheader1147, label %._crit_edge1197

.preheader1147:                                   ; preds = %._crit_edge1191
  br i1 %.not1442, label %._crit_edge1197.thread, label %.lr.ph1196

.lr.ph1196:                                       ; preds = %.preheader1147
  %i.mj = add i32 %i.h, %indvars1532              ; 2 uses
  %i.mk = load i32, ptr %i.av, align 4, !tbaa !57 ; 2 uses
  %i.ml = icmp ugt i32 %i.mj, %i.mk
  %i.mm = add i32 %i.mk, %i.h
  %i.mn = zext i32 %i.mm to i64
  %i.mo = icmp samesign ult i64 %indvars.iv1530, %i.mn
  %or.cond998 = and i1 %i.ml, %i.mo
  br i1 %or.cond998, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph1196
  %i.mp = load i32, ptr %i.aw, align 4, !tbaa !57 ; 2 uses
  %i.mq = icmp ugt i32 %i.kf, %i.mp
  %i.mr = add i32 %i.mp, %i.h
  %i.ms = icmp ult i32 %.18831213, %i.mr
  %or.cond1001 = and i1 %i.mq, %i.ms
  br i1 %or.cond1001, label %._crit_edge1197, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph1196, %bb.ad
  br i1 %exitcond1524.not, label %._crit_edge1197.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.mt = load i32, ptr %i.bd, align 4, !tbaa !57 ; 2 uses
  %i.mu = icmp ugt i32 %i.mj, %i.mt
  %i.mv = add i32 %i.mt, %i.h
  %i.mw = zext i32 %i.mv to i64
  %i.mx = icmp samesign ult i64 %indvars.iv1530, %i.mw
  %or.cond998.1 = and i1 %i.mu, %i.mx
  br i1 %or.cond998.1, label %bb.ag, label %._crit_edge1197.thread

bb.ag:                                            ; preds = %bb.af
  %i.my = load i32, ptr %i.be, align 4, !tbaa !57 ; 2 uses
  %i.mz = icmp ugt i32 %i.kf, %i.my
  %i.na = add i32 %i.my, %i.h
  %i.nb = icmp ult i32 %.18831213, %i.na
  %or.cond1001.1 = and i1 %i.mz, %i.nb
  br i1 %or.cond1001.1, label %._crit_edge1197, label %._crit_edge1197.thread

._crit_edge1197.thread:                           ; preds = %bb.ae, %bb.ag, %bb.af, %.preheader1147
  store i32 %i.kr, ptr %i.jx, align 4, !tbaa !57
  store i32 %indvars1532, ptr %i.jy, align 4, !tbaa !57
  store i32 %.18831213, ptr %i.jz, align 4, !tbaa !57
  br label %._crit_edge1197

._crit_edge1197:                                  ; preds = %bb.ad, %bb.ag, %._crit_edge1197.thread, %._crit_edge1191
  %.promoted12111223 = phi i32 [ %.promoted12111224, %._crit_edge1191 ], [ %i.kr, %._crit_edge1197.thread ], [ %.promoted12111224, %bb.ag ], [ %.promoted12111224, %bb.ad ] ; 2 uses
  %i.nc = phi i32 [ %i.kh, %._crit_edge1191 ], [ %i.kr, %._crit_edge1197.thread ], [ %i.kh, %bb.ag ], [ %i.kh, %bb.ad ]
  %i.nd = icmp ult i32 %i.kr, %i.kg
  br i1 %i.nd, label %.preheader1146, label %bb.am

.preheader1146:                                   ; preds = %._crit_edge1197
  br i1 %.not1442, label %._crit_edge1203.thread, label %.lr.ph1202

.lr.ph1202:                                       ; preds = %.preheader1146
  %i.ne = add i32 %i.h, %indvars1532              ; 2 uses
  %i.nf = load i32, ptr %i.ax, align 4, !tbaa !57 ; 2 uses
  %i.ng = icmp ugt i32 %i.ne, %i.nf
  %i.nh = add i32 %i.nf, %i.h
  %i.ni = zext i32 %i.nh to i64
  %i.nj = icmp samesign ult i64 %indvars.iv1530, %i.ni
  %or.cond1004 = and i1 %i.ng, %i.nj
  br i1 %or.cond1004, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph1202
  %i.nk = load i32, ptr %i.ay, align 4, !tbaa !57 ; 2 uses
  %i.nl = icmp ugt i32 %i.kf, %i.nk
  %i.nm = add i32 %i.nk, %i.h
  %i.nn = icmp ult i32 %.18831213, %i.nm
  %or.cond1007 = and i1 %i.nl, %i.nn              ; 2 uses
  %brmerge = or i1 %or.cond1007, %exitcond1529.not
  %.mux = select i1 %or.cond1007, i64 0, i64 %indvars.iv1536
  br i1 %brmerge, label %._crit_edge1203, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph1202
  br i1 %exitcond1529.not, label %._crit_edge1203, label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.no = load i32, ptr %i.bf, align 4, !tbaa !57 ; 2 uses
  %i.np = icmp ugt i32 %i.ne, %i.no
  %i.nq = add i32 %i.no, %i.h
  %i.nr = zext i32 %i.nq to i64
  %i.ns = icmp samesign ult i64 %indvars.iv1530, %i.nr
  %or.cond1004.1 = and i1 %i.np, %i.ns
  br i1 %or.cond1004.1, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.nt = load i32, ptr %i.bg, align 4, !tbaa !57 ; 2 uses
  %i.nu = icmp ugt i32 %i.kf, %i.nt
  %i.nv = add i32 %i.nt, %i.h
  %i.nw = icmp ult i32 %.18831213, %i.nv
  %or.cond1007.1 = and i1 %i.nu, %i.nw
  br i1 %or.cond1007.1, label %._crit_edge1203, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  br label %._crit_edge1203

._crit_edge1203:                                  ; preds = %bb.ah, %bb.al, %bb.ak, %bb.ai
  %.3916.lcssa.ph.in = phi i64 [ %indvars.iv1536, %bb.ai ], [ %.mux, %bb.ah ], [ 1, %bb.ak ], [ %indvars.iv1536, %bb.al ]
  %i.nx = and i64 %.3916.lcssa.ph.in, 4294967295
  %i.ny = icmp eq i64 %i.nx, %indvars.iv1536
  br i1 %i.ny, label %._crit_edge1203.thread, label %bb.am

._crit_edge1203.thread:                           ; preds = %.preheader1146, %._crit_edge1203
  store i32 %i.kr, ptr %i.jr, align 4, !tbaa !57
  store i32 %indvars1532, ptr %i.ka, align 4, !tbaa !57
  store i32 %.18831213, ptr %i.kb, align 4, !tbaa !57
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge1203, %._crit_edge1203.thread, %._crit_edge1197
  %.promoted12121227 = phi i32 [ %.promoted12121228, %._crit_edge1203 ], [ %i.kr, %._crit_edge1203.thread ], [ %.promoted12121228, %._crit_edge1197 ] ; 2 uses
  %i.nz = phi i32 [ %i.kg, %._crit_edge1203 ], [ %i.kr, %._crit_edge1203.thread ], [ %i.kg, %._crit_edge1197 ]
  %indvars.iv.next1531 = add nuw nsw i64 %indvars.iv1530, 1 ; 2 uses
  %exitcond1534.not = icmp eq i64 %indvars.iv.next1531, %wide.trip.count1533
  br i1 %exitcond1534.not, label %._crit_edge1209, label %bb.u

._crit_edge1209:                                  ; preds = %bb.am
  %i.oa = add nuw i32 %.18831213, 1               ; 2 uses
  %exitcond1535.not = icmp eq i32 %i.oa, %umax
  br i1 %exitcond1535.not, label %._crit_edge1214.split, label %.preheader1150

._crit_edge1214.split:                            ; preds = %._crit_edge1209, %.preheader1150.lr.ph
  %indvars.iv.next1537 = add nuw nsw i64 %indvars.iv1536, 1 ; 2 uses
  %exitcond1539.not = icmp eq i64 %indvars.iv.next1537, 3
  br i1 %exitcond1539.not, label %.preheader1145, label %.preheader1150.lr.ph

bb.an:                                            ; preds = %.preheader1145
  %i.ob = load i32, ptr %i.r, align 8, !tbaa !129
  %i.oc = udiv i32 %i.ob, %i.jm
  store i32 %i.oc, ptr %i.r, align 8, !tbaa !129
  %i.od = load i32, ptr %i.s, align 4, !tbaa !130
  %i.oe = udiv i32 %i.od, %i.jm
  store i32 %i.oe, ptr %i.s, align 4, !tbaa !130
  %i.of = load i32, ptr %i.t, align 8, !tbaa !131
  %i.og = udiv i32 %i.of, %i.jm
  br label %bb.ap

bb.ao:                                            ; preds = %.preheader1145
  store i32 0, ptr %i.r, align 8, !tbaa !129
  store i32 0, ptr %i.s, align 4, !tbaa !130
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %storemerge = phi i32 [ 0, %bb.ao ], [ %i.og, %bb.an ]
  %.sink = phi i32 [ 0, %bb.ao ], [ %i.jo, %bb.an ]
  %.0919 = phi i64 [ 6, %bb.ao ], [ 3, %bb.an ]
  store i32 %storemerge, ptr %i.t, align 8, !tbaa !131
  store i32 %.sink, ptr %i.q, align 4, !tbaa !124
  %i.oh = tail call ptr @cli_max_malloc(i64 noundef %i.k) #13 ; 11 uses
  %.not965 = icmp eq ptr %i.oh, null
  br i1 %.not965, label %bb.aq, label %.preheader1143

bb.aq:                                            ; preds = %bb.ap
  %5 = mul nuw nsw i32 %0, %0
  %i.oi = shl nuw nsw i32 %5, 3
  %i.oj = zext nneg i32 %i.oi to i64
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.36, i64 noundef %i.oj) #13
  tail call void @free(ptr noundef %i.l) #13
  br label %bb.cv

.preheader1143:                                   ; preds = %bb.ap, %bb.bj
  %indvars.iv1549 = phi i64 [ %indvars.iv.next1550, %bb.bj ], [ 0, %bb.ap ] ; 2 uses
  %i.ok = mul nuw nsw i64 %indvars.iv1549, %i.i
  br label %bb.ar

.preheader1141.us.preheader:                      ; preds = %bb.bj
  %i.ol = add nsw i32 %0, -1                      ; 7 uses
  %i.om = zext nneg i32 %0 to i64                 ; 3 uses
  %wide.trip.count1562 = zext i32 %i.ol to i64    ; 3 uses
  %i.on = add nsw i64 %wide.trip.count1562, -1    ; 5 uses
  %n.vec = and i64 %i.on, -2                      ; 2 uses
  %i.oo = or i64 %i.on, 1
  %cmp.n = icmp eq i64 %i.on, %n.vec
  br label %.preheader1141.us

.preheader1141.us:                                ; preds = %.preheader1141.us.preheader, %._crit_edge1238.us
  %indvars.iv1559 = phi i64 [ 1, %.preheader1141.us.preheader ], [ %indvars.iv.next1560, %._crit_edge1238.us ] ; 3 uses
  %.29051240.us = phi i32 [ 0, %.preheader1141.us.preheader ], [ %spec.select.us.lcssa, %._crit_edge1238.us ]
  %i.op = add nsw i64 %indvars.iv1559, -1
  %i.oq = mul nuw nsw i64 %i.op, %i.om            ; 3 uses
  %i.or = mul nuw nsw i64 %indvars.iv1559, %i.om  ; 3 uses
  %indvars.iv.next1560 = add nuw nsw i64 %indvars.iv1559, 1 ; 3 uses
  %i.os = mul nuw nsw i64 %indvars.iv.next1560, %i.om ; 3 uses
  %invariant.gep1862 = getelementptr [8 x i8], ptr %i.oh, i64 %i.oq ; 2 uses
  %invariant.gep1864 = getelementptr [8 x i8], ptr %i.oh, i64 %i.or ; 2 uses
  %invariant.gep1866 = getelementptr [8 x i8], ptr %i.oh, i64 %i.os ; 2 uses
  %invariant.gep1868 = getelementptr [8 x i8], ptr %i.oh, i64 %i.oq ; 2 uses
  %invariant.gep1870 = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %i.or ; 2 uses
  %invariant.gep1872 = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %i.os ; 2 uses
  %invariant.gep1874 = getelementptr [8 x i8], ptr %i.oh, i64 %i.oq ; 2 uses
  %invariant.gep1876 = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %i.os ; 2 uses
  %invariant.gep1878 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.or ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.29051240.us, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader1141.us
  %index = phi i64 [ 0, %.preheader1141.us ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i32> [ %broadcast.splat, %.preheader1141.us ], [ %i.pu, %vector.body ]
  %i.ot = or disjoint i64 %index, 1               ; 3 uses
  %i.ou = getelementptr [8 x i8], ptr %invariant.gep1862, i64 %index
  %wide.load = load <2 x double>, ptr %i.ou, align 8, !tbaa !132 ; 2 uses
  %i.ov = getelementptr [8 x i8], ptr %invariant.gep1864, i64 %index
  %wide.load22 = load <2 x double>, ptr %i.ov, align 8, !tbaa !132
  %i.ow = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load22, <2 x double> splat (double 2.000000e+00), <2 x double> %wide.load)
  %i.ox = getelementptr [8 x i8], ptr %invariant.gep1866, i64 %index
  %wide.load23 = load <2 x double>, ptr %i.ox, align 8, !tbaa !132 ; 2 uses
  %i.oy = fadd <2 x double> %i.ow, %wide.load23
  %i.oz = add nuw nsw i64 %index, 2               ; 3 uses
  %i.pa = getelementptr [8 x i8], ptr %invariant.gep1868, i64 %i.oz
  %wide.load24 = load <2 x double>, ptr %i.pa, align 8, !tbaa !132 ; 2 uses
  %i.pb = fsub <2 x double> %i.oy, %wide.load24
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1870, i64 %i.oz
  %wide.load25 = load <2 x double>, ptr %i.pc, align 8, !tbaa !132
  %i.pd = fneg <2 x double> %wide.load25
  %i.pe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pd, <2 x double> splat (double 2.000000e+00), <2 x double> %i.pb)
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1872, i64 %i.oz
  %wide.load26 = load <2 x double>, ptr %i.pf, align 8, !tbaa !132 ; 2 uses
  %i.pg = fsub <2 x double> %i.pe, %wide.load26   ; 2 uses
  %i.ph = getelementptr [8 x i8], ptr %invariant.gep1874, i64 %i.ot
  %wide.load27 = load <2 x double>, ptr %i.ph, align 8, !tbaa !132
  %i.pi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load27, <2 x double> splat (double 2.000000e+00), <2 x double> %wide.load)
  %i.pj = fadd <2 x double> %wide.load24, %i.pi
  %i.pk = fsub <2 x double> %i.pj, %wide.load23
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1876, i64 %i.ot
  %wide.load28 = load <2 x double>, ptr %i.pl, align 8, !tbaa !132
  %i.pm = fneg <2 x double> %wide.load28
  %i.pn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pm, <2 x double> splat (double 2.000000e+00), <2 x double> %i.pk)
  %i.po = fsub <2 x double> %i.pn, %wide.load26   ; 2 uses
  %i.pp = fmul <2 x double> %i.po, %i.po
  %i.pq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pg, <2 x double> %i.pg, <2 x double> %i.pp)
  %i.pr = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.pq)
  %i.ps = fptosi <2 x double> %i.pr to <2 x i32>  ; 2 uses
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1878, i64 %i.ot
  store <2 x i32> %i.ps, ptr %i.pt, align 4, !tbaa !57
  %i.pu = tail call <2 x i32> @llvm.umax.v2i32(<2 x i32> %vec.phi, <2 x i32> %i.ps) ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.pv = icmp eq i64 %index.next, %n.vec
  br i1 %i.pv, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  %i.pw = tail call i32 @llvm.vector.reduce.umax.v2i32(<2 x i32> %i.pu) ; 2 uses
  br i1 %cmp.n, label %._crit_edge1238.us, label %scalar.ph

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %indvars.iv1554 = phi i64 [ %indvars.iv.next1555, %scalar.ph ], [ %i.oo, %middle.block ] ; 5 uses
  %.39061235.us = phi i32 [ %spec.select.us, %scalar.ph ], [ %i.pw, %middle.block ]
  %i.px = add nsw i64 %indvars.iv1554, -1         ; 3 uses
  %gep1863 = getelementptr [8 x i8], ptr %invariant.gep1862, i64 %i.px
  %i.py = load double, ptr %gep1863, align 8, !tbaa !132
  %gep1865 = getelementptr [8 x i8], ptr %invariant.gep1864, i64 %i.px
  %i.pz = load double, ptr %gep1865, align 8, !tbaa !132
  %gep1867 = getelementptr [8 x i8], ptr %invariant.gep1866, i64 %i.px
  %i.qa = load double, ptr %gep1867, align 8, !tbaa !132 ; 2 uses
  %indvars.iv.next1555 = add nuw nsw i64 %indvars.iv1554, 1 ; 5 uses
  %gep1869 = getelementptr [8 x i8], ptr %invariant.gep1868, i64 %indvars.iv.next1555
  %gep1871 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1870, i64 %indvars.iv.next1555
  %i.qb = load double, ptr %gep1871, align 8, !tbaa !132
  %i.qc = fneg double %i.qb
  %gep1873 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1872, i64 %indvars.iv.next1555
  %i.qd = load double, ptr %gep1873, align 8, !tbaa !132 ; 2 uses
  %gep1875 = getelementptr [8 x i8], ptr %invariant.gep1874, i64 %indvars.iv1554
  %i.qe = load <2 x double>, ptr %gep1875, align 8, !tbaa !132 ; 2 uses
  %i.qf = load double, ptr %gep1869, align 8, !tbaa !132
  %i.qg = shufflevector <2 x double> %i.qe, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.qh = insertelement <2 x double> %i.qg, double %i.pz, i64 0
  %i.qi = insertelement <2 x double> poison, double %i.py, i64 0
  %i.qj = shufflevector <2 x double> %i.qi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qh, <2 x double> splat (double 2.000000e+00), <2 x double> %i.qj)
  %i.ql = insertelement <2 x double> %i.qe, double %i.qa, i64 0
  %i.qm = fadd <2 x double> %i.qk, %i.ql
  %i.qn = insertelement <2 x double> poison, double %i.qf, i64 0
  %i.qo = insertelement <2 x double> %i.qn, double %i.qa, i64 1
  %i.qp = fsub <2 x double> %i.qm, %i.qo          ; 2 uses
  %i.qq = extractelement <2 x double> %i.qp, i64 0
  %i.qr = tail call double @llvm.fmuladd.f64(double %i.qc, double 2.000000e+00, double %i.qq)
  %i.qs = fsub double %i.qr, %i.qd                ; 2 uses
  %gep1877 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1876, i64 %indvars.iv1554
  %i.qt = load double, ptr %gep1877, align 8, !tbaa !132
  %i.qu = fneg double %i.qt
  %i.qv = extractelement <2 x double> %i.qp, i64 1
  %i.qw = tail call double @llvm.fmuladd.f64(double %i.qu, double 2.000000e+00, double %i.qv)
  %i.qx = fsub double %i.qw, %i.qd                ; 2 uses
  %i.qy = fmul double %i.qx, %i.qx
  %i.qz = tail call double @llvm.fmuladd.f64(double %i.qs, double %i.qs, double %i.qy)
  %sqrt1102.us = tail call double @llvm.sqrt.f64(double %i.qz)
  %i.ra = fptosi double %sqrt1102.us to i32       ; 2 uses
  %gep1879 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1878, i64 %indvars.iv1554
  store i32 %i.ra, ptr %gep1879, align 4, !tbaa !57
  %spec.select.us = tail call i32 @llvm.umax.i32(i32 %.39061235.us, i32 %i.ra) ; 2 uses
  %exitcond1558.not = icmp eq i64 %indvars.iv.next1555, %wide.trip.count1562
  br i1 %exitcond1558.not, label %._crit_edge1238.us, label %scalar.ph, !llvm.loop !135

._crit_edge1238.us:                               ; preds = %scalar.ph, %middle.block
  %spec.select.us.lcssa = phi i32 [ %i.pw, %middle.block ], [ %spec.select.us, %scalar.ph ] ; 3 uses
  %exitcond1563.not = icmp eq i64 %indvars.iv.next1560, %wide.trip.count1562
  br i1 %exitcond1563.not, label %._crit_edge1242, label %.preheader1141.us

bb.ar:                                            ; preds = %.preheader1143, %labdiff.exit
  %indvars.iv1544 = phi i64 [ 0, %.preheader1143 ], [ %indvars.iv.next1545, %labdiff.exit ] ; 2 uses
  %i.rb = add nuw nsw i64 %indvars.iv1544, %i.ok  ; 2 uses
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.rb
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !57 ; 3 uses
  %i.re = lshr i32 %i.rd, 16
  %i.rf = and i32 %i.re, 255
  %i.rg = lshr i32 %i.rd, 8
  %i.rh = uitofp nneg i32 %i.rf to double
  %i.ri = and i32 %i.rd, 255
  %i.rj = and i32 %i.rg, 255
  %i.rk = uitofp nneg i32 %i.ri to double
  %i.rl = uitofp nneg i32 %i.rj to double
  %i.rm = fdiv double %i.rh, 2.550000e+02         ; 3 uses
  %i.rn = insertelement <2 x double> poison, double %i.rl, i64 0
  %i.ro = insertelement <2 x double> %i.rn, double %i.rk, i64 1
  %i.rp = fdiv <2 x double> %i.ro, splat (double 2.550000e+02) ; 2 uses
  %i.rq = fcmp ogt double %i.rm, f0x3FA4B5DCC0000000
  br i1 %i.rq, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.rr = fadd double %i.rm, f0x3FAC28F5C0000000
  %i.rs = fdiv double %i.rr, f0x3FF0E147A0000000
  %i.rt = tail call double @pow(double noundef %i.rs, double noundef f0x4003333340000000) #13
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.ru = fdiv nnan double %i.rm, f0x4029D70A40000000
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.046.i.i = phi double [ %i.rt, %bb.as ], [ %i.ru, %bb.at ]
  %i.rv = extractelement <2 x double> %i.rp, i64 0 ; 3 uses
  %i.rw = fcmp ogt double %i.rv, f0x3FA4B5DCC0000000
  br i1 %i.rw, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.rx = fadd double %i.rv, f0x3FAC28F5C0000000
  %i.ry = fdiv double %i.rx, f0x3FF0E147A0000000
  %i.rz = tail call double @pow(double noundef %i.ry, double noundef f0x4003333340000000) #13
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.sa = fdiv nnan double %i.rv, f0x4029D70A40000000
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.047.i.i = phi double [ %i.rz, %bb.av ], [ %i.sa, %bb.aw ]
  %i.sb = extractelement <2 x double> %i.rp, i64 1 ; 3 uses
  %i.sc = fcmp ogt double %i.sb, f0x3FA4B5DCC0000000
  br i1 %i.sc, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.sd = fadd double %i.sb, f0x3FAC28F5C0000000
  %i.se = fdiv double %i.sd, f0x3FF0E147A0000000
  %i.sf = tail call double @pow(double noundef %i.se, double noundef f0x4003333340000000) #13
  br label %bb.ba
end_hunk_1
begin_hunk_2_@getmetrics:bb.a
  %.mux139 = select i1 %or.cond1020.us.us.us.us, i64 0, i64 %indvars.iv1718
  br i1 %brmerge138, label %._crit_edge1298.us.us.us.us, label %bb.cb

bb.ca:                                            ; preds = %.preheader1122.us.us.us.us
  br i1 %exitcond1656.not, label %._crit_edge1298.us.us.us.us, label %bb.cb

bb.cb:                                            ; preds = %bb.bz, %bb.ca
  %i.and = load i32, ptr %i.akl, align 4, !tbaa !57 ; 2 uses
  %i.ane = icmp ugt i32 %i.aoq, %i.and
  %i.anf = add i32 %i.and, %i.h
  %i.ang = zext i32 %i.anf to i64
  %i.anh = icmp samesign ult i64 %indvars.iv1657, %i.ang
  %or.cond1017.us.us.us.us.1 = and i1 %i.ane, %i.anh
  br i1 %or.cond1017.us.us.us.us.1, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ani = load i32, ptr %i.akm, align 4, !tbaa !57 ; 2 uses
  %i.anj = icmp ugt i32 %i.alb, %i.ani
  %i.ank = add i32 %i.ani, %i.h
  %i.anl = icmp ult i32 %.98911345.us.us, %i.ank
  %or.cond1020.us.us.us.us.1 = and i1 %i.anj, %i.anl ; 2 uses
  %brmerge140 = or i1 %or.cond1020.us.us.us.us.1, %exitcond1656.not.1
  %.mux141 = select i1 %or.cond1020.us.us.us.us.1, i64 1, i64 %indvars.iv1718
  br i1 %brmerge140, label %._crit_edge1298.us.us.us.us, label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  br i1 %exitcond1656.not.1, label %._crit_edge1298.us.us.us.us, label %bb.ce

bb.ce:                                            ; preds = %bb.cc, %bb.cd
  %i.anm = load i32, ptr %i.akn, align 8, !tbaa !57 ; 2 uses
  %i.ann = icmp ugt i32 %i.aoq, %i.anm
  %i.ano = add i32 %i.anm, %i.h
  %i.anp = zext i32 %i.ano to i64
  %i.anq = icmp samesign ult i64 %indvars.iv1657, %i.anp
  %or.cond1017.us.us.us.us.2 = and i1 %i.ann, %i.anq
  br i1 %or.cond1017.us.us.us.us.2, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.anr = load i32, ptr %i.ako, align 8, !tbaa !57 ; 2 uses
  %i.ans = icmp ugt i32 %i.alb, %i.anr
  %i.ant = add i32 %i.anr, %i.h
  %i.anu = icmp ult i32 %.98911345.us.us, %i.ant
  %or.cond1020.us.us.us.us.2 = and i1 %i.ans, %i.anu ; 2 uses
  %brmerge142 = or i1 %or.cond1020.us.us.us.us.2, %exitcond1656.not.2
  %.mux143 = select i1 %or.cond1020.us.us.us.us.2, i64 2, i64 %indvars.iv1718
  br i1 %brmerge142, label %._crit_edge1298.us.us.us.us, label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  br i1 %exitcond1656.not.2, label %._crit_edge1298.us.us.us.us, label %bb.ch

bb.ch:                                            ; preds = %bb.cf, %bb.cg
  %i.anv = load i32, ptr %i.akp, align 4, !tbaa !57 ; 2 uses
  %i.anw = icmp ugt i32 %i.aoq, %i.anv
  %i.anx = add i32 %i.anv, %i.h
  %i.any = zext i32 %i.anx to i64
  %i.anz = icmp samesign ult i64 %indvars.iv1657, %i.any
  %or.cond1017.us.us.us.us.3 = and i1 %i.anw, %i.anz
  br i1 %or.cond1017.us.us.us.us.3, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.aoa = load i32, ptr %i.akq, align 4, !tbaa !57 ; 2 uses
  %i.aob = icmp ugt i32 %i.alb, %i.aoa
  %i.aoc = add i32 %i.aoa, %i.h
  %i.aod = icmp ult i32 %.98911345.us.us, %i.aoc
  %or.cond1020.us.us.us.us.3 = and i1 %i.aob, %i.aod ; 2 uses
  %brmerge144 = or i1 %or.cond1020.us.us.us.us.3, %exitcond1656.not.3
  %.mux145 = select i1 %or.cond1020.us.us.us.us.3, i64 3, i64 %indvars.iv1718
  br i1 %brmerge144, label %._crit_edge1298.us.us.us.us, label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  br i1 %exitcond1656.not.3, label %._crit_edge1298.us.us.us.us, label %bb.ck

bb.ck:                                            ; preds = %bb.ci, %bb.cj
  %i.aoe = load i32, ptr %i.akr, align 16, !tbaa !57 ; 2 uses
  %i.aof = icmp ugt i32 %i.aoq, %i.aoe
  %i.aog = add i32 %i.aoe, %i.h
  %i.aoh = zext i32 %i.aog to i64
  %i.aoi = icmp samesign ult i64 %indvars.iv1657, %i.aoh
  %or.cond1017.us.us.us.us.4 = and i1 %i.aof, %i.aoi
  br i1 %or.cond1017.us.us.us.us.4, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.aoj = load i32, ptr %i.aks, align 16, !tbaa !57 ; 2 uses
  %i.aok = icmp ugt i32 %i.alb, %i.aoj
  %i.aol = add i32 %i.aoj, %i.h
  %i.aom = icmp ult i32 %.98911345.us.us, %i.aol
  %or.cond1020.us.us.us.us.4 = and i1 %i.aok, %i.aom
  br i1 %or.cond1020.us.us.us.us.4, label %._crit_edge1298.us.us.us.us, label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  br label %._crit_edge1298.us.us.us.us

._crit_edge1298.us.us.us.us:                      ; preds = %bb.ci, %bb.cf, %bb.cc, %bb.bz, %bb.cm, %bb.cl, %bb.cj, %bb.cg, %bb.cd, %bb.ca
  %.5918.lcssa.us.us.us.us.in = phi i64 [ %.mux139, %bb.bz ], [ %indvars.iv1718, %bb.ca ], [ %.mux141, %bb.cc ], [ %indvars.iv1718, %bb.cd ], [ %.mux143, %bb.cf ], [ %indvars.iv1718, %bb.cg ], [ %.mux145, %bb.ci ], [ %indvars.iv1718, %bb.cj ], [ 4, %bb.cl ], [ %indvars.iv1718, %bb.cm ]
  %i.aon = and i64 %.5918.lcssa.us.us.us.us.in, 4294967295
  %i.aoo = icmp eq i64 %i.aon, %indvars.iv1718
  br i1 %i.aoo, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %._crit_edge1298.us.us.us.us
  store i32 %indvars1659, ptr %i.aky, align 4, !tbaa !57
  store i32 %.98911345.us.us, ptr %i.akz, align 4, !tbaa !57
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %._crit_edge1298.us.us.us.us, %._crit_edge1292.us.us.us.us
  %i.aop = phi i32 [ %i.alc, %._crit_edge1298.us.us.us.us ], [ %i.alh, %bb.cn ], [ %i.alc, %._crit_edge1292.us.us.us.us ] ; 3 uses
  %indvars.iv.next1658 = add nuw nsw i64 %indvars.iv1657, 1 ; 2 uses
  %exitcond1662.not = icmp eq i64 %indvars.iv.next1658, %wide.trip.count1661
  br i1 %exitcond1662.not, label %._crit_edge1304.split.us.us.us, label %.lr.ph1303.split.us.us.us.split.us

.preheader1122.us.us.us.us:                       ; preds = %._crit_edge1292.us.us.us.us
  %i.aoq = add i32 %i.h, %indvars1659             ; 5 uses
  %i.aor = load i32, ptr %i.e, align 16, !tbaa !57 ; 2 uses
  %i.aos = icmp ugt i32 %i.aoq, %i.aor
  %i.aot = add i32 %i.aor, %i.h
  %i.aou = zext i32 %i.aot to i64
  %i.aov = icmp samesign ult i64 %indvars.iv1657, %i.aou
  %or.cond1017.us.us.us.us = and i1 %i.aos, %i.aov
  br i1 %or.cond1017.us.us.us.us, label %bb.bz, label %bb.ca

.preheader1123.us.us.us.us:                       ; preds = %.lr.ph1303.split.us.us.us.split.us
  %i.aow = add i32 %i.h, %indvars1659             ; 5 uses
  %i.aox = load i32, ptr %i.b, align 16, !tbaa !57 ; 2 uses
  %i.aoy = icmp ugt i32 %i.aow, %i.aox
  %i.aoz = add i32 %i.aox, %i.h
  %i.apa = zext i32 %i.aoz to i64
  %i.apb = icmp samesign ult i64 %indvars.iv1657, %i.apa
  %or.cond1011.us.us.us.us = and i1 %i.aoy, %i.apb
  br i1 %or.cond1011.us.us.us.us, label %bb.bm, label %bb.bn

._crit_edge1304.split.us.us.us:                   ; preds = %bb.co
  %i.apc = add nuw i32 %.98911345.us.us, 1        ; 2 uses
  %exitcond1675.not = icmp eq i32 %i.apc, %umax
  br i1 %exitcond1675.not, label %._crit_edge1350.split.us, label %.lr.ph1303.split.us.us.us.split.us.preheader

.preheader1124.us.us1376.us:                      ; preds = %.preheader1124.lr.ph.split.us, %._crit_edge1304.split.split.split.us.us.us.split.us.us
  %.us-phi1309.us1365.us1377.us = phi i32 [ %i.apo, %._crit_edge1304.split.split.split.us.us.us.split.us.us ], [ -1, %.preheader1124.lr.ph.split.us ]
  %.us-phi1310.us1363.us1378.us = phi i32 [ %i.apm, %._crit_edge1304.split.split.split.us.us.us.split.us.us ], [ 0, %.preheader1124.lr.ph.split.us ]
  %.98911345.us.us1379.us = phi i32 [ %i.app, %._crit_edge1304.split.split.split.us.us.us.split.us.us ], [ 0, %.preheader1124.lr.ph.split.us ] ; 4 uses
  %i.apd = mul i32 %.98911345.us.us1379.us, %0
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cr, %.preheader1124.us.us1376.us
  %indvars.iv1711 = phi i64 [ %indvars.iv.next1712, %bb.cr ], [ 0, %.preheader1124.us.us1376.us ] ; 2 uses
  %i.ape = phi i32 [ %i.apo, %bb.cr ], [ %.us-phi1309.us1365.us1377.us, %.preheader1124.us.us1376.us ] ; 2 uses
  %i.apf = phi i32 [ %i.apm, %bb.cr ], [ %.us-phi1310.us1363.us1378.us, %.preheader1124.us.us1376.us ] ; 2 uses
  %i.apg = trunc nuw i64 %indvars.iv1711 to i32   ; 3 uses
  %i.aph = add i32 %i.apd, %i.apg
  %i.api = zext i32 %i.aph to i64
  %i.apj = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.api
  %i.apk = load i32, ptr %i.apj, align 4, !tbaa !57 ; 4 uses
  %i.apl = icmp ugt i32 %i.apk, %i.apf
  br i1 %i.apl, label %.preheader1123.us1331.us.us.us.us, label %bb.cq

bb.cq:                                            ; preds = %.preheader1123.us1331.us.us.us.us, %bb.cp
  %i.apm = phi i32 [ %i.apf, %bb.cp ], [ %i.apk, %.preheader1123.us1331.us.us.us.us ] ; 3 uses
  %i.apn = icmp ult i32 %i.apk, %i.ape
  br i1 %i.apn, label %.preheader1122.us1330.us.us.us.us, label %bb.cr

bb.cr:                                            ; preds = %.preheader1122.us1330.us.us.us.us, %bb.cq
  %i.apo = phi i32 [ %i.ape, %bb.cq ], [ %i.apk, %.preheader1122.us1330.us.us.us.us ] ; 3 uses
  %indvars.iv.next1712 = add nuw nsw i64 %indvars.iv1711, 1 ; 2 uses
  %exitcond1715.not = icmp eq i64 %indvars.iv.next1712, %wide.trip.count1714
  br i1 %exitcond1715.not, label %._crit_edge1304.split.split.split.us.us.us.split.us.us, label %bb.cp

.preheader1122.us1330.us.us.us.us:                ; preds = %bb.cq
  store i32 %i.apg, ptr %i.aky, align 4, !tbaa !57
  store i32 %.98911345.us.us1379.us, ptr %i.akz, align 4, !tbaa !57
  br label %bb.cr

.preheader1123.us1331.us.us.us.us:                ; preds = %bb.cp
  store i32 %i.apg, ptr %i.akw, align 4, !tbaa !57
  store i32 %.98911345.us.us1379.us, ptr %i.akx, align 4, !tbaa !57
  br label %bb.cq

._crit_edge1304.split.split.split.us.us.us.split.us.us: ; preds = %bb.cr
  %i.app = add nuw i32 %.98911345.us.us1379.us, 1 ; 2 uses
  %exitcond1717.not = icmp eq i32 %i.app, %umax
  br i1 %exitcond1717.not, label %._crit_edge1350.split.us, label %.preheader1124.us.us1376.us

._crit_edge1350.split.us:                         ; preds = %._crit_edge1304.split.us.us.us, %._crit_edge1304.split.split.split.us.us.us.split.us.us
  %.us-phi1366 = phi i32 [ %i.apo, %._crit_edge1304.split.split.split.us.us.us.split.us.us ], [ %i.aop, %._crit_edge1304.split.us.us.us ]
  %.us-phi1367 = phi i32 [ %i.apm, %._crit_edge1304.split.split.split.us.us.us.split.us.us ], [ %i.amx, %._crit_edge1304.split.us.us.us ]
  store i32 %.us-phi1367, ptr %i.aku, align 4
  store i32 %.us-phi1366, ptr %i.akv, align 4
  br label %._crit_edge1350

._crit_edge1350:                                  ; preds = %.preheader1124.lr.ph, %._crit_edge1350.split.us
  %indvars.iv.next1719 = add nuw nsw i64 %indvars.iv1718, 1 ; 2 uses
  %exitcond1722.not = icmp eq i64 %indvars.iv.next1719, %.0919
  br i1 %exitcond1722.not, label %bb.cs, label %.preheader1124.lr.ph

bb.cs:                                            ; preds = %._crit_edge1350
  tail call void @free(ptr noundef %i.l) #13
  %i.apq = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %2, i64 164 ; 2 uses
  %i.aps = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %2, i64 188 ; 3 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 3 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %2, i64 212 ; 2 uses
  %i.apw = load i32, ptr %i.a, align 16, !tbaa !57
  %6 = udiv i32 %i.apw, %i.h
  %i.apx = udiv i32 %6, %i.h                      ; 2 uses
  store i32 %i.apx, ptr %i.apq, align 8, !tbaa !57
  %i.apy = load i32, ptr %i.b, align 16, !tbaa !57 ; 2 uses
  store i32 %i.apy, ptr %i.apr, align 4, !tbaa !57
  %i.apz = load i32, ptr %i.c, align 16, !tbaa !57 ; 2 uses
  store i32 %i.apz, ptr %i.aps, align 8, !tbaa !57
  %i.aqa = load i32, ptr %i.d, align 16, !tbaa !57
  %7 = udiv i32 %i.aqa, %i.h
  %i.aqb = udiv i32 %7, %i.h
  store i32 %i.aqb, ptr %i.apt, align 4, !tbaa !57
  %i.aqc = load i32, ptr %i.e, align 16, !tbaa !57
  store i32 %i.aqc, ptr %i.apu, align 8, !tbaa !57
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aqe = load i32, ptr %i.aqd, align 4, !tbaa !57
  %8 = udiv i32 %i.aqe, %i.h
  %i.aqf = udiv i32 %8, %i.h                      ; 2 uses
  %i.aqg = getelementptr inbounds nuw i8, ptr %2, i64 156 ; 2 uses
  store i32 %i.aqf, ptr %i.aqg, align 4, !tbaa !57
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aqi = load i32, ptr %i.aqh, align 4, !tbaa !57 ; 2 uses
  %i.aqj = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  store i32 %i.aqi, ptr %i.aqj, align 8, !tbaa !57
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.aql = load i32, ptr %i.aqk, align 4, !tbaa !57 ; 2 uses
  %i.aqm = getelementptr inbounds nuw i8, ptr %2, i64 180 ; 2 uses
  store i32 %i.aql, ptr %i.aqm, align 4, !tbaa !57
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.aqo = load i32, ptr %i.aqn, align 4, !tbaa !57
  %9 = udiv i32 %i.aqo, %i.h
  %i.aqp = udiv i32 %9, %i.h
  %i.aqq = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  store i32 %i.aqp, ptr %i.aqq, align 8, !tbaa !57
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.aqs = getelementptr inbounds nuw i8, ptr %2, i64 204 ; 2 uses
  %i.aqt = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aqv = load i32, ptr %i.aqu, align 8, !tbaa !57
  %10 = udiv i32 %i.aqv, %i.h
  %i.aqw = udiv i32 %10, %i.h                     ; 2 uses
  %i.aqx = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  store i32 %i.aqw, ptr %i.aqx, align 8, !tbaa !57
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aqz = load i32, ptr %i.aqy, align 8, !tbaa !57 ; 2 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %2, i64 172 ; 2 uses
  store i32 %i.aqz, ptr %i.ara, align 4, !tbaa !57
  %i.arb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.arc = load i32, ptr %i.arb, align 8, !tbaa !57 ; 2 uses
  %i.ard = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  store i32 %i.arc, ptr %i.ard, align 8, !tbaa !57
  %i.are = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.arf = load i32, ptr %i.are, align 8, !tbaa !57
  %11 = udiv i32 %i.arf, %i.h
  %i.arg = udiv i32 %11, %i.h
  %i.arh = getelementptr inbounds nuw i8, ptr %2, i64 196 ; 2 uses
  store i32 %i.arg, ptr %i.arh, align 4, !tbaa !57
  %i.ari = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.arj = load <2 x i32>, ptr %i.f, align 16, !tbaa !57
  %i.ark = load <2 x i32>, ptr %i.aqr, align 4, !tbaa !57
  %i.arl = shufflevector <2 x i32> %i.ark, <2 x i32> %i.arj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.arl, ptr %i.aqs, align 4, !tbaa !57
  %i.arm = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.arn = load i32, ptr %i.arm, align 8, !tbaa !57
  %i.aro = getelementptr inbounds nuw i8, ptr %2, i64 220 ; 2 uses
  store i32 %i.arn, ptr %i.aro, align 4, !tbaa !57
  br i1 %i.jp, label %.loopexit, label %.preheader1121

.preheader1121:                                   ; preds = %bb.cs
  %i.arp = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.arq = load i32, ptr %i.arp, align 4, !tbaa !57
  %12 = udiv i32 %i.arq, %i.h
  %i.arr = udiv i32 %12, %i.h
  store i32 %i.arr, ptr %i.ap, align 8, !tbaa !57
  %i.ars = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.art = load i32, ptr %i.ars, align 4, !tbaa !57 ; 2 uses
  store i32 %i.art, ptr %i.aq, align 4, !tbaa !57
  %i.aru = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.arv = load i32, ptr %i.aru, align 4, !tbaa !57 ; 2 uses
  store i32 %i.arv, ptr %i.ar, align 8, !tbaa !57
  %i.arw = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.arx = load i32, ptr %i.arw, align 4, !tbaa !57
  %13 = udiv i32 %i.arx, %i.h
  %i.ary = udiv i32 %13, %i.h
  store i32 %i.ary, ptr %i.al, align 4, !tbaa !57
  store i32 %i.art, ptr %i.as, align 8, !tbaa !57
  store i32 %i.arv, ptr %i.at, align 4, !tbaa !57
  %i.arz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.asa = load i32, ptr %i.arz, align 16, !tbaa !57
  %14 = udiv i32 %i.asa, %i.h
  %i.asb = udiv i32 %14, %i.h
  store i32 %i.asb, ptr %i.io, align 4, !tbaa !57
  %i.asc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.asd = load i32, ptr %i.asc, align 16, !tbaa !57 ; 2 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.asd, ptr %i.ase, align 8, !tbaa !57
  %i.asf = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.asg = load i32, ptr %i.asf, align 16, !tbaa !57 ; 2 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 %i.asg, ptr %i.ash, align 4, !tbaa !57
  %i.asi = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.asj = load i32, ptr %i.asi, align 16, !tbaa !57
  %15 = udiv i32 %i.asj, %i.h
  %i.ask = udiv i32 %15, %i.h
  store i32 %i.ask, ptr %i.ir, align 8, !tbaa !57
  %i.asl = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i32 %i.asd, ptr %i.asl, align 4, !tbaa !57
  %i.asm = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i32 %i.asg, ptr %i.asm, align 8, !tbaa !57
  %i.asn = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.aso = load i32, ptr %i.asn, align 4, !tbaa !57
  %16 = udiv i32 %i.aso, %i.h
  %i.asp = udiv i32 %16, %i.h
  store i32 %i.asp, ptr %i.ja, align 8, !tbaa !57
  %i.asq = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.asr = load i32, ptr %i.asq, align 4, !tbaa !57 ; 2 uses
  %i.ass = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %i.asr, ptr %i.ass, align 4, !tbaa !57
  %i.ast = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.asu = load i32, ptr %i.ast, align 4, !tbaa !57 ; 2 uses
  %i.asv = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.asu, ptr %i.asv, align 8, !tbaa !57
  %i.asw = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.asx = load i32, ptr %i.asw, align 4, !tbaa !57
  %17 = udiv i32 %i.asx, %i.h
  %i.asy = udiv i32 %17, %i.h
  store i32 %i.asy, ptr %i.jd, align 4, !tbaa !57
  %i.asz = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 %i.asr, ptr %i.asz, align 8, !tbaa !57
  %i.ata = getelementptr inbounds nuw i8, ptr %2, i64 76
  store i32 %i.asu, ptr %i.ata, align 4, !tbaa !57
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader1121, %bb.cs
  %i.atb = phi ptr [ @.str.45, %bb.cs ], [ @.str.44, %.preheader1121 ]
  %i.atc = phi ptr [ @.str.43, %bb.cs ], [ @.str.42, %.preheader1121 ]
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.39, i32 noundef %i.apx, i32 noundef %i.apy, i32 noundef %i.apz, i32 noundef %i.aqf, i32 noundef %i.aqi, i32 noundef %i.aql, i32 noundef %i.aqw, i32 noundef %i.aqz, i32 noundef %i.arc) #13
  %i.atd = load i32, ptr %i.apt, align 4, !tbaa !57
  %i.ate = load i32, ptr %i.apu, align 8, !tbaa !57
  %i.atf = load i32, ptr %i.apv, align 4, !tbaa !57
  %i.atg = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.ath = load i32, ptr %i.atg, align 8, !tbaa !57
  %i.ati = getelementptr inbounds nuw i8, ptr %2, i64 204
  %i.atj = load i32, ptr %i.ati, align 4, !tbaa !57
  %i.atk = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.atl = load i32, ptr %i.atk, align 8, !tbaa !57
  %i.atm = getelementptr inbounds nuw i8, ptr %2, i64 196
  %i.atn = load i32, ptr %i.atm, align 4, !tbaa !57
  %i.ato = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.atp = load i32, ptr %i.ato, align 8, !tbaa !57
  %i.atq = getelementptr inbounds nuw i8, ptr %2, i64 220
  %i.atr = load i32, ptr %i.atq, align 4, !tbaa !57
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.40, i32 noundef %i.atd, i32 noundef %i.ate, i32 noundef %i.atf, i32 noundef %i.ath, i32 noundef %i.atj, i32 noundef %i.atl, i32 noundef %i.atn, i32 noundef %i.atp, i32 noundef %i.atr) #13
  %i.ats = load i32, ptr %i.ap, align 8, !tbaa !57
  %i.att = load i32, ptr %i.aq, align 4, !tbaa !57
  %i.atu = load i32, ptr %i.ar, align 8, !tbaa !57
  %i.atv = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.atw = load i32, ptr %i.atv, align 4, !tbaa !57
  %i.atx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aty = load i32, ptr %i.atx, align 8, !tbaa !57
  %i.atz = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.aua = load i32, ptr %i.atz, align 4, !tbaa !57
  %i.aub = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.auc = load i32, ptr %i.aub, align 8, !tbaa !57
  %i.aud = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.aue = load i32, ptr %i.aud, align 4, !tbaa !57
  %i.auf = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aug = load i32, ptr %i.auf, align 8, !tbaa !57
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.41, ptr noundef nonnull %i.atc, i32 noundef %i.ats, i32 noundef %i.att, i32 noundef %i.atu, i32 noundef %i.atw, i32 noundef %i.aty, i32 noundef %i.aua, i32 noundef %i.auc, i32 noundef %i.aue, i32 noundef %i.aug) #13
  %i.auh = load i32, ptr %i.al, align 4, !tbaa !57
  %i.aui = load i32, ptr %i.as, align 8, !tbaa !57
  %i.auj = load i32, ptr %i.at, align 4, !tbaa !57
  %i.auk = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aul = load i32, ptr %i.auk, align 8, !tbaa !57
  %i.aum = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.aun = load i32, ptr %i.aum, align 4, !tbaa !57
  %i.auo = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.aup = load i32, ptr %i.auo, align 8, !tbaa !57
  %i.auq = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.aur = load i32, ptr %i.auq, align 4, !tbaa !57
  %i.aus = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aut = load i32, ptr %i.aus, align 8, !tbaa !57
  %i.auu = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.auv = load i32, ptr %i.auu, align 4, !tbaa !57
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.41, ptr noundef nonnull %i.atb, i32 noundef %i.auh, i32 noundef %i.aui, i32 noundef %i.auj, i32 noundef %i.aul, i32 noundef %i.aun, i32 noundef %i.aup, i32 noundef %i.aur, i32 noundef %i.aut, i32 noundef %i.auv) #13
  %i.auw = load i32, ptr %i.au, align 8, !tbaa !57
  %i.aux = load i32, ptr %i.av, align 4, !tbaa !57
  %i.auy = load i32, ptr %i.aw, align 8, !tbaa !57
  %i.auz = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.ava = load i32, ptr %i.auz, align 4, !tbaa !57
  %i.avb = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.avc = load i32, ptr %i.avb, align 8, !tbaa !57
  %i.avd = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.ave = load i32, ptr %i.avd, align 4, !tbaa !57
  %i.avf = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.avg = load i32, ptr %i.avf, align 8, !tbaa !57
  %i.avh = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.avi = load i32, ptr %i.avh, align 4, !tbaa !57
  %i.avj = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.avk = load i32, ptr %i.avj, align 8, !tbaa !57
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.46, i32 noundef %i.auw, i32 noundef %i.aux, i32 noundef %i.auy, i32 noundef %i.ava, i32 noundef %i.avc, i32 noundef %i.ave, i32 noundef %i.avg, i32 noundef %i.avi, i32 noundef %i.avk) #13
  %i.avl = load i32, ptr %i.am, align 4, !tbaa !57
  %i.avm = load i32, ptr %i.ax, align 8, !tbaa !57
  %i.avn = load i32, ptr %i.ay, align 4, !tbaa !57
  %i.avo = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.avp = load i32, ptr %i.avo, align 8, !tbaa !57
  %i.avq = getelementptr inbounds nuw i8, ptr %2, i64 132
  %i.avr = load i32, ptr %i.avq, align 4, !tbaa !57
  %i.avs = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.avt = load i32, ptr %i.avs, align 8, !tbaa !57
  %i.avu = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.avv = load i32, ptr %i.avu, align 4, !tbaa !57
  %i.avw = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.avx = load i32, ptr %i.avw, align 8, !tbaa !57
  %i.avy = getelementptr inbounds nuw i8, ptr %2, i64 148
  %i.avz = load i32, ptr %i.avy, align 4, !tbaa !57
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.47, i32 noundef %i.avl, i32 noundef %i.avm, i32 noundef %i.avn, i32 noundef %i.avp, i32 noundef %i.avr, i32 noundef %i.avt, i32 noundef %i.avv, i32 noundef %i.avx, i32 noundef %i.avz) #13
  br i1 %i.jp, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %.loopexit
  %i.awa = load i32, ptr %i.r, align 8, !tbaa !129
  %i.awb = load i32, ptr %i.s, align 4, !tbaa !130
  %i.awc = load i32, ptr %i.t, align 8, !tbaa !131
  %i.awd = load i32, ptr %i.q, align 4, !tbaa !124
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.48, i32 noundef %i.awa, i32 noundef %i.awb, i32 noundef %i.awc, i32 noundef %i.awd) #13
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %.loopexit
  %i.awe = load i8, ptr @cli_debug_flag, align 1, !tbaa !77
  %.not969 = icmp eq i8 %i.awe, 0
  br i1 %.not969, label %bb.cv, label %.preheader1120.preheader

.preheader1120.preheader:                         ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  %i.awf = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %0) #13 ; 0 uses
  %.01411 = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.awg = load i32, ptr %i.ap, align 8, !tbaa !57
  %i.awh = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %.01411, ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %i.awg) #13 ; 0 uses
  %i.awi = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  %i.awj = load i32, ptr %i.aq, align 4, !tbaa !57
  %i.awk = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.awi, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.awj) #13 ; 0 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %i.g, i64 7
  %i.awm = load i32, ptr %i.ar, align 8, !tbaa !57
  %i.awn = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.awl, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.awm) #13 ; 0 uses
  %.0 = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %i.awo = load i32, ptr %i.io, align 4, !tbaa !57
  %i.awp = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %i.awo) #13 ; 0 uses
  %i.awq = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.awr = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aws = load i32, ptr %i.awr, align 8, !tbaa !57
  %i.awt = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.awq, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.aws) #13 ; 0 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %i.g, i64 14
  %i.awv = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.aww = load i32, ptr %i.awv, align 4, !tbaa !57
  %i.awx = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.awu, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.aww) #13 ; 0 uses
  %.0.1 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.awy = load i32, ptr %i.ja, align 8, !tbaa !57
  %i.awz = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %.0.1, ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %i.awy) #13 ; 0 uses
  %i.axa = getelementptr inbounds nuw i8, ptr %i.g, i64 19
  %i.axb = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.axc = load i32, ptr %i.axb, align 4, !tbaa !57
  %i.axd = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.axa, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.axc) #13 ; 0 uses
  %i.axe = getelementptr inbounds nuw i8, ptr %i.g, i64 21
  %i.axf = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.axg = load i32, ptr %i.axf, align 8, !tbaa !57
  %i.axh = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.axe, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.axg) #13 ; 0 uses
  %.0.2 = getelementptr inbounds nuw i8, ptr %i.g, i64 23
  %i.axi = load i32, ptr %i.al, align 4, !tbaa !57
  %i.axj = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %.0.2, ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %i.axi) #13 ; 0 uses
  %i.axk = getelementptr inbounds nuw i8, ptr %i.g, i64 26
  %i.axl = load i32, ptr %i.as, align 8, !tbaa !57
  %i.axm = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.axk, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.axl) #13 ; 0 uses
  %i.axn = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.axo = load i32, ptr %i.at, align 4, !tbaa !57
  %i.axp = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.axn, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.axo) #13 ; 0 uses
  %i.axq = getelementptr inbounds nuw i8, ptr %i.g, i64 30
  %i.axr = load i32, ptr %i.ir, align 8, !tbaa !57
  %i.axs = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.axq, ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %i.axr) #13 ; 0 uses
  %i.axt = getelementptr inbounds nuw i8, ptr %i.g, i64 33
  %i.axu = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.axv = load i32, ptr %i.axu, align 4, !tbaa !57
  %i.axw = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.axt, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.axv) #13 ; 0 uses
  %i.axx = getelementptr inbounds nuw i8, ptr %i.g, i64 35
  %i.axy = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.axz = load i32, ptr %i.axy, align 8, !tbaa !57
  %i.aya = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.axx, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.axz) #13 ; 0 uses
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.g, i64 37
  %i.ayc = load i32, ptr %i.jd, align 4, !tbaa !57
  %i.ayd = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ayb, ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %i.ayc) #13 ; 0 uses
  %i.aye = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ayf = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ayg = load i32, ptr %i.ayf, align 8, !tbaa !57
  %i.ayh = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.aye, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.ayg) #13 ; 0 uses
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.g, i64 42
  %i.ayj = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.ayk = load i32, ptr %i.ayj, align 4, !tbaa !57
  %i.ayl = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ayi, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.ayk) #13 ; 0 uses
  %i.aym = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.ayn = load i32, ptr %i.au, align 8, !tbaa !57
  %i.ayo = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.aym, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.ayn) #13 ; 0 uses
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.g, i64 46
  %i.ayq = load i32, ptr %i.av, align 4, !tbaa !57
  %i.ayr = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ayp, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.ayq) #13 ; 0 uses
  %i.ays = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ayt = load i32, ptr %i.aw, align 8, !tbaa !57
  %i.ayu = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ays, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.ayt) #13 ; 0 uses
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.g, i64 50
  %i.ayw = load i32, ptr %i.iu, align 4, !tbaa !57
  %i.ayx = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ayv, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.ayw) #13 ; 0 uses
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %i.ayz = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.aza = load i32, ptr %i.ayz, align 8, !tbaa !57
  %i.azb = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ayy, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.aza) #13 ; 0 uses
  %i.azc = getelementptr inbounds nuw i8, ptr %i.g, i64 54
  %i.azd = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.aze = load i32, ptr %i.azd, align 4, !tbaa !57
  %i.azf = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.azc, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.aze) #13 ; 0 uses
  %i.azg = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.azh = load i32, ptr %i.jg, align 8, !tbaa !57
  %i.azi = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.azg, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.azh) #13 ; 0 uses
  %i.azj = getelementptr inbounds nuw i8, ptr %i.g, i64 58
  %i.azk = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.azl = load i32, ptr %i.azk, align 4, !tbaa !57
  %i.azm = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.azj, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.azl) #13 ; 0 uses
  %i.azn = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  %i.azo = getelementptr inbounds nuw i8, ptr %2, i64 112
end_hunk_2
