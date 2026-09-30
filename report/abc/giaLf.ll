Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaLf?download=true
inline.NumInlined: 854
inline.NumDeleted: 177
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 27
begin_hunk_0_@Abc_TtMinBase:bb.a

.lr.ph.i:                                         ; preds = %.lr.ph.split.split.split
  %i.ah = trunc nuw nsw i64 %indvars.iv to i32
  %i.ai = shl nuw nsw i32 1, %i.ah
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !109
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next54.i, %wide.trip.count57.i
  br i1 %exitcond58.not.i, label %Abc_TtHasVar.exit.thread, label %bb.g, !llvm.loop !8

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv53.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next54.i, %bb.f ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv53.i
  %i.an = load i64, ptr %i.am, align 8, !tbaa !109 ; 2 uses
  %i.ao = lshr i64 %i.an, %i.aj
  %i.ap = xor i64 %i.ao, %i.an
  %i.aq = and i64 %i.ap, %i.al
  %.not39.i = icmp eq i64 %i.aq, 0
  br i1 %.not39.i, label %bb.f, label %Abc_TtHasVar.exit.thread30

.preheader.lr.ph.i:                               ; preds = %.lr.ph.split.split.split
  %i.ar = add nsw i64 %indvars.iv, -6             ; 2 uses
  %i.as = icmp eq i64 %i.ar, 31
  %i.at = trunc nsw i64 %i.ar to i32              ; 2 uses
  %i.au = shl i32 2, %i.at
  %i.av = sext i32 %i.au to i64
  br i1 %i.as, label %Abc_TtHasVar.exit.thread, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.aw = shl nuw i32 1, %i.at                    ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.aw, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.03343.us.i = phi ptr [ %i.bb, %._crit_edge.us.i ], [ %0, %.preheader.us.preheader.i ] ; 3 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.03343.us.i, i64 %i.ax
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.i, !llvm.loop !9

bb.i:                                             ; preds = %bb.h, %.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i, %bb.h ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i, i64 %indvars.iv.i
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !109
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.ba = load i64, ptr %gep.i, align 8, !tbaa !109
  %.not.us.i = icmp eq i64 %i.az, %i.ba
  br i1 %.not.us.i, label %bb.h, label %Abc_TtHasVar.exit.thread30

._crit_edge.us.i:                                 ; preds = %bb.h
  %i.bb = getelementptr inbounds [8 x i8], ptr %.03343.us.i, i64 %i.av ; 2 uses
  %i.bc = icmp ult ptr %i.bb, %i.e
  br i1 %i.bc, label %.preheader.us.i, label %Abc_TtHasVar.exit.thread, !llvm.loop !10

Abc_TtHasVar.exit.thread30:                       ; preds = %bb.g, %bb.i
  %i.bd = sext i32 %.038 to i64                   ; 2 uses
  %i.be = icmp sgt i64 %indvars.iv, %i.bd
  br i1 %i.be, label %bb.j, label %bb.m

bb.j:                                             ; preds = %Abc_TtHasVar.exit.thread30
  br i1 %.not26, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !57
  %i.bh = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bd
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !57
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bi = trunc nuw nsw i64 %indvars.iv to i32
  tail call fastcc void @Abc_TtSwapVars(ptr noundef %0, i32 noundef %3, i32 noundef %.038, i32 noundef %i.bi)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %Abc_TtHasVar.exit.thread30
  %i.bj = add nsw i32 %.038, 1
  br label %Abc_TtHasVar.exit.thread

Abc_TtHasVar.exit.thread:                         ; preds = %._crit_edge.us.i, %bb.f, %.preheader.lr.ph.i, %bb.m
  %.1 = phi i32 [ %i.bj, %bb.m ], [ %.038, %bb.f ], [ %.038, %.preheader.lr.ph.i ], [ %.038, %._crit_edge.us.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split.split, !llvm.loop !341

._crit_edge:                                      ; preds = %Abc_TtHasVar.exit.thread, %Abc_TtHasVar.exit.thread.us, %Abc_TtHasVar.exit.thread.us.us, %.lr.ph.split, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph.split ], [ %.1.us, %Abc_TtHasVar.exit.thread.us ], [ %.1.us.us, %Abc_TtHasVar.exit.thread.us.us ], [ %.1, %Abc_TtHasVar.exit.thread ]
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @Vec_MemHashInsert(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !157
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !146  ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4        ; 2 uses
  %.val15 = load i32, ptr %i.e, align 4, !tbaa !64 ; 2 uses
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
  br i1 %.not.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i, !llvm.loop !13

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.c
  %.01116.i.i = phi i32 [ %i.k, %bb.c ], [ 3, %.preheader.i.i ] ; 2 uses
  %i.m = urem i32 %i.i, %.01116.i.i
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.critedge.i.i.backedge, label %bb.c

Abc_PrimeCudd.exit.i:                             ; preds = %.preheader.i.i, %bb.c
  %i.o = load i32, ptr %i.d, align 8, !tbaa !117
  %.not.i.i.i = icmp slt i32 %i.o, %i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !56   ; 3 uses
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
  %i.t = tail call ptr @realloc(ptr noundef nonnull %i.q, i64 noundef %i.s) #35
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.s) #33
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = phi ptr [ %i.t, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  store ptr %i.v, ptr %i.p, align 8, !tbaa !56
  store i32 %i.i, ptr %i.d, align 8, !tbaa !117
  br label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %bb.g, %Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre41.i, %Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i ], [ %i.s, %bb.g ]
  %i.w = phi ptr [ %i.q, %Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i ], [ %i.v, %bb.g ]
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 -1, i64 %.pre-phi.i, i1 false), !tbaa !57
  store i32 %i.i, ptr %i.e, align 4, !tbaa !64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !147
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 0, ptr %i.z, align 4, !tbaa !64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1428.i = load i32, ptr %i.a, align 4, !tbaa !157
  %i.ab = icmp sgt i32 %.val1428.i, 0
  br i1 %i.ab, label %.lr.ph30.i, label %Vec_MemHashResize.exit

.lr.ph30.i:                                       ; preds = %.lr.ph.i15.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.h

bb.h:                                             ; preds = %Vec_IntPush.exit.i, %.lr.ph30.i
  %.029.i = phi i32 [ 0, %.lr.ph30.i ], [ %i.dz, %Vec_IntPush.exit.i ] ; 3 uses
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !103 ; 3 uses
  %i.af = load i32, ptr %i.ac, align 8, !tbaa !104 ; 3 uses
  %i.ag = lshr i32 %.029.i, %i.af
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !106 ; 2 uses
  %i.ak = load i32, ptr %0, align 8, !tbaa !107   ; 6 uses
  %i.al = load i32, ptr %i.ad, align 4, !tbaa !108 ; 3 uses
  %i.am = and i32 %i.al, %.029.i
  %i.an = mul nsw i32 %i.am, %i.ak
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ao ; 8 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %Vec_MemHashResize.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !146 ; 2 uses
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
  %wide.load = load <4 x i32>, ptr %4, align 4, !tbaa !57
  %wide.load94 = load <4 x i32>, ptr %5, align 4, !tbaa !57
  %6 = mul <4 x i32> %wide.load, <i32 1699, i32 4177, i32 5147, i32 5647>
  %7 = mul <4 x i32> %wide.load94, <i32 6343, i32 7103, i32 7873, i32 8147>
  %8 = add <4 x i32> %6, %vec.phi                 ; 2 uses
  %9 = add <4 x i32> %7, %vec.phi93               ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %10 = icmp eq i64 %index.next, %n.vec
  br i1 %10, label %middle.block, label %vector.body, !llvm.loop !342

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
  %13 = load i32, ptr %12, align 4, !tbaa !57
  %14 = and i64 %indvars.iv.i.i.i.prol, 7
  %15 = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !57
  %17 = mul i32 %16, %13
  %18 = add i32 %17, %.012.i.i.i.prol             ; 3 uses
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter.a
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !343

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
  %i.au = load i32, ptr %i.at, align 4, !tbaa !57
  %i.av = and i64 %indvars.iv.i.i.i, 7
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !57
  %i.ay = mul i32 %i.ax, %i.au
  %i.az = add i32 %i.ay, %.012.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !57
  %i.bc = and i64 %indvars.iv.next.i.i.i, 7
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !57
  %i.bf = mul i32 %i.be, %i.bb
  %i.bg = add i32 %i.bf, %i.az
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i.i.1
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !57
  %i.bj = and i64 %indvars.iv.next.i.i.i.1, 7
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !57
  %i.bm = mul i32 %i.bl, %i.bi
  %i.bn = add i32 %i.bm, %i.bg
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i.i.2
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !57
  %i.bq = and i64 %indvars.iv.next.i.i.i.2, 7
  %i.br = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !57
  %i.bt = mul i32 %i.bs, %i.bp
  %i.bu = add i32 %i.bt, %i.bn                    ; 2 uses
  %indvars.iv.next.i.i.i.3.a = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3.a, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %Vec_MemHashKey.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !344

