Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pe_icons?download=true
inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 26
begin_hunk_0_@cli_icongroupset_add:bb.a
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
  %i.i = zext nneg i32 %0 to i64                  ; 24 uses
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
  %.08851183 = phi i32 [ 0, %bb.c ], [ %i.ie, %bb.t ] ; 8 uses
  %i.v = icmp eq i32 %.08851183, 0
  %i.w = mul i32 %.08851183, %0                   ; 2 uses
  %i.x = add i32 %.08851183, %0
  %i.y = mul i32 %i.x, %0                         ; 2 uses
  %i.z = add i32 %i.w, -1
  %i.aa = add i32 %i.y, -1
  %i.ab = add i32 %.08851183, -1                  ; 2 uses
  %i.ac = mul i32 %i.ab, %0                       ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ad
  %i.af = add i32 %i.ab, %0
  %i.ag = mul i32 %i.af, %0
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ah
  %i.aj = add i32 %i.p, %.08851183
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
  %.08761181 = phi i32 [ 0, %.preheader1157 ], [ %i.id, %.loopexit1154 ] ; 8 uses
  %i.bh = or i32 %.08761181, %.08851183
  %or.cond = icmp eq i32 %i.bh, 0
  br i1 %or.cond, label %.preheader1152.us, label %bb.i

.preheader1152.us:                                ; preds = %bb.d, %._crit_edge.us
  %indvars.iv1505 = phi i64 [ %indvars.iv.next1506, %._crit_edge.us ], [ 0, %bb.d ] ; 2 uses
  %.08951177.us = phi i32 [ %i.by, %._crit_edge.us ], [ 0, %bb.d ]
  %.09001176.us = phi i32 [ %i.bx, %._crit_edge.us ], [ 0, %bb.d ]
  %i.bi = mul nuw nsw i64 %indvars.iv1505, %i.i
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bi
  br label %bb.e

bb.e:                                             ; preds = %.preheader1152.us, %bb.h
  %indvars.iv1500 = phi i64 [ 0, %.preheader1152.us ], [ %indvars.iv.next1501, %bb.h ] ; 2 uses
  %.18961171.us = phi i32 [ %.08951177.us, %.preheader1152.us ], [ %i.by, %bb.h ]
  %.19011170.us = phi i32 [ %.09001176.us, %.preheader1152.us ], [ %i.bx, %bb.h ]
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
  %i.bx = add i32 %.19011170.us, %i.bw            ; 3 uses
  %i.by = add i32 %i.bp, %.18961171.us            ; 3 uses
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
  %.not975 = icmp eq i32 %.08761181, 0
  br i1 %.not975, label %.lr.ph1166.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.ct = add i32 %i.aa, %.08761181
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !57
  %i.cx = add i32 %i.z, %.08761181
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !57
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %.28971161 = phi i32 [ %i.cw, %.lr.ph.preheader ], [ %i.er, %bb.o ]
  %.29021160 = phi i32 [ %i.da, %.lr.ph.preheader ], [ %i.eq, %bb.o ]
  %i.db = trunc nuw nsw i64 %indvars.iv to i32
  %i.dc = add i32 %.08851183, %i.db
  %i.dd = mul i32 %i.dc, %0
  %i.de = add i32 %i.dd, %.08761181               ; 2 uses
  %i.df = add i32 %i.de, -1
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !57 ; 3 uses
  %i.dj = lshr i32 %i.di, 16
  %i.dk = and i32 %i.dj, 255                      ; 2 uses
  %i.dl = lshr i32 %i.di, 8
  %i.dm = and i32 %i.dl, 255                      ; 2 uses
  %i.dn = and i32 %i.di, 255                      ; 2 uses
  %..i1021 = tail call i32 @llvm.umin.i32(i32 %i.dm, i32 %i.dn)
  %spec.select.i1022 = tail call i32 @llvm.umin.i32(i32 %i.dk, i32 %..i1021) ; 2 uses
  %.44.i1023 = tail call i32 @llvm.umax.i32(i32 %i.dm, i32 %i.dn)
  %i.do = tail call i32 @llvm.umax.i32(i32 %i.dk, i32 %.44.i1023) ; 5 uses
  %.not.i1024 = icmp eq i32 %i.do, %spec.select.i1022
  br i1 %.not.i1024, label %hsv.exit1026, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.dp = sub nsw i32 %i.do, %spec.select.i1022
  %i.dq = mul nsw i32 %i.dp, 255
