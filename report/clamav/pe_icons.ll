Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pe_icons?download=true
inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 27
begin_hunk_0_@cli_icongroupset_add:bb.a
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
  %i.t = zext nneg i32 %i.o to i64
  %i.u = add nuw nsw i32 %0, 1
  %i.v = sub nsw i32 %i.u, %i.h                   ; 2 uses
  %i.w = zext nneg i32 %0 to i64                  ; 10 uses
  %wide.trip.count1548 = zext i32 %i.v to i64     ; 2 uses
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 10 uses
  %wide.trip.count1528 = zext nneg i32 %i.h to i64
  %wide.trip.count1538 = zext nneg i32 %i.h to i64 ; 2 uses
  br label %.preheader1187

.preheader1187:                                   ; preds = %bb.c, %bb.t
  %indvars.iv1545 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next1546, %bb.t ] ; 8 uses
  %i.x = icmp eq i64 %indvars.iv1545, 0
  %i.y = mul nuw nsw i64 %indvars.iv1545, %i.w    ; 2 uses
  %i.z = add nuw nsw i64 %indvars.iv1545, %i.w
  %i.aa = mul nuw nsw i64 %i.z, %i.w              ; 2 uses
  %i.ab = add nuw i64 %i.y, 4294967295
  %i.ac = add nuw i64 %i.aa, 4294967295
  %i.ad = add nsw i64 %indvars.iv1545, -1         ; 2 uses
  %i.ae = trunc i64 %i.ad to i32
  %i.af = mul i32 %0, %i.ae                       ; 2 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ag
  %i.ai = trunc i64 %i.ad to i32
  %i.aj = add i32 %0, %i.ai
  %i.ak = mul i32 %i.aj, %0
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.al
  %i.an = and i64 %i.aa, 4294967295
  %i.ao = and i64 %i.y, 4294967295
  %i.ap = trunc i64 %indvars.iv1545 to i32
  %i.aq = add i32 %i.o, %i.ap
  %i.ar = mul i32 %i.aq, %0
  %invariant.gep1903 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ao
  %invariant.gep1905 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.an
  br label %bb.d

.preheader1181:                                   ; preds = %bb.t
  %i.as = sub nsw i32 %0, %i.h
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 116 ; 5 uses
  %i.av = xor i32 %i.h, -1
  %i.aw = add nsw i32 %0, %i.av                   ; 3 uses
  %.not1471 = icmp eq i32 %i.aw, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 140 ; 4 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.as, i32 1) ; 3 uses
  %wide.trip.count1573 = zext i32 %i.aw to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 132
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 144
  br label %.preheader1180.lr.ph

bb.d:                                             ; preds = %.preheader1187, %.loopexit1184
  %indvars.iv1540 = phi i64 [ 0, %.preheader1187 ], [ %indvars.iv.next1541, %.loopexit1184 ] ; 8 uses
  %i.bp = trunc nuw nsw i64 %indvars.iv1540 to i32
  %i.bq = or i64 %indvars.iv1540, %indvars.iv1545
  %or.cond = icmp eq i64 %i.bq, 0
  br i1 %or.cond, label %.preheader1182.us, label %bb.i

.preheader1182.us:                                ; preds = %bb.d, %._crit_edge.us
  %indvars.iv1535 = phi i64 [ %indvars.iv.next1536, %._crit_edge.us ], [ 0, %bb.d ] ; 2 uses
  %.08951207.us = phi i32 [ %i.ch, %._crit_edge.us ], [ 0, %bb.d ]
  %.09001206.us = phi i32 [ %i.cg, %._crit_edge.us ], [ 0, %bb.d ]
  %i.br = mul nuw nsw i64 %indvars.iv1535, %i.i
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.br
  br label %bb.e

