Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifMan?download=true
inline.NumInlined: 290
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 15
begin_hunk_0_@If_ManSetupSetAll:bb.a
  %i.p = load i32, ptr %i.o, align 4, !tbaa !73   ; 2 uses
  %i.q = trunc i32 %i.p to i16                    ; 2 uses
  store i16 %i.q, ptr %.02326, align 8, !tbaa !115
  %i.r = getelementptr inbounds nuw i8, ptr %.02326, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.02326, i64 16 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !101
  %sext.i = shl i32 %i.p, 16
  %i.t = ashr exact i32 %sext.i, 16
  %i.u = add nsw i32 %i.t, 1
  %i.v = sext i32 %i.u to i64
  %i.w = shl nsw i64 %i.v, 3
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.w
  %.not17.i = icmp slt i16 %i.q, 0
  br i1 %.not17.i, label %If_ManSetupSet.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.b ] ; 4 uses
  %i.y = load i32, ptr %i.k, align 4, !tbaa !72   ; 2 uses
  %i.z = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.aa = mul nsw i32 %i.y, %i.z
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.x, i64 %i.ab ; 3 uses
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !101
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !102
  %i.af = sext i32 %i.y to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ac, i8 0, i64 %i.af, i1 false)
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !31
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !46
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 36 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 4
  %i.ak = shl i32 %i.ah, 16
  %i.al = and i32 %i.ak, 16711680
  %i.am = zext nneg i32 %i.al to i64
  %i.an = and i64 %i.aj, -16711681
  %i.ao = or disjoint i64 %i.an, %i.am
  store i64 %i.ao, ptr %i.ai, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.ap = load i16, ptr %.02326, align 8, !tbaa !115
  %i.aq = sext i16 %i.ap to i64
  %.not.not.i = icmp slt i64 %indvars.iv.i, %i.aq
  br i1 %.not.not.i, label %.lr.ph.i, label %If_ManSetupSet.exit, !llvm.loop !4

If_ManSetupSet.exit:                              ; preds = %.lr.ph.i, %bb.b
  %i.ar = icmp eq i32 %.027, %i.l
  br i1 %i.ar, label %bb.d, label %bb.c

bb.c:                                             ; preds = %If_ManSetupSet.exit
  %i.as = load i32, ptr %i.b, align 8, !tbaa !74
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %.02326, i64 %i.at
  br label %bb.d

bb.d:                                             ; preds = %If_ManSetupSet.exit, %bb.c
  %.sink = phi ptr [ %i.au, %bb.c ], [ null, %If_ManSetupSet.exit ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.02326, i64 8
  store ptr %.sink, ptr %i.av, align 8, !tbaa !122
  %i.aw = add nuw nsw i32 %.027, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.aw, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !228

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !31
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 200
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !76
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.bb = getelementptr i8, ptr %0, i64 80
  %.val25 = load i32, ptr %i.bb, align 8, !tbaa !47
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !114
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !71
  %i.bg = sext i32 %i.bf to i64
  %i.bh = add nsw i64 %i.bg, 16
  %i.bi = uitofp i64 %i.bh to double
  %i.bj = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.bj, align 8, !tbaa !43
  %i.bk = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.bk, align 4, !tbaa !38
  %i.bl = sitofp i32 %.val.val to double
  %i.bm = fmul nnan double %i.bi, %i.bl
  %i.bn = fmul nnan double %i.bm, f0x3EB0000000000000
  %i.bo = load i32, ptr %i.b, align 8, !tbaa !74
  %i.bp = sitofp i32 %i.bo to double
  %i.bq = sitofp i32 %1 to double
  %i.br = fmul nnan double %i.bq, %i.bp
  %i.bs = fmul nnan double %i.br, f0x3EB0000000000000
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.25, i32 noundef %.val25, i32 noundef %i.bd, double noundef %i.bn, double noundef %i.bs)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Vec_MemHashInsert(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !106
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63   ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4        ; 2 uses
  %.val15 = load i32, ptr %i.e, align 4, !tbaa !62 ; 2 uses
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
  br i1 %.not.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i, !llvm.loop !0

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.c
  %.01116.i.i = phi i32 [ %i.k, %bb.c ], [ 3, %.preheader.i.i ] ; 2 uses
  %i.m = urem i32 %i.i, %.01116.i.i
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.critedge.i.i.backedge, label %bb.c

Abc_PrimeCudd.exit.i:                             ; preds = %.preheader.i.i, %bb.c
  %i.o = load i32, ptr %i.d, align 8, !tbaa !60
  %.not.i.i.i = icmp slt i32 %i.o, %i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !61   ; 3 uses
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
  %i.t = tail call ptr @realloc(ptr noundef nonnull %i.q, i64 noundef %i.s) #25
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.s) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = phi ptr [ %i.t, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  store ptr %i.v, ptr %i.p, align 8, !tbaa !61
  store i32 %i.i, ptr %i.d, align 8, !tbaa !60
  br label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %bb.g, %Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre41.i, %Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i ], [ %i.s, %bb.g ]
  %i.w = phi ptr [ %i.q, %Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i ], [ %i.v, %bb.g ]
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 -1, i64 %.pre-phi.i, i1 false), !tbaa !47
  store i32 %i.i, ptr %i.e, align 4, !tbaa !62
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 0, ptr %i.z, align 4, !tbaa !62
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1428.i = load i32, ptr %i.a, align 4, !tbaa !106
  %i.ab = icmp sgt i32 %.val1428.i, 0
  br i1 %i.ab, label %.lr.ph30.i, label %Vec_MemHashResize.exit

.lr.ph30.i:                                       ; preds = %.lr.ph.i15.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.h

