Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaTruth?download=true
inline.NumInlined: 491
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@Vec_WecPush:bb.a
  %i.m = phi i32 [ %.pre.i, %bb.d ], [ %i.f, %bb.e ] ; 2 uses
  %i.n = phi ptr [ %i.k, %bb.d ], [ %i.l, %bb.e ] ; 2 uses
  store ptr %i.n, ptr %i.g, align 8, !tbaa !77
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds [16 x i8], ptr %i.n, i64 %i.o
  %i.q = sub nsw i32 %i.e, %i.m
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
  store i32 %i.e, ptr %0, align 8, !tbaa !76
  br label %Vec_WecGrow.exit

Vec_WecGrow.exit:                                 ; preds = %bb.b, %bb.f
  store i32 %i.c, ptr %i.a, align 4, !tbaa !75
  br label %bb.g

bb.g:                                             ; preds = %Vec_WecGrow.exit, %bb.a
  %i.t = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.t, align 8, !tbaa !77
  %i.u = sext i32 %1 to i64
  %i.v = getelementptr inbounds [16 x i8], ptr %.val, i64 %i.u ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !42   ; 7 uses
  %i.y = load i32, ptr %i.v, align 8, !tbaa !43
  %i.z = icmp eq i32 %i.x, %i.y
  br i1 %i.z, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp slt i32 %i.x, 16
  br i1 %i.aa, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !38 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ac, null
  br i1 %.not9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ac, i64 noundef 64) #26
  br label %Vec_IntGrow.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ae = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.k, %bb.j
  %i.af = phi ptr [ %i.ad, %bb.j ], [ %i.ae, %bb.k ]
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !38
  br label %Vec_IntGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.h
  %i.ag = icmp samesign ult i32 %i.x, 1073741823
  %i.ah = shl nuw nsw i32 %i.x, 1
  %spec.select.i = select i1 %i.ag, i32 %i.ah, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.x, %spec.select.i
  br i1 %.not.i9.i, label %bb.m, label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !38 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.aj, null
  %i.ak = zext nneg i32 %spec.select.i to i64
  %i.al = shl nuw nsw i64 %i.ak, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = tail call ptr @realloc(ptr noundef nonnull %i.aj, i64 noundef %i.al) #26
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.an = tail call noalias ptr @malloc(i64 noundef %i.al) #25
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ao = phi ptr [ %i.am, %bb.n ], [ %i.an, %bb.o ]
  store ptr %i.ao, ptr %i.ai, align 8, !tbaa !38
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.p, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.p ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.v, align 8, !tbaa !43
  %.pre = load i32, ptr %i.w, align 4, !tbaa !42
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.g, %bb.l, %Vec_IntGrow.exit11.sink.split.i
  %i.ap = phi i32 [ %i.x, %bb.g ], [ %i.x, %bb.l ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !38
  %i.as = add nsw i32 %i.ap, 1
  store i32 %i.as, ptr %i.w, align 4, !tbaa !42
  %i.at = sext i32 %i.ap to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.at
  store i32 %2, ptr %i.au, align 4, !tbaa !39
  ret void
}

declare i32 @Abc_TtCanonicize(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @Vec_MemHashInsert(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !86
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !84   ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4        ; 2 uses
  %.val15 = load i32, ptr %i.e, align 4, !tbaa !42 ; 2 uses
  %i.f = icmp sgt i32 %i.b, %.val15
  br i1 %i.f, label %bb.b, label %Vec_MemHashResize.exit

bb.b:                                             ; preds = %bb.a
  %i.g = shl nsw i32 %.val15, 1
  %i.h = add i32 %i.g, -1
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.backedge, %bb.b
  %.012.i.i = phi i32 [ %i.h, %bb.b ], [ %i.i, %.critedge.i.i.backedge ] ; 2 uses
  %i.i = add i32 %.012.i.i, 1                     ; 9 uses
  %i.j = and i32 %.012.i.i, 1
  %.not.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.not.i.i, label %.preheader.i.i, label %.critedge.i.i.backedge

.critedge.i.i.backedge:                           ; preds = %.lr.ph.i.i, %.critedge.i.i
  br label %.critedge.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i
  %.not15.i.i = icmp ult i32 %i.i, 9
  br i1 %.not15.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.k = add nuw nsw i32 %.01116.i.i, 2           ; 3 uses
  %i.l = mul nuw nsw i32 %i.k, %i.k
  %.not.i.i = icmp ugt i32 %i.l, %i.i
  br i1 %.not.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i, !llvm.loop !4

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.c
  %.01116.i.i = phi i32 [ %i.k, %bb.c ], [ 3, %.preheader.i.i ] ; 2 uses
  %i.m = urem i32 %i.i, %.01116.i.i
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.critedge.i.i.backedge, label %bb.c

Abc_PrimeCudd.exit.i:                             ; preds = %.preheader.i.i, %bb.c
  %i.o = load i32, ptr %i.d, align 8, !tbaa !43
  %.not.i.i.i = icmp slt i32 %i.o, %i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !38   ; 3 uses
  br i1 %.not.i.i.i, label %bb.d, label %Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i

Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i:        ; preds = %Abc_PrimeCudd.exit.i
  %.pre40.i = zext nneg i32 %i.i to i64
  %.pre41.i = shl nuw nsw i64 %.pre40.i, 2
  br label %.lr.ph.i15.i

bb.d:                                             ; preds = %Abc_PrimeCudd.exit.i
  %.not9.i.i.i = icmp eq ptr %i.q, null
  %i.r = zext nneg i32 %i.i to i64
  %i.s = shl nuw nsw i64 %i.r, 2                  ; 3 uses
  br i1 %.not9.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = tail call ptr @realloc(ptr noundef nonnull %i.q, i64 noundef %i.s) #26
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.s) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = phi ptr [ %i.t, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  store ptr %i.v, ptr %i.p, align 8, !tbaa !38
  store i32 %i.i, ptr %i.d, align 8, !tbaa !43
  br label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %bb.g, %Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre41.i, %Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i ], [ %i.s, %bb.g ]
  %i.w = phi ptr [ %i.q, %Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i ], [ %i.v, %bb.g ]
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 -1, i64 %.pre-phi.i, i1 false), !tbaa !39
  store i32 %i.i, ptr %i.e, align 4, !tbaa !42
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !85
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 0, ptr %i.z, align 4, !tbaa !42
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1428.i = load i32, ptr %i.a, align 4, !tbaa !86
  %i.ab = icmp sgt i32 %.val1428.i, 0
  br i1 %i.ab, label %.lr.ph30.i, label %Vec_MemHashResize.exit

.lr.ph30.i:                                       ; preds = %.lr.ph.i15.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.h

