Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcSymm?download=true
inline.NumInlined: 78
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@Ntk_SymFunGenerate:bb.a
  %i.ek = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %.val) ; 0 uses
  %i.el = load ptr, ptr %i.y, align 8, !tbaa !117 ; 3 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %Vec_IntFreeP.exit.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge57
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !29 ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i39, label %bb.n, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.m
  call void @free(ptr noundef nonnull %i.eo) #18
  br label %bb.n

bb.n:                                             ; preds = %.thread.i.i, %bb.m
  call void @free(ptr noundef nonnull %i.el) #18
  br label %Vec_IntFreeP.exit.i

Vec_IntFreeP.exit.i:                              ; preds = %bb.n, %._crit_edge57
  %i.ep = load ptr, ptr %i.ad, align 8, !tbaa !117 ; 3 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %Vec_MemHashFree.exit, label %bb.o

bb.o:                                             ; preds = %Vec_IntFreeP.exit.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !29 ; 2 uses
  %.not.i3.i40 = icmp eq ptr %i.es, null
  br i1 %.not.i3.i40, label %bb.p, label %.thread.i4.i

.thread.i4.i:                                     ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.es) #18
  br label %bb.p

bb.p:                                             ; preds = %.thread.i4.i, %bb.o
  call void @free(ptr noundef nonnull %i.ep) #18
  br label %Vec_MemHashFree.exit

Vec_MemHashFree.exit:                             ; preds = %bb.p, %Vec_IntFreeP.exit.i
  %i.et = load i32, ptr %i.j, align 4, !tbaa !27  ; 2 uses
  %.not18.i.i = icmp slt i32 %i.et, 0
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.pre22.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !36 ; 3 uses
  br i1 %.not18.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i41.preheader

.lr.ph.i.i41.preheader:                           ; preds = %Vec_MemHashFree.exit
  %narrow = add nuw i32 %i.et, 1
  %i.eu = zext i32 %narrow to i64
  br label %.lr.ph.i.i41

.lr.ph.i.i41:                                     ; preds = %.lr.ph.i.i41.preheader, %bb.r
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.r ], [ 0, %.lr.ph.i.i41.preheader ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.pre22.i.i, i64 %indvars.iv.i.i ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !38 ; 2 uses
  %.not17.i.i = icmp eq ptr %i.ew, null
  br i1 %.not17.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i41
  call void @free(ptr noundef nonnull %i.ew) #18
  store ptr null, ptr %i.ev, align 8, !tbaa !38
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i.i41
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next.i.i, %i.eu
  br i1 %exitcond66.not, label %._crit_edge.thread.i.i, label %.lr.ph.i.i41, !llvm.loop !115

._crit_edge.i.i:                                  ; preds = %Vec_MemHashFree.exit
  %.not16.i.i = icmp eq ptr %.pre22.i.i, null
  br i1 %.not16.i.i, label %Vec_MemFreeP.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.r, %._crit_edge.i.i
  call void @free(ptr noundef nonnull %.pre22.i.i) #18
  br label %Vec_MemFreeP.exit

Vec_MemFreeP.exit:                                ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  call void @free(ptr noundef nonnull %i.g) #18
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %Vec_MemFreeP.exit
  call void @free(ptr noundef nonnull %i.b) #18
  br label %bb.t

bb.t:                                             ; preds = %Vec_MemFreeP.exit, %bb.s
  ret void
}