Vec_MemHashKey.exit.i.i:                          ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %bb.i
  %.0.lcssa.i.i.i = phi i32 [ 0, %bb.i ], [ %11, %middle.block ], [ %.lcssa126.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.bu, %.lr.ph.i.i.i ]
  %i.bv = getelementptr i8, ptr %i.aq, i64 4
  %.val.i.i.i = load i32, ptr %i.bv, align 4, !tbaa !64
  %i.bw = urem i32 %.0.lcssa.i.i.i, %.val.i.i.i
  %i.bx = getelementptr i8, ptr %i.aq, i64 8
  %.val16.i.i = load ptr, ptr %i.bx, align 8, !tbaa !56
  %i.by = sext i32 %i.bw to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %.val16.i.i, i64 %i.by ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !57 ; 4 uses
  %.not17.i.i = icmp eq i32 %i.ca, -1
  br i1 %.not17.i.i, label %Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i, label %.lr.ph.i16.i

Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i: ; preds = %Vec_MemHashKey.exit.i.i
  %.pre37.i = load ptr, ptr %i.x, align 8, !tbaa !147
  br label %Vec_MemHashLookup.exit.i

.lr.ph.i16.i:                                     ; preds = %Vec_MemHashKey.exit.i.i
  %i.cb = sext i32 %i.ak to i64
  %i.cc = shl nsw i64 %i.cb, 3                    ; 2 uses
  %i.cd = ashr i32 %i.ca, %i.af
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !106
  %i.ch = and i32 %i.ca, %i.al
  %i.ci = mul nsw i32 %i.ch, %i.ak
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.cj
  %bcmp.i24.i = tail call i32 @bcmp(ptr %i.ck, ptr nonnull readonly %i.ap, i64 %i.cc)
  %.not15.i1725.i = icmp eq i32 %bcmp.i24.i, 0
  %.pre38.i = load ptr, ptr %i.x, align 8, !tbaa !147 ; 4 uses
  br i1 %.not15.i1725.i, label %Vec_MemHashLookup.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i16.i
  %i.cl = getelementptr i8, ptr %.pre38.i, i64 8
  %.val.i.i = load ptr, ptr %i.cl, align 8, !tbaa !56 ; 3 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.cm = ashr i32 %i.cx, %i.af
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !106
  %i.cq = and i32 %i.cx, %i.al
  %i.cr = mul nsw i32 %i.cq, %i.ak
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cs
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.ct, ptr nonnull readonly %i.ap, i64 %i.cc)
  %.not15.i17.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not15.i17.i, label %Vec_MemHashLookup.exit.i.loopexit, label %bb.k, !llvm.loop !345

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %i.cu = phi i32 [ %i.ca, %.lr.ph.i ], [ %i.cx, %bb.j ]
  %i.cv = sext i32 %i.cu to i64                   ; 3 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !57 ; 4 uses
  %.not.i18.i = icmp eq i32 %i.cx, -1
  br i1 %.not.i18.i, label %.Vec_MemHashLookup.exit.loopexit_crit_edge.i, label %bb.j, !llvm.loop !345

.Vec_MemHashLookup.exit.loopexit_crit_edge.i:     ; preds = %bb.k
  %i.cy = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.cv
  br label %Vec_MemHashLookup.exit.i, !llvm.loop !345

Vec_MemHashLookup.exit.i.loopexit:                ; preds = %bb.j
  %i.cz = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.cv
  br label %Vec_MemHashLookup.exit.i

Vec_MemHashLookup.exit.i:                         ; preds = %Vec_MemHashLookup.exit.i.loopexit, %.Vec_MemHashLookup.exit.loopexit_crit_edge.i, %.lr.ph.i16.i, %Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i
  %i.da = phi ptr [ %.pre37.i, %Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i ], [ %.pre38.i, %.lr.ph.i16.i ], [ %.pre38.i, %.Vec_MemHashLookup.exit.loopexit_crit_edge.i ], [ %.pre38.i, %Vec_MemHashLookup.exit.i.loopexit ] ; 6 uses
  %.0.lcssa.i.i = phi ptr [ %i.bz, %Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i ], [ %i.bz, %.lr.ph.i16.i ], [ %i.cy, %.Vec_MemHashLookup.exit.loopexit_crit_edge.i ], [ %i.cz, %Vec_MemHashLookup.exit.i.loopexit ]
  %i.db = getelementptr i8, ptr %i.da, i64 4      ; 3 uses
  %.val.i = load i32, ptr %i.db, align 4, !tbaa !64 ; 8 uses
  store i32 %.val.i, ptr %.0.lcssa.i.i, align 4, !tbaa !57
  %i.dc = load i32, ptr %i.da, align 8, !tbaa !117
  %i.dd = icmp eq i32 %.val.i, %i.dc
  br i1 %i.dd, label %bb.l, label %Vec_IntPush.exit.i

bb.l:                                             ; preds = %Vec_MemHashLookup.exit.i
  %i.de = icmp slt i32 %.val.i, 16
  br i1 %i.de, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !56 ; 2 uses
  %.not9.i.i19.i = icmp eq ptr %i.dg, null
  br i1 %.not9.i.i19.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dh = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.dg, i64 noundef 64) #35
  br label %Vec_IntGrow.exit.i20.i

bb.o:                                             ; preds = %bb.m
  %i.di = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit.i20.i

Vec_IntGrow.exit.i20.i:                           ; preds = %bb.o, %bb.n
  %i.dj = phi ptr [ %i.dh, %bb.n ], [ %i.di, %bb.o ]
  store ptr %i.dj, ptr %i.df, align 8, !tbaa !56
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.p:                                             ; preds = %bb.l
  %i.dk = icmp samesign ult i32 %.val.i, 1073741823
  %i.dl = shl nuw nsw i32 %.val.i, 1
  %spec.select.i.i = select i1 %i.dk, i32 %i.dl, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %.val.i, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.q, label %Vec_IntPush.exit.i

