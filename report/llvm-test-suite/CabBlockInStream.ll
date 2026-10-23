Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/CabBlockInStream?download=true
inline.NumInlined: 20
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN8NArchive4NCab17CCabBlockInStreamD0Ev:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #12
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN8NArchive4NCab10CCheckSum26UpdateEPKvj(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !23     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 10 uses
  %.not38 = icmp eq i32 %2, 0
  br i1 %.not38, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.pre = load i32, ptr %i.b, align 4, !tbaa !24
  %i.d = load i8, ptr %i.c, align 4
  %i.e = zext i8 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 11
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %i.i = phi i32 [ %.pre, %.lr.ph ], [ %i.p, %.loopexit ] ; 2 uses
  %.041 = phi i32 [ %2, %.lr.ph ], [ %i.q, %.loopexit ] ; 4 uses
  %.02740 = phi ptr [ %1, %.lr.ph ], [ %i.j, %.loopexit ] ; 7 uses
  %.02939 = phi i32 [ %i.a, %.lr.ph ], [ %.231, %.loopexit ] ; 5 uses
  %.not33 = icmp eq i32 %i.i, 0
  br i1 %.not33, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.02740, i64 1
  %i.k = load i8, ptr %.02740, align 1, !tbaa !25
  %i.l = sext i32 %i.i to i64
  %i.m = getelementptr inbounds i8, ptr %i.c, i64 %i.l
  store i8 %i.k, ptr %i.m, align 1, !tbaa !25
  %i.n = load i32, ptr %i.b, align 4, !tbaa !24
  %i.o = add nsw i32 %i.n, 1
  %i.p = and i32 %i.o, 3                          ; 3 uses
  store i32 %i.p, ptr %i.b, align 4, !tbaa !24
  %i.q = add i32 %.041, -1                        ; 2 uses
  %i.r = icmp eq i32 %i.p, 0
  br i1 %i.r, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.c
  %i.s = load i8, ptr %i.f, align 1, !tbaa !25
  %i.t = zext i8 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 8
  %i.v = or disjoint i32 %i.u, %i.e
  %i.w = load i8, ptr %i.g, align 2, !tbaa !25
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 16
  %i.z = or disjoint i32 %i.v, %i.y
  %i.aa = load i8, ptr %i.h, align 1, !tbaa !25
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl nuw i32 %i.ab, 24
  %i.ad = or disjoint i32 %i.z, %i.ac
  %i.ae = xor i32 %i.ad, %.02939
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.c
  %.231 = phi i32 [ %.02939, %bb.c ], [ %i.ae, %.preheader.preheader ] ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.b, !llvm.loop !0

._crit_edge.thread:                               ; preds = %.loopexit, %bb.a
  %.029.lcssa.ph = phi i32 [ %i.a, %bb.a ], [ %.231, %.loopexit ]
  store i32 %.029.lcssa.ph, ptr %0, align 4, !tbaa !23
  br label %._crit_edge60

.critedge:                                        ; preds = %bb.b
  %i.af = lshr i32 %.041, 2                       ; 5 uses
  %.not3448 = icmp eq i32 %i.af, 0
  br i1 %.not3448, label %._crit_edge, label %.lr.ph52.preheader

.lr.ph52.preheader:                               ; preds = %.critedge
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %.041, 32
  br i1 %min.iters.check, label %.lr.ph52.preheader87, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph52.preheader
  %n.vec = and i64 %i.ag, 1073741816              ; 4 uses
  %i.ah = trunc nuw nsw i64 %n.vec to i32
  %i.ai = sub nsw i32 %i.af, %i.ah
  %i.aj = shl nuw nsw i64 %n.vec, 2
  %i.ak = getelementptr i8, ptr %.02740, i64 %i.aj
  %i.al = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.02939, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.al, %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi84 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %i.am = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.02740, i64 %i.am ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 1
  %wide.load85 = load <4 x i32>, ptr %i.an, align 1
  %i.ao = xor <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ap = xor <4 x i32> %wide.load85, %vec.phi84  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <4 x i32> %i.ap, %i.ao
  %i.ar = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ag
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph52.preheader87

.lr.ph52.preheader87:                             ; preds = %.lr.ph52.preheader, %middle.block
  %.02551.ph = phi i32 [ %i.af, %.lr.ph52.preheader ], [ %i.ai, %middle.block ]
  %.12850.ph = phi ptr [ %.02740, %.lr.ph52.preheader ], [ %i.ak, %middle.block ]
  %.349.ph = phi i32 [ %.02939, %.lr.ph52.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph52

.lr.ph52:                                         ; preds = %.lr.ph52.preheader87, %.lr.ph52
  %.02551 = phi i32 [ %i.as, %.lr.ph52 ], [ %.02551.ph, %.lr.ph52.preheader87 ]
  %.12850 = phi ptr [ %i.au, %.lr.ph52 ], [ %.12850.ph, %.lr.ph52.preheader87 ] ; 2 uses
  %.349 = phi i32 [ %i.av, %.lr.ph52 ], [ %.349.ph, %.lr.ph52.preheader87 ]
  %i.as = add nsw i32 %.02551, -1                 ; 2 uses
  %i.at = load i32, ptr %.12850, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %.12850, i64 4
  %i.av = xor i32 %i.at, %.349                    ; 2 uses
  %.not34 = icmp eq i32 %i.as, 0
  br i1 %.not34, label %._crit_edge.loopexit, label %.lr.ph52, !llvm.loop !34

._crit_edge.loopexit:                             ; preds = %.lr.ph52, %middle.block
  %.lcssa = phi i32 [ %i.ar, %middle.block ], [ %i.av, %.lr.ph52 ]
  %i.aw = add nsw i32 %i.af, -1
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 2
  %i.az = getelementptr i8, ptr %.02740, i64 %i.ay
  %scevgep = getelementptr i8, ptr %i.az, i64 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.critedge
  %.3.lcssa = phi i32 [ %.02939, %.critedge ], [ %.lcssa, %._crit_edge.loopexit ]
  %.128.lcssa = phi ptr [ %.02740, %.critedge ], [ %scevgep, %._crit_edge.loopexit ] ; 3 uses
  store i32 %.3.lcssa, ptr %0, align 4, !tbaa !23
  %i.ba = and i32 %.041, 3                        ; 3 uses
  %.not3555 = icmp eq i32 %i.ba, 0
  br i1 %.not3555, label %._crit_edge60, label %.lr.ph59

.lr.ph59:                                         ; preds = %._crit_edge
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.pre64 = load i32, ptr %i.b, align 4, !tbaa !24
  %i.bc = load i8, ptr %.128.lcssa, align 1, !tbaa !25
  %i.bd = sext i32 %.pre64 to i64
  %i.be = getelementptr inbounds i8, ptr %i.bb, i64 %i.bd
  store i8 %i.bc, ptr %i.be, align 1, !tbaa !25
  %i.bf = load i32, ptr %i.b, align 4, !tbaa !24
  %i.bg = add nsw i32 %i.bf, 1
  %i.bh = and i32 %i.bg, 3                        ; 2 uses
  store i32 %i.bh, ptr %i.b, align 4, !tbaa !24
  %.not35 = icmp eq i32 %i.ba, 1
  br i1 %.not35, label %._crit_edge60, label %bb.d

bb.d:                                             ; preds = %.lr.ph59
  %i.bi = getelementptr inbounds nuw i8, ptr %.128.lcssa, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !25
  %i.bk = zext nneg i32 %i.bh to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  store i8 %i.bj, ptr %i.bl, align 1, !tbaa !25
  %i.bm = load i32, ptr %i.b, align 4, !tbaa !24
  %i.bn = add nsw i32 %i.bm, 1
  %i.bo = and i32 %i.bn, 3                        ; 2 uses
  store i32 %i.bo, ptr %i.b, align 4, !tbaa !24
  %.not35.1 = icmp eq i32 %i.ba, 2
  br i1 %.not35.1, label %._crit_edge60, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %.128.lcssa, i64 2
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !25
  %i.br = zext nneg i32 %i.bo to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.br
  store i8 %i.bq, ptr %i.bs, align 1, !tbaa !25
  %i.bt = load i32, ptr %i.b, align 4, !tbaa !24
  %i.bu = add nsw i32 %i.bt, 1
  %i.bv = and i32 %i.bu, 3
  store i32 %i.bv, ptr %i.b, align 4, !tbaa !24
  br label %._crit_edge60

._crit_edge60:                                    ; preds = %.lr.ph59, %bb.d, %bb.e, %._crit_edge.thread, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive4NCab17CCabBlockInStream7PreReadERjS2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(50) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.NArchive::NCab::CTempCabInBuffer2", align 4 ; 12 uses
  %4 = alloca %"class.NArchive::NCab::CCheckSum2", align 4 ; 16 uses
  %i.a = alloca [2 x i8], align 1                 ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  store i32 0, ptr %i.c, align 4, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.f = call noundef i32 @_Z16ReadStream_FALSEP19ISequentialInStreamPvm(ptr noundef %i.e, ptr noundef nonnull %3, i64 noundef 8) ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %.promoted.i = load i32, ptr %i.c, align 4, !tbaa !40 ; 9 uses
  %i.g = add nuw i32 %.promoted.i, 1              ; 2 uses
  store i32 %i.g, ptr %i.c, align 4, !tbaa !40
  %i.h = zext i32 %.promoted.i to i64
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !25
  %i.k = zext i8 %i.j to i32
  %i.l = add nuw i32 %.promoted.i, 2              ; 2 uses
  store i32 %i.l, ptr %i.c, align 4, !tbaa !40
  %i.m = zext i32 %i.g to i64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !25
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 8
  %i.r = or disjoint i32 %i.q, %i.k
  %i.s = add nuw i32 %.promoted.i, 3              ; 2 uses
  store i32 %i.s, ptr %i.c, align 4, !tbaa !40
  %i.t = zext i32 %i.l to i64
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !25
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 16
  %i.y = or disjoint i32 %i.r, %i.x
  %i.z = add nuw i32 %.promoted.i, 4              ; 2 uses
  store i32 %i.z, ptr %i.c, align 4, !tbaa !40
  %i.aa = zext i32 %i.s to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !25
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw i32 %i.ad, 24
  %i.af = or disjoint i32 %i.y, %i.ae             ; 2 uses
  %i.ag = add nuw i32 %.promoted.i, 5             ; 2 uses
  store i32 %i.ag, ptr %i.c, align 4, !tbaa !40
  %i.ah = zext i32 %i.z to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !25
  %i.ak = zext i8 %i.aj to i32
  %i.al = add nuw i32 %.promoted.i, 6             ; 2 uses
  store i32 %i.al, ptr %i.c, align 4, !tbaa !40
  %i.am = zext i32 %i.ag to i64
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !25
  %i.ap = zext i8 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.ap, 8
  %i.ar = or disjoint i32 %i.aq, %i.ak
  store i32 %i.ar, ptr %1, align 4, !tbaa !8
  %i.as = add nuw i32 %.promoted.i, 7             ; 2 uses
  store i32 %i.as, ptr %i.c, align 4, !tbaa !40
  %i.at = zext i32 %i.al to i64
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !25
  %i.aw = zext i8 %i.av to i32
  %i.ax = add nuw i32 %.promoted.i, 8
  store i32 %i.ax, ptr %i.c, align 4, !tbaa !40
  %i.ay = zext i32 %i.as to i64
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !25
  %i.bb = zext i8 %i.ba to i32
  %i.bc = shl nuw nsw i32 %i.bb, 8
  %i.bd = or disjoint i32 %i.bc, %i.aw
  store i32 %i.bd, ptr %2, align 4, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !41 ; 2 uses
  %.not53 = icmp eq i32 %i.bf, 0
  br i1 %.not53, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bg = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !18
  %i.bj = zext i32 %i.bf to i64
  %i.bk = call noundef i32 @_Z16ReadStream_FALSEP19ISequentialInStreamPvm(ptr noundef %i.bg, ptr noundef %i.bi, i64 noundef %i.bj) ; 2 uses
  %.not54 = icmp eq i32 %i.bk, 0
  br i1 %.not54, label %bb.d, label %bb.v

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.bl, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !tbaa !23
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 9 uses
  store i32 0, ptr %i.bm, align 4, !tbaa !24
  %i.bn = load i32, ptr %1, align 4, !tbaa !8     ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !42, !range !43, !noundef !44
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !30
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.bu = icmp ult i32 %i.bn, 2
  br i1 %i.bu, label %bb.u, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.bv = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bw = call noundef i32 @_Z16ReadStream_FALSEP19ISequentialInStreamPvm(ptr noundef %i.bv, ptr noundef nonnull %i.a, i64 noundef 2) ; 2 uses
  %.not55 = icmp eq i32 %i.bw, 0
  br i1 %.not55, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.bx = load i8, ptr %i.a, align 1, !tbaa !25
  %i.by = icmp ne i8 %i.bx, 67
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = icmp ne i8 %i.ca, 75
  %or.cond = select i1 %i.by, i1 true, i1 %i.cb
  br i1 %or.cond, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.g, %bb.h
  %.446.ph = phi i32 [ 1, %bb.h ], [ %i.bw, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.u

bb.i:                                             ; preds = %bb.h
  %i.cc = add i32 %i.bn, -2
  call void @_ZN8NArchive4NCab10CCheckSum26UpdateEPKvj(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull %i.a, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e, %bb.d
  %.1 = phi i32 [ %i.cc, %bb.i ], [ %i.bn, %bb.e ], [ %i.bn, %bb.d ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !30 ; 3 uses
  %i.cf = sub i32 65536, %i.ce
  %i.cg = icmp ult i32 %i.cf, %.1
  br i1 %i.cg, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not56 = icmp eq i32 %.1, 0
  br i1 %.not56, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.ch = zext i32 %.1 to i64                     ; 2 uses
  store i64 %i.ch, ptr %i.b, align 8, !tbaa !46
  %i.ci = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !18
  %i.cl = zext i32 %i.ce to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cl
  %i.cn = call noundef i32 @_Z10ReadStreamP19ISequentialInStreamPvPm(ptr noundef %i.ci, ptr noundef %i.cm, ptr noundef nonnull %i.b) ; 2 uses
  %.not57 = icmp eq i32 %i.cn, 0
  br i1 %.not57, label %bb.m, label %.thread68

.thread68:                                        ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.co = load i32, ptr %i.cd, align 4, !tbaa !30 ; 2 uses
  %i.cp = load i64, ptr %i.b, align 8, !tbaa !46  ; 2 uses
  %i.cq = trunc i64 %i.cp to i32                  ; 3 uses
  %i.cr = load i32, ptr %4, align 4, !tbaa !23    ; 2 uses
  %.not38.i = icmp eq i32 %i.cq, 0
  br i1 %.not38.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !18
  %i.ct = zext i32 %i.co to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %.pre.i = load i32, ptr %i.bm, align 4, !tbaa !24
  %i.cw = load i8, ptr %i.cv, align 4
  %i.cx = zext i8 %i.cw to i32
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 9
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 11
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %.pre64.i = phi i32 [ %.pre.i, %.lr.ph.i ], [ %i.dg, %.loopexit.i ] ; 2 uses
  %.041.i = phi i32 [ %i.cq, %.lr.ph.i ], [ %i.dh, %.loopexit.i ] ; 4 uses
  %.02740.i = phi ptr [ %i.cu, %.lr.ph.i ], [ %i.da, %.loopexit.i ] ; 7 uses
  %.02939.i = phi i32 [ %i.cr, %.lr.ph.i ], [ %.231.i, %.loopexit.i ] ; 5 uses
  %.not33.i = icmp eq i32 %.pre64.i, 0
  br i1 %.not33.i, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.da = getelementptr inbounds nuw i8, ptr %.02740.i, i64 1
  %i.db = load i8, ptr %.02740.i, align 1, !tbaa !25
  %i.dc = sext i32 %.pre64.i to i64
  %i.dd = getelementptr inbounds i8, ptr %i.cv, i64 %i.dc
  store i8 %i.db, ptr %i.dd, align 1, !tbaa !25
  %i.de = load i32, ptr %i.bm, align 4, !tbaa !24
  %i.df = add nsw i32 %i.de, 1
  %i.dg = and i32 %i.df, 3                        ; 3 uses
  store i32 %i.dg, ptr %i.bm, align 4, !tbaa !24
  %i.dh = add i32 %.041.i, -1                     ; 2 uses
  %i.di = icmp eq i32 %i.dg, 0
  br i1 %i.di, label %.preheader.preheader.i, label %.loopexit.i

.preheader.preheader.i:                           ; preds = %bb.o
  %6 = load i8, ptr %5, align 1, !tbaa !25
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 8
  %9 = or disjoint i32 %8, %i.cx
  %10 = load i8, ptr %i.cy, align 2, !tbaa !25
  %i.dj = zext i8 %10 to i32
  %i.dk = shl nuw nsw i32 %i.dj, 16
  %i.dl = or disjoint i32 %9, %i.dk
  %i.dm = load i8, ptr %i.cz, align 1, !tbaa !25
  %i.dn = zext i8 %i.dm to i32
  %i.do = shl nuw i32 %i.dn, 24
  %i.dp = or disjoint i32 %i.dl, %i.do
  %i.dq = xor i32 %i.dp, %.02939.i
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.preheader.i, %bb.o
  %.231.i = phi i32 [ %.02939.i, %bb.o ], [ %i.dq, %.preheader.preheader.i ] ; 2 uses
  %.not.i = icmp eq i32 %i.dh, 0
  br i1 %.not.i, label %._crit_edge.thread.i, label %bb.n, !llvm.loop !0

._crit_edge.thread.i:                             ; preds = %.loopexit.i, %bb.m
  %.029.lcssa.ph.i = phi i32 [ %i.cr, %bb.m ], [ %.231.i, %.loopexit.i ]
  store i32 %.029.lcssa.ph.i, ptr %4, align 4, !tbaa !23
  br label %.loopexit

.critedge.i:                                      ; preds = %bb.n
  %i.dr = lshr i32 %.041.i, 2                     ; 5 uses
  %.not3448.i = icmp eq i32 %i.dr, 0
  br i1 %.not3448.i, label %._crit_edge.i, label %.lr.ph52.i.preheader

.lr.ph52.i.preheader:                             ; preds = %.critedge.i
  %i.ds = zext nneg i32 %i.dr to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %.041.i, 32
  br i1 %min.iters.check, label %.lr.ph52.i.preheader121, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph52.i.preheader
  %n.vec = and i64 %i.ds, 1073741816              ; 4 uses
  %i.dt = trunc nuw nsw i64 %n.vec to i32
  %i.du = sub nsw i32 %i.dr, %i.dt
  %i.dv = shl nuw nsw i64 %n.vec, 2
  %i.dw = getelementptr i8, ptr %.02740.i, i64 %i.dv
  %i.dx = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.02939.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.dx, %vector.ph ], [ %i.ea, %vector.body ]
  %vec.phi99 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.eb, %vector.body ]
  %i.dy = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.02740.i, i64 %i.dy ; 2 uses
  %i.dz = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 1
  %wide.load100 = load <4 x i32>, ptr %i.dz, align 1
  %i.ea = xor <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.eb = xor <4 x i32> %wide.load100, %vec.phi99 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ec = icmp eq i64 %index.next, %n.vec
  br i1 %i.ec, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <4 x i32> %i.eb, %i.ea
  %i.ed = call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ds
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %.lr.ph52.i.preheader121

.lr.ph52.i.preheader121:                          ; preds = %.lr.ph52.i.preheader, %middle.block
  %.02551.i.ph = phi i32 [ %i.dr, %.lr.ph52.i.preheader ], [ %i.du, %middle.block ]
  %.12850.i.ph = phi ptr [ %.02740.i, %.lr.ph52.i.preheader ], [ %i.dw, %middle.block ]
  %.349.i.ph = phi i32 [ %.02939.i, %.lr.ph52.i.preheader ], [ %i.ed, %middle.block ]
  br label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %.lr.ph52.i.preheader121, %.lr.ph52.i
  %.02551.i = phi i32 [ %i.ee, %.lr.ph52.i ], [ %.02551.i.ph, %.lr.ph52.i.preheader121 ]
  %.12850.i = phi ptr [ %i.eg, %.lr.ph52.i ], [ %.12850.i.ph, %.lr.ph52.i.preheader121 ] ; 2 uses
  %.349.i = phi i32 [ %i.eh, %.lr.ph52.i ], [ %.349.i.ph, %.lr.ph52.i.preheader121 ]
  %i.ee = add nsw i32 %.02551.i, -1               ; 2 uses
  %i.ef = load i32, ptr %.12850.i, align 1
  %i.eg = getelementptr inbounds nuw i8, ptr %.12850.i, i64 4
  %i.eh = xor i32 %i.ef, %.349.i                  ; 2 uses
  %.not34.i = icmp eq i32 %i.ee, 0
  br i1 %.not34.i, label %._crit_edge.loopexit.i, label %.lr.ph52.i, !llvm.loop !36

._crit_edge.loopexit.i:                           ; preds = %.lr.ph52.i, %middle.block
  %.lcssa95 = phi i32 [ %i.ed, %middle.block ], [ %i.eh, %.lr.ph52.i ]
  %i.ei = add nsw i32 %i.dr, -1
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = shl nuw nsw i64 %i.ej, 2
  %i.el = getelementptr i8, ptr %.02740.i, i64 %i.ek
  %scevgep.i = getelementptr i8, ptr %i.el, i64 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.critedge.i
  %.3.lcssa.i = phi i32 [ %.02939.i, %.critedge.i ], [ %.lcssa95, %._crit_edge.loopexit.i ]
  %.128.lcssa.i = phi ptr [ %.02740.i, %.critedge.i ], [ %scevgep.i, %._crit_edge.loopexit.i ] ; 3 uses
  store i32 %.3.lcssa.i, ptr %4, align 4, !tbaa !23
  %i.em = and i32 %.041.i, 3                      ; 3 uses
  %.not3555.i = icmp eq i32 %i.em, 0
  br i1 %.not3555.i, label %.loopexit, label %.lr.ph59.i

.lr.ph59.i:                                       ; preds = %._crit_edge.i
  %.promoted = load i32, ptr %i.bm, align 4, !tbaa !24 ; 2 uses
  %i.en = load i8, ptr %.128.lcssa.i, align 1, !tbaa !25
  store i8 %i.en, ptr %i.cv, align 4, !tbaa !25
  %i.eo = add nsw i32 %.promoted, 1
  %i.ep = and i32 %i.eo, 3                        ; 2 uses
  store i32 %i.ep, ptr %i.bm, align 4, !tbaa !24
  %.not35.i = icmp eq i32 %i.em, 1
  br i1 %.not35.i, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %.lr.ph59.i
  %i.eq = getelementptr inbounds nuw i8, ptr %.128.lcssa.i, i64 1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !25
  %i.es = zext nneg i32 %i.ep to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.es
  store i8 %i.er, ptr %i.et, align 1, !tbaa !25
  %i.eu = and i32 %.promoted, 3
  %i.ev = xor i32 %i.eu, 2                        ; 3 uses
  store i32 %i.ev, ptr %i.bm, align 4, !tbaa !24
  %.not35.i.1 = icmp eq i32 %i.em, 2
  br i1 %.not35.i.1, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ew = getelementptr inbounds nuw i8, ptr %.128.lcssa.i, i64 2
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !25
  %i.ey = zext nneg i32 %i.ev to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.ey
  store i8 %i.ex, ptr %i.ez, align 1, !tbaa !25
  %i.fa = add nuw nsw i32 %i.ev, 1
  %i.fb = and i32 %i.fa, 3
  store i32 %i.fb, ptr %i.bm, align 4, !tbaa !24
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph59.i, %bb.p, %bb.q, %._crit_edge.i, %._crit_edge.thread.i
  %i.fc = add i32 %i.co, %i.cq                    ; 2 uses
  store i32 %i.fc, ptr %i.cd, align 4, !tbaa !30
  %.not58 = icmp eq i64 %i.cp, %i.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br i1 %.not58, label %bb.r, label %bb.u

bb.r:                                             ; preds = %.loopexit, %bb.k
  %i.fd = phi i32 [ %i.fc, %.loopexit ], [ %i.ce, %bb.k ]
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.fd, ptr %i.fe, align 8, !tbaa !47
  %i.ff = load i32, ptr %i.bm, align 4, !tbaa !24 ; 5 uses
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %.lr.ph.i62, label %_ZN8NArchive4NCab10CCheckSum216FinishDataUpdateEv.exit

.lr.ph.i62:                                       ; preds = %bb.r
  %.promoted.i63 = load i32, ptr %4, align 4      ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.ff to i64 ; 3 uses
  %min.iters.check103 = icmp ult i32 %i.ff, 8
  br i1 %min.iters.check103, label %scalar.ph102.preheader, label %vector.ph104

vector.ph104:                                     ; preds = %.lr.ph.i62
  %n.vec105 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %i.fi = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.promoted.i63, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ff, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph104
  %index107 = phi i64 [ 0, %vector.ph104 ], [ %index.next112, %vector.body106 ] ; 2 uses
  %vec.phi108 = phi <4 x i32> [ %i.fi, %vector.ph104 ], [ %i.fu, %vector.body106 ]
  %vec.phi109 = phi <4 x i32> [ zeroinitializer, %vector.ph104 ], [ %i.fv, %vector.body106 ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph104 ], [ %vec.ind.next, %vector.body106 ] ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 %index107 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %wide.load110 = load <4 x i8>, ptr %i.fj, align 4, !tbaa !25
  %wide.load111 = load <4 x i8>, ptr %i.fk, align 4, !tbaa !25
  %i.fl = zext <4 x i8> %wide.load110 to <4 x i32>
  %i.fm = zext <4 x i8> %wide.load111 to <4 x i32>
  %i.fn = xor <4 x i32> %vec.ind, splat (i32 -1)
  %i.fo = add nsw <4 x i32> %broadcast.splat, %i.fn
  %reass.sub = sub <4 x i32> %broadcast.splat, %vec.ind
  %i.fp = shl nuw nsw <4 x i32> %i.fo, splat (i32 3)
  %i.fq = shl <4 x i32> %reass.sub, splat (i32 3)
  %i.fr = add <4 x i32> %i.fq, splat (i32 -40)
  %i.fs = shl <4 x i32> %i.fl, %i.fp
  %i.ft = shl <4 x i32> %i.fm, %i.fr
  %i.fu = xor <4 x i32> %i.fs, %vec.phi108        ; 2 uses
  %i.fv = xor <4 x i32> %i.ft, %vec.phi109        ; 2 uses
  %index.next112 = add nuw i64 %index107, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.fw = icmp eq i64 %index.next112, %n.vec105
  br i1 %i.fw, label %middle.block113, label %vector.body106, !llvm.loop !37

middle.block113:                                  ; preds = %vector.body106
  %bin.rdx114 = xor <4 x i32> %i.fv, %i.fu
  %i.fx = call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx114) ; 2 uses
  %cmp.n115 = icmp eq i64 %n.vec105, %wide.trip.count.i
  br i1 %cmp.n115, label %._crit_edge.i64, label %scalar.ph102.preheader

scalar.ph102.preheader:                           ; preds = %.lr.ph.i62, %middle.block113
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i62 ], [ %n.vec105, %middle.block113 ]
  %.ph = phi i32 [ %.promoted.i63, %.lr.ph.i62 ], [ %i.fx, %middle.block113 ]
  br label %scalar.ph102

._crit_edge.i64:                                  ; preds = %scalar.ph102, %middle.block113
  %.lcssa = phi i32 [ %i.fx, %middle.block113 ], [ %i.gh, %scalar.ph102 ]
  store i32 %.lcssa, ptr %4, align 4, !tbaa !23
  br label %_ZN8NArchive4NCab10CCheckSum216FinishDataUpdateEv.exit

scalar.ph102:                                     ; preds = %scalar.ph102.preheader, %scalar.ph102
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph102 ], [ %indvars.iv.i.ph, %scalar.ph102.preheader ] ; 3 uses
  %i.fy = phi i32 [ %i.gh, %scalar.ph102 ], [ %.ph, %scalar.ph102.preheader ]
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fh, i64 %indvars.iv.i
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !25
end_hunk_0