declare ptr @Extra_GreyCodeSchedule(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare void @Extra_PrintHex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @Vec_MemHashInsert(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4        ; 2 uses
  %.val15 = load i32, ptr %i.e, align 4, !tbaa !30 ; 2 uses
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
  br i1 %.not.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i, !llvm.loop !1

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.c
  %.01116.i.i = phi i32 [ %i.k, %bb.c ], [ 3, %.preheader.i.i ] ; 2 uses
  %i.m = urem i32 %i.i, %.01116.i.i
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.critedge.i.i.backedge, label %bb.c

Abc_PrimeCudd.exit.i:                             ; preds = %.preheader.i.i, %bb.c
  %i.o = load i32, ptr %i.d, align 8, !tbaa !28
  %.not.i.i.i = icmp slt i32 %i.o, %i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !29   ; 3 uses
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
  %i.t = tail call ptr @realloc(ptr noundef nonnull %i.q, i64 noundef %i.s) #19
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.s) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = phi ptr [ %i.t, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  store ptr %i.v, ptr %i.p, align 8, !tbaa !29
  store i32 %i.i, ptr %i.d, align 8, !tbaa !28
  br label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %bb.g, %Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i
  %.pre-phi42.i = phi i64 [ %.pre41.i, %Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i ], [ %i.s, %bb.g ]
  %i.w = phi ptr [ %i.q, %Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i ], [ %i.v, %bb.g ]
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 -1, i64 %.pre-phi42.i, i1 false), !tbaa !16
  store i32 %i.i, ptr %i.e, align 4, !tbaa !30
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 0, ptr %i.z, align 4, !tbaa !30
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1428.i = load i32, ptr %i.a, align 4, !tbaa !35
  %i.ab = icmp sgt i32 %.val1428.i, 0
  br i1 %i.ab, label %.lr.ph30.i, label %Vec_MemHashResize.exit

.lr.ph30.i:                                       ; preds = %.lr.ph.i15.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.h

bb.h:                                             ; preds = %Vec_IntPush.exit.i, %.lr.ph30.i
  %.029.i = phi i32 [ 0, %.lr.ph30.i ], [ %i.dz, %Vec_IntPush.exit.i ] ; 3 uses
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !36 ; 3 uses
  %i.af = load i32, ptr %i.ac, align 8, !tbaa !25 ; 3 uses
  %i.ag = lshr i32 %.029.i, %i.af
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !38 ; 2 uses
  %i.ak = load i32, ptr %0, align 8, !tbaa !24    ; 6 uses
  %i.al = load i32, ptr %i.ad, align 4, !tbaa !26 ; 3 uses
  %i.am = and i32 %i.al, %.029.i
  %i.an = mul nsw i32 %i.am, %i.ak
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ao ; 8 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %Vec_MemHashResize.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !31  ; 2 uses
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
  %vec.phi92 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %9, %vector.body ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %wide.load = load <4 x i32>, ptr %4, align 4, !tbaa !16
  %wide.load93 = load <4 x i32>, ptr %5, align 4, !tbaa !16
  %6 = mul <4 x i32> %wide.load, <i32 1699, i32 4177, i32 5147, i32 5647>
  %7 = mul <4 x i32> %wide.load93, <i32 6343, i32 7103, i32 7873, i32 8147>
  %8 = add <4 x i32> %6, %vec.phi                 ; 2 uses
  %9 = add <4 x i32> %7, %vec.phi92               ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %10 = icmp eq i64 %index.next, %n.vec
  br i1 %10, label %middle.block, label %vector.body, !llvm.loop !118

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
  %13 = load i32, ptr %12, align 4, !tbaa !16
  %14 = and i64 %indvars.iv.i.i.i.prol, 7
  %15 = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !16
  %17 = mul i32 %16, %13
  %18 = add i32 %17, %.012.i.i.i.prol             ; 3 uses
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter.a
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !119

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa125.unr = phi i32 [ poison, %.lr.ph.i.i.i.preheader ], [ %18, %.lr.ph.i.i.i.prol ]
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.012.i.i.i.unr = phi i32 [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %18, %.lr.ph.i.i.i.prol ]
  %19 = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %20 = icmp ugt i64 %19, -4
  br i1 %20, label %Vec_MemHashKey.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3.a, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %.012.i.i.i = phi i32 [ %i.bu, %.lr.ph.i.i.i ], [ %.012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i.i.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !16
  %i.av = and i64 %indvars.iv.i.i.i, 7
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !16
  %i.ay = mul i32 %i.ax, %i.au
  %i.az = add i32 %i.ay, %.012.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !16
  %i.bc = and i64 %indvars.iv.next.i.i.i, 7
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !16
  %i.bf = mul i32 %i.be, %i.bb
  %i.bg = add i32 %i.bf, %i.az
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i.i.1
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !16
  %i.bj = and i64 %indvars.iv.next.i.i.i.1, 7
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !16
  %i.bm = mul i32 %i.bl, %i.bi
  %i.bn = add i32 %i.bm, %i.bg
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i.i.2
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !16
  %i.bq = and i64 %indvars.iv.next.i.i.i.2, 7
  %i.br = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !16
  %i.bt = mul i32 %i.bs, %i.bp
  %i.bu = add i32 %i.bt, %i.bn                    ; 2 uses
  %indvars.iv.next.i.i.i.3.a = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3.a, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %Vec_MemHashKey.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !120

Vec_MemHashKey.exit.i.i:                          ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %bb.i
  %.0.lcssa.i.i.i = phi i32 [ 0, %bb.i ], [ %11, %middle.block ], [ %.lcssa125.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.bu, %.lr.ph.i.i.i ]
  %i.bv = getelementptr i8, ptr %i.aq, i64 4
  %.val.i.i.i = load i32, ptr %i.bv, align 4, !tbaa !30
  %i.bw = urem i32 %.0.lcssa.i.i.i, %.val.i.i.i
  %i.bx = getelementptr i8, ptr %i.aq, i64 8
  %.val16.i.i = load ptr, ptr %i.bx, align 8, !tbaa !29
  %i.by = sext i32 %i.bw to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %.val16.i.i, i64 %i.by ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !16 ; 4 uses
  %.not17.i.i = icmp eq i32 %i.ca, -1
  br i1 %.not17.i.i, label %Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i, label %.lr.ph.i16.i

Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i: ; preds = %Vec_MemHashKey.exit.i.i
  %.pre37.i = load ptr, ptr %i.x, align 8, !tbaa !32
  br label %Vec_MemHashLookup.exit.i

.lr.ph.i16.i:                                     ; preds = %Vec_MemHashKey.exit.i.i
  %i.cb = sext i32 %i.ak to i64
  %i.cc = shl nsw i64 %i.cb, 3                    ; 2 uses
  %i.cd = ashr i32 %i.ca, %i.af
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !38
  %i.ch = and i32 %i.ca, %i.al
  %i.ci = mul nsw i32 %i.ch, %i.ak
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.cj
  %bcmp.i24.i = tail call i32 @bcmp(ptr %i.ck, ptr nonnull readonly %i.ap, i64 %i.cc)
  %.not15.i1725.i = icmp eq i32 %bcmp.i24.i, 0
  %.pre38.i = load ptr, ptr %i.x, align 8, !tbaa !32 ; 4 uses
  br i1 %.not15.i1725.i, label %Vec_MemHashLookup.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i16.i
  %i.cl = getelementptr i8, ptr %.pre38.i, i64 8
  %.val.i.i = load ptr, ptr %i.cl, align 8, !tbaa !29 ; 3 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.cm = ashr i32 %i.cx, %i.af
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !38
  %i.cq = and i32 %i.cx, %i.al
  %i.cr = mul nsw i32 %i.cq, %i.ak
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cs
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.ct, ptr nonnull readonly %i.ap, i64 %i.cc)
  %.not15.i17.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not15.i17.i, label %Vec_MemHashLookup.exit.i.loopexit, label %bb.k, !llvm.loop !121

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %i.cu = phi i32 [ %i.ca, %.lr.ph.i ], [ %i.cx, %bb.j ]
  %i.cv = sext i32 %i.cu to i64                   ; 3 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !16 ; 4 uses
  %.not.i18.i = icmp eq i32 %i.cx, -1
  br i1 %.not.i18.i, label %.Vec_MemHashLookup.exit.loopexit_crit_edge.i, label %bb.j, !llvm.loop !121

.Vec_MemHashLookup.exit.loopexit_crit_edge.i:     ; preds = %bb.k
  %i.cy = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.cv
  br label %Vec_MemHashLookup.exit.i, !llvm.loop !121

Vec_MemHashLookup.exit.i.loopexit:                ; preds = %bb.j
  %i.cz = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.cv
  br label %Vec_MemHashLookup.exit.i

Vec_MemHashLookup.exit.i:                         ; preds = %Vec_MemHashLookup.exit.i.loopexit, %.Vec_MemHashLookup.exit.loopexit_crit_edge.i, %.lr.ph.i16.i, %Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i
  %i.da = phi ptr [ %.pre37.i, %Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i ], [ %.pre38.i, %.lr.ph.i16.i ], [ %.pre38.i, %.Vec_MemHashLookup.exit.loopexit_crit_edge.i ], [ %.pre38.i, %Vec_MemHashLookup.exit.i.loopexit ] ; 6 uses
  %.0.lcssa.i.i = phi ptr [ %i.bz, %Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i ], [ %i.bz, %.lr.ph.i16.i ], [ %i.cy, %.Vec_MemHashLookup.exit.loopexit_crit_edge.i ], [ %i.cz, %Vec_MemHashLookup.exit.i.loopexit ]
  %i.db = getelementptr i8, ptr %i.da, i64 4      ; 3 uses
  %.val.i = load i32, ptr %i.db, align 4, !tbaa !30 ; 8 uses
  store i32 %.val.i, ptr %.0.lcssa.i.i, align 4, !tbaa !16
  %i.dc = load i32, ptr %i.da, align 8, !tbaa !28
  %i.dd = icmp eq i32 %.val.i, %i.dc
  br i1 %i.dd, label %bb.l, label %Vec_IntPush.exit.i

bb.l:                                             ; preds = %Vec_MemHashLookup.exit.i
  %i.de = icmp slt i32 %.val.i, 16
  br i1 %i.de, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !29 ; 2 uses
  %.not9.i.i19.i = icmp eq ptr %i.dg, null
  br i1 %.not9.i.i19.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dh = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.dg, i64 noundef 64) #19
  br label %Vec_IntGrow.exit.i20.i