end_hunk_0
begin_hunk_1_@getmetrics:bb.a
  %i.sz = extractelement <2 x double> %i.sx, i64 0 ; 3 uses
  %i.ta = fcmp ogt double %i.sz, f0x3F82231840000000
  br i1 %i.ta, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.tb = tail call double @pow(double noundef %i.sz, double noundef f0x3FD5555560000000) #13
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.tc = tail call double @llvm.fmuladd.f64(double %i.sz, double f0x401F25E360000000, double f0x3FC1A7B960000000)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.045.i.i = phi double [ %i.tb, %bb.bb ], [ %i.tc, %bb.bc ]
  %i.td = extractelement <2 x double> %i.sx, i64 1 ; 3 uses
  %i.te = fcmp ogt double %i.td, f0x3F82231840000000
  br i1 %i.te, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.tf = tail call double @pow(double noundef %i.td, double noundef f0x3FD5555560000000) #13
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.tg = tail call double @llvm.fmuladd.f64(double %i.td, double f0x401F25E360000000, double f0x3FC1A7B960000000)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.044.i.i = phi double [ %i.tf, %bb.be ], [ %i.tg, %bb.bf ] ; 3 uses
  %i.th = fcmp ogt double %i.sy, f0x3F82231840000000
  br i1 %i.th, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ti = tail call double @pow(double noundef %i.sy, double noundef f0x3FD5555560000000) #13
  br label %labdiff.exit

bb.bi:                                            ; preds = %bb.bg
  %i.tj = tail call double @llvm.fmuladd.f64(double %i.sy, double f0x401F25E360000000, double f0x3FC1A7B960000000)
  br label %labdiff.exit

labdiff.exit:                                     ; preds = %bb.bh, %bb.bi
  %.0.i.i = phi double [ %i.ti, %bb.bh ], [ %i.tj, %bb.bi ]
  %i.tk = tail call double @llvm.fmuladd.f64(double %.044.i.i, double 1.160000e+02, double -1.600000e+01)
  %i.tl = fsub double %.045.i.i, %.044.i.i
  %i.tm = fmul double %i.tl, 5.000000e+02
  %i.tn = fsub double %.044.i.i, %.0.i.i
  %i.to = fmul double %i.tn, 2.000000e+02
  %i.tp = fsub double f0x404A98AD00000000, %i.tk
  %i.tq = tail call double @pow(double noundef %i.tp, double noundef 2.000000e+00) #13
  %i.tr = fsub double f0x3F69BD7300000000, %i.tm
  %i.ts = tail call double @pow(double noundef %i.tr, double noundef 2.000000e+00) #13
  %i.tt = fadd double %i.tq, %i.ts
  %i.tu = fsub double f0xBF796D20A0000000, %i.to
  %i.tv = tail call double @pow(double noundef %i.tu, double noundef 2.000000e+00) #13
  %i.tw = fadd double %i.tt, %i.tv
  %i.tx = tail call double @sqrt(double noundef %i.tw) #13
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %i.rc
  store double %i.tx, ptr %i.ty, align 8, !tbaa !132
  %indvars.iv.next1545 = add nuw nsw i64 %indvars.iv1544, 1 ; 2 uses
  %exitcond1548.not = icmp eq i64 %indvars.iv.next1545, %i.i
  br i1 %exitcond1548.not, label %bb.bj, label %bb.ar

bb.bj:                                            ; preds = %labdiff.exit
  %indvars.iv.next1550 = add nuw nsw i64 %indvars.iv1549, 1 ; 2 uses
  %exitcond1553.not = icmp eq i64 %indvars.iv.next1550, %i.i
  br i1 %exitcond1553.not, label %.preheader1141.us.preheader, label %.preheader1143

