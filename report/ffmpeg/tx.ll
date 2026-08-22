Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tx?download=true
inline.NumInlined: 21
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 13
begin_hunk_0_@av_get_cpu_flags

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define range(i32 -12, 1) i32 @ff_tx_gen_default_map(ptr nofree noundef captures(none) initializes((8, 16)) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !9
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2
  %i.d = tail call noalias ptr @av_malloc(i64 noundef %i.c) #14 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !18
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 4, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !19
  %.not23 = icmp eq i32 %i.g, 0
  %i.h = load i32, ptr %0, align 8, !tbaa !9      ; 7 uses
  %i.i = icmp sgt i32 %i.h, 1                     ; 2 uses
  br i1 %.not23, label %.preheader, label %.preheader24

.preheader24:                                     ; preds = %bb.b
  br i1 %i.i, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader24
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 2 uses
  %i.j = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %min.iters.check = icmp ult i32 %i.h, 9
  br i1 %min.iters.check, label %.lr.ph.preheader54, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.j, -8                       ; 3 uses
  %i.k = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = sub <4 x i32> %broadcast.splat, %vec.ind
  %i.o = sub <4 x i32> %broadcast.splat, %step.add
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  store <4 x i32> %i.n, ptr %i.m, align 4, !tbaa !22
  store <4 x i32> %i.o, ptr %i.p, align 4, !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader54

.lr.ph.preheader54:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %i.i, label %.lr.ph28.preheader, label %.loopexit

.lr.ph28.preheader:                               ; preds = %.preheader
  %wide.trip.count34 = zext nneg i32 %i.h to i64  ; 2 uses
  %i.r = add nsw i64 %wide.trip.count34, -1       ; 2 uses
  %min.iters.check41 = icmp ult i32 %i.h, 9
  br i1 %min.iters.check41, label %.lr.ph28.preheader53, label %vector.ph42

vector.ph42:                                      ; preds = %.lr.ph28.preheader
  %n.vec43 = and i64 %i.r, -8                     ; 3 uses
  %i.s = or disjoint i64 %n.vec43, 1
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph42
  %index45 = phi i64 [ 0, %vector.ph42 ], [ %index.next48, %vector.body44 ] ; 2 uses
  %vec.ind46 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph42 ], [ %vec.ind.next49, %vector.body44 ] ; 3 uses
  %step.add47 = add <4 x i32> %vec.ind46, splat (i32 4)
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index45 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  store <4 x i32> %vec.ind46, ptr %i.u, align 4, !tbaa !22
  store <4 x i32> %step.add47, ptr %i.v, align 4, !tbaa !22
  %index.next48 = add nuw i64 %index45, 8         ; 2 uses
  %vec.ind.next49 = add <4 x i32> %vec.ind46, splat (i32 8)
  %i.w = icmp eq i64 %index.next48, %n.vec43
  br i1 %i.w, label %middle.block50, label %vector.body44, !llvm.loop !83

middle.block50:                                   ; preds = %vector.body44
  %cmp.n51 = icmp eq i64 %i.r, %n.vec43
  br i1 %cmp.n51, label %.loopexit, label %.lr.ph28.preheader53

.lr.ph28.preheader53:                             ; preds = %.lr.ph28.preheader, %middle.block50
  %indvars.iv31.ph = phi i64 [ 1, %.lr.ph28.preheader ], [ %i.s, %middle.block50 ]
  br label %.lr.ph28

.lr.ph:                                           ; preds = %.lr.ph.preheader54, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader54 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.y = trunc i64 %indvars.iv to i32
  %i.z = sub i32 %i.h, %i.y
  store i32 %i.z, ptr %i.x, align 4, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !84

.lr.ph28:                                         ; preds = %.lr.ph28.preheader53, %.lr.ph28
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %.lr.ph28 ], [ %indvars.iv31.ph, %.lr.ph28.preheader53 ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv31
  %i.ab = trunc nuw nsw i64 %indvars.iv31 to i32
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !22
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %exitcond35.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count34
  br i1 %exitcond35.not, label %.loopexit, label %.lr.ph28, !llvm.loop !85

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph28, %middle.block, %middle.block50, %.preheader24, %.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 1, ptr %i.ac, align 8, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %.loopexit
  %.020 = phi i32 [ 0, %.loopexit ], [ -12, %bb.a ]
  ret i32 %.020
}