bb.q:                                             ; preds = %bb.p
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !56 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.dn, null
  %i.do = zext nneg i32 %spec.select.i.i to i64
  %i.dp = shl nuw nsw i64 %i.do, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dq = tail call ptr @realloc(ptr noundef nonnull %i.dn, i64 noundef %i.dp) #35
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.dr = tail call noalias ptr @malloc(i64 noundef %i.dp) #33
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ds = phi ptr [ %i.dq, %bb.r ], [ %i.dr, %bb.s ]
  store ptr %i.ds, ptr %i.dm, align 8, !tbaa !56
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.t, %Vec_IntGrow.exit.i20.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.t ], [ 16, %Vec_IntGrow.exit.i20.i ]
  store i32 %spec.select.sink.i.i, ptr %i.da, align 8, !tbaa !117
  %.pre39.i = load i32, ptr %i.db, align 4, !tbaa !64
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.p, %Vec_MemHashLookup.exit.i
  %i.dt = phi i32 [ %.val.i, %Vec_MemHashLookup.exit.i ], [ %.val.i, %bb.p ], [ %.pre39.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !56
  %i.dw = add nsw i32 %i.dt, 1
  store i32 %i.dw, ptr %i.db, align 4, !tbaa !64
  %i.dx = sext i32 %i.dt to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.dx
  store i32 -1, ptr %i.dy, align 4, !tbaa !57
  %i.dz = add nuw nsw i32 %.029.i, 1              ; 2 uses
  %.val14.i = load i32, ptr %i.a, align 4, !tbaa !157
  %i.ea = icmp slt i32 %i.dz, %.val14.i
  br i1 %i.ea, label %bb.h, label %Vec_MemHashResize.exit, !llvm.loop !346

Vec_MemHashResize.exit:                           ; preds = %Vec_IntPush.exit.i, %bb.h, %.lr.ph.i15.i, %bb.a
  %i.eb = load ptr, ptr %i.c, align 8, !tbaa !146 ; 2 uses
  %i.ec = load i32, ptr %0, align 8, !tbaa !107   ; 5 uses
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
  %wide.load106 = load <4 x i32>, ptr %23, align 4, !tbaa !57
  %wide.load107 = load <4 x i32>, ptr %24, align 4, !tbaa !57
  %25 = mul <4 x i32> %wide.load106, <i32 1699, i32 4177, i32 5147, i32 5647>
  %26 = mul <4 x i32> %wide.load107, <i32 6343, i32 7103, i32 7873, i32 8147>
  %27 = add <4 x i32> %25, %vec.phi104            ; 2 uses
  %28 = add <4 x i32> %26, %vec.phi105            ; 2 uses
  %index.next110 = add nuw i64 %index103, 8       ; 2 uses
  %29 = icmp eq i64 %index.next110, %n.vec101
  br i1 %29, label %middle.block111, label %vector.body102, !llvm.loop !347

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
  %32 = load i32, ptr %31, align 4, !tbaa !57
  %33 = and i64 %indvars.iv.i.i.prol, 7
  %34 = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !57
  %36 = mul i32 %35, %32
  %37 = add i32 %36, %.012.i.i22.prol             ; 3 uses
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter134.next = add i64 %prol.iter134, 1   ; 2 uses
  %prol.iter134.cmp.not = icmp eq i64 %prol.iter134.next, %xtraiter132
  br i1 %prol.iter134.cmp.not, label %.lr.ph.i.i21.prol.loopexit, label %.lr.ph.i.i21.prol, !llvm.loop !348

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
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !57
  %i.eh = and i64 %indvars.iv.i.i, 7
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !57
  %i.ek = mul i32 %i.ej, %i.eg
  %i.el = add i32 %i.ek, %.012.i.i22
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.i
  %i.en = load i32, ptr %i.em, align 4, !tbaa !57
  %i.eo = and i64 %indvars.iv.next.i.i, 7
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !57
  %i.er = mul i32 %i.eq, %i.en
  %i.es = add i32 %i.er, %i.el
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.i.1
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !57
  %i.ev = and i64 %indvars.iv.next.i.i.1, 7
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !57
  %i.ey = mul i32 %i.ex, %i.eu
  %i.ez = add i32 %i.ey, %i.es
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.i.2
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !57
  %i.fc = and i64 %indvars.iv.next.i.i.2, 7
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !57
  %i.ff = mul i32 %i.fe, %i.fb
  %i.fg = add i32 %i.ff, %i.ez                    ; 2 uses
  %indvars.iv.next.i.i.3.a = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3.a, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %Vec_MemHashKey.exit.i, label %.lr.ph.i.i21, !llvm.loop !349

Vec_MemHashKey.exit.i:                            ; preds = %.lr.ph.i.i21.prol.loopexit, %.lr.ph.i.i21, %middle.block111, %Vec_MemHashResize.exit
  %.0.lcssa.i.i16 = phi i32 [ 0, %Vec_MemHashResize.exit ], [ %30, %middle.block111 ], [ %.lcssa.unr, %.lr.ph.i.i21.prol.loopexit ], [ %i.fg, %.lr.ph.i.i21 ]
  %i.fh = getelementptr i8, ptr %i.eb, i64 4
  %.val.i.i17 = load i32, ptr %i.fh, align 4, !tbaa !64
  %i.fi = urem i32 %.0.lcssa.i.i16, %.val.i.i17
  %i.fj = getelementptr i8, ptr %i.eb, i64 8
  %.val16.i = load ptr, ptr %i.fj, align 8, !tbaa !56
  %i.fk = sext i32 %i.fi to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %.val16.i, i64 %i.fk ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !57 ; 5 uses
  %.not17.i = icmp eq i32 %i.fm, -1
  br i1 %.not17.i, label %Vec_MemHashLookup.exit.thread, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %Vec_MemHashKey.exit.i
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !103 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !104 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !108 ; 2 uses
  %i.ft = sext i32 %i.ec to i64
  %i.fu = shl nsw i64 %i.ft, 3                    ; 2 uses
  %i.fv = ashr i32 %i.fm, %i.fq
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.fw
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !106
  %i.fz = and i32 %i.fm, %i.fs
  %i.ga = mul nsw i32 %i.fz, %i.ec
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %i.gb
  %bcmp.i42 = tail call i32 @bcmp(ptr %i.gc, ptr readonly %1, i64 %i.fu)
  %.not15.i43 = icmp eq i32 %bcmp.i42, 0
  br i1 %.not15.i43, label %Vec_MemHashLookup.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i18
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !147
  %i.gf = getelementptr i8, ptr %i.ge, i64 8
  %.val.i19 = load ptr, ptr %i.gf, align 8, !tbaa !56 ; 2 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.v
  %i.gg = ashr i32 %i.gr, %i.fq
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.gh
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !106
  %i.gk = and i32 %i.gr, %i.fs
  %i.gl = mul nsw i32 %i.gk, %i.ec
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gj, i64 %i.gm
  %bcmp.i = tail call i32 @bcmp(ptr %i.gn, ptr readonly %1, i64 %i.fu)
  %.not15.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not15.i, label %Vec_MemHashLookup.exit, label %bb.v, !llvm.loop !345

bb.v:                                             ; preds = %.lr.ph, %bb.u
  %i.go = phi i32 [ %i.fm, %.lr.ph ], [ %i.gr, %bb.u ]
  %i.gp = sext i32 %i.go to i64                   ; 2 uses
  %i.gq = getelementptr inbounds [4 x i8], ptr %.val.i19, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !57 ; 5 uses
  %.not.i20 = icmp eq i32 %i.gr, -1
  br i1 %.not.i20, label %Vec_MemHashLookup.exit.thread.loopexit, label %bb.u, !llvm.loop !345

Vec_MemHashLookup.exit.thread.loopexit:           ; preds = %bb.v
  %i.gs = getelementptr inbounds [4 x i8], ptr %.val.i19, i64 %i.gp
  br label %Vec_MemHashLookup.exit.thread

Vec_MemHashLookup.exit.thread:                    ; preds = %Vec_MemHashLookup.exit.thread.loopexit, %Vec_MemHashKey.exit.i
  %.0.lcssa.i31 = phi ptr [ %i.fl, %Vec_MemHashKey.exit.i ], [ %i.gs, %Vec_MemHashLookup.exit.thread.loopexit ]
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !147 ; 6 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 4      ; 3 uses
  %.val14 = load i32, ptr %i.gv, align 4, !tbaa !64 ; 8 uses
  store i32 %.val14, ptr %.0.lcssa.i31, align 4, !tbaa !57
  %i.gw = load i32, ptr %i.gu, align 8, !tbaa !117
  %i.gx = icmp eq i32 %.val14, %i.gw
  br i1 %i.gx, label %bb.w, label %Vec_IntPush.exit

bb.w:                                             ; preds = %Vec_MemHashLookup.exit.thread
  %i.gy = icmp slt i32 %.val14, 16
  br i1 %i.gy, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !56 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ha, null
  br i1 %.not9.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hb = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ha, i64 noundef 64) #35
  br label %Vec_IntGrow.exit.i

bb.z:                                             ; preds = %bb.x
  %i.hc = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.z, %bb.y
  %i.hd = phi ptr [ %i.hb, %bb.y ], [ %i.hc, %bb.z ]
  store ptr %i.hd, ptr %i.gz, align 8, !tbaa !56
  br label %Vec_IntGrow.exit11.sink.split.i

bb.aa:                                            ; preds = %bb.w
  %i.he = icmp samesign ult i32 %.val14, 1073741823
  %i.hf = shl nuw nsw i32 %.val14, 1
  %spec.select.i = select i1 %i.he, i32 %i.hf, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %.val14, %spec.select.i
  br i1 %.not.i9.i, label %bb.ab, label %Vec_IntPush.exit