bb.h:                                             ; preds = %Vec_IntPush.exit.i, %.lr.ph30.i
  %.029.i = phi i32 [ 0, %.lr.ph30.i ], [ %i.dz, %Vec_IntPush.exit.i ] ; 3 uses
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !87 ; 3 uses
  %i.af = load i32, ptr %i.ac, align 8, !tbaa !81 ; 3 uses
  %i.ag = lshr i32 %.029.i, %i.af
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !88 ; 2 uses
  %i.ak = load i32, ptr %0, align 8, !tbaa !80    ; 6 uses
  %i.al = load i32, ptr %i.ad, align 4, !tbaa !82 ; 3 uses
  %i.am = and i32 %i.al, %.029.i
  %i.an = mul nsw i32 %i.am, %i.ak
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ao ; 8 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %Vec_MemHashResize.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !84  ; 2 uses
  %i.ar = icmp sgt i32 %i.ak, 0
  br i1 %i.ar, label %.lr.ph.preheader.i.i.i, label %Vec_MemHashKey.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.i
  %i.as = shl nuw i32 %i.ak, 1                    ; 2 uses
  %smax.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.as, i32 1) ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %smax.i.i.i to i64 ; 5 uses
  %min.iters.check = icmp slt i32 %i.as, 8
  %2 = add nsw i32 %smax.i.i.i, -9
  %3 = icmp ult i32 %2, -8
  %or.cond = select i1 %min.iters.check, i1 true, i1 %3
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 8      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %8, %vector.body ]
  %vec.phi93 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %9, %vector.body ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %wide.load = load <4 x i32>, ptr %4, align 4, !tbaa !39
  %wide.load94 = load <4 x i32>, ptr %5, align 4, !tbaa !39
  %6 = mul <4 x i32> %wide.load, <i32 1699, i32 4177, i32 5147, i32 5647>
  %7 = mul <4 x i32> %wide.load94, <i32 6343, i32 7103, i32 7873, i32 8147>
  %8 = add <4 x i32> %6, %vec.phi                 ; 2 uses
  %9 = add <4 x i32> %7, %vec.phi93               ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %10 = icmp eq i64 %index.next, %n.vec
  br i1 %10, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %9, %8
  %11 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %Vec_MemHashKey.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.preheader.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.012.i.i.i.ph = phi i32 [ 0, %.lr.ph.preheader.i.i.i ], [ %11, %middle.block ] ; 2 uses
  %xtraiter.a = and i64 %wide.trip.count.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter.a, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.012.i.i.i.prol = phi i32 [ %18, %.lr.ph.i.i.i.prol ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %12 = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i.i.i.prol
  %13 = load i32, ptr %12, align 4, !tbaa !39
  %14 = and i64 %indvars.iv.i.i.i.prol, 7
  %15 = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !39
  %17 = mul i32 %16, %13
  %18 = add i32 %17, %.012.i.i.i.prol             ; 3 uses
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter.a
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !174

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa126.unr = phi i32 [ poison, %.lr.ph.i.i.i.preheader ], [ %18, %.lr.ph.i.i.i.prol ]
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.012.i.i.i.unr = phi i32 [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %18, %.lr.ph.i.i.i.prol ]
  %19 = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %20 = icmp ugt i64 %19, -4
  br i1 %20, label %Vec_MemHashKey.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3.a, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %.012.i.i.i = phi i32 [ %i.bu, %.lr.ph.i.i.i ], [ %.012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i.i.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !39
  %i.av = and i64 %indvars.iv.i.i.i, 7
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !39
  %i.ay = mul i32 %i.ax, %i.au
  %i.az = add i32 %i.ay, %.012.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !39
  %i.bc = and i64 %indvars.iv.next.i.i.i, 7
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !39
  %i.bf = mul i32 %i.be, %i.bb
  %i.bg = add i32 %i.bf, %i.az
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i.i.1
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !39
  %i.bj = and i64 %indvars.iv.next.i.i.i.1, 7
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !39
  %i.bm = mul i32 %i.bl, %i.bi
  %i.bn = add i32 %i.bm, %i.bg
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i.i.2
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !39
  %i.bq = and i64 %indvars.iv.next.i.i.i.2, 7
  %i.br = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !39
  %i.bt = mul i32 %i.bs, %i.bp
  %i.bu = add i32 %i.bt, %i.bn                    ; 2 uses
  %indvars.iv.next.i.i.i.3.a = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3.a, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %Vec_MemHashKey.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !175

Vec_MemHashKey.exit.i.i:                          ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %bb.i
  %.0.lcssa.i.i.i = phi i32 [ 0, %bb.i ], [ %11, %middle.block ], [ %.lcssa126.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.bu, %.lr.ph.i.i.i ]
  %i.bv = getelementptr i8, ptr %i.aq, i64 4
  %.val.i.i.i = load i32, ptr %i.bv, align 4, !tbaa !42
  %i.bw = urem i32 %.0.lcssa.i.i.i, %.val.i.i.i
  %i.bx = getelementptr i8, ptr %i.aq, i64 8
  %.val16.i.i = load ptr, ptr %i.bx, align 8, !tbaa !38
  %i.by = sext i32 %i.bw to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %.val16.i.i, i64 %i.by ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !39 ; 4 uses
  %.not17.i.i = icmp eq i32 %i.ca, -1
  br i1 %.not17.i.i, label %Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i, label %.lr.ph.i16.i

Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i: ; preds = %Vec_MemHashKey.exit.i.i
  %.pre37.i = load ptr, ptr %i.x, align 8, !tbaa !85
  br label %Vec_MemHashLookup.exit.i

.lr.ph.i16.i:                                     ; preds = %Vec_MemHashKey.exit.i.i
  %i.cb = sext i32 %i.ak to i64
  %i.cc = shl nsw i64 %i.cb, 3                    ; 2 uses
  %i.cd = ashr i32 %i.ca, %i.af
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !88
  %i.ch = and i32 %i.ca, %i.al
  %i.ci = mul nsw i32 %i.ch, %i.ak
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.cj
  %bcmp.i24.i = tail call i32 @bcmp(ptr %i.ck, ptr nonnull readonly %i.ap, i64 %i.cc)
  %.not15.i1725.i = icmp eq i32 %bcmp.i24.i, 0
  %.pre38.i = load ptr, ptr %i.x, align 8, !tbaa !85 ; 4 uses
  br i1 %.not15.i1725.i, label %Vec_MemHashLookup.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i16.i
  %i.cl = getelementptr i8, ptr %.pre38.i, i64 8
  %.val.i.i = load ptr, ptr %i.cl, align 8, !tbaa !38 ; 3 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.cm = ashr i32 %i.cx, %i.af
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !88
  %i.cq = and i32 %i.cx, %i.al
  %i.cr = mul nsw i32 %i.cq, %i.ak
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cs
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.ct, ptr nonnull readonly %i.ap, i64 %i.cc)
  %.not15.i17.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not15.i17.i, label %Vec_MemHashLookup.exit.i.loopexit, label %bb.k, !llvm.loop !176

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %i.cu = phi i32 [ %i.ca, %.lr.ph.i ], [ %i.cx, %bb.j ]
  %i.cv = sext i32 %i.cu to i64                   ; 3 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !39 ; 4 uses
  %.not.i18.i = icmp eq i32 %i.cx, -1
  br i1 %.not.i18.i, label %.Vec_MemHashLookup.exit.loopexit_crit_edge.i, label %bb.j, !llvm.loop !176

.Vec_MemHashLookup.exit.loopexit_crit_edge.i:     ; preds = %bb.k
  %i.cy = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.cv
  br label %Vec_MemHashLookup.exit.i, !llvm.loop !176

Vec_MemHashLookup.exit.i.loopexit:                ; preds = %bb.j
  %i.cz = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.cv
  br label %Vec_MemHashLookup.exit.i

Vec_MemHashLookup.exit.i:                         ; preds = %Vec_MemHashLookup.exit.i.loopexit, %.Vec_MemHashLookup.exit.loopexit_crit_edge.i, %.lr.ph.i16.i, %Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i
  %i.da = phi ptr [ %.pre37.i, %Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i ], [ %.pre38.i, %.lr.ph.i16.i ], [ %.pre38.i, %.Vec_MemHashLookup.exit.loopexit_crit_edge.i ], [ %.pre38.i, %Vec_MemHashLookup.exit.i.loopexit ] ; 6 uses
  %.0.lcssa.i.i = phi ptr [ %i.bz, %Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i ], [ %i.bz, %.lr.ph.i16.i ], [ %i.cy, %.Vec_MemHashLookup.exit.loopexit_crit_edge.i ], [ %i.cz, %Vec_MemHashLookup.exit.i.loopexit ]
  %i.db = getelementptr i8, ptr %i.da, i64 4      ; 3 uses
  %.val.i = load i32, ptr %i.db, align 4, !tbaa !42 ; 8 uses
  store i32 %.val.i, ptr %.0.lcssa.i.i, align 4, !tbaa !39
  %i.dc = load i32, ptr %i.da, align 8, !tbaa !43
  %i.dd = icmp eq i32 %.val.i, %i.dc
  br i1 %i.dd, label %bb.l, label %Vec_IntPush.exit.i

bb.l:                                             ; preds = %Vec_MemHashLookup.exit.i
  %i.de = icmp slt i32 %.val.i, 16
  br i1 %i.de, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !38 ; 2 uses
  %.not9.i.i19.i = icmp eq ptr %i.dg, null
  br i1 %.not9.i.i19.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dh = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.dg, i64 noundef 64) #26
  br label %Vec_IntGrow.exit.i20.i

bb.o:                                             ; preds = %bb.m
  %i.di = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i20.i

Vec_IntGrow.exit.i20.i:                           ; preds = %bb.o, %bb.n
  %i.dj = phi ptr [ %i.dh, %bb.n ], [ %i.di, %bb.o ]
  store ptr %i.dj, ptr %i.df, align 8, !tbaa !38
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.p:                                             ; preds = %bb.l
  %i.dk = icmp samesign ult i32 %.val.i, 1073741823
  %i.dl = shl nuw nsw i32 %.val.i, 1
  %spec.select.i.i = select i1 %i.dk, i32 %i.dl, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %.val.i, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.q, label %Vec_IntPush.exit.i

bb.q:                                             ; preds = %bb.p
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !38 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.dn, null
  %i.do = zext nneg i32 %spec.select.i.i to i64
  %i.dp = shl nuw nsw i64 %i.do, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dq = tail call ptr @realloc(ptr noundef nonnull %i.dn, i64 noundef %i.dp) #26
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.dr = tail call noalias ptr @malloc(i64 noundef %i.dp) #25
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ds = phi ptr [ %i.dq, %bb.r ], [ %i.dr, %bb.s ]
  store ptr %i.ds, ptr %i.dm, align 8, !tbaa !38
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.t, %Vec_IntGrow.exit.i20.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.t ], [ 16, %Vec_IntGrow.exit.i20.i ]
  store i32 %spec.select.sink.i.i, ptr %i.da, align 8, !tbaa !43
  %.pre39.i = load i32, ptr %i.db, align 4, !tbaa !42
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.p, %Vec_MemHashLookup.exit.i
  %i.dt = phi i32 [ %.val.i, %Vec_MemHashLookup.exit.i ], [ %.val.i, %bb.p ], [ %.pre39.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !38
  %i.dw = add nsw i32 %i.dt, 1
  store i32 %i.dw, ptr %i.db, align 4, !tbaa !42
  %i.dx = sext i32 %i.dt to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.dx
  store i32 -1, ptr %i.dy, align 4, !tbaa !39
  %i.dz = add nuw nsw i32 %.029.i, 1              ; 2 uses
  %.val14.i = load i32, ptr %i.a, align 4, !tbaa !86
  %i.ea = icmp slt i32 %i.dz, %.val14.i
  br i1 %i.ea, label %bb.h, label %Vec_MemHashResize.exit, !llvm.loop !177

Vec_MemHashResize.exit:                           ; preds = %Vec_IntPush.exit.i, %bb.h, %.lr.ph.i15.i, %bb.a
  %i.eb = load ptr, ptr %i.c, align 8, !tbaa !84  ; 2 uses
  %i.ec = load i32, ptr %0, align 8, !tbaa !80    ; 5 uses
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %.lr.ph.preheader.i.i, label %Vec_MemHashKey.exit.i

.lr.ph.preheader.i.i:                             ; preds = %Vec_MemHashResize.exit
  %i.ee = shl nuw i32 %i.ec, 1                    ; 2 uses
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.ee, i32 1) ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64 ; 5 uses
  %min.iters.check99 = icmp slt i32 %i.ee, 8
  %21 = add nsw i32 %smax.i.i, -9
  %22 = icmp ult i32 %21, -8
  %or.cond118 = select i1 %min.iters.check99, i1 true, i1 %22
  br i1 %or.cond118, label %.lr.ph.i.i21.preheader, label %vector.ph100

vector.ph100:                                     ; preds = %.lr.ph.preheader.i.i
  %n.vec101 = and i64 %wide.trip.count.i.i, 8     ; 3 uses
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph100
  %index103 = phi i64 [ 0, %vector.ph100 ], [ %index.next110, %vector.body102 ] ; 2 uses
  %vec.phi104 = phi <4 x i32> [ zeroinitializer, %vector.ph100 ], [ %27, %vector.body102 ]
  %vec.phi105 = phi <4 x i32> [ zeroinitializer, %vector.ph100 ], [ %28, %vector.body102 ]
  %23 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index103 ; 2 uses
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 16
  %wide.load106 = load <4 x i32>, ptr %23, align 4, !tbaa !39
  %wide.load107 = load <4 x i32>, ptr %24, align 4, !tbaa !39
  %25 = mul <4 x i32> %wide.load106, <i32 1699, i32 4177, i32 5147, i32 5647>
  %26 = mul <4 x i32> %wide.load107, <i32 6343, i32 7103, i32 7873, i32 8147>
  %27 = add <4 x i32> %25, %vec.phi104            ; 2 uses
  %28 = add <4 x i32> %26, %vec.phi105            ; 2 uses
  %index.next110 = add nuw i64 %index103, 8       ; 2 uses
  %29 = icmp eq i64 %index.next110, %n.vec101
  br i1 %29, label %middle.block111, label %vector.body102, !llvm.loop !178

middle.block111:                                  ; preds = %vector.body102
  %bin.rdx112 = add <4 x i32> %28, %27
  %30 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx112) ; 2 uses
  %cmp.n113 = icmp eq i64 %n.vec101, %wide.trip.count.i.i
  br i1 %cmp.n113, label %Vec_MemHashKey.exit.i, label %.lr.ph.i.i21.preheader