; Function Attrs: cold nounwind optsize uwtable
define i32 @ff_tx_init_subtx(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %7 = alloca %struct.AVBPrint, align 8           ; 9 uses
  %i.b = alloca [64 x [2 x ptr]], align 16        ; 7 uses
  %8 = alloca %struct.TXCodeletMatch, align 8     ; 4 uses
  %9 = alloca %struct.TXCodeletMatch, align 8     ; 4 uses
  %10 = alloca %struct.TXCodeletMatch, align 8    ; 4 uses
  %11 = alloca %struct.TXCodeletMatch, align 8    ; 4 uses
  %12 = alloca %struct.TXCodeletMatch, align 8    ; 4 uses
  %13 = alloca %struct.TXCodeletMatch, align 8    ; 4 uses
  %14 = alloca %struct.TXCodeletMatch, align 8    ; 4 uses
  %15 = alloca %struct.TXCodeletMatch, align 8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.c = tail call i32 @av_get_cpu_flags() #14    ; 2 uses
  %i.d = lshr i64 %2, 61
  %i.e = and i64 %i.d, 2
  %spec.select = or i64 %i.e, %2                  ; 2 uses
  %i.f = and i64 %2, -9223372036854775807
  %or.cond350.not = icmp eq i64 %i.f, -9223372036854775807
  %i.g = and i64 %spec.select, 9223372036854775806
  %.1291 = select i1 %or.cond350.not, i64 %i.g, i64 %spec.select ; 3 uses
  %i.h = and i64 %.1291, 4611686018427387906
  %or.cond351.not = icmp eq i64 %i.h, 4611686018427387906
  %i.i = and i64 %.1291, -4611686018427387907
  %.2292 = select i1 %or.cond351.not, i64 %i.i, i64 %.1291 ; 3 uses
  %i.j = icmp ne i32 %5, 0                        ; 4 uses
  %i.k = and i32 %i.c, -2113929217
  br label %bb.b

.critedge355.loopexit.loopexit:                   ; preds = %.backedge
  %i.l = trunc nsw i64 %indvars.iv to i32
  br label %.critedge355.loopexit

.critedge355.loopexit.loopexit473:                ; preds = %get_codelet_prio.exit
  %i.m = trunc nsw i64 %indvars.iv.next to i32
  br label %.critedge355.loopexit

.critedge355.loopexit:                            ; preds = %.critedge355.loopexit.loopexit473, %.critedge355.loopexit.loopexit, %bb.b
  %.1297.ph.lcssa417 = phi ptr [ %.1297.ph429, %.critedge355.loopexit.loopexit ], [ %.0296433, %bb.b ], [ %i.br, %.critedge355.loopexit.loopexit473 ] ; 11 uses
  %.1294.ph.lcssa416 = phi i32 [ %i.l, %.critedge355.loopexit.loopexit ], [ %.0293434, %bb.b ], [ %i.m, %.critedge355.loopexit.loopexit473 ] ; 7 uses
  %indvars.iv.next496 = add nsw i64 %indvars.iv495, -1
  %.not323 = icmp eq i64 %indvars.iv495, 0
  br i1 %.not323, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a, %.critedge355.loopexit
  %indvars.iv495 = phi i64 [ 3, %bb.a ], [ %indvars.iv.next496, %.critedge355.loopexit ] ; 3 uses
  %.0293434 = phi i32 [ 0, %bb.a ], [ %.1294.ph.lcssa416, %.critedge355.loopexit ] ; 2 uses
  %.0296433 = phi ptr [ null, %bb.a ], [ %.1297.ph.lcssa417, %.critedge355.loopexit ] ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr @codelet_list, i64 %indvars.iv495
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51   ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !54   ; 2 uses
  %.not340424428 = icmp eq ptr %i.p, null
  br i1 %.not340424428, label %.critedge355.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.q = sext i32 %.0293434 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %get_codelet_prio.exit
  %indvars.iv = phi i64 [ %i.q, %.lr.ph.preheader ], [ %indvars.iv.next, %get_codelet_prio.exit ] ; 3 uses
  %i.r = phi ptr [ %i.p, %.lr.ph.preheader ], [ %i.da, %get_codelet_prio.exit ]
  %.lcssa410.pn = phi ptr [ %i.o, %.lr.ph.preheader ], [ %i.t, %get_codelet_prio.exit ]
  %.1297.ph429 = phi ptr [ %.0296433, %.lr.ph.preheader ], [ %i.br, %get_codelet_prio.exit ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.backedge
  %i.s = phi ptr [ %i.r, %.lr.ph ], [ %i.ah, %.backedge ] ; 13 uses
  %.lcssa410.pn.pn = phi ptr [ %.lcssa410.pn, %.lr.ph ], [ %i.t, %.backedge ]
  %i.t = getelementptr inbounds nuw i8, ptr %.lcssa410.pn.pn, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !55   ; 2 uses
  %.not341 = icmp eq i32 %i.v, 2147483647
  %.not342 = icmp eq i32 %1, %i.v
  %or.cond352 = or i1 %.not341, %.not342
  br i1 %or.cond352, label %bb.d, label %.backedge

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !57   ; 6 uses
  %i.y = and i64 %i.x, 576460752303423488
  %i.z = icmp ne i64 %i.y, 0
  %or.cond = and i1 %i.j, %i.z
  br i1 %or.cond, label %.backedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = and i64 %i.x, 1152921504606846980
  %i.ab = icmp eq i64 %i.aa, 0
  %or.cond5 = or i1 %i.j, %i.ab
  br i1 %or.cond5, label %bb.f, label %.backedge

bb.f:                                             ; preds = %bb.e
  %i.ac = and i64 %i.x, 576460752303423496
  %i.ad = icmp ne i64 %i.ac, 0
  %or.cond7 = and i1 %i.j, %i.ad
  br i1 %or.cond7, label %.backedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = and i64 %i.x, 576460752303423504
  %i.af = icmp ne i64 %i.ae, 0
  %or.cond9 = and i1 %i.j, %i.af
  %i.ag = and i64 %i.x, %.2292
  %.not343 = icmp ne i64 %i.ag, %.2292
  %or.cond472.not = select i1 %or.cond9, i1 true, i1 %.not343
  br i1 %or.cond472.not, label %.backedge, label %bb.h

.backedge:                                        ; preds = %bb.k, %bb.i, %bb.j, %bb.h, %bb.d, %bb.e, %bb.f, %bb.g, %check_cd_factors.exit, %bb.c
  %i.ah = load ptr, ptr %i.t, align 8, !tbaa !54  ; 2 uses
  %.not340 = icmp eq ptr %i.ah, null
  br i1 %.not340, label %.critedge355.loopexit.loopexit, label %bb.c, !llvm.loop !86

bb.h:                                             ; preds = %bb.g
  %i.ai = xor i64 %i.x, %.2292
  %i.aj = and i64 %i.ai, 2594073385365405724
  %.not344 = icmp eq i64 %i.aj, 0
  br i1 %.not344, label %bb.i, label %.backedge

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 100
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !63
  %i.am = icmp slt i32 %4, %i.al
  br i1 %i.am, label %.backedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !64 ; 2 uses
  %.not345 = icmp ne i32 %i.ao, -1
  %i.ap = icmp sgt i32 %4, %i.ao
  %or.cond353 = and i1 %.not345, %i.ap
  br i1 %or.cond353, label %.backedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !58 ; 2 uses
  %.not346 = icmp ne i32 %i.ar, 0
  %i.as = and i32 %i.k, %i.ar
  %.not347 = icmp eq i32 %i.as, 0
  %or.cond471 = select i1 %.not346, i1 %.not347, i1 false
  br i1 %or.cond471, label %.backedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.thread54.i, %bb.l
  %indvars.iv.i = phi i64 [ 0, %bb.l ], [ %indvars.iv.next.i, %.thread54.i ] ; 2 uses
  %.03370.i = phi i32 [ 0, %bb.l ], [ %.13461.i, %.thread54.i ] ; 4 uses
  %.03669.i = phi i32 [ 0, %bb.l ], [ %.460.i, %.thread54.i ] ; 5 uses
  %.03968.i = phi i32 [ %4, %bb.l ], [ %.54459.i, %.thread54.i ] ; 10 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i
  %i.av = load i32, ptr %i.au, align 4, !tbaa !22 ; 6 uses
  %i.aw = icmp eq i32 %i.av, -1
  br i1 %i.aw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ax = add nsw i32 %.03669.i, 1
  br label %.thread54.i

bb.o:                                             ; preds = %bb.m
  %i.ay = icmp sgt i32 %.03968.i, 1
  %i.az = icmp ne i32 %i.av, 0
  %or.cond.i = and i1 %i.ay, %i.az
  br i1 %or.cond.i, label %bb.p, label %check_cd_factors.exit

bb.p:                                             ; preds = %bb.o
  %i.ba = icmp eq i32 %i.av, 2
  br i1 %i.ba, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bb = sub nsw i32 0, %.03968.i
  %i.bc = and i32 %.03968.i, %i.bb
  %i.bd = mul i32 %i.bc, 125613361
  %i.be = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.03968.i, i1 true)
  %.not49.not.i = icmp ugt i32 %i.bd, 134217727
  %i.bf = lshr exact i32 %.03968.i, %i.be
  %i.bg = zext i1 %.not49.not.i to i32
  %spec.select.i = add nsw i32 %.03669.i, %i.bg
  br label %.thread54.i

bb.r:                                             ; preds = %bb.p
  %i.bh = srem i32 %.03968.i, %i.av
  %.not.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i, label %.preheader.i, label %.thread54.i

.preheader.i:                                     ; preds = %bb.r, %.preheader.i
  %.24167.i = phi i32 [ %i.bi, %.preheader.i ], [ %.03968.i, %bb.r ]
  %i.bi = sdiv i32 %.24167.i, %i.av               ; 3 uses
  %i.bj = srem i32 %i.bi, %i.av
  %.not48.i = icmp eq i32 %i.bj, 0
  br i1 %.not48.i, label %.preheader.i, label %bb.s, !llvm.loop !87

bb.s:                                             ; preds = %.preheader.i
  %i.bk = add nsw i32 %.03669.i, 1
  br label %.thread54.i

.thread54.i:                                      ; preds = %bb.s, %bb.r, %bb.q, %bb.n
  %.13461.i = phi i32 [ %.03370.i, %bb.q ], [ %.03370.i, %bb.r ], [ 1, %bb.n ], [ %.03370.i, %bb.s ] ; 2 uses
  %.460.i = phi i32 [ %spec.select.i, %bb.q ], [ %.03669.i, %bb.r ], [ %i.ax, %bb.n ], [ %i.bk, %bb.s ] ; 2 uses
  %.54459.i = phi i32 [ %i.bf, %bb.q ], [ %.03968.i, %bb.r ], [ %.03968.i, %bb.n ], [ %i.bi, %bb.s ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 16
  br i1 %exitcond.not.i, label %check_cd_factors.exit, label %bb.m, !llvm.loop !88

check_cd_factors.exit:                            ; preds = %bb.o, %.thread54.i
  %.039.lcssa.i = phi i32 [ %.03968.i, %bb.o ], [ %.54459.i, %.thread54.i ]
  %.036.lcssa.i = phi i32 [ %.03669.i, %bb.o ], [ %.460.i, %.thread54.i ]
  %.033.lcssa.i = phi i32 [ %.03370.i, %bb.o ], [ %.13461.i, %.thread54.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !62
  %.not50.i = icmp sgt i32 %i.bm, %.036.lcssa.i
  %i.bn = icmp eq i32 %.033.lcssa.i, 0
  %i.bo = icmp ne i32 %.039.lcssa.i, 1
  %.not397 = select i1 %i.bn, i1 %i.bo, i1 false
  %narrow.i.not = select i1 %.not50.i, i1 true, i1 %.not397
  br i1 %narrow.i.not, label %.backedge, label %bb.t

bb.t:                                             ; preds = %check_cd_factors.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.bq = shl nsw i64 %indvars.iv.next, 4
  %i.br = call ptr @av_fast_realloc(ptr noundef %.1297.ph429, ptr noundef nonnull %i.a, i64 noundef %i.bq) #14 ; 4 uses
  %.not349 = icmp eq ptr %i.br, null
  br i1 %.not349, label %.sink.split, label %bb.u, !llvm.loop !89

bb.u:                                             ; preds = %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %i.bt = getelementptr inbounds nuw i8, ptr %i.s, i64 100
  %i.bu = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.bv = getelementptr inbounds [16 x i8], ptr %i.br, i64 %indvars.iv ; 2 uses
  store ptr %i.s, ptr %i.bv, align 8, !tbaa !90
  %i.bw = getelementptr inbounds nuw i8, ptr %i.s, i64 132
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !65 ; 2 uses
  %i.by = load i32, ptr %i.bs, align 8, !tbaa !58
  %i.bz = and i32 %i.by, %i.c                     ; 6 uses
  %i.ca = and i32 %i.bz, 1073741824
  %.not38.i = icmp eq i32 %i.ca, 0
  %i.cb = add nsw i32 %i.bx, -65
  %spec.select46.i = select i1 %.not38.i, i32 %i.bx, i32 %i.cb ; 2 uses
  %i.cc = and i32 %i.bz, 536870912
  %.not38.1.i = icmp eq i32 %i.cc, 0
  %i.cd = add nsw i32 %spec.select46.i, -65
  %.1.1.i = select i1 %.not38.1.i, i32 %spec.select46.i, i32 %i.cd ; 2 uses
  %i.ce = and i32 %i.bz, 67108864
  %.not38.2.i = icmp eq i32 %i.ce, 0
  %i.cf = add nsw i32 %.1.1.i, -65
  %.1.2.i = select i1 %.not38.2.i, i32 %.1.1.i, i32 %i.cf ; 2 uses
  %i.cg = and i32 %i.bz, 268435456
  %.not38.3.i = icmp eq i32 %i.cg, 0
  %i.ch = add nsw i32 %.1.2.i, -129
  %.1.3.i = select i1 %.not38.3.i, i32 %.1.2.i, i32 %i.ch ; 2 uses
  %i.ci = and i32 %i.bz, 134217728
  %.not38.4.i = icmp eq i32 %i.ci, 0
  %i.cj = add nsw i32 %.1.3.i, -129
  %.1.4.i = select i1 %.not38.4.i, i32 %.1.3.i, i32 %i.cj ; 2 uses
  %i.ck = and i32 %i.bz, 33554432
  %.not38.5.i = icmp eq i32 %i.ck, 0
  %i.cl = add nsw i32 %.1.4.i, -33
  %.1.5.i = select i1 %.not38.5.i, i32 %.1.4.i, i32 %i.cl ; 2 uses
  %i.cm = load i64, ptr %i.bu, align 8, !tbaa !57 ; 2 uses
  %i.cn = and i64 %i.cm, 4611686018427387906
  %or.cond.i370 = icmp eq i64 %i.cn, 4611686018427387904
  %i.co = add nsw i32 %.1.5.i, 64
  %.2.i = select i1 %or.cond.i370, i32 %i.co, i32 %.1.5.i ; 3 uses
  %i.cp = load i32, ptr %i.bt, align 4, !tbaa !63
  %i.cq = icmp eq i32 %4, %i.cp
  br i1 %i.cq, label %bb.v, label %get_codelet_prio.exit

bb.v:                                             ; preds = %bb.u
  %i.cr = load i32, ptr %i.bp, align 8, !tbaa !64
  %i.cs = icmp eq i32 %4, %i.cr
  %i.ct = add nsw i32 %.2.i, 64
  %spec.select.i371 = select i1 %i.cs, i32 %i.ct, i32 %.2.i
  br label %get_codelet_prio.exit

get_codelet_prio.exit:                            ; preds = %bb.u, %bb.v
  %.3.i = phi i32 [ %.2.i, %bb.u ], [ %spec.select.i371, %bb.v ] ; 2 uses
  %16 = load <4 x i32>, ptr %i.at, align 4, !tbaa !22
  %17 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %16)
  %i.cu = call i32 @llvm.smax.i32(i32 %17, i32 0)
  %i.cv = and i64 %i.cm, 1729382256910270464
  %.not36.i = icmp eq i64 %i.cv, 0
  %i.cw = add nsw i32 %.3.i, 64
  %spec.select39.i = select i1 %.not36.i, i32 %.3.i, i32 %i.cw
  %i.cx = shl i32 %i.cu, 4
  %i.cy = add nsw i32 %i.cx, %spec.select39.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i32 %i.cy, ptr %i.cz, align 8, !tbaa !92
  %i.da = load ptr, ptr %i.t, align 8, !tbaa !54  ; 2 uses
  %.not340424 = icmp eq ptr %i.da, null
  br i1 %.not340424, label %.critedge355.loopexit.loopexit473, label %.lr.ph, !llvm.loop !86

bb.w:                                             ; preds = %.critedge355.loopexit
  call void @av_bprint_init(ptr noundef nonnull %7, i32 noundef 0, i32 noundef 1) #14
  %.not324 = icmp eq i32 %5, 0
  %i.db = select i1 %.not324, ptr @.str.6, ptr @.str.5
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.4, i32 noundef %4, ptr noundef nonnull %i.db) #14
  switch i32 %1, label %bb.x [
    i32 2147483647, label %print_type.exit
    i32 0, label %.fold.split.i
    i32 1, label %.fold.split16.i
    i32 6, label %.fold.split17.i
    i32 12, label %.fold.split18.i
    i32 15, label %.fold.split19.i
    i32 2, label %.fold.split20.i
    i32 3, label %.fold.split21.i
    i32 7, label %.fold.split22.i
    i32 13, label %.fold.split23.i
    i32 16, label %.fold.split24.i
    i32 4, label %.fold.split25.i
    i32 5, label %.fold.split26.i
    i32 8, label %.fold.split27.i
  ]

bb.x:                                             ; preds = %bb.w
  %i.dc = icmp eq i32 %1, 14
  %i.dd = icmp eq i32 %1, 17
  %i.de = select i1 %i.dd, ptr @.str.33, ptr @.str.34
  %i.df = select i1 %i.dc, ptr @.str.32, ptr %i.de
  br label %print_type.exit

.fold.split.i:                                    ; preds = %bb.w
  br label %print_type.exit

.fold.split16.i:                                  ; preds = %bb.w
  br label %print_type.exit

.fold.split17.i:                                  ; preds = %bb.w
  br label %print_type.exit

.fold.split18.i:                                  ; preds = %bb.w
  br label %print_type.exit

.fold.split19.i:                                  ; preds = %bb.w
  br label %print_type.exit

.fold.split20.i:                                  ; preds = %bb.w
  br label %print_type.exit

.fold.split21.i:                                  ; preds = %bb.w
  br label %print_type.exit

.fold.split22.i:                                  ; preds = %bb.w
  br label %print_type.exit

.fold.split23.i:                                  ; preds = %bb.w
  br label %print_type.exit

.fold.split24.i:                                  ; preds = %bb.w
  br label %print_type.exit

.fold.split25.i:                                  ; preds = %bb.w
  br label %print_type.exit

.fold.split26.i:                                  ; preds = %bb.w
  br label %print_type.exit

.fold.split27.i:                                  ; preds = %bb.w
  br label %print_type.exit

print_type.exit:                                  ; preds = %bb.w, %bb.x, %.fold.split.i, %.fold.split16.i, %.fold.split17.i, %.fold.split18.i, %.fold.split19.i, %.fold.split20.i, %.fold.split21.i, %.fold.split22.i, %.fold.split23.i, %.fold.split24.i, %.fold.split25.i, %.fold.split26.i, %.fold.split27.i
  %i.dg = phi ptr [ @.str.18, %bb.w ], [ @.str.30, %.fold.split26.i ], [ @.str.19, %.fold.split.i ], [ @.str.20, %.fold.split16.i ], [ @.str.21, %.fold.split17.i ], [ @.str.22, %.fold.split18.i ], [ @.str.23, %.fold.split19.i ], [ @.str.24, %.fold.split20.i ], [ @.str.25, %.fold.split21.i ], [ @.str.26, %.fold.split22.i ], [ @.str.27, %.fold.split23.i ], [ @.str.28, %.fold.split24.i ], [ @.str.29, %.fold.split25.i ], [ %i.df, %bb.x ], [ @.str.31, %.fold.split27.i ]
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.17, ptr noundef %i.dg) #14
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.7) #14
  call fastcc void @print_flags(ptr noundef %7, i64 noundef %2)
  %.not325 = icmp eq i32 %.1294.ph.lcssa416, 0    ; 2 uses
  %i.dh = select i1 %.not325, ptr @.str.10, ptr @.str.9
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.8, i32 noundef %.1294.ph.lcssa416, ptr noundef nonnull %i.dh) #14
  br i1 %.not325, label %bb.bi, label %bb.y