bb.o:                                             ; preds = %bb.m
  %i.di = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #20
  br label %Vec_IntGrow.exit.i20.i

Vec_IntGrow.exit.i20.i:                           ; preds = %bb.o, %bb.n
  %i.dj = phi ptr [ %i.dh, %bb.n ], [ %i.di, %bb.o ]
  store ptr %i.dj, ptr %i.df, align 8, !tbaa !29
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.p:                                             ; preds = %bb.l
  %i.dk = icmp samesign ult i32 %.val.i, 1073741823
  %i.dl = shl nuw nsw i32 %.val.i, 1
  %spec.select.i.i = select i1 %i.dk, i32 %i.dl, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %.val.i, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.q, label %Vec_IntPush.exit.i

bb.q:                                             ; preds = %bb.p
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !29 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.dn, null
  %i.do = zext nneg i32 %spec.select.i.i to i64
  %i.dp = shl nuw nsw i64 %i.do, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dq = tail call ptr @realloc(ptr noundef nonnull %i.dn, i64 noundef %i.dp) #19
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.dr = tail call noalias ptr @malloc(i64 noundef %i.dp) #20
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ds = phi ptr [ %i.dq, %bb.r ], [ %i.dr, %bb.s ]
  store ptr %i.ds, ptr %i.dm, align 8, !tbaa !29
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.t, %Vec_IntGrow.exit.i20.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.t ], [ 16, %Vec_IntGrow.exit.i20.i ]
  store i32 %spec.select.sink.i.i, ptr %i.da, align 8, !tbaa !28
  %.pre39.i = load i32, ptr %i.db, align 4, !tbaa !30
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.p, %Vec_MemHashLookup.exit.i
  %i.dt = phi i32 [ %.val.i, %Vec_MemHashLookup.exit.i ], [ %.val.i, %bb.p ], [ %.pre39.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !29
  %i.dw = add nsw i32 %i.dt, 1
  store i32 %i.dw, ptr %i.db, align 4, !tbaa !30
  %i.dx = sext i32 %i.dt to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.dx
  store i32 -1, ptr %i.dy, align 4, !tbaa !16
  %i.dz = add nuw nsw i32 %.029.i, 1              ; 2 uses
  %.val14.i = load i32, ptr %i.a, align 4, !tbaa !35
  %i.ea = icmp slt i32 %i.dz, %.val14.i
  br i1 %i.ea, label %bb.h, label %Vec_MemHashResize.exit, !llvm.loop !122

Vec_MemHashResize.exit:                           ; preds = %Vec_IntPush.exit.i, %bb.h, %.lr.ph.i15.i, %bb.a
  %i.eb = load ptr, ptr %i.c, align 8, !tbaa !31  ; 2 uses
  %i.ec = load i32, ptr %0, align 8, !tbaa !24    ; 5 uses
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %.lr.ph.preheader.i.i, label %Vec_MemHashKey.exit.i

.lr.ph.preheader.i.i:                             ; preds = %Vec_MemHashResize.exit
  %i.ee = shl nuw i32 %i.ec, 1                    ; 2 uses
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.ee, i32 1) ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64 ; 5 uses
  %min.iters.check98 = icmp slt i32 %i.ee, 8
  %21 = add nsw i32 %smax.i.i, -9
  %22 = icmp ult i32 %21, -8
  %or.cond117 = select i1 %min.iters.check98, i1 true, i1 %22
  br i1 %or.cond117, label %.lr.ph.i.i21.preheader, label %vector.ph99

