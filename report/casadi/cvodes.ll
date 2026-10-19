Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/cvodes?download=true
inline.NumInlined: 100
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 36
begin_hunk_0_@cvSensAllocVectors:bb.a
  %i.dd = mul nsw i32 %i.bm, %i.dc
  %i.de = sext i32 %i.dd to i64                   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1592
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !60
  %i.dh = mul nsw i64 %i.dg, %i.de
  %i.di = add nsw i64 %i.dh, %i.bn
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !47
  %i.dl = add nsw i64 %i.di, %i.dk
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !47
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !61
  %i.do = mul nsw i64 %i.dn, %i.de
  %i.dp = add nsw i64 %i.do, %i.bn
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !48
  %i.ds = add nsw i64 %i.dp, %i.dr
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !48
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1768
  store i32 %.lcssa, ptr %i.dt, align 8, !tbaa !46
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph133, %bb.n, %bb.k, %bb.m, %bb.a, %bb.r, %._crit_edge138, %bb.i, %bb.g, %bb.e, %bb.c
  %.0120 = phi i32 [ 1, %bb.r ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.a ], [ 0, %bb.m ], [ 0, %._crit_edge138 ], [ 0, %bb.k ], [ 0, %bb.n ], [ 0, %.lr.ph133 ]
  ret i32 %.0120
}

; Function Attrs: nounwind uwtable
define range(i32 -22, 1) i32 @CVodeSensInit1(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.6)
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1808 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !109
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.27)
  br label %bb.w

bb.e:                                             ; preds = %bb.c
  %i.d = icmp slt i32 %1, 1
  br i1 %i.d, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.28)
  br label %bb.w

bb.g:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %1, ptr %i.e, align 4, !tbaa !110
  %i.f = add i32 %2, -4
  %or.cond3 = icmp ult i32 %i.f, -3
  br i1 %or.cond3, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30)
  br label %bb.w

bb.i:                                             ; preds = %bb.g
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %2, ptr %i.g, align 8, !tbaa !111
  %i.h = icmp eq ptr %4, null
  br i1 %i.h, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31)
  br label %bb.w

bb.k:                                             ; preds = %bb.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 1, ptr %i.i, align 4, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.j, align 8, !tbaa !37
  %i.k = icmp eq ptr %3, null
  br i1 %i.k, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sink118 = phi i32 [ 0, %bb.l ], [ 1, %bb.k ]
  %.sink117 = phi ptr [ %3, %bb.l ], [ @cvSensRhs1InternalDQ, %bb.k ]
  %.sink = phi ptr [ %i.m, %bb.l ], [ %0, %bb.k ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %.sink118, ptr %i.n, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %.sink117, ptr %i.o, align 8, !tbaa !38
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %.sink, ptr %i.p, align 8, !tbaa !112
  %i.q = icmp eq i32 %2, 3                        ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  br i1 %i.q, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  store i32 1, ptr %i.r, align 8, !tbaa !113
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.t = zext nneg i32 %1 to i64                  ; 2 uses
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #14 ; 2 uses
  store ptr %i.v, ptr %i.s, align 8, !tbaa !127
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1504
  %i.x = shl nuw nsw i64 %i.t, 3                  ; 2 uses
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.x) #14 ; 2 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !128
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.x) #14 ; 2 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !129
  %i.ab = icmp eq ptr %i.v, null
  br i1 %i.ab, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = icmp eq ptr %i.y, null
  %i.ad = icmp eq ptr %i.aa, null
  %or.cond = or i1 %i.ac, %i.ad
  br i1 %or.cond, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.10)
  br label %bb.w

bb.q:                                             ; preds = %bb.m
  store i32 0, ptr %i.r, align 8, !tbaa !113
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.q
  %i.ae = load ptr, ptr %4, align 8, !tbaa !50
  %i.af = tail call fastcc i32 @cvSensAllocVectors(ptr noundef %0, ptr noundef %i.ae)
  %.not94 = icmp eq i32 %i.af, 0
  br i1 %.not94, label %bb.s, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 600
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  br label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !113
  %.not95 = icmp eq i32 %i.ai, 0
  br i1 %.not95, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1360 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !127
  tail call void @free(ptr noundef %i.ak) #12
  store ptr null, ptr %i.aj, align 8, !tbaa !127
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1504 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !128
  tail call void @free(ptr noundef %i.am) #12
  store ptr null, ptr %i.al, align 8, !tbaa !128
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !129
  tail call void @free(ptr noundef %i.ao) #12
  store ptr null, ptr %i.an, align 8, !tbaa !129
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.10)
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !50
  %i.ar = load ptr, ptr %i.ag, align 8, !tbaa !114
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !50
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.aq, ptr noundef %i.at) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.v, !llvm.loop !219

._crit_edge:                                      ; preds = %bb.v
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1496
  store i64 0, ptr %i.av, align 8, !tbaa !115
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1552
  store i64 0, ptr %i.aw, align 8, !tbaa !116
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1520
  store i64 0, ptr %i.ax, align 8, !tbaa !117
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1576
  store i64 0, ptr %i.ay, align 8, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  br i1 %i.q, label %.lr.ph99, label %.lr.ph102