.lr.ph.i.i21.preheader:                           ; preds = %.lr.ph.preheader.i.i, %middle.block111
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec101, %middle.block111 ] ; 3 uses
  %.012.i.i22.ph = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %30, %middle.block111 ] ; 2 uses
  %xtraiter132 = and i64 %wide.trip.count.i.i, 3  ; 2 uses
  %lcmp.mod133.not = icmp eq i64 %xtraiter132, 0
  br i1 %lcmp.mod133.not, label %.lr.ph.i.i21.prol.loopexit, label %.lr.ph.i.i21.prol

.lr.ph.i.i21.prol:                                ; preds = %.lr.ph.i.i21.preheader, %.lr.ph.i.i21.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i21.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i21.preheader ] ; 3 uses
  %.012.i.i22.prol = phi i32 [ %37, %.lr.ph.i.i21.prol ], [ %.012.i.i22.ph, %.lr.ph.i.i21.preheader ]
  %prol.iter134 = phi i64 [ %prol.iter134.next, %.lr.ph.i.i21.prol ], [ 0, %.lr.ph.i.i21.preheader ]
  %31 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.i.prol
  %32 = load i32, ptr %31, align 4, !tbaa !39
  %33 = and i64 %indvars.iv.i.i.prol, 7
  %34 = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !39
  %36 = mul i32 %35, %32
  %37 = add i32 %36, %.012.i.i22.prol             ; 3 uses
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter134.next = add i64 %prol.iter134, 1   ; 2 uses
  %prol.iter134.cmp.not = icmp eq i64 %prol.iter134.next, %xtraiter132
  br i1 %prol.iter134.cmp.not, label %.lr.ph.i.i21.prol.loopexit, label %.lr.ph.i.i21.prol, !llvm.loop !179

.lr.ph.i.i21.prol.loopexit:                       ; preds = %.lr.ph.i.i21.prol, %.lr.ph.i.i21.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i.i21.preheader ], [ %37, %.lr.ph.i.i21.prol ]
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i21.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i21.prol ]
  %.012.i.i22.unr = phi i32 [ %.012.i.i22.ph, %.lr.ph.i.i21.preheader ], [ %37, %.lr.ph.i.i21.prol ]
  %38 = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %39 = icmp ugt i64 %38, -4
  br i1 %39, label %Vec_MemHashKey.exit.i, label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %.lr.ph.i.i21.prol.loopexit, %.lr.ph.i.i21
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3.a, %.lr.ph.i.i21 ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i21.prol.loopexit ] ; 6 uses
  %.012.i.i22 = phi i32 [ %i.fg, %.lr.ph.i.i21 ], [ %.012.i.i22.unr, %.lr.ph.i.i21.prol.loopexit ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.i
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !39
  %i.eh = and i64 %indvars.iv.i.i, 7
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !39
  %i.ek = mul i32 %i.ej, %i.eg
  %i.el = add i32 %i.ek, %.012.i.i22
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.i
  %i.en = load i32, ptr %i.em, align 4, !tbaa !39
  %i.eo = and i64 %indvars.iv.next.i.i, 7
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !39
  %i.er = mul i32 %i.eq, %i.en
  %i.es = add i32 %i.er, %i.el
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.i.1
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !39
  %i.ev = and i64 %indvars.iv.next.i.i.1, 7
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !39
  %i.ey = mul i32 %i.ex, %i.eu
  %i.ez = add i32 %i.ey, %i.es
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.i.2
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !39
  %i.fc = and i64 %indvars.iv.next.i.i.2, 7
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !39
  %i.ff = mul i32 %i.fe, %i.fb
  %i.fg = add i32 %i.ff, %i.ez                    ; 2 uses
  %indvars.iv.next.i.i.3.a = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3.a, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %Vec_MemHashKey.exit.i, label %.lr.ph.i.i21, !llvm.loop !180

Vec_MemHashKey.exit.i:                            ; preds = %.lr.ph.i.i21.prol.loopexit, %.lr.ph.i.i21, %middle.block111, %Vec_MemHashResize.exit
  %.0.lcssa.i.i16 = phi i32 [ 0, %Vec_MemHashResize.exit ], [ %30, %middle.block111 ], [ %.lcssa.unr, %.lr.ph.i.i21.prol.loopexit ], [ %i.fg, %.lr.ph.i.i21 ]
  %i.fh = getelementptr i8, ptr %i.eb, i64 4
  %.val.i.i17 = load i32, ptr %i.fh, align 4, !tbaa !42
  %i.fi = urem i32 %.0.lcssa.i.i16, %.val.i.i17
  %i.fj = getelementptr i8, ptr %i.eb, i64 8
  %.val16.i = load ptr, ptr %i.fj, align 8, !tbaa !38
  %i.fk = sext i32 %i.fi to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %.val16.i, i64 %i.fk ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !39 ; 5 uses
  %.not17.i = icmp eq i32 %i.fm, -1
  br i1 %.not17.i, label %Vec_MemHashLookup.exit.thread, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %Vec_MemHashKey.exit.i
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !87 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !81 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !82 ; 2 uses
  %i.ft = sext i32 %i.ec to i64
  %i.fu = shl nsw i64 %i.ft, 3                    ; 2 uses
  %i.fv = ashr i32 %i.fm, %i.fq
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.fw
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !88
  %i.fz = and i32 %i.fm, %i.fs
  %i.ga = mul nsw i32 %i.fz, %i.ec
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %i.gb
  %bcmp.i42 = tail call i32 @bcmp(ptr %i.gc, ptr readonly %1, i64 %i.fu)
  %.not15.i43 = icmp eq i32 %bcmp.i42, 0
  br i1 %.not15.i43, label %Vec_MemHashLookup.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i18
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !85
  %i.gf = getelementptr i8, ptr %i.ge, i64 8
  %.val.i19 = load ptr, ptr %i.gf, align 8, !tbaa !38 ; 2 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.v
  %i.gg = ashr i32 %i.gr, %i.fq
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.gh
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !88
  %i.gk = and i32 %i.gr, %i.fs
  %i.gl = mul nsw i32 %i.gk, %i.ec
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gj, i64 %i.gm
  %bcmp.i = tail call i32 @bcmp(ptr %i.gn, ptr readonly %1, i64 %i.fu)
  %.not15.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not15.i, label %Vec_MemHashLookup.exit, label %bb.v, !llvm.loop !176

bb.v:                                             ; preds = %.lr.ph, %bb.u
  %i.go = phi i32 [ %i.fm, %.lr.ph ], [ %i.gr, %bb.u ]
  %i.gp = sext i32 %i.go to i64                   ; 2 uses
  %i.gq = getelementptr inbounds [4 x i8], ptr %.val.i19, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !39 ; 5 uses
  %.not.i20 = icmp eq i32 %i.gr, -1
  br i1 %.not.i20, label %Vec_MemHashLookup.exit.thread.loopexit, label %bb.u, !llvm.loop !176

Vec_MemHashLookup.exit.thread.loopexit:           ; preds = %bb.v
  %i.gs = getelementptr inbounds [4 x i8], ptr %.val.i19, i64 %i.gp
  br label %Vec_MemHashLookup.exit.thread

Vec_MemHashLookup.exit.thread:                    ; preds = %Vec_MemHashLookup.exit.thread.loopexit, %Vec_MemHashKey.exit.i
  %.0.lcssa.i31 = phi ptr [ %i.fl, %Vec_MemHashKey.exit.i ], [ %i.gs, %Vec_MemHashLookup.exit.thread.loopexit ]
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !85 ; 6 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 4      ; 3 uses
  %.val14 = load i32, ptr %i.gv, align 4, !tbaa !42 ; 8 uses
  store i32 %.val14, ptr %.0.lcssa.i31, align 4, !tbaa !39
  %i.gw = load i32, ptr %i.gu, align 8, !tbaa !43
  %i.gx = icmp eq i32 %.val14, %i.gw
  br i1 %i.gx, label %bb.w, label %Vec_IntPush.exit

bb.w:                                             ; preds = %Vec_MemHashLookup.exit.thread
  %i.gy = icmp slt i32 %.val14, 16
  br i1 %i.gy, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !38 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ha, null
  br i1 %.not9.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hb = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ha, i64 noundef 64) #26
  br label %Vec_IntGrow.exit.i

bb.z:                                             ; preds = %bb.x
  %i.hc = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.z, %bb.y
  %i.hd = phi ptr [ %i.hb, %bb.y ], [ %i.hc, %bb.z ]
  store ptr %i.hd, ptr %i.gz, align 8, !tbaa !38
  br label %Vec_IntGrow.exit11.sink.split.i

bb.aa:                                            ; preds = %bb.w
  %i.he = icmp samesign ult i32 %.val14, 1073741823
  %i.hf = shl nuw nsw i32 %.val14, 1
  %spec.select.i = select i1 %i.he, i32 %i.hf, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %.val14, %spec.select.i
  br i1 %.not.i9.i, label %bb.ab, label %Vec_IntPush.exit