._crit_edge1242:                                  ; preds = %._crit_edge1238.us
  tail call void @free(ptr noundef nonnull %i.oi) #13
  %.not966.not = icmp eq i32 %spec.select.us.lcssa, 0
  br i1 %.not966.not, label %.loopexit1140, label %.preheader1138.preheader

.preheader1138.preheader:                         ; preds = %._crit_edge1242
  %wide.trip.count1572 = zext nneg i32 %i.om to i64 ; 2 uses
  br label %.preheader1138

.preheader1138:                                   ; preds = %.preheader1138.preheader, %._crit_edge1248
  %indvars.iv1569 = phi i64 [ 1, %.preheader1138.preheader ], [ %indvars.iv.next1570, %._crit_edge1248 ] ; 2 uses
  %i.tz = mul nuw nsw i64 %indvars.iv1569, %i.i
  br label %bb.bk

bb.bk:                                            ; preds = %.preheader1138, %bb.bk
  %indvars.iv1564 = phi i64 [ 1, %.preheader1138 ], [ %indvars.iv.next1565, %bb.bk ] ; 2 uses
  %i.ua = add nuw nsw i64 %indvars.iv1564, %i.tz  ; 2 uses
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ua
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !57
  %i.ud = mul i32 %i.uc, 255
  %i.ue = udiv i32 %i.ud, %spec.select.us.lcssa   ; 3 uses
  %i.uf = shl i32 %i.ue, 8
  %i.ug = shl i32 %i.ue, 16
  %i.uh = or i32 %i.ug, %i.uf
  %i.ui = or i32 %i.uh, %i.ue
  %i.uj = or i32 %i.ui, -16777216
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ua
  store i32 %i.uj, ptr %i.uk, align 4, !tbaa !57
  %indvars.iv.next1565 = add nuw nsw i64 %indvars.iv1564, 1 ; 2 uses
  %exitcond1568.not = icmp eq i64 %indvars.iv.next1565, %wide.trip.count1572
  br i1 %exitcond1568.not, label %._crit_edge1248, label %bb.bk

._crit_edge1248:                                  ; preds = %bb.bk
  %indvars.iv.next1570 = add nuw nsw i64 %indvars.iv1569, 1 ; 2 uses
  %exitcond1573.not = icmp eq i64 %indvars.iv.next1570, %wide.trip.count1572
  br i1 %exitcond1573.not, label %.loopexit1140, label %.preheader1138

.loopexit1140:                                    ; preds = %._crit_edge1248, %._crit_edge1242
  %i.ul = mul nuw nsw i32 %i.om, %0
  %i.um = zext nneg i32 %i.ul to i64
  %invariant.gep1880 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.um ; 2 uses
  %n.vec31 = and i64 %i.i, 508                    ; 3 uses
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %.loopexit1140
  %index33 = phi i64 [ 0, %.loopexit1140 ], [ %index.next34, %vector.body32 ] ; 3 uses
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index33
  store <4 x i32> splat (i32 -16777216), ptr %i.un, align 4, !tbaa !57
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1880, i64 %index33
  store <4 x i32> splat (i32 -16777216), ptr %i.uo, align 4, !tbaa !57
  %index.next34 = add nuw i64 %index33, 4         ; 2 uses
  %i.up = icmp eq i64 %index.next34, %n.vec31
  br i1 %i.up, label %middle.block35, label %vector.body32, !llvm.loop !136

middle.block35:                                   ; preds = %vector.body32
  %cmp.n36 = icmp eq i64 %n.vec31, %i.i
  br i1 %cmp.n36, label %.preheader1137.preheader, label %scalar.ph29