bb.h:                                             ; preds = %Vec_IntPush.exit.i, %.lr.ph30.i
  %.029.i = phi i32 [ 0, %.lr.ph30.i ], [ %i.dz, %Vec_IntPush.exit.i ] ; 3 uses
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !107 ; 3 uses
  %i.af = load i32, ptr %i.ac, align 8, !tbaa !55 ; 3 uses
  %i.ag = lshr i32 %.029.i, %i.af
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !108 ; 2 uses
  %i.ak = load i32, ptr %0, align 8, !tbaa !54    ; 6 uses
  %i.al = load i32, ptr %i.ad, align 4, !tbaa !56 ; 3 uses
  %i.am = and i32 %i.al, %.029.i
  %i.an = mul nsw i32 %i.am, %i.ak
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ao ; 8 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %Vec_MemHashResize.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !63  ; 2 uses
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
  %vec.phi10 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %9, %vector.body ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %wide.load = load <4 x i32>, ptr %4, align 4, !tbaa !47
  %wide.load11 = load <4 x i32>, ptr %5, align 4, !tbaa !47
  %6 = mul <4 x i32> %wide.load, <i32 1699, i32 4177, i32 5147, i32 5647>
  %7 = mul <4 x i32> %wide.load11, <i32 6343, i32 7103, i32 7873, i32 8147>
  %8 = add <4 x i32> %6, %vec.phi                 ; 2 uses
  %9 = add <4 x i32> %7, %vec.phi10               ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %10 = icmp eq i64 %index.next, %n.vec
  br i1 %10, label %middle.block, label %vector.body, !llvm.loop !229

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
  %13 = load i32, ptr %12, align 4, !tbaa !47
  %14 = and i64 %indvars.iv.i.i.i.prol, 7
  %15 = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !47
  %17 = mul i32 %16, %13
  %18 = add i32 %17, %.012.i.i.i.prol             ; 3 uses
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter.a
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !230

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa42.unr = phi i32 [ poison, %.lr.ph.i.i.i.preheader ], [ %18, %.lr.ph.i.i.i.prol ]
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.012.i.i.i.unr = phi i32 [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %18, %.lr.ph.i.i.i.prol ]
  %19 = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %20 = icmp ugt i64 %19, -4
  br i1 %20, label %Vec_MemHashKey.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3.a, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %.012.i.i.i = phi i32 [ %i.bu, %.lr.ph.i.i.i ], [ %.012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i.i.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !47
  %i.av = and i64 %indvars.iv.i.i.i, 7
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !47
  %i.ay = mul i32 %i.ax, %i.au
  %i.az = add i32 %i.ay, %.012.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !47
  %i.bc = and i64 %indvars.iv.next.i.i.i, 7
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !47
  %i.bf = mul i32 %i.be, %i.bb
  %i.bg = add i32 %i.bf, %i.az
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i.i.1
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !47
  %i.bj = and i64 %indvars.iv.next.i.i.i.1, 7
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !47
  %i.bm = mul i32 %i.bl, %i.bi
  %i.bn = add i32 %i.bm, %i.bg
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i.i.2
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !47
  %i.bq = and i64 %indvars.iv.next.i.i.i.2, 7
  %i.br = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !47
  %i.bt = mul i32 %i.bs, %i.bp
  %i.bu = add i32 %i.bt, %i.bn                    ; 2 uses
  %indvars.iv.next.i.i.i.3.a = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3.a, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %Vec_MemHashKey.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !231

Vec_MemHashKey.exit.i.i:                          ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %bb.i
  %.0.lcssa.i.i.i = phi i32 [ 0, %bb.i ], [ %11, %middle.block ], [ %.lcssa42.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.bu, %.lr.ph.i.i.i ]
  %i.bv = getelementptr i8, ptr %i.aq, i64 4
  %.val.i.i.i = load i32, ptr %i.bv, align 4, !tbaa !62
  %i.bw = urem i32 %.0.lcssa.i.i.i, %.val.i.i.i
  %i.bx = getelementptr i8, ptr %i.aq, i64 8
  %.val16.i.i = load ptr, ptr %i.bx, align 8, !tbaa !61
  %i.by = sext i32 %i.bw to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %.val16.i.i, i64 %i.by ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !47 ; 4 uses
  %.not17.i.i = icmp eq i32 %i.ca, -1
  br i1 %.not17.i.i, label %Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i, label %.lr.ph.i16.i

Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i: ; preds = %Vec_MemHashKey.exit.i.i
  %.pre37.i = load ptr, ptr %i.x, align 8, !tbaa !64
  br label %Vec_MemHashLookup.exit.i

.lr.ph.i16.i:                                     ; preds = %Vec_MemHashKey.exit.i.i
  %i.cb = sext i32 %i.ak to i64
  %i.cc = shl nsw i64 %i.cb, 3                    ; 2 uses
  %i.cd = ashr i32 %i.ca, %i.af
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !108
  %i.ch = and i32 %i.ca, %i.al
  %i.ci = mul nsw i32 %i.ch, %i.ak
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.cj
  %bcmp.i24.i = tail call i32 @bcmp(ptr %i.ck, ptr nonnull readonly %i.ap, i64 %i.cc)
  %.not15.i1725.i = icmp eq i32 %bcmp.i24.i, 0
  %.pre38.i = load ptr, ptr %i.x, align 8, !tbaa !64 ; 4 uses
  br i1 %.not15.i1725.i, label %Vec_MemHashLookup.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i16.i
  %i.cl = getelementptr i8, ptr %.pre38.i, i64 8
  %.val.i.i = load ptr, ptr %i.cl, align 8, !tbaa !61 ; 3 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.cm = ashr i32 %i.cx, %i.af
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !108
  %i.cq = and i32 %i.cx, %i.al
  %i.cr = mul nsw i32 %i.cq, %i.ak
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cs
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.ct, ptr nonnull readonly %i.ap, i64 %i.cc)
  %.not15.i17.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not15.i17.i, label %Vec_MemHashLookup.exit.i.loopexit, label %bb.k, !llvm.loop !232

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %i.cu = phi i32 [ %i.ca, %.lr.ph.i ], [ %i.cx, %bb.j ]
  %i.cv = sext i32 %i.cu to i64                   ; 3 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !47 ; 4 uses
  %.not.i18.i = icmp eq i32 %i.cx, -1
  br i1 %.not.i18.i, label %.Vec_MemHashLookup.exit.loopexit_crit_edge.i, label %bb.j, !llvm.loop !232

.Vec_MemHashLookup.exit.loopexit_crit_edge.i:     ; preds = %bb.k
  %i.cy = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.cv
  br label %Vec_MemHashLookup.exit.i, !llvm.loop !232