bb.ab:                                            ; preds = %bb.aa
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !38 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.hh, null
  %i.hi = zext nneg i32 %spec.select.i to i64
  %i.hj = shl nuw nsw i64 %i.hi, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hk = tail call ptr @realloc(ptr noundef nonnull %i.hh, i64 noundef %i.hj) #26
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.hl = tail call noalias ptr @malloc(i64 noundef %i.hj) #25
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.hm = phi ptr [ %i.hk, %bb.ac ], [ %i.hl, %bb.ad ]
  store ptr %i.hm, ptr %i.hg, align 8, !tbaa !38
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.ae, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.ae ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.gu, align 8, !tbaa !43
  %.pre = load i32, ptr %i.gv, align 4, !tbaa !42
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_MemHashLookup.exit.thread, %bb.aa, %Vec_IntGrow.exit11.sink.split.i
  %i.hn = phi i32 [ %.val14, %Vec_MemHashLookup.exit.thread ], [ %.val14, %bb.aa ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !38
  %i.hq = add nsw i32 %i.hn, 1
  store i32 %i.hq, ptr %i.gv, align 4, !tbaa !42
  %i.hr = sext i32 %i.hn to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.hr
  store i32 -1, ptr %i.hs, align 4, !tbaa !39
  %i.ht = load i32, ptr %i.a, align 4, !tbaa !86  ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !81 ; 3 uses
  %i.hw = ashr i32 %i.ht, %i.hv                   ; 7 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !83 ; 3 uses
  %i.hz = icmp slt i32 %i.hy, %i.hw
  br i1 %i.hz, label %bb.af, label %Vec_MemPush.exit

bb.af:                                            ; preds = %Vec_IntPush.exit
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !182 ; 3 uses
  %.not36.i.i = icmp slt i32 %i.hw, %i.ib
  br i1 %.not36.i.i, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !87 ; 2 uses
  %.not37.i.i = icmp eq ptr %i.id, null
  %.not38.i.i = icmp eq i32 %i.ib, 0
  %i.ie = shl nsw i32 %i.ib, 1
  %i.if = add nsw i32 %i.hw, 32
  %i.ig = select i1 %.not38.i.i, i32 %i.if, i32 %i.ie ; 2 uses
  store i32 %i.ig, ptr %i.ia, align 8, !tbaa !182
  %i.ih = sext i32 %i.ig to i64
  %i.ii = shl nsw i64 %i.ih, 3                    ; 2 uses
  br i1 %.not37.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ij = tail call ptr @realloc(ptr noundef nonnull %i.id, i64 noundef %i.ii) #26
  %.pre.pre.i.i = load i32, ptr %i.hx, align 4, !tbaa !83
  %.pre.pre.pre.pre.i = load i32, ptr %i.hu, align 8, !tbaa !81
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.ik = tail call noalias ptr @malloc(i64 noundef %i.ii) #25
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pre.pre.pre.i = phi i32 [ %.pre.pre.pre.pre.i, %bb.ah ], [ %i.hv, %bb.ai ]
  %.pre.i.i = phi i32 [ %.pre.pre.i.i, %bb.ah ], [ %i.hy, %bb.ai ]
  %i.il = phi ptr [ %i.ij, %bb.ah ], [ %i.ik, %bb.ai ]
  store ptr %i.il, ptr %i.ic, align 8, !tbaa !87
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.af
  %.pre.pre.i = phi i32 [ %.pre.pre.pre.i, %bb.aj ], [ %i.hv, %bb.af ] ; 2 uses
  %i.im = phi i32 [ %.pre.i.i, %bb.aj ], [ %i.hy, %bb.af ] ; 2 uses
  %.not40.not41.i.i = icmp slt i32 %i.im, %i.hw
  br i1 %.not40.not41.i.i, label %.lr.ph.i.i24, label %._crit_edge.i.i

.lr.ph.i.i24:                                     ; preds = %bb.ak
  %i.in = load i32, ptr %0, align 8, !tbaa !80
  %i.io = shl i32 %i.in, %.pre.pre.i
  %i.ip = sext i32 %i.io to i64
  %i.iq = shl nsw i64 %i.ip, 3
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !87
  %i.it = sext i32 %i.im to i64
  %wide.trip.count.i.i25 = sext i32 %i.hw to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph.i.i24
  %indvars.iv.i.i26 = phi i64 [ %i.it, %.lr.ph.i.i24 ], [ %indvars.iv.next.i.i27, %bb.al ]
  %indvars.iv.next.i.i27 = add nsw i64 %indvars.iv.i.i26, 1 ; 3 uses
  %i.iu = tail call noalias ptr @malloc(i64 noundef %i.iq) #25
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.is, i64 %indvars.iv.next.i.i27
  store ptr %i.iu, ptr %i.iv, align 8, !tbaa !88
  %exitcond.not.i.i28 = icmp eq i64 %indvars.iv.next.i.i27, %wide.trip.count.i.i25
  br i1 %exitcond.not.i.i28, label %._crit_edge.i.i, label %bb.al, !llvm.loop !181

._crit_edge.i.i:                                  ; preds = %bb.al, %bb.ak
  store i32 %i.hw, ptr %i.hx, align 4, !tbaa !83
  %.pre.i = ashr i32 %i.ht, %.pre.pre.i
  br label %Vec_MemPush.exit

Vec_MemPush.exit:                                 ; preds = %Vec_IntPush.exit, %._crit_edge.i.i
  %.pre-phi.i23 = phi i32 [ %i.hw, %Vec_IntPush.exit ], [ %.pre.i, %._crit_edge.i.i ]
  %i.iw = add nsw i32 %i.ht, 1
  store i32 %i.iw, ptr %i.a, align 4, !tbaa !86
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !87
  %i.iz = sext i32 %.pre-phi.i23 to i64
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.iy, i64 %i.iz
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !88
  %i.jc = load i32, ptr %0, align 8, !tbaa !80    ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !82
  %i.jf = and i32 %i.je, %i.ht
  %i.jg = mul nsw i32 %i.jf, %i.jc
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.jb, i64 %i.jh
  %i.jj = sext i32 %i.jc to i64
  %i.jk = shl nsw i64 %i.jj, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ji, ptr readonly align 8 %1, i64 %i.jk, i1 false)
  %i.jl = load ptr, ptr %i.gt, align 8, !tbaa !85
  %i.jm = getelementptr i8, ptr %i.jl, i64 4
  %.val = load i32, ptr %i.jm, align 4, !tbaa !42
  %i.jn = add nsw i32 %.val, -1
  br label %Vec_MemHashLookup.exit

Vec_MemHashLookup.exit:                           ; preds = %bb.u, %.lr.ph.i18, %Vec_MemPush.exit
  %.0 = phi i32 [ %i.jn, %Vec_MemPush.exit ], [ %i.fm, %.lr.ph.i18 ], [ %i.gr, %bb.u ]
  ret i32 %.0
}

declare ptr @Gia_ManDupCones(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @Gia_ManNodeFunctionProfile(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i64], align 16              ; 3 uses
  %i.b = alloca [64 x i64], align 16              ; 3 uses
  %i.c = alloca [64 x i64], align 16              ; 5 uses
  %i.d = alloca i32, align 4                      ; 14 uses
  %i.e = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 0, ptr %i.f, align 4, !tbaa !42
  store i32 100, ptr %i.e, align 8, !tbaa !43
  %i.g = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #25
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !38
  %i.i = icmp slt i32 %1, 7
  %i.j = add nsw i32 %1, -6
  %i.k = shl nuw i32 1, %i.j                      ; 2 uses
  %i.l = select i1 %i.i, i32 1, i32 %i.k          ; 2 uses
  %i.m = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #27 ; 12 uses
  store i32 %i.l, ptr %i.m, align 8, !tbaa !80
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store i32 12, ptr %i.n, align 8, !tbaa !81
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 2 uses
  store i32 4095, ptr %i.o, align 4, !tbaa !82
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 20 ; 2 uses
  store i32 -1, ptr %i.p, align 4, !tbaa !83
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.backedge, %bb.a
  %.012.i.i = phi i32 [ 999, %bb.a ], [ %i.q, %.critedge.i.i.backedge ] ; 3 uses
  %i.q = add i32 %.012.i.i, 1                     ; 7 uses
  %i.r = and i32 %.012.i.i, 1
  %.not.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.not.i.i, label %.preheader.i.i, label %.critedge.i.i.backedge

.critedge.i.i.backedge:                           ; preds = %.lr.ph.i.i, %.critedge.i.i
  br label %.critedge.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i
  %.not15.i.i = icmp ult i32 %i.q, 9
  br i1 %.not15.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = add nuw nsw i32 %.01116.i.i, 2           ; 3 uses
  %i.t = mul nuw nsw i32 %i.s, %i.s
  %.not.i.i = icmp ugt i32 %i.t, %i.q
  br i1 %.not.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i, !llvm.loop !4

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.b
  %.01116.i.i = phi i32 [ %i.s, %bb.b ], [ 3, %.preheader.i.i ] ; 2 uses
  %i.u = urem i32 %i.q, %.01116.i.i
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.critedge.i.i.backedge, label %bb.b

Abc_PrimeCudd.exit.i:                             ; preds = %.preheader.i.i, %bb.b
  %i.w = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 4 uses
  %or.cond.i.i.i = icmp samesign ult i32 %.012.i.i, 15
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i32 16, i32 %i.q ; 2 uses
  store i32 %spec.store.select.i.i.i, ptr %i.w, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = zext nneg i32 %spec.store.select.i.i.i to i64
  %i.z = shl nuw nsw i64 %i.y, 2
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.z) #25 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !38
  store i32 %i.q, ptr %i.x, align 4, !tbaa !42
  %.not.i3.i = icmp eq ptr %i.aa, null
  br i1 %.not.i3.i, label %Vec_MemHashAlloc.exit, label %bb.c

bb.c:                                             ; preds = %Abc_PrimeCudd.exit.i
  %i.ac = zext nneg i32 %i.q to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aa, i8 -1, i64 %i.ad, i1 false)
  br label %Vec_MemHashAlloc.exit

Vec_MemHashAlloc.exit:                            ; preds = %Abc_PrimeCudd.exit.i, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  store ptr %i.w, ptr %i.ae, align 8, !tbaa !84
  %i.af = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 0, ptr %i.ag, align 4, !tbaa !42
  store i32 1000, ptr %i.af, align 8, !tbaa !43
  %i.ah = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !38
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  store ptr %i.af, ptr %i.aj, align 8, !tbaa !85
  %i.ak = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #25 ; 4 uses
  %i.al = tail call ptr @setPermInfoPtr(i32 noundef %1) #24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  tail call void @Gia_ObjComputeTruthTableStart(ptr noundef %0, i32 noundef %1)
  %i.am = getelementptr i8, ptr %0, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.d, align 4, !tbaa !39
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !61
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Vec_MemHashAlloc.exit
  %i.aq = sext i32 %i.l to i64
  %i.ar = shl nsw i64 %i.aq, 3
  %i.as = getelementptr i8, ptr %i.m, i64 4       ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.r
  %.val51 = phi ptr [ %i.ak, %.lr.ph ], [ %.val5182, %bb.r ] ; 9 uses
  %i.at = phi ptr [ %i.ak, %.lr.ph ], [ %i.bz, %bb.r ] ; 4 uses
  %i.au = phi ptr [ %i.ak, %.lr.ph ], [ %i.ca, %bb.r ] ; 6 uses
  %i.av = phi i32 [ 100, %.lr.ph ], [ %i.cb, %bb.r ] ; 10 uses
  %i.aw = phi i32 [ 0, %.lr.ph ], [ %i.cc, %bb.r ] ; 6 uses
  %.val50 = phi i32 [ 0, %.lr.ph ], [ %.val5080, %bb.r ] ; 4 uses
  %storemerge67 = phi i32 [ 0, %.lr.ph ], [ %i.ce, %bb.r ]
  %.val = load ptr, ptr %i.am, align 8, !tbaa !35 ; 2 uses
  %i.ax = sext i32 %storemerge67 to i64
  %i.ay = getelementptr inbounds [12 x i8], ptr %.val, i64 %i.ax ; 2 uses
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val46 = load i64, ptr %i.ay, align 4          ; 2 uses
  %i.az = and i64 %.val46, 2147483648
  %.not.i = icmp ne i64 %i.az, 0
  %i.ba = and i64 %.val46, 536870911
  %i.bb = icmp eq i64 %i.ba, 536870911
  %narrow.i.not = or i1 %.not.i, %i.bb
  br i1 %narrow.i.not, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = call i32 @Gia_ManSuppSize(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i32 noundef 1) #24
  %.not45 = icmp eq i32 %i.bc, %1
  br i1 %.not45, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  call void @Gia_ManCollectCis(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef nonnull %i.e) #24
  %i.bd = call ptr @Gia_ObjComputeTruthTableCut(ptr noundef nonnull %0, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.ar, i1 false)
  call void @simpleMinimal(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.al, i32 noundef %1) #24
  %i.be = call fastcc i32 @Vec_MemHashInsert(ptr noundef nonnull %i.m, ptr noundef nonnull %i.c)
  %.val49 = load i32, ptr %i.as, align 4, !tbaa !86 ; 2 uses
  %i.bf = icmp eq i32 %.val49, %.val50
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bg = sext i32 %i.be to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %.val51, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !39
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !39
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.bk = icmp eq i32 %i.aw, %i.av
  br i1 %i.bk, label %bb.j, label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.i
  %i.bl = icmp slt i32 %i.av, 16
  br i1 %i.bl, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %.not9.i.i = icmp eq ptr %i.au, null
  br i1 %.not9.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.au, i64 noundef 64) #26 ; 2 uses
  br label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.k
  %i.bn = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25 ; 2 uses
  br label %Vec_IntPush.exit