scalar.ph29:                                      ; preds = %middle.block35, %scalar.ph29
  %indvars.iv1574 = phi i64 [ %indvars.iv.next1575, %scalar.ph29 ], [ %n.vec31, %middle.block35 ] ; 3 uses
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv1574
  store i32 -16777216, ptr %i.uq, align 4, !tbaa !57
  %gep1881 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1880, i64 %indvars.iv1574
  store i32 -16777216, ptr %gep1881, align 4, !tbaa !57
  %indvars.iv.next1575 = add nuw nsw i64 %indvars.iv1574, 1 ; 2 uses
  %exitcond1578.not = icmp eq i64 %indvars.iv.next1575, %i.i
  br i1 %exitcond1578.not, label %.preheader1137.preheader, label %scalar.ph29, !llvm.loop !137

.preheader1137.preheader:                         ; preds = %scalar.ph29, %middle.block35
  %invariant.gep1882 = getelementptr [4 x i8], ptr %1, i64 %i.i ; 5 uses
  %xtraiter = and i64 %i.i, 3                     ; 3 uses
  %unroll_iter = and i64 %i.i, 508
  br label %.preheader1137

.preheader1137:                                   ; preds = %.preheader1137, %.preheader1137.preheader
  %indvars.iv1579 = phi i64 [ 0, %.preheader1137.preheader ], [ %indvars.iv.next1580.3, %.preheader1137 ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader1137.preheader ], [ %niter.next.3, %.preheader1137 ]
  %i.ur = mul nuw nsw i64 %indvars.iv1579, %i.i   ; 2 uses
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ur
  store i32 -16777216, ptr %i.us, align 4, !tbaa !57
  %gep1883 = getelementptr [4 x i8], ptr %invariant.gep1882, i64 %i.ur
  %i.ut = getelementptr i8, ptr %gep1883, i64 -4
  store i32 -16777216, ptr %i.ut, align 4, !tbaa !57
  %indvars.iv.next1580 = or disjoint i64 %indvars.iv1579, 1
  %i.uu = mul nuw nsw i64 %indvars.iv.next1580, %i.i ; 2 uses
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.uu
  store i32 -16777216, ptr %i.uv, align 4, !tbaa !57
  %gep1883.1 = getelementptr [4 x i8], ptr %invariant.gep1882, i64 %i.uu
  %i.uw = getelementptr i8, ptr %gep1883.1, i64 -4
  store i32 -16777216, ptr %i.uw, align 4, !tbaa !57
  %indvars.iv.next1580.1 = or disjoint i64 %indvars.iv1579, 2
  %i.ux = mul nuw nsw i64 %indvars.iv.next1580.1, %i.i ; 2 uses
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ux
  store i32 -16777216, ptr %i.uy, align 4, !tbaa !57
  %gep1883.2 = getelementptr [4 x i8], ptr %invariant.gep1882, i64 %i.ux
  %i.uz = getelementptr i8, ptr %gep1883.2, i64 -4
  store i32 -16777216, ptr %i.uz, align 4, !tbaa !57
  %indvars.iv.next1580.2 = or disjoint i64 %indvars.iv1579, 3
  %i.va = mul nuw nsw i64 %indvars.iv.next1580.2, %i.i ; 2 uses
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.va
  store i32 -16777216, ptr %i.vb, align 4, !tbaa !57
  %gep1883.3 = getelementptr [4 x i8], ptr %invariant.gep1882, i64 %i.va
  %i.vc = getelementptr i8, ptr %gep1883.3, i64 -4
  store i32 -16777216, ptr %i.vc, align 4, !tbaa !57
  %indvars.iv.next1580.3 = add nuw nsw i64 %indvars.iv1579, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader1136.preheader.unr-lcssa, label %.preheader1137

.preheader1136.preheader.unr-lcssa:               ; preds = %.preheader1137
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader1136.preheader, label %.preheader1137.epil.preheader

.preheader1137.epil.preheader:                    ; preds = %.preheader1136.preheader.unr-lcssa
  %lcmp.mod108 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod108)
  br label %.preheader1137.epil