vector.ph99:                                      ; preds = %.lr.ph.preheader.i.i
  %n.vec100 = and i64 %wide.trip.count.i.i, 8     ; 3 uses
  br label %vector.body101

vector.body101:                                   ; preds = %vector.body101, %vector.ph99
  %index102 = phi i64 [ 0, %vector.ph99 ], [ %index.next109, %vector.body101 ] ; 2 uses
  %vec.phi103 = phi <4 x i32> [ zeroinitializer, %vector.ph99 ], [ %27, %vector.body101 ]
  %vec.phi104 = phi <4 x i32> [ zeroinitializer, %vector.ph99 ], [ %28, %vector.body101 ]
  %23 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index102 ; 2 uses
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 16
  %wide.load105 = load <4 x i32>, ptr %23, align 4, !tbaa !16
  %wide.load106 = load <4 x i32>, ptr %24, align 4, !tbaa !16
  %25 = mul <4 x i32> %wide.load105, <i32 1699, i32 4177, i32 5147, i32 5647>
  %26 = mul <4 x i32> %wide.load106, <i32 6343, i32 7103, i32 7873, i32 8147>
  %27 = add <4 x i32> %25, %vec.phi103            ; 2 uses
  %28 = add <4 x i32> %26, %vec.phi104            ; 2 uses
  %index.next109 = add nuw i64 %index102, 8       ; 2 uses
  %29 = icmp eq i64 %index.next109, %n.vec100
  br i1 %29, label %middle.block110, label %vector.body101, !llvm.loop !123

middle.block110:                                  ; preds = %vector.body101
  %bin.rdx111 = add <4 x i32> %28, %27
  %30 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx111) ; 2 uses
  %cmp.n112 = icmp eq i64 %n.vec100, %wide.trip.count.i.i
  br i1 %cmp.n112, label %Vec_MemHashKey.exit.i, label %.lr.ph.i.i21.preheader

.lr.ph.i.i21.preheader:                           ; preds = %.lr.ph.preheader.i.i, %middle.block110
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec100, %middle.block110 ] ; 3 uses
  %.012.i.i22.ph = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %30, %middle.block110 ] ; 2 uses
  %xtraiter131 = and i64 %wide.trip.count.i.i, 3  ; 2 uses
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %.lr.ph.i.i21.prol.loopexit, label %.lr.ph.i.i21.prol

.lr.ph.i.i21.prol:                                ; preds = %.lr.ph.i.i21.preheader, %.lr.ph.i.i21.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i21.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i21.preheader ] ; 3 uses
  %.012.i.i22.prol = phi i32 [ %37, %.lr.ph.i.i21.prol ], [ %.012.i.i22.ph, %.lr.ph.i.i21.preheader ]
  %prol.iter133 = phi i64 [ %prol.iter133.next, %.lr.ph.i.i21.prol ], [ 0, %.lr.ph.i.i21.preheader ]
  %31 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.i.prol
  %32 = load i32, ptr %31, align 4, !tbaa !16
  %33 = and i64 %indvars.iv.i.i.prol, 7
  %34 = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !16
  %36 = mul i32 %35, %32
  %37 = add i32 %36, %.012.i.i22.prol             ; 3 uses
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter133.next = add i64 %prol.iter133, 1   ; 2 uses
  %prol.iter133.cmp.not = icmp eq i64 %prol.iter133.next, %xtraiter131
  br i1 %prol.iter133.cmp.not, label %.lr.ph.i.i21.prol.loopexit, label %.lr.ph.i.i21.prol, !llvm.loop !124

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
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !16
  %i.eh = and i64 %indvars.iv.i.i, 7
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !16
  %i.ek = mul i32 %i.ej, %i.eg
  %i.el = add i32 %i.ek, %.012.i.i22
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.i
  %i.en = load i32, ptr %i.em, align 4, !tbaa !16
  %i.eo = and i64 %indvars.iv.next.i.i, 7
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !16
  %i.er = mul i32 %i.eq, %i.en
  %i.es = add i32 %i.er, %i.el
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.i.1
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !16
  %i.ev = and i64 %indvars.iv.next.i.i.1, 7
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !16
  %i.ey = mul i32 %i.ex, %i.eu
  %i.ez = add i32 %i.ey, %i.es
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.i.2
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !16
  %i.fc = and i64 %indvars.iv.next.i.i.2, 7
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !16
  %i.ff = mul i32 %i.fe, %i.fb
  %i.fg = add i32 %i.ff, %i.ez                    ; 2 uses
  %indvars.iv.next.i.i.3.a = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3.a, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %Vec_MemHashKey.exit.i, label %.lr.ph.i.i21, !llvm.loop !125