bb.n:                                             ; preds = %bb.j
  %i.bo = icmp samesign ult i32 %i.av, 1073741823
  %i.bp = shl nuw nsw i32 %i.av, 1
  %spec.select.i = select i1 %i.bo, i32 %i.bp, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.av, %spec.select.i
  br i1 %.not.i9.i, label %bb.o, label %Vec_IntPush.exit

bb.o:                                             ; preds = %bb.n
  %.not9.i10.i = icmp eq ptr %i.au, null
  %i.bq = zext nneg i32 %spec.select.i to i64
  %i.br = shl nuw nsw i64 %i.bq, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = call ptr @realloc(ptr noundef nonnull %i.au, i64 noundef %i.br) #26 ; 2 uses
  br label %Vec_IntPush.exit

bb.q:                                             ; preds = %bb.o
  %i.bt = call noalias ptr @malloc(i64 noundef %i.br) #25 ; 2 uses
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.m, %bb.l, %bb.q, %bb.p, %bb.i, %bb.n
  %.val5183 = phi ptr [ %.val51, %bb.i ], [ %.val51, %bb.n ], [ %i.bn, %bb.m ], [ %i.bm, %bb.l ], [ %i.bs, %bb.p ], [ %i.bt, %bb.q ]
  %i.bu = phi ptr [ %i.at, %bb.i ], [ %i.at, %bb.n ], [ %i.bn, %bb.m ], [ %i.bm, %bb.l ], [ %i.bs, %bb.p ], [ %i.bt, %bb.q ] ; 3 uses
  %i.bv = phi i32 [ %i.av, %bb.i ], [ %i.av, %bb.n ], [ 16, %bb.m ], [ 16, %bb.l ], [ %spec.select.i, %bb.p ], [ %spec.select.i, %bb.q ]
  %i.bw = add nsw i32 %i.aw, 1
  %i.bx = sext i32 %i.aw to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.bx
  store i32 1, ptr %i.by, align 4, !tbaa !39
  br label %bb.r

bb.r:                                             ; preds = %bb.h, %Vec_IntPush.exit, %bb.e, %bb.f
  %.val5182 = phi ptr [ %.val51, %bb.h ], [ %.val5183, %Vec_IntPush.exit ], [ %.val51, %bb.e ], [ %.val51, %bb.f ] ; 2 uses
  %i.bz = phi ptr [ %.val51, %bb.h ], [ %i.bu, %Vec_IntPush.exit ], [ %i.at, %bb.e ], [ %i.at, %bb.f ]
  %i.ca = phi ptr [ %.val51, %bb.h ], [ %i.bu, %Vec_IntPush.exit ], [ %i.au, %bb.e ], [ %i.au, %bb.f ]
  %i.cb = phi i32 [ %i.av, %bb.h ], [ %i.bv, %Vec_IntPush.exit ], [ %i.av, %bb.e ], [ %i.av, %bb.f ]
  %i.cc = phi i32 [ %i.aw, %bb.h ], [ %i.bw, %Vec_IntPush.exit ], [ %i.aw, %bb.e ], [ %i.aw, %bb.f ]
  %.val5080 = phi i32 [ %.val50, %bb.h ], [ %.val49, %Vec_IntPush.exit ], [ %.val50, %bb.e ], [ %.val50, %bb.f ]
  %i.cd = load i32, ptr %i.d, align 4, !tbaa !39
  %i.ce = add nsw i32 %i.cd, 1                    ; 3 uses
  store i32 %i.ce, ptr %i.d, align 4, !tbaa !39
  %i.cf = load i32, ptr %i.an, align 8, !tbaa !61
  %i.cg = icmp slt i32 %i.ce, %i.cf
  br i1 %i.cg, label %bb.d, label %.critedge, !llvm.loop !183

.critedge:                                        ; preds = %bb.d, %bb.r
  %.val4786 = phi ptr [ %.val5182, %bb.r ], [ %.val51, %bb.d ] ; 7 uses
  %.val48.pre = load i32, ptr %i.as, align 4, !tbaa !86 ; 4 uses
  store i32 0, ptr %i.d, align 4, !tbaa !39
  %i.ch = icmp sgt i32 %.val48.pre, 0
  br i1 %i.ch, label %.lr.ph70, label %._crit_edge

.lr.ph70:                                         ; preds = %.critedge
  %i.ci = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !87 ; 2 uses
  %i.ck = load i32, ptr %i.n, align 8, !tbaa !81  ; 2 uses
  %i.cl = load i32, ptr %i.m, align 8, !tbaa !80  ; 2 uses
  %i.cm = load i32, ptr %i.o, align 4, !tbaa !82  ; 2 uses
  %i.cn = icmp samesign ugt i32 %1, 5
  %i.co = add nsw i32 %1, -2
  %i.cp = icmp slt i32 %1, 2
  %i.cq = icmp samesign ult i32 %1, 7
  %i.cr = select i1 %i.cq, i32 1, i32 %i.k        ; 2 uses
  %i.cs = zext nneg i32 %i.cr to i64
  %.idx.i = shl nuw nsw i64 %i.cs, 3
  %notmask.i = shl nsw i32 -1, %i.co
  %i.ct = xor i32 %notmask.i, -1
  %i.cu = select i1 %i.cn, i32 15, i32 %i.ct
  %i.cv = zext nneg i32 %i.cu to i64
  br i1 %i.cp, label %Abc_TtPrintHexRev.exit.us, label %.lr.ph70.split

Abc_TtPrintHexRev.exit.us:                        ; preds = %.lr.ph70, %Abc_TtPrintHexRev.exit.us
  %storemerge4369.us = phi i32 [ %i.dq, %Abc_TtPrintHexRev.exit.us ], [ 0, %.lr.ph70 ] ; 3 uses
  %i.cw = ashr i32 %storemerge4369.us, %i.ck
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !88
  %i.da = and i32 %i.cm, %storemerge4369.us
  %i.db = mul nsw i32 %i.da, %i.cl
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.dc
  %i.de = sext i32 %storemerge4369.us to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %.val4786, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !39
  %i.dh = load ptr, ptr @stdout, align 8, !tbaa !90
  %i.di = load i64, ptr %i.dd, align 8, !tbaa !36
  %i.dj = trunc i64 %i.di to i32
  %i.dk = and i32 %i.dj, 15                       ; 3 uses
  %i.dl = icmp samesign ult i32 %i.dk, 10
  %i.dm = or disjoint i32 %i.dk, 48
  %i.dn = add nuw nsw i32 %i.dk, 55
  %.0.i.i.us = select i1 %i.dl, i32 %i.dm, i32 %i.dn
  %fputc17.i.us = call i32 @fputc(i32 %.0.i.i.us, ptr %i.dh) ; 0 uses
  %i.do = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.dg) ; 0 uses
  %i.dp = load i32, ptr %i.d, align 4, !tbaa !39
  %i.dq = add nsw i32 %i.dp, 1                    ; 3 uses
  store i32 %i.dq, ptr %i.d, align 4, !tbaa !39
  %i.dr = icmp slt i32 %i.dq, %.val48.pre
  br i1 %i.dr, label %Abc_TtPrintHexRev.exit.us, label %._crit_edge, !llvm.loop !184

.lr.ph70.split:                                   ; preds = %.lr.ph70
  %.not22.i = icmp slt i32 %i.cr, 1
  br i1 %.not22.i, label %Abc_TtPrintHexRev.exit.us72, label %.lr.ph.i

Abc_TtPrintHexRev.exit.us72:                      ; preds = %.lr.ph70.split, %Abc_TtPrintHexRev.exit.us72
  %storemerge4369.us71 = phi i32 [ %i.dx, %Abc_TtPrintHexRev.exit.us72 ], [ 0, %.lr.ph70.split ]
  %i.ds = sext i32 %storemerge4369.us71 to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %.val4786, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !39
  %i.dv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.du) ; 0 uses
  %i.dw = load i32, ptr %i.d, align 4, !tbaa !39
  %i.dx = add nsw i32 %i.dw, 1                    ; 3 uses
  store i32 %i.dx, ptr %i.d, align 4, !tbaa !39
  %i.dy = icmp slt i32 %i.dx, %.val48.pre
  br i1 %i.dy, label %Abc_TtPrintHexRev.exit.us72, label %._crit_edge, !llvm.loop !184

.lr.ph.i:                                         ; preds = %.lr.ph70.split, %Abc_TtPrintHexRev.exit.loopexit
  %storemerge4369 = phi i32 [ %i.ey, %Abc_TtPrintHexRev.exit.loopexit ], [ 0, %.lr.ph70.split ] ; 3 uses
  %i.dz = ashr i32 %storemerge4369, %i.ck
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !88
  %i.ed = and i32 %i.cm, %storemerge4369
  %i.ee = mul nsw i32 %i.ed, %i.cl
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.ef ; 2 uses
  %i.eh = sext i32 %storemerge4369 to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %.val4786, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !39
  %i.ek = load ptr, ptr @stdout, align 8, !tbaa !90
  %i.el = getelementptr i8, ptr %i.eg, i64 %.idx.i
  %.01521.i = getelementptr i8, ptr %i.el, i64 -8
  br label %bb.s