Vec_MemHashLookup.exit.i.loopexit:                ; preds = %bb.j
  %i.cz = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.cv
  br label %Vec_MemHashLookup.exit.i

Vec_MemHashLookup.exit.i:                         ; preds = %Vec_MemHashLookup.exit.i.loopexit, %.Vec_MemHashLookup.exit.loopexit_crit_edge.i, %.lr.ph.i16.i, %Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i
  %i.da = phi ptr [ %.pre37.i, %Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i ], [ %.pre38.i, %.lr.ph.i16.i ], [ %.pre38.i, %.Vec_MemHashLookup.exit.loopexit_crit_edge.i ], [ %.pre38.i, %Vec_MemHashLookup.exit.i.loopexit ] ; 6 uses
  %.0.lcssa.i.i = phi ptr [ %i.bz, %Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i ], [ %i.bz, %.lr.ph.i16.i ], [ %i.cy, %.Vec_MemHashLookup.exit.loopexit_crit_edge.i ], [ %i.cz, %Vec_MemHashLookup.exit.i.loopexit ]
  %i.db = getelementptr i8, ptr %i.da, i64 4      ; 3 uses
  %.val.i = load i32, ptr %i.db, align 4, !tbaa !62 ; 8 uses
  store i32 %.val.i, ptr %.0.lcssa.i.i, align 4, !tbaa !47
  %i.dc = load i32, ptr %i.da, align 8, !tbaa !60
  %i.dd = icmp eq i32 %.val.i, %i.dc
  br i1 %i.dd, label %bb.l, label %Vec_IntPush.exit.i

bb.l:                                             ; preds = %Vec_MemHashLookup.exit.i
  %i.de = icmp slt i32 %.val.i, 16
  br i1 %i.de, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !61 ; 2 uses
  %.not9.i.i19.i = icmp eq ptr %i.dg, null
  br i1 %.not9.i.i19.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dh = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.dg, i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i20.i

bb.o:                                             ; preds = %bb.m
  %i.di = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntGrow.exit.i20.i

Vec_IntGrow.exit.i20.i:                           ; preds = %bb.o, %bb.n
  %i.dj = phi ptr [ %i.dh, %bb.n ], [ %i.di, %bb.o ]
  store ptr %i.dj, ptr %i.df, align 8, !tbaa !61
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.p:                                             ; preds = %bb.l
  %i.dk = icmp samesign ult i32 %.val.i, 1073741823
  %i.dl = shl nuw nsw i32 %.val.i, 1
  %spec.select.i.i = select i1 %i.dk, i32 %i.dl, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %.val.i, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.q, label %Vec_IntPush.exit.i

bb.q:                                             ; preds = %bb.p
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !61 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.dn, null
  %i.do = zext nneg i32 %spec.select.i.i to i64
  %i.dp = shl nuw nsw i64 %i.do, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dq = tail call ptr @realloc(ptr noundef nonnull %i.dn, i64 noundef %i.dp) #25
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.dr = tail call noalias ptr @malloc(i64 noundef %i.dp) #22
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ds = phi ptr [ %i.dq, %bb.r ], [ %i.dr, %bb.s ]
  store ptr %i.ds, ptr %i.dm, align 8, !tbaa !61
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.t, %Vec_IntGrow.exit.i20.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.t ], [ 16, %Vec_IntGrow.exit.i20.i ]
  store i32 %spec.select.sink.i.i, ptr %i.da, align 8, !tbaa !60
  %.pre39.i = load i32, ptr %i.db, align 4, !tbaa !62
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.p, %Vec_MemHashLookup.exit.i
  %i.dt = phi i32 [ %.val.i, %Vec_MemHashLookup.exit.i ], [ %.val.i, %bb.p ], [ %.pre39.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !61
  %i.dw = add nsw i32 %i.dt, 1
  store i32 %i.dw, ptr %i.db, align 4, !tbaa !62
  %i.dx = sext i32 %i.dt to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.dx
  store i32 -1, ptr %i.dy, align 4, !tbaa !47
  %i.dz = add nuw nsw i32 %.029.i, 1              ; 2 uses
  %.val14.i = load i32, ptr %i.a, align 4, !tbaa !106
  %i.ea = icmp slt i32 %i.dz, %.val14.i
  br i1 %i.ea, label %bb.h, label %Vec_MemHashResize.exit, !llvm.loop !233

Vec_MemHashResize.exit:                           ; preds = %Vec_IntPush.exit.i, %bb.h, %.lr.ph.i15.i, %bb.a
  %i.eb = load ptr, ptr %i.c, align 8, !tbaa !63  ; 2 uses
  %i.ec = load i32, ptr %0, align 8, !tbaa !54    ; 5 uses
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %.lr.ph.preheader.i.i, label %Vec_MemHashKey.exit.i

.lr.ph.preheader.i.i:                             ; preds = %Vec_MemHashResize.exit
  %i.ee = shl nuw i32 %i.ec, 1                    ; 2 uses
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.ee, i32 1) ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64 ; 5 uses
  %min.iters.check16 = icmp slt i32 %i.ee, 8
  %21 = add nsw i32 %smax.i.i, -9
  %22 = icmp ult i32 %21, -8
  %or.cond35 = select i1 %min.iters.check16, i1 true, i1 %22
  br i1 %or.cond35, label %.lr.ph.i.i21.preheader, label %vector.ph17

vector.ph17:                                      ; preds = %.lr.ph.preheader.i.i
  %n.vec18 = and i64 %wide.trip.count.i.i, 8      ; 3 uses
  br label %vector.body19