Vec_MemHashKey.exit.i:                            ; preds = %.lr.ph.i.i21.prol.loopexit, %.lr.ph.i.i21, %middle.block110, %Vec_MemHashResize.exit
  %.0.lcssa.i.i16 = phi i32 [ 0, %Vec_MemHashResize.exit ], [ %30, %middle.block110 ], [ %.lcssa.unr, %.lr.ph.i.i21.prol.loopexit ], [ %i.fg, %.lr.ph.i.i21 ]
  %i.fh = getelementptr i8, ptr %i.eb, i64 4
  %.val.i.i17 = load i32, ptr %i.fh, align 4, !tbaa !30
  %i.fi = urem i32 %.0.lcssa.i.i16, %.val.i.i17
  %i.fj = getelementptr i8, ptr %i.eb, i64 8
  %.val16.i = load ptr, ptr %i.fj, align 8, !tbaa !29
  %i.fk = sext i32 %i.fi to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %.val16.i, i64 %i.fk ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !16 ; 5 uses
  %.not17.i = icmp eq i32 %i.fm, -1
  br i1 %.not17.i, label %Vec_MemHashLookup.exit.thread, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %Vec_MemHashKey.exit.i
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !36 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !25 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !26 ; 2 uses
  %i.ft = sext i32 %i.ec to i64
  %i.fu = shl nsw i64 %i.ft, 3                    ; 2 uses
  %i.fv = ashr i32 %i.fm, %i.fq
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.fw
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !38
  %i.fz = and i32 %i.fm, %i.fs
  %i.ga = mul nsw i32 %i.fz, %i.ec
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %i.gb
  %bcmp.i41 = tail call i32 @bcmp(ptr %i.gc, ptr readonly %1, i64 %i.fu)
  %.not15.i42 = icmp eq i32 %bcmp.i41, 0
  br i1 %.not15.i42, label %Vec_MemHashLookup.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i18
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !32
  %i.gf = getelementptr i8, ptr %i.ge, i64 8
  %.val.i19 = load ptr, ptr %i.gf, align 8, !tbaa !29 ; 2 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.v
  %i.gg = ashr i32 %i.gr, %i.fq
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.gh
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !38
  %i.gk = and i32 %i.gr, %i.fs
  %i.gl = mul nsw i32 %i.gk, %i.ec
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gj, i64 %i.gm
  %bcmp.i = tail call i32 @bcmp(ptr %i.gn, ptr readonly %1, i64 %i.fu)
  %.not15.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not15.i, label %Vec_MemHashLookup.exit, label %bb.v, !llvm.loop !121

bb.v:                                             ; preds = %.lr.ph, %bb.u
  %i.go = phi i32 [ %i.fm, %.lr.ph ], [ %i.gr, %bb.u ]
  %i.gp = sext i32 %i.go to i64                   ; 2 uses
  %i.gq = getelementptr inbounds [4 x i8], ptr %.val.i19, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !16 ; 5 uses
  %.not.i20 = icmp eq i32 %i.gr, -1
  br i1 %.not.i20, label %Vec_MemHashLookup.exit.thread.loopexit, label %bb.u, !llvm.loop !121

Vec_MemHashLookup.exit.thread.loopexit:           ; preds = %bb.v
  %i.gs = getelementptr inbounds [4 x i8], ptr %.val.i19, i64 %i.gp
  br label %Vec_MemHashLookup.exit.thread

Vec_MemHashLookup.exit.thread:                    ; preds = %Vec_MemHashLookup.exit.thread.loopexit, %Vec_MemHashKey.exit.i
  %.0.lcssa.i30 = phi ptr [ %i.fl, %Vec_MemHashKey.exit.i ], [ %i.gs, %Vec_MemHashLookup.exit.thread.loopexit ]
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !32 ; 6 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 4      ; 3 uses
  %.val14 = load i32, ptr %i.gv, align 4, !tbaa !30 ; 8 uses
  store i32 %.val14, ptr %.0.lcssa.i30, align 4, !tbaa !16
  %i.gw = load i32, ptr %i.gu, align 8, !tbaa !28
  %i.gx = icmp eq i32 %.val14, %i.gw
  br i1 %i.gx, label %bb.w, label %Vec_IntPush.exit

bb.w:                                             ; preds = %Vec_MemHashLookup.exit.thread
  %i.gy = icmp slt i32 %.val14, 16
  br i1 %i.gy, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !29 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ha, null
  br i1 %.not9.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hb = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ha, i64 noundef 64) #19
  br label %Vec_IntGrow.exit.i

bb.z:                                             ; preds = %bb.x
  %i.hc = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #20
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.z, %bb.y
  %i.hd = phi ptr [ %i.hb, %bb.y ], [ %i.hc, %bb.z ]
  store ptr %i.hd, ptr %i.gz, align 8, !tbaa !29
  br label %Vec_IntGrow.exit11.sink.split.i

