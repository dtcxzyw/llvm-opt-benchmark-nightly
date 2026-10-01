Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/dict?download=true
inline.NumInlined: 146
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@dictCombineStats:vector.memcheck
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 336 ; 2 uses
  %wide.load24.10 = load <2 x i64>, ptr %i.cm, align 8, !tbaa !27, !alias.scope !123, !noalias !122
  %wide.load25.10 = load <2 x i64>, ptr %i.cn, align 8, !tbaa !27, !alias.scope !123, !noalias !122
  %i.co = add <2 x i64> %wide.load24.10, %wide.load.10
  %i.cp = add <2 x i64> %wide.load25.10, %wide.load23.10
  store <2 x i64> %i.co, ptr %i.cm, align 8, !tbaa !27, !alias.scope !123, !noalias !122
  store <2 x i64> %i.cp, ptr %i.cn, align 8, !tbaa !27, !alias.scope !123, !noalias !122
  %i.cq = getelementptr inbounds nuw i8, ptr %i.u, i64 352
  %i.cr = getelementptr inbounds nuw i8, ptr %i.u, i64 368
  %wide.load.11 = load <2 x i64>, ptr %i.cq, align 8, !tbaa !27, !alias.scope !122
  %wide.load23.11 = load <2 x i64>, ptr %i.cr, align 8, !tbaa !27, !alias.scope !122
  %i.cs = getelementptr inbounds nuw i8, ptr %i.w, i64 352 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.w, i64 368 ; 2 uses
  %wide.load24.11 = load <2 x i64>, ptr %i.cs, align 8, !tbaa !27, !alias.scope !123, !noalias !122
  %wide.load25.11 = load <2 x i64>, ptr %i.ct, align 8, !tbaa !27, !alias.scope !123, !noalias !122
  %i.cu = add <2 x i64> %wide.load24.11, %wide.load.11
  %i.cv = add <2 x i64> %wide.load25.11, %wide.load23.11
  store <2 x i64> %i.cu, ptr %i.cs, align 8, !tbaa !27, !alias.scope !123, !noalias !122
  store <2 x i64> %i.cv, ptr %i.ct, align 8, !tbaa !27, !alias.scope !123, !noalias !122
  br label %scalar.ph.prol.preheader

.unr-lcssa:                                       ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.next.prol, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !27
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !27
  %i.da = add i64 %i.cz, %i.cx
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !27
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !27
  %i.df = add i64 %i.de, %i.dc
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !27
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.1
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !27
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.1 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !27
  %i.dk = add i64 %i.dj, %i.dh
  store i64 %i.dk, ptr %i.di, align 8, !tbaa !27
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.2
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !27
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.2 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !27
  %i.dp = add i64 %i.do, %i.dm
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !27
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 50
  br i1 %exitcond.not.3, label %.unr-lcssa, label %scalar.ph, !llvm.loop !121
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @dictGetStatsHt(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(400) ptr @zcalloc(i64 noundef 400) #22 ; 4 uses
  %i.b = tail call noalias dereferenceable_or_null(56) ptr @zcalloc(i64 noundef 56) #22 ; 8 uses
  store i32 %1, ptr %i.b, align 8, !tbaa !73
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.a, ptr %i.c, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.e = sext i32 %1 to i64                       ; 3 uses
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !25    ; 2 uses
  %.not51 = icmp eq i8 %i.g, -1                   ; 2 uses
  %i.h = sext i8 %i.g to i64
  %i.i = and i64 %i.h, 4294967295                 ; 2 uses
  %i.j = shl nuw i64 1, %i.i
  %i.k = select i1 %.not51, i64 0, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.k, ptr %i.l, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.e
  %i.o = load i64, ptr %i.n, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.o, ptr %i.p, align 8, !tbaa !72
  %.not = icmp eq i32 %2, 0
  %brmerge = select i1 %.not, i1 true, i1 %.not51
  br i1 %brmerge, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.e
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.04249 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %bb.f ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.04249
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !40   ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = load i64, ptr %i.a, align 8, !tbaa !27
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !27
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.ab = load i64, ptr %i.t, align 8, !tbaa !70
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.t, align 8, !tbaa !70
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %dictGetNext.exit
  %.048 = phi i64 [ 0, %bb.d ], [ %i.ad, %dictGetNext.exit ]
  %.04147 = phi ptr [ %i.x, %bb.d ], [ %i.ag, %dictGetNext.exit ] ; 2 uses
  %i.ad = add i64 %.048, 1                        ; 4 uses
  %i.ae = ptrtoint ptr %.04147 to i64
  %i.af = and i64 %i.ae, 3
  %.not.i = icmp eq i64 %i.af, 0
  br i1 %.not.i, label %dictGetNext.exit, label %dictGetNext.exit.thread

dictGetNext.exit:                                 ; preds = %bb.e
  %i.ag = load ptr, ptr %.04147, align 8, !tbaa !42 ; 2 uses
  %.not46 = icmp eq ptr %i.ag, null
  br i1 %.not46, label %dictGetNext.exit.thread, label %bb.e, !llvm.loop !4

dictGetNext.exit.thread:                          ; preds = %bb.e, %dictGetNext.exit
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 49)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ah ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !27
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !27
  %i.al = load i64, ptr %i.u, align 8, !tbaa !71
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %i.al)
  store i64 %spec.store.select, ptr %i.u, align 8
  %i.am = load i64, ptr %i.v, align 8, !tbaa !75
  %i.an = add i64 %i.am, %i.ad
  store i64 %i.an, ptr %i.v, align 8, !tbaa !75
  br label %bb.f