.loopexit.i:                                      ; preds = %bb.t
  %.015.i = getelementptr inbounds i8, ptr %.01523.i, i64 -8 ; 2 uses
  %.not.i52 = icmp ult ptr %.015.i, %i.eg
  br i1 %.not.i52, label %Abc_TtPrintHexRev.exit.loopexit, label %bb.s, !llvm.loop !185

bb.s:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %.01523.i = phi ptr [ %.01521.i, %.lr.ph.i ], [ %.015.i, %.loopexit.i ] ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %indvars.iv.i = phi i64 [ %i.cv, %bb.s ], [ %indvars.iv.next.i, %bb.t ] ; 3 uses
  %i.em = load i64, ptr %.01523.i, align 8, !tbaa !36
  %i.en = shl nsw i64 %indvars.iv.i, 2
  %i.eo = and i64 %i.en, 4294967292
  %i.ep = lshr i64 %i.em, %i.eo
  %i.eq = trunc i64 %i.ep to i32
  %i.er = and i32 %i.eq, 15                       ; 3 uses
  %i.es = icmp samesign ult i32 %i.er, 10
  %i.et = or disjoint i32 %i.er, 48
  %i.eu = add nuw nsw i32 %i.er, 55
  %.0.i18.i = select i1 %i.es, i32 %i.et, i32 %i.eu
  %fputc.i = call i32 @fputc(i32 %.0.i18.i, ptr %i.ek) ; 0 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ev = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.ev, label %bb.t, label %.loopexit.i, !llvm.loop !186

Abc_TtPrintHexRev.exit.loopexit:                  ; preds = %.loopexit.i
  %i.ew = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.ej) ; 0 uses
  %i.ex = load i32, ptr %i.d, align 4, !tbaa !39
  %i.ey = add nsw i32 %i.ex, 1                    ; 3 uses
  store i32 %i.ey, ptr %i.d, align 4, !tbaa !39
  %i.ez = icmp slt i32 %i.ey, %.val48.pre
  br i1 %i.ez, label %.lr.ph.i, label %._crit_edge, !llvm.loop !184

._crit_edge:                                      ; preds = %Abc_TtPrintHexRev.exit.loopexit, %Abc_TtPrintHexRev.exit.us72, %Abc_TtPrintHexRev.exit.us, %Vec_MemHashAlloc.exit, %.critedge
  %i.fa = phi ptr [ %.val4786, %Abc_TtPrintHexRev.exit.us72 ], [ %i.ak, %Vec_MemHashAlloc.exit ], [ %.val4786, %Abc_TtPrintHexRev.exit.us ], [ %.val4786, %.critedge ], [ %.val4786, %Abc_TtPrintHexRev.exit.loopexit ] ; 2 uses
  call void @Gia_ObjComputeTruthTableStop(ptr noundef %0)
  %i.fb = load ptr, ptr %i.h, align 8, !tbaa !38  ; 2 uses
  %.not.i53 = icmp eq ptr %i.fb, null
  br i1 %.not.i53, label %Vec_IntFree.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  call void @free(ptr noundef nonnull %i.fb) #24
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge, %bb.u
  call void @free(ptr noundef nonnull %i.e) #24
  %.not.i54 = icmp eq ptr %i.fa, null
  br i1 %.not.i54, label %bb.w, label %bb.v

bb.v:                                             ; preds = %Vec_IntFree.exit
  call void @free(ptr noundef nonnull %i.fa) #24
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %Vec_IntFree.exit
  %i.fc = load ptr, ptr %i.ae, align 8, !tbaa !72 ; 3 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %Vec_IntFreeP.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !38 ; 2 uses
  %.not.i.i56 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i56, label %bb.y, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.x
  call void @free(ptr noundef nonnull %i.ff) #24
  br label %bb.y

bb.y:                                             ; preds = %.thread.i.i, %bb.x
  call void @free(ptr noundef nonnull %i.fc) #24
  br label %Vec_IntFreeP.exit.i

Vec_IntFreeP.exit.i:                              ; preds = %bb.y, %bb.w
  %i.fg = load ptr, ptr %i.aj, align 8, !tbaa !72 ; 3 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %Vec_MemHashFree.exit, label %bb.z

bb.z:                                             ; preds = %Vec_IntFreeP.exit.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !38 ; 2 uses
  %.not.i3.i57 = icmp eq ptr %i.fj, null
  br i1 %.not.i3.i57, label %bb.aa, label %.thread.i4.i

.thread.i4.i:                                     ; preds = %bb.z
  call void @free(ptr noundef nonnull %i.fj) #24
  br label %bb.aa

bb.aa:                                            ; preds = %.thread.i4.i, %bb.z
  call void @free(ptr noundef nonnull %i.fg) #24
  br label %Vec_MemHashFree.exit

Vec_MemHashFree.exit:                             ; preds = %Vec_IntFreeP.exit.i, %bb.aa
  %i.fk = load i32, ptr %i.p, align 4, !tbaa !83  ; 2 uses
  %.not19.i = icmp slt i32 %i.fk, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.pre23.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !87 ; 3 uses
  br i1 %.not19.i, label %._crit_edge.i, label %.lr.ph.i58.preheader

.lr.ph.i58.preheader:                             ; preds = %Vec_MemHashFree.exit
  %narrow = add nuw i32 %i.fk, 1
  %i.fl = zext i32 %narrow to i64
  br label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %.lr.ph.i58.preheader, %bb.ac
  %indvars.iv.i59 = phi i64 [ %indvars.iv.next.i60, %bb.ac ], [ 0, %.lr.ph.i58.preheader ] ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %.pre23.i, i64 %indvars.iv.i59 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !88 ; 2 uses
  %.not18.i = icmp eq ptr %i.fn, null
  br i1 %.not18.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i58
  call void @free(ptr noundef nonnull %i.fn) #24
  store ptr null, ptr %i.fm, align 8, !tbaa !88
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.i58
  %indvars.iv.next.i60 = add nuw nsw i64 %indvars.iv.i59, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i60, %i.fl
  br i1 %exitcond.not, label %._crit_edge.thread.i, label %.lr.ph.i58, !llvm.loop !5

._crit_edge.i:                                    ; preds = %Vec_MemHashFree.exit
  %.not16.i = icmp eq ptr %.pre23.i, null
  br i1 %.not16.i, label %Vec_MemFree.exit, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.ac, %._crit_edge.i
  call void @free(ptr noundef nonnull %.pre23.i) #24
  br label %Vec_MemFree.exit

Vec_MemFree.exit:                                 ; preds = %._crit_edge.i, %._crit_edge.thread.i
  call void @free(ptr noundef nonnull %i.m) #24
  call void @freePermInfoPtr(ptr noundef %i.al) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

declare ptr @setPermInfoPtr(i32 noundef) local_unnamed_addr #3