vector.body19:                                    ; preds = %vector.body19, %vector.ph17
  %index20 = phi i64 [ 0, %vector.ph17 ], [ %index.next27, %vector.body19 ] ; 2 uses
  %vec.phi21 = phi <4 x i32> [ zeroinitializer, %vector.ph17 ], [ %27, %vector.body19 ]
  %vec.phi22 = phi <4 x i32> [ zeroinitializer, %vector.ph17 ], [ %28, %vector.body19 ]
  %23 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index20 ; 2 uses
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 16
  %wide.load23 = load <4 x i32>, ptr %23, align 4, !tbaa !47
  %wide.load24 = load <4 x i32>, ptr %24, align 4, !tbaa !47
  %25 = mul <4 x i32> %wide.load23, <i32 1699, i32 4177, i32 5147, i32 5647>
  %26 = mul <4 x i32> %wide.load24, <i32 6343, i32 7103, i32 7873, i32 8147>
  %27 = add <4 x i32> %25, %vec.phi21             ; 2 uses
  %28 = add <4 x i32> %26, %vec.phi22             ; 2 uses
  %index.next27 = add nuw i64 %index20, 8         ; 2 uses
  %29 = icmp eq i64 %index.next27, %n.vec18
  br i1 %29, label %middle.block28, label %vector.body19, !llvm.loop !234

middle.block28:                                   ; preds = %vector.body19
  %bin.rdx29 = add <4 x i32> %28, %27
  %30 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx29) ; 2 uses
  %cmp.n30 = icmp eq i64 %n.vec18, %wide.trip.count.i.i
  br i1 %cmp.n30, label %Vec_MemHashKey.exit.i, label %.lr.ph.i.i21.preheader

.lr.ph.i.i21.preheader:                           ; preds = %.lr.ph.preheader.i.i, %middle.block28
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec18, %middle.block28 ] ; 3 uses
  %.012.i.i22.ph = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %30, %middle.block28 ] ; 2 uses
  %xtraiter48 = and i64 %wide.trip.count.i.i, 3   ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.lr.ph.i.i21.prol.loopexit, label %.lr.ph.i.i21.prol

.lr.ph.i.i21.prol:                                ; preds = %.lr.ph.i.i21.preheader, %.lr.ph.i.i21.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i21.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i21.preheader ] ; 3 uses
  %.012.i.i22.prol = phi i32 [ %37, %.lr.ph.i.i21.prol ], [ %.012.i.i22.ph, %.lr.ph.i.i21.preheader ]
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.lr.ph.i.i21.prol ], [ 0, %.lr.ph.i.i21.preheader ]
  %31 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.i.prol
  %32 = load i32, ptr %31, align 4, !tbaa !47
  %33 = and i64 %indvars.iv.i.i.prol, 7
  %34 = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !47
  %36 = mul i32 %35, %32
  %37 = add i32 %36, %.012.i.i22.prol             ; 3 uses
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.lr.ph.i.i21.prol.loopexit, label %.lr.ph.i.i21.prol, !llvm.loop !235