bb.aa:                                            ; preds = %bb.w
  %i.he = icmp samesign ult i32 %.val14, 1073741823
  %i.hf = shl nuw nsw i32 %.val14, 1
  %spec.select.i = select i1 %i.he, i32 %i.hf, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %.val14, %spec.select.i
  br i1 %.not.i9.i, label %bb.ab, label %Vec_IntPush.exit

bb.ab:                                            ; preds = %bb.aa
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !29 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.hh, null
  %i.hi = zext nneg i32 %spec.select.i to i64
  %i.hj = shl nuw nsw i64 %i.hi, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hk = tail call ptr @realloc(ptr noundef nonnull %i.hh, i64 noundef %i.hj) #19
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.hl = tail call noalias ptr @malloc(i64 noundef %i.hj) #20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.hm = phi ptr [ %i.hk, %bb.ac ], [ %i.hl, %bb.ad ]
  store ptr %i.hm, ptr %i.hg, align 8, !tbaa !29
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.ae, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.ae ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.gu, align 8, !tbaa !28
  %.pre = load i32, ptr %i.gv, align 4, !tbaa !30
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_MemHashLookup.exit.thread, %bb.aa, %Vec_IntGrow.exit11.sink.split.i
  %i.hn = phi i32 [ %.val14, %Vec_MemHashLookup.exit.thread ], [ %.val14, %bb.aa ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !29
  %i.hq = add nsw i32 %i.hn, 1
  store i32 %i.hq, ptr %i.gv, align 4, !tbaa !30
  %i.hr = sext i32 %i.hn to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.hr
  store i32 -1, ptr %i.hs, align 4, !tbaa !16
  %i.ht = load i32, ptr %i.a, align 4, !tbaa !35  ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !25 ; 3 uses
  %i.hw = ashr i32 %i.ht, %i.hv                   ; 7 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !27 ; 3 uses
  %i.hz = icmp slt i32 %i.hy, %i.hw
  br i1 %i.hz, label %bb.af, label %Vec_MemPush.exit

bb.af:                                            ; preds = %Vec_IntPush.exit
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !128 ; 3 uses
  %.not36.i.i = icmp slt i32 %i.hw, %i.ib
  br i1 %.not36.i.i, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !36 ; 2 uses
  %.not37.i.i = icmp eq ptr %i.id, null
  %.not38.i.i = icmp eq i32 %i.ib, 0
  %i.ie = shl nsw i32 %i.ib, 1
  %i.if = add nsw i32 %i.hw, 32
  %i.ig = select i1 %.not38.i.i, i32 %i.if, i32 %i.ie ; 2 uses
  store i32 %i.ig, ptr %i.ia, align 8, !tbaa !128
  %i.ih = sext i32 %i.ig to i64
  %i.ii = shl nsw i64 %i.ih, 3                    ; 2 uses
  br i1 %.not37.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ij = tail call ptr @realloc(ptr noundef nonnull %i.id, i64 noundef %i.ii) #19
  %.pre.pre.i.i = load i32, ptr %i.hx, align 4, !tbaa !27
  %.pre.pre.pre.pre.i = load i32, ptr %i.hu, align 8, !tbaa !25
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.ik = tail call noalias ptr @malloc(i64 noundef %i.ii) #20
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pre.pre.pre.i = phi i32 [ %.pre.pre.pre.pre.i, %bb.ah ], [ %i.hv, %bb.ai ]
  %.pre.i.i = phi i32 [ %.pre.pre.i.i, %bb.ah ], [ %i.hy, %bb.ai ]
  %i.il = phi ptr [ %i.ij, %bb.ah ], [ %i.ik, %bb.ai ]
  store ptr %i.il, ptr %i.ic, align 8, !tbaa !36
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.af
  %.pre.pre.i = phi i32 [ %.pre.pre.pre.i, %bb.aj ], [ %i.hv, %bb.af ] ; 2 uses
  %i.im = phi i32 [ %.pre.i.i, %bb.aj ], [ %i.hy, %bb.af ] ; 2 uses
  %.not40.not41.i.i = icmp slt i32 %i.im, %i.hw
  br i1 %.not40.not41.i.i, label %.lr.ph.i.i23, label %._crit_edge.i.i

.lr.ph.i.i23:                                     ; preds = %bb.ak
  %i.in = load i32, ptr %0, align 8, !tbaa !24
  %i.io = shl i32 %i.in, %.pre.pre.i
  %i.ip = sext i32 %i.io to i64
  %i.iq = shl nsw i64 %i.ip, 3
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !36
  %i.it = sext i32 %i.im to i64
  %wide.trip.count.i.i24 = sext i32 %i.hw to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph.i.i23
  %indvars.iv.i.i25 = phi i64 [ %i.it, %.lr.ph.i.i23 ], [ %indvars.iv.next.i.i26, %bb.al ]
  %indvars.iv.next.i.i26 = add nsw i64 %indvars.iv.i.i25, 1 ; 3 uses
  %i.iu = tail call noalias ptr @malloc(i64 noundef %i.iq) #20
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.is, i64 %indvars.iv.next.i.i26
  store ptr %i.iu, ptr %i.iv, align 8, !tbaa !38
  %exitcond.not.i.i27 = icmp eq i64 %indvars.iv.next.i.i26, %wide.trip.count.i.i24
  br i1 %exitcond.not.i.i27, label %._crit_edge.i.i, label %bb.al, !llvm.loop !126

._crit_edge.i.i:                                  ; preds = %bb.al, %bb.ak
  store i32 %i.hw, ptr %i.hx, align 4, !tbaa !27
  %.pre.i = ashr i32 %i.ht, %.pre.pre.i
  br label %Vec_MemPush.exit

Vec_MemPush.exit:                                 ; preds = %Vec_IntPush.exit, %._crit_edge.i.i
  %.pre-phi.i = phi i32 [ %i.hw, %Vec_IntPush.exit ], [ %.pre.i, %._crit_edge.i.i ]
  %i.iw = add nsw i32 %i.ht, 1
  store i32 %i.iw, ptr %i.a, align 4, !tbaa !35
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !36
  %i.iz = sext i32 %.pre-phi.i to i64
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.iy, i64 %i.iz
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !38
  %i.jc = load i32, ptr %0, align 8, !tbaa !24    ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !26
  %i.jf = and i32 %i.je, %i.ht
  %i.jg = mul nsw i32 %i.jf, %i.jc
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.jb, i64 %i.jh
  %i.jj = sext i32 %i.jc to i64
  %i.jk = shl nsw i64 %i.jj, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ji, ptr readonly align 8 %1, i64 %i.jk, i1 false)
  %i.jl = load ptr, ptr %i.gt, align 8, !tbaa !32
  %i.jm = getelementptr i8, ptr %i.jl, i64 4
  %.val = load i32, ptr %i.jm, align 4, !tbaa !30
  %i.jn = add nsw i32 %.val, -1
  br label %Vec_MemHashLookup.exit