.preheader1137.epil:                              ; preds = %.preheader1137.epil, %.preheader1137.epil.preheader
  %indvars.iv1579.epil = phi i64 [ %indvars.iv.next1580.3, %.preheader1137.epil.preheader ], [ %indvars.iv.next1580.epil, %.preheader1137.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader1137.epil.preheader ], [ %epil.iter.next, %.preheader1137.epil ]
  %i.vd = mul nuw nsw i64 %indvars.iv1579.epil, %i.i ; 2 uses
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vd
  store i32 -16777216, ptr %i.ve, align 4, !tbaa !57
  %gep1883.epil = getelementptr [4 x i8], ptr %invariant.gep1882, i64 %i.vd
  %i.vf = getelementptr i8, ptr %gep1883.epil, i64 -4
  store i32 -16777216, ptr %i.vf, align 4, !tbaa !57
  %indvars.iv.next1580.epil = add nuw nsw i64 %indvars.iv1579.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader1136.preheader, label %.preheader1137.epil, !llvm.loop !138

.preheader1136.preheader:                         ; preds = %.preheader1137.epil, %.preheader1136.preheader.unr-lcssa
  tail call fastcc void @makebmp(ptr noundef nonnull @.str.37, ptr noundef %3, i32 noundef %0, i32 noundef %0, ptr noundef %1)
  %wide.trip.count1596 = zext nneg i32 %i.om to i64 ; 2 uses
  %i.vg = shl nuw nsw i64 %i.i, 2
  %i.vh = shl nuw nsw i64 %i.i, 2
  %i.vi = getelementptr i8, ptr %1, i64 %i.vg
  br label %.preheader1136

.preheader1136:                                   ; preds = %.preheader1136.preheader, %._crit_edge1256
  %indvar = phi i64 [ 0, %.preheader1136.preheader ], [ %indvar.next, %._crit_edge1256 ] ; 2 uses
  %indvars.iv1593 = phi i64 [ 1, %.preheader1136.preheader ], [ %indvars.iv.next1594, %._crit_edge1256 ] ; 2 uses
  %i.vj = mul i64 %i.vh, %indvar
  %scevgep = getelementptr i8, ptr %i.vi, i64 %i.vj
  %i.vk = mul nuw nsw i64 %indvars.iv1593, %i.i
  %load_initial = load i32, ptr %scevgep, align 4
  %i.vl = and i32 %load_initial, 255
  br label %.preheader1135

.preheader1133.preheader:                         ; preds = %._crit_edge1256
  %i.vm = zext nneg i32 %0 to i64
  %wide.trip.count1610 = zext nneg i32 %i.om to i64 ; 2 uses
  %n.vec39 = and i64 %i.oo, -4                    ; 3 uses
  %i.vn = or disjoint i64 %n.vec39, 1
  %cmp.n47 = icmp eq i64 %i.oo, %n.vec39
  br label %.preheader1133

.preheader1135:                                   ; preds = %.preheader1136, %.preheader1135
  %store_forwarded = phi i32 [ %i.vl, %.preheader1136 ], [ %i.vr, %.preheader1135 ]
  %indvars.iv1588 = phi i64 [ 1, %.preheader1136 ], [ %indvars.iv.next1589, %.preheader1135 ] ; 2 uses
  %i.vo = add nuw nsw i64 %indvars.iv1588, %i.vk  ; 2 uses
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vo ; 2 uses
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !57
  %i.vr = and i32 %i.vq, 255                      ; 3 uses
  %i.vs = shl nuw nsw i32 %i.vr, 1
  %i.vt = add nuw nsw i32 %i.vs, %store_forwarded
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vo
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 4
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !57
  %i.vx = and i32 %i.vw, 255
  %i.vy = add nuw nsw i32 %i.vx, %i.vt
  %i.vz = shl nuw nsw i32 %i.vy, 6
  %i.wa = and i32 %i.vz, 130816
  %i.wb = or disjoint i32 %i.vr, %i.wa
  store i32 %i.wb, ptr %i.vp, align 4, !tbaa !57
  %indvars.iv.next1589 = add nuw nsw i64 %indvars.iv1588, 1 ; 2 uses
  %exitcond1592.not = icmp eq i64 %indvars.iv.next1589, %wide.trip.count1596
  br i1 %exitcond1592.not, label %._crit_edge1256, label %.preheader1135