bb.ab:                                            ; preds = %bb.aa
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !56 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.hh, null
  %i.hi = zext nneg i32 %spec.select.i to i64
  %i.hj = shl nuw nsw i64 %i.hi, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hk = tail call ptr @realloc(ptr noundef nonnull %i.hh, i64 noundef %i.hj) #35
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.hl = tail call noalias ptr @malloc(i64 noundef %i.hj) #33
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.hm = phi ptr [ %i.hk, %bb.ac ], [ %i.hl, %bb.ad ]
  store ptr %i.hm, ptr %i.hg, align 8, !tbaa !56
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.ae, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.ae ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.gu, align 8, !tbaa !117
  %.pre = load i32, ptr %i.gv, align 4, !tbaa !64
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_MemHashLookup.exit.thread, %bb.aa, %Vec_IntGrow.exit11.sink.split.i
  %i.hn = phi i32 [ %.val14, %Vec_MemHashLookup.exit.thread ], [ %.val14, %bb.aa ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !56
  %i.hq = add nsw i32 %i.hn, 1
  store i32 %i.hq, ptr %i.gv, align 4, !tbaa !64
  %i.hr = sext i32 %i.hn to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.hr
  store i32 -1, ptr %i.hs, align 4, !tbaa !57
  %i.ht = load i32, ptr %i.a, align 4, !tbaa !157 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !104 ; 3 uses
  %i.hw = ashr i32 %i.ht, %i.hv                   ; 7 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !145 ; 3 uses
  %i.hz = icmp slt i32 %i.hy, %i.hw
  br i1 %i.hz, label %bb.af, label %Vec_MemPush.exit

bb.af:                                            ; preds = %Vec_IntPush.exit
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !156 ; 3 uses
  %.not36.i.i = icmp slt i32 %i.hw, %i.ib
  br i1 %.not36.i.i, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !103 ; 2 uses
  %.not37.i.i = icmp eq ptr %i.id, null
  %.not38.i.i = icmp eq i32 %i.ib, 0
  %i.ie = shl nsw i32 %i.ib, 1
  %i.if = add nsw i32 %i.hw, 32
  %i.ig = select i1 %.not38.i.i, i32 %i.if, i32 %i.ie ; 2 uses
  store i32 %i.ig, ptr %i.ia, align 8, !tbaa !156
  %i.ih = sext i32 %i.ig to i64
  %i.ii = shl nsw i64 %i.ih, 3                    ; 2 uses
  br i1 %.not37.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ij = tail call ptr @realloc(ptr noundef nonnull %i.id, i64 noundef %i.ii) #35
  %.pre.pre.i.i = load i32, ptr %i.hx, align 4, !tbaa !145
  %.pre.pre.pre.pre.i = load i32, ptr %i.hu, align 8, !tbaa !104
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.ik = tail call noalias ptr @malloc(i64 noundef %i.ii) #33
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pre.pre.pre.i = phi i32 [ %.pre.pre.pre.pre.i, %bb.ah ], [ %i.hv, %bb.ai ]
  %.pre.i.i = phi i32 [ %.pre.pre.i.i, %bb.ah ], [ %i.hy, %bb.ai ]
  %i.il = phi ptr [ %i.ij, %bb.ah ], [ %i.ik, %bb.ai ]
  store ptr %i.il, ptr %i.ic, align 8, !tbaa !103
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.af
  %.pre.pre.i = phi i32 [ %.pre.pre.pre.i, %bb.aj ], [ %i.hv, %bb.af ] ; 2 uses
  %i.im = phi i32 [ %.pre.i.i, %bb.aj ], [ %i.hy, %bb.af ] ; 2 uses
  %.not40.not41.i.i = icmp slt i32 %i.im, %i.hw
  br i1 %.not40.not41.i.i, label %.lr.ph.i.i24, label %._crit_edge.i.i

.lr.ph.i.i24:                                     ; preds = %bb.ak
  %i.in = load i32, ptr %0, align 8, !tbaa !107
  %i.io = shl i32 %i.in, %.pre.pre.i
  %i.ip = sext i32 %i.io to i64
  %i.iq = shl nsw i64 %i.ip, 3
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !103
  %i.it = sext i32 %i.im to i64
  %wide.trip.count.i.i25 = sext i32 %i.hw to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph.i.i24
  %indvars.iv.i.i26 = phi i64 [ %i.it, %.lr.ph.i.i24 ], [ %indvars.iv.next.i.i27, %bb.al ]
  %indvars.iv.next.i.i27 = add nsw i64 %indvars.iv.i.i26, 1 ; 3 uses
  %i.iu = tail call noalias ptr @malloc(i64 noundef %i.iq) #33
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.is, i64 %indvars.iv.next.i.i27
  store ptr %i.iu, ptr %i.iv, align 8, !tbaa !106
  %exitcond.not.i.i28 = icmp eq i64 %indvars.iv.next.i.i27, %wide.trip.count.i.i25
  br i1 %exitcond.not.i.i28, label %._crit_edge.i.i, label %bb.al, !llvm.loop !350

._crit_edge.i.i:                                  ; preds = %bb.al, %bb.ak
  store i32 %i.hw, ptr %i.hx, align 4, !tbaa !145
  %.pre.i = ashr i32 %i.ht, %.pre.pre.i
  br label %Vec_MemPush.exit

Vec_MemPush.exit:                                 ; preds = %Vec_IntPush.exit, %._crit_edge.i.i
  %.pre-phi.i23 = phi i32 [ %i.hw, %Vec_IntPush.exit ], [ %.pre.i, %._crit_edge.i.i ]
  %i.iw = add nsw i32 %i.ht, 1
  store i32 %i.iw, ptr %i.a, align 4, !tbaa !157
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !103
  %i.iz = sext i32 %.pre-phi.i23 to i64
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.iy, i64 %i.iz
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !106
  %i.jc = load i32, ptr %0, align 8, !tbaa !107   ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !108
  %i.jf = and i32 %i.je, %i.ht
  %i.jg = mul nsw i32 %i.jf, %i.jc
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.jb, i64 %i.jh
  %i.jj = sext i32 %i.jc to i64
  %i.jk = shl nsw i64 %i.jj, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ji, ptr readonly align 8 %1, i64 %i.jk, i1 false)
  %i.jl = load ptr, ptr %i.gt, align 8, !tbaa !147
  %i.jm = getelementptr i8, ptr %i.jl, i64 4
  %.val = load i32, ptr %i.jm, align 4, !tbaa !64
  %i.jn = add nsw i32 %.val, -1
  br label %Vec_MemHashLookup.exit

Vec_MemHashLookup.exit:                           ; preds = %bb.u, %.lr.ph.i18, %Vec_MemPush.exit
  %.0 = phi i32 [ %i.jn, %Vec_MemPush.exit ], [ %i.fm, %.lr.ph.i18 ], [ %i.gr, %bb.u ]
  ret i32 %.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @Abc_TtSwapVars(ptr nofree noundef nonnull captures(address) %0, i32 noundef %1, i32 noundef range(i32 -2147483648, 254) %2, i32 noundef range(i32 -2147483648, 255) %3) unnamed_addr #22 {