bb.y:                                             ; preds = %print_type.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr %.1297.ph.lcssa417, ptr %i.b, align 16, !tbaa !72
  %i.di = sext i32 %.1294.ph.lcssa416 to i64
  %i.dj = getelementptr inbounds [16 x i8], ptr %.1297.ph.lcssa417, i64 %i.di
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !72
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread
  %.0281454 = phi i32 [ 1, %bb.y ], [ %.1282405, %.thread ] ; 2 uses
  %i.dm = add nsw i32 %.0281454, -1               ; 2 uses
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.dn ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 16, !tbaa !72 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !72 ; 2 uses
  %i.ds = icmp ult ptr %i.dp, %i.dr
  br i1 %i.ds, label %.lr.ph449.preheader, label %.thread

.lr.ph449.preheader:                              ; preds = %bb.z
  %i.dt = sext i32 %.0281454 to i64
  %i.du = add nsw i64 %i.dt, -1
  br label %.lr.ph449

.lr.ph449:                                        ; preds = %.lr.ph449.preheader, %bb.as
  %indvars.iv498 = phi i64 [ %i.du, %.lr.ph449.preheader ], [ %indvars.iv.next499, %bb.as ] ; 6 uses
  %.0275447 = phi ptr [ %i.dr, %.lr.ph449.preheader ], [ %.1276, %bb.as ] ; 16 uses
  %.0278446 = phi ptr [ %i.dp, %.lr.ph449.preheader ], [ %.1279, %bb.as ] ; 18 uses
  %i.dv = getelementptr inbounds i8, ptr %.0275447, i64 -16 ; 5 uses
  %i.dw = icmp ult ptr %.0278446, %i.dv
  br i1 %i.dw, label %bb.aa, label %bb.at