._crit_edge1256:                                  ; preds = %.preheader1135
  %indvars.iv.next1594 = add nuw nsw i64 %indvars.iv1593, 1 ; 2 uses
  %exitcond1597.not = icmp eq i64 %indvars.iv.next1594, %wide.trip.count1596
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1597.not, label %.preheader1133.preheader, label %.preheader1136

.preheader1133:                                   ; preds = %.preheader1133.preheader, %._crit_edge1263
  %indvars.iv1607 = phi i64 [ 1, %.preheader1133.preheader ], [ %i.wh, %._crit_edge1263 ] ; 3 uses
  %i.wc = mul nuw nsw i64 %indvars.iv1607, %i.i
  %i.wd = add nsw i64 %indvars.iv1607, -1
  %i.we = mul nuw nsw i64 %i.wd, %i.vm
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.we ; 2 uses
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wc ; 2 uses
  %i.wh = add nuw nsw i64 %indvars.iv1607, 1      ; 3 uses
  %i.wi = mul nuw nsw i64 %i.wh, %i.i
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wi ; 2 uses
  br label %vector.body40

vector.body40:                                    ; preds = %vector.body40, %.preheader1133
  %index41 = phi i64 [ 0, %.preheader1133 ], [ %index.next45, %vector.body40 ] ; 2 uses
  %i.wk = or disjoint i64 %index41, 1             ; 3 uses
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.wf, i64 %i.wk
  %wide.load42 = load <4 x i32>, ptr %i.wl, align 4, !tbaa !57
  %i.wm = lshr <4 x i32> %wide.load42, splat (i32 8)
  %i.wn = and <4 x i32> %i.wm, splat (i32 255)
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.wg, i64 %i.wk ; 2 uses
  %wide.load43 = load <4 x i32>, ptr %i.wo, align 4, !tbaa !57
  %i.wp = lshr <4 x i32> %wide.load43, splat (i32 7)
  %i.wq = and <4 x i32> %i.wp, splat (i32 510)
  %i.wr = add nuw nsw <4 x i32> %i.wq, %i.wn
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %i.wk
  %wide.load44 = load <4 x i32>, ptr %i.ws, align 4, !tbaa !57
  %i.wt = lshr <4 x i32> %wide.load44, splat (i32 8)
  %i.wu = and <4 x i32> %i.wt, splat (i32 255)
  %i.wv = add nuw nsw <4 x i32> %i.wu, %i.wr
  %i.ww = lshr <4 x i32> %i.wv, splat (i32 2)     ; 3 uses
  %i.wx = shl nuw nsw <4 x i32> %i.ww, splat (i32 8)
  %i.wy = shl nuw nsw <4 x i32> %i.ww, splat (i32 16)
  %i.wz = or <4 x i32> %i.wy, %i.wx
  %i.xa = or <4 x i32> %i.wz, %i.ww
  %i.xb = or <4 x i32> %i.xa, splat (i32 -16777216)
  store <4 x i32> %i.xb, ptr %i.wo, align 4, !tbaa !57
  %index.next45 = add nuw i64 %index41, 4         ; 2 uses
  %i.xc = icmp eq i64 %index.next45, %n.vec39
  br i1 %i.xc, label %middle.block46, label %vector.body40, !llvm.loop !140

middle.block46:                                   ; preds = %vector.body40
  br i1 %cmp.n47, label %._crit_edge1263, label %.preheader1132