bb.a:
  %i.a = icmp eq i32 %2, %3
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select = tail call i32 @llvm.smax.i32(i32 %3, i32 %2) ; 7 uses
  %spec.select117 = tail call i32 @llvm.smin.i32(i32 %3, i32 %2) ; 8 uses
  %i.b = icmp slt i32 %1, 7
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr %0, align 8, !tbaa !109    ; 3 uses
  %i.d = sext i32 %spec.select117 to i64
  %i.e = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.d
  %i.f = sext i32 %spec.select to i64
  %i.g = getelementptr inbounds [24 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = shl nuw i32 1, %spec.select
  %.neg.i = shl nsw i32 -1, %spec.select117
  %i.i = add i32 %i.h, %.neg.i
  %i.j = load i64, ptr %i.g, align 8, !tbaa !109
  %i.k = and i64 %i.j, %i.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !109
  %i.n = and i64 %i.m, %i.c
  %i.o = zext i32 %i.i to i64                     ; 2 uses
  %i.p = shl i64 %i.n, %i.o
  %i.q = or i64 %i.p, %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !109
  %i.t = and i64 %i.s, %i.c
  %i.u = lshr i64 %i.t, %i.o
  %i.v = or i64 %i.q, %i.u
  store i64 %i.v, ptr %0, align 8, !tbaa !109
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.w = icmp slt i32 %spec.select, 6
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = add nsw i32 %1, -6                       ; 3 uses
  %.not135 = icmp eq i32 %i.x, 31
  br i1 %.not135, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.y = shl nuw i32 1, %i.x                      ; 3 uses
  %.neg = shl nsw i32 -1, %spec.select117
  %i.z = shl nuw nsw i32 1, %spec.select
  %i.aa = add nsw i32 %.neg, %i.z
  %i.ab = sext i32 %spec.select117 to i64
  %i.ac = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.ab
  %i.ad = sext i32 %spec.select to i64
  %i.ae = getelementptr inbounds [24 x i8], ptr %i.ac, i64 %i.ad ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !109 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !109 ; 4 uses
  %i.ai = zext i32 %i.aa to i64                   ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !109 ; 4 uses
  %min.iters.check204 = icmp slt i32 %i.y, 4
  br i1 %min.iters.check204, label %scalar.ph203, label %vector.ph205

vector.ph205:                                     ; preds = %.lr.ph
  %i.al = and i32 %i.y, 2147483644
  %n.vec206 = zext nneg i32 %i.al to i64
  %broadcast.splatinsert207 = insertelement <2 x i64> poison, i64 %i.af, i64 0
  %broadcast.splat208 = shufflevector <2 x i64> %broadcast.splatinsert207, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert209 = insertelement <2 x i64> poison, i64 %i.ah, i64 0
  %broadcast.splat210 = shufflevector <2 x i64> %broadcast.splatinsert209, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert211 = insertelement <2 x i64> poison, i64 %i.ai, i64 0
  %broadcast.splat212 = shufflevector <2 x i64> %broadcast.splatinsert211, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert213 = insertelement <2 x i64> poison, i64 %i.ak, i64 0
  %broadcast.splat214 = shufflevector <2 x i64> %broadcast.splatinsert213, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph205
  %index216 = phi i64 [ 0, %vector.ph205 ], [ %index.next219, %vector.body215 ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index216 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load217 = load <2 x i64>, ptr %i.am, align 8, !tbaa !109 ; 3 uses
  %wide.load218 = load <2 x i64>, ptr %i.an, align 8, !tbaa !109 ; 3 uses
  %i.ao = and <2 x i64> %broadcast.splat208, %wide.load217
  %i.ap = and <2 x i64> %broadcast.splat208, %wide.load218
  %i.aq = and <2 x i64> %broadcast.splat210, %wide.load217
  %i.ar = and <2 x i64> %broadcast.splat210, %wide.load218
  %i.as = shl <2 x i64> %i.aq, %broadcast.splat212
  %i.at = shl <2 x i64> %i.ar, %broadcast.splat212
  %i.au = or <2 x i64> %i.as, %i.ao
  %i.av = or <2 x i64> %i.at, %i.ap
  %i.aw = and <2 x i64> %broadcast.splat214, %wide.load217
  %i.ax = and <2 x i64> %broadcast.splat214, %wide.load218
  %i.ay = lshr <2 x i64> %i.aw, %broadcast.splat212
  %i.az = lshr <2 x i64> %i.ax, %broadcast.splat212
  %i.ba = or <2 x i64> %i.au, %i.ay
  %i.bb = or <2 x i64> %i.av, %i.az
  store <2 x i64> %i.ba, ptr %i.am, align 8, !tbaa !109
  store <2 x i64> %i.bb, ptr %i.an, align 8, !tbaa !109
  %index.next219 = add nuw i64 %index216, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next219, %n.vec206
  br i1 %i.bc, label %.loopexit, label %vector.body215, !llvm.loop !351

scalar.ph203:                                     ; preds = %.lr.ph
  %i.bd = load i64, ptr %0, align 8, !tbaa !109   ; 3 uses
  %i.be = and i64 %i.af, %i.bd
  %i.bf = and i64 %i.ah, %i.bd
  %i.bg = shl i64 %i.bf, %i.ai
  %i.bh = or i64 %i.bg, %i.be
  %i.bi = and i64 %i.ak, %i.bd
  %i.bj = lshr i64 %i.bi, %i.ai
  %i.bk = or i64 %i.bh, %i.bj
  store i64 %i.bk, ptr %0, align 8, !tbaa !109
  %exitcond160.not = icmp slt i32 %i.y, 2
  br i1 %exitcond160.not, label %.loopexit, label %scalar.ph203.1

scalar.ph203.1:                                   ; preds = %scalar.ph203
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !109 ; 3 uses
  %i.bn = and i64 %i.af, %i.bm
  %i.bo = and i64 %i.ah, %i.bm
  %i.bp = shl i64 %i.bo, %i.ai
  %i.bq = or i64 %i.bp, %i.bn
  %i.br = and i64 %i.ak, %i.bm
  %i.bs = lshr i64 %i.br, %i.ai
  %i.bt = or i64 %i.bq, %i.bs
  store i64 %i.bt, ptr %i.bl, align 8, !tbaa !109
  %exitcond160.not.1 = icmp eq i32 %i.x, 1
  br i1 %exitcond160.not.1, label %.loopexit, label %scalar.ph203.2

scalar.ph203.2:                                   ; preds = %scalar.ph203.1
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !109 ; 3 uses
  %i.bw = and i64 %i.af, %i.bv
  %i.bx = and i64 %i.ah, %i.bv
  %i.by = shl i64 %i.bx, %i.ai
  %i.bz = or i64 %i.by, %i.bw
  %i.ca = and i64 %i.ak, %i.bv
  %i.cb = lshr i64 %i.ca, %i.ai
  %i.cc = or i64 %i.bz, %i.cb
  store i64 %i.cc, ptr %i.bu, align 8, !tbaa !109
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.cd = icmp slt i32 %spec.select117, 6
  %i.ce = add nsw i32 %1, -6                      ; 3 uses
  %i.cf = shl nuw i32 1, %i.ce
  %i.cg = sext i32 %i.cf to i64
  %.idx132 = shl nsw i64 %i.cg, 3
  %i.ch = getelementptr inbounds i8, ptr %0, i64 %.idx132 ; 2 uses
  br i1 %i.cd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ci = add nsw i32 %spec.select, -6            ; 3 uses
  %i.cj = shl nuw i32 1, %i.ci                    ; 3 uses
  %.not133 = icmp eq i32 %i.ce, 31
  br i1 %.not133, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ck = shl nuw nsw i32 1, %spec.select117
  %.not134 = icmp eq i32 %i.ci, 31
  %i.cl = zext nneg i32 %i.ck to i64              ; 3 uses
  %i.cm = shl i32 2, %i.ci
  %i.cn = sext i32 %i.cm to i64                   ; 2 uses
  br i1 %.not134, label %.loopexit, label %.preheader.lr.ph.split.us

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.co = sext i32 %spec.select117 to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !109 ; 5 uses
  %i.cr = xor i64 %i.cq, -1                       ; 2 uses
  %i.cs = sext i32 %i.cj to i64                   ; 2 uses
  %smax152 = tail call i32 @llvm.smax.i32(i32 %i.cj, i32 1)
  %wide.trip.count153 = zext nneg i32 %smax152 to i64 ; 4 uses
  %i.ct = shl nuw nsw i64 %wide.trip.count153, 3
  %i.cu = shl nsw i64 %i.cn, 3
  %i.cv = add nsw i64 %i.cs, %wide.trip.count153
  %i.cw = shl nsw i64 %i.cv, 3
  %min.iters.check188 = icmp slt i32 %i.cj, 2
  %i.cx = getelementptr i8, ptr %0, i64 %i.cw
  %i.cy = getelementptr i8, ptr %0, i64 %i.ct
  %n.vec190 = and i64 %wide.trip.count153, 2147483646
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cq, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert191 = insertelement <2 x i64> poison, i64 %i.cl, i64 0
  %broadcast.splat192 = shufflevector <2 x i64> %broadcast.splatinsert191, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert193 = insertelement <2 x i64> poison, i64 %i.cr, i64 0
  %broadcast.splat194 = shufflevector <2 x i64> %broadcast.splatinsert193, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %indvar180 = phi i64 [ %indvar.next181, %._crit_edge.us ], [ 0, %.preheader.lr.ph.split.us ] ; 2 uses
  %.0128.us = phi ptr [ %i.dw, %._crit_edge.us ], [ %0, %.preheader.lr.ph.split.us ] ; 5 uses
  %invariant.gep169 = getelementptr [8 x i8], ptr %.0128.us, i64 %i.cs ; 3 uses
  br i1 %min.iters.check188, label %scalar.ph187.preheader, label %vector.memcheck179

scalar.ph187.preheader:                           ; preds = %vector.memcheck179, %.preheader.us
  br label %scalar.ph187

vector.memcheck179:                               ; preds = %.preheader.us
  %i.cz = mul i64 %i.cu, %indvar180               ; 2 uses
  %scevgep183 = getelementptr i8, ptr %i.cx, i64 %i.cz
  %scevgep182 = getelementptr i8, ptr %i.cy, i64 %i.cz
  %bound0184 = icmp ult ptr %.0128.us, %scevgep183
  %bound1185 = icmp ult ptr %invariant.gep169, %scevgep182
  %found.conflict186 = and i1 %bound0184, %bound1185
  br i1 %found.conflict186, label %scalar.ph187.preheader, label %vector.body195

vector.body195:                                   ; preds = %vector.memcheck179, %vector.body195
  %index196 = phi i64 [ %index.next199, %vector.body195 ], [ 0, %vector.memcheck179 ] ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.0128.us, i64 %index196 ; 2 uses
  %wide.load197 = load <2 x i64>, ptr %i.da, align 8, !tbaa !109, !alias.scope !365, !noalias !366 ; 2 uses
  %i.db = and <2 x i64> %broadcast.splat, %wide.load197
  %i.dc = lshr <2 x i64> %i.db, %broadcast.splat192
  %i.dd = getelementptr [8 x i8], ptr %invariant.gep169, i64 %index196 ; 2 uses
  %wide.load198 = load <2 x i64>, ptr %i.dd, align 8, !tbaa !109, !alias.scope !366 ; 2 uses
  %i.de = shl <2 x i64> %wide.load198, %broadcast.splat192
  %i.df = and <2 x i64> %i.de, %broadcast.splat
  %i.dg = and <2 x i64> %wide.load197, %broadcast.splat194
  %i.dh = or <2 x i64> %i.df, %i.dg
  store <2 x i64> %i.dh, ptr %i.da, align 8, !tbaa !109, !alias.scope !365, !noalias !366
  %i.di = and <2 x i64> %wide.load198, %broadcast.splat
  %i.dj = or <2 x i64> %i.di, %i.dc
  store <2 x i64> %i.dj, ptr %i.dd, align 8, !tbaa !109, !alias.scope !366
  %index.next199 = add nuw i64 %index196, 2       ; 2 uses
  %i.dk = icmp eq i64 %index.next199, %n.vec190
  br i1 %i.dk, label %._crit_edge.us, label %vector.body195, !llvm.loop !355

scalar.ph187:                                     ; preds = %scalar.ph187.preheader, %scalar.ph187
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %scalar.ph187 ], [ 0, %scalar.ph187.preheader ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.0128.us, i64 %indvars.iv149 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !109 ; 2 uses
  %i.dn = and i64 %i.cq, %i.dm
  %i.do = lshr i64 %i.dn, %i.cl
  %gep170 = getelementptr [8 x i8], ptr %invariant.gep169, i64 %indvars.iv149 ; 2 uses
  %i.dp = load i64, ptr %gep170, align 8, !tbaa !109 ; 2 uses
  %i.dq = shl i64 %i.dp, %i.cl
  %i.dr = and i64 %i.dq, %i.cq
  %i.ds = and i64 %i.dm, %i.cr
  %i.dt = or i64 %i.dr, %i.ds
  store i64 %i.dt, ptr %i.dl, align 8, !tbaa !109
  %i.du = and i64 %i.dp, %i.cq
  %i.dv = or i64 %i.du, %i.do
  store i64 %i.dv, ptr %gep170, align 8, !tbaa !109
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count153
  br i1 %exitcond154.not, label %._crit_edge.us, label %scalar.ph187, !llvm.loop !356

._crit_edge.us:                                   ; preds = %vector.body195, %scalar.ph187
  %i.dw = getelementptr inbounds [8 x i8], ptr %.0128.us, i64 %i.cn ; 2 uses
  %i.dx = icmp ult ptr %i.dw, %i.ch
  %indvar.next181 = add i64 %indvar180, 1
  br i1 %i.dx, label %.preheader.us, label %.loopexit, !llvm.loop !357

bb.h:                                             ; preds = %bb.f
  %i.dy = add nsw i32 %spec.select117, -6         ; 3 uses
  %i.dz = shl nuw i32 1, %i.dy                    ; 4 uses
  %i.ea = add nsw i32 %spec.select, -6            ; 3 uses
  %i.eb = shl nuw i32 1, %i.ea                    ; 2 uses
  %.not = icmp eq i32 %i.ce, 31
  br i1 %.not, label %.loopexit, label %.preheader120.lr.ph

.preheader120.lr.ph:                              ; preds = %bb.h
  %.not130 = icmp eq i32 %i.ea, 31
  %i.ec = shl i32 2, %i.ea
  %i.ed = sext i32 %i.ec to i64                   ; 2 uses
  %.not131 = icmp eq i32 %i.dy, 31
  %or.cond = select i1 %.not130, i1 true, i1 %.not131
  br i1 %or.cond, label %.loopexit, label %.preheader120.us.us.preheader

.preheader120.us.us.preheader:                    ; preds = %.preheader120.lr.ph
  %i.ee = shl i32 2, %i.dy                        ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.dz, i32 1) ; 2 uses
  %i.ef = sext i32 %i.ee to i64                   ; 5 uses
  %i.eg = sext i32 %i.dz to i64                   ; 2 uses
  %i.eh = sext i32 %i.eb to i64                   ; 4 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 5 uses
  %smax173 = tail call i64 @llvm.smax.i64(i64 %i.ef, i64 %i.eh)
  %i.ei = icmp slt i32 %i.ee, %i.eb
  %umin = zext i1 %i.ei to i64                    ; 2 uses
  %i.ej = or disjoint i64 %umin, %i.ef
  %i.ek = sub i64 %smax173, %i.ej
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ef, i64 1)
  %i.el = udiv i64 %i.ek, %umax
  %i.em = add i64 %i.el, %umin
  %i.en = mul i64 %i.em, %i.ef                    ; 2 uses
  %i.eo = add i64 %i.en, %i.eg
  %i.ep = add i64 %i.eo, %wide.trip.count
  %i.eq = shl i64 %i.ep, 3
  %i.er = shl nsw i64 %i.ed, 3
  %i.es = add i64 %i.en, %i.eh
  %i.et = add i64 %i.es, %wide.trip.count
  %i.eu = shl i64 %i.et, 3
  %i.ev = getelementptr i8, ptr %0, i64 %i.eq
  %i.ew = getelementptr i8, ptr %0, i64 %i.eu
  %min.iters.check = icmp slt i32 %i.dz, 6
  %stride.check = icmp slt i32 %i.ee, 0
  %n.vec = and i64 %wide.trip.count, 2147483644
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ex = icmp slt i32 %i.dz, 2
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod228 = trunc i32 %smax to i1
  br label %.preheader120.us.us