bb.e:                                             ; preds = %.preheader1182.us, %bb.h
  %indvars.iv1530 = phi i64 [ 0, %.preheader1182.us ], [ %indvars.iv.next1531, %bb.h ] ; 2 uses
  %.18961201.us = phi i32 [ %.08951207.us, %.preheader1182.us ], [ %i.ch, %bb.h ]
  %.19011200.us = phi i32 [ %.09001206.us, %.preheader1182.us ], [ %i.cg, %bb.h ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv1530
  %i.bs = load i32, ptr %gep, align 4, !tbaa !56  ; 3 uses
  %i.bt = lshr i32 %i.bs, 16
  %i.bu = and i32 %i.bt, 255                      ; 4 uses
  %i.bv = lshr i32 %i.bs, 8
  %i.bw = and i32 %i.bv, 255                      ; 4 uses
  %i.bx = and i32 %i.bs, 255                      ; 4 uses
  %..i.us = tail call i32 @llvm.umin.i32(i32 %i.bw, i32 %i.bx)
  %spec.select.i.us = tail call i32 @llvm.umin.i32(i32 %i.bu, i32 %..i.us) ; 2 uses
  %.44.i.us = tail call i32 @llvm.umax.i32(i32 %i.bw, i32 %i.bx)
  %i.by = tail call i32 @llvm.umax.i32(i32 %i.bu, i32 %.44.i.us) ; 6 uses
  %i.bz = sub nuw nsw i32 %i.by, %spec.select.i.us ; 2 uses
  %.not.i.us = icmp eq i32 %i.by, %spec.select.i.us
  br i1 %.not.i.us, label %hsv.exit.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ca = trunc nuw nsw i32 %i.bz to i16
  %.lhs.trunc1102.us = mul nuw i16 %i.ca, 255
  %.rhs.trunc1103.us = trunc nuw nsw i32 %i.by to i16
  %i.cb = udiv i16 %.lhs.trunc1102.us, %.rhs.trunc1103.us
  %.zext1104.us = zext i16 %i.cb to i32
  br label %hsv.exit.us

hsv.exit.us:                                      ; preds = %bb.f, %bb.e
  %storemerge.i.us = phi i32 [ %.zext1104.us, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %i.cc = mul nuw nsw i32 %storemerge.i.us, %i.by
  %i.cd = mul i32 %i.cc, %storemerge.i.us
  %i.ce = uitofp i32 %i.cd to double
  %sqrt.us = tail call double @llvm.sqrt.f64(double %i.ce)
  %i.cf = fptoui double %sqrt.us to i32
  %i.cg = add i32 %.19011200.us, %i.cf            ; 3 uses
  %i.ch = add i32 %i.by, %.18961201.us            ; 3 uses
  %i.ci = icmp samesign ugt i32 %storemerge.i.us, 85
  %i.cj = icmp samesign ugt i32 %i.by, 85
  %or.cond3.us = and i1 %i.cj, %i.ci
  br i1 %or.cond3.us, label %bb.g, label %bb.h

bb.g:                                             ; preds = %hsv.exit.us
  %i.ck = sub nsw i32 %i.bw, %i.bx
  %i.cl = tail call i32 @llvm.abs.i32(i32 %i.ck, i1 true)
  %i.cm = trunc nsw i32 %i.cl to i16
  %.rhs.trunc.us = trunc nuw nsw i32 %i.bz to i16
  %i.cn = sub nsw i32 %i.bu, %i.bx
  %i.co = tail call i32 @llvm.abs.i32(i32 %i.cn, i1 true)
  %i.cp = trunc nsw i32 %i.co to i16
  %i.cq = sub nsw i32 %i.bu, %i.bw
  %i.cr = tail call i32 @llvm.abs.i32(i32 %i.cq, i1 true)
  %i.cs = trunc nsw i32 %i.cr to i16
  %i.ct = insertelement <4 x i16> <i16 poison, i16 poison, i16 poison, i16 1>, i16 %i.cm, i64 0
  %i.cu = insertelement <4 x i16> %i.ct, i16 %i.cp, i64 1
  %i.cv = insertelement <4 x i16> %i.cu, i16 %i.cs, i64 2
  %i.cw = mul nuw nsw <4 x i16> %i.cv, <i16 100, i16 100, i16 100, i16 0>
  %i.cx = insertelement <4 x i16> <i16 poison, i16 1, i16 poison, i16 poison>, i16 %.rhs.trunc.us, i64 0
  %i.cy = shufflevector <4 x i16> %i.cx, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cz = udiv <4 x i16> %i.cw, %i.cy
  %i.da = zext nneg <4 x i16> %i.cz to <4 x i32>
  %i.db = load <4 x i32>, ptr %i.q, align 8, !tbaa !56
  %i.dc = sub <4 x i32> %i.db, %i.da
  %i.dd = add <4 x i32> %i.dc, <i32 100, i32 100, i32 100, i32 1>
  store <4 x i32> %i.dd, ptr %i.q, align 8, !tbaa !56
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
  %i.de = add i64 %i.ac, %indvars.iv1540
  %i.df = and i64 %i.de, 4294967295
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !56
  %i.di = add i64 %i.ab, %indvars.iv1540
  %i.dj = and i64 %i.di, 4294967295
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !56
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %.28971191 = phi i32 [ %i.dh, %.lr.ph.preheader ], [ %i.fc, %bb.o ]
  %.29021190 = phi i32 [ %i.dl, %.lr.ph.preheader ], [ %i.fb, %bb.o ]
  %i.dm = add nuw nsw i64 %indvars.iv, %indvars.iv1545
  %i.dn = trunc nuw i64 %i.dm to i32
  %i.do = mul i32 %0, %i.dn
  %i.dp = add i32 %i.do, %i.bp                    ; 2 uses
  %i.dq = add i32 %i.dp, -1
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !56 ; 3 uses
  %i.du = lshr i32 %i.dt, 16
  %i.dv = and i32 %i.du, 255                      ; 2 uses
  %i.dw = lshr i32 %i.dt, 8
  %i.dx = and i32 %i.dw, 255                      ; 2 uses
  %i.dy = and i32 %i.dt, 255                      ; 2 uses
  %..i1021 = tail call i32 @llvm.umin.i32(i32 %i.dx, i32 %i.dy)
  %spec.select.i1022 = tail call i32 @llvm.umin.i32(i32 %i.dv, i32 %..i1021) ; 2 uses
  %.44.i1023 = tail call i32 @llvm.umax.i32(i32 %i.dx, i32 %i.dy)
  %i.dz = tail call i32 @llvm.umax.i32(i32 %i.dv, i32 %.44.i1023) ; 5 uses
  %.not.i1024 = icmp eq i32 %i.dz, %spec.select.i1022
  br i1 %.not.i1024, label %hsv.exit1026, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.ea = sub nuw nsw i32 %i.dz, %spec.select.i1022
  %i.eb = trunc nuw nsw i32 %i.ea to i16
  %.lhs.trunc1132 = mul nuw i16 %i.eb, 255
  %.rhs.trunc1133 = trunc nuw nsw i32 %i.dz to i16
  %i.ec = udiv i16 %.lhs.trunc1132, %.rhs.trunc1133
  %.zext1134 = zext i16 %i.ec to i32              ; 2 uses
  %i.ed = mul nuw nsw i32 %i.dz, %.zext1134
  %i.ee = mul i32 %i.ed, %.zext1134
end_hunk_0
begin_hunk_1_@getmetrics:bb.a
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wd
  store i32 -16777216, ptr %i.we, align 4, !tbaa !56
  %gep1928.3 = getelementptr [4 x i8], ptr %invariant.gep1927, i64 %i.wd
  %i.wf = getelementptr i8, ptr %gep1928.3, i64 -4
  store i32 -16777216, ptr %i.wf, align 4, !tbaa !56
  %indvars.iv.next1620.3 = add nuw nsw i64 %indvars.iv1619, 4 ; 2 uses
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
  %indvars.iv1619.epil = phi i64 [ %indvars.iv.next1620.3, %.preheader1167.epil.preheader ], [ %indvars.iv.next1620.epil, %.preheader1167.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader1167.epil.preheader ], [ %epil.iter.next, %.preheader1167.epil ]
  %i.wg = mul nuw nsw i64 %indvars.iv1619.epil, %i.i ; 2 uses
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wg
  store i32 -16777216, ptr %i.wh, align 4, !tbaa !56
  %gep1928.epil = getelementptr [4 x i8], ptr %invariant.gep1927, i64 %i.wg
  %i.wi = getelementptr i8, ptr %gep1928.epil, i64 -4
  store i32 -16777216, ptr %i.wi, align 4, !tbaa !56
  %indvars.iv.next1620.epil = add nuw nsw i64 %indvars.iv1619.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter108
  br i1 %epil.iter.cmp.not, label %.preheader1166.preheader, label %.preheader1167.epil, !llvm.loop !133

.preheader1166.preheader:                         ; preds = %.preheader1167.epil, %.preheader1166.preheader.unr-lcssa
  tail call fastcc void @makebmp(ptr noundef nonnull @.str.37, ptr noundef %3, i32 noundef %0, i32 noundef %0, ptr noundef %1)
  %wide.trip.count1636 = zext nneg i32 %i.ot to i64 ; 2 uses
  %i.wj = shl nuw nsw i64 %i.i, 2
  %i.wk = shl nuw nsw i64 %i.i, 2
  %i.wl = getelementptr i8, ptr %1, i64 %i.wj
  br label %.preheader1166

.preheader1166:                                   ; preds = %.preheader1166.preheader, %._crit_edge1286
  %indvar = phi i64 [ 0, %.preheader1166.preheader ], [ %indvar.next, %._crit_edge1286 ] ; 2 uses
  %indvars.iv1633 = phi i64 [ 1, %.preheader1166.preheader ], [ %indvars.iv.next1634, %._crit_edge1286 ] ; 2 uses
  %i.wm = mul i64 %i.wk, %indvar
  %scevgep = getelementptr i8, ptr %i.wl, i64 %i.wm
  %i.wn = mul nuw nsw i64 %indvars.iv1633, %i.w
  %load_initial = load i32, ptr %scevgep, align 4
  %i.wo = and i32 %load_initial, 255
  br label %.preheader1165

.preheader1163.preheader:                         ; preds = %._crit_edge1286
  %wide.trip.count1650 = zext nneg i32 %i.ot to i64 ; 2 uses
  %i.wp = add nsw i64 %wide.trip.count1602, -1    ; 2 uses
  %n.vec39 = and i64 %i.wp, -4                    ; 3 uses
  %i.wq = or disjoint i64 %n.vec39, 1
  %cmp.n47 = icmp eq i64 %i.wp, %n.vec39
  br label %.preheader1163

.preheader1165:                                   ; preds = %.preheader1166, %.preheader1165
  %store_forwarded = phi i32 [ %i.wo, %.preheader1166 ], [ %i.wu, %.preheader1165 ]
  %indvars.iv1628 = phi i64 [ 1, %.preheader1166 ], [ %indvars.iv.next1629, %.preheader1165 ] ; 2 uses
  %i.wr = add nuw nsw i64 %indvars.iv1628, %i.wn  ; 2 uses
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wr ; 2 uses
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !56
  %i.wu = and i32 %i.wt, 255                      ; 3 uses
  %i.wv = shl nuw nsw i32 %i.wu, 1
  %i.ww = add nuw nsw i32 %i.wv, %store_forwarded
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wr
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 4
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !56
  %i.xa = and i32 %i.wz, 255
  %i.xb = add nuw nsw i32 %i.xa, %i.ww
  %i.xc = shl nuw nsw i32 %i.xb, 6
  %i.xd = and i32 %i.xc, 130816
  %i.xe = or disjoint i32 %i.wu, %i.xd
  store i32 %i.xe, ptr %i.ws, align 4, !tbaa !56
  %indvars.iv.next1629 = add nuw nsw i64 %indvars.iv1628, 1 ; 2 uses
  %exitcond1632.not = icmp eq i64 %indvars.iv.next1629, %wide.trip.count1636
  br i1 %exitcond1632.not, label %._crit_edge1286, label %.preheader1165

._crit_edge1286:                                  ; preds = %.preheader1165
  %indvars.iv.next1634 = add nuw nsw i64 %indvars.iv1633, 1 ; 2 uses
  %exitcond1637.not = icmp eq i64 %indvars.iv.next1634, %wide.trip.count1636
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1637.not, label %.preheader1163.preheader, label %.preheader1166

.preheader1163:                                   ; preds = %.preheader1163.preheader, %._crit_edge1293
  %indvars.iv1647 = phi i64 [ 1, %.preheader1163.preheader ], [ %i.xk, %._crit_edge1293 ] ; 3 uses
  %i.xf = mul nuw nsw i64 %indvars.iv1647, %i.w
  %i.xg = add nsw i64 %indvars.iv1647, -1
  %i.xh = mul nuw nsw i64 %i.xg, %i.w
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.xh ; 2 uses
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.xf ; 2 uses
  %i.xk = add nuw nsw i64 %indvars.iv1647, 1      ; 3 uses
  %i.xl = mul nuw nsw i64 %i.xk, %i.w
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.xl ; 2 uses
  br label %vector.body40

vector.body40:                                    ; preds = %vector.body40, %.preheader1163
  %index41 = phi i64 [ 0, %.preheader1163 ], [ %index.next45, %vector.body40 ] ; 2 uses
  %i.xn = or disjoint i64 %index41, 1             ; 3 uses
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.xi, i64 %i.xn
  %wide.load42 = load <4 x i32>, ptr %i.xo, align 4, !tbaa !56
  %i.xp = lshr <4 x i32> %wide.load42, splat (i32 8)
  %i.xq = and <4 x i32> %i.xp, splat (i32 255)
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.xj, i64 %i.xn ; 2 uses
  %wide.load43 = load <4 x i32>, ptr %i.xr, align 4, !tbaa !56
  %i.xs = lshr <4 x i32> %wide.load43, splat (i32 7)
  %i.xt = and <4 x i32> %i.xs, splat (i32 510)
  %i.xu = add nuw nsw <4 x i32> %i.xt, %i.xq
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.xm, i64 %i.xn
  %wide.load44 = load <4 x i32>, ptr %i.xv, align 4, !tbaa !56
  %i.xw = lshr <4 x i32> %wide.load44, splat (i32 8)
  %i.xx = and <4 x i32> %i.xw, splat (i32 255)
  %i.xy = add nuw nsw <4 x i32> %i.xx, %i.xu
  %i.xz = lshr <4 x i32> %i.xy, splat (i32 2)     ; 3 uses
  %i.ya = shl nuw nsw <4 x i32> %i.xz, splat (i32 8)
  %i.yb = shl nuw nsw <4 x i32> %i.xz, splat (i32 16)
  %i.yc = or <4 x i32> %i.yb, %i.ya
  %i.yd = or <4 x i32> %i.yc, %i.xz
  %i.ye = or <4 x i32> %i.yd, splat (i32 -16777216)
  store <4 x i32> %i.ye, ptr %i.xr, align 4, !tbaa !56
  %index.next45 = add nuw i64 %index41, 4         ; 2 uses
  %i.yf = icmp eq i64 %index.next45, %n.vec39
  br i1 %i.yf, label %middle.block46, label %vector.body40, !llvm.loop !134

middle.block46:                                   ; preds = %vector.body40
  br i1 %cmp.n47, label %._crit_edge1293, label %.preheader1162

.preheader1162:                                   ; preds = %middle.block46, %.preheader1162
  %indvars.iv1642 = phi i64 [ %indvars.iv.next1643, %.preheader1162 ], [ %i.wq, %middle.block46 ] ; 4 uses
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.xi, i64 %indvars.iv1642
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !56
  %i.yi = lshr i32 %i.yh, 8
  %i.yj = and i32 %i.yi, 255
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.xj, i64 %indvars.iv1642 ; 2 uses
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !56
  %i.ym = lshr i32 %i.yl, 7
  %i.yn = and i32 %i.ym, 510
  %i.yo = add nuw nsw i32 %i.yn, %i.yj
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.xm, i64 %indvars.iv1642
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !56
  %i.yr = lshr i32 %i.yq, 8
  %i.ys = and i32 %i.yr, 255
  %i.yt = add nuw nsw i32 %i.ys, %i.yo
  %i.yu = lshr i32 %i.yt, 2                       ; 3 uses
  %i.yv = shl nuw nsw i32 %i.yu, 8
  %i.yw = shl nuw nsw i32 %i.yu, 16
  %i.yx = or i32 %i.yw, %i.yv
  %i.yy = or i32 %i.yx, %i.yu
  %i.yz = or i32 %i.yy, -16777216
  store i32 %i.yz, ptr %i.yk, align 4, !tbaa !56
  %indvars.iv.next1643 = add nuw nsw i64 %indvars.iv1642, 1 ; 2 uses
  %exitcond1646.not = icmp eq i64 %indvars.iv.next1643, %wide.trip.count1650
  br i1 %exitcond1646.not, label %._crit_edge1293, label %.preheader1162, !llvm.loop !135

._crit_edge1293:                                  ; preds = %.preheader1162, %middle.block46
  %exitcond1651.not = icmp eq i64 %i.xk, %wide.trip.count1650
  br i1 %exitcond1651.not, label %._crit_edge1297.split, label %.preheader1163

._crit_edge1297.split:                            ; preds = %._crit_edge1293
  tail call fastcc void @makebmp(ptr noundef nonnull @.str.38, ptr noundef %3, i32 noundef %0, i32 noundef %0, ptr noundef %1)
  %i.za = sub nsw i32 %i.ot, %i.h
  %wide.trip.count1660 = zext nneg i32 %i.h to i64
  %wide.trip.count1670 = zext nneg i32 %i.h to i64 ; 2 uses
  %i.zb = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter114 = and i64 %wide.trip.count, 1
  %i.zc = icmp eq i64 %i.zb, 0
  %unroll_iter119 = and i64 %wide.trip.count, 126
  %lcmp.mod116.not = icmp eq i64 %xtraiter114, 0
  %lcmp.mod118 = trunc i32 %i.h to i1
  %min.iters.check61 = icmp samesign ult i32 %0, 48
  %i.zd = trunc nsw i64 %i.zb to i32              ; 2 uses
  %i.ze = icmp ugt i64 %i.zb, 4294967295
  %n.vec63 = and i64 %wide.trip.count, 120        ; 9 uses
  %i.zf = icmp eq i64 %n.vec63, 8
  %i.zg = icmp eq i64 %n.vec63, 16
  %i.zh = icmp eq i64 %n.vec63, 24
  %i.zi = icmp eq i64 %n.vec63, 32
  %i.zj = icmp eq i64 %n.vec63, 40
  %i.zk = icmp eq i64 %n.vec63, 48
  %i.zl = icmp eq i64 %n.vec63, 56
  %cmp.n75 = icmp eq i64 %n.vec63, %wide.trip.count
  %xtraiter121 = and i64 %wide.trip.count, 1
  %lcmp.mod122.not = icmp eq i64 %xtraiter121, 0
  %i.zm = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp samesign ult i32 %0, 32
  %n.vec50 = and i64 %wide.trip.count, 120        ; 9 uses
  %i.zn = icmp eq i64 %n.vec50, 8
  %i.zo = icmp eq i64 %n.vec50, 16
  %i.zp = icmp eq i64 %n.vec50, 24
  %i.zq = icmp eq i64 %n.vec50, 32
  %i.zr = icmp eq i64 %n.vec50, 40
  %i.zs = icmp eq i64 %n.vec50, 48
  %i.zt = icmp eq i64 %n.vec50, 56
  %cmp.n59 = icmp eq i64 %n.vec50, %wide.trip.count
  br label %.preheader1161.split.us.preheader

.preheader1161.split.us.preheader:                ; preds = %.split.us, %._crit_edge1297.split
  %indvars.iv1687 = phi i64 [ 0, %._crit_edge1297.split ], [ %indvars.iv.next1688, %.split.us ] ; 6 uses
  %i.zu = trunc i64 %indvars.iv1687 to i32
  %i.zv = mul i32 %0, %i.zu                       ; 2 uses
  %i.zw = add nsw i32 %i.zv, -1
  %i.zx = trunc nuw i64 %indvars.iv1687 to i32    ; 3 uses
  %i.zy = add i32 %i.zx, -1
  %i.zz = mul i32 %i.zy, %0                       ; 13 uses
  %i.aaa = zext i32 %i.zz to i64
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.aaa
  %i.aac = add i32 %i.o, %i.zx
  %i.aad = mul i32 %i.aac, %0                     ; 12 uses
  %i.aae = xor i32 %i.zz, -1
  %i.aaf = icmp ult i32 %i.aae, %i.zd
  %i.aag = xor i32 %i.aad, -1
  %i.aah = icmp ult i32 %i.aag, %i.zd
  %i.aai = or i1 %i.aah, %i.ze
  %i.aaj = or i1 %i.aaf, %i.aai
  %i.aak = zext i32 %i.zz to i64
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aak ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 16
  %i.aan = zext i32 %i.aad to i64
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aan ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 16
  %i.aaq = add i32 %i.zz, 8
  %i.aar = zext i32 %i.aaq to i64
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aar ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 16
  %i.aau = add i32 %i.aad, 8
  %i.aav = zext i32 %i.aau to i64
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aav ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 16
  %i.aay = add i32 %i.zz, 16
  %i.aaz = zext i32 %i.aay to i64
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aaz ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 16
  %i.abc = add i32 %i.aad, 16
  %i.abd = zext i32 %i.abc to i64
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.abd ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 16
  %i.abg = add i32 %i.zz, 24
  %i.abh = zext i32 %i.abg to i64
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.abh ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 16
  %i.abk = add i32 %i.aad, 24
  %i.abl = zext i32 %i.abk to i64
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.abl ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 16
  %i.abo = add i32 %i.zz, 32
  %i.abp = zext i32 %i.abo to i64
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.abp ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 16
  %i.abs = add i32 %i.aad, 32
  %i.abt = zext i32 %i.abs to i64
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.abt ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 16
  %i.abw = add i32 %i.zz, 40
  %i.abx = zext i32 %i.abw to i64
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.abx ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 16
  %i.aca = add i32 %i.aad, 40
  %i.acb = zext i32 %i.aca to i64
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.acb ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 16
  %i.ace = add i32 %i.zz, 48
  %i.acf = zext i32 %i.ace to i64
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.acf ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 16
  %i.aci = add i32 %i.aad, 48
  %i.acj = zext i32 %i.aci to i64
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.acj ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 16
  %i.acm = add i32 %i.zz, 56
  %i.acn = zext i32 %i.acm to i64
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.acn ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 16
  %i.acq = add i32 %i.aad, 56
  %i.acr = zext i32 %i.acq to i64
  %i.acs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.acr ; 2 uses
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 16
  br label %.preheader1161.split.us

.preheader1161.split.us:                          ; preds = %.preheader1161.split.us.preheader, %..loopexit1160_crit_edge.us
  %.81317.us = phi i32 [ %i.alb, %..loopexit1160_crit_edge.us ], [ 0, %.preheader1161.split.us.preheader ] ; 8 uses
  %i.acu = or i32 %.81317.us, %i.zx
  %or.cond11.us = icmp eq i32 %i.acu, 0
  br i1 %or.cond11.us, label %.preheader1156.us.us, label %bb.bl

bb.bl:                                            ; preds = %.preheader1161.split.us
  %.not971.us = icmp eq i32 %.81317.us, 0
  br i1 %.not971.us, label %.lr.ph1306.us.preheader, label %.lr.ph1301.us

.lr.ph1301.us:                                    ; preds = %bb.bl
  %i.acv = add i32 %i.zw, %.81317.us
  %i.acw = zext i32 %i.acv to i64
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.acw
  %i.acy = load i32, ptr %i.acx, align 4, !tbaa !56 ; 2 uses
  br i1 %i.zc, label %.epil.preheader113, label %.lr.ph1301.us.new

.lr.ph1301.us.new:                                ; preds = %.lr.ph1301.us, %.lr.ph1301.us.new
  %indvars.iv1652 = phi i64 [ %indvars.iv.next1653.1, %.lr.ph1301.us.new ], [ 0, %.lr.ph1301.us ] ; 3 uses
  %.28691299.us = phi i32 [ %i.aee, %.lr.ph1301.us.new ], [ %i.acy, %.lr.ph1301.us ]
  %niter120 = phi i64 [ %niter120.next.1, %.lr.ph1301.us.new ], [ 0, %.lr.ph1301.us ]
  %i.acz = add nuw nsw i64 %indvars.iv1652, %indvars.iv1687
  %i.ada = trunc nuw i64 %i.acz to i32
  %i.adb = mul i32 %0, %i.ada
  %i.adc = add i32 %i.adb, %.81317.us             ; 2 uses
  %i.add = add i32 %i.adc, -1
  %i.ade = zext i32 %i.add to i64
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ade
  %i.adg = load i32, ptr %i.adf, align 4, !tbaa !56
  %i.adh = and i32 %i.adg, 255
  %i.adi = add i32 %i.o, %i.adc
  %i.adj = zext i32 %i.adi to i64
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.adj
  %i.adl = load i32, ptr %i.adk, align 4, !tbaa !56
  %i.adm = and i32 %i.adl, 255
  %indvars.iv.next1653 = or disjoint i64 %indvars.iv1652, 1
  %i.adn = add nuw nsw i64 %indvars.iv.next1653, %indvars.iv1687
  %i.ado = trunc nuw i64 %i.adn to i32
  %i.adp = mul i32 %0, %i.ado
  %i.adq = add i32 %i.adp, %.81317.us             ; 2 uses
  %i.adr = add i32 %i.adq, -1
  %i.ads = zext i32 %i.adr to i64
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ads
  %i.adu = load i32, ptr %i.adt, align 4, !tbaa !56
  %i.adv = and i32 %i.adu, 255
  %i.adw = add i32 %.28691299.us, %i.adm
  %i.adx = add nuw nsw i32 %i.adh, %i.adv
  %i.ady = sub i32 %i.adw, %i.adx
  %i.adz = add i32 %i.o, %i.adq
  %i.aea = zext i32 %i.adz to i64
  %i.aeb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aea
  %i.aec = load i32, ptr %i.aeb, align 4, !tbaa !56
  %i.aed = and i32 %i.aec, 255
  %i.aee = add i32 %i.ady, %i.aed                 ; 3 uses
  %indvars.iv.next1653.1 = add nuw nsw i64 %indvars.iv1652, 2 ; 2 uses
  %niter120.next.1 = add nuw nsw i64 %niter120, 2 ; 2 uses
  %niter120.ncmp.1 = icmp eq i64 %niter120.next.1, %unroll_iter119
  br i1 %niter120.ncmp.1, label %..loopexit1160_crit_edge.us.loopexit86.unr-lcssa, label %.lr.ph1301.us.new

.lr.ph1306.us.preheader:                          ; preds = %bb.bl
  %i.aef = load i32, ptr %i.aab, align 4, !tbaa !56 ; 2 uses
  %brmerge137 = select i1 %min.iters.check61, i1 true, i1 %i.aaj
  br i1 %brmerge137, label %.lr.ph1306.us.preheader84, label %vector.body64

vector.body64:                                    ; preds = %.lr.ph1306.us.preheader
  %i.aeg = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.aef, i64 0
  %wide.load68 = load <4 x i32>, ptr %i.aal, align 4, !tbaa !56
  %wide.load69 = load <4 x i32>, ptr %i.aam, align 4, !tbaa !56
  %i.aeh = and <4 x i32> %wide.load68, splat (i32 255)
  %i.aei = and <4 x i32> %wide.load69, splat (i32 255)
  %i.aej = sub <4 x i32> %i.aeg, %i.aeh
  %wide.load70 = load <4 x i32>, ptr %i.aao, align 4, !tbaa !56
  %wide.load71 = load <4 x i32>, ptr %i.aap, align 4, !tbaa !56
  %i.aek = and <4 x i32> %wide.load70, splat (i32 255)
  %i.ael = and <4 x i32> %wide.load71, splat (i32 255)
  %i.aem = add <4 x i32> %i.aej, %i.aek           ; 2 uses
  %i.aen = sub nsw <4 x i32> %i.ael, %i.aei       ; 2 uses
  br i1 %i.zf, label %middle.block73, label %vector.body64.1

vector.body64.1:                                  ; preds = %vector.body64
  %wide.load68.1 = load <4 x i32>, ptr %i.aas, align 4, !tbaa !56
  %wide.load69.1 = load <4 x i32>, ptr %i.aat, align 4, !tbaa !56
  %i.aeo = and <4 x i32> %wide.load68.1, splat (i32 255)
  %i.aep = and <4 x i32> %wide.load69.1, splat (i32 255)
  %i.aeq = sub <4 x i32> %i.aem, %i.aeo
  %i.aer = sub nsw <4 x i32> %i.aen, %i.aep
  %wide.load70.1 = load <4 x i32>, ptr %i.aaw, align 4, !tbaa !56
  %wide.load71.1 = load <4 x i32>, ptr %i.aax, align 4, !tbaa !56
  %i.aes = and <4 x i32> %wide.load70.1, splat (i32 255)
  %i.aet = and <4 x i32> %wide.load71.1, splat (i32 255)
  %i.aeu = add <4 x i32> %i.aeq, %i.aes           ; 2 uses
  %i.aev = add nsw <4 x i32> %i.aer, %i.aet       ; 2 uses
  br i1 %i.zg, label %middle.block73, label %vector.body64.2

vector.body64.2:                                  ; preds = %vector.body64.1
  %wide.load68.2 = load <4 x i32>, ptr %i.aba, align 4, !tbaa !56
  %wide.load69.2 = load <4 x i32>, ptr %i.abb, align 4, !tbaa !56
  %i.aew = and <4 x i32> %wide.load68.2, splat (i32 255)
  %i.aex = and <4 x i32> %wide.load69.2, splat (i32 255)
  %i.aey = sub <4 x i32> %i.aeu, %i.aew
  %i.aez = sub nsw <4 x i32> %i.aev, %i.aex
  %wide.load70.2 = load <4 x i32>, ptr %i.abe, align 4, !tbaa !56
  %wide.load71.2 = load <4 x i32>, ptr %i.abf, align 4, !tbaa !56
  %i.afa = and <4 x i32> %wide.load70.2, splat (i32 255)
  %i.afb = and <4 x i32> %wide.load71.2, splat (i32 255)
  %i.afc = add <4 x i32> %i.aey, %i.afa           ; 2 uses
  %i.afd = add nsw <4 x i32> %i.aez, %i.afb       ; 2 uses
  br i1 %i.zh, label %middle.block73, label %vector.body64.3

vector.body64.3:                                  ; preds = %vector.body64.2
  %wide.load68.3 = load <4 x i32>, ptr %i.abi, align 4, !tbaa !56
  %wide.load69.3 = load <4 x i32>, ptr %i.abj, align 4, !tbaa !56
  %i.afe = and <4 x i32> %wide.load68.3, splat (i32 255)
  %i.aff = and <4 x i32> %wide.load69.3, splat (i32 255)
  %i.afg = sub <4 x i32> %i.afc, %i.afe
  %i.afh = sub nsw <4 x i32> %i.afd, %i.aff
  %wide.load70.3 = load <4 x i32>, ptr %i.abm, align 4, !tbaa !56
  %wide.load71.3 = load <4 x i32>, ptr %i.abn, align 4, !tbaa !56
  %i.afi = and <4 x i32> %wide.load70.3, splat (i32 255)
  %i.afj = and <4 x i32> %wide.load71.3, splat (i32 255)
  %i.afk = add <4 x i32> %i.afg, %i.afi           ; 2 uses
  %i.afl = add <4 x i32> %i.afh, %i.afj           ; 2 uses
  br i1 %i.zi, label %middle.block73, label %vector.body64.4

vector.body64.4:                                  ; preds = %vector.body64.3
  %wide.load68.4 = load <4 x i32>, ptr %i.abq, align 4, !tbaa !56
  %wide.load69.4 = load <4 x i32>, ptr %i.abr, align 4, !tbaa !56
  %i.afm = and <4 x i32> %wide.load68.4, splat (i32 255)
  %i.afn = and <4 x i32> %wide.load69.4, splat (i32 255)
  %i.afo = sub <4 x i32> %i.afk, %i.afm
  %i.afp = sub <4 x i32> %i.afl, %i.afn
  %wide.load70.4 = load <4 x i32>, ptr %i.abu, align 4, !tbaa !56
  %wide.load71.4 = load <4 x i32>, ptr %i.abv, align 4, !tbaa !56
  %i.afq = and <4 x i32> %wide.load70.4, splat (i32 255)
  %i.afr = and <4 x i32> %wide.load71.4, splat (i32 255)
  %i.afs = add <4 x i32> %i.afo, %i.afq           ; 2 uses
  %i.aft = add <4 x i32> %i.afp, %i.afr           ; 2 uses
  br i1 %i.zj, label %middle.block73, label %vector.body64.5

vector.body64.5:                                  ; preds = %vector.body64.4
  %wide.load68.5 = load <4 x i32>, ptr %i.aby, align 4, !tbaa !56
  %wide.load69.5 = load <4 x i32>, ptr %i.abz, align 4, !tbaa !56
  %i.afu = and <4 x i32> %wide.load68.5, splat (i32 255)
  %i.afv = and <4 x i32> %wide.load69.5, splat (i32 255)
  %i.afw = sub <4 x i32> %i.afs, %i.afu
  %i.afx = sub <4 x i32> %i.aft, %i.afv
  %wide.load70.5 = load <4 x i32>, ptr %i.acc, align 4, !tbaa !56
  %wide.load71.5 = load <4 x i32>, ptr %i.acd, align 4, !tbaa !56
  %i.afy = and <4 x i32> %wide.load70.5, splat (i32 255)
  %i.afz = and <4 x i32> %wide.load71.5, splat (i32 255)
  %i.aga = add <4 x i32> %i.afw, %i.afy           ; 2 uses
  %i.agb = add <4 x i32> %i.afx, %i.afz           ; 2 uses
  br i1 %i.zk, label %middle.block73, label %vector.body64.6

vector.body64.6:                                  ; preds = %vector.body64.5
  %wide.load68.6 = load <4 x i32>, ptr %i.acg, align 4, !tbaa !56
  %wide.load69.6 = load <4 x i32>, ptr %i.ach, align 4, !tbaa !56
  %i.agc = and <4 x i32> %wide.load68.6, splat (i32 255)
  %i.agd = and <4 x i32> %wide.load69.6, splat (i32 255)
  %i.age = sub <4 x i32> %i.aga, %i.agc
  %i.agf = sub <4 x i32> %i.agb, %i.agd
  %wide.load70.6 = load <4 x i32>, ptr %i.ack, align 4, !tbaa !56
  %wide.load71.6 = load <4 x i32>, ptr %i.acl, align 4, !tbaa !56
  %i.agg = and <4 x i32> %wide.load70.6, splat (i32 255)
  %i.agh = and <4 x i32> %wide.load71.6, splat (i32 255)
  %i.agi = add <4 x i32> %i.age, %i.agg           ; 2 uses
  %i.agj = add <4 x i32> %i.agf, %i.agh           ; 2 uses
  br i1 %i.zl, label %middle.block73, label %vector.body64.7

vector.body64.7:                                  ; preds = %vector.body64.6
  %wide.load68.7 = load <4 x i32>, ptr %i.aco, align 4, !tbaa !56
  %wide.load69.7 = load <4 x i32>, ptr %i.acp, align 4, !tbaa !56
  %i.agk = and <4 x i32> %wide.load68.7, splat (i32 255)
  %i.agl = and <4 x i32> %wide.load69.7, splat (i32 255)
  %i.agm = sub <4 x i32> %i.agi, %i.agk
  %i.agn = sub <4 x i32> %i.agj, %i.agl
  %wide.load70.7 = load <4 x i32>, ptr %i.acs, align 4, !tbaa !56
  %wide.load71.7 = load <4 x i32>, ptr %i.act, align 4, !tbaa !56
  %i.ago = and <4 x i32> %wide.load70.7, splat (i32 255)
  %i.agp = and <4 x i32> %wide.load71.7, splat (i32 255)
  %i.agq = add <4 x i32> %i.agm, %i.ago
  %i.agr = add <4 x i32> %i.agn, %i.agp
  br label %middle.block73

middle.block73:                                   ; preds = %vector.body64.7, %vector.body64.6, %vector.body64.5, %vector.body64.4, %vector.body64.3, %vector.body64.2, %vector.body64.1, %vector.body64
  %.lcssa89 = phi <4 x i32> [ %i.aem, %vector.body64 ], [ %i.aeu, %vector.body64.1 ], [ %i.afc, %vector.body64.2 ], [ %i.afk, %vector.body64.3 ], [ %i.afs, %vector.body64.4 ], [ %i.aga, %vector.body64.5 ], [ %i.agi, %vector.body64.6 ], [ %i.agq, %vector.body64.7 ]
  %.lcssa88 = phi <4 x i32> [ %i.aen, %vector.body64 ], [ %i.aev, %vector.body64.1 ], [ %i.afd, %vector.body64.2 ], [ %i.afl, %vector.body64.3 ], [ %i.aft, %vector.body64.4 ], [ %i.agb, %vector.body64.5 ], [ %i.agj, %vector.body64.6 ], [ %i.agr, %vector.body64.7 ]
  %bin.rdx74 = add <4 x i32> %.lcssa88, %.lcssa89
  %i.ags = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx74) ; 2 uses
  br i1 %cmp.n75, label %..loopexit1160_crit_edge.us, label %.lr.ph1306.us.preheader84

.lr.ph1306.us.preheader84:                        ; preds = %.lr.ph1306.us.preheader, %middle.block73
  %indvars.iv1657.ph = phi i64 [ %n.vec63, %middle.block73 ], [ 0, %.lr.ph1306.us.preheader ] ; 4 uses
  %.38701304.us.ph = phi i32 [ %i.ags, %middle.block73 ], [ %i.aef, %.lr.ph1306.us.preheader ] ; 2 uses
  br i1 %lcmp.mod122.not, label %.lr.ph1306.us.prol.loopexit, label %.lr.ph1306.us.prol

.lr.ph1306.us.prol:                               ; preds = %.lr.ph1306.us.preheader84
  %i.agt = trunc nuw nsw i64 %indvars.iv1657.ph to i32 ; 2 uses
  %i.agu = add i32 %i.zz, %i.agt
  %i.agv = zext i32 %i.agu to i64
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.agv
  %i.agx = load i32, ptr %i.agw, align 4, !tbaa !56
  %i.agy = and i32 %i.agx, 255
end_hunk_1
begin_hunk_2_@getmetrics:bb.a
  %i.ahv = zext i32 %i.ahu to i64
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ahv
  %i.ahx = load i32, ptr %i.ahw, align 4, !tbaa !56
  %i.ahy = and i32 %i.ahx, 255
  %i.ahz = add i32 %.38701304.us, %i.ahr
  %i.aia = add nuw nsw i32 %i.ahm, %i.ahy
  %i.aib = sub i32 %i.ahz, %i.aia
  %i.aic = add i32 %i.aad, %i.aht
  %i.aid = zext i32 %i.aic to i64
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aid
  %i.aif = load i32, ptr %i.aie, align 4, !tbaa !56
  %i.aig = and i32 %i.aif, 255
  %i.aih = add i32 %i.aib, %i.aig                 ; 2 uses
  %indvars.iv.next1658.1 = add nuw nsw i64 %indvars.iv1657, 2 ; 2 uses
  %exitcond1661.not.1 = icmp eq i64 %indvars.iv.next1658.1, %wide.trip.count1660
  br i1 %exitcond1661.not.1, label %..loopexit1160_crit_edge.us, label %.lr.ph1306.us, !llvm.loop !136

.preheader1156.us.us:                             ; preds = %.preheader1161.split.us, %._crit_edge1311.us.us
  %indvars.iv1667 = phi i64 [ %indvars.iv.next1668, %._crit_edge1311.us.us ], [ 0, %.preheader1161.split.us ] ; 2 uses
  %.08671314.us.us = phi i32 [ %.lcssa12, %._crit_edge1311.us.us ], [ 0, %.preheader1161.split.us ] ; 2 uses
  %i.aii = mul nuw nsw i64 %indvars.iv1667, %i.i
  %invariant.gep1929 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aii ; 17 uses
  br i1 %min.iters.check, label %scalar.ph48.preheader, label %vector.body51

vector.body51:                                    ; preds = %.preheader1156.us.us
  %i.aij = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.08671314.us.us, i64 0
  %i.aik = getelementptr inbounds nuw i8, ptr %invariant.gep1929, i64 16
  %wide.load55 = load <4 x i32>, ptr %invariant.gep1929, align 4, !tbaa !56
  %wide.load56 = load <4 x i32>, ptr %i.aik, align 4, !tbaa !56
  %i.ail = and <4 x i32> %wide.load55, splat (i32 255)
  %i.aim = and <4 x i32> %wide.load56, splat (i32 255) ; 2 uses
  %i.ain = add <4 x i32> %i.ail, %i.aij           ; 2 uses
  br i1 %i.zn, label %middle.block58, label %vector.body51.1

vector.body51.1:                                  ; preds = %vector.body51
  %i.aio = getelementptr inbounds nuw i8, ptr %invariant.gep1929, i64 32
  %i.aip = getelementptr inbounds nuw i8, ptr %invariant.gep1929, i64 48
  %wide.load55.1 = load <4 x i32>, ptr %i.aio, align 4, !tbaa !56
  %wide.load56.1 = load <4 x i32>, ptr %i.aip, align 4, !tbaa !56
  %i.aiq = and <4 x i32> %wide.load55.1, splat (i32 255)
  %i.air = and <4 x i32> %wide.load56.1, splat (i32 255)
  %i.ais = add <4 x i32> %i.aiq, %i.ain           ; 2 uses
  %i.ait = add nuw nsw <4 x i32> %i.air, %i.aim   ; 2 uses
  br i1 %i.zo, label %middle.block58, label %vector.body51.2

vector.body51.2:                                  ; preds = %vector.body51.1
  %i.aiu = getelementptr inbounds nuw i8, ptr %invariant.gep1929, i64 64
  %i.aiv = getelementptr inbounds nuw i8, ptr %invariant.gep1929, i64 80
  %wide.load55.2 = load <4 x i32>, ptr %i.aiu, align 4, !tbaa !56
  %wide.load56.2 = load <4 x i32>, ptr %i.aiv, align 4, !tbaa !56
  %i.aiw = and <4 x i32> %wide.load55.2, splat (i32 255)
  %i.aix = and <4 x i32> %wide.load56.2, splat (i32 255)
  %i.aiy = add <4 x i32> %i.aiw, %i.ais           ; 2 uses
  %i.aiz = add nuw nsw <4 x i32> %i.aix, %i.ait   ; 2 uses
  br i1 %i.zp, label %middle.block58, label %vector.body51.3

vector.body51.3:                                  ; preds = %vector.body51.2
  %i.aja = getelementptr inbounds nuw i8, ptr %invariant.gep1929, i64 96
  %i.ajb = getelementptr inbounds nuw i8, ptr %invariant.gep1929, i64 112
  %wide.load55.3 = load <4 x i32>, ptr %i.aja, align 4, !tbaa !56
  %wide.load56.3 = load <4 x i32>, ptr %i.ajb, align 4, !tbaa !56
  %i.ajc = and <4 x i32> %wide.load55.3, splat (i32 255)
  %i.ajd = and <4 x i32> %wide.load56.3, splat (i32 255)
  %i.aje = add <4 x i32> %i.ajc, %i.aiy           ; 2 uses
  %i.ajf = add nuw nsw <4 x i32> %i.ajd, %i.aiz   ; 2 uses
  br i1 %i.zq, label %middle.block58, label %vector.body51.4

vector.body51.4:                                  ; preds = %vector.body51.3
  %i.ajg = getelementptr inbounds nuw i8, ptr %invariant.gep1929, i64 128
  %i.ajh = getelementptr inbounds nuw i8, ptr %invariant.gep1929, i64 144
  %wide.load55.4 = load <4 x i32>, ptr %i.ajg, align 4, !tbaa !56
  %wide.load56.4 = load <4 x i32>, ptr %i.ajh, align 4, !tbaa !56
  %i.aji = and <4 x i32> %wide.load55.4, splat (i32 255)
  %i.ajj = and <4 x i32> %wide.load56.4, splat (i32 255)
  %i.ajk = add <4 x i32> %i.aji, %i.aje           ; 2 uses
  %i.ajl = add nuw nsw <4 x i32> %i.ajj, %i.ajf   ; 2 uses
  br i1 %i.zr, label %middle.block58, label %vector.body51.5

vector.body51.5:                                  ; preds = %vector.body51.4
  %i.ajm = getelementptr inbounds nuw i8, ptr %invariant.gep1929, i64 160
  %i.ajn = getelementptr inbounds nuw i8, ptr %invariant.gep1929, i64 176
  %wide.load55.5 = load <4 x i32>, ptr %i.ajm, align 4, !tbaa !56
  %wide.load56.5 = load <4 x i32>, ptr %i.ajn, align 4, !tbaa !56
  %i.ajo = and <4 x i32> %wide.load55.5, splat (i32 255)
  %i.ajp = and <4 x i32> %wide.load56.5, splat (i32 255)
  %i.ajq = add <4 x i32> %i.ajo, %i.ajk           ; 2 uses
  %i.ajr = add nuw nsw <4 x i32> %i.ajp, %i.ajl   ; 2 uses
  br i1 %i.zs, label %middle.block58, label %vector.body51.6

vector.body51.6:                                  ; preds = %vector.body51.5
  %i.ajs = getelementptr inbounds nuw i8, ptr %invariant.gep1929, i64 192
  %i.ajt = getelementptr inbounds nuw i8, ptr %invariant.gep1929, i64 208
  %wide.load55.6 = load <4 x i32>, ptr %i.ajs, align 4, !tbaa !56
  %wide.load56.6 = load <4 x i32>, ptr %i.ajt, align 4, !tbaa !56
  %i.aju = and <4 x i32> %wide.load55.6, splat (i32 255)
  %i.ajv = and <4 x i32> %wide.load56.6, splat (i32 255)
  %i.ajw = add <4 x i32> %i.aju, %i.ajq           ; 2 uses
  %i.ajx = add nuw nsw <4 x i32> %i.ajv, %i.ajr   ; 2 uses
  br i1 %i.zt, label %middle.block58, label %vector.body51.7

vector.body51.7:                                  ; preds = %vector.body51.6
  %i.ajy = getelementptr inbounds nuw i8, ptr %invariant.gep1929, i64 224
  %i.ajz = getelementptr inbounds nuw i8, ptr %invariant.gep1929, i64 240
  %wide.load55.7 = load <4 x i32>, ptr %i.ajy, align 4, !tbaa !56
  %wide.load56.7 = load <4 x i32>, ptr %i.ajz, align 4, !tbaa !56
  %i.aka = and <4 x i32> %wide.load55.7, splat (i32 255)
  %i.akb = and <4 x i32> %wide.load56.7, splat (i32 255)
  %i.akc = add <4 x i32> %i.aka, %i.ajw
  %i.akd = add <4 x i32> %i.akb, %i.ajx
  br label %middle.block58

middle.block58:                                   ; preds = %vector.body51.7, %vector.body51.6, %vector.body51.5, %vector.body51.4, %vector.body51.3, %vector.body51.2, %vector.body51.1, %vector.body51
  %.lcssa92 = phi <4 x i32> [ %i.ain, %vector.body51 ], [ %i.ais, %vector.body51.1 ], [ %i.aiy, %vector.body51.2 ], [ %i.aje, %vector.body51.3 ], [ %i.ajk, %vector.body51.4 ], [ %i.ajq, %vector.body51.5 ], [ %i.ajw, %vector.body51.6 ], [ %i.akc, %vector.body51.7 ]
  %.lcssa91 = phi <4 x i32> [ %i.aim, %vector.body51 ], [ %i.ait, %vector.body51.1 ], [ %i.aiz, %vector.body51.2 ], [ %i.ajf, %vector.body51.3 ], [ %i.ajl, %vector.body51.4 ], [ %i.ajr, %vector.body51.5 ], [ %i.ajx, %vector.body51.6 ], [ %i.akd, %vector.body51.7 ]
  %bin.rdx = add <4 x i32> %.lcssa91, %.lcssa92
  %i.ake = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n59, label %._crit_edge1311.us.us, label %scalar.ph48.preheader

scalar.ph48.preheader:                            ; preds = %.preheader1156.us.us, %middle.block58
  %indvars.iv1662.ph = phi i64 [ 0, %.preheader1156.us.us ], [ %n.vec50, %middle.block58 ]
  %.18681309.us.us.ph = phi i32 [ %.08671314.us.us, %.preheader1156.us.us ], [ %i.ake, %middle.block58 ]
  br label %scalar.ph48

scalar.ph48:                                      ; preds = %scalar.ph48.preheader, %scalar.ph48
  %indvars.iv1662 = phi i64 [ %indvars.iv.next1663, %scalar.ph48 ], [ %indvars.iv1662.ph, %scalar.ph48.preheader ] ; 2 uses
  %.18681309.us.us = phi i32 [ %i.akh, %scalar.ph48 ], [ %.18681309.us.us.ph, %scalar.ph48.preheader ]
  %gep1930 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1929, i64 %indvars.iv1662
  %i.akf = load i32, ptr %gep1930, align 4, !tbaa !56
  %i.akg = and i32 %i.akf, 255
  %i.akh = add i32 %i.akg, %.18681309.us.us       ; 2 uses
  %indvars.iv.next1663 = add nuw nsw i64 %indvars.iv1662, 1 ; 2 uses
  %exitcond1666.not = icmp eq i64 %indvars.iv.next1663, %wide.trip.count1670
  br i1 %exitcond1666.not, label %._crit_edge1311.us.us, label %scalar.ph48, !llvm.loop !137

._crit_edge1311.us.us:                            ; preds = %scalar.ph48, %middle.block58
  %.lcssa12 = phi i32 [ %i.ake, %middle.block58 ], [ %i.akh, %scalar.ph48 ] ; 2 uses
  %indvars.iv.next1668 = add nuw nsw i64 %indvars.iv1667, 1 ; 2 uses
  %exitcond1671.not = icmp eq i64 %indvars.iv.next1668, %wide.trip.count1670
  br i1 %exitcond1671.not, label %..loopexit1160_crit_edge.us, label %.preheader1156.us.us

..loopexit1160_crit_edge.us.loopexit86.unr-lcssa: ; preds = %.lr.ph1301.us.new
  br i1 %lcmp.mod116.not, label %..loopexit1160_crit_edge.us, label %.epil.preheader113

.epil.preheader113:                               ; preds = %..loopexit1160_crit_edge.us.loopexit86.unr-lcssa, %.lr.ph1301.us
  %indvars.iv1652.epil.init = phi i64 [ 0, %.lr.ph1301.us ], [ %indvars.iv.next1653.1, %..loopexit1160_crit_edge.us.loopexit86.unr-lcssa ]
  %.28691299.us.epil.init = phi i32 [ %i.acy, %.lr.ph1301.us ], [ %i.aee, %..loopexit1160_crit_edge.us.loopexit86.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod118)
  %i.aki = add nuw nsw i64 %indvars.iv1652.epil.init, %indvars.iv1687
  %i.akj = trunc nuw i64 %i.aki to i32
  %i.akk = mul i32 %0, %i.akj
  %i.akl = add i32 %i.akk, %.81317.us             ; 2 uses
  %i.akm = add i32 %i.akl, -1
  %i.akn = zext i32 %i.akm to i64
  %i.ako = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.akn
  %i.akp = load i32, ptr %i.ako, align 4, !tbaa !56
  %i.akq = and i32 %i.akp, 255
  %i.akr = sub i32 %.28691299.us.epil.init, %i.akq
  %i.aks = add i32 %i.o, %i.akl
  %i.akt = zext i32 %i.aks to i64
  %i.aku = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.akt
  %i.akv = load i32, ptr %i.aku, align 4, !tbaa !56
  %i.akw = and i32 %i.akv, 255
  %i.akx = add i32 %i.akr, %i.akw
  br label %..loopexit1160_crit_edge.us

..loopexit1160_crit_edge.us:                      ; preds = %.epil.preheader113, %..loopexit1160_crit_edge.us.loopexit86.unr-lcssa, %.lr.ph1306.us.prol.loopexit, %.lr.ph1306.us, %._crit_edge1311.us.us, %middle.block73
  %.4871.us = phi i32 [ %i.aih, %.lr.ph1306.us ], [ %.lcssa12, %._crit_edge1311.us.us ], [ %i.ags, %middle.block73 ], [ %.lcssa90.unr, %.lr.ph1306.us.prol.loopexit ], [ %i.aee, %..loopexit1160_crit_edge.us.loopexit86.unr-lcssa ], [ %i.akx, %.epil.preheader113 ]
  %i.aky = add i32 %.81317.us, %i.zv
  %i.akz = zext i32 %i.aky to i64
  %i.ala = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.akz
  store i32 %.4871.us, ptr %i.ala, align 4, !tbaa !56
  %i.alb = add i32 %.81317.us, 1                  ; 2 uses
  %.not970.us = icmp ugt i32 %i.alb, %i.za
  br i1 %.not970.us, label %.split.us, label %.preheader1161.split.us

.preheader1155:                                   ; preds = %.split.us
  %.not1480 = icmp eq i32 %i.ot, %i.h
  %umax1705 = tail call i32 @llvm.umax.i32(i32 %i.aw, i32 1) ; 2 uses
  %wide.trip.count1706 = zext i32 %umax1705 to i64
  %wide.trip.count1759 = zext i32 %umax1705 to i64
  %i.alc = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ald = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ale = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.alf = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.alg = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.alh = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ali = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.alj = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.alk = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.all = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.alm = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aln = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.alo = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.alp = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.alq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.alr = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %.preheader1154.lr.ph

.split.us:                                        ; preds = %..loopexit1160_crit_edge.us
  %indvars.iv.next1688 = add nuw nsw i64 %indvars.iv1687, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next1688 to i32
  %exitcond1691.not = icmp eq i32 %i.v, %lftr.wideiv
  br i1 %exitcond1691.not, label %.preheader1155, label %.preheader1161.split.us.preheader

.preheader1154.lr.ph:                             ; preds = %._crit_edge1380, %.preheader1155
  %indvars.iv1763 = phi i64 [ 0, %.preheader1155 ], [ %indvars.iv.next1764, %._crit_edge1380 ] ; 26 uses
  %i.als = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv1763 ; 2 uses
  store i32 0, ptr %i.als, align 4, !tbaa !56
  %i.alt = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv1763 ; 2 uses
  store i32 -1, ptr %i.alt, align 4, !tbaa !56
  %i.alu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv1763 ; 2 uses
  %i.alv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv1763 ; 2 uses
  %i.alw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv1763 ; 2 uses
  %i.alx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv1763 ; 2 uses
  br i1 %.not1480, label %._crit_edge1380, label %.preheader1154.lr.ph.split.us

.preheader1154.lr.ph.split.us:                    ; preds = %.preheader1154.lr.ph
  %.not1482 = icmp eq i64 %indvars.iv1763, 0
  br i1 %.not1482, label %.preheader1154.us.us1406.us, label %.lr.ph1333.split.us.us.us.split.us.preheader.preheader

.lr.ph1333.split.us.us.us.split.us.preheader.preheader: ; preds = %.preheader1154.lr.ph.split.us
  %exitcond1696.not = icmp eq i64 %indvars.iv1763, 1
  %exitcond1696.not.1 = icmp eq i64 %indvars.iv1763, 2
  %exitcond1696.not.2 = icmp eq i64 %indvars.iv1763, 3
  %exitcond1696.not.3 = icmp eq i64 %indvars.iv1763, 4
  %exitcond1701.not = icmp eq i64 %indvars.iv1763, 1 ; 2 uses
  %exitcond1701.not.1 = icmp eq i64 %indvars.iv1763, 2 ; 2 uses
  %exitcond1701.not.2 = icmp eq i64 %indvars.iv1763, 3 ; 2 uses
  %exitcond1701.not.3 = icmp eq i64 %indvars.iv1763, 4 ; 2 uses
  br label %.lr.ph1333.split.us.us.us.split.us.preheader

.lr.ph1333.split.us.us.us.split.us.preheader:     ; preds = %.lr.ph1333.split.us.us.us.split.us.preheader.preheader, %._crit_edge1334.split.us.us.us
  %.us-phi1339.us1395.us = phi i32 [ %i.apz, %._crit_edge1334.split.us.us.us ], [ -1, %.lr.ph1333.split.us.us.us.split.us.preheader.preheader ]
  %.us-phi1340.us1393.us = phi i32 [ %i.aob, %._crit_edge1334.split.us.us.us ], [ 0, %.lr.ph1333.split.us.us.us.split.us.preheader.preheader ]
  %.98941375.us.us = phi i32 [ %i.aqa, %._crit_edge1334.split.us.us.us ], [ 0, %.lr.ph1333.split.us.us.us.split.us.preheader.preheader ] ; 15 uses
  %i.aly = mul nuw nsw i32 %.98941375.us.us, %0
  %i.alz = add nuw nsw i32 %.98941375.us.us, %i.h ; 10 uses
  br label %.lr.ph1333.split.us.us.us.split.us

.lr.ph1333.split.us.us.us.split.us:               ; preds = %.lr.ph1333.split.us.us.us.split.us.preheader, %bb.co
  %indvars.iv1702 = phi i64 [ 0, %.lr.ph1333.split.us.us.us.split.us.preheader ], [ %indvars.iv.next1703, %bb.co ] ; 12 uses
  %i.ama = phi i32 [ %.us-phi1339.us1395.us, %.lr.ph1333.split.us.us.us.split.us.preheader ], [ %i.apz, %bb.co ] ; 3 uses
  %i.amb = phi i32 [ %.us-phi1340.us1393.us, %.lr.ph1333.split.us.us.us.split.us.preheader ], [ %i.aob, %bb.co ] ; 7 uses
  %indvars1704 = trunc i64 %indvars.iv1702 to i32 ; 5 uses
  %i.amc = add i32 %i.aly, %indvars1704
  %i.amd = zext i32 %i.amc to i64
  %i.ame = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.amd
  %i.amf = load i32, ptr %i.ame, align 4, !tbaa !56 ; 4 uses
  %i.amg = icmp ugt i32 %i.amf, %i.amb
  br i1 %i.amg, label %.preheader1153.us.us.us.us, label %._crit_edge1324.us.us.us.us

.preheader1153.us.us.us.us:                       ; preds = %.lr.ph1333.split.us.us.us.split.us
  %i.amh = add i32 %i.h, %indvars1704             ; 5 uses
  %i.ami = load i32, ptr %i.b, align 16, !tbaa !56 ; 2 uses
  %i.amj = icmp ugt i32 %i.amh, %i.ami
  %i.amk = add i32 %i.ami, %i.h
  %i.aml = zext i32 %i.amk to i64
  %i.amm = icmp samesign ult i64 %indvars.iv1702, %i.aml
  %or.cond1011.us.us.us.us = and i1 %i.amj, %i.amm
  br i1 %or.cond1011.us.us.us.us, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.preheader1153.us.us.us.us
  %i.amn = load i32, ptr %i.c, align 16, !tbaa !56 ; 2 uses
  %i.amo = icmp ugt i32 %i.alz, %i.amn
  %i.amp = add i32 %i.amn, %i.h
  %i.amq = icmp ult i32 %.98941375.us.us, %i.amp
  %or.cond1014.us.us.us.us = and i1 %i.amo, %i.amq
  br i1 %or.cond1014.us.us.us.us, label %._crit_edge1324.us.us.us.us, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.preheader1153.us.us.us.us
  br i1 %exitcond1696.not, label %._crit_edge1324.us.us.us.us.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.amr = load i32, ptr %i.alc, align 4, !tbaa !56 ; 2 uses
  %i.ams = icmp ugt i32 %i.amh, %i.amr
  %i.amt = add i32 %i.amr, %i.h
  %i.amu = zext i32 %i.amt to i64
  %i.amv = icmp samesign ult i64 %indvars.iv1702, %i.amu
  %or.cond1011.us.us.us.us.1 = and i1 %i.ams, %i.amv
  br i1 %or.cond1011.us.us.us.us.1, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.amw = load i32, ptr %i.ald, align 4, !tbaa !56 ; 2 uses
  %i.amx = icmp ugt i32 %i.alz, %i.amw
  %i.amy = add i32 %i.amw, %i.h
  %i.amz = icmp ult i32 %.98941375.us.us, %i.amy
  %or.cond1014.us.us.us.us.1 = and i1 %i.amx, %i.amz
  br i1 %or.cond1014.us.us.us.us.1, label %._crit_edge1324.us.us.us.us, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  br i1 %exitcond1696.not.1, label %._crit_edge1324.us.us.us.us.thread, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ana = load i32, ptr %i.ale, align 8, !tbaa !56 ; 2 uses
  %i.anb = icmp ugt i32 %i.amh, %i.ana
  %i.anc = add i32 %i.ana, %i.h
  %i.and = zext i32 %i.anc to i64
  %i.ane = icmp samesign ult i64 %indvars.iv1702, %i.and
  %or.cond1011.us.us.us.us.2 = and i1 %i.anb, %i.ane
  br i1 %or.cond1011.us.us.us.us.2, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.anf = load i32, ptr %i.alf, align 8, !tbaa !56 ; 2 uses
  %i.ang = icmp ugt i32 %i.alz, %i.anf
  %i.anh = add i32 %i.anf, %i.h
  %i.ani = icmp ult i32 %.98941375.us.us, %i.anh
  %or.cond1014.us.us.us.us.2 = and i1 %i.ang, %i.ani
  br i1 %or.cond1014.us.us.us.us.2, label %._crit_edge1324.us.us.us.us, label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  br i1 %exitcond1696.not.2, label %._crit_edge1324.us.us.us.us.thread, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.anj = load i32, ptr %i.alg, align 4, !tbaa !56 ; 2 uses
  %i.ank = icmp ugt i32 %i.amh, %i.anj
  %i.anl = add i32 %i.anj, %i.h
  %i.anm = zext i32 %i.anl to i64
  %i.ann = icmp samesign ult i64 %indvars.iv1702, %i.anm
  %or.cond1011.us.us.us.us.3 = and i1 %i.ank, %i.ann
  br i1 %or.cond1011.us.us.us.us.3, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ano = load i32, ptr %i.alh, align 4, !tbaa !56 ; 2 uses
  %i.anp = icmp ugt i32 %i.alz, %i.ano
  %i.anq = add i32 %i.ano, %i.h
  %i.anr = icmp ult i32 %.98941375.us.us, %i.anq
  %or.cond1014.us.us.us.us.3 = and i1 %i.anp, %i.anr
  br i1 %or.cond1014.us.us.us.us.3, label %._crit_edge1324.us.us.us.us, label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  br i1 %exitcond1696.not.3, label %._crit_edge1324.us.us.us.us.thread, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ans = load i32, ptr %i.ali, align 16, !tbaa !56 ; 2 uses
  %i.ant = icmp ugt i32 %i.amh, %i.ans
  %i.anu = add i32 %i.ans, %i.h
  %i.anv = zext i32 %i.anu to i64
  %i.anw = icmp samesign ult i64 %indvars.iv1702, %i.anv
  %or.cond1011.us.us.us.us.4 = and i1 %i.ant, %i.anw
  br i1 %or.cond1011.us.us.us.us.4, label %bb.by, label %._crit_edge1324.us.us.us.us.thread

bb.by:                                            ; preds = %bb.bx
  %i.anx = load i32, ptr %i.alj, align 16, !tbaa !56 ; 2 uses
  %i.any = icmp ugt i32 %i.alz, %i.anx
  %i.anz = add i32 %i.anx, %i.h
  %i.aoa = icmp ult i32 %.98941375.us.us, %i.anz
  %or.cond1014.us.us.us.us.4 = and i1 %i.any, %i.aoa
  br i1 %or.cond1014.us.us.us.us.4, label %._crit_edge1324.us.us.us.us, label %._crit_edge1324.us.us.us.us.thread

._crit_edge1324.us.us.us.us.thread:               ; preds = %bb.bn, %bb.bq, %bb.bt, %bb.bw, %bb.by, %bb.bx
  store i32 %indvars1704, ptr %i.alu, align 4, !tbaa !56
  store i32 %.98941375.us.us, ptr %i.alv, align 4, !tbaa !56
  br label %._crit_edge1324.us.us.us.us

._crit_edge1324.us.us.us.us:                      ; preds = %bb.bm, %bb.bp, %bb.bs, %bb.bv, %bb.by, %._crit_edge1324.us.us.us.us.thread, %.lr.ph1333.split.us.us.us.split.us
  %i.aob = phi i32 [ %i.amb, %.lr.ph1333.split.us.us.us.split.us ], [ %i.amf, %._crit_edge1324.us.us.us.us.thread ], [ %i.amb, %bb.by ], [ %i.amb, %bb.bv ], [ %i.amb, %bb.bs ], [ %i.amb, %bb.bp ], [ %i.amb, %bb.bm ] ; 3 uses
  %i.aoc = icmp ult i32 %i.amf, %i.ama
  br i1 %i.aoc, label %.preheader1152.us.us.us.us, label %bb.co

.preheader1152.us.us.us.us:                       ; preds = %._crit_edge1324.us.us.us.us
  %i.aod = add i32 %i.h, %indvars1704             ; 5 uses
  %i.aoe = load i32, ptr %i.e, align 16, !tbaa !56 ; 2 uses
  %i.aof = icmp ugt i32 %i.aod, %i.aoe
  %i.aog = add i32 %i.aoe, %i.h
  %i.aoh = zext i32 %i.aog to i64
  %i.aoi = icmp samesign ult i64 %indvars.iv1702, %i.aoh
  %or.cond1017.us.us.us.us = and i1 %i.aof, %i.aoi
  br i1 %or.cond1017.us.us.us.us, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %.preheader1152.us.us.us.us
  %i.aoj = load i32, ptr %i.f, align 16, !tbaa !56 ; 2 uses
  %i.aok = icmp ugt i32 %i.alz, %i.aoj
  %i.aol = add i32 %i.aoj, %i.h
  %i.aom = icmp ult i32 %.98941375.us.us, %i.aol
  %or.cond1020.us.us.us.us = and i1 %i.aok, %i.aom ; 2 uses
  %brmerge138 = or i1 %or.cond1020.us.us.us.us, %exitcond1701.not
  %.mux139 = select i1 %or.cond1020.us.us.us.us, i64 0, i64 %indvars.iv1763
  br i1 %brmerge138, label %._crit_edge1330.us.us.us.us, label %bb.cb

bb.ca:                                            ; preds = %.preheader1152.us.us.us.us
  br i1 %exitcond1701.not, label %._crit_edge1330.us.us.us.us, label %bb.cb

bb.cb:                                            ; preds = %bb.bz, %bb.ca
  %i.aon = load i32, ptr %i.alk, align 4, !tbaa !56 ; 2 uses
  %i.aoo = icmp ugt i32 %i.aod, %i.aon
  %i.aop = add i32 %i.aon, %i.h
  %i.aoq = zext i32 %i.aop to i64
  %i.aor = icmp samesign ult i64 %indvars.iv1702, %i.aoq
  %or.cond1017.us.us.us.us.1 = and i1 %i.aoo, %i.aor
  br i1 %or.cond1017.us.us.us.us.1, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.aos = load i32, ptr %i.all, align 4, !tbaa !56 ; 2 uses
  %i.aot = icmp ugt i32 %i.alz, %i.aos
  %i.aou = add i32 %i.aos, %i.h
  %i.aov = icmp ult i32 %.98941375.us.us, %i.aou
  %or.cond1020.us.us.us.us.1 = and i1 %i.aot, %i.aov ; 2 uses
  %brmerge140 = or i1 %or.cond1020.us.us.us.us.1, %exitcond1701.not.1
  %.mux141 = select i1 %or.cond1020.us.us.us.us.1, i64 1, i64 %indvars.iv1763
  br i1 %brmerge140, label %._crit_edge1330.us.us.us.us, label %bb.ce

bb.cd:                                            ; preds = %bb.cb
end_hunk_2