Vec_MemHashLookup.exit:                           ; preds = %bb.u, %.lr.ph.i18, %Vec_MemPush.exit
  %.0 = phi i32 [ %i.jn, %Vec_MemPush.exit ], [ %i.fm, %.lr.ph.i18 ], [ %i.gr, %bb.u ]
  ret i32 %.0
}

declare i32 @Sim_ComputeTwoVarSymms(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @Abc_NtkBuildGlobalBdds(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i32 @Abc_NtkSizeOfGlobalBdds(ptr noundef) local_unnamed_addr #5

declare void @Cudd_AutodynDisable(ptr noundef) local_unnamed_addr #5

declare i32 @Cudd_zddVarsFromBddVars(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @Abc_NtkFreeGlobalBdds(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #8 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !16
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #18 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #18
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #18 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !34
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #22
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #18 ; 0 uses
  call void @free(ptr noundef %i.d) #18
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !34, !noalias !132
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #18, !inline_history !131 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #9

declare i32 @Cudd_SupportSize(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @Extra_SymmPairsComputeNaive(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @Extra_SymmPairsCompute(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @Abc_ObjName(ptr noundef) local_unnamed_addr #5

declare void @Extra_SymmPairsDissolve(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

declare ptr @Abc_NtkCollectCioNames(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #5

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #12

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #12

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(1) }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind allocsize(0,1) }
attributes #22 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !18}
!1 = distinct !{!1, !18}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"Vec_Int_t_", !7, i64 0, !7, i64 4, !12, i64 8}
!14 = !{!"p1 _ZTS10Vec_Int_t_", !11, i64 0}
!15 = !{!"any p2 pointer", !11, i64 0}
!16 = !{!7, !7, i64 0}
!17 = !{!6, !6, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!10, !10, i64 0}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{!"p2 long", !15, i64 0}
!23 = !{!"Vec_Mem_t_", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !22, i64 24, !14, i64 32, !14, i64 40}
!24 = !{!23, !7, i64 0}
!25 = !{!23, !7, i64 8}
!26 = !{!23, !7, i64 12}
!27 = !{!23, !7, i64 20}
!28 = !{!13, !7, i64 0}
!29 = !{!13, !12, i64 8}
!30 = !{!13, !7, i64 4}
!31 = !{!23, !14, i64 32}
!32 = !{!23, !14, i64 40}
!33 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!23, !7, i64 4}
!36 = !{!23, !22, i64 24}
!37 = !{!"p1 long", !11, i64 0}
!38 = !{!37, !37, i64 0}
!39 = distinct !{null, null, null, null}
!40 = distinct !{!40, !18}
!41 = distinct !{!41, !18}
!42 = distinct !{!42, !18}
!43 = !{!"timespec", !10, i64 0, !10, i64 8}
!44 = !{!43, !10, i64 0}
!45 = !{!43, !10, i64 8}
!46 = !{!"p1 omnipotent char", !11, i64 0}
!47 = !{!"p1 _ZTS9Nm_Man_t_", !11, i64 0}
!48 = !{!"p1 _ZTS10Vec_Ptr_t_", !11, i64 0}
!49 = !{!"p1 _ZTS10Abc_Ntk_t_", !11, i64 0}
!50 = !{!"p1 _ZTS10Abc_Des_t_", !11, i64 0}
!51 = !{!"double", !6, i64 0}
!52 = !{!"p1 _ZTS12Mem_Fixed_t_", !11, i64 0}
!53 = !{!"p1 _ZTS11Mem_Step_t_", !11, i64 0}
!54 = !{!"p1 _ZTS14Abc_ManTime_t_", !11, i64 0}
!55 = !{!"float", !6, i64 0}
!56 = !{!"p1 _ZTS10Abc_Cex_t_", !11, i64 0}
!57 = !{!"p1 float", !11, i64 0}
!58 = !{!"Abc_Ntk_t_", !7, i64 0, !7, i64 4, !46, i64 8, !46, i64 16, !47, i64 24, !48, i64 32, !48, i64 40, !48, i64 48, !48, i64 56, !48, i64 64, !48, i64 72, !48, i64 80, !48, i64 88, !6, i64 96, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !49, i64 160, !7, i64 168, !50, i64 176, !49, i64 184, !7, i64 192, !7, i64 196, !7, i64 200, !51, i64 208, !7, i64 216, !13, i64 224, !52, i64 240, !53, i64 248, !11, i64 256, !54, i64 264, !11, i64 272, !55, i64 280, !7, i64 284, !14, i64 288, !48, i64 296, !12, i64 304, !56, i64 312, !48, i64 320, !49, i64 328, !11, i64 336, !11, i64 344, !49, i64 352, !11, i64 360, !11, i64 368, !14, i64 376, !14, i64 384, !46, i64 392, !57, i64 400, !48, i64 408, !14, i64 416, !14, i64 424, !48, i64 432, !14, i64 440, !14, i64 448, !14, i64 456}
!59 = !{!58, !48, i64 64}
!60 = !{!"Vec_Ptr_t_", !7, i64 0, !7, i64 4, !15, i64 8}
!61 = !{!60, !7, i64 4}
!62 = !{!60, !15, i64 8}
!63 = !{!11, !11, i64 0}
!64 = !{!"p1 _ZTS10Abc_Obj_t_", !11, i64 0}
!65 = !{!"Abc_Obj_t_", !49, i64 0, !64, i64 8, !7, i64 16, !7, i64 20, !7, i64 20, !7, i64 20, !7, i64 20, !7, i64 20, !7, i64 21, !7, i64 21, !7, i64 21, !7, i64 21, !7, i64 21, !13, i64 24, !13, i64 40, !11, i64 56, !6, i64 64, !6, i64 72}
!66 = !{!65, !49, i64 0}
!67 = !{!65, !7, i64 16}
!68 = !{!58, !48, i64 432}
!69 = !{!"Vec_Att_t_", !7, i64 0, !15, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!70 = !{!69, !7, i64 0}
!71 = !{!69, !15, i64 8}
!72 = !{!69, !11, i64 32}
!73 = !{!69, !11, i64 16}
!74 = !{!"p1 _ZTS6DdNode", !11, i64 0}
!75 = !{!"DdNode", !7, i64 0, !7, i64 4, !74, i64 8, !6, i64 16, !10, i64 32}
!76 = !{!75, !7, i64 0}
!77 = !{!"p2 omnipotent char", !15, i64 0}
!78 = !{!"Extra_SymmInfo_t_", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !12, i64 16, !77, i64 24}
!79 = !{!78, !7, i64 8}
!80 = !{!58, !48, i64 56}
!81 = !{!78, !7, i64 0}
!82 = !{!78, !77, i64 24}
!83 = !{!46, !46, i64 0}
!84 = !{!78, !12, i64 16}
!85 = distinct !{!85, !"LVerDomain"}
!86 = distinct !{!86, !85}
!87 = distinct !{!87, !85}
!88 = distinct !{!88, !18, !20, !21}
!89 = distinct !{!89, !18, !20}
!90 = distinct !{!90, !18, !20, !21}
!91 = distinct !{!91, !18}
!92 = !{!86}
!93 = !{!87}
!94 = distinct !{!94, !18, !20, !21}
!95 = distinct !{!95, !18}
!96 = distinct !{!96, !18, !20, !21}
!97 = distinct !{!97, !18, !21, !20}
!98 = distinct !{!98, !"LVerDomain"}
!99 = distinct !{!99, !98}
!100 = distinct !{!100, !98}
!101 = distinct !{!101, !18, !20, !21}
!102 = distinct !{!102, !18, !20}
!103 = distinct !{!103, !18, !20, !21}
!104 = distinct !{!104, !18, !21, !20}
!105 = distinct !{!105, !18}
!106 = !{!99}
!107 = !{!100}
!108 = distinct !{!108, !18, !20, !21}
!109 = distinct !{!109, !18, !20, !21}
!110 = distinct !{!110, !18, !21, !20}
!111 = distinct !{!111, !18, !20, !21}
!112 = distinct !{!112, !18, !21, !20}
!113 = distinct !{!113, !18}
!114 = distinct !{!114, !18}
!115 = distinct !{!115, !18}
!116 = !{!"branch_weights", i32 8, i32 8}
!117 = !{!14, !14, i64 0}
!118 = distinct !{!118, !18, !20, !21}
!119 = distinct !{!119, !127}
!120 = distinct !{!120, !18, !20}
!121 = distinct !{!121, !18}
!122 = distinct !{!122, !18}
!123 = distinct !{!123, !18, !20, !21}
!124 = distinct !{!124, !127}
!125 = distinct !{!125, !18, !20}
!126 = distinct !{!126, !18}
!127 = !{!"llvm.loop.unroll.disable"}
!128 = !{!23, !7, i64 16}
!129 = distinct !{!129, !"vprintf"}
!130 = distinct !{!130, !129, !"vprintf: argument 0"}
!131 = distinct !{null}
!132 = !{!130}
end_hunk_0