declare i32 @Gia_ManSuppSize(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @simpleMinimal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @freePermInfoPtr(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, -1) i32 @Gia_ManAppendAnd(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = tail call fastcc ptr @Gia_ManAppendObj(ptr noundef %0) ; 22 uses
  %i.b = icmp slt i32 %1, %2
  %i.c = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %.val80 = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.d = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.e = ptrtoint ptr %.val80 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 12
  %i.h = trunc i64 %i.g to i32
  %i.i = lshr i32 %1, 1
  %i.j = sub i32 %i.h, %i.i
  %i.k = load i64, ptr %i.a, align 4              ; 2 uses
  %i.l = and i32 %i.j, 536870911
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = and i64 %i.k, -1073741824
  %i.o = shl i32 %1, 29
  %i.p = and i32 %i.o, 536870912
  %i.q = zext nneg i32 %i.p to i64
  %i.r = or disjoint i64 %i.n, %i.q
  %i.s = or disjoint i64 %i.r, %i.m               ; 2 uses
  store i64 %i.s, ptr %i.a, align 4
  %.val79 = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.t = ptrtoint ptr %.val79 to i64
  %i.u = sub i64 %i.d, %i.t
  %i.v = sdiv exact i64 %i.u, 12
  %i.w = trunc i64 %i.v to i32
  %i.x = lshr i32 %2, 1
  %i.y = sub i32 %i.w, %i.x
  %i.z = and i32 %i.y, 536870911
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 32
  %i.ac = and i64 %i.s, -4611686014132420609
  %i.ad = or disjoint i64 %i.ab, %i.ac
  %i.ae = and i32 %2, 1
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 61
  %i.ah = or disjoint i64 %i.ad, %i.ag
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ai = shl nuw nsw i64 %i.m, 32
  %i.aj = and i64 %i.k, -4611686014132420609
  %i.ak = or disjoint i64 %i.ai, %i.aj
  %i.al = and i32 %1, 1
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 61
  %i.ao = or disjoint i64 %i.ak, %i.an            ; 2 uses
  store i64 %i.ao, ptr %i.a, align 4
  %.val77 = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.ap = ptrtoint ptr %.val77 to i64
  %i.aq = sub i64 %i.d, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 12
  %i.as = trunc i64 %i.ar to i32
  %i.at = lshr i32 %2, 1
  %i.au = sub i32 %i.as, %i.at
  %i.av = and i32 %i.au, 536870911
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = and i64 %i.ao, -1073741824
  %i.ay = or disjoint i64 %i.ax, %i.aw
  %i.az = shl i32 %2, 29
  %i.ba = and i32 %i.az, 536870912
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = or disjoint i64 %i.ay, %i.bb
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ %i.ah, %bb.b ], [ %i.bc, %bb.c ] ; 2 uses
  store i64 %storemerge, ptr %i.a, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !44
  %.not = icmp eq ptr %i.be, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bf = and i64 %storemerge, 536870911
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = getelementptr inbounds [12 x i8], ptr %i.a, i64 %i.bg
  tail call void @Gia_ObjAddFanout(ptr noundef nonnull %0, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.a) #24
  %i.bi = load i64, ptr %i.a, align 4
  %i.bj = lshr i64 %i.bi, 32
  %i.bk = and i64 %i.bj, 536870911
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = getelementptr inbounds [12 x i8], ptr %i.a, i64 %i.bl
  tail call void @Gia_ObjAddFanout(ptr noundef nonnull %0, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.a) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !187
  %.not65 = icmp eq i32 %i.bo, 0
  br i1 %.not65, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bp = load i64, ptr %i.a, align 4             ; 2 uses
  %i.bq = and i64 %i.bp, 536870911
  %i.br = sub nsw i64 0, %i.bq
  %i.bs = getelementptr inbounds [12 x i8], ptr %i.a, i64 %i.br ; 3 uses
  %i.bt = lshr i64 %i.bp, 32
  %i.bu = and i64 %i.bt, 536870911
  %i.bv = sub nsw i64 0, %i.bu
  %i.bw = getelementptr inbounds [12 x i8], ptr %i.a, i64 %i.bv ; 2 uses
  %i.bx = load i64, ptr %i.bs, align 4            ; 2 uses
  %i.by = and i64 %i.bx, 1073741824
  %.not66 = icmp eq i64 %i.by, 0
  %storemerge67.v = select i1 %.not66, i64 1073741824, i64 4611686018427387904
  %storemerge67 = or i64 %storemerge67.v, %i.bx
  store i64 %storemerge67, ptr %i.bs, align 4
  %i.bz = load i64, ptr %i.bw, align 4            ; 3 uses
  %i.ca = and i64 %i.bz, 1073741824
  %.not68 = icmp eq i64 %i.ca, 0
  %storemerge69.v = select i1 %.not68, i64 1073741824, i64 4611686018427387904
  %storemerge69 = or i64 %storemerge69.v, %i.bz
  store i64 %storemerge69, ptr %i.bw, align 4
  %.val84 = load i64, ptr %i.bs, align 4
  %i.cb = lshr i64 %.val84, 63
  %.val72 = load i64, ptr %i.a, align 4           ; 3 uses
  %i.cc = lshr i64 %.val72, 29
  %i.cd = xor i64 %i.cc, %i.cb
  %i.ce = lshr i64 %i.bz, 63
  %i.cf = lshr i64 %.val72, 61
  %i.cg = and i64 %i.cf, 1
  %i.ch = xor i64 %i.cg, %i.ce
  %i.ci = and i64 %i.ch, %i.cd
  %i.cj = shl nuw i64 %i.ci, 63
  %i.ck = and i64 %.val72, 9223372036854775807
  %i.cl = or disjoint i64 %i.cj, %i.ck
  store i64 %i.cl, ptr %i.a, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !188
  %.not70 = icmp eq i32 %i.cn, 0
  br i1 %.not70, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = load i64, ptr %i.a, align 4             ; 5 uses
  %i.cp = and i64 %i.co, 536870911
  %i.cq = sub nsw i64 0, %i.cp
  %i.cr = getelementptr inbounds [12 x i8], ptr %i.a, i64 %i.cq
  %i.cs = lshr i64 %i.co, 32
  %i.ct = and i64 %i.cs, 536870911
  %i.cu = sub nsw i64 0, %i.ct
  %i.cv = getelementptr inbounds [12 x i8], ptr %i.a, i64 %i.cu
  %.val82 = load i64, ptr %i.cr, align 4
  %i.cw = lshr i64 %.val82, 63
  %i.cx = lshr i64 %i.co, 29
  %i.cy = xor i64 %i.cw, %i.cx
  %.val81 = load i64, ptr %i.cv, align 4
  %i.cz = lshr i64 %.val81, 63
  %i.da = lshr i64 %i.co, 61
  %i.db = and i64 %i.da, 1
  %i.dc = xor i64 %i.cz, %i.db
  %i.dd = and i64 %i.dc, %i.cy
  %i.de = shl nuw i64 %i.dd, 63
  %i.df = and i64 %i.co, 9223372036854775807
  %i.dg = or disjoint i64 %i.de, %i.df
  store i64 %i.dg, ptr %i.a, align 4
  %i.dh = getelementptr i8, ptr %0, i64 32
  %.val76 = load ptr, ptr %i.dh, align 8, !tbaa !35
  %i.di = ptrtoint ptr %i.a to i64
  %i.dj = ptrtoint ptr %.val76 to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = sdiv exact i64 %i.dk, 12
  %i.dm = trunc i64 %i.dl to i32
  tail call void @Gia_ManBuiltInSimPerform(ptr noundef nonnull %0, i32 noundef %i.dm) #24
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !189
  %.not71 = icmp eq ptr %i.do, null
  br i1 %.not71, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @Gia_ManQuantSetSuppAnd(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.dp = getelementptr i8, ptr %0, i64 32
  %.val75 = load ptr, ptr %i.dp, align 8, !tbaa !35
  %i.dq = ptrtoint ptr %i.a to i64
  %i.dr = ptrtoint ptr %.val75 to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = sdiv exact i64 %i.ds, 12
  %i.du = trunc i64 %i.dt to i32
  %i.dv = shl i32 %i.du, 1
  ret i32 %i.dv
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @Gia_ManAppendObj(ptr nofree noundef captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !61   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !190
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.f = shl nsw i32 %i.b, 1
  %i.g = tail call noundef range(i32 -2147483648, 536870913) i32 @llvm.smin.i32(i32 %i.f, i32 536870912) ; 6 uses
  %i.h = icmp eq i32 %i.b, 536870912
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  tail call void @exit(i32 noundef 1) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.j = load i32, ptr %i.i, align 4, !tbaa !191
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.b, i32 noundef %i.g) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35   ; 2 uses
  %.not33 = icmp eq ptr %i.m, null
  %i.n = sext i32 %i.g to i64
  %i.o = mul nsw i64 %i.n, 12                     ; 2 uses
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @realloc(ptr noundef nonnull %i.m, i64 noundef %i.o) #26
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.o) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %i.p, %bb.g ], [ %i.q, %bb.h ] ; 2 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !35
  %i.s = load i32, ptr %i.c, align 4, !tbaa !190  ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [12 x i8], ptr %i.r, i64 %i.t
  %i.v = sub nsw i32 %i.g, %i.s
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.w, 12
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.u, i8 0, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !192  ; 2 uses
  %.not34 = icmp eq ptr %i.z, null
  br i1 %.not34, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = sext i32 %i.g to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = tail call ptr @realloc(ptr noundef nonnull %i.z, i64 noundef %i.ab) #26 ; 2 uses
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !192
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !190 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = sub nsw i32 %i.g, %i.ad
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.af, i8 0, i64 %i.ai, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.g, ptr %i.c, align 4, !tbaa !190
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  %i.aj = getelementptr i8, ptr %0, i64 100
  %.val36 = load i32, ptr %i.aj, align 4, !tbaa !42
  %.not35 = icmp eq i32 %.val36, 0
  br i1 %.not35, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !42 ; 7 uses
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !43
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.n, label %Vec_IntPush.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = icmp slt i32 %i.am, 16
  br i1 %i.ap, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !38 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ar, null
  br i1 %.not9.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ar, i64 noundef 64) #26
  br label %Vec_IntGrow.exit.i

bb.q:                                             ; preds = %bb.o
  %i.at = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.q, %bb.p
  %i.au = phi ptr [ %i.as, %bb.p ], [ %i.at, %bb.q ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !38
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.n
  %i.av = icmp samesign ult i32 %i.am, 1073741823
  %i.aw = shl nuw nsw i32 %i.am, 1
  %spec.select.i = select i1 %i.av, i32 %i.aw, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.am, %spec.select.i
  br i1 %.not.i9.i, label %bb.s, label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !38 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ay, null
  %i.az = zext nneg i32 %spec.select.i to i64
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef %i.ba) #26
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.ba) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bd = phi ptr [ %i.bb, %bb.t ], [ %i.bc, %bb.u ]
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !38
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.v, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.v ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ak, align 8, !tbaa !43
  %.pre = load i32, ptr %i.al, align 4, !tbaa !42
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.m, %bb.r, %Vec_IntGrow.exit11.sink.split.i
  %i.be = phi i32 [ %i.am, %bb.m ], [ %i.am, %bb.r ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !38
  %i.bh = add nsw i32 %i.be, 1
  store i32 %i.bh, ptr %i.al, align 4, !tbaa !42
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
  store i32 0, ptr %i.bj, align 4, !tbaa !39
  br label %bb.w

bb.w:                                             ; preds = %Vec_IntPush.exit, %bb.l
  %i.bk = load i32, ptr %i.a, align 8, !tbaa !61  ; 2 uses
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.a, align 8, !tbaa !61
  %i.bm = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.bm, align 8, !tbaa !35
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds [12 x i8], ptr %.val, i64 %i.bn
  ret ptr %i.bo
}