.preheader120.us.us:                              ; preds = %.preheader120.us.us.preheader, %._crit_edge124.us.us
  %indvar = phi i64 [ 0, %.preheader120.us.us.preheader ], [ %indvar.next, %._crit_edge124.us.us ] ; 2 uses
  %.1125.us.us = phi ptr [ %0, %.preheader120.us.us.preheader ], [ %i.fs, %._crit_edge124.us.us ] ; 3 uses
  %i.ey = mul i64 %i.er, %indvar                  ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.1125.us.us, i64 %i.eg ; 2 uses
  %invariant.gep167 = getelementptr [8 x i8], ptr %.1125.us.us, i64 %i.eh ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ev, i64 %i.ey
  %scevgep174 = getelementptr i8, ptr %i.ew, i64 %i.ey
  %bound0 = icmp ult ptr %invariant.gep, %scevgep174
  %bound1 = icmp ult ptr %invariant.gep167, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.ez = or i1 %found.conflict, %stride.check
  br label %.preheader119.us.us

.preheader119.us.us:                              ; preds = %._crit_edge.us.us, %.preheader120.us.us
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %._crit_edge.us.us ], [ 0, %.preheader120.us.us ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv146 ; 4 uses
  %gep168 = getelementptr [8 x i8], ptr %invariant.gep167, i64 %indvars.iv146 ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.ez
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %.preheader119.us.us
  br i1 %i.ex, label %scalar.ph.epil.preheader, label %scalar.ph

vector.body:                                      ; preds = %.preheader119.us.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader119.us.us ] ; 3 uses
  %i.fa = getelementptr [8 x i8], ptr %gep, i64 %index ; 3 uses
  %i.fb = getelementptr i8, ptr %i.fa, i64 16     ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.fa, align 8, !tbaa !109, !alias.scope !367, !noalias !368
  %wide.load176 = load <2 x i64>, ptr %i.fb, align 8, !tbaa !109, !alias.scope !367, !noalias !368
  %i.fc = getelementptr [8 x i8], ptr %gep168, i64 %index ; 3 uses
  %i.fd = getelementptr i8, ptr %i.fc, i64 16     ; 2 uses
  %wide.load177 = load <2 x i64>, ptr %i.fc, align 8, !tbaa !109, !alias.scope !368
  %wide.load178 = load <2 x i64>, ptr %i.fd, align 8, !tbaa !109, !alias.scope !368
  store <2 x i64> %wide.load177, ptr %i.fa, align 8, !tbaa !109, !alias.scope !367, !noalias !368
  store <2 x i64> %wide.load178, ptr %i.fb, align 8, !tbaa !109, !alias.scope !367, !noalias !368
  store <2 x i64> %wide.load, ptr %i.fc, align 8, !tbaa !109, !alias.scope !368
  store <2 x i64> %wide.load176, ptr %i.fd, align 8, !tbaa !109, !alias.scope !368
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fe = icmp eq i64 %index.next, %n.vec
  br i1 %i.fe, label %._crit_edge.us.us, label %vector.body, !llvm.loop !361

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %i.ff = getelementptr [8 x i8], ptr %gep, i64 %indvars.iv ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !109
  %i.fh = getelementptr [8 x i8], ptr %gep168, i64 %indvars.iv ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !109
  store i64 %i.fi, ptr %i.ff, align 8, !tbaa !109
  store i64 %i.fg, ptr %i.fh, align 8, !tbaa !109
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.fj = getelementptr [8 x i8], ptr %gep, i64 %indvars.iv.next ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !109
  %i.fl = getelementptr [8 x i8], ptr %gep168, i64 %indvars.iv.next ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !109
  store i64 %i.fm, ptr %i.fj, align 8, !tbaa !109
  store i64 %i.fk, ptr %i.fl, align 8, !tbaa !109
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !362