bb.f:                                             ; preds = %dictGetNext.exit.thread, %bb.c
  %i.ao = add i64 %.04249, 1                      ; 2 uses
  %.042.highbits = lshr i64 %i.ao, %i.i
  %i.ap = icmp eq i64 %.042.highbits, 0
  br i1 %i.ap, label %bb.b, label %.loopexit, !llvm.loop !5

.loopexit:                                        ; preds = %bb.f, %bb.a
  ret ptr %i.b
}

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @dictGetStatsMsg(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = load i32, ptr %2, align 8, !tbaa !73     ; 3 uses
  %i.e = icmp eq i32 %i.d, 0
  %i.f = select i1 %i.e, ptr @.str.12, ptr @.str.13 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.11, i32 noundef %i.d, ptr noundef nonnull %i.f) #21
  %i.h = sext i32 %i.g to i64
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !74
  %i.k = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.14, i32 noundef %i.d, ptr noundef nonnull %i.f, i64 noundef %i.j, i64 noundef %i.b) #21
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = sext i32 %i.k to i64                     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  %i.n = sub i64 %1, %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !70   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !75
  %i.u = uitofp i64 %i.p to float
  %i.v = load i64, ptr %i.a, align 8, !tbaa !72
  %i.w = uitofp i64 %i.t to float
  %i.x = uitofp i64 %i.v to float
  %i.y = insertelement <2 x float> poison, float %i.w, i64 0
  %i.z = insertelement <2 x float> %i.y, float %i.x, i64 1
  %i.aa = insertelement <2 x float> poison, float %i.u, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fdiv <2 x float> %i.z, %i.ab
  %i.ad = fpext <2 x float> %i.ac to <2 x double> ; 2 uses
  %i.ae = extractelement <2 x double> %i.ad, i64 0
  %i.af = extractelement <2 x double> %i.ad, i64 1
  %i.ag = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.m, i64 noundef %i.n, ptr noundef nonnull @.str.15, i64 noundef %i.p, i64 noundef %i.r, double noundef %i.ae, double noundef %i.af) #21
  %i.ah = sext i32 %i.ag to i64
  %i.ai = add nsw i64 %i.ah, %i.l
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %.pre54 = load ptr, ptr %i.aj, align 8, !tbaa !69
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.h
  %4 = phi ptr [ %.pre54, %bb.d ], [ %5, %bb.h ]  ; 2 uses
  %.04652.a = phi i64 [ 0, %bb.d ], [ %i.ay, %bb.h ] ; 3 uses
  %.04652 = phi i64 [ %i.ai, %bb.d ], [ %.1, %bb.h ] ; 5 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.04652.a
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !27 ; 3 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not51 = icmp ult i64 %.04652, %1
  br i1 %.not51, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %.04652
  %i.ao = sub nuw i64 %1, %.04652
  %i.ap = uitofp i64 %i.al to float
  %i.aq = load i64, ptr %i.i, align 8, !tbaa !74
  %i.ar = uitofp i64 %i.aq to float
  %i.as = fdiv float %i.ap, %i.ar
  %i.at = fmul float %i.as, 1.000000e+02
  %i.au = fpext float %i.at to double
  %i.av = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.an, i64 noundef %i.ao, ptr noundef nonnull @.str.16, i64 noundef %.04652.a, i64 noundef %i.al, double noundef %i.au) #21
  %i.aw = sext i32 %i.av to i64
  %i.ax = add i64 %.04652, %i.aw
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !69
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %5 = phi ptr [ %4, %bb.e ], [ %.pre, %bb.g ]
  %.1 = phi i64 [ %.04652, %bb.e ], [ %i.ax, %bb.g ]
  %i.ay = add nuw nsw i64 %.04652.a, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ay, 49
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !125