bb.aa:                                            ; preds = %.lr.ph449
  %i.dx = getelementptr inbounds i8, ptr %.0275447, i64 -32 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.0278446, i64 16 ; 3 uses
  %i.dz = ptrtoint ptr %.0275447 to i64           ; 2 uses
  %i.ea = ptrtoint ptr %.0278446 to i64           ; 2 uses
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = ashr i64 %i.eb, 5
  %i.ed = getelementptr inbounds [16 x i8], ptr %.0278446, i64 %i.ec ; 12 uses
  %i.ee = getelementptr i8, ptr %.0278446, i64 8
  %.0278.val368 = load i32, ptr %i.ee, align 8, !tbaa !92 ; 2 uses
  %i.ef = getelementptr i8, ptr %.0275447, i64 8  ; 2 uses
  %.0275.val369 = load i32, ptr %i.ef, align 8, !tbaa !92 ; 2 uses
  %i.eg = icmp sgt i32 %.0275.val369, %.0278.val368
  %i.eh = getelementptr i8, ptr %i.ed, i64 8
  %.val367 = load i32, ptr %i.eh, align 8, !tbaa !92 ; 2 uses
  br i1 %i.eg, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.ei = icmp sgt i32 %.val367, %.0275.val369
  br i1 %i.ei, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.ed, i64 16, i1 false), !tbaa.struct !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, ptr noundef nonnull align 8 dereferenceable(16) %.0278446, i64 16, i1 false), !tbaa.struct !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0278446, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !93
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %.0275447, i64 16, i1 false), !tbaa.struct !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0275447, ptr noundef nonnull align 8 dereferenceable(16) %.0278446, i64 16, i1 false), !tbaa.struct !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0278446, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !93
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.aa
  %i.ej = icmp sgt i32 %.val367, %.0278.val368
  br i1 %i.ej, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %i.ed, i64 16, i1 false), !tbaa.struct !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, ptr noundef nonnull align 8 dereferenceable(16) %.0278446, i64 16, i1 false), !tbaa.struct !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0278446, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !93
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.ac, %bb.ad
  %.0273 = phi i32 [ 0, %bb.ac ], [ 0, %bb.ad ], [ 0, %bb.af ], [ 1, %bb.ae ]
  %i.ek = getelementptr i8, ptr %i.ed, i64 8
  %.val362 = load i32, ptr %i.ek, align 8, !tbaa !92
  %.0275.val363 = load i32, ptr %i.ef, align 8, !tbaa !92
  %i.el = icmp sgt i32 %.0275.val363, %.val362
  br i1 %i.el, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %.0275447, i64 16, i1 false), !tbaa.struct !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0275447, ptr noundef nonnull align 8 dereferenceable(16) %i.ed, i64 16, i1 false), !tbaa.struct !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !93
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.1274 = phi i32 [ 0, %bb.ah ], [ %.0273, %bb.ag ]
  %i.em = icmp eq ptr %.0278446, %i.dx
  br i1 %i.em, label %.thread.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %i.ed, i64 16, i1 false), !tbaa.struct !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i64 16, i1 false), !tbaa.struct !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !93
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
end_hunk_0
begin_hunk_1_@print_cd_info:bb.a