.lr.ph99:                                         ; preds = %._crit_edge
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1504
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !128
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !129
  %5 = add nsw i32 %1, -1
  %i.bd = zext nneg i32 %5 to i64
  %i.be = shl nuw nsw i64 %i.bd, 3
  %6 = add nuw nsw i64 %i.be, 8                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i8 0, i64 %6, i1 false), !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, i8 0, i64 %6, i1 false), !tbaa !59
  br label %.lr.ph102

.lr.ph102:                                        ; preds = %._crit_edge, %.lr.ph99
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !54 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !52 ; 2 uses
  %wide.trip.count115 = zext nneg i32 %1 to i64
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph102
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store <2 x i32> %vec.ind, ptr %i.bj, align 4, !tbaa !42
  store <2 x i32> %step.add, ptr %i.bk, align 4, !tbaa !42
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.bl, align 8, !tbaa !53
  store <2 x double> splat (double 1.000000e+00), ptr %i.bm, align 8, !tbaa !53
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !220

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge103, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph102, %middle.block
  %indvars.iv111.ph = phi i64 [ 0, %.lr.ph102 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %scalar.ph ], [ %indvars.iv111.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv111
  %i.bp = trunc nuw nsw i64 %indvars.iv111 to i32
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !42
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv111
  store double 1.000000e+00, ptr %i.bq, align 8, !tbaa !53
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond116.not = icmp eq i64 %indvars.iv.next112, %wide.trip.count115
  br i1 %exitcond116.not, label %._crit_edge103, label %scalar.ph, !llvm.loop !221

._crit_edge103:                                   ; preds = %scalar.ph, %middle.block
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 1, ptr %i.br, align 8, !tbaa !121
  store i32 1, ptr %i.b, align 8, !tbaa !109
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge103, %bb.u, %bb.p, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.089 = phi i32 [ -21, %bb.b ], [ -22, %bb.d ], [ -22, %bb.f ], [ -22, %bb.h ], [ -22, %bb.j ], [ -20, %bb.p ], [ 0, %._crit_edge103 ], [ -20, %bb.u ]
  ret i32 %.089
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define range(i32 -40, 1) i32 @CVodeSensReInit(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.6)
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.c = load i32, ptr %i.b, align 8, !tbaa !109
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -40, ptr noundef nonnull @.str, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34)
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.f = load i32, ptr %i.e, align 4, !tbaa !40
  %i.g = icmp eq i32 %i.f, 2
  %i.h = icmp eq i32 %1, 3                        ; 3 uses
  %or.cond = and i1 %i.h, %i.g
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.29)
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.i = add i32 %1, -4
  %or.cond5 = icmp ult i32 %i.i, -3
  br i1 %or.cond5, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.30)
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %1, ptr %i.j, align 8, !tbaa !111
  %i.k = icmp eq ptr %2, null
  br i1 %i.k, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31)
  br label %bb.r

bb.k:                                             ; preds = %bb.i
  br i1 %i.h, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !113
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %i.l, align 8, !tbaa !113
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.q = load i32, ptr %i.p, align 4, !tbaa !110
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = shl nsw i64 %i.r, 2
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #14 ; 2 uses
  store ptr %i.t, ptr %i.o, align 8, !tbaa !127
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1504
  %i.v = shl nsw i64 %i.r, 3                      ; 2 uses
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #14 ; 2 uses
  store ptr %i.w, ptr %i.u, align 8, !tbaa !128
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.v) #14 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !129
  %i.z = icmp eq ptr %i.t, null
  br i1 %i.z, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = icmp eq ptr %i.w, null
  %i.ab = icmp eq ptr %i.y, null
  %or.cond61 = or i1 %i.aa, %i.ab
  br i1 %or.cond61, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.10)
  br label %bb.r

bb.p:                                             ; preds = %bb.n, %bb.l, %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !110 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.p
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 600
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !50
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !114
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !50
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.ah, ptr noundef %i.ak) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = load i32, ptr %i.ac, align 4, !tbaa !110 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp slt i64 %indvars.iv.next, %i.am
  br i1 %i.an, label %bb.q, label %._crit_edge, !llvm.loop !222

._crit_edge:                                      ; preds = %bb.q, %bb.p
  %.lcssa = phi i32 [ %i.ad, %bb.p ], [ %i.al, %bb.q ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1496
  store i64 0, ptr %i.ap, align 8, !tbaa !115
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1552
  store i64 0, ptr %i.aq, align 8, !tbaa !116
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1520
  store i64 0, ptr %i.ar, align 8, !tbaa !117
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1576
  store i64 0, ptr %i.as, align 8, !tbaa !118
  %i.at = icmp sgt i32 %.lcssa, 0
  %or.cond65 = and i1 %i.h, %i.at
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  br i1 %or.cond65, label %.lr.ph64, label %.loopexit

.lr.ph64:                                         ; preds = %._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1504
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !128
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !129
  %i.ay = zext nneg i32 %.lcssa to i64
end_hunk_0