.loopexit:                                        ; preds = %bb.h, %bb.f, %bb.c
  %i.az = getelementptr i8, ptr %0, i64 %1
  %i.ba = getelementptr i8, ptr %i.az, i64 -1
  store i8 0, ptr %i.ba, align 1, !tbaa !25
  %i.bb = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.b
  %.047 = phi i64 [ %i.h, %bb.b ], [ %i.bb, %.loopexit ]
  ret i64 %.047
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define dso_local void @dictGetStats(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(400) ptr @zcalloc(i64 noundef 400) #22 ; 5 uses
  %i.b = tail call noalias dereferenceable_or_null(56) ptr @zcalloc(i64 noundef 56) #22 ; 9 uses
  store i32 0, ptr %i.b, align 8, !tbaa !73
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.a, ptr %i.c, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.e = load i8, ptr %i.d, align 1, !tbaa !25    ; 2 uses
  %.not51.i = icmp eq i8 %i.e, -1                 ; 2 uses
  %i.f = sext i8 %i.e to i64
  %i.g = and i64 %i.f, 4294967295                 ; 2 uses
  %i.h = shl nuw i64 1, %i.g
  %i.i = select i1 %.not51.i, i64 0, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.i, ptr %i.j, align 8, !tbaa !74
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.l, ptr %i.m, align 8, !tbaa !72
  %.not.i = icmp eq i32 %3, 0                     ; 2 uses
  %brmerge.i = select i1 %.not.i, i1 true, i1 %.not51.i
  br i1 %brmerge.i, label %dictGetStatsHt.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %.04249.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ak, %bb.f ] ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.04249.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = load i64, ptr %i.a, align 8, !tbaa !27
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.a, align 8, !tbaa !27
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.x = load i64, ptr %i.p, align 8, !tbaa !70
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.p, align 8, !tbaa !70
  br label %bb.e

bb.e:                                             ; preds = %dictGetNext.exit.i, %bb.d
  %.048.i = phi i64 [ 0, %bb.d ], [ %i.z, %dictGetNext.exit.i ]
  %.04147.i = phi ptr [ %i.t, %bb.d ], [ %i.ac, %dictGetNext.exit.i ] ; 2 uses
  %i.z = add i64 %.048.i, 1                       ; 4 uses
  %i.aa = ptrtoint ptr %.04147.i to i64
  %i.ab = and i64 %i.aa, 3
  %.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i, label %dictGetNext.exit.i, label %dictGetNext.exit.thread.i

dictGetNext.exit.i:                               ; preds = %bb.e
  %i.ac = load ptr, ptr %.04147.i, align 8, !tbaa !42 ; 2 uses
  %.not46.i = icmp eq ptr %i.ac, null
  br i1 %.not46.i, label %dictGetNext.exit.thread.i, label %bb.e, !llvm.loop !4

dictGetNext.exit.thread.i:                        ; preds = %dictGetNext.exit.i, %bb.e
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.z, i64 49)
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ad ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !27
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !27
  %i.ah = load i64, ptr %i.q, align 8, !tbaa !71
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %i.ah)
  store i64 %spec.store.select.i, ptr %i.q, align 8
  %i.ai = load i64, ptr %i.r, align 8, !tbaa !75
  %i.aj = add i64 %i.ai, %i.z
  store i64 %i.aj, ptr %i.r, align 8, !tbaa !75
  br label %bb.f

bb.f:                                             ; preds = %dictGetNext.exit.thread.i, %bb.c
  %i.ak = add i64 %.04249.i, 1                    ; 2 uses
  %.042.highbits.i = lshr i64 %i.ak, %i.g
  %i.al = icmp eq i64 %.042.highbits.i, 0
  br i1 %i.al, label %bb.b, label %dictGetStatsHt.exit, !llvm.loop !5