.lr.ph.i.i21.prol.loopexit:                       ; preds = %.lr.ph.i.i21.prol, %.lr.ph.i.i21.preheader
  %.lcssa37.unr = phi i32 [ poison, %.lr.ph.i.i21.preheader ], [ %37, %.lr.ph.i.i21.prol ]
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i21.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i21.prol ]
  %.012.i.i22.unr = phi i32 [ %.012.i.i22.ph, %.lr.ph.i.i21.preheader ], [ %37, %.lr.ph.i.i21.prol ]
  %38 = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %39 = icmp ugt i64 %38, -4
  br i1 %39, label %Vec_MemHashKey.exit.i, label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %.lr.ph.i.i21.prol.loopexit, %.lr.ph.i.i21
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3.a, %.lr.ph.i.i21 ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i21.prol.loopexit ] ; 6 uses
  %.012.i.i22 = phi i32 [ %i.fg, %.lr.ph.i.i21 ], [ %.012.i.i22.unr, %.lr.ph.i.i21.prol.loopexit ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.i
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !47
  %i.eh = and i64 %indvars.iv.i.i, 7
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !47
  %i.ek = mul i32 %i.ej, %i.eg
  %i.el = add i32 %i.ek, %.012.i.i22
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.i
  %i.en = load i32, ptr %i.em, align 4, !tbaa !47
  %i.eo = and i64 %indvars.iv.next.i.i, 7
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !47
  %i.er = mul i32 %i.eq, %i.en
  %i.es = add i32 %i.er, %i.el
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.i.1
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !47
  %i.ev = and i64 %indvars.iv.next.i.i.1, 7
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !47
  %i.ey = mul i32 %i.ex, %i.eu
  %i.ez = add i32 %i.ey, %i.es
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.i.2
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !47
  %i.fc = and i64 %indvars.iv.next.i.i.2, 7
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !47
  %i.ff = mul i32 %i.fe, %i.fb
  %i.fg = add i32 %i.ff, %i.ez                    ; 2 uses
  %indvars.iv.next.i.i.3.a = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3.a, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %Vec_MemHashKey.exit.i, label %.lr.ph.i.i21, !llvm.loop !236

Vec_MemHashKey.exit.i:                            ; preds = %.lr.ph.i.i21.prol.loopexit, %.lr.ph.i.i21, %middle.block28, %Vec_MemHashResize.exit
  %.0.lcssa.i.i16 = phi i32 [ 0, %Vec_MemHashResize.exit ], [ %30, %middle.block28 ], [ %.lcssa37.unr, %.lr.ph.i.i21.prol.loopexit ], [ %i.fg, %.lr.ph.i.i21 ]
  %i.fh = getelementptr i8, ptr %i.eb, i64 4
  %.val.i.i17 = load i32, ptr %i.fh, align 4, !tbaa !62
  %i.fi = urem i32 %.0.lcssa.i.i16, %.val.i.i17
  %i.fj = getelementptr i8, ptr %i.eb, i64 8
  %.val16.i = load ptr, ptr %i.fj, align 8, !tbaa !61
  %i.fk = sext i32 %i.fi to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %.val16.i, i64 %i.fk ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !47 ; 4 uses
  %.not17.i = icmp eq i32 %i.fm, -1
  br i1 %.not17.i, label %Vec_MemHashLookup.exit.thread, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %Vec_MemHashKey.exit.i
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !107 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !55 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !56 ; 2 uses
  %i.ft = sext i32 %i.ec to i64
  %i.fu = shl nsw i64 %i.ft, 3                    ; 2 uses
  %i.fv = ashr i32 %i.fm, %i.fq
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.fw
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !108
  %i.fz = and i32 %i.fm, %i.fs
  %i.ga = mul nsw i32 %i.fz, %i.ec
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %i.gb
  %bcmp.i42 = tail call i32 @bcmp(ptr %i.gc, ptr readonly %1, i64 %i.fu)
  %.not15.i43 = icmp eq i32 %bcmp.i42, 0
  br i1 %.not15.i43, label %Vec_MemHashLookup.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i18
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !64
  %i.gf = getelementptr i8, ptr %i.ge, i64 8
  %.val.i19 = load ptr, ptr %i.gf, align 8, !tbaa !61 ; 2 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.v
  %i.gg = ashr i32 %i.gr, %i.fq
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.gh
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !108
  %i.gk = and i32 %i.gr, %i.fs
  %i.gl = mul nsw i32 %i.gk, %i.ec
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gj, i64 %i.gm
  %bcmp.i = tail call i32 @bcmp(ptr %i.gn, ptr readonly %1, i64 %i.fu)
  %.not15.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not15.i, label %Vec_MemHashLookup.exit, label %bb.v, !llvm.loop !232

bb.v:                                             ; preds = %.lr.ph, %bb.u
  %i.go = phi i32 [ %i.fm, %.lr.ph ], [ %i.gr, %bb.u ]
  %i.gp = sext i32 %i.go to i64                   ; 2 uses
  %i.gq = getelementptr inbounds [4 x i8], ptr %.val.i19, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !47 ; 4 uses
  %.not.i20 = icmp eq i32 %i.gr, -1
  br i1 %.not.i20, label %Vec_MemHashLookup.exit.thread.loopexit, label %bb.u, !llvm.loop !232

Vec_MemHashLookup.exit.thread.loopexit:           ; preds = %bb.v
  %i.gs = getelementptr inbounds [4 x i8], ptr %.val.i19, i64 %i.gp
  br label %Vec_MemHashLookup.exit.thread

Vec_MemHashLookup.exit.thread:                    ; preds = %Vec_MemHashLookup.exit.thread.loopexit, %Vec_MemHashKey.exit.i
  %.0.lcssa.i31 = phi ptr [ %i.fl, %Vec_MemHashKey.exit.i ], [ %i.gs, %Vec_MemHashLookup.exit.thread.loopexit ]
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !64 ; 6 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 4      ; 3 uses
  %.val14 = load i32, ptr %i.gv, align 4, !tbaa !62 ; 8 uses
  store i32 %.val14, ptr %.0.lcssa.i31, align 4, !tbaa !47
  %i.gw = load i32, ptr %i.gu, align 8, !tbaa !60
  %i.gx = icmp eq i32 %.val14, %i.gw
  br i1 %i.gx, label %bb.w, label %Vec_IntPush.exit

bb.w:                                             ; preds = %Vec_MemHashLookup.exit.thread
  %i.gy = icmp slt i32 %.val14, 16
  br i1 %i.gy, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !61 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ha, null
  br i1 %.not9.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hb = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ha, i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i

bb.z:                                             ; preds = %bb.x
  %i.hc = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.z, %bb.y
  %i.hd = phi ptr [ %i.hb, %bb.y ], [ %i.hc, %bb.z ]
  store ptr %i.hd, ptr %i.gz, align 8, !tbaa !61
  br label %Vec_IntGrow.exit11.sink.split.i

bb.aa:                                            ; preds = %bb.w
  %i.he = icmp samesign ult i32 %.val14, 1073741823
  %i.hf = shl nuw nsw i32 %.val14, 1
  %spec.select.i = select i1 %i.he, i32 %i.hf, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %.val14, %spec.select.i
  br i1 %.not.i9.i, label %bb.ab, label %Vec_IntPush.exit

bb.ab:                                            ; preds = %bb.aa
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !61 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.hh, null
  %i.hi = zext nneg i32 %spec.select.i to i64
  %i.hj = shl nuw nsw i64 %i.hi, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hk = tail call ptr @realloc(ptr noundef nonnull %i.hh, i64 noundef %i.hj) #25
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.hl = tail call noalias ptr @malloc(i64 noundef %i.hj) #22
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.hm = phi ptr [ %i.hk, %bb.ac ], [ %i.hl, %bb.ad ]
  store ptr %i.hm, ptr %i.hg, align 8, !tbaa !61
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.ae, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.ae ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.gu, align 8, !tbaa !60
  %.pre = load i32, ptr %i.gv, align 4, !tbaa !62
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_MemHashLookup.exit.thread, %bb.aa, %Vec_IntGrow.exit11.sink.split.i
  %i.hn = phi i32 [ %.val14, %Vec_MemHashLookup.exit.thread ], [ %.val14, %bb.aa ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !61
  %i.hq = add nsw i32 %i.hn, 1
  store i32 %i.hq, ptr %i.gv, align 4, !tbaa !62
  %i.hr = sext i32 %i.hn to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.hr
  store i32 -1, ptr %i.hs, align 4, !tbaa !47
  %i.ht = load i32, ptr %i.a, align 4, !tbaa !106 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !55 ; 3 uses
  %i.hw = ashr i32 %i.ht, %i.hv                   ; 7 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !57 ; 3 uses
  %i.hz = icmp slt i32 %i.hy, %i.hw
  br i1 %i.hz, label %bb.af, label %Vec_MemPush.exit

bb.af:                                            ; preds = %Vec_IntPush.exit
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !109 ; 3 uses
  %.not36.i.i = icmp slt i32 %i.hw, %i.ib
  br i1 %.not36.i.i, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !107 ; 2 uses
  %.not37.i.i = icmp eq ptr %i.id, null
  %.not38.i.i = icmp eq i32 %i.ib, 0
  %i.ie = shl nsw i32 %i.ib, 1
  %i.if = add nsw i32 %i.hw, 32
  %i.ig = select i1 %.not38.i.i, i32 %i.if, i32 %i.ie ; 2 uses
  store i32 %i.ig, ptr %i.ia, align 8, !tbaa !109
  %i.ih = sext i32 %i.ig to i64
  %i.ii = shl nsw i64 %i.ih, 3                    ; 2 uses
  br i1 %.not37.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ij = tail call ptr @realloc(ptr noundef nonnull %i.id, i64 noundef %i.ii) #25
  %.pre.pre.i.i = load i32, ptr %i.hx, align 4, !tbaa !57
  %.pre.pre.pre.pre.i = load i32, ptr %i.hu, align 8, !tbaa !55
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.ik = tail call noalias ptr @malloc(i64 noundef %i.ii) #22
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pre.pre.pre.i = phi i32 [ %.pre.pre.pre.pre.i, %bb.ah ], [ %i.hv, %bb.ai ]
  %.pre.i.i = phi i32 [ %.pre.pre.i.i, %bb.ah ], [ %i.hy, %bb.ai ]
  %i.il = phi ptr [ %i.ij, %bb.ah ], [ %i.ik, %bb.ai ]
  store ptr %i.il, ptr %i.ic, align 8, !tbaa !107
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.af
  %.pre.pre.i = phi i32 [ %.pre.pre.pre.i, %bb.aj ], [ %i.hv, %bb.af ] ; 2 uses
  %i.im = phi i32 [ %.pre.i.i, %bb.aj ], [ %i.hy, %bb.af ] ; 2 uses
  %.not40.not41.i.i = icmp slt i32 %i.im, %i.hw
  br i1 %.not40.not41.i.i, label %.lr.ph.i.i24, label %._crit_edge.i.i

.lr.ph.i.i24:                                     ; preds = %bb.ak
  %i.in = load i32, ptr %0, align 8, !tbaa !54
  %i.io = shl i32 %i.in, %.pre.pre.i
  %i.ip = sext i32 %i.io to i64
  %i.iq = shl nsw i64 %i.ip, 3
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !107
  %i.it = sext i32 %i.im to i64
  %wide.trip.count.i.i25 = sext i32 %i.hw to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph.i.i24
  %indvars.iv.i.i26 = phi i64 [ %i.it, %.lr.ph.i.i24 ], [ %indvars.iv.next.i.i27, %bb.al ]
  %indvars.iv.next.i.i27 = add nsw i64 %indvars.iv.i.i26, 1 ; 3 uses
  %i.iu = tail call noalias ptr @malloc(i64 noundef %i.iq) #22
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.is, i64 %indvars.iv.next.i.i27
  store ptr %i.iu, ptr %i.iv, align 8, !tbaa !108
  %exitcond.not.i.i28 = icmp eq i64 %indvars.iv.next.i.i27, %wide.trip.count.i.i25
  br i1 %exitcond.not.i.i28, label %._crit_edge.i.i, label %bb.al, !llvm.loop !237

._crit_edge.i.i:                                  ; preds = %bb.al, %bb.ak
  store i32 %i.hw, ptr %i.hx, align 4, !tbaa !57
  %.pre.i = ashr i32 %i.ht, %.pre.pre.i
  br label %Vec_MemPush.exit

Vec_MemPush.exit:                                 ; preds = %Vec_IntPush.exit, %._crit_edge.i.i
  %.pre-phi.i23 = phi i32 [ %i.hw, %Vec_IntPush.exit ], [ %.pre.i, %._crit_edge.i.i ]
  %i.iw = add nsw i32 %i.ht, 1
  store i32 %i.iw, ptr %i.a, align 4, !tbaa !106
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !107
  %i.iz = sext i32 %.pre-phi.i23 to i64
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.iy, i64 %i.iz
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !108
  %i.jc = load i32, ptr %0, align 8, !tbaa !54    ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !56
  %i.jf = and i32 %i.je, %i.ht
  %i.jg = mul nsw i32 %i.jf, %i.jc
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.jb, i64 %i.jh
  %i.jj = sext i32 %i.jc to i64
  %i.jk = shl nsw i64 %i.jj, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ji, ptr readonly align 8 %1, i64 %i.jk, i1 false)
  br label %Vec_MemHashLookup.exit

Vec_MemHashLookup.exit:                           ; preds = %bb.u, %.lr.ph.i18, %Vec_MemPush.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #16

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #4

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #17

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #17

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #19

declare ptr @Mem_FixedEntryFetch(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #19

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind allocsize(0,1) }
attributes #24 = { nounwind }
attributes #25 = { nounwind allocsize(1) }
attributes #26 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !49}
!1 = distinct !{!1, !49}
!2 = distinct !{!2, !49}
!3 = distinct !{!3, !49}
!4 = distinct !{!4, !49}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"p1 _ZTS9If_Par_t_", !13, i64 0}
!16 = !{!"p1 _ZTS9If_Obj_t_", !13, i64 0}
!17 = !{!"p1 _ZTS10Vec_Ptr_t_", !13, i64 0}
!18 = !{!"float", !9, i64 0}
!19 = !{!"p1 long", !13, i64 0}
!20 = !{!"p1 _ZTS10Vec_Int_t_", !13, i64 0}
!21 = !{!"p1 _ZTS10Vec_Wrd_t_", !13, i64 0}
!22 = !{!"p1 _ZTS12Mem_Fixed_t_", !13, i64 0}
!23 = !{!"p1 _ZTS9If_Set_t_", !13, i64 0}
!24 = !{!"p1 _ZTS12If_DsdMan_t_", !13, i64 0}
!25 = !{!"p1 _ZTS14Hash_IntMan_t_", !13, i64 0}
!26 = !{!"p1 _ZTS10Vec_Str_t_", !13, i64 0}
!27 = !{!"p1 _ZTS10Vec_Mem_t_", !13, i64 0}
!28 = !{!"p1 _ZTS9If_Cut_t_", !13, i64 0}
!29 = !{!"p1 _ZTS10Tim_Man_t_", !13, i64 0}
!30 = !{!"If_Man_t_", !14, i64 0, !15, i64 8, !16, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !9, i64 64, !10, i64 84, !18, i64 88, !18, i64 92, !18, i64 96, !18, i64 100, !10, i64 104, !18, i64 108, !10, i64 112, !10, i64 116, !9, i64 120, !19, i64 152, !10, i64 160, !10, i64 164, !10, i64 168, !20, i64 176, !9, i64 184, !10, i64 568, !10, i64 572, !10, i64 576, !20, i64 584, !20, i64 592, !21, i64 600, !21, i64 608, !21, i64 616, !17, i64 624, !20, i64 632, !10, i64 640, !10, i64 644, !10, i64 648, !9, i64 652, !10, i64 716, !10, i64 720, !10, i64 724, !10, i64 728, !22, i64 736, !22, i64 744, !23, i64 752, !23, i64 760, !23, i64 768, !10, i64 776, !10, i64 780, !9, i64 784, !9, i64 912, !10, i64 1040, !10, i64 1044, !10, i64 1048, !10, i64 1052, !24, i64 1056, !9, i64 1064, !9, i64 1192, !9, i64 1320, !9, i64 1448, !9, i64 1576, !9, i64 1704, !9, i64 1832, !25, i64 1960, !20, i64 1968, !26, i64 1976, !27, i64 1984, !9, i64 1992, !10, i64 2024, !10, i64 2028, !10, i64 2032, !9, i64 2040, !9, i64 2088, !9, i64 2096, !20, i64 2104, !9, i64 2112, !17, i64 2176, !13, i64 2184, !20, i64 2192, !9, i64 2200, !26, i64 2264, !20, i64 2272, !20, i64 2280, !20, i64 2288, !16, i64 2296, !28, i64 2304, !10, i64 2312, !9, i64 2316, !9, i64 2444, !18, i64 2572, !10, i64 2576, !29, i64 2584, !20, i64 2592, !9, i64 2600, !9, i64 2608, !9, i64 2616, !22, i64 2632}
!31 = !{!30, !15, i64 8}
!32 = !{!"p1 _ZTS12If_LibLut_t_", !13, i64 0}
!33 = !{!"p1 _ZTS13If_LibCell_t_", !13, i64 0}
!34 = !{!"p1 float", !13, i64 0}
!35 = !{!"If_Par_t_", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !18, i64 24, !18, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !10, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !10, i64 180, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !10, i64 200, !10, i64 204, !14, i64 208, !10, i64 216, !18, i64 220, !10, i64 224, !10, i64 228, !10, i64 232, !10, i64 236, !10, i64 240, !10, i64 244, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276, !18, i64 280, !18, i64 284, !18, i64 288, !32, i64 296, !33, i64 304, !34, i64 312, !34, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368}
!36 = !{!"any p2 pointer", !13, i64 0}
!37 = !{!"Vec_Ptr_t_", !10, i64 0, !10, i64 4, !36, i64 8}
!38 = !{!37, !10, i64 4}
!39 = !{!37, !10, i64 0}
!40 = !{!37, !36, i64 8}
!41 = !{!30, !17, i64 24}
!42 = !{!30, !17, i64 32}
!43 = !{!30, !17, i64 40}
!44 = !{!30, !17, i64 56}
!45 = !{!35, !10, i64 232}
!46 = !{!35, !10, i64 0}
!47 = !{!10, !10, i64 0}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!27, !27, i64 0}
!51 = !{!35, !10, i64 164}
!52 = !{!"p2 long", !36, i64 0}
!53 = !{!"Vec_Mem_t_", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !52, i64 24, !20, i64 32, !20, i64 40}
!54 = !{!53, !10, i64 0}
!55 = !{!53, !10, i64 8}
!56 = !{!53, !10, i64 12}
!57 = !{!53, !10, i64 20}
!58 = !{!"p1 int", !13, i64 0}
!59 = !{!"Vec_Int_t_", !10, i64 0, !10, i64 4, !58, i64 8}
!60 = !{!59, !10, i64 0}
!61 = !{!59, !58, i64 8}
!62 = !{!59, !10, i64 4}
!63 = !{!53, !20, i64 32}
!64 = !{!53, !20, i64 40}
!65 = !{!"Vec_Wec_t_", !10, i64 0, !10, i64 4, !20, i64 8}
!66 = !{!65, !10, i64 4}
!67 = !{!65, !10, i64 0}
!68 = !{!65, !20, i64 8}
!69 = !{!"p1 _ZTS10Vec_Wec_t_", !13, i64 0}
!70 = !{!69, !69, i64 0}
!71 = !{!30, !10, i64 720}
!72 = !{!30, !10, i64 724}
!73 = !{!35, !10, i64 4}
!74 = !{!30, !10, i64 728}
!75 = !{!30, !22, i64 736}
!76 = !{!35, !10, i64 200}
!77 = !{!58, !58, i64 0}
!78 = !{!30, !19, i64 152}
!79 = !{!35, !10, i64 148}
!80 = !{!20, !20, i64 0}
!81 = !{!26, !26, i64 0}
!82 = !{!"Vec_Str_t_", !10, i64 0, !10, i64 4, !14, i64 8}
!83 = !{!82, !14, i64 8}
!84 = !{!"Hash_IntMan_t_", !20, i64 0, !20, i64 8, !10, i64 16}
!85 = !{!84, !20, i64 0}
!86 = !{!84, !20, i64 8}
!87 = !{!30, !25, i64 1960}
!88 = !{!35, !10, i64 120}
!89 = !{!30, !16, i64 16}
!90 = !{!"long", !9, i64 0}
!91 = !{!"If_Cut_t_", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !90, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 37, !10, i64 37, !10, i64 37, !10, i64 37, !10, i64 38, !10, i64 39, !10, i64 40, !9, i64 44}
!92 = !{!"If_Obj_t_", !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 1, !10, i64 1, !10, i64 1, !10, i64 1, !10, i64 1, !10, i64 1, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !16, i64 24, !16, i64 32, !16, i64 40, !18, i64 48, !18, i64 52, !18, i64 56, !9, i64 64, !23, i64 72, !91, i64 80}
!93 = !{!92, !10, i64 4}
!94 = !{!13, !13, i64 0}
!95 = !{!30, !23, i64 752}
!96 = !{!92, !23, i64 72}
!97 = !{!"short", !9, i64 0}
!98 = !{!"p2 _ZTS9If_Cut_t_", !36, i64 0}
!99 = !{!"If_Set_t_", !97, i64 0, !97, i64 2, !23, i64 8, !98, i64 16}
!100 = !{!99, !97, i64 2}
!101 = !{!99, !98, i64 16}
!102 = !{!28, !28, i64 0}
!103 = !{!30, !10, i64 84}
!104 = !{!30, !20, i64 2280}
!105 = !{!92, !16, i64 24}
!106 = !{!53, !10, i64 4}
!107 = !{!53, !52, i64 24}
!108 = !{!19, !19, i64 0}
!109 = !{!53, !10, i64 16}
!110 = !{!30, !23, i64 760}
!111 = !{!92, !10, i64 8}
!112 = !{!92, !16, i64 32}
!113 = !{!92, !16, i64 40}
!114 = !{!30, !10, i64 168}
!115 = !{!99, !97, i64 0}
!116 = !{!35, !10, i64 272}
!117 = !{!91, !10, i64 32}
!118 = !{!91, !10, i64 24}
!119 = !{!91, !10, i64 28}
!120 = !{!91, !90, i64 16}
!121 = !{!30, !23, i64 768}
!122 = !{!99, !23, i64 8}
!123 = !{!92, !10, i64 16}
!124 = distinct !{!124, !48}
!125 = distinct !{!125, !49, !138}
!126 = distinct !{!126, !49}
!127 = distinct !{!127, !49}
!128 = distinct !{!128, !49}
!129 = distinct !{!129, !49}
!130 = distinct !{!130, !49}
!131 = distinct !{!131, !49}
!132 = distinct !{!132, !49}
!133 = distinct !{!133, !49}
!134 = distinct !{!134, !49}
!135 = !{!35, !18, i64 28}
!136 = !{!30, !18, i64 88}
!137 = !{!30, !17, i64 2176}
!138 = !{!"llvm.loop.peeled.count", i32 7}
!139 = !{!35, !10, i64 88}
!140 = !{!35, !10, i64 16}
!141 = !{!35, !10, i64 100}
!142 = !{!30, !20, i64 584}
!143 = !{!30, !20, i64 592}
!144 = !{!35, !10, i64 236}
!145 = !{!30, !10, i64 716}
!146 = !{!35, !10, i64 84}
!147 = !{!82, !10, i64 0}
!148 = !{!82, !10, i64 4}
!149 = !{!9, !9, i64 0}
!150 = !{!84, !10, i64 16}
!151 = !{!30, !26, i64 1976}
!152 = !{!30, !20, i64 1968}
!153 = !{!35, !10, i64 156}
!154 = !{!35, !10, i64 160}
!155 = !{!35, !13, i64 344}
!156 = distinct !{!156, !"vprintf"}
!157 = distinct !{!157, !156, !"vprintf: argument 0"}
!158 = distinct !{null}
!159 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!160 = !{!159, !159, i64 0}
!161 = !{!157}
!162 = !{!92, !18, i64 52}
!163 = distinct !{!163, !48}
!164 = distinct !{!164, !49}
!165 = distinct !{!165, !49}
!166 = distinct !{!166, !49}
!167 = distinct !{!167, !49}
!168 = distinct !{!168, !49}
!169 = distinct !{!169, !48}
!170 = distinct !{!170, !49}
!171 = distinct !{!171, !48}
!172 = distinct !{!172, !49}
!173 = distinct !{!173, !49}
!174 = distinct !{!174, !49}
!175 = distinct !{!175, !49}
!176 = distinct !{!176, !49}
!177 = distinct !{!177, !49}
!178 = distinct !{!178, !49}
!179 = distinct !{!179, !49}
!180 = distinct !{!180, !49}
!181 = distinct !{!181, !49}
!182 = !{!30, !20, i64 2288}
!183 = distinct !{!183, !49}
!184 = distinct !{!184, !49}
!185 = distinct !{!185, !49, !203}
!186 = distinct !{!186, !49}
!187 = distinct !{!187, !49}
!188 = distinct !{!188, !49}
!189 = distinct !{!189, !49}
!190 = distinct !{!190, !48}
!191 = distinct !{!191, !49}
!192 = distinct !{!192, !49}
!193 = distinct !{!193, !49}
!194 = distinct !{!194, !49}
!195 = distinct !{!195, !49}
!196 = distinct !{!196, !49}
!197 = distinct !{!197, !49}
!198 = distinct !{!198, !49}
!199 = distinct !{!199, !49}
!200 = distinct !{!200, !49}
!201 = !{!35, !10, i64 196}
!202 = !{!30, !14, i64 0}
!203 = !{!"llvm.loop.peeled.count", i32 1}
!204 = !{!30, !20, i64 2104}
!205 = !{!90, !90, i64 0}
!206 = !{!30, !10, i64 2032}
!207 = !{!30, !10, i64 2028}
!208 = !{!30, !10, i64 1044}
!209 = !{!30, !10, i64 1040}
!210 = !{!30, !24, i64 1056}
!211 = !{!21, !21, i64 0}
!212 = !{!"Vec_Wrd_t_", !10, i64 0, !10, i64 4, !19, i64 8}
!213 = !{!212, !19, i64 8}
!214 = !{!17, !17, i64 0}
!215 = !{!30, !27, i64 1984}
!216 = !{!35, !34, i64 312}
!217 = !{!35, !34, i64 320}
!218 = !{!30, !29, i64 2584}
!219 = !{!30, !20, i64 176}
!220 = !{!36, !36, i64 0}
!221 = !{!30, !22, i64 2632}
!222 = !{!92, !10, i64 12}
!223 = !{!92, !10, i64 20}
!224 = distinct !{!224, !49}
!225 = distinct !{!225, !49}
!226 = distinct !{!226, !49}
!227 = distinct !{!227, !49}
!228 = distinct !{!228, !49}
!229 = distinct !{!229, !49, !238, !239}
!230 = distinct !{!230, !48}
!231 = distinct !{!231, !49, !238}
!232 = distinct !{!232, !49}
!233 = distinct !{!233, !49}
!234 = distinct !{!234, !49, !238, !239}
!235 = distinct !{!235, !48}
!236 = distinct !{!236, !49, !238}
!237 = distinct !{!237, !49}
!238 = !{!"llvm.loop.isvectorized", i32 1}
!239 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