declare void @Gia_ObjAddFanout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @Gia_ManBuiltInSimPerform(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @Gia_ManQuantSetSuppAnd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #10 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !39
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #24 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #24
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #24 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !90
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #29
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #24 ; 0 uses
  call void @free(ptr noundef %i.d) #24
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !90, !noalias !196
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #24, !inline_history !195 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #3

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #17

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #17

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #20

attributes #0 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nounwind }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { nounwind allocsize(1) }
attributes #27 = { nounwind allocsize(0,1) }
attributes #28 = { cold noreturn nounwind }
attributes #29 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !40}
!1 = distinct !{!1, !40}
!2 = distinct !{!2, !40}
!3 = distinct !{!3, !40}
!4 = distinct !{!4, !40}
!5 = distinct !{!5, !40}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"p1 _ZTS10Gia_Obj_t_", !14, i64 0}
!17 = !{!"p1 int", !14, i64 0}
!18 = !{!"p1 _ZTS10Vec_Int_t_", !14, i64 0}
!19 = !{!"Vec_Int_t_", !11, i64 0, !11, i64 4, !17, i64 8}
!20 = !{!"p1 _ZTS10Gia_Rpr_t_", !14, i64 0}
!21 = !{!"p1 _ZTS10Vec_Wec_t_", !14, i64 0}
!22 = !{!"p1 _ZTS10Vec_Str_t_", !14, i64 0}
!23 = !{!"p1 _ZTS10Abc_Cex_t_", !14, i64 0}
!24 = !{!"p1 _ZTS10Vec_Ptr_t_", !14, i64 0}
!25 = !{!"p1 _ZTS10Gia_Plc_t_", !14, i64 0}
!26 = !{!"p1 _ZTS10Gia_Man_t_", !14, i64 0}
!27 = !{!"p1 _ZTS10Vec_Flt_t_", !14, i64 0}
!28 = !{!"float", !10, i64 0}
!29 = !{!"p1 _ZTS10Vec_Vec_t_", !14, i64 0}
!30 = !{!"long", !10, i64 0}
!31 = !{!"p1 _ZTS10Vec_Wrd_t_", !14, i64 0}
!32 = !{!"p1 _ZTS10Vec_Bit_t_", !14, i64 0}
!33 = !{!"p1 _ZTS10Gia_Dat_t_", !14, i64 0}
!34 = !{!"Gia_Man_t_", !15, i64 0, !15, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !16, i64 32, !17, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !18, i64 64, !18, i64 72, !19, i64 80, !19, i64 96, !11, i64 112, !11, i64 116, !11, i64 120, !19, i64 128, !17, i64 144, !17, i64 152, !18, i64 160, !11, i64 168, !11, i64 172, !11, i64 176, !11, i64 180, !17, i64 184, !20, i64 192, !17, i64 200, !17, i64 208, !17, i64 216, !11, i64 224, !11, i64 228, !17, i64 232, !11, i64 240, !18, i64 248, !18, i64 256, !18, i64 264, !21, i64 272, !21, i64 280, !18, i64 288, !14, i64 296, !18, i64 304, !18, i64 312, !22, i64 320, !15, i64 328, !18, i64 336, !18, i64 344, !18, i64 352, !18, i64 360, !18, i64 368, !23, i64 376, !23, i64 384, !24, i64 392, !19, i64 400, !19, i64 416, !18, i64 432, !18, i64 440, !18, i64 448, !18, i64 456, !18, i64 464, !18, i64 472, !18, i64 480, !18, i64 488, !18, i64 496, !18, i64 504, !18, i64 512, !15, i64 520, !25, i64 528, !26, i64 536, !27, i64 544, !27, i64 552, !18, i64 560, !18, i64 568, !18, i64 576, !18, i64 584, !18, i64 592, !11, i64 600, !28, i64 604, !28, i64 608, !18, i64 616, !17, i64 624, !11, i64 632, !24, i64 640, !24, i64 648, !24, i64 656, !18, i64 664, !18, i64 672, !18, i64 680, !18, i64 688, !18, i64 696, !18, i64 704, !18, i64 712, !18, i64 720, !18, i64 728, !29, i64 736, !27, i64 744, !14, i64 752, !14, i64 760, !14, i64 768, !30, i64 776, !30, i64 784, !14, i64 792, !17, i64 800, !11, i64 808, !11, i64 812, !11, i64 816, !11, i64 820, !11, i64 824, !11, i64 828, !11, i64 832, !11, i64 836, !11, i64 840, !11, i64 844, !11, i64 848, !11, i64 852, !31, i64 856, !31, i64 864, !31, i64 872, !31, i64 880, !18, i64 888, !18, i64 896, !18, i64 904, !32, i64 912, !11, i64 920, !11, i64 924, !11, i64 928, !18, i64 936, !11, i64 944, !11, i64 948, !18, i64 952, !18, i64 960, !24, i64 968, !31, i64 976, !18, i64 984, !18, i64 992, !11, i64 1000, !11, i64 1004, !31, i64 1008, !19, i64 1016, !19, i64 1032, !19, i64 1048, !33, i64 1064, !22, i64 1072, !22, i64 1080, !11, i64 1088, !11, i64 1092, !11, i64 1096, !11, i64 1100, !22, i64 1104, !18, i64 1112, !18, i64 1120, !18, i64 1128, !24, i64 1136}
!35 = !{!34, !16, i64 32}
!36 = !{!30, !30, i64 0}
!37 = !{!34, !18, i64 72}
!38 = !{!19, !17, i64 8}
!39 = !{!11, !11, i64 0}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!34, !18, i64 64}
!42 = !{!19, !11, i64 4}
!43 = !{!19, !11, i64 0}
!44 = !{!34, !17, i64 232}
!45 = !{!34, !11, i64 176}
!46 = !{!34, !17, i64 624}
!47 = !{!"p1 long", !14, i64 0}
!48 = !{!"Vec_Wrd_t_", !11, i64 0, !11, i64 4, !47, i64 8}
!49 = !{!48, !47, i64 8}
!50 = !{!34, !18, i64 264}
!51 = !{!"Gia_Obj_t_", !11, i64 0, !11, i64 3, !11, i64 3, !11, i64 3, !11, i64 4, !11, i64 7, !11, i64 7, !11, i64 7, !11, i64 8}
!52 = !{!51, !11, i64 8}
!53 = !{!48, !11, i64 4}
!54 = !{!48, !11, i64 0}
!55 = !{!34, !18, i64 960}
!56 = !{!34, !18, i64 952}
!57 = !{!34, !31, i64 976}
!58 = !{!34, !11, i64 16}
!59 = !{!34, !11, i64 944}
!60 = !{!34, !11, i64 948}
!61 = !{!34, !11, i64 24}
!62 = !{!14, !14, i64 0}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !{!"any p2 pointer", !14, i64 0}
!65 = !{!"Vec_Ptr_t_", !11, i64 0, !11, i64 4, !64, i64 8}
!66 = !{!65, !11, i64 4}
!67 = !{!65, !11, i64 0}
!68 = !{!65, !64, i64 8}
!69 = !{!"llvm.loop.isvectorized", i32 1}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!34, !24, i64 968}
!72 = !{!18, !18, i64 0}
!73 = !{!24, !24, i64 0}
!74 = !{!"Vec_Wec_t_", !11, i64 0, !11, i64 4, !18, i64 8}
!75 = !{!74, !11, i64 4}
!76 = !{!74, !11, i64 0}
!77 = !{!74, !18, i64 8}
!78 = !{!"p2 long", !64, i64 0}
!79 = !{!"Vec_Mem_t_", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !78, i64 24, !18, i64 32, !18, i64 40}
!80 = !{!79, !11, i64 0}
!81 = !{!79, !11, i64 8}
!82 = !{!79, !11, i64 12}
!83 = !{!79, !11, i64 20}
!84 = !{!79, !18, i64 32}
!85 = !{!79, !18, i64 40}
!86 = !{!79, !11, i64 4}
!87 = !{!79, !78, i64 24}
!88 = !{!47, !47, i64 0}
!89 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!90 = !{!89, !89, i64 0}
!91 = distinct !{!91, !40}
!92 = distinct !{!92, !40}
!93 = distinct !{!93, !40}
!94 = distinct !{!94, !40}
!95 = distinct !{!95, !40}
!96 = distinct !{!96, !40}
!97 = distinct !{!97, !40}
!98 = distinct !{!98, !40}
!99 = distinct !{!99, !40}
!100 = distinct !{!100, !63}
!101 = distinct !{!101, !40, !69, !70}
!102 = distinct !{!102, !40, !70, !69}
!103 = distinct !{!103, !40, !69, !70}
!104 = distinct !{!104, !40, !70, !69}
!105 = distinct !{!105, !40, !69, !70}
!106 = distinct !{!106, !40, !69, !70}
!107 = distinct !{!107, !40, !69}
!108 = distinct !{!108, !40, !69}
!109 = distinct !{!109, !40, !69, !70}
!110 = distinct !{!110, !40, !69, !70}
!111 = distinct !{!111, !40, !69}
!112 = distinct !{!112, !40, !69}
!113 = distinct !{!113, !40}
!114 = distinct !{!114, !40, !69, !70}
!115 = distinct !{!115, !63}
!116 = distinct !{!116, !40, !69, !70}
!117 = distinct !{!117, !63}
!118 = distinct !{!118, !40, !69}
!119 = distinct !{!119, !40, !69}
!120 = distinct !{!120, !40}
!121 = !{!"timespec", !30, i64 0, !30, i64 8}
!122 = !{!121, !30, i64 0}
!123 = !{!121, !30, i64 8}
!124 = distinct !{!124, !63}
!125 = distinct !{!125, !40, !69, !70}
!126 = distinct !{!126, !40, !70, !69}
!127 = distinct !{!127, !40, !69, !70}
!128 = distinct !{!128, !40, !70, !69}
!129 = distinct !{!129, !40, !69, !70}
!130 = distinct !{!130, !40, !70, !69}
!131 = !{!31, !31, i64 0}
!132 = distinct !{!132, !40}
!133 = distinct !{!133, !40, !69, !70}
!134 = distinct !{!134, !40, !70, !69}
!135 = distinct !{!135, !40, !69, !70}
!136 = distinct !{!136, !40, !69, !70}
!137 = distinct !{!137, !40, !69}
!138 = distinct !{!138, !40, !69}
!139 = distinct !{!139, !40, !69, !70}
!140 = distinct !{!140, !40, !69, !70}
!141 = distinct !{!141, !40, !69}
!142 = distinct !{!142, !40, !69}
!143 = distinct !{!143, !40}
!144 = distinct !{!144, !40}
!145 = distinct !{!145, !40}
!146 = distinct !{!146, !40}
!147 = distinct !{!147, !40}
!148 = distinct !{!148, !40}
!149 = distinct !{!149, !40}
!150 = distinct !{!150, !40}
!151 = distinct !{!151, !"LVerDomain"}
!152 = distinct !{!152, !151}
!153 = distinct !{!153, !151}
!154 = distinct !{!154, !40, !69, !70}
!155 = distinct !{!155, !40, !69}
!156 = distinct !{!156, !40}
!157 = distinct !{!157, !40}
!158 = distinct !{!158, !40, !69, !70}
!159 = distinct !{!159, !40, !70, !69}
!160 = distinct !{!160, !40}
!161 = distinct !{!161, !40}
!162 = distinct !{!162, !40}
!163 = distinct !{!163, !40}
!164 = distinct !{!164, !40}
!165 = distinct !{!165, !40}
!166 = distinct !{!166, !40}
!167 = distinct !{!167, !40}
!168 = distinct !{!168, !40}
!169 = !{!"p1 _ZTS10Vec_Mem_t_", !14, i64 0}
!170 = !{!169, !169, i64 0}
!171 = !{!152}
!172 = !{!153}
!173 = distinct !{!173, !40, !69, !70}
!174 = distinct !{!174, !63}
!175 = distinct !{!175, !40, !69}
!176 = distinct !{!176, !40}
!177 = distinct !{!177, !40}
!178 = distinct !{!178, !40, !69, !70}
!179 = distinct !{!179, !63}
!180 = distinct !{!180, !40, !69}
!181 = distinct !{!181, !40}
!182 = !{!79, !11, i64 16}
!183 = distinct !{!183, !40}
!184 = distinct !{!184, !40}
!185 = distinct !{!185, !40}
!186 = distinct !{!186, !40}
!187 = !{!34, !11, i64 116}
!188 = !{!34, !11, i64 832}
!189 = !{!34, !31, i64 1008}
!190 = !{!34, !11, i64 28}
!191 = !{!34, !11, i64 820}
!192 = !{!34, !17, i64 40}
!193 = distinct !{!193, !"vprintf"}
!194 = distinct !{!194, !193, !"vprintf: argument 0"}
!195 = distinct !{null}
!196 = !{!194}
end_hunk_0