dictGetStatsHt.exit:                              ; preds = %bb.f, %bb.a
  %i.am = tail call i64 @dictGetStatsMsg(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.b, i32 noundef %3) ; 3 uses
  tail call void @zfree(ptr noundef %i.a) #21
  tail call void @zfree(ptr noundef nonnull %i.b) #21
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !27
  %i.ap = icmp ne i64 %i.ao, -1
  %i.aq = icmp ne i64 %1, %i.am
  %or.cond = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond, label %bb.g, label %bb.m

bb.g:                                             ; preds = %dictGetStatsHt.exit
  %i.ar = sub i64 %1, %i.am
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.am
  %i.at = tail call noalias dereferenceable_or_null(400) ptr @zcalloc(i64 noundef 400) #22 ; 5 uses
  %i.au = tail call noalias dereferenceable_or_null(56) ptr @zcalloc(i64 noundef 56) #22 ; 9 uses
  store i32 1, ptr %i.au, align 8, !tbaa !73
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  store ptr %i.at, ptr %i.av, align 8, !tbaa !69
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 53
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !25  ; 2 uses
  %.not51.i24 = icmp eq i8 %i.ax, -1              ; 2 uses
  %i.ay = sext i8 %i.ax to i64
  %i.az = and i64 %i.ay, 4294967295               ; 2 uses
  %i.ba = shl nuw i64 1, %i.az
  %i.bb = select i1 %.not51.i24, i64 0, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !74
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !27
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !72
  %brmerge.i26 = select i1 %.not.i, i1 true, i1 %.not51.i24
  br i1 %brmerge.i26, label %dictGetStatsHt.exit37, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %.lr.ph.i27
  %.04249.i28 = phi i64 [ 0, %.lr.ph.i27 ], [ %i.cd, %bb.l ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.04249.i28
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !40 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bo = load i64, ptr %i.at, align 8, !tbaa !27
  %i.bp = add i64 %i.bo, 1
  store i64 %i.bp, ptr %i.at, align 8, !tbaa !27
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.bq = load i64, ptr %i.bi, align 8, !tbaa !70
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.bi, align 8, !tbaa !70
  br label %bb.k

bb.k:                                             ; preds = %dictGetNext.exit.i35, %bb.j
  %.048.i29 = phi i64 [ 0, %bb.j ], [ %i.bs, %dictGetNext.exit.i35 ]
  %.04147.i30 = phi ptr [ %i.bm, %bb.j ], [ %i.bv, %dictGetNext.exit.i35 ] ; 2 uses
  %i.bs = add i64 %.048.i29, 1                    ; 4 uses
  %i.bt = ptrtoint ptr %.04147.i30 to i64
  %i.bu = and i64 %i.bt, 3
  %.not.i.i31 = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i31, label %dictGetNext.exit.i35, label %dictGetNext.exit.thread.i32

dictGetNext.exit.i35:                             ; preds = %bb.k
  %i.bv = load ptr, ptr %.04147.i30, align 8, !tbaa !42 ; 2 uses
  %.not46.i36 = icmp eq ptr %i.bv, null
  br i1 %.not46.i36, label %dictGetNext.exit.thread.i32, label %bb.k, !llvm.loop !4

dictGetNext.exit.thread.i32:                      ; preds = %dictGetNext.exit.i35, %bb.k
  %i.bw = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 49)
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bw ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !27
  %i.bz = add i64 %i.by, 1
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !27
  %i.ca = load i64, ptr %i.bj, align 8, !tbaa !71
  %spec.store.select.i33 = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 %i.ca)
  store i64 %spec.store.select.i33, ptr %i.bj, align 8
  %i.cb = load i64, ptr %i.bk, align 8, !tbaa !75
  %i.cc = add i64 %i.cb, %i.bs
  store i64 %i.cc, ptr %i.bk, align 8, !tbaa !75
  br label %bb.l

bb.l:                                             ; preds = %dictGetNext.exit.thread.i32, %bb.i
  %i.cd = add i64 %.04249.i28, 1                  ; 2 uses
  %.042.highbits.i34 = lshr i64 %i.cd, %i.az
end_hunk_0