bb.bu:                                            ; preds = %bb.bs
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.53, i32 noundef %i.cf) #14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %bb.s, %bb.w, %bb.aa, %bb.ae, %bb.ai, %bb.am, %bb.aq, %bb.au, %bb.ay, %bb.bc, %bb.bg, %bb.bk, %bb.bo, %bb.bs, %bb.bu, %bb.bt, %bb.k
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.57) #14
  br label %bb.bv

.thread49:                                        ; preds = %bb.h, %.thread
  %i.cg = phi ptr [ @.str.38, %.thread ], [ %i.s, %bb.h ]
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !22
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.58, ptr noundef nonnull %i.cg, i32 noundef %i.ci) #14
  br label %bb.bv

bb.bv:                                            ; preds = %.thread49, %.loopexit
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !57
  call fastcc void @print_flags(ptr noundef %5, i64 noundef %i.ck)
  %.not46 = icmp eq i32 %3, 0
  br i1 %.not46, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.59, i32 noundef %1) #14
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.cl = load ptr, ptr %5, align 8, !tbaa !99
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef %4, ptr noundef nonnull @.str.11, ptr noundef %i.cl) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define i32 @av_tx_init(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #7 {
bb.a:
  %7 = alloca %struct.AVTXContext, align 8        ; 6 uses
  %i.a = alloca double, align 8                   ; 8 uses
  %i.b = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %7, i8 0, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !112
  %i.c = icmp ne i32 %4, 0
  %i.d = icmp ult i32 %2, 18
  %or.cond.not55 = and i1 %i.d, %i.c
  %i.e = icmp ne ptr %0, null
  %or.cond3 = and i1 %i.e, %or.cond.not55
  %i.f = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.f, %or.cond3
  br i1 %or.cond5, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = shl i64 %6, 61
  %i.h = and i64 %i.g, 4611686018427387904
  %i.i = xor i64 %6, -1
  %i.j = shl i64 %i.i, 63
  %i.k = or disjoint i64 %i.h, %i.j
  %i.l = xor i64 %i.k, 4611686018427387904
  %.1 = or i64 %i.l, %6
  %i.m = icmp ne ptr %5, null                     ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %2, label %bb.d [
    i32 16, label %bb.e
    i32 13, label %bb.e
    i32 10, label %bb.e
    i32 7, label %bb.e
    i32 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = and i32 %2, 29
  %i.o = icmp eq i32 %i.n, 0
  %i.p = icmp eq i32 %2, 4
  %i.q = or i1 %i.p, %i.o
  %or.cond19 = or i1 %i.q, %i.m
  %spec.select57 = select i1 %or.cond19, ptr %5, ptr %i.b
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %.048 = phi ptr [ %spec.select57, %bb.d ], [ %i.a, %bb.c ], [ %i.a, %bb.c ], [ %i.a, %bb.c ], [ %i.a, %bb.c ], [ %i.a, %bb.c ]
  %i.r = call i32 @ff_tx_init_subtx(ptr noundef nonnull %7, i32 noundef %2, i64 noundef %.1, ptr noundef null, i32 noundef %4, i32 noundef %3, ptr noundef %.048) #17 ; 3 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40
  store ptr %i.u, ptr %0, align 8, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !72
  store ptr %i.w, ptr %1, align 8, !tbaa !72
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 48, ptr noundef nonnull @.str.13) #14
  %i.x = load ptr, ptr %0, align 8, !tbaa !50
  call fastcc void @print_tx_structure(ptr noundef %i.x, i32 noundef 0)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.a, %bb.f
  %.049 = phi i32 [ -22, %bb.a ], [ %i.r, %bb.f ], [ %i.r, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  ret i32 %.049
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define internal fastcc void @print_tx_structure(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %.not14 = icmp slt i32 %1, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.d = load i32, ptr %i.c, align 4, !tbaa !65
  %i.e = load i32, ptr %0, align 8, !tbaa !9
  tail call fastcc void @print_cd_info(ptr noundef %i.b, i32 noundef %i.d, i32 noundef %i.e, i32 noundef 0, i32 noundef 48)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !103
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph18, label %._crit_edge19

.lr.ph18:                                         ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = add nsw i32 %1, 1
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01215 = phi i32 [ %i.k, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 48, ptr noundef nonnull @.str.60) #14
  %i.k = add nuw i32 %.01215, 1
  %exitcond.not = icmp eq i32 %.01215, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !113

._crit_edge19:                                    ; preds = %bb.b, %._crit_edge
  ret void

bb.b:                                             ; preds = %.lr.ph18, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph18 ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw [160 x i8], ptr %i.l, i64 %indvars.iv
  tail call fastcc void @print_tx_structure(ptr noundef %i.m, i32 noundef %i.j)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = load i32, ptr %i.f, align 8, !tbaa !103
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %bb.b, label %._crit_edge19, !llvm.loop !114
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @ff_tx_null(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %3, i1 false)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal range(i32 -22, 1) i32 @ff_tx_null_init(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree readnone captures(none) %3, i32 %4, i32 %5, ptr nofree readnone captures(none) %6) #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load i32, ptr %i.a, align 8, !tbaa !104
  %switch.tableidx = add i32 %i.b, -1             ; 2 uses
  %i.c = icmp ult i32 %switch.tableidx, 8
  br i1 %i.c, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.ff_tx_null_init, i64 %i.d
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { noreturn nounwind }
attributes #17 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 0}
!10 = !{!"AVTXContext", !6, i64 0, !6, i64 4, !11, i64 8, !12, i64 16, !12, i64 24, !13, i64 32, !7, i64 40, !6, i64 72, !7, i64 80, !14, i64 112, !6, i64 120, !15, i64 128, !6, i64 136, !16, i64 140, !17, i64 144, !12, i64 152}
!11 = !{!"p1 int", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS11AVTXContext", !12, i64 0}
!14 = !{!"p1 _ZTS11FFTXCodelet", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"float", !7, i64 0}
!17 = !{!"double", !7, i64 0}
!18 = !{!10, !11, i64 8}
!19 = !{!10, !6, i64 4}
!20 = !{!21, !6, i64 0}
!21 = !{!"FFTXCodeletOptions", !6, i64 0}
!22 = !{!6, !6, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = distinct !{!25, !24}
!26 = distinct !{!26, !24}
!27 = distinct !{!27, !24}
!28 = distinct !{!28, !24}
!29 = distinct !{!29, !24}
!30 = !{!10, !6, i64 136}
!31 = distinct !{!31, !24}
!32 = distinct !{!32, !24}
!33 = distinct !{!33, !24}
!34 = distinct !{!34, !24}
!35 = distinct !{!35, !24}
!36 = distinct !{!36, !24}
!37 = distinct !{!37, !24}
!38 = distinct !{!38, !24}
!39 = distinct !{!39, !24}
!40 = !{!10, !13, i64 32}
!41 = distinct !{!41, !24}
!42 = distinct !{!42, !24}
!43 = distinct !{!43, !24}
!44 = distinct !{!44, !24}
!45 = !{!10, !14, i64 112}
!46 = !{!47, !12, i64 120}
!47 = !{!"FFTXCodelet", !48, i64 0, !12, i64 8, !6, i64 16, !15, i64 24, !7, i64 32, !6, i64 96, !6, i64 100, !6, i64 104, !12, i64 112, !12, i64 120, !6, i64 128, !6, i64 132}
!48 = !{!"p1 omnipotent char", !12, i64 0}
!49 = !{!10, !12, i64 152}
!50 = !{!13, !13, i64 0}
!51 = !{!52, !52, i64 0}
!52 = !{!"p2 _ZTS11FFTXCodelet", !53, i64 0}
!53 = !{!"any p2 pointer", !12, i64 0}
!54 = !{!14, !14, i64 0}
!55 = !{!47, !6, i64 16}
!56 = distinct !{!56, !24}
!57 = !{!47, !15, i64 24}
!58 = !{!47, !6, i64 128}
!59 = !{!"branch_weights", i32 1, i32 1048575}
!60 = distinct !{!60, !24}
!61 = distinct !{!61, !24}
!62 = !{!47, !6, i64 96}
!63 = !{!47, !6, i64 100}
!64 = !{!47, !6, i64 104}
!65 = !{!47, !6, i64 132}
!66 = distinct !{!66, !24}
!67 = !{!68, !6, i64 0}
!68 = !{!"FFTXLenDecomp", !6, i64 0, !6, i64 4, !6, i64 8, !14, i64 16}
!69 = !{!68, !6, i64 8}
!70 = !{!68, !14, i64 16}
!71 = !{!68, !6, i64 4}
!72 = !{!12, !12, i64 0}
!73 = !{i64 0, i64 4, !22, i64 4, i64 4, !22, i64 8, i64 4, !22, i64 16, i64 8, !54}
!74 = distinct !{!74, !24}
!75 = distinct !{!75, !24}
!76 = distinct !{!76, !24}
!77 = distinct !{!77, !24}
!78 = distinct !{!78, !24}
!79 = distinct !{!79, !24}
!80 = distinct !{!80, !24, !81, !82}
!81 = !{!"llvm.loop.isvectorized", i32 1}
!82 = !{!"llvm.loop.unroll.runtime.disable"}
!83 = distinct !{!83, !24, !81, !82}
!84 = distinct !{!84, !24, !82, !81}
!85 = distinct !{!85, !24, !82, !81}
!86 = distinct !{!86, !24}
!87 = distinct !{!87, !24}
!88 = distinct !{!88, !24}
!89 = distinct !{!89, !24}
!90 = !{!91, !14, i64 0}
!91 = !{!"TXCodeletMatch", !14, i64 0, !6, i64 8}
!92 = !{!91, !6, i64 8}
!93 = !{i64 0, i64 8, !54, i64 8, i64 4, !22}
!94 = distinct !{!94, !24}
!95 = distinct !{!95, !24}
!96 = distinct !{!96, !24}
!97 = distinct !{!97, !24}
!98 = distinct !{!98, !24}
!99 = !{!100, !48, i64 0}
!100 = !{!"AVBPrint", !48, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !7, i64 20, !7, i64 21}
!101 = distinct !{!101, !24}
!102 = distinct !{!102, !24}
!103 = !{!10, !6, i64 72}
!104 = !{!10, !6, i64 120}
!105 = !{!10, !15, i64 128}
!106 = !{!47, !12, i64 8}
!107 = !{!47, !12, i64 112}
!108 = distinct !{!108, !24}
!109 = distinct !{!109, !24}
!110 = !{!47, !48, i64 0}
!111 = !{!17, !17, i64 0}
!112 = !{!16, !16, i64 0}
!113 = distinct !{!113, !24}
!114 = distinct !{!114, !24}
end_hunk_1