._crit_edge.us.us.loopexit.unr-lcssa:             ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge.us.us, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge.us.us.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.us.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod228)
  %i.fn = getelementptr [8 x i8], ptr %gep, i64 %indvars.iv.epil.init ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !109
  %i.fp = getelementptr [8 x i8], ptr %gep168, i64 %indvars.iv.epil.init ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !109
  store i64 %i.fq, ptr %i.fn, align 8, !tbaa !109
  store i64 %i.fo, ptr %i.fp, align 8, !tbaa !109
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %vector.body, %scalar.ph.epil.preheader, %._crit_edge.us.us.loopexit.unr-lcssa
  %indvars.iv.next147 = add nsw i64 %indvars.iv146, %i.ef ; 2 uses
  %i.fr = icmp slt i64 %indvars.iv.next147, %i.eh
  br i1 %i.fr, label %.preheader119.us.us, label %._crit_edge124.us.us, !llvm.loop !363

._crit_edge124.us.us:                             ; preds = %._crit_edge.us.us
  %i.fs = getelementptr inbounds [8 x i8], ptr %.1125.us.us, i64 %i.ed ; 2 uses
  %i.ft = icmp ult ptr %i.fs, %i.ch
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ft, label %.preheader120.us.us, label %.loopexit, !llvm.loop !364

.loopexit:                                        ; preds = %._crit_edge124.us.us, %._crit_edge.us, %vector.body215, %scalar.ph203, %scalar.ph203.1, %scalar.ph203.2, %.preheader120.lr.ph, %.preheader.lr.ph, %bb.h, %bb.g, %bb.e, %bb.a, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #24

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #7

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #25

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #26

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #25

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #27

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @Gia_ManAppendObj(ptr nofree noundef captures(none) %0) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !58   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !369
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.f = shl nsw i32 %i.b, 1
  %i.g = tail call noundef i32 @llvm.smin.i32(i32 %i.f, i32 536870912) ; 6 uses
  %i.h = icmp eq i32 %i.b, 536870912
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.j = load i32, ptr %i.i, align 4, !tbaa !370
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.b, i32 noundef %i.g) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54   ; 2 uses
  %.not33 = icmp eq ptr %i.m, null
  %i.n = sext i32 %i.g to i64
  %i.o = mul nsw i64 %i.n, 12                     ; 2 uses
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @realloc(ptr noundef nonnull %i.m, i64 noundef %i.o) #35
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.o) #33
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %i.p, %bb.g ], [ %i.q, %bb.h ] ; 2 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !54
  %i.s = load i32, ptr %i.c, align 4, !tbaa !369  ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [12 x i8], ptr %i.r, i64 %i.t
  %i.v = sub nsw i32 %i.g, %i.s
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.w, 12
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.u, i8 0, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !81   ; 2 uses
  %.not34 = icmp eq ptr %i.z, null
  br i1 %.not34, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = sext i32 %i.g to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = tail call ptr @realloc(ptr noundef nonnull %i.z, i64 noundef %i.ab) #35 ; 2 uses
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !81
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !369 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = sub nsw i32 %i.g, %i.ad
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.af, i8 0, i64 %i.ai, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.g, ptr %i.c, align 4, !tbaa !369
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  %i.aj = getelementptr i8, ptr %0, i64 100
  %.val36 = load i32, ptr %i.aj, align 4, !tbaa !64
  %.not35 = icmp eq i32 %.val36, 0
  br i1 %.not35, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !64 ; 7 uses
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !117
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.n, label %Vec_IntPush.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = icmp slt i32 %i.am, 16
  br i1 %i.ap, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !56 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ar, null
  br i1 %.not9.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ar, i64 noundef 64) #35
  br label %Vec_IntGrow.exit.i