.preheader1132:                                   ; preds = %middle.block46, %.preheader1132
  %indvars.iv1602 = phi i64 [ %indvars.iv.next1603, %.preheader1132 ], [ %i.vn, %middle.block46 ] ; 4 uses
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.wf, i64 %indvars.iv1602
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !57
  %i.xf = lshr i32 %i.xe, 8
  %i.xg = and i32 %i.xf, 255
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.wg, i64 %indvars.iv1602 ; 2 uses
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !57
  %i.xj = lshr i32 %i.xi, 7
  %i.xk = and i32 %i.xj, 510
  %i.xl = add nuw nsw i32 %i.xk, %i.xg
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %indvars.iv1602
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !57
  %i.xo = lshr i32 %i.xn, 8
  %i.xp = and i32 %i.xo, 255
  %i.xq = add nuw nsw i32 %i.xp, %i.xl
  %i.xr = lshr i32 %i.xq, 2                       ; 3 uses
  %i.xs = shl nuw nsw i32 %i.xr, 8
  %i.xt = shl nuw nsw i32 %i.xr, 16
  %i.xu = or i32 %i.xt, %i.xs
  %i.xv = or i32 %i.xu, %i.xr
  %i.xw = or i32 %i.xv, -16777216
  store i32 %i.xw, ptr %i.xh, align 4, !tbaa !57
  %indvars.iv.next1603 = add nuw nsw i64 %indvars.iv1602, 1 ; 2 uses
  %exitcond1606.not = icmp eq i64 %indvars.iv.next1603, %wide.trip.count1610
  br i1 %exitcond1606.not, label %._crit_edge1263, label %.preheader1132, !llvm.loop !141

._crit_edge1263:                                  ; preds = %.preheader1132, %middle.block46
  %exitcond1611.not = icmp eq i64 %i.wh, %wide.trip.count1610
  br i1 %exitcond1611.not, label %._crit_edge1267.split, label %.preheader1133

._crit_edge1267.split:                            ; preds = %._crit_edge1263
  tail call fastcc void @makebmp(ptr noundef nonnull @.str.38, ptr noundef %3, i32 noundef %0, i32 noundef %0, ptr noundef %1)
  %i.xx = sub nsw i32 %i.om, %i.h
  %wide.trip.count1620 = zext nneg i32 %i.h to i64
  %wide.trip.count1630 = zext nneg i32 %i.h to i64 ; 2 uses
  %i.xy = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter109 = and i64 %wide.trip.count, 1
  %i.xz = icmp eq i64 %i.xy, 0
  %unroll_iter114 = and i64 %wide.trip.count, 126
  %lcmp.mod111.not = icmp eq i64 %xtraiter109, 0
  %lcmp.mod113 = trunc i32 %i.h to i1
  %min.iters.check61 = icmp samesign ult i32 %0, 48
  %i.ya = trunc nsw i64 %i.xy to i32              ; 2 uses
  %i.yb = icmp ugt i64 %i.xy, 4294967295
  %n.vec63 = and i64 %wide.trip.count, 120        ; 9 uses
  %i.yc = icmp eq i64 %n.vec63, 8
  %i.yd = icmp eq i64 %n.vec63, 16
  %i.ye = icmp eq i64 %n.vec63, 24
  %i.yf = icmp eq i64 %n.vec63, 32
  %i.yg = icmp eq i64 %n.vec63, 40
  %i.yh = icmp eq i64 %n.vec63, 48
  %i.yi = icmp eq i64 %n.vec63, 56
  %cmp.n75 = icmp eq i64 %n.vec63, %wide.trip.count
  %xtraiter116 = and i64 %wide.trip.count, 1
  %lcmp.mod117.not = icmp eq i64 %xtraiter116, 0
  %i.yj = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp samesign ult i32 %0, 32
  %n.vec50 = and i64 %wide.trip.count, 120        ; 9 uses
  %i.yk = icmp eq i64 %n.vec50, 8
  %i.yl = icmp eq i64 %n.vec50, 16
  %i.ym = icmp eq i64 %n.vec50, 24
  %i.yn = icmp eq i64 %n.vec50, 32
  %i.yo = icmp eq i64 %n.vec50, 40
  %i.yp = icmp eq i64 %n.vec50, 48
  %i.yq = icmp eq i64 %n.vec50, 56
  %cmp.n59 = icmp eq i64 %n.vec50, %wide.trip.count
  br label %.preheader1131.split.us.preheader

.preheader1131.split.us.preheader:                ; preds = %.split.us, %._crit_edge1267.split
  %.88931289 = phi i32 [ 0, %._crit_edge1267.split ], [ %i.ako, %.split.us ] ; 8 uses
  %i.yr = mul i32 %.88931289, %0                  ; 2 uses
  %i.ys = add i32 %i.yr, -1
  %i.yt = add i32 %.88931289, -1
  %i.yu = mul i32 %i.yt, %0                       ; 13 uses
  %i.yv = zext i32 %i.yu to i64
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.yv
  %i.yx = add i32 %i.p, %.88931289
  %i.yy = mul i32 %i.yx, %0                       ; 12 uses
  %i.yz = xor i32 %i.yu, -1
  %i.za = icmp ult i32 %i.yz, %i.ya
  %i.zb = xor i32 %i.yy, -1
  %i.zc = icmp ult i32 %i.zb, %i.ya
  %i.zd = or i1 %i.zc, %i.yb
  %i.ze = or i1 %i.za, %i.zd
  %i.zf = zext i32 %i.yu to i64
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zf ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 16
  %i.zi = zext i32 %i.yy to i64
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zi ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 16
  %i.zl = add i32 %i.yu, 8
  %i.zm = zext i32 %i.zl to i64
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zm ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 16
  %i.zp = add i32 %i.yy, 8
  %i.zq = zext i32 %i.zp to i64
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zq ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 16
  %i.zt = add i32 %i.yu, 16
  %i.zu = zext i32 %i.zt to i64
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zu ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 16
  %i.zx = add i32 %i.yy, 16
  %i.zy = zext i32 %i.zx to i64
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zy ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 16
  %i.aab = add i32 %i.yu, 24
  %i.aac = zext i32 %i.aab to i64
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aac ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 16
  %i.aaf = add i32 %i.yy, 24
  %i.aag = zext i32 %i.aaf to i64
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aag ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 16
  %i.aaj = add i32 %i.yu, 32
  %i.aak = zext i32 %i.aaj to i64
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aak ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 16
  %i.aan = add i32 %i.yy, 32
  %i.aao = zext i32 %i.aan to i64
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aao ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 16
  %i.aar = add i32 %i.yu, 40
  %i.aas = zext i32 %i.aar to i64
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aas ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 16
  %i.aav = add i32 %i.yy, 40
  %i.aaw = zext i32 %i.aav to i64
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aaw ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 16
  %i.aaz = add i32 %i.yu, 48
  %i.aba = zext i32 %i.aaz to i64
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aba ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 16
  %i.abd = add i32 %i.yy, 48
  %i.abe = zext i32 %i.abd to i64
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.abe ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 16
  %i.abh = add i32 %i.yu, 56
  %i.abi = zext i32 %i.abh to i64
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.abi ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 16
  %i.abl = add i32 %i.yy, 56
  %i.abm = zext i32 %i.abl to i64
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.abm ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 16
  br label %.preheader1131.split.us

.preheader1131.split.us:                          ; preds = %.preheader1131.split.us.preheader, %.loopexit1128.us
  %.81287.us = phi i32 [ %i.ahx, %.loopexit1128.us ], [ 0, %.preheader1131.split.us.preheader ] ; 8 uses
  %i.abp = or i32 %.81287.us, %.88931289
  %or.cond11.us = icmp eq i32 %i.abp, 0
  br i1 %or.cond11.us, label %.preheader1126.us.us, label %bb.bl

bb.bl:                                            ; preds = %.preheader1131.split.us
  %.not971.us = icmp eq i32 %.81287.us, 0
  br i1 %.not971.us, label %.lr.ph1276.us.preheader, label %.lr.ph1271.us

.lr.ph1271.us:                                    ; preds = %bb.bl
  %i.abq = add i32 %i.ys, %.81287.us
  %i.abr = zext i32 %i.abq to i64
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.abr
  %i.abt = load i32, ptr %i.abs, align 4, !tbaa !57 ; 2 uses
  br i1 %i.xz, label %.epil.preheader, label %.lr.ph1271.us.new

end_hunk_1