bb.q:                                             ; preds = %bb.o
  %i.at = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.q, %bb.p
  %i.au = phi ptr [ %i.as, %bb.p ], [ %i.at, %bb.q ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !56
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.n
  %i.av = icmp samesign ult i32 %i.am, 1073741823
  %i.aw = shl nuw nsw i32 %i.am, 1
  %spec.select.i = select i1 %i.av, i32 %i.aw, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.am, %spec.select.i
  br i1 %.not.i9.i, label %bb.s, label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !56 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ay, null
  %i.az = zext nneg i32 %spec.select.i to i64
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef %i.ba) #35
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.ba) #33
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bd = phi ptr [ %i.bb, %bb.t ], [ %i.bc, %bb.u ]
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !56
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.v, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.v ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ak, align 8, !tbaa !117
  %.pre = load i32, ptr %i.al, align 4, !tbaa !64
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.m, %bb.r, %Vec_IntGrow.exit11.sink.split.i
  %i.be = phi i32 [ %i.am, %bb.m ], [ %i.am, %bb.r ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !56
  %i.bh = add nsw i32 %i.be, 1
  store i32 %i.bh, ptr %i.al, align 4, !tbaa !64
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
  store i32 0, ptr %i.bj, align 4, !tbaa !57
  br label %bb.w

bb.w:                                             ; preds = %Vec_IntPush.exit, %bb.l
  %i.bk = load i32, ptr %i.a, align 8, !tbaa !58  ; 2 uses
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.a, align 8, !tbaa !58
  %i.bm = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.bm, align 8, !tbaa !54
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds [12 x i8], ptr %.val, i64 %i.bn
  ret ptr %i.bo
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #28

declare void @Gia_ObjAddFanout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @Gia_ManBuiltInSimPerform(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @Gia_ManQuantSetSuppAnd(ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @Kit_TruthToGia(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #29

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #31

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn }
attributes #26 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nofree nounwind }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #33 = { nounwind allocsize(0) }
attributes #34 = { nounwind }
attributes #35 = { nounwind allocsize(1) }
attributes #36 = { nounwind allocsize(0,1) }
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { cold noreturn nounwind }

end_hunk_0
begin_hunk_1_@llvm.umax.i64
!142 = !{!141, !35, i64 0}
!143 = !{!141, !35, i64 8}
!144 = !{!37, !35, i64 280}
!145 = !{!102, !19, i64 20}
!146 = !{!102, !41, i64 32}
!147 = !{!102, !41, i64 40}
!148 = !{!70, !33, i64 256}
!149 = !{!70, !33, i64 264}
!150 = !{!70, !19, i64 84}
!151 = !{!70, !19, i64 140}
!152 = !{!70, !19, i64 136}
!153 = !{!37, !19, i64 336}
!154 = !{!70, !19, i64 12}
!155 = !{!70, !19, i64 16}
!156 = !{!102, !19, i64 16}
!157 = !{!102, !19, i64 4}
!158 = distinct !{!158, !61}
!159 = distinct !{!159, !62}
!160 = distinct !{!160, !61}
!161 = distinct !{!161, !61}
!162 = distinct !{!162, !61}
!163 = distinct !{!163, !61, !65, !66}
!164 = distinct !{!164, !61, !66, !65}
!165 = distinct !{!165, !62}
!166 = distinct !{!166, !61}
!167 = distinct !{!167, !62}
!168 = distinct !{!168, !61}
!169 = distinct !{!169, !61}
!170 = distinct !{!170, !61}
!171 = distinct !{!171, !62}
!172 = distinct !{!172, !61}
!173 = distinct !{!173, !61}
!174 = distinct !{!174, !61}
!175 = distinct !{!175, !61}
!176 = distinct !{!176, !61, !65, !66}
!177 = distinct !{!177, !61, !66, !65}
!178 = distinct !{!178, !61}
!179 = distinct !{!179, !61}
!180 = distinct !{!180, !61}
!181 = distinct !{!181, !61, !65, !66}
!182 = distinct !{!182, !61, !66, !65}
!183 = distinct !{!183, !61}
!184 = distinct !{!184, !61}
!185 = distinct !{!185, !61}
!186 = distinct !{!186, !61, !65, !66}
!187 = distinct !{!187, !62}
!188 = distinct !{!188, !61, !65}
!189 = distinct !{!189, !61, !65, !66}
!190 = distinct !{!190, !62}
!191 = distinct !{!191, !61, !65}
!192 = distinct !{!192, !61, !65, !66}
!193 = distinct !{!193, !61, !66, !65}
!194 = distinct !{!194, !61, !65, !66}
!195 = distinct !{!195, !61, !66, !65}
!196 = distinct !{!196, !61, !65, !66}
!197 = distinct !{!197, !61, !65, !66}
!198 = distinct !{!198, !61, !66, !65}
!199 = distinct !{!199, !61, !66, !65}
!200 = distinct !{!200, !61, !65, !66}
!201 = distinct !{!201, !61, !65, !66}
!202 = distinct !{!202, !61, !66, !65}
!203 = distinct !{!203, !61, !66, !65}
!204 = distinct !{!204, !61, !65, !66}
!205 = distinct !{!205, !61, !66, !65}
!206 = distinct !{!206, !61}
!207 = distinct !{!207, !61}
!208 = distinct !{!208, !61}
!209 = !{}
!210 = distinct !{!210, !61, !65, !66}
!211 = distinct !{!211, !61, !66, !65}
!212 = distinct !{!212, !61}
!213 = distinct !{!213, !62}
!214 = distinct !{!214, !61}
!215 = distinct !{!215, !61}
!216 = distinct !{!216, !61}
!217 = distinct !{!217, !61, !65, !66}
!218 = distinct !{!218, !61, !66, !65}
!219 = distinct !{!219, !61, !65, !66}
!220 = distinct !{!220, !61, !66, !65}
!221 = distinct !{!221, !61, !65, !66}
!222 = distinct !{!222, !61, !66, !65}
!223 = distinct !{!223, !61, !65, !66}
!224 = distinct !{!224, !61, !66, !65}
!225 = distinct !{!225, !61, !65, !66}
!226 = distinct !{!226, !61, !66, !65}
!227 = distinct !{!227, !61, !65, !66}
!228 = distinct !{!228, !61, !66, !65}
!229 = distinct !{!229, !61, !65, !66}
!230 = distinct !{!230, !61}
!231 = distinct !{!231, !61, !65, !66}
!232 = distinct !{!232, !61, !66, !65}
!233 = distinct !{!233, !61, !65, !66}
!234 = distinct !{!234, !61}
!235 = distinct !{!235, !61}
!236 = distinct !{!236, !61}
!237 = distinct !{!237, !61}
!238 = distinct !{!238, !61}
!239 = distinct !{!239, !61, !65, !66}
!240 = distinct !{!240, !61}
!241 = distinct !{!241, !61, !66, !65}
!242 = !{!40, !40, i64 0}
!243 = distinct !{!243, !61}
!244 = distinct !{!244, !61}
!245 = distinct !{!245, !62}
!246 = distinct !{!246, !61}
!247 = distinct !{!247, !61, !65, !66}
!248 = distinct !{!248, !61, !66, !65}
!249 = distinct !{!249, !61}
!250 = distinct !{!250, !61}
!251 = distinct !{!251, !61}
!252 = distinct !{!252, !61}
!253 = distinct !{!253, !61}
!254 = distinct !{!254, !61, !65, !66}
!255 = distinct !{!255, !61, !66, !65}
!256 = distinct !{!256, !"vprintf"}
!257 = distinct !{!257, !256, !"vprintf: argument 0"}
!258 = distinct !{null}
!259 = !{!257}
!260 = distinct !{!260, !62}
!261 = distinct !{!261, !61}
!262 = distinct !{!262, !61, !65, !66}
!263 = distinct !{!263, !61, !66, !65}
!264 = distinct !{!264, !61}
!265 = distinct !{!265, !62}
!266 = distinct !{!266, !61}
!267 = distinct !{!267, !61}
!268 = distinct !{!268, !62}
!269 = distinct !{!269, !61}
!270 = distinct !{!270, !61}
!271 = distinct !{!271, !61}
!272 = distinct !{!272, !61}
!273 = distinct !{!273, !61}
!274 = !{!53, !19, i64 48}
!275 = !{!53, !19, i64 116}
!276 = !{!53, !19, i64 832}
!277 = !{!53, !50, i64 1008}
!278 = distinct !{!278, !61, !65, !66}
!279 = distinct !{!279, !61, !66, !65}
!280 = distinct !{!280, !61, !65, !66}
!281 = distinct !{!281, !61, !65}
!282 = distinct !{!282, !61, !65, !66}
!283 = distinct !{!283, !61, !65}
!284 = distinct !{!284, !61, !65, !66}
!285 = distinct !{!285, !61, !65}
!286 = distinct !{!286, !61, !65, !66}
!287 = distinct !{!287, !61, !65}
!288 = distinct !{!288, !62}
!289 = distinct !{!289, !61}
!290 = distinct !{!290, !61}
!291 = distinct !{!291, !61}
!292 = distinct !{!292, !61}
!293 = distinct !{!293, !61}
!294 = distinct !{!294, !61}
!295 = distinct !{!295, !61}
!296 = distinct !{!296, !61}
!297 = distinct !{!297, !61}
!298 = distinct !{!298, !61}
!299 = distinct !{!299, !61, !65, !66}
!300 = distinct !{!300, !61, !66, !65}
!301 = distinct !{!301, !61}
!302 = distinct !{!302, !61}
!303 = !{!53, !28, i64 144}
!304 = !{!32, !19, i64 8}
!305 = distinct !{!305, !61}
!306 = distinct !{!306, !61}
!307 = !{!37, !26, i64 40}
!308 = !{!37, !26, i64 80}
!309 = !{!37, !26, i64 112}
!310 = !{!37, !26, i64 152}
!311 = !{!37, !28, i64 56}
!312 = !{!37, !28, i64 176}
!313 = !{!37, !28, i64 192}
!314 = !{!37, !28, i64 208}
!315 = !{!37, !33, i64 224}
!316 = !{!37, !28, i64 240}
!317 = !{!37, !33, i64 256}
!318 = !{!37, !28, i64 272}
!319 = !{!70, !19, i64 36}
!320 = !{!70, !19, i64 92}
!321 = !{!70, !19, i64 116}
!322 = !{!70, !19, i64 128}
!323 = !{!70, !19, i64 144}
!324 = !{!70, !19, i64 148}
!325 = distinct !{!325, !61}
!326 = distinct !{!326, !61}
!327 = !{!37, !19, i64 92}
!328 = !{!37, !19, i64 352}
!329 = !{!37, !19, i64 332}
!330 = distinct !{!330, !61}
!331 = distinct !{!331, !61}
!332 = distinct !{!332, !61}
!333 = !{!26, !26, i64 0}
!334 = !{!31, !31, i64 0}
!335 = !{i64 0, i64 4, !57, i64 4, i64 4, !57, i64 8, i64 4, !57, i64 12, i64 4, !57, i64 16, i64 4, !57, i64 20, i64 4, !57, i64 24, i64 8, !333, i64 32, i64 8, !334}
!336 = distinct !{!336, !61}
!337 = distinct !{!337, !61}
!338 = distinct !{!338, !61}
!339 = distinct !{!339, !61}
!340 = !{!70, !19, i64 24}
!341 = distinct !{!341, !61}
!342 = distinct !{!342, !61, !65, !66}
!343 = distinct !{!343, !62}
!344 = distinct !{!344, !61, !65}
!345 = distinct !{!345, !61}
!346 = distinct !{!346, !61}
!347 = distinct !{!347, !61, !65, !66}
!348 = distinct !{!348, !62}
!349 = distinct !{!349, !61, !65}
!350 = distinct !{!350, !61}
!351 = distinct !{!351, !61, !65, !66}
!352 = distinct !{!352, !"LVerDomain"}
!353 = distinct !{!353, !352}
!354 = distinct !{!354, !352}
!355 = distinct !{!355, !61, !65, !66}
!356 = distinct !{!356, !61, !65}
!357 = distinct !{!357, !61}
!358 = distinct !{!358, !"LVerDomain"}
!359 = distinct !{!359, !358}
!360 = distinct !{!360, !358}
!361 = distinct !{!361, !61, !65, !66}
!362 = distinct !{!362, !61, !65}
!363 = distinct !{!363, !61}
!364 = distinct !{!364, !61}
!365 = !{!353}
!366 = !{!354}
!367 = !{!359}
!368 = !{!360}
!369 = !{!53, !19, i64 28}
!370 = !{!53, !19, i64 820}
end_hunk_1
