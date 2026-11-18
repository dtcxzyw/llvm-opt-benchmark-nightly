Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaCut?download=true
inline.NumInlined: 647
inline.NumDeleted: 136
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 39
begin_hunk_0_@Gia_ManCollectCutFuncs:bb.a
  %i.d = tail call noalias dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !102
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54   ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %.val3338 = load i32, ptr %i.h, align 4, !tbaa !89
  %i.i = icmp sgt i32 %.val3338, 0
  br i1 %i.i, label %.lr.ph40, label %.critedge

.lr.ph40:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.k = sext i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph40, %.loopexit
  %i.l = phi ptr [ %i.g, %.lr.ph40 ], [ %i.bz, %.loopexit ] ; 3 uses
  %i.m = phi ptr [ %i.d, %.lr.ph40 ], [ %i.ca, %.loopexit ] ; 3 uses
  %i.n = phi ptr [ %i.d, %.lr.ph40 ], [ %i.cb, %.loopexit ] ; 3 uses
  %i.o = phi i32 [ 1000, %.lr.ph40 ], [ %i.cc, %.loopexit ] ; 3 uses
  %i.p = phi i32 [ 0, %.lr.ph40 ], [ %i.cd, %.loopexit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph40 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.q = getelementptr i8, ptr %i.l, i64 8
  %.val = load ptr, ptr %i.q, align 8, !tbaa !56
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %indvars.iv ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 4
  %.val32 = load i32, ptr %i.s, align 4, !tbaa !80
  %.not29 = icmp eq i32 %.val32, 0
  br i1 %.not29, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %i.r, i64 8        ; 2 uses
  %.val31 = load ptr, ptr %i.t, align 8, !tbaa !57 ; 3 uses
  %i.u = load i32, ptr %.val31, align 4, !tbaa !58 ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.val31, i64 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %.val30.pre48 = phi ptr [ %.val30.pre49, %bb.m ], [ %.val31, %.lr.ph.preheader ] ; 3 uses
  %i.x = phi i32 [ %i.bo, %bb.m ], [ %i.u, %.lr.ph.preheader ]
  %i.y = phi ptr [ %i.bq, %bb.m ], [ %i.m, %.lr.ph.preheader ] ; 3 uses
  %i.z = phi ptr [ %i.br, %bb.m ], [ %i.n, %.lr.ph.preheader ] ; 5 uses
  %i.aa = phi i32 [ %i.bs, %bb.m ], [ %i.o, %.lr.ph.preheader ] ; 8 uses
  %i.ab = phi i32 [ %i.bt, %bb.m ], [ %i.p, %.lr.ph.preheader ] ; 4 uses
  %.037 = phi ptr [ %i.bx, %bb.m ], [ %i.w, %.lr.ph.preheader ] ; 4 uses
  %.02636 = phi i32 [ %i.bu, %bb.m ], [ 0, %.lr.ph.preheader ]
  %i.ac = load i32, ptr %.037, align 4, !tbaa !58 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, %1
  br i1 %i.ad, label %bb.d, label %bb.m

bb.d:                                             ; preds = %.lr.ph
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !67  ; 4 uses
  %i.af = getelementptr [4 x i8], ptr %.037, i64 %i.k
  %i.ag = getelementptr i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !58
  %i.ai = ashr i32 %i.ah, 1                       ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !71
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !72
  %i.an = ashr i32 %i.ai, %i.am
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !74
  %i.ar = load i32, ptr %i.ae, align 8, !tbaa !75
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !76
  %i.au = and i32 %i.at, %i.ai
  %i.av = mul nsw i32 %i.au, %i.ar
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !77
  %i.az = icmp eq i32 %i.ab, %i.aa
  br i1 %i.az, label %bb.e, label %Vec_WrdPush.exit

bb.e:                                             ; preds = %bb.d
  %i.ba = icmp slt i32 %i.aa, 16
  br i1 %i.ba, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not9.i.i = icmp eq ptr %i.z, null
  br i1 %.not9.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.z, i64 noundef 128) #31
  br label %Vec_WrdGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.f
  %i.bc = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #32
  br label %Vec_WrdGrow.exit11.sink.split.i

bb.i:                                             ; preds = %bb.e
  %i.bd = icmp samesign ult i32 %i.aa, 1073741823
  %i.be = shl nuw nsw i32 %i.aa, 1
  %spec.select.i = select i1 %i.bd, i32 %i.be, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.aa, %spec.select.i
  br i1 %.not.i9.i, label %bb.j, label %Vec_WrdPush.exit

bb.j:                                             ; preds = %bb.i
  %.not9.i10.i = icmp eq ptr %i.z, null
  %i.bf = zext nneg i32 %spec.select.i to i64
  %i.bg = shl nuw nsw i64 %i.bf, 3                ; 2 uses
  br i1 %.not9.i10.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = tail call ptr @realloc(ptr noundef nonnull %i.z, i64 noundef %i.bg) #31
  br label %Vec_WrdGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.bi = tail call noalias ptr @malloc(i64 noundef %i.bg) #32
  br label %Vec_WrdGrow.exit11.sink.split.i

Vec_WrdGrow.exit11.sink.split.i:                  ; preds = %bb.k, %bb.l, %bb.g, %bb.h
  %storemerge = phi ptr [ %i.bc, %bb.h ], [ %i.bb, %bb.g ], [ %i.bh, %bb.k ], [ %i.bi, %bb.l ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.h ], [ 16, %bb.g ], [ %spec.select.i, %bb.k ], [ %spec.select.i, %bb.l ] ; 2 uses
  store ptr %storemerge, ptr %i.e, align 8, !tbaa !102
  store i32 %spec.select.sink.i, ptr %i.b, align 8, !tbaa !103
  %.pre.pre = load i32, ptr %.037, align 4, !tbaa !58
  %.val30.pre.pre = load ptr, ptr %i.t, align 8, !tbaa !57
  br label %Vec_WrdPush.exit

Vec_WrdPush.exit:                                 ; preds = %bb.d, %bb.i, %Vec_WrdGrow.exit11.sink.split.i
  %.val30.pre = phi ptr [ %.val30.pre48, %bb.d ], [ %.val30.pre48, %bb.i ], [ %.val30.pre.pre, %Vec_WrdGrow.exit11.sink.split.i ] ; 2 uses
  %.pre = phi i32 [ %1, %bb.d ], [ %1, %bb.i ], [ %.pre.pre, %Vec_WrdGrow.exit11.sink.split.i ]
  %i.bj = phi ptr [ %i.y, %bb.d ], [ %i.y, %bb.i ], [ %storemerge, %Vec_WrdGrow.exit11.sink.split.i ] ; 3 uses
  %i.bk = phi i32 [ %i.aa, %bb.d ], [ %i.aa, %bb.i ], [ %spec.select.sink.i, %Vec_WrdGrow.exit11.sink.split.i ]
  %i.bl = add nsw i32 %i.ab, 1                    ; 2 uses
  store i32 %i.bl, ptr %i.c, align 4, !tbaa !104
  %i.bm = sext i32 %i.ab to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.bm
  store i64 %i.ay, ptr %i.bn, align 8, !tbaa !77
  %.pre44 = load i32, ptr %.val30.pre, align 4, !tbaa !58
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %Vec_WrdPush.exit
  %.val30.pre49 = phi ptr [ %.val30.pre48, %.lr.ph ], [ %.val30.pre, %Vec_WrdPush.exit ]
  %i.bo = phi i32 [ %i.x, %.lr.ph ], [ %.pre44, %Vec_WrdPush.exit ] ; 2 uses
  %i.bp = phi i32 [ %i.ac, %.lr.ph ], [ %.pre, %Vec_WrdPush.exit ]
  %i.bq = phi ptr [ %i.y, %.lr.ph ], [ %i.bj, %Vec_WrdPush.exit ] ; 2 uses
  %i.br = phi ptr [ %i.z, %.lr.ph ], [ %i.bj, %Vec_WrdPush.exit ] ; 2 uses
  %i.bs = phi i32 [ %i.aa, %.lr.ph ], [ %i.bk, %Vec_WrdPush.exit ] ; 2 uses
  %i.bt = phi i32 [ %i.ab, %.lr.ph ], [ %i.bl, %Vec_WrdPush.exit ] ; 2 uses
  %i.bu = add nuw nsw i32 %.02636, 1              ; 2 uses
  %i.bv = sext i32 %i.bp to i64
  %i.bw = getelementptr [4 x i8], ptr %.037, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 8
  %i.by = icmp slt i32 %i.bu, %i.bo
  br i1 %i.by, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !268

.loopexit.loopexit:                               ; preds = %bb.m
  %.pre45 = load ptr, ptr %i.f, align 8, !tbaa !54
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c, %bb.b
  %i.bz = phi ptr [ %.pre45, %.loopexit.loopexit ], [ %i.l, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %i.ca = phi ptr [ %i.bq, %.loopexit.loopexit ], [ %i.m, %bb.c ], [ %i.m, %bb.b ]
  %i.cb = phi ptr [ %i.br, %.loopexit.loopexit ], [ %i.n, %bb.c ], [ %i.n, %bb.b ]
  %i.cc = phi i32 [ %i.bs, %.loopexit.loopexit ], [ %i.o, %bb.c ], [ %i.o, %bb.b ]
  %i.cd = phi i32 [ %i.bt, %.loopexit.loopexit ], [ %i.p, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bz, i64 4
  %.val33 = load i32, ptr %i.ce, align 4, !tbaa !89
  %i.cf = sext i32 %.val33 to i64
  %i.cg = icmp slt i64 %indvars.iv.next, %i.cf
  br i1 %i.cg, label %bb.b, label %.critedge, !llvm.loop !269

.critedge:                                        ; preds = %.loopexit, %bb.a
  %.val34 = phi i32 [ 0, %bb.a ], [ %i.cd, %.loopexit ]
  tail call void @Gia_StoFree(ptr noundef nonnull %i.a)
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !87
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !94
  %i.cl = getelementptr i8, ptr %i.ck, i64 4
  %.val3.i = load i32, ptr %i.cl, align 4, !tbaa !80
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !95
  %i.co = getelementptr i8, ptr %i.cn, i64 4
  %.val.i = load i32, ptr %i.co, align 4, !tbaa !80
  %i.cp = add i32 %.val.i, %.val3.i
  %i.cq = xor i32 %i.cp, -1
  %i.cr = add i32 %i.ci, %i.cq
  %i.cs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef %.val34, i32 noundef %i.cr) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge
  ret ptr %i.b
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Gia_ManCountNpnClasses(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #15 {
bb.a:
  %i.a = alloca i64, align 16                     ; 12 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #32 ; 5 uses
  %i.c = add i32 %2, -1
  %or.cond.i.i = icmp ult i32 %i.c, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %2 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.b, align 8, !tbaa !81
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.e, align 8, !tbaa !57
  store i32 %2, ptr %i.d, align 4, !tbaa !80
  br label %Vec_IntStart.exit

Vec_IntAlloc.exit.i:                              ; preds = %bb.a
  %i.f = sext i32 %spec.store.select.i.i to i64
  %i.g = shl nsw i64 %i.f, 2
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !57
  store i32 %2, ptr %i.d, align 4, !tbaa !80
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %Vec_IntStart.exit, label %bb.b

bb.b:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.j = sext i32 %2 to i64
  %i.k = shl nsw i64 %i.j, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.h, i8 0, i64 %i.k, i1 false)
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.b
  %.val15 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.h, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.l = getelementptr i8, ptr %3, i64 4
  %.val1623 = load i32, ptr %i.l, align 4, !tbaa !104 ; 2 uses
  %i.m = icmp sgt i32 %.val1623, 0
  br i1 %i.m, label %.lr.ph25, label %.critedge

.lr.ph25:                                         ; preds = %Vec_IntStart.exit
  %i.n = getelementptr i8, ptr %3, i64 8
  %.val17 = load ptr, ptr %i.n, align 8, !tbaa !102
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !91   ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %i.r = getelementptr i8, ptr %i.p, i64 8
  %.val16.i = load ptr, ptr %i.r, align 8, !tbaa !57
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = getelementptr i8, ptr %1, i64 8
  %i.x = load i32, ptr %0, align 8, !tbaa !75     ; 5 uses
  %i.y = icmp sgt i32 %i.x, 0
  %i.z = shl i32 %i.x, 1                          ; 3 uses
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.z, i32 1)
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64 ; 2 uses
  %i.aa = sext i32 %i.x to i64
  %i.ab = shl nsw i64 %i.aa, 3                    ; 2 uses
  %i.ac = zext nneg i32 %.val1623 to i64
  %.not = icmp eq i32 %i.z, 8
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 3 uses
  %i.ad = icmp slt i32 %i.z, 4
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod49 = icmp ne i64 %xtraiter, 0
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph25, %Vec_MemHashLookup.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph25 ], [ %indvars.iv.next, %Vec_MemHashLookup.exit.thread ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.val17, i64 %indvars.iv
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !77
  store i64 %i.af, ptr %i.a, align 16, !tbaa !77
  br i1 %i.y, label %.lr.ph.i.i.preheader, label %Vec_MemHashKey.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  br i1 %.not, label %vector.body, label %.lr.ph.i.i.preheader43

.lr.ph.i.i.preheader43:                           ; preds = %.lr.ph.i.i.preheader
  br i1 %i.ad, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i

vector.body:                                      ; preds = %.lr.ph.i.i.preheader
  %wide.load = load <4 x i32>, ptr %i.a, align 16, !tbaa !58
  %wide.load40 = load <4 x i32>, ptr %4, align 16, !tbaa !58
  %i.ag = mul <4 x i32> %wide.load, <i32 1699, i32 4177, i32 5147, i32 5647>
  %i.ah = mul <4 x i32> %wide.load40, <i32 6343, i32 7103, i32 7873, i32 8147>
  %i.ai = add <4 x i32> %i.ah, %i.ag
  %5 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ai)
  br label %Vec_MemHashKey.exit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader43, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader43 ] ; 6 uses
  %.012.i.i = phi i32 [ %i.bk, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader43 ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader43 ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.ak = load i32, ptr %i.aj, align 16, !tbaa !58
  %i.al = and i64 %indvars.iv.i.i, 4
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.al
  %i.an = load i32, ptr %i.am, align 16, !tbaa !58
  %i.ao = mul i32 %i.an, %i.ak
  %i.ap = add i32 %i.ao, %.012.i.i
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !58
  %i.as = and i64 %indvars.iv.next.i.i, 5
  %i.at = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !58
  %i.av = mul i32 %i.au, %i.ar
  %i.aw = add i32 %i.av, %i.ap
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.1
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !58
  %i.az = and i64 %indvars.iv.next.i.i.1, 6
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !58
  %i.bc = mul i32 %i.bb, %i.ay
  %i.bd = add i32 %i.bc, %i.aw
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.2
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !58
  %i.bg = and i64 %indvars.iv.next.i.i.2, 7
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !58
  %i.bj = mul i32 %i.bi, %i.bf
  %i.bk = add i32 %i.bj, %i.bd                    ; 3 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %Vec_MemHashKey.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !270

Vec_MemHashKey.exit.i.loopexit.unr-lcssa:         ; preds = %.lr.ph.i.i
  br i1 %lcmp.mod.not, label %Vec_MemHashKey.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %Vec_MemHashKey.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader43
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader43 ], [ %indvars.iv.next.i.i.3, %Vec_MemHashKey.exit.i.loopexit.unr-lcssa ]
  %.012.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader43 ], [ %i.bk, %Vec_MemHashKey.exit.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod49)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ], [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 3 uses
  %.012.i.i.epil = phi i32 [ %i.br, %.lr.ph.i.i.epil ], [ %.012.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i.epil
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !58
  %i.bn = and i64 %indvars.iv.i.i.epil, 7
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !58
  %i.bq = mul i32 %i.bp, %i.bm
  %i.br = add i32 %i.bq, %.012.i.i.epil           ; 2 uses
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %Vec_MemHashKey.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !271

Vec_MemHashKey.exit.i:                            ; preds = %Vec_MemHashKey.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %vector.body, %bb.c
  %.0.lcssa.i.i = phi i32 [ 0, %bb.c ], [ %5, %vector.body ], [ %i.bk, %Vec_MemHashKey.exit.i.loopexit.unr-lcssa ], [ %i.br, %.lr.ph.i.i.epil ]
  %.val.i.i = load i32, ptr %i.q, align 4, !tbaa !80
  %i.bs = urem i32 %.0.lcssa.i.i, %.val.i.i
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %.val16.i, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !58 ; 5 uses
  %.not17.i = icmp eq i32 %i.bv, -1
  br i1 %.not17.i, label %Vec_MemHashLookup.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %Vec_MemHashKey.exit.i
  %i.bw = load ptr, ptr %i.s, align 8, !tbaa !71  ; 2 uses
  %i.bx = load i32, ptr %i.t, align 8, !tbaa !72  ; 2 uses
  %i.by = load i32, ptr %i.u, align 4, !tbaa !76  ; 2 uses
  %i.bz = ashr i32 %i.bv, %i.bx
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !74
  %i.cd = and i32 %i.bv, %i.by
  %i.ce = mul nsw i32 %i.cd, %i.x
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.cf
  %bcmp.i21 = call i32 @bcmp(ptr %i.cg, ptr nonnull readonly %i.a, i64 %i.ab)
  %.not15.i22 = icmp eq i32 %bcmp.i21, 0
  br i1 %.not15.i22, label %Vec_MemHashLookup.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.ch = load ptr, ptr %i.v, align 8, !tbaa !92
  %i.ci = getelementptr i8, ptr %i.ch, i64 8
  %.val.i = load ptr, ptr %i.ci, align 8, !tbaa !57
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.cj = ashr i32 %i.cu, %i.bx
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !74
  %i.cn = and i32 %i.cu, %i.by
  %i.co = mul nsw i32 %i.cn, %i.x
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.cp
  %bcmp.i = call i32 @bcmp(ptr %i.cq, ptr nonnull readonly %i.a, i64 %i.ab)
  %.not15.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not15.i, label %Vec_MemHashLookup.exit, label %bb.e, !llvm.loop !15

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.cr = phi i32 [ %i.bv, %.lr.ph ], [ %i.cu, %bb.d ]
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !58 ; 5 uses
  %.not.i18 = icmp eq i32 %i.cu, -1
  br i1 %.not.i18, label %Vec_MemHashLookup.exit.thread, label %bb.d, !llvm.loop !15

Vec_MemHashLookup.exit:                           ; preds = %bb.d, %.lr.ph.i
  %.pr = phi i32 [ %i.bv, %.lr.ph.i ], [ %i.cu, %bb.d ]
  %.val = load ptr, ptr %i.w, align 8, !tbaa !57
  %i.cv = sext i32 %.pr to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !58 ; 2 uses
  %i.cy = icmp eq i32 %i.cx, -1
  br i1 %i.cy, label %Vec_MemHashLookup.exit.thread, label %bb.f

bb.f:                                             ; preds = %Vec_MemHashLookup.exit
  %i.cz = sext i32 %i.cx to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %.val15, i64 %i.cz ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !58
  %i.dc = add nsw i32 %i.db, 1
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !58
  br label %Vec_MemHashLookup.exit.thread

Vec_MemHashLookup.exit.thread:                    ; preds = %bb.e, %Vec_MemHashKey.exit.i, %bb.f, %Vec_MemHashLookup.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dd = icmp samesign ult i64 %indvars.iv.next, %i.ac
  br i1 %i.dd, label %bb.c, label %.critedge, !llvm.loop !272

.critedge:                                        ; preds = %Vec_MemHashLookup.exit.thread, %Vec_IntStart.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_ManMatchFilterClasses(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %5 = alloca %struct.Vec_Int_t_, align 8         ; 4 uses
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.b = getelementptr i8, ptr %2, i64 4          ; 3 uses
  %.val49 = load i32, ptr %i.b, align 4, !tbaa !80
  %i.c = tail call ptr @Abc_MergeSortCost(ptr noundef %.val, i32 noundef %.val49) #30 ; 3 uses
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #32 ; 5 uses
  %i.e = add i32 %3, -1
  %or.cond.i = icmp ult i32 %i.e, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %3 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  store i32 0, ptr %i.f, align 4, !tbaa !104
  store i32 %spec.store.select.i, ptr %i.d, align 8, !tbaa !103
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_WrdAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sext i32 %spec.store.select.i to i64
  %i.h = shl nsw i64 %i.g, 3
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #32
  br label %Vec_WrdAlloc.exit

Vec_WrdAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !102
  %i.l = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val48 = load i32, ptr %i.l, align 4, !tbaa !80 ; 5 uses
  %i.m = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #32 ; 8 uses
  %i.n = add i32 %.val48, -1
  %or.cond.i.i = icmp ult i32 %i.n, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val48 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.m, align 8, !tbaa !81
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %Vec_WrdAlloc.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr null, ptr %i.p, align 8, !tbaa !57
  store i32 %.val48, ptr %i.o, align 4, !tbaa !80
  br label %Vec_IntStartFull.exit

Vec_IntAlloc.exit.i:                              ; preds = %Vec_WrdAlloc.exit
  %i.q = sext i32 %spec.store.select.i.i to i64
  %i.r = shl nsw i64 %i.q, 2
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #32 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !57
  store i32 %.val48, ptr %i.o, align 4, !tbaa !80
  %.not.i54 = icmp eq ptr %i.s, null
  br i1 %.not.i54, label %Vec_IntStartFull.exit, label %bb.c

bb.c:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.u = sext i32 %.val48 to i64
  %i.v = shl nsw i64 %i.u, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.s, i8 -1, i64 %i.v, i1 false)
  br label %Vec_IntStartFull.exit

Vec_IntStartFull.exit:                            ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.c
  %.val53 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.s, %bb.c ]
  %.val47 = load i32, ptr %i.b, align 4, !tbaa !80
  %i.w = getelementptr i8, ptr %1, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aa = getelementptr i8, ptr %i.m, i64 8
  %i.ab = zext i32 %.val47 to i64
  br label %bb.d

bb.d:                                             ; preds = %Vec_WrdPush.exit, %Vec_IntStartFull.exit
  %i.ac = phi ptr [ %i.bn, %Vec_WrdPush.exit ], [ %i.j, %Vec_IntStartFull.exit ] ; 6 uses
  %i.ad = phi i32 [ %i.bo, %Vec_WrdPush.exit ], [ %spec.store.select.i, %Vec_IntStartFull.exit ] ; 7 uses
  %i.ae = phi i32 [ %i.bp, %Vec_WrdPush.exit ], [ 0, %Vec_IntStartFull.exit ] ; 5 uses
  %indvars.iv60 = phi i64 [ %i.af, %Vec_WrdPush.exit ], [ %i.ab, %Vec_IntStartFull.exit ] ; 2 uses
  %i.af = add nsw i64 %indvars.iv60, -1           ; 2 uses
  %i.ag = trunc nuw i64 %indvars.iv60 to i32
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.preheader, label %bb.p

.preheader:                                       ; preds = %bb.d
  %.val4656 = load i32, ptr %i.l, align 4, !tbaa !80 ; 2 uses
  %i.ai = icmp sgt i32 %.val4656, 0
  br i1 %i.ai, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %.val44 = load ptr, ptr %i.w, align 8, !tbaa !57
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.af
  %.pre64 = load i32, ptr %i.aj, align 4, !tbaa !58
  %i.ak = zext nneg i32 %.val4656 to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %.03858 = phi i64 [ -1, %.lr.ph ], [ %.2, %bb.g ] ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.val44, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !58
  %.not43 = icmp eq i32 %i.am, %.pre64
  br i1 %.not43, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.x, align 8, !tbaa !71
  %i.ao = load i32, ptr %i.y, align 8, !tbaa !72
  %i.ap = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.aq = lshr i32 %i.ap, %i.ao
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !74
  %i.au = load i32, ptr %0, align 8, !tbaa !75
  %i.av = load i32, ptr %i.z, align 4, !tbaa !76
  %i.aw = and i32 %i.av, %i.ap
  %i.ax = mul nsw i32 %i.aw, %i.au
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !77
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.03858, i64 %i.ba)
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.val53, i64 %indvars.iv
  store i32 %i.ae, ptr %i.bb, align 4, !tbaa !58
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.2 = phi i64 [ %.03858, %bb.e ], [ %spec.select, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = icmp samesign ult i64 %indvars.iv.next, %i.ak
  br i1 %i.bc, label %bb.e, label %.critedge, !llvm.loop !273

.critedge:                                        ; preds = %bb.g, %.preheader
  %.038.lcssa = phi i64 [ -1, %.preheader ], [ %.2, %bb.g ]
  %i.bd = icmp eq i32 %i.ae, %i.ad
  br i1 %i.bd, label %bb.h, label %Vec_WrdPush.exit

bb.h:                                             ; preds = %.critedge
  %i.be = icmp slt i32 %i.ad, 16
  br i1 %i.be, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.ac, null
  br i1 %.not9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.ac, i64 noundef 128) #31
  br label %Vec_WrdGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.bg = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #32
  br label %Vec_WrdGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.h
  %i.bh = icmp samesign ult i32 %i.ad, 1073741823
  %i.bi = shl nuw nsw i32 %i.ad, 1
  %spec.select.i = select i1 %i.bh, i32 %i.bi, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.ad, %spec.select.i
  br i1 %.not.i9.i, label %bb.m, label %Vec_WrdPush.exit

bb.m:                                             ; preds = %bb.l
  %.not9.i10.i = icmp eq ptr %i.ac, null
  %i.bj = zext nneg i32 %spec.select.i to i64
  %i.bk = shl nuw nsw i64 %i.bj, 3                ; 2 uses
  br i1 %.not9.i10.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = tail call ptr @realloc(ptr noundef nonnull %i.ac, i64 noundef %i.bk) #31
  br label %Vec_WrdGrow.exit11.sink.split.i

bb.o:                                             ; preds = %bb.m
  %i.bm = tail call noalias ptr @malloc(i64 noundef %i.bk) #32
  br label %Vec_WrdGrow.exit11.sink.split.i

Vec_WrdGrow.exit11.sink.split.i:                  ; preds = %bb.n, %bb.o, %bb.j, %bb.k
  %storemerge = phi ptr [ %i.bg, %bb.k ], [ %i.bf, %bb.j ], [ %i.bl, %bb.n ], [ %i.bm, %bb.o ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i, %bb.n ], [ %spec.select.i, %bb.o ] ; 2 uses
  store ptr %storemerge, ptr %i.k, align 8, !tbaa !102
  store i32 %spec.select.sink.i, ptr %i.d, align 8, !tbaa !103
  br label %Vec_WrdPush.exit

Vec_WrdPush.exit:                                 ; preds = %.critedge, %bb.l, %Vec_WrdGrow.exit11.sink.split.i
  %i.bn = phi ptr [ %i.ac, %.critedge ], [ %i.ac, %bb.l ], [ %storemerge, %Vec_WrdGrow.exit11.sink.split.i ] ; 2 uses
  %i.bo = phi i32 [ %i.ad, %.critedge ], [ %i.ad, %bb.l ], [ %spec.select.sink.i, %Vec_WrdGrow.exit11.sink.split.i ]
  %i.bp = add nuw nsw i32 %i.ae, 1                ; 3 uses
  store i32 %i.bp, ptr %i.f, align 4, !tbaa !104
  %i.bq = zext nneg i32 %i.ae to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bq
  store i64 %.038.lcssa, ptr %i.br, align 8, !tbaa !77
  %i.bs = icmp eq i32 %i.bp, %3
  br i1 %i.bs, label %bb.p, label %bb.d

bb.p:                                             ; preds = %Vec_WrdPush.exit, %bb.d
  %.val50 = phi i32 [ %3, %Vec_WrdPush.exit ], [ %i.ae, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !275
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !275
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bt = load ptr, ptr %i.aa, align 8, !tbaa !57 ; 2 uses
  %.not.i55 = icmp eq ptr %i.bt, null
  br i1 %.not.i55, label %Vec_IntFree.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.bt) #30
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.p, %bb.q
  tail call void @free(ptr noundef nonnull %i.m) #30
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.c) #30
  br label %bb.s

bb.s:                                             ; preds = %Vec_IntFree.exit, %bb.r
  %.not42 = icmp eq i32 %4, 0
  br i1 %.not42, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val45 = load i32, ptr %i.b, align 4, !tbaa !80
  %i.bu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, i32 noundef %.val50, i32 noundef %.val45) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  ret ptr %i.d
}

declare ptr @Abc_MergeSortCost(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define void @Gia_ManMatchProfileFunctions(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 4          ; 3 uses
  %.val30 = load i32, ptr %i.b, align 4, !tbaa !104
  %i.c = tail call ptr @Gia_ManCountNpnClasses(ptr noundef %1, ptr noundef %2, i32 noundef %.val30, ptr noundef %3) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !80   ; 4 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %Vec_IntFindMax.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57   ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !58   ; 3 uses
  %i.j = icmp sgt i32 %i.e, 1
  br i1 %i.j, label %.lr.ph.preheader.i, label %Vec_IntFindMax.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.e to i64  ; 2 uses
  %i.k = add nsw i64 %wide.trip.count.i, -1       ; 2 uses
  %min.iters.check = icmp ult i32 %i.e, 9
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.k, -8                       ; 3 uses
  %i.l = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi43 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.q, %vector.body ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %wide.load = load <4 x i32>, ptr %i.n, align 4, !tbaa !58
  %wide.load44 = load <4 x i32>, ptr %i.o, align 4, !tbaa !58
  %i.p = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.q = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi43, <4 x i32> %wide.load44) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !276

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.p, <4 x i32> %i.q)
  %i.s = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %Vec_IntFindMax.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.l, %middle.block ]
  %.015.i.ph = phi i32 [ %i.i, %.lr.ph.preheader.i ], [ %i.s, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.015.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %.015.i.ph, %.lr.ph.i.preheader ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !58
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %.015.i, i32 %i.u) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_IntFindMax.exit, label %.lr.ph.i, !llvm.loop !277

Vec_IntFindMax.exit:                              ; preds = %.lr.ph.i, %middle.block, %bb.a, %bb.b
  %.012.i = phi i32 [ 0, %bb.a ], [ %i.i, %bb.b ], [ %i.s, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %.val2935 = load i32, ptr %i.b, align 4, !tbaa !104
  %i.v = icmp sgt i32 %.val2935, 0
  br i1 %i.v, label %.lr.ph37, label %.critedge

.lr.ph37:                                         ; preds = %Vec_IntFindMax.exit
  %i.w = getelementptr i8, ptr %0, i64 8
  %i.x = getelementptr i8, ptr %i.c, i64 8
  %.val28 = load ptr, ptr %i.x, align 8, !tbaa !57 ; 2 uses
  %i.y = tail call noundef i32 @llvm.smax.i32(i32 %.012.i, i32 1)
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph37, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph37 ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %.val31 = load ptr, ptr %i.w, align 8, !tbaa !102
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.val31, i64 %indvars.iv
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !77
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !77
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.val28, i64 %indvars.iv ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !58
  %i.ad = mul nsw i32 %i.ac, 60
  %i.ae = sdiv i32 %i.ad, %i.y                    ; 4 uses
  %i.af = trunc nuw nsw i64 %indvars.iv to i32
  %i.ag = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i32 noundef %i.af) ; 0 uses
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !58
  %i.ai = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, i32 noundef %i.ah) ; 0 uses
  %i.aj = icmp sgt i32 %i.ae, 0
  br i1 %i.aj, label %.lr.ph, label %.lr.ph34.preheader

.preheader:                                       ; preds = %.lr.ph
  %i.ak = icmp samesign ult i32 %i.ae, 63
  br i1 %i.ak, label %.lr.ph34.preheader, label %._crit_edge

.lr.ph34.preheader:                               ; preds = %bb.c, %.preheader
  br label %.lr.ph34

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.032 = phi i32 [ %i.al, %.lr.ph ], [ 0, %bb.c ]
  %putchar27 = call i32 @putchar(i32 42)          ; 0 uses
  %i.al = add nuw nsw i32 %.032, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.al, %i.ae
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !278

.lr.ph34:                                         ; preds = %.lr.ph34.preheader, %.lr.ph34
  %.133 = phi i32 [ %i.am, %.lr.ph34 ], [ %i.ae, %.lr.ph34.preheader ]
  %putchar = call i32 @putchar(i32 32)            ; 0 uses
  %i.am = add i32 %.133, 1                        ; 2 uses
  %exitcond38.not = icmp eq i32 %i.am, 63
  br i1 %exitcond38.not, label %._crit_edge, label %.lr.ph34, !llvm.loop !279

._crit_edge:                                      ; preds = %.lr.ph34, %.preheader
  call void @Dau_DsdPrintFromTruth(ptr noundef nonnull %i.a, i32 noundef %4) #30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val29 = load i32, ptr %i.b, align 4, !tbaa !104
  %i.an = sext i32 %.val29 to i64
  %i.ao = icmp slt i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %bb.c, label %.critedge.thread, !llvm.loop !280

.critedge:                                        ; preds = %Vec_IntFindMax.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !57 ; 2 uses
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %.critedge.thread

.critedge.thread:                                 ; preds = %._crit_edge, %.critedge
  %i.ap = phi ptr [ %.pre, %.critedge ], [ %.val28, %._crit_edge ]
  call void @free(ptr noundef nonnull %i.ap) #30
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge, %.critedge.thread
  call void @free(ptr noundef nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

declare void @Dau_DsdPrintFromTruth(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define void @Gia_ManMatchCones(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 {
bb.a:
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.c = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #30
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %8, align 8, !tbaa !83
  %.neg61 = mul i64 %i.e, -1000000
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !84
  %.neg = sdiv i64 %i.g, -1000
  %.neg62 = add i64 %.neg, %.neg61
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg62, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.h = call ptr @Gia_ManCollectCutFuncs(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %6) ; 5 uses
  %i.i = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #32 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !104  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 %i.k, ptr %i.l, align 4, !tbaa !104
  store i32 %i.k, ptr %i.i, align 8, !tbaa !103
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %Vec_WrdDup.exit, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.m = sext i32 %i.k to i64
  %i.n = shl nsw i64 %i.m, 3                      ; 2 uses
  %i.o = call noalias ptr @malloc(i64 noundef %i.n) #32
  br label %Vec_WrdDup.exit

Vec_WrdDup.exit:                                  ; preds = %Abc_Clock.exit, %bb.c
  %.pre-phi12.i = phi i64 [ %i.n, %bb.c ], [ 0, %Abc_Clock.exit ]
  %i.p = phi ptr [ %i.o, %bb.c ], [ null, %Abc_Clock.exit ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !102
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.p, ptr align 8 %i.s, i64 %.pre-phi12.i, i1 false)
  call void @Dau_CanonicizeArray(ptr noundef nonnull %i.h, i32 noundef %2, i32 noundef %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store ptr null, ptr %i.a, align 8, !tbaa !93
  %i.t = call ptr @Dau_CollectNpnFunctionsArray(ptr noundef nonnull %i.h, i32 noundef %2, ptr noundef nonnull %i.a, i32 noundef %6) #30 ; 10 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !102  ; 2 uses
  %.not.i49 = icmp eq ptr %i.u, null
  br i1 %.not.i49, label %Vec_WrdFree.exit, label %bb.d

bb.d:                                             ; preds = %Vec_WrdDup.exit
  call void @free(ptr noundef nonnull %i.u) #30
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %Vec_WrdDup.exit, %bb.d
  call void @free(ptr noundef nonnull %i.h) #30
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %.val46 = load i32, ptr %i.w, align 4, !tbaa !80
  %i.x = getelementptr i8, ptr %i.v, i64 8
  %.val47 = load ptr, ptr %i.x, align 8, !tbaa !57
  %i.y = sext i32 %.val46 to i64
  %i.z = getelementptr [4 x i8], ptr %.val47, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !58
  %i.ac = add nsw i32 %i.ab, 1
  %i.ad = call ptr @Gia_ManCountNpnClasses(ptr noundef %i.t, ptr noundef %i.v, i32 noundef %i.ac, ptr noundef nonnull %i.i) ; 3 uses
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.af = call ptr @Gia_ManMatchFilterClasses(ptr noundef %i.t, ptr noundef %i.ae, ptr noundef %i.ad, i32 noundef %4, i32 noundef %6) ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !57 ; 2 uses
  %.not.i50 = icmp eq ptr %i.ah, null
  br i1 %.not.i50, label %Vec_IntFree.exit, label %bb.e

bb.e:                                             ; preds = %Vec_WrdFree.exit
  call void @free(ptr noundef nonnull %i.ah) #30
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Vec_WrdFree.exit, %bb.e
  call void @free(ptr noundef nonnull %i.ad) #30
  %i.ai = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, i32 noundef %4) ; 0 uses
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !93
  call void @Gia_ManMatchProfileFunctions(ptr noundef %i.af, ptr noundef %i.t, ptr noundef %i.aj, ptr noundef nonnull %i.i, i32 noundef %2)
  %.not.i51 = icmp eq ptr %i.p, null
  br i1 %.not.i51, label %Vec_WrdFree.exit52, label %bb.f

bb.f:                                             ; preds = %Vec_IntFree.exit
  call void @free(ptr noundef nonnull %i.p) #30
  br label %Vec_WrdFree.exit52

Vec_WrdFree.exit52:                               ; preds = %Vec_IntFree.exit, %bb.f
  call void @free(ptr noundef nonnull %i.i) #30
  %i.ak = call i32 @Abc_Random(i32 noundef 1) #30 ; 0 uses
  %i.al = icmp sgt i32 %5, 0
  br i1 %i.al, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Vec_WrdFree.exit52
  %i.am = getelementptr i8, ptr %0, i64 72
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %Vec_WrdFree.exit54
  %.063 = phi i32 [ 0, %.lr.ph ], [ %i.as, %Vec_WrdFree.exit54 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.an = call i32 @Abc_Random(i32 noundef 0) #30
  %.val48 = load ptr, ptr %i.am, align 8, !tbaa !95
  %i.ao = getelementptr i8, ptr %.val48, i64 4
  %.val48.val = load i32, ptr %i.ao, align 4, !tbaa !80
  %i.ap = urem i32 %i.an, %.val48.val
  store i32 %i.ap, ptr %i.b, align 4, !tbaa !58
  %i.aq = call ptr @Gia_ManDupCones(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef 1, i32 noundef 1) #30 ; 5 uses
  %i.ar = call ptr @Gia_ManCollectCutFuncs(ptr noundef %i.aq, i32 noundef %2, i32 noundef %3, i32 noundef 0) ; 4 uses
  %i.as = add nuw nsw i32 %.063, 1                ; 3 uses
  %i.at = load i32, ptr %i.b, align 4, !tbaa !58
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !87
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !94
  %i.ay = getelementptr i8, ptr %i.ax, i64 4
  %.val3.i = load i32, ptr %i.ay, align 4, !tbaa !80
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !95
  %i.bb = getelementptr i8, ptr %i.ba, i64 4
  %.val.i = load i32, ptr %i.bb, align 4, !tbaa !80
  %i.bc = add i32 %.val.i, %.val3.i
  %i.bd = xor i32 %i.bc, -1
  %i.be = add i32 %i.av, %i.bd
  %i.bf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.as, i32 noundef %i.at, i32 noundef %i.be) ; 0 uses
  %i.bg = getelementptr i8, ptr %i.ar, i64 4
  %.val = load i32, ptr %i.bg, align 4, !tbaa !104
  %i.bh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %.val, i32 noundef %2) ; 0 uses
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !93
  call void @Gia_ManMatchProfileFunctions(ptr noundef %i.af, ptr noundef %i.t, ptr noundef %i.bi, ptr noundef %i.ar, i32 noundef %2)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !102 ; 2 uses
  %.not.i53 = icmp eq ptr %i.bk, null
  br i1 %.not.i53, label %Vec_WrdFree.exit54, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef nonnull %i.bk) #30
  br label %Vec_WrdFree.exit54

Vec_WrdFree.exit54:                               ; preds = %bb.g, %bb.h
  call void @free(ptr noundef nonnull %i.ar) #30
  call void @Gia_ManStop(ptr noundef nonnull %i.aq) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %exitcond.not = icmp eq i32 %i.as, %5
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !281

._crit_edge:                                      ; preds = %Vec_WrdFree.exit54, %Vec_WrdFree.exit52
  %i.bl = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !102 ; 2 uses
  %.not.i55 = icmp eq ptr %i.bm, null
  br i1 %.not.i55, label %Vec_WrdFree.exit56, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  call void @free(ptr noundef nonnull %i.bm) #30
  br label %Vec_WrdFree.exit56

Vec_WrdFree.exit56:                               ; preds = %._crit_edge, %bb.i
  call void @free(ptr noundef nonnull %i.af) #30
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !93  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !57 ; 2 uses
  %.not.i57 = icmp eq ptr %i.bp, null
  br i1 %.not.i57, label %Vec_IntFree.exit58, label %bb.j

bb.j:                                             ; preds = %Vec_WrdFree.exit56
  call void @free(ptr noundef nonnull %i.bp) #30
  br label %Vec_IntFree.exit58

Vec_IntFree.exit58:                               ; preds = %Vec_WrdFree.exit56, %bb.j
  call void @free(ptr noundef nonnull %i.bn) #30
  %i.bq = icmp eq ptr %i.t, null
  br i1 %i.bq, label %Vec_MemHashFree.exit, label %bb.k

bb.k:                                             ; preds = %Vec_IntFree.exit58
  %i.br = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !93 ; 3 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %Vec_IntFreeP.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !57 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i, label %bb.m, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.bv) #30
  %i.bw = load ptr, ptr %i.br, align 8, !tbaa !93 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr null, ptr %i.bx, align 8, !tbaa !57
  br label %bb.m

bb.m:                                             ; preds = %.thread.i.i, %bb.l
  %i.by = phi ptr [ %i.bw, %.thread.i.i ], [ %i.bs, %bb.l ]
  call void @free(ptr noundef nonnull %i.by) #30
  store ptr null, ptr %i.br, align 8, !tbaa !93
  br label %Vec_IntFreeP.exit.i

Vec_IntFreeP.exit.i:                              ; preds = %bb.m, %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !93 ; 3 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %Vec_MemHashFree.exit, label %bb.n

bb.n:                                             ; preds = %Vec_IntFreeP.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !57 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.cd, null
  br i1 %.not.i3.i, label %bb.o, label %.thread.i4.i

.thread.i4.i:                                     ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.cd) #30
  %i.ce = load ptr, ptr %i.bz, align 8, !tbaa !93 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr null, ptr %i.cf, align 8, !tbaa !57
  br label %bb.o

bb.o:                                             ; preds = %.thread.i4.i, %bb.n
  %i.cg = phi ptr [ %i.ce, %.thread.i4.i ], [ %i.ca, %bb.n ]
  call void @free(ptr noundef nonnull %i.cg) #30
  store ptr null, ptr %i.bz, align 8, !tbaa !93
  br label %Vec_MemHashFree.exit

Vec_MemHashFree.exit:                             ; preds = %Vec_IntFree.exit58, %Vec_IntFreeP.exit.i, %bb.o
  %i.ch = getelementptr inbounds nuw i8, ptr %i.t, i64 20 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !90 ; 2 uses
  %.not19.i = icmp slt i32 %i.ci, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %.pre23.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !71 ; 3 uses
  br i1 %.not19.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %Vec_MemHashFree.exit, %bb.q
  %i.cj = phi i32 [ %i.cp, %bb.q ], [ %i.ci, %Vec_MemHashFree.exit ]
  %i.ck = phi ptr [ %i.cq, %bb.q ], [ %.pre23.i, %Vec_MemHashFree.exit ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.q ], [ 0, %Vec_MemHashFree.exit ] ; 4 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.i
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !74 ; 2 uses
  %.not18.i = icmp eq ptr %i.cm, null
  br i1 %.not18.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  call void @free(ptr noundef nonnull %i.cm) #30
  %i.cn = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !71 ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv.i
  store ptr null, ptr %i.co, align 8, !tbaa !74
  %.pre22.i = load i32, ptr %i.ch, align 4, !tbaa !90
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i
  %i.cp = phi i32 [ %.pre22.i, %bb.p ], [ %i.cj, %.lr.ph.i ] ; 2 uses
  %i.cq = phi ptr [ %i.cn, %bb.p ], [ %i.ck, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.cr = sext i32 %i.cp to i64
  %.not.not.i = icmp slt i64 %indvars.iv.i, %i.cr
  br i1 %.not.not.i, label %.lr.ph.i, label %._crit_edge.thread.i, !llvm.loop !2

._crit_edge.i:                                    ; preds = %Vec_MemHashFree.exit
  %.not16.i = icmp eq ptr %.pre23.i, null
  br i1 %.not16.i, label %Vec_MemFree.exit, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.q, %._crit_edge.i
  %i.cs = phi ptr [ %.pre23.i, %._crit_edge.i ], [ %i.cq, %bb.q ]
  call void @free(ptr noundef nonnull %i.cs) #30
  br label %Vec_MemFree.exit

Vec_MemFree.exit:                                 ; preds = %._crit_edge.i, %._crit_edge.thread.i
  call void @free(ptr noundef nonnull %i.t) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.ct = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #30
  %i.cu = icmp slt i32 %i.ct, 0
  br i1 %i.cu, label %Abc_Clock.exit60, label %bb.r

bb.r:                                             ; preds = %Vec_MemFree.exit
  %i.cv = load i64, ptr %7, align 8, !tbaa !83
  %i.cw = mul nsw i64 %i.cv, 1000000
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !84
  %i.cz = sdiv i64 %i.cy, 1000
  %i.da = add nsw i64 %i.cz, %i.cw
  br label %Abc_Clock.exit60

Abc_Clock.exit60:                                 ; preds = %Vec_MemFree.exit, %bb.r
  %.0.i59 = phi i64 [ %i.da, %bb.r ], [ -1, %Vec_MemFree.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.db = add i64 %.0.i59, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.51)
  %i.dc = sitofp i64 %i.db to double
  %i.dd = fdiv double %i.dc, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.58, double noundef %i.dd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

declare void @Dau_CanonicizeArray(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare ptr @Dau_CollectNpnFunctionsArray(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare i32 @Abc_Random(i32 noundef) local_unnamed_addr #10

declare ptr @Gia_ManDupCones(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @Gia_ManStop(ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, -2147483648) i32 @Gia_ManMatchConesMinimizeTts(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp slt i32 %1, 7                       ; 3 uses
  %i.b = add nsw i32 %1, -6                       ; 3 uses
  %i.c = shl nuw i32 1, %i.b
  %i.d = select i1 %i.a, i32 1, i32 %i.c
  %i.e = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %.val = load i32, ptr %i.e, align 4, !tbaa !104
  %i.f = sdiv i32 %.val, %i.d                     ; 4 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge50

.lr.ph:                                           ; preds = %bb.a
  %i.h = select i1 %i.a, i32 0, i32 %i.b
  %i.i = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.045 = phi i32 [ 0, %.lr.ph ], [ %i.n, %bb.b ]
  %.03444 = phi i32 [ 0, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.j = shl i32 %.03444, %i.h
  %.val39 = load ptr, ptr %i.i, align 8, !tbaa !102
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %.val39, i64 %i.k
  %i.m = tail call fastcc i32 @Abc_TtMinBase(ptr noundef %i.l, ptr noundef null, i32 noundef %1, i32 noundef %1)
  %i.n = tail call noundef i32 @llvm.smax.i32(i32 %.045, i32 %i.m) ; 10 uses
  %i.o = add nuw nsw i32 %.03444, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.o, %i.f
  br i1 %exitcond.not, label %.lr.ph49, label %bb.b, !llvm.loop !282

.lr.ph49:                                         ; preds = %bb.b
  %i.p = icmp slt i32 %i.n, 7                     ; 3 uses
  %i.q = add nsw i32 %i.n, -6                     ; 3 uses
  %i.r = shl nuw i32 1, %i.q                      ; 3 uses
  %i.s = select i1 %i.p, i32 1, i32 %i.r
  %i.t = select i1 %i.a, i32 0, i32 %i.b          ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.v = select i1 %i.p, i32 0, i32 %i.q          ; 5 uses
  %i.w = icmp sgt i32 %i.n, 0
  %i.x = sext i32 %i.r to i64
  %.idx.i.i = shl nsw i64 %i.x, 3
  %smax56.i.i = tail call i32 @llvm.smax.i32(i32 %i.r, i32 1)
  %wide.trip.count57.i.i = zext nneg i32 %smax56.i.i to i64
  %.not48.i.i = icmp eq i32 %i.q, 31
  %wide.trip.count.i = zext i32 %i.n to i64       ; 3 uses
  %i.y = sext i32 %i.s to i64
  %i.z = shl nsw i64 %i.y, 3                      ; 2 uses
  br i1 %i.w, label %.lr.ph49.split.us, label %._crit_edge50

.lr.ph49.split.us:                                ; preds = %.lr.ph49
  br i1 %i.p, label %.lr.ph.i.us.us.preheader, label %.lr.ph49.split.us.split

.lr.ph.i.us.us.preheader:                         ; preds = %.lr.ph49.split.us
  %.val38.us.us.pre69 = load ptr, ptr %i.u, align 8, !tbaa !102
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.aa = icmp eq i32 %i.n, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod91 = trunc i32 %i.n to i1
  br label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.lr.ph.i.us.us.preheader, %Abc_TtSupportSize.exit.thread.us.us
  %.val38.us.us = phi ptr [ %.val38.us.us70, %Abc_TtSupportSize.exit.thread.us.us ], [ %.val38.us.us.pre69, %.lr.ph.i.us.us.preheader ] ; 3 uses
  %.03347.us.us = phi i32 [ %.1.us.us, %Abc_TtSupportSize.exit.thread.us.us ], [ 0, %.lr.ph.i.us.us.preheader ] ; 3 uses
  %.13546.us.us = phi i32 [ %i.bl, %Abc_TtSupportSize.exit.thread.us.us ], [ 0, %.lr.ph.i.us.us.preheader ] ; 2 uses
  %i.ab = shl i32 %.13546.us.us, %i.t
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %.val38.us.us, i64 %i.ac ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !77 ; 6 uses
  br i1 %i.aa, label %Abc_TtHasVar.exit.us.i.us.us.epil.preheader, label %Abc_TtHasVar.exit.us.i.us.us

Abc_TtHasVar.exit.us.i.us.us:                     ; preds = %.lr.ph.i.us.us, %Abc_TtHasVar.exit.us.i.us.us
  %indvars.iv51.i.us.us = phi i64 [ %indvars.iv.next52.i.us.us.1, %Abc_TtHasVar.exit.us.i.us.us ], [ 0, %.lr.ph.i.us.us ] ; 4 uses
  %.022.us.i.us.us = phi i32 [ %spec.select.i.us.us.1, %Abc_TtHasVar.exit.us.i.us.us ], [ 0, %.lr.ph.i.us.us ]
  %niter = phi i64 [ %niter.next.1, %Abc_TtHasVar.exit.us.i.us.us ], [ 0, %.lr.ph.i.us.us ]
  %i.af = trunc nuw nsw i64 %indvars.iv51.i.us.us to i32
  %i.ag = shl nuw i32 1, %i.af
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = lshr i64 %i.ae, %i.ah
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv51.i.us.us
  %i.ak = load i64, ptr %i.aj, align 16, !tbaa !77
  %i.al = xor i64 %i.ai, %i.ae
  %i.am = and i64 %i.al, %i.ak
  %.fr.us.i.us.us = freeze i64 %i.am
  %.not17.us.i.us.us = icmp ne i64 %.fr.us.i.us.us, 0
  %i.an = zext i1 %.not17.us.i.us.us to i32
  %spec.select.i.us.us = add nuw nsw i32 %.022.us.i.us.us, %i.an
  %indvars.iv.next52.i.us.us = or disjoint i64 %indvars.iv51.i.us.us, 1 ; 2 uses
  %i.ao = trunc nuw nsw i64 %indvars.iv.next52.i.us.us to i32
  %i.ap = shl nuw i32 1, %i.ao
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = lshr i64 %i.ae, %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.next52.i.us.us
  %i.at = load i64, ptr %i.as, align 8, !tbaa !77
  %i.au = xor i64 %i.ar, %i.ae
  %i.av = and i64 %i.au, %i.at
  %.fr.us.i.us.us.1 = freeze i64 %i.av
  %.not17.us.i.us.us.1 = icmp ne i64 %.fr.us.i.us.us.1, 0
  %i.aw = zext i1 %.not17.us.i.us.us.1 to i32
  %spec.select.i.us.us.1 = add nuw nsw i32 %spec.select.i.us.us, %i.aw ; 3 uses
  %indvars.iv.next52.i.us.us.1 = add nuw nsw i64 %indvars.iv51.i.us.us, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Abc_TtSupportSize.exit.loopexit.us.us.unr-lcssa, label %Abc_TtHasVar.exit.us.i.us.us, !llvm.loop !283

Abc_TtSupportSize.exit.loopexit.us.us.unr-lcssa:  ; preds = %Abc_TtHasVar.exit.us.i.us.us
  br i1 %lcmp.mod.not, label %Abc_TtSupportSize.exit.loopexit.us.us, label %Abc_TtHasVar.exit.us.i.us.us.epil.preheader

Abc_TtHasVar.exit.us.i.us.us.epil.preheader:      ; preds = %Abc_TtSupportSize.exit.loopexit.us.us.unr-lcssa, %.lr.ph.i.us.us
  %indvars.iv51.i.us.us.epil.init = phi i64 [ 0, %.lr.ph.i.us.us ], [ %indvars.iv.next52.i.us.us.1, %Abc_TtSupportSize.exit.loopexit.us.us.unr-lcssa ] ; 2 uses
  %.022.us.i.us.us.epil.init = phi i32 [ 0, %.lr.ph.i.us.us ], [ %spec.select.i.us.us.1, %Abc_TtSupportSize.exit.loopexit.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod91)
  %i.ax = trunc nuw nsw i64 %indvars.iv51.i.us.us.epil.init to i32
  %i.ay = shl nuw i32 1, %i.ax
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = lshr i64 %i.ae, %i.az
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv51.i.us.us.epil.init
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !77
  %i.bd = xor i64 %i.ba, %i.ae
  %i.be = and i64 %i.bd, %i.bc
  %.fr.us.i.us.us.epil = freeze i64 %i.be
  %.not17.us.i.us.us.epil = icmp ne i64 %.fr.us.i.us.us.epil, 0
  %i.bf = zext i1 %.not17.us.i.us.us.epil to i32
  %spec.select.i.us.us.epil = add nuw nsw i32 %.022.us.i.us.us.epil.init, %i.bf
  br label %Abc_TtSupportSize.exit.loopexit.us.us

Abc_TtSupportSize.exit.loopexit.us.us:            ; preds = %Abc_TtSupportSize.exit.loopexit.us.us.unr-lcssa, %Abc_TtHasVar.exit.us.i.us.us.epil.preheader
  %spec.select.i.us.us.lcssa = phi i32 [ %spec.select.i.us.us.1, %Abc_TtSupportSize.exit.loopexit.us.us.unr-lcssa ], [ %spec.select.i.us.us.epil, %Abc_TtHasVar.exit.us.i.us.us.epil.preheader ]
  %i.bg = icmp samesign ult i32 %spec.select.i.us.us.lcssa, 3
  br i1 %i.bg, label %Abc_TtSupportSize.exit.thread.us.us, label %bb.c

bb.c:                                             ; preds = %Abc_TtSupportSize.exit.loopexit.us.us
  %i.bh = shl i32 %.03347.us.us, %i.v
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %.val38.us.us, i64 %i.bi
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.z, i1 false)
  %i.bk = add nsw i32 %.03347.us.us, 1
  %.val38.us.us.pre = load ptr, ptr %i.u, align 8, !tbaa !102
  br label %Abc_TtSupportSize.exit.thread.us.us

Abc_TtSupportSize.exit.thread.us.us:              ; preds = %bb.c, %Abc_TtSupportSize.exit.loopexit.us.us
  %.val38.us.us70 = phi ptr [ %.val38.us.us.pre, %bb.c ], [ %.val38.us.us, %Abc_TtSupportSize.exit.loopexit.us.us ]
  %.1.us.us = phi i32 [ %i.bk, %bb.c ], [ %.03347.us.us, %Abc_TtSupportSize.exit.loopexit.us.us ] ; 2 uses
  %i.bl = add nuw nsw i32 %.13546.us.us, 1        ; 2 uses
  %exitcond68.not = icmp eq i32 %i.bl, %i.f
  br i1 %exitcond68.not, label %._crit_edge50, label %.lr.ph.i.us.us, !llvm.loop !284

.lr.ph49.split.us.split:                          ; preds = %.lr.ph49.split.us
  br i1 %.not48.i.i, label %._crit_edge50, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph49.split.us.split, %Abc_TtSupportSize.exit.thread.us
  %.03347.us = phi i32 [ %.1.us, %Abc_TtSupportSize.exit.thread.us ], [ 0, %.lr.ph49.split.us.split ] ; 3 uses
  %.13546.us = phi i32 [ %i.ct, %Abc_TtSupportSize.exit.thread.us ], [ 0, %.lr.ph49.split.us.split ] ; 2 uses
  %i.bm = shl i32 %.13546.us, %i.t
  %.val38.us = load ptr, ptr %i.u, align 8, !tbaa !102 ; 2 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %.val38.us, i64 %i.bn ; 4 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 %.idx.i.i
  br label %.lr.ph.split.split.split.i.us

.lr.ph.split.split.split.i.us:                    ; preds = %Abc_TtHasVar.exit.thread.i.us, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.i.us ], [ %indvars.iv.next.i.us, %Abc_TtHasVar.exit.thread.i.us ] ; 5 uses
  %.022.i.us = phi i32 [ 0, %.lr.ph.i.us ], [ %i.co, %Abc_TtHasVar.exit.thread.i.us ] ; 4 uses
  %i.bq = icmp samesign ult i64 %indvars.iv.i.us, 6
  br i1 %i.bq, label %.lr.ph.i.i.us, label %.preheader.lr.ph.i.i.us

.preheader.lr.ph.i.i.us:                          ; preds = %.lr.ph.split.split.split.i.us
  %i.br = add nsw i64 %indvars.iv.i.us, -6        ; 2 uses
  %i.bs = icmp eq i64 %i.br, 31
  %i.bt = trunc nuw nsw i64 %i.br to i32          ; 2 uses
  %i.bu = shl i32 2, %i.bt
  %i.bv = sext i32 %i.bu to i64
  br i1 %i.bs, label %Abc_TtHasVar.exit.thread.i.us, label %.preheader.us.preheader.i.i.us

.preheader.us.preheader.i.i.us:                   ; preds = %.preheader.lr.ph.i.i.us
  %i.bw = shl nuw nsw i32 1, %i.bt                ; 2 uses
  %i.bx = zext nneg i32 %i.bw to i64
  %wide.trip.count.i.i.us = zext nneg i32 %i.bw to i64
  br label %.preheader.us.i.i.us

.preheader.us.i.i.us:                             ; preds = %._crit_edge.us.i.i.us, %.preheader.us.preheader.i.i.us
  %.03343.us.i.i.us = phi ptr [ %i.cb, %._crit_edge.us.i.i.us ], [ %i.bo, %.preheader.us.preheader.i.i.us ] ; 3 uses
  %invariant.gep.i.i.us = getelementptr [8 x i8], ptr %.03343.us.i.i.us, i64 %i.bx
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.preheader.us.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.preheader.us.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.e ] ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i.i.us, i64 %indvars.iv.i.i.us
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !77
  %gep.i.i.us = getelementptr [8 x i8], ptr %invariant.gep.i.i.us, i64 %indvars.iv.i.i.us
  %i.ca = load i64, ptr %gep.i.i.us, align 8, !tbaa !77
  %.not.us.i.i.us = icmp eq i64 %i.bz, %i.ca
  br i1 %.not.us.i.i.us, label %bb.e, label %Abc_TtHasVar.exit.thread13.i.us

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i.us
  br i1 %exitcond.not.i.i.us, label %._crit_edge.us.i.i.us, label %bb.d, !llvm.loop !16

._crit_edge.us.i.i.us:                            ; preds = %bb.e
  %i.cb = getelementptr inbounds [8 x i8], ptr %.03343.us.i.i.us, i64 %i.bv ; 2 uses
  %i.cc = icmp ult ptr %i.cb, %i.bp
  br i1 %i.cc, label %.preheader.us.i.i.us, label %Abc_TtHasVar.exit.thread.i.us, !llvm.loop !17

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.split.split.split.i.us
  %i.cd = trunc nuw nsw i64 %indvars.iv.i.us to i32
  %i.ce = shl nuw nsw i32 1, %i.cd
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i.us
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !77
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.us
  %indvars.iv53.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next54.i.i.us, %bb.g ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv53.i.i.us
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !77 ; 2 uses
  %i.ck = lshr i64 %i.cj, %i.cf
  %i.cl = xor i64 %i.ck, %i.cj
  %i.cm = and i64 %i.cl, %i.ch
  %.not39.i.i.us = icmp eq i64 %i.cm, 0
  br i1 %.not39.i.i.us, label %bb.g, label %Abc_TtHasVar.exit.thread13.i.us

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next54.i.i.us = add nuw nsw i64 %indvars.iv53.i.i.us, 1 ; 2 uses
  %exitcond58.not.i.i.us = icmp eq i64 %indvars.iv.next54.i.i.us, %wide.trip.count57.i.i
  br i1 %exitcond58.not.i.i.us, label %Abc_TtHasVar.exit.thread.i.us, label %bb.f, !llvm.loop !18

Abc_TtHasVar.exit.thread13.i.us:                  ; preds = %bb.f, %bb.d
  %i.cn = add nsw i32 %.022.i.us, 1
  br label %Abc_TtHasVar.exit.thread.i.us

Abc_TtHasVar.exit.thread.i.us:                    ; preds = %._crit_edge.us.i.i.us, %bb.g, %Abc_TtHasVar.exit.thread13.i.us, %.preheader.lr.ph.i.i.us
  %i.co = phi i32 [ %i.cn, %Abc_TtHasVar.exit.thread13.i.us ], [ %.022.i.us, %bb.g ], [ %.022.i.us, %.preheader.lr.ph.i.i.us ], [ %.022.i.us, %._crit_edge.us.i.i.us ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %Abc_TtSupportSize.exit.loopexit43.us, label %.lr.ph.split.split.split.i.us, !llvm.loop !283

bb.h:                                             ; preds = %Abc_TtSupportSize.exit.loopexit43.us
  %i.cp = shl i32 %.03347.us, %i.v
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %.val38.us, i64 %i.cq
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cr, ptr noundef nonnull align 8 dereferenceable(1) %i.bo, i64 %i.z, i1 false)
  %i.cs = add nsw i32 %.03347.us, 1
  br label %Abc_TtSupportSize.exit.thread.us

Abc_TtSupportSize.exit.thread.us:                 ; preds = %bb.h, %Abc_TtSupportSize.exit.loopexit43.us
  %.1.us = phi i32 [ %i.cs, %bb.h ], [ %.03347.us, %Abc_TtSupportSize.exit.loopexit43.us ] ; 2 uses
  %i.ct = add nuw nsw i32 %.13546.us, 1           ; 2 uses
  %exitcond67.not = icmp eq i32 %i.ct, %i.f
  br i1 %exitcond67.not, label %._crit_edge50, label %.lr.ph.i.us, !llvm.loop !284

Abc_TtSupportSize.exit.loopexit43.us:             ; preds = %Abc_TtHasVar.exit.thread.i.us
  %i.cu = icmp slt i32 %i.co, 3
  br i1 %i.cu, label %Abc_TtSupportSize.exit.thread.us, label %bb.h

._crit_edge50:                                    ; preds = %Abc_TtSupportSize.exit.thread.us, %Abc_TtSupportSize.exit.thread.us.us, %bb.a, %.lr.ph49.split.us.split, %.lr.ph49
  %.0.lcssa77 = phi i32 [ %i.n, %Abc_TtSupportSize.exit.thread.us.us ], [ 37, %.lr.ph49.split.us.split ], [ 0, %bb.a ], [ %i.n, %.lr.ph49 ], [ %i.n, %Abc_TtSupportSize.exit.thread.us ]
  %.pre-phi = phi i32 [ %i.v, %Abc_TtSupportSize.exit.thread.us.us ], [ 31, %.lr.ph49.split.us.split ], [ 0, %bb.a ], [ %i.v, %.lr.ph49 ], [ %i.v, %Abc_TtSupportSize.exit.thread.us ]
  %.033.lcssa = phi i32 [ %.1.us.us, %Abc_TtSupportSize.exit.thread.us.us ], [ 0, %.lr.ph49.split.us.split ], [ 0, %bb.a ], [ 0, %.lr.ph49 ], [ %.1.us, %Abc_TtSupportSize.exit.thread.us ]
  %i.cv = shl i32 %.033.lcssa, %.pre-phi
  store i32 %i.cv, ptr %i.e, align 4, !tbaa !104
  ret i32 %.0.lcssa77
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @Abc_TtMinBase(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #17 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = icmp slt i32 %3, 7
  %i.c = add i32 %3, -6                           ; 2 uses
  %i.d = shl nuw i32 1, %i.c                      ; 2 uses
  %i.e = sext i32 %i.d to i64
  %.idx.i = shl nsw i64 %i.e, 3
  %i.f = getelementptr inbounds i8, ptr %0, i64 %.idx.i
  %smax56.i = tail call i32 @llvm.smax.i32(i32 %i.d, i32 1)
  %wide.trip.count57.i = zext nneg i32 %smax56.i to i64
  %.not26 = icmp eq ptr %1, null                  ; 2 uses
  br i1 %i.b, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %wide.trip.count82 = zext nneg i32 %2 to i64    ; 2 uses
  %.pre86 = load i64, ptr %0, align 8, !tbaa !77  ; 2 uses
  br i1 %.not26, label %Abc_TtHasVar.exit.us.us, label %Abc_TtHasVar.exit.us

Abc_TtHasVar.exit.us.us:                          ; preds = %.lr.ph.split.us, %Abc_TtHasVar.exit.thread.us.us
  %i.g = phi i64 [ %i.t, %Abc_TtHasVar.exit.thread.us.us ], [ %.pre86, %.lr.ph.split.us ] ; 4 uses
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %Abc_TtHasVar.exit.thread.us.us ], [ 0, %.lr.ph.split.us ] ; 4 uses
  %.038.us.us = phi i32 [ %.1.us.us, %Abc_TtHasVar.exit.thread.us.us ], [ 0, %.lr.ph.split.us ] ; 4 uses
  %i.h = trunc nuw nsw i64 %indvars.iv79 to i32   ; 2 uses
  %i.i = shl nuw i32 1, %i.h
  %i.j = zext nneg i32 %i.i to i64
  %i.k = lshr i64 %i.g, %i.j
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv79
  %i.m = load i64, ptr %i.l, align 8, !tbaa !77
  %i.n = xor i64 %i.k, %i.g
  %i.o = and i64 %i.n, %i.m
  %.not33.us.us = icmp eq i64 %i.o, 0
  br i1 %.not33.us.us, label %Abc_TtHasVar.exit.thread.us.us, label %Abc_TtHasVar.exit.thread30.us.us

Abc_TtHasVar.exit.thread30.us.us:                 ; preds = %Abc_TtHasVar.exit.us.us
  %i.p = sext i32 %.038.us.us to i64
  %i.q = icmp sgt i64 %indvars.iv79, %i.p
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %Abc_TtHasVar.exit.thread30.us.us
  tail call fastcc void @Abc_TtSwapVars(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %.038.us.us, i32 noundef %i.h)
  %.pre85 = load i64, ptr %0, align 8, !tbaa !77
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %Abc_TtHasVar.exit.thread30.us.us
  %i.r = phi i64 [ %.pre85, %bb.b ], [ %i.g, %Abc_TtHasVar.exit.thread30.us.us ]
  %i.s = add nsw i32 %.038.us.us, 1
  br label %Abc_TtHasVar.exit.thread.us.us

Abc_TtHasVar.exit.thread.us.us:                   ; preds = %bb.c, %Abc_TtHasVar.exit.us.us
  %i.t = phi i64 [ %i.r, %bb.c ], [ %i.g, %Abc_TtHasVar.exit.us.us ]
  %.1.us.us = phi i32 [ %i.s, %bb.c ], [ %.038.us.us, %Abc_TtHasVar.exit.us.us ] ; 2 uses
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond83.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count82
  br i1 %exitcond83.not, label %._crit_edge, label %Abc_TtHasVar.exit.us.us, !llvm.loop !285

Abc_TtHasVar.exit.us:                             ; preds = %.lr.ph.split.us, %Abc_TtHasVar.exit.thread.us
  %i.u = phi i64 [ %i.ak, %Abc_TtHasVar.exit.thread.us ], [ %.pre86, %.lr.ph.split.us ] ; 4 uses
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %Abc_TtHasVar.exit.thread.us ], [ 0, %.lr.ph.split.us ] ; 5 uses
  %.038.us = phi i32 [ %.1.us, %Abc_TtHasVar.exit.thread.us ], [ 0, %.lr.ph.split.us ] ; 4 uses
  %i.v = trunc nuw nsw i64 %indvars.iv74 to i32   ; 2 uses
  %i.w = shl nuw i32 1, %i.v
  %i.x = zext nneg i32 %i.w to i64
  %i.y = lshr i64 %i.u, %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv74
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !77
  %i.ab = xor i64 %i.y, %i.u
  %i.ac = and i64 %i.ab, %i.aa
  %.not33.us = icmp eq i64 %i.ac, 0
  br i1 %.not33.us, label %Abc_TtHasVar.exit.thread.us, label %Abc_TtHasVar.exit.thread30.us

Abc_TtHasVar.exit.thread30.us:                    ; preds = %Abc_TtHasVar.exit.us
  %i.ad = sext i32 %.038.us to i64                ; 2 uses
  %i.ae = icmp sgt i64 %indvars.iv74, %i.ad
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %Abc_TtHasVar.exit.thread30.us
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv74
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !58
  %i.ah = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ad
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !58
  tail call fastcc void @Abc_TtSwapVars(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %.038.us, i32 noundef %i.v)
  %.pre = load i64, ptr %0, align 8, !tbaa !77
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %Abc_TtHasVar.exit.thread30.us
  %i.ai = phi i64 [ %.pre, %bb.d ], [ %i.u, %Abc_TtHasVar.exit.thread30.us ]
  %i.aj = add nsw i32 %.038.us, 1
  br label %Abc_TtHasVar.exit.thread.us

Abc_TtHasVar.exit.thread.us:                      ; preds = %bb.e, %Abc_TtHasVar.exit.us
  %i.ak = phi i64 [ %i.ai, %bb.e ], [ %i.u, %Abc_TtHasVar.exit.us ]
  %.1.us = phi i32 [ %i.aj, %bb.e ], [ %.038.us, %Abc_TtHasVar.exit.us ] ; 2 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count82
  br i1 %exitcond78.not, label %._crit_edge, label %Abc_TtHasVar.exit.us, !llvm.loop !285

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not48.i = icmp eq i32 %i.c, 31
  br i1 %.not48.i, label %._crit_edge, label %.lr.ph.split.split.split.preheader

.lr.ph.split.split.split.preheader:               ; preds = %.lr.ph.split
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph.split.split.split

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split.split.preheader, %Abc_TtHasVar.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split.split.preheader ], [ %indvars.iv.next, %Abc_TtHasVar.exit.thread ] ; 8 uses
  %.038 = phi i32 [ 0, %.lr.ph.split.split.split.preheader ], [ %.1, %Abc_TtHasVar.exit.thread ] ; 6 uses
  %i.al = icmp samesign ult i64 %indvars.iv, 6
  br i1 %i.al, label %.lr.ph.i, label %.preheader.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.split.split.split
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = shl nuw nsw i32 1, %i.am
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !77
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next54.i, %wide.trip.count57.i
  br i1 %exitcond58.not.i, label %Abc_TtHasVar.exit.thread, label %bb.g, !llvm.loop !18

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv53.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next54.i, %bb.f ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv53.i
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !77 ; 2 uses
  %i.at = lshr i64 %i.as, %i.ao
  %i.au = xor i64 %i.at, %i.as
  %i.av = and i64 %i.au, %i.aq
  %.not39.i = icmp eq i64 %i.av, 0
  br i1 %.not39.i, label %bb.f, label %Abc_TtHasVar.exit.thread30

.preheader.lr.ph.i:                               ; preds = %.lr.ph.split.split.split
  %i.aw = add nsw i64 %indvars.iv, -6             ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 31
  %i.ay = trunc nsw i64 %i.aw to i32              ; 2 uses
  %i.az = shl i32 2, %i.ay
  %i.ba = sext i32 %i.az to i64
  br i1 %i.ax, label %Abc_TtHasVar.exit.thread, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.bb = shl nuw i32 1, %i.ay                    ; 2 uses
  %i.bc = sext i32 %i.bb to i64
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.bb, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.03343.us.i = phi ptr [ %i.bg, %._crit_edge.us.i ], [ %0, %.preheader.us.preheader.i ] ; 3 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.03343.us.i, i64 %i.bc
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.i, !llvm.loop !16

bb.i:                                             ; preds = %bb.h, %.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i, %bb.h ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i, i64 %indvars.iv.i
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !77
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.bf = load i64, ptr %gep.i, align 8, !tbaa !77
  %.not.us.i = icmp eq i64 %i.be, %i.bf
  br i1 %.not.us.i, label %bb.h, label %Abc_TtHasVar.exit.thread30

._crit_edge.us.i:                                 ; preds = %bb.h
  %i.bg = getelementptr inbounds [8 x i8], ptr %.03343.us.i, i64 %i.ba ; 2 uses
  %i.bh = icmp ult ptr %i.bg, %i.f
  br i1 %i.bh, label %.preheader.us.i, label %Abc_TtHasVar.exit.thread, !llvm.loop !17

Abc_TtHasVar.exit.thread30:                       ; preds = %bb.g, %bb.i
  %i.bi = sext i32 %.038 to i64                   ; 2 uses
  %i.bj = icmp sgt i64 %indvars.iv, %i.bi
  br i1 %i.bj, label %bb.j, label %bb.m

bb.j:                                             ; preds = %Abc_TtHasVar.exit.thread30
  br i1 %.not26, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !58
  %i.bm = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bi
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !58
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bn = trunc nuw nsw i64 %indvars.iv to i32
  tail call fastcc void @Abc_TtSwapVars(ptr noundef %0, i32 noundef %3, i32 noundef %.038, i32 noundef %i.bn)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %Abc_TtHasVar.exit.thread30
  %i.bo = add nsw i32 %.038, 1
  br label %Abc_TtHasVar.exit.thread

Abc_TtHasVar.exit.thread:                         ; preds = %._crit_edge.us.i, %bb.f, %.preheader.lr.ph.i, %bb.m
  %.1 = phi i32 [ %i.bo, %bb.m ], [ %.038, %bb.f ], [ %.038, %.preheader.lr.ph.i ], [ %.038, %._crit_edge.us.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split.split, !llvm.loop !285

._crit_edge:                                      ; preds = %Abc_TtHasVar.exit.thread, %Abc_TtHasVar.exit.thread.us, %Abc_TtHasVar.exit.thread.us.us, %.lr.ph.split, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph.split ], [ %.1.us, %Abc_TtHasVar.exit.thread.us ], [ %.1.us.us, %Abc_TtHasVar.exit.thread.us.us ], [ %.1, %Abc_TtHasVar.exit.thread ]
  ret i32 %.0.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind uwtable
define void @Gia_ManMatchConesOutputPrint(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.a = getelementptr i8, ptr %0, i64 4          ; 3 uses
  %.val911 = load i32, ptr %i.a, align 4, !tbaa !109
  %i.b = icmp sgt i32 %.val911, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %Vec_WecPrint.exit.us, label %.lr.ph.split

Vec_WecPrint.exit.us:                             ; preds = %.lr.ph, %Vec_WecPrint.exit.us
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %Vec_WecPrint.exit.us ], [ 0, %.lr.ph ] ; 3 uses
  %.val10.us = load ptr, ptr %i.c, align 8, !tbaa !111
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.val10.us, i64 %indvars.iv15
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !112
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %.val.us = load i32, ptr %i.f, align 4, !tbaa !89
  %i.g = trunc nuw nsw i64 %indvars.iv15 to i32
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.54, i32 noundef %i.g, i32 noundef %.val.us) ; 0 uses
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1 ; 2 uses
  %.val9.us = load i32, ptr %i.a, align 4, !tbaa !109
  %i.i = sext i32 %.val9.us to i64
  %i.j = icmp slt i64 %indvars.iv.next16, %i.i
  br i1 %i.j, label %Vec_WecPrint.exit.us, label %.critedge, !llvm.loop !286

.lr.ph.split:                                     ; preds = %.lr.ph, %Vec_WecPrint.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_WecPrint.exit ], [ 0, %.lr.ph ] ; 3 uses
  %.val10 = load ptr, ptr %i.c, align 8, !tbaa !111
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.val10, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !112  ; 2 uses
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  %i.n = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, i32 noundef %i.m) ; 0 uses
  %i.o = getelementptr i8, ptr %i.l, i64 4        ; 2 uses
  %.val1821.i = load i32, ptr %i.o, align 4, !tbaa !89
  %i.p = icmp sgt i32 %.val1821.i, 0
  br i1 %i.p, label %.lr.ph23.i, label %Vec_WecPrint.exit

.lr.ph23.i:                                       ; preds = %.lr.ph.split
  %i.q = getelementptr i8, ptr %i.l, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.critedge2.i, %.lr.ph23.i
  %indvars.iv25.i = phi i64 [ 0, %.lr.ph23.i ], [ %indvars.iv.next26.i, %.critedge2.i ] ; 3 uses
  %.val.i = load ptr, ptr %i.q, align 8, !tbaa !56
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %indvars.iv25.i ; 2 uses
  %i.s = trunc nuw nsw i64 %indvars.iv25.i to i32
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.62, i32 noundef %i.s) ; 0 uses
  %i.u = getelementptr i8, ptr %i.r, i64 4        ; 2 uses
  %.val1719.i = load i32, ptr %i.u, align 4, !tbaa !80
  %i.v = icmp sgt i32 %.val1719.i, 0
  br i1 %i.v, label %.lr.ph.i, label %.critedge2.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.w = getelementptr i8, ptr %i.r, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %.val16.i = load ptr, ptr %i.w, align 8, !tbaa !57
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.val16.i, i64 %indvars.iv.i
  %i.y = load i32, ptr %i.x, align 4, !tbaa !58
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.y) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val17.i = load i32, ptr %i.u, align 4, !tbaa !80
  %i.aa = sext i32 %.val17.i to i64
  %i.ab = icmp slt i64 %indvars.iv.next.i, %i.aa
  br i1 %i.ab, label %bb.c, label %.critedge2.i, !llvm.loop !13

.critedge2.i:                                     ; preds = %bb.c, %bb.b
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1 ; 2 uses
  %.val18.i = load i32, ptr %i.o, align 4, !tbaa !89
  %i.ac = sext i32 %.val18.i to i64
  %i.ad = icmp slt i64 %indvars.iv.next26.i, %i.ac
  br i1 %i.ad, label %bb.b, label %Vec_WecPrint.exit, !llvm.loop !14

Vec_WecPrint.exit:                                ; preds = %.critedge2.i, %.lr.ph.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val9 = load i32, ptr %i.a, align 4, !tbaa !109
  %i.ae = sext i32 %.val9 to i64
  %i.af = icmp slt i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %.lr.ph.split, label %.critedge, !llvm.loop !286

.critedge:                                        ; preds = %Vec_WecPrint.exit, %Vec_WecPrint.exit.us, %bb.a
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Gia_ManMatchConesOutputFree(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %.val7 = load i32, ptr %i.a, align 4, !tbaa !109
  %i.b = icmp sgt i32 %.val7, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Vec_WecFree.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_WecFree.exit ] ; 2 uses
  %.val6 = load ptr, ptr %i.c, align 8, !tbaa !111
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.val6, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !112  ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !88   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.pre.i.i = load ptr, ptr %i.h, align 8, !tbaa !56 ; 3 uses
  br i1 %i.g, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.i = phi i32 [ %i.q, %bb.d ], [ %i.f, %bb.b ]
  %i.j = phi ptr [ %i.r, %bb.d ], [ %.pre.i.i, %bb.b ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.d ], [ 0, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57   ; 2 uses
  %.not15.i.i = icmp eq ptr %i.m, null
  br i1 %.not15.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef nonnull %i.m) #30
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !56   ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %indvars.iv.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr null, ptr %i.p, align 8, !tbaa !57
  %.pre18.i.i = load i32, ptr %i.e, align 8, !tbaa !88
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.q = phi i32 [ %.pre18.i.i, %bb.c ], [ %i.i, %.lr.ph.i.i ] ; 2 uses
  %i.r = phi ptr [ %i.n, %bb.c ], [ %i.j, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.s = sext i32 %i.q to i64
  %i.t = icmp slt i64 %indvars.iv.next.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i, label %._crit_edge.thread.i.i, !llvm.loop !1

._crit_edge.i.i:                                  ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i, label %Vec_WecFree.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.d, %._crit_edge.i.i
  %i.u = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.r, %bb.d ]
  tail call void @free(ptr noundef nonnull %i.u) #30
  br label %Vec_WecFree.exit

Vec_WecFree.exit:                                 ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  tail call void @free(ptr noundef nonnull %i.e) #30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !109
  %i.v = sext i32 %.val to i64
  %i.w = icmp slt i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %bb.b, label %.critedge, !llvm.loop !287

.critedge:                                        ; preds = %Vec_WecFree.exit, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !111  ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %Vec_PtrFree.exit, label %bb.e

bb.e:                                             ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %i.y) #30
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %.critedge, %bb.e
  tail call void @free(ptr noundef nonnull %0) #30
  ret void
}

; Function Attrs: nounwind uwtable
define void @Gia_ManMatchConesOutput(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.b = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #30
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %5, align 8, !tbaa !83
  %.neg36 = mul i64 %i.d, -1000000
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !84
  %.neg = sdiv i64 %i.f, -1000
  %.neg37 = add i64 %.neg, %.neg36
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg37, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.g = getelementptr i8, ptr %1, i64 64         ; 2 uses
  %.val27 = load ptr, ptr %i.g, align 8, !tbaa !94
  %i.h = getelementptr i8, ptr %.val27, i64 4
  %.val27.val = load i32, ptr %i.h, align 4, !tbaa !80 ; 5 uses
  %i.i = icmp slt i32 %.val27.val, 7              ; 2 uses
  %i.j = add nsw i32 %.val27.val, -6              ; 2 uses
  %i.k = shl nuw i32 1, %i.j
  %.fr.i = freeze i32 %i.k
  %i.l = select i1 %i.i, i32 1, i32 %.fr.i        ; 2 uses
  %i.m = select i1 %i.i, i32 0, i32 %i.j          ; 2 uses
  %i.n = shl i32 %.val27.val, %i.m                ; 4 uses
  %i.o = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #32 ; 5 uses
  %i.p = add i32 %i.n, -1
  %or.cond.i.i.i = icmp ult i32 %i.p, 15
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i32 16, i32 %i.n ; 3 uses
  store i32 %spec.store.select.i.i.i, ptr %i.o, align 8, !tbaa !103
  %.not.i.i.i = icmp eq i32 %spec.store.select.i.i.i, 0
  br i1 %.not.i.i.i, label %Vec_WrdStart.exit.i, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.q = sext i32 %spec.store.select.i.i.i to i64
  %i.r = shl nsw i64 %i.q, 3
  %i.s = call noalias ptr @malloc(i64 noundef %i.r) #32
  br label %Vec_WrdStart.exit.i

Vec_WrdStart.exit.i:                              ; preds = %bb.c, %Abc_Clock.exit
  %i.t = phi ptr [ %i.s, %bb.c ], [ null, %Abc_Clock.exit ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.t, ptr %i.v, align 8, !tbaa !102
  store i32 %i.n, ptr %i.u, align 4, !tbaa !104
  %i.w = sext i32 %i.n to i64
  %i.x = shl nsw i64 %i.w, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.t, i8 0, i64 %i.x, i1 false)
  %i.y = icmp sgt i32 %.val27.val, 0
  %i.z = icmp sgt i32 %i.l, 0
  %or.cond = and i1 %i.y, %i.z
  br i1 %or.cond, label %.lr.ph34.split.us.split.us.preheader.i, label %Vec_WrdStartTruthTables.exit

.lr.ph34.split.us.split.us.preheader.i:           ; preds = %Vec_WrdStart.exit.i
  %i.aa = shl nuw i32 %i.l, 1                     ; 2 uses
  %smax64.i = call i32 @llvm.smax.i32(i32 %i.aa, i32 1)
  %wide.trip.count76.i = zext nneg i32 %.val27.val to i64
  %wide.trip.count65.i = zext nneg i32 %smax64.i to i64 ; 6 uses
  %min.iters.check = icmp slt i32 %i.aa, 8        ; 2 uses
  %n.vec57 = and i64 %wide.trip.count65.i, 2147483640 ; 3 uses
  %cmp.n64 = icmp eq i64 %n.vec57, %wide.trip.count65.i
  %n.vec = and i64 %wide.trip.count65.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count65.i
  br label %.lr.ph34.split.us.split.us.i

.lr.ph34.split.us.split.us.i:                     ; preds = %..loopexit28_crit_edge.us.us.i, %.lr.ph34.split.us.split.us.preheader.i
  %indvars.iv73.i = phi i64 [ 0, %.lr.ph34.split.us.split.us.preheader.i ], [ %indvars.iv.next74.i, %..loopexit28_crit_edge.us.us.i ] ; 4 uses
  %i.ab = trunc i64 %indvars.iv73.i to i32        ; 2 uses
  %i.ac = shl i32 %i.ab, %i.m
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ad ; 4 uses
  %i.af = icmp samesign ult i64 %indvars.iv73.i, 5
  br i1 %i.af, label %.preheader.us.us.i, label %.preheader27.us.us.i

.preheader27.us.us.i:                             ; preds = %.lr.ph34.split.us.split.us.i
  %i.ag = add i32 %i.ab, -5
  %i.ah = shl nuw i32 1, %i.ag                    ; 2 uses
  br i1 %min.iters.check, label %scalar.ph54.preheader, label %vector.ph56

vector.ph56:                                      ; preds = %.preheader27.us.us.i
  %broadcast.splatinsert58 = insertelement <4 x i32> poison, i32 %i.ah, i64 0
  %broadcast.splat59 = shufflevector <4 x i32> %broadcast.splatinsert58, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body60

vector.body60:                                    ; preds = %vector.body60, %vector.ph56
  %index61 = phi i64 [ 0, %vector.ph56 ], [ %index.next62, %vector.body60 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph56 ], [ %vec.ind.next, %vector.body60 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ai = and <4 x i32> %broadcast.splat59, %vec.ind
  %i.aj = and <4 x i32> %broadcast.splat59, %step.add
  %i.ak = icmp ne <4 x i32> %i.ai, zeroinitializer
  %i.al = icmp ne <4 x i32> %i.aj, zeroinitializer
  %i.am = sext <4 x i1> %i.ak to <4 x i32>
  %i.an = sext <4 x i1> %i.al to <4 x i32>
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index61 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <4 x i32> %i.am, ptr %i.ao, align 4, !tbaa !58
  store <4 x i32> %i.an, ptr %i.ap, align 4, !tbaa !58
  %index.next62 = add nuw i64 %index61, 8         ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.aq = icmp eq i64 %index.next62, %n.vec57
  br i1 %i.aq, label %middle.block63, label %vector.body60, !llvm.loop !288

middle.block63:                                   ; preds = %vector.body60
  br i1 %cmp.n64, label %..loopexit28_crit_edge.us.us.i, label %scalar.ph54.preheader

scalar.ph54.preheader:                            ; preds = %.preheader27.us.us.i, %middle.block63
  %indvars.iv61.i.ph = phi i64 [ 0, %.preheader27.us.us.i ], [ %n.vec57, %middle.block63 ]
  br label %scalar.ph54

scalar.ph54:                                      ; preds = %scalar.ph54.preheader, %scalar.ph54
  %indvars.iv61.i = phi i64 [ %indvars.iv.next62.i, %scalar.ph54 ], [ %indvars.iv61.i.ph, %scalar.ph54.preheader ] ; 3 uses
  %i.ar = trunc nuw nsw i64 %indvars.iv61.i to i32
  %i.as = and i32 %i.ah, %i.ar
  %.not.us.us.i = icmp ne i32 %i.as, 0
  %spec.select.i = sext i1 %.not.us.us.i to i32
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv61.i
  store i32 %spec.select.i, ptr %i.at, align 4, !tbaa !58
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 1 ; 2 uses
  %exitcond66.not.i = icmp eq i64 %indvars.iv.next62.i, %wide.trip.count65.i
  br i1 %exitcond66.not.i, label %..loopexit28_crit_edge.us.us.i, label %scalar.ph54, !llvm.loop !289

.preheader.us.us.i:                               ; preds = %.lr.ph34.split.us.split.us.i
  %i.au = getelementptr inbounds nuw [4 x i8], ptr @__const.Vec_WrdStartTruthTables.Masks, i64 %indvars.iv73.i
  %i.av = load i32, ptr %i.au, align 4, !tbaa !58 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.aw, align 4, !tbaa !58
  store <4 x i32> %broadcast.splat, ptr %i.ax, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !290

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit28_crit_edge.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us.i, %middle.block
  %indvars.iv67.i.ph = phi i64 [ 0, %.preheader.us.us.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv67.i = phi i64 [ %indvars.iv.next68.i, %scalar.ph ], [ %indvars.iv67.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv67.i
  store i32 %i.av, ptr %i.az, align 4, !tbaa !58
  %indvars.iv.next68.i = add nuw nsw i64 %indvars.iv67.i, 1 ; 2 uses
  %exitcond72.not.i = icmp eq i64 %indvars.iv.next68.i, %wide.trip.count65.i
  br i1 %exitcond72.not.i, label %..loopexit28_crit_edge.us.us.i, label %scalar.ph, !llvm.loop !291

..loopexit28_crit_edge.us.us.i:                   ; preds = %scalar.ph54, %scalar.ph, %middle.block63, %middle.block
  %indvars.iv.next74.i = add nuw nsw i64 %indvars.iv73.i, 1 ; 2 uses
  %exitcond77.not.i = icmp eq i64 %indvars.iv.next74.i, %wide.trip.count76.i
  br i1 %exitcond77.not.i, label %Vec_WrdStartTruthTables.exit, label %.lr.ph34.split.us.split.us.i, !llvm.loop !9

Vec_WrdStartTruthTables.exit:                     ; preds = %..loopexit28_crit_edge.us.us.i, %Vec_WrdStart.exit.i
  %i.ba = call ptr @Gia_ManSimPatSimOut(ptr noundef %1, ptr noundef nonnull %i.o, i32 noundef 1) #30 ; 7 uses
  %.val = load ptr, ptr %i.g, align 8, !tbaa !94
  %i.bb = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.bb, align 4, !tbaa !80
  %i.bc = call i32 @Gia_ManMatchConesMinimizeTts(ptr noundef %i.ba, i32 noundef %.val.val) ; 6 uses
  %i.bd = load ptr, ptr %i.v, align 8, !tbaa !102 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %Vec_WrdFree.exit, label %bb.d

bb.d:                                             ; preds = %Vec_WrdStartTruthTables.exit
  call void @free(ptr noundef nonnull %i.bd) #30
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %Vec_WrdStartTruthTables.exit, %bb.d
  call void @free(ptr noundef nonnull %i.o) #30
  %i.be = icmp samesign ugt i32 %i.bc, 10
  br i1 %i.be, label %bb.e, label %bb.g

bb.e:                                             ; preds = %Vec_WrdFree.exit
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !102 ; 2 uses
  %.not.i29 = icmp eq ptr %i.bg, null
  br i1 %.not.i29, label %Vec_WrdFree.exit30, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef nonnull %i.bg) #30
  br label %Vec_WrdFree.exit30

Vec_WrdFree.exit30:                               ; preds = %bb.e, %bb.f
  call void @free(ptr noundef nonnull %i.ba) #30
  br label %bb.r

bb.g:                                             ; preds = %Vec_WrdFree.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store ptr null, ptr %i.a, align 8, !tbaa !93
  %i.bh = call ptr @Dau_CollectNpnFunctionsArray(ptr noundef %i.ba, i32 noundef %i.bc, ptr noundef nonnull %i.a, i32 noundef %3) #30 ; 7 uses
  %i.bi = getelementptr i8, ptr %i.ba, i64 4
  %.val28 = load i32, ptr %i.bi, align 4, !tbaa !104
  %i.bj = icmp samesign ult i32 %i.bc, 7
  %i.bk = add nsw i32 %i.bc, -6
  %i.bl = shl nuw nsw i32 1, %i.bk
  %i.bm = select i1 %i.bj, i32 1, i32 %i.bl
  %i.bn = sdiv i32 %.val28, %i.bm                 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !102 ; 2 uses
  %.not.i31 = icmp eq ptr %i.bp, null
  br i1 %.not.i31, label %Vec_WrdFree.exit32, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef nonnull %i.bp) #30
  br label %Vec_WrdFree.exit32

Vec_WrdFree.exit32:                               ; preds = %bb.g, %bb.h
  call void @free(ptr noundef nonnull %i.ba) #30
  %i.bq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56, i32 noundef %i.bn, i32 noundef %i.bc) ; 0 uses
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.bs = call ptr @Gia_ManMatchCutsMany(ptr noundef %i.bh, ptr noundef %i.br, i32 noundef %i.bn, ptr noundef %0, i32 noundef %i.bc, i32 noundef %2, i32 noundef %3) ; 2 uses
  %i.bt = icmp eq ptr %i.bh, null
  br i1 %i.bt, label %Vec_MemHashFree.exit, label %bb.i

bb.i:                                             ; preds = %Vec_WrdFree.exit32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !93 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %Vec_IntFreeP.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !57 ; 2 uses
  %.not.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i, label %bb.k, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.j
  call void @free(ptr noundef nonnull %i.by) #30
  %i.bz = load ptr, ptr %i.bu, align 8, !tbaa !93 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr null, ptr %i.ca, align 8, !tbaa !57
  br label %bb.k

bb.k:                                             ; preds = %.thread.i.i, %bb.j
  %i.cb = phi ptr [ %i.bz, %.thread.i.i ], [ %i.bv, %bb.j ]
  call void @free(ptr noundef nonnull %i.cb) #30
  store ptr null, ptr %i.bu, align 8, !tbaa !93
  br label %Vec_IntFreeP.exit.i

Vec_IntFreeP.exit.i:                              ; preds = %bb.k, %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 40 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !93 ; 3 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %Vec_MemHashFree.exit, label %bb.l

bb.l:                                             ; preds = %Vec_IntFreeP.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !57 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.cg, null
  br i1 %.not.i3.i, label %bb.m, label %.thread.i4.i

.thread.i4.i:                                     ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.cg) #30
  %i.ch = load ptr, ptr %i.cc, align 8, !tbaa !93 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr null, ptr %i.ci, align 8, !tbaa !57
  br label %bb.m

bb.m:                                             ; preds = %.thread.i4.i, %bb.l
  %i.cj = phi ptr [ %i.ch, %.thread.i4.i ], [ %i.cd, %bb.l ]
  call void @free(ptr noundef nonnull %i.cj) #30
  store ptr null, ptr %i.cc, align 8, !tbaa !93
  br label %Vec_MemHashFree.exit

Vec_MemHashFree.exit:                             ; preds = %Vec_WrdFree.exit32, %Vec_IntFreeP.exit.i, %bb.m
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bh, i64 20 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !90 ; 2 uses
  %.not19.i = icmp slt i32 %i.cl, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  %.pre23.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !71 ; 3 uses
  br i1 %.not19.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %Vec_MemHashFree.exit, %bb.o
  %i.cm = phi i32 [ %i.cs, %bb.o ], [ %i.cl, %Vec_MemHashFree.exit ]
  %i.cn = phi ptr [ %i.ct, %bb.o ], [ %.pre23.i, %Vec_MemHashFree.exit ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.o ], [ 0, %Vec_MemHashFree.exit ] ; 4 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv.i
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !74 ; 2 uses
  %.not18.i = icmp eq ptr %i.cp, null
  br i1 %.not18.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  call void @free(ptr noundef nonnull %i.cp) #30
  %i.cq = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !71 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv.i
  store ptr null, ptr %i.cr, align 8, !tbaa !74
  %.pre22.i = load i32, ptr %i.ck, align 4, !tbaa !90
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i
  %i.cs = phi i32 [ %.pre22.i, %bb.n ], [ %i.cm, %.lr.ph.i ] ; 2 uses
  %i.ct = phi ptr [ %i.cq, %bb.n ], [ %i.cn, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.cu = sext i32 %i.cs to i64
  %.not.not.i = icmp slt i64 %indvars.iv.i, %i.cu
  br i1 %.not.not.i, label %.lr.ph.i, label %._crit_edge.thread.i, !llvm.loop !2

._crit_edge.i:                                    ; preds = %Vec_MemHashFree.exit
  %.not16.i = icmp eq ptr %.pre23.i, null
  br i1 %.not16.i, label %Vec_MemFree.exit, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.o, %._crit_edge.i
  %i.cv = phi ptr [ %.pre23.i, %._crit_edge.i ], [ %i.ct, %bb.o ]
  call void @free(ptr noundef nonnull %i.cv) #30
  br label %Vec_MemFree.exit

Vec_MemFree.exit:                                 ; preds = %._crit_edge.i, %._crit_edge.thread.i
  call void @free(ptr noundef nonnull %i.bh) #30
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !93  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !57 ; 2 uses
  %.not.i33 = icmp eq ptr %i.cy, null
  br i1 %.not.i33, label %Vec_IntFree.exit, label %bb.p

bb.p:                                             ; preds = %Vec_MemFree.exit
  call void @free(ptr noundef nonnull %i.cy) #30
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Vec_MemFree.exit, %bb.p
  call void @free(ptr noundef nonnull %i.cw) #30
  call void @Gia_ManMatchConesOutputPrint(ptr noundef %i.bs, i32 noundef %3)
  call void @Gia_ManMatchConesOutputFree(ptr noundef %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.cz = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #30
  %i.da = icmp slt i32 %i.cz, 0
  br i1 %i.da, label %Abc_Clock.exit35, label %bb.q

bb.q:                                             ; preds = %Vec_IntFree.exit
  %i.db = load i64, ptr %4, align 8, !tbaa !83
  %i.dc = mul nsw i64 %i.db, 1000000
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !84
  %i.df = sdiv i64 %i.de, 1000
  %i.dg = add nsw i64 %i.df, %i.dc
  br label %Abc_Clock.exit35

Abc_Clock.exit35:                                 ; preds = %Vec_IntFree.exit, %bb.q
  %.0.i34 = phi i64 [ %i.dg, %bb.q ], [ -1, %Vec_IntFree.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.dh = add i64 %.0.i34, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.51)
  %i.di = sitofp i64 %i.dh to double
  %i.dj = fdiv double %i.di, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.58, double noundef %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.r

bb.r:                                             ; preds = %Abc_Clock.exit35, %Vec_WrdFree.exit30
  ret void
}

declare ptr @Gia_ManSimPatSimOut(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @Vec_MemHashInsert(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !298
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91   ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4        ; 2 uses
  %.val15 = load i32, ptr %i.e, align 4, !tbaa !80 ; 2 uses
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
  %i.o = load i32, ptr %i.d, align 8, !tbaa !81
  %.not.i.i.i = icmp slt i32 %i.o, %i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !57   ; 3 uses
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
  %i.t = tail call ptr @realloc(ptr noundef nonnull %i.q, i64 noundef %i.s) #31
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.s) #32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = phi ptr [ %i.t, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  store ptr %i.v, ptr %i.p, align 8, !tbaa !57
  store i32 %i.i, ptr %i.d, align 8, !tbaa !81
  br label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %bb.g, %Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i
  %.pre-phi42.i = phi i64 [ %.pre41.i, %Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i ], [ %i.s, %bb.g ]
  %i.w = phi ptr [ %i.q, %Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i ], [ %i.v, %bb.g ]
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 -1, i64 %.pre-phi42.i, i1 false), !tbaa !58
  store i32 %i.i, ptr %i.e, align 4, !tbaa !80
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !92
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 0, ptr %i.z, align 4, !tbaa !80
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1428.i = load i32, ptr %i.a, align 4, !tbaa !298
  %i.ab = icmp sgt i32 %.val1428.i, 0
  br i1 %i.ab, label %.lr.ph30.i, label %Vec_MemHashResize.exit

.lr.ph30.i:                                       ; preds = %.lr.ph.i15.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.h

bb.h:                                             ; preds = %Vec_IntPush.exit.i, %.lr.ph30.i
  %.029.i = phi i32 [ 0, %.lr.ph30.i ], [ %i.el, %Vec_IntPush.exit.i ] ; 3 uses
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !71 ; 3 uses
  %i.af = load i32, ptr %i.ac, align 8, !tbaa !72 ; 3 uses
  %i.ag = lshr i32 %.029.i, %i.af
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !74 ; 2 uses
  %i.ak = load i32, ptr %0, align 8, !tbaa !75    ; 7 uses
  %i.al = load i32, ptr %i.ad, align 4, !tbaa !76 ; 3 uses
  %i.am = and i32 %i.al, %.029.i
  %i.an = mul nsw i32 %i.am, %i.ak
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ao ; 9 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %Vec_MemHashResize.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !91  ; 2 uses
  %i.ar = icmp sgt i32 %i.ak, 0
  br i1 %i.ar, label %.lr.ph.preheader.i.i.i, label %Vec_MemHashKey.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.i
  %i.as = shl nuw i32 %i.ak, 1                    ; 2 uses
  %smax.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.as, i32 1)
  %wide.trip.count.i.i.i = zext nneg i32 %smax.i.i.i to i64 ; 2 uses
  %.not = icmp eq i32 %i.ak, 4
  br i1 %.not, label %vector.body, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.preheader.i.i.i
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 3 uses
  %i.at = icmp slt i32 %i.as, 4
  br i1 %i.at, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483644
  br label %.lr.ph.i.i.i

vector.body:                                      ; preds = %.lr.ph.preheader.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load = load <4 x i32>, ptr %i.ap, align 4, !tbaa !58
  %wide.load93 = load <4 x i32>, ptr %i.au, align 4, !tbaa !58
  %i.av = mul <4 x i32> %wide.load, <i32 1699, i32 4177, i32 5147, i32 5647>
  %i.aw = mul <4 x i32> %wide.load93, <i32 6343, i32 7103, i32 7873, i32 8147>
  %bin.rdx = add <4 x i32> %i.aw, %i.av
  %i.ax = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %Vec_MemHashKey.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %indvars.iv.next.i.i.i.3, %.lr.ph.i.i.i ] ; 6 uses
  %.012.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.bz, %.lr.ph.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i.i.i
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !58
  %i.ba = and i64 %indvars.iv.i.i.i, 4
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 16, !tbaa !58
  %i.bd = mul i32 %i.bc, %i.az
  %i.be = add i32 %i.bd, %.012.i.i.i
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !58
  %i.bh = and i64 %indvars.iv.next.i.i.i, 5
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !58
  %i.bk = mul i32 %i.bj, %i.bg
  %i.bl = add i32 %i.bk, %i.be
  %indvars.iv.next.i.i.i.1 = or disjoint i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i.i.1
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !58
  %i.bo = and i64 %indvars.iv.next.i.i.i.1, 6
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !58
  %i.br = mul i32 %i.bq, %i.bn
  %i.bs = add i32 %i.br, %i.bl
  %indvars.iv.next.i.i.i.2 = or disjoint i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i.i.2
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !58
  %i.bv = and i64 %indvars.iv.next.i.i.i.2, 7
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !58
  %i.by = mul i32 %i.bx, %i.bu
  %i.bz = add i32 %i.by, %i.bs                    ; 3 uses
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %Vec_MemHashKey.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !292

Vec_MemHashKey.exit.i.i.loopexit.unr-lcssa:       ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Vec_MemHashKey.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %Vec_MemHashKey.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.3, %Vec_MemHashKey.exit.i.i.loopexit.unr-lcssa ]
  %.012.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.bz, %Vec_MemHashKey.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod131 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod131)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.next.i.i.i.epil, %.lr.ph.i.i.i.epil ], [ %indvars.iv.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 3 uses
  %.012.i.i.i.epil = phi i32 [ %i.cg, %.lr.ph.i.i.i.epil ], [ %.012.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i.i.i.epil
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !58
  %i.cc = and i64 %indvars.iv.i.i.i.epil, 7
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !58
  %i.cf = mul i32 %i.ce, %i.cb
  %i.cg = add i32 %i.cf, %.012.i.i.i.epil         ; 2 uses
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %Vec_MemHashKey.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !293

Vec_MemHashKey.exit.i.i:                          ; preds = %Vec_MemHashKey.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %vector.body, %bb.i
  %.0.lcssa.i.i.i = phi i32 [ 0, %bb.i ], [ %i.ax, %vector.body ], [ %i.bz, %Vec_MemHashKey.exit.i.i.loopexit.unr-lcssa ], [ %i.cg, %.lr.ph.i.i.i.epil ]
  %i.ch = getelementptr i8, ptr %i.aq, i64 4
  %.val.i.i.i = load i32, ptr %i.ch, align 4, !tbaa !80
  %i.ci = urem i32 %.0.lcssa.i.i.i, %.val.i.i.i
  %i.cj = getelementptr i8, ptr %i.aq, i64 8
  %.val16.i.i = load ptr, ptr %i.cj, align 8, !tbaa !57
  %i.ck = sext i32 %i.ci to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %.val16.i.i, i64 %i.ck ; 3 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !58 ; 4 uses
  %.not17.i.i = icmp eq i32 %i.cm, -1
  br i1 %.not17.i.i, label %Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i, label %.lr.ph.i16.i

Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i: ; preds = %Vec_MemHashKey.exit.i.i
  %.pre37.i = load ptr, ptr %i.x, align 8, !tbaa !92
  br label %Vec_MemHashLookup.exit.i

.lr.ph.i16.i:                                     ; preds = %Vec_MemHashKey.exit.i.i
  %i.cn = sext i32 %i.ak to i64
  %i.co = shl nsw i64 %i.cn, 3                    ; 2 uses
  %i.cp = ashr i32 %i.cm, %i.af
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !74
  %i.ct = and i32 %i.cm, %i.al
  %i.cu = mul nsw i32 %i.ct, %i.ak
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.cv
  %bcmp.i24.i = tail call i32 @bcmp(ptr %i.cw, ptr nonnull readonly %i.ap, i64 %i.co)
  %.not15.i1725.i = icmp eq i32 %bcmp.i24.i, 0
  %.pre38.i = load ptr, ptr %i.x, align 8, !tbaa !92 ; 4 uses
  br i1 %.not15.i1725.i, label %Vec_MemHashLookup.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i16.i
  %i.cx = getelementptr i8, ptr %.pre38.i, i64 8
  %.val.i.i = load ptr, ptr %i.cx, align 8, !tbaa !57 ; 3 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.cy = ashr i32 %i.dj, %i.af
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !74
  %i.dc = and i32 %i.dj, %i.al
  %i.dd = mul nsw i32 %i.dc, %i.ak
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.de
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.df, ptr nonnull readonly %i.ap, i64 %i.co)
  %.not15.i17.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not15.i17.i, label %Vec_MemHashLookup.exit.i.loopexit, label %bb.k, !llvm.loop !15

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %i.dg = phi i32 [ %i.cm, %.lr.ph.i ], [ %i.dj, %bb.j ]
  %i.dh = sext i32 %i.dg to i64                   ; 3 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !58 ; 4 uses
  %.not.i18.i = icmp eq i32 %i.dj, -1
  br i1 %.not.i18.i, label %.Vec_MemHashLookup.exit.loopexit_crit_edge.i, label %bb.j, !llvm.loop !15

.Vec_MemHashLookup.exit.loopexit_crit_edge.i:     ; preds = %bb.k
  %i.dk = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.dh
  br label %Vec_MemHashLookup.exit.i, !llvm.loop !15

Vec_MemHashLookup.exit.i.loopexit:                ; preds = %bb.j
  %i.dl = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.dh
  br label %Vec_MemHashLookup.exit.i

Vec_MemHashLookup.exit.i:                         ; preds = %Vec_MemHashLookup.exit.i.loopexit, %.Vec_MemHashLookup.exit.loopexit_crit_edge.i, %.lr.ph.i16.i, %Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i
  %i.dm = phi ptr [ %.pre37.i, %Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i ], [ %.pre38.i, %.lr.ph.i16.i ], [ %.pre38.i, %.Vec_MemHashLookup.exit.loopexit_crit_edge.i ], [ %.pre38.i, %Vec_MemHashLookup.exit.i.loopexit ] ; 6 uses
  %.0.lcssa.i.i = phi ptr [ %i.cl, %Vec_MemHashKey.exit.i.Vec_MemHashLookup.exit_crit_edge.i ], [ %i.cl, %.lr.ph.i16.i ], [ %i.dk, %.Vec_MemHashLookup.exit.loopexit_crit_edge.i ], [ %i.dl, %Vec_MemHashLookup.exit.i.loopexit ]
  %i.dn = getelementptr i8, ptr %i.dm, i64 4      ; 3 uses
  %.val.i = load i32, ptr %i.dn, align 4, !tbaa !80 ; 8 uses
  store i32 %.val.i, ptr %.0.lcssa.i.i, align 4, !tbaa !58
  %i.do = load i32, ptr %i.dm, align 8, !tbaa !81
  %i.dp = icmp eq i32 %.val.i, %i.do
  br i1 %i.dp, label %bb.l, label %Vec_IntPush.exit.i

bb.l:                                             ; preds = %Vec_MemHashLookup.exit.i
  %i.dq = icmp slt i32 %.val.i, 16
  br i1 %i.dq, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !57 ; 2 uses
  %.not9.i.i19.i = icmp eq ptr %i.ds, null
  br i1 %.not9.i.i19.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dt = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ds, i64 noundef 64) #31
  br label %Vec_IntGrow.exit.i20.i

bb.o:                                             ; preds = %bb.m
  %i.du = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #32
  br label %Vec_IntGrow.exit.i20.i

Vec_IntGrow.exit.i20.i:                           ; preds = %bb.o, %bb.n
  %i.dv = phi ptr [ %i.dt, %bb.n ], [ %i.du, %bb.o ]
  store ptr %i.dv, ptr %i.dr, align 8, !tbaa !57
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.p:                                             ; preds = %bb.l
  %i.dw = icmp samesign ult i32 %.val.i, 1073741823
  %i.dx = shl nuw nsw i32 %.val.i, 1
  %spec.select.i.i = select i1 %i.dw, i32 %i.dx, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %.val.i, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.q, label %Vec_IntPush.exit.i

bb.q:                                             ; preds = %bb.p
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !57 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.dz, null
  %i.ea = zext nneg i32 %spec.select.i.i to i64
  %i.eb = shl nuw nsw i64 %i.ea, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ec = tail call ptr @realloc(ptr noundef nonnull %i.dz, i64 noundef %i.eb) #31
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ed = tail call noalias ptr @malloc(i64 noundef %i.eb) #32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ee = phi ptr [ %i.ec, %bb.r ], [ %i.ed, %bb.s ]
  store ptr %i.ee, ptr %i.dy, align 8, !tbaa !57
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.t, %Vec_IntGrow.exit.i20.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.t ], [ 16, %Vec_IntGrow.exit.i20.i ]
  store i32 %spec.select.sink.i.i, ptr %i.dm, align 8, !tbaa !81
  %.pre39.i = load i32, ptr %i.dn, align 4, !tbaa !80
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.p, %Vec_MemHashLookup.exit.i
  %i.ef = phi i32 [ %.val.i, %Vec_MemHashLookup.exit.i ], [ %.val.i, %bb.p ], [ %.pre39.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !57
  %i.ei = add nsw i32 %i.ef, 1
  store i32 %i.ei, ptr %i.dn, align 4, !tbaa !80
  %i.ej = sext i32 %i.ef to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.ej
  store i32 -1, ptr %i.ek, align 4, !tbaa !58
  %i.el = add nuw nsw i32 %.029.i, 1              ; 2 uses
  %.val14.i = load i32, ptr %i.a, align 4, !tbaa !298
  %i.em = icmp slt i32 %i.el, %.val14.i
  br i1 %i.em, label %bb.h, label %Vec_MemHashResize.exit, !llvm.loop !294

Vec_MemHashResize.exit:                           ; preds = %Vec_IntPush.exit.i, %bb.h, %.lr.ph.i15.i, %bb.a
  %i.en = load ptr, ptr %i.c, align 8, !tbaa !91  ; 2 uses
  %i.eo = load i32, ptr %0, align 8, !tbaa !75    ; 6 uses
  %i.ep = icmp sgt i32 %i.eo, 0
  br i1 %i.ep, label %.lr.ph.preheader.i.i, label %Vec_MemHashKey.exit.i

.lr.ph.preheader.i.i:                             ; preds = %Vec_MemHashResize.exit
  %i.eq = shl nuw i32 %i.eo, 1                    ; 2 uses
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.eq, i32 1)
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64 ; 2 uses
  %.not115 = icmp eq i32 %i.eo, 4
  br i1 %.not115, label %vector.body101, label %.lr.ph.i.i21.preheader

.lr.ph.i.i21.preheader:                           ; preds = %.lr.ph.preheader.i.i
  %xtraiter132 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.er = icmp slt i32 %i.eq, 4
  br i1 %i.er, label %.lr.ph.i.i21.epil.preheader, label %.lr.ph.i.i21.preheader.new

.lr.ph.i.i21.preheader.new:                       ; preds = %.lr.ph.i.i21.preheader
  %unroll_iter137 = and i64 %wide.trip.count.i.i, 2147483644
  br label %.lr.ph.i.i21

vector.body101:                                   ; preds = %.lr.ph.preheader.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.load105 = load <4 x i32>, ptr %1, align 4, !tbaa !58
  %wide.load106 = load <4 x i32>, ptr %i.es, align 4, !tbaa !58
  %i.et = mul <4 x i32> %wide.load105, <i32 1699, i32 4177, i32 5147, i32 5647>
  %i.eu = mul <4 x i32> %wide.load106, <i32 6343, i32 7103, i32 7873, i32 8147>
  %bin.rdx111 = add <4 x i32> %i.eu, %i.et
  %i.ev = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx111)
  br label %Vec_MemHashKey.exit.i

.lr.ph.i.i21:                                     ; preds = %.lr.ph.i.i21, %.lr.ph.i.i21.preheader.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i21.preheader.new ], [ %indvars.iv.next.i.i.3, %.lr.ph.i.i21 ] ; 6 uses
  %.012.i.i22 = phi i32 [ 0, %.lr.ph.i.i21.preheader.new ], [ %i.fx, %.lr.ph.i.i21 ]
  %niter138 = phi i64 [ 0, %.lr.ph.i.i21.preheader.new ], [ %niter138.next.3, %.lr.ph.i.i21 ]
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.i
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !58
  %i.ey = and i64 %indvars.iv.i.i, 4
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 16, !tbaa !58
  %i.fb = mul i32 %i.fa, %i.ex
  %i.fc = add i32 %i.fb, %.012.i.i22
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.i
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !58
  %i.ff = and i64 %indvars.iv.next.i.i, 5
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !58
  %i.fi = mul i32 %i.fh, %i.fe
  %i.fj = add i32 %i.fi, %i.fc
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.i.1
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !58
  %i.fm = and i64 %indvars.iv.next.i.i.1, 6
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !58
  %i.fp = mul i32 %i.fo, %i.fl
  %i.fq = add i32 %i.fp, %i.fj
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.i.2
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !58
  %i.ft = and i64 %indvars.iv.next.i.i.2, 7
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !58
  %i.fw = mul i32 %i.fv, %i.fs
  %i.fx = add i32 %i.fw, %i.fq                    ; 3 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter138.next.3 = add i64 %niter138, 4         ; 2 uses
  %niter138.ncmp.3 = icmp eq i64 %niter138.next.3, %unroll_iter137
  br i1 %niter138.ncmp.3, label %Vec_MemHashKey.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i21, !llvm.loop !295

Vec_MemHashKey.exit.i.loopexit.unr-lcssa:         ; preds = %.lr.ph.i.i21
  %lcmp.mod134.not = icmp eq i64 %xtraiter132, 0
  br i1 %lcmp.mod134.not, label %Vec_MemHashKey.exit.i, label %.lr.ph.i.i21.epil.preheader

.lr.ph.i.i21.epil.preheader:                      ; preds = %Vec_MemHashKey.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i21.preheader
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i21.preheader ], [ %indvars.iv.next.i.i.3, %Vec_MemHashKey.exit.i.loopexit.unr-lcssa ]
  %.012.i.i22.epil.init = phi i32 [ 0, %.lr.ph.i.i21.preheader ], [ %i.fx, %Vec_MemHashKey.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod136 = icmp ne i64 %xtraiter132, 0
  tail call void @llvm.assume(i1 %lcmp.mod136)
  br label %.lr.ph.i.i21.epil

.lr.ph.i.i21.epil:                                ; preds = %.lr.ph.i.i21.epil, %.lr.ph.i.i21.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i21.epil ], [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i21.epil.preheader ] ; 3 uses
  %.012.i.i22.epil = phi i32 [ %i.ge, %.lr.ph.i.i21.epil ], [ %.012.i.i22.epil.init, %.lr.ph.i.i21.epil.preheader ]
  %epil.iter133 = phi i64 [ %epil.iter133.next, %.lr.ph.i.i21.epil ], [ 0, %.lr.ph.i.i21.epil.preheader ]
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.i.epil
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !58
  %i.ga = and i64 %indvars.iv.i.i.epil, 7
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr @Vec_MemHashKey.s_Primes, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !58
  %i.gd = mul i32 %i.gc, %i.fz
  %i.ge = add i32 %i.gd, %.012.i.i22.epil         ; 2 uses
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter133.next = add i64 %epil.iter133, 1   ; 2 uses
  %epil.iter133.cmp.not = icmp eq i64 %epil.iter133.next, %xtraiter132
  br i1 %epil.iter133.cmp.not, label %Vec_MemHashKey.exit.i, label %.lr.ph.i.i21.epil, !llvm.loop !296

Vec_MemHashKey.exit.i:                            ; preds = %Vec_MemHashKey.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i21.epil, %vector.body101, %Vec_MemHashResize.exit
  %.0.lcssa.i.i16 = phi i32 [ 0, %Vec_MemHashResize.exit ], [ %i.ev, %vector.body101 ], [ %i.fx, %Vec_MemHashKey.exit.i.loopexit.unr-lcssa ], [ %i.ge, %.lr.ph.i.i21.epil ]
  %i.gf = getelementptr i8, ptr %i.en, i64 4
  %.val.i.i17 = load i32, ptr %i.gf, align 4, !tbaa !80
  %i.gg = urem i32 %.0.lcssa.i.i16, %.val.i.i17
  %i.gh = getelementptr i8, ptr %i.en, i64 8
  %.val16.i = load ptr, ptr %i.gh, align 8, !tbaa !57
  %i.gi = sext i32 %i.gg to i64
  %i.gj = getelementptr inbounds [4 x i8], ptr %.val16.i, i64 %i.gi ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !58 ; 5 uses
  %.not17.i = icmp eq i32 %i.gk, -1
  br i1 %.not17.i, label %Vec_MemHashLookup.exit.thread, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %Vec_MemHashKey.exit.i
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !71 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !72 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !76 ; 2 uses
  %i.gr = sext i32 %i.eo to i64
  %i.gs = shl nsw i64 %i.gr, 3                    ; 2 uses
  %i.gt = ashr i32 %i.gk, %i.go
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.gm, i64 %i.gu
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !74
  %i.gx = and i32 %i.gk, %i.gq
  %i.gy = mul nsw i32 %i.gx, %i.eo
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.gz
  %bcmp.i41 = tail call i32 @bcmp(ptr %i.ha, ptr readonly %1, i64 %i.gs)
  %.not15.i42 = icmp eq i32 %bcmp.i41, 0
  br i1 %.not15.i42, label %Vec_MemHashLookup.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i18
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !92
  %i.hd = getelementptr i8, ptr %i.hc, i64 8
  %.val.i19 = load ptr, ptr %i.hd, align 8, !tbaa !57 ; 2 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.v
  %i.he = ashr i32 %i.hp, %i.go
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.gm, i64 %i.hf
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !74
  %i.hi = and i32 %i.hp, %i.gq
  %i.hj = mul nsw i32 %i.hi, %i.eo
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.hh, i64 %i.hk
  %bcmp.i = tail call i32 @bcmp(ptr %i.hl, ptr readonly %1, i64 %i.gs)
  %.not15.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not15.i, label %Vec_MemHashLookup.exit, label %bb.v, !llvm.loop !15

bb.v:                                             ; preds = %.lr.ph, %bb.u
  %i.hm = phi i32 [ %i.gk, %.lr.ph ], [ %i.hp, %bb.u ]
  %i.hn = sext i32 %i.hm to i64                   ; 2 uses
  %i.ho = getelementptr inbounds [4 x i8], ptr %.val.i19, i64 %i.hn
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !58 ; 5 uses
  %.not.i20 = icmp eq i32 %i.hp, -1
  br i1 %.not.i20, label %Vec_MemHashLookup.exit.thread.loopexit, label %bb.u, !llvm.loop !15

Vec_MemHashLookup.exit.thread.loopexit:           ; preds = %bb.v
  %i.hq = getelementptr inbounds [4 x i8], ptr %.val.i19, i64 %i.hn
  br label %Vec_MemHashLookup.exit.thread

Vec_MemHashLookup.exit.thread:                    ; preds = %Vec_MemHashLookup.exit.thread.loopexit, %Vec_MemHashKey.exit.i
  %.0.lcssa.i30 = phi ptr [ %i.gj, %Vec_MemHashKey.exit.i ], [ %i.hq, %Vec_MemHashLookup.exit.thread.loopexit ]
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !92 ; 6 uses
  %i.ht = getelementptr i8, ptr %i.hs, i64 4      ; 3 uses
  %.val14 = load i32, ptr %i.ht, align 4, !tbaa !80 ; 8 uses
  store i32 %.val14, ptr %.0.lcssa.i30, align 4, !tbaa !58
  %i.hu = load i32, ptr %i.hs, align 8, !tbaa !81
  %i.hv = icmp eq i32 %.val14, %i.hu
  br i1 %i.hv, label %bb.w, label %Vec_IntPush.exit

bb.w:                                             ; preds = %Vec_MemHashLookup.exit.thread
  %i.hw = icmp slt i32 %.val14, 16
  br i1 %i.hw, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !57 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.hy, null
  br i1 %.not9.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hz = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.hy, i64 noundef 64) #31
  br label %Vec_IntGrow.exit.i

bb.z:                                             ; preds = %bb.x
  %i.ia = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #32
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.z, %bb.y
  %i.ib = phi ptr [ %i.hz, %bb.y ], [ %i.ia, %bb.z ]
  store ptr %i.ib, ptr %i.hx, align 8, !tbaa !57
  br label %Vec_IntGrow.exit11.sink.split.i

bb.aa:                                            ; preds = %bb.w
  %i.ic = icmp samesign ult i32 %.val14, 1073741823
  %i.id = shl nuw nsw i32 %.val14, 1
  %spec.select.i = select i1 %i.ic, i32 %i.id, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %.val14, %spec.select.i
  br i1 %.not.i9.i, label %bb.ab, label %Vec_IntPush.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !57 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.if, null
  %i.ig = zext nneg i32 %spec.select.i to i64
  %i.ih = shl nuw nsw i64 %i.ig, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ii = tail call ptr @realloc(ptr noundef nonnull %i.if, i64 noundef %i.ih) #31
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.ij = tail call noalias ptr @malloc(i64 noundef %i.ih) #32
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ik = phi ptr [ %i.ii, %bb.ac ], [ %i.ij, %bb.ad ]
  store ptr %i.ik, ptr %i.ie, align 8, !tbaa !57
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.ae, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.ae ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.hs, align 8, !tbaa !81
  %.pre = load i32, ptr %i.ht, align 4, !tbaa !80
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_MemHashLookup.exit.thread, %bb.aa, %Vec_IntGrow.exit11.sink.split.i
  %i.il = phi i32 [ %.val14, %Vec_MemHashLookup.exit.thread ], [ %.val14, %bb.aa ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !57
  %i.io = add nsw i32 %i.il, 1
  store i32 %i.io, ptr %i.ht, align 4, !tbaa !80
  %i.ip = sext i32 %i.il to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.in, i64 %i.ip
  store i32 -1, ptr %i.iq, align 4, !tbaa !58
  %i.ir = load i32, ptr %i.a, align 4, !tbaa !298 ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.it = load i32, ptr %i.is, align 8, !tbaa !72 ; 3 uses
  %i.iu = ashr i32 %i.ir, %i.it                   ; 7 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !90 ; 3 uses
  %i.ix = icmp slt i32 %i.iw, %i.iu
  br i1 %i.ix, label %bb.af, label %Vec_MemPush.exit

bb.af:                                            ; preds = %Vec_IntPush.exit
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !299 ; 3 uses
  %.not36.i.i = icmp slt i32 %i.iu, %i.iz
  br i1 %.not36.i.i, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !71 ; 2 uses
  %.not37.i.i = icmp eq ptr %i.jb, null
  %.not38.i.i = icmp eq i32 %i.iz, 0
  %i.jc = shl nsw i32 %i.iz, 1
  %i.jd = add nsw i32 %i.iu, 32
  %i.je = select i1 %.not38.i.i, i32 %i.jd, i32 %i.jc ; 2 uses
  store i32 %i.je, ptr %i.iy, align 8, !tbaa !299
  %i.jf = sext i32 %i.je to i64
  %i.jg = shl nsw i64 %i.jf, 3                    ; 2 uses
  br i1 %.not37.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jh = tail call ptr @realloc(ptr noundef nonnull %i.jb, i64 noundef %i.jg) #31
  %.pre.pre.i.i = load i32, ptr %i.iv, align 4, !tbaa !90
  %.pre.pre.pre.pre.i = load i32, ptr %i.is, align 8, !tbaa !72
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.ji = tail call noalias ptr @malloc(i64 noundef %i.jg) #32
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pre.pre.pre.i = phi i32 [ %.pre.pre.pre.pre.i, %bb.ah ], [ %i.it, %bb.ai ]
  %.pre.i.i = phi i32 [ %.pre.pre.i.i, %bb.ah ], [ %i.iw, %bb.ai ]
  %i.jj = phi ptr [ %i.jh, %bb.ah ], [ %i.ji, %bb.ai ]
  store ptr %i.jj, ptr %i.ja, align 8, !tbaa !71
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.af
  %.pre.pre.i = phi i32 [ %.pre.pre.pre.i, %bb.aj ], [ %i.it, %bb.af ] ; 2 uses
  %i.jk = phi i32 [ %.pre.i.i, %bb.aj ], [ %i.iw, %bb.af ] ; 2 uses
  %.not40.not41.i.i = icmp slt i32 %i.jk, %i.iu
  br i1 %.not40.not41.i.i, label %.lr.ph.i.i23, label %._crit_edge.i.i

.lr.ph.i.i23:                                     ; preds = %bb.ak
  %i.jl = load i32, ptr %0, align 8, !tbaa !75
  %i.jm = shl i32 %i.jl, %.pre.pre.i
  %i.jn = sext i32 %i.jm to i64
  %i.jo = shl nsw i64 %i.jn, 3
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !71
  %i.jr = sext i32 %i.jk to i64
  %wide.trip.count.i.i24 = sext i32 %i.iu to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph.i.i23
  %indvars.iv.i.i25 = phi i64 [ %i.jr, %.lr.ph.i.i23 ], [ %indvars.iv.next.i.i26, %bb.al ]
  %indvars.iv.next.i.i26 = add nsw i64 %indvars.iv.i.i25, 1 ; 3 uses
  %i.js = tail call noalias ptr @malloc(i64 noundef %i.jo) #32
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.jq, i64 %indvars.iv.next.i.i26
  store ptr %i.js, ptr %i.jt, align 8, !tbaa !74
  %exitcond.not.i.i27 = icmp eq i64 %indvars.iv.next.i.i26, %wide.trip.count.i.i24
  br i1 %exitcond.not.i.i27, label %._crit_edge.i.i, label %bb.al, !llvm.loop !297

._crit_edge.i.i:                                  ; preds = %bb.al, %bb.ak
  store i32 %i.iu, ptr %i.iv, align 4, !tbaa !90
  %.pre.i = ashr i32 %i.ir, %.pre.pre.i
  br label %Vec_MemPush.exit

Vec_MemPush.exit:                                 ; preds = %Vec_IntPush.exit, %._crit_edge.i.i
  %.pre-phi.i = phi i32 [ %i.iu, %Vec_IntPush.exit ], [ %.pre.i, %._crit_edge.i.i ]
  %i.ju = add nsw i32 %i.ir, 1
  store i32 %i.ju, ptr %i.a, align 4, !tbaa !298
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !71
  %i.jx = sext i32 %.pre-phi.i to i64
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.jw, i64 %i.jx
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !74
  %i.ka = load i32, ptr %0, align 8, !tbaa !75    ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !76
  %i.kd = and i32 %i.kc, %i.ir
  %i.ke = mul nsw i32 %i.kd, %i.ka
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.kf
  %i.kh = sext i32 %i.ka to i64
  %i.ki = shl nsw i64 %i.kh, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.kg, ptr readonly align 8 %1, i64 %i.ki, i1 false)
  %i.kj = load ptr, ptr %i.hr, align 8, !tbaa !92
  %i.kk = getelementptr i8, ptr %i.kj, i64 4
  %.val = load i32, ptr %i.kk, align 4, !tbaa !80
  %i.kl = add nsw i32 %.val, -1
  br label %Vec_MemHashLookup.exit

Vec_MemHashLookup.exit:                           ; preds = %bb.u, %.lr.ph.i18, %Vec_MemPush.exit
  %.0 = phi i32 [ %i.kl, %Vec_MemPush.exit ], [ %i.gk, %.lr.ph.i18 ], [ %i.hp, %bb.u ]
  ret i32 %.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @Abc_TtSwapVars(ptr nofree noundef captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #17 {
bb.a:
  %i.a = icmp eq i32 %2, %3
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select = tail call i32 @llvm.smax.i32(i32 %3, i32 %2) ; 7 uses
  %spec.select117 = tail call i32 @llvm.smin.i32(i32 %3, i32 %2) ; 8 uses
  %i.b = icmp slt i32 %1, 7
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr %0, align 8, !tbaa !77     ; 3 uses
  %i.d = sext i32 %spec.select117 to i64
  %i.e = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.d
  %i.f = sext i32 %spec.select to i64
  %i.g = getelementptr inbounds [24 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = shl nuw i32 1, %spec.select
  %.neg.i = shl nsw i32 -1, %spec.select117
  %i.i = add i32 %i.h, %.neg.i
  %i.j = load i64, ptr %i.g, align 8, !tbaa !77
  %i.k = and i64 %i.j, %i.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !77
  %i.n = and i64 %i.m, %i.c
  %i.o = zext i32 %i.i to i64                     ; 2 uses
  %i.p = shl i64 %i.n, %i.o
  %i.q = or i64 %i.p, %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !77
  %i.t = and i64 %i.s, %i.c
  %i.u = lshr i64 %i.t, %i.o
  %i.v = or i64 %i.q, %i.u
  store i64 %i.v, ptr %0, align 8, !tbaa !77
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
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !77 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !77 ; 4 uses
  %i.ai = zext i32 %i.aa to i64                   ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !77 ; 4 uses
  %min.iters.check209 = icmp slt i32 %i.y, 4
  br i1 %min.iters.check209, label %scalar.ph208, label %vector.ph210

vector.ph210:                                     ; preds = %.lr.ph
  %i.al = and i32 %i.y, 2147483644
  %n.vec211 = zext nneg i32 %i.al to i64
  %broadcast.splatinsert212 = insertelement <2 x i64> poison, i64 %i.af, i64 0
  %broadcast.splat213 = shufflevector <2 x i64> %broadcast.splatinsert212, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert214 = insertelement <2 x i64> poison, i64 %i.ah, i64 0
  %broadcast.splat215 = shufflevector <2 x i64> %broadcast.splatinsert214, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert216 = insertelement <2 x i64> poison, i64 %i.ai, i64 0
  %broadcast.splat217 = shufflevector <2 x i64> %broadcast.splatinsert216, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert218 = insertelement <2 x i64> poison, i64 %i.ak, i64 0
  %broadcast.splat219 = shufflevector <2 x i64> %broadcast.splatinsert218, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body220

vector.body220:                                   ; preds = %vector.body220, %vector.ph210
  %index221 = phi i64 [ 0, %vector.ph210 ], [ %index.next224, %vector.body220 ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index221 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load222 = load <2 x i64>, ptr %i.am, align 8, !tbaa !77 ; 3 uses
  %wide.load223 = load <2 x i64>, ptr %i.an, align 8, !tbaa !77 ; 3 uses
  %i.ao = and <2 x i64> %broadcast.splat213, %wide.load222
  %i.ap = and <2 x i64> %broadcast.splat213, %wide.load223
  %i.aq = and <2 x i64> %broadcast.splat215, %wide.load222
  %i.ar = and <2 x i64> %broadcast.splat215, %wide.load223
  %i.as = shl <2 x i64> %i.aq, %broadcast.splat217
  %i.at = shl <2 x i64> %i.ar, %broadcast.splat217
  %i.au = or <2 x i64> %i.as, %i.ao
  %i.av = or <2 x i64> %i.at, %i.ap
  %i.aw = and <2 x i64> %broadcast.splat219, %wide.load222
  %i.ax = and <2 x i64> %broadcast.splat219, %wide.load223
  %i.ay = lshr <2 x i64> %i.aw, %broadcast.splat217
  %i.az = lshr <2 x i64> %i.ax, %broadcast.splat217
  %i.ba = or <2 x i64> %i.au, %i.ay
  %i.bb = or <2 x i64> %i.av, %i.az
  store <2 x i64> %i.ba, ptr %i.am, align 8, !tbaa !77
  store <2 x i64> %i.bb, ptr %i.an, align 8, !tbaa !77
  %index.next224 = add nuw i64 %index221, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next224, %n.vec211
  br i1 %i.bc, label %.loopexit, label %vector.body220, !llvm.loop !300

scalar.ph208:                                     ; preds = %.lr.ph
  %i.bd = load i64, ptr %0, align 8, !tbaa !77    ; 3 uses
  %i.be = and i64 %i.af, %i.bd
  %i.bf = and i64 %i.ah, %i.bd
  %i.bg = shl i64 %i.bf, %i.ai
  %i.bh = or i64 %i.bg, %i.be
  %i.bi = and i64 %i.ak, %i.bd
  %i.bj = lshr i64 %i.bi, %i.ai
  %i.bk = or i64 %i.bh, %i.bj
  store i64 %i.bk, ptr %0, align 8, !tbaa !77
  %exitcond160.not = icmp slt i32 %i.y, 2
  br i1 %exitcond160.not, label %.loopexit, label %scalar.ph208.1

scalar.ph208.1:                                   ; preds = %scalar.ph208
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !77 ; 3 uses
  %i.bn = and i64 %i.af, %i.bm
  %i.bo = and i64 %i.ah, %i.bm
  %i.bp = shl i64 %i.bo, %i.ai
  %i.bq = or i64 %i.bp, %i.bn
  %i.br = and i64 %i.ak, %i.bm
  %i.bs = lshr i64 %i.br, %i.ai
  %i.bt = or i64 %i.bq, %i.bs
  store i64 %i.bt, ptr %i.bl, align 8, !tbaa !77
  %exitcond160.not.1 = icmp eq i32 %i.x, 1
  br i1 %exitcond160.not.1, label %.loopexit, label %scalar.ph208.2

scalar.ph208.2:                                   ; preds = %scalar.ph208.1
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !77 ; 3 uses
  %i.bw = and i64 %i.af, %i.bv
  %i.bx = and i64 %i.ah, %i.bv
  %i.by = shl i64 %i.bx, %i.ai
  %i.bz = or i64 %i.by, %i.bw
  %i.ca = and i64 %i.ak, %i.bv
  %i.cb = lshr i64 %i.ca, %i.ai
  %i.cc = or i64 %i.bz, %i.cb
  store i64 %i.cc, ptr %i.bu, align 8, !tbaa !77
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
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !77 ; 5 uses
  %i.cr = xor i64 %i.cq, -1                       ; 2 uses
  %i.cs = sext i32 %i.cj to i64                   ; 2 uses
  %smax152 = tail call i32 @llvm.smax.i32(i32 %i.cj, i32 1)
  %wide.trip.count153 = zext nneg i32 %smax152 to i64 ; 4 uses
  %i.ct = shl nuw nsw i64 %wide.trip.count153, 3
  %i.cu = add nsw i64 %i.cs, %wide.trip.count153
  %i.cv = shl nsw i64 %i.cu, 3
  %i.cw = shl nsw i64 %i.cn, 3
  %min.iters.check189 = icmp slt i32 %i.cj, 2
  %i.cx = getelementptr i8, ptr %0, i64 %i.ct
  %i.cy = getelementptr i8, ptr %0, i64 %i.cv
  %n.vec195 = and i64 %wide.trip.count153, 2147483646
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cq, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert196 = insertelement <2 x i64> poison, i64 %i.cl, i64 0
  %broadcast.splat197 = shufflevector <2 x i64> %broadcast.splatinsert196, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert198 = insertelement <2 x i64> poison, i64 %i.cr, i64 0
  %broadcast.splat199 = shufflevector <2 x i64> %broadcast.splatinsert198, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %indvar186 = phi i64 [ %indvar.next187, %._crit_edge.us ], [ 0, %.preheader.lr.ph.split.us ] ; 2 uses
  %.0128.us = phi ptr [ %i.dy, %._crit_edge.us ], [ %0, %.preheader.lr.ph.split.us ] ; 5 uses
  %invariant.gep169 = getelementptr [8 x i8], ptr %.0128.us, i64 %i.cs ; 3 uses
  br i1 %min.iters.check189, label %scalar.ph188.preheader, label %vector.memcheck190

scalar.ph188.preheader:                           ; preds = %vector.memcheck190, %.preheader.us
  br label %scalar.ph188

vector.memcheck190:                               ; preds = %.preheader.us
  %i.cz = mul i64 %indvar186, %i.cw               ; 2 uses
  %i.da = getelementptr i8, ptr %i.cx, i64 %i.cz
  %i.db = getelementptr i8, ptr %i.cy, i64 %i.cz
  %bound0191 = icmp ult ptr %.0128.us, %i.db
  %bound1192 = icmp ult ptr %invariant.gep169, %i.da
  %found.conflict193 = and i1 %bound0191, %bound1192
  br i1 %found.conflict193, label %scalar.ph188.preheader, label %vector.body200

vector.body200:                                   ; preds = %vector.memcheck190, %vector.body200
  %index201 = phi i64 [ %index.next204, %vector.body200 ], [ 0, %vector.memcheck190 ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.0128.us, i64 %index201 ; 2 uses
  %wide.load202 = load <2 x i64>, ptr %i.dc, align 8, !tbaa !77, !alias.scope !314, !noalias !315 ; 2 uses
  %i.dd = and <2 x i64> %broadcast.splat, %wide.load202
  %i.de = lshr <2 x i64> %i.dd, %broadcast.splat197
  %i.df = getelementptr [8 x i8], ptr %invariant.gep169, i64 %index201 ; 2 uses
  %wide.load203 = load <2 x i64>, ptr %i.df, align 8, !tbaa !77, !alias.scope !315 ; 2 uses
  %i.dg = shl <2 x i64> %wide.load203, %broadcast.splat197
  %i.dh = and <2 x i64> %i.dg, %broadcast.splat
  %i.di = and <2 x i64> %wide.load202, %broadcast.splat199
  %i.dj = or <2 x i64> %i.dh, %i.di
  store <2 x i64> %i.dj, ptr %i.dc, align 8, !tbaa !77, !alias.scope !314, !noalias !315
  %i.dk = and <2 x i64> %wide.load203, %broadcast.splat
  %i.dl = or <2 x i64> %i.dk, %i.de
  store <2 x i64> %i.dl, ptr %i.df, align 8, !tbaa !77, !alias.scope !315
  %index.next204 = add nuw i64 %index201, 2       ; 2 uses
  %i.dm = icmp eq i64 %index.next204, %n.vec195
  br i1 %i.dm, label %._crit_edge.us, label %vector.body200, !llvm.loop !304

scalar.ph188:                                     ; preds = %scalar.ph188.preheader, %scalar.ph188
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %scalar.ph188 ], [ 0, %scalar.ph188.preheader ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.0128.us, i64 %indvars.iv149 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !77 ; 2 uses
  %i.dp = and i64 %i.cq, %i.do
  %i.dq = lshr i64 %i.dp, %i.cl
  %gep170 = getelementptr [8 x i8], ptr %invariant.gep169, i64 %indvars.iv149 ; 2 uses
  %i.dr = load i64, ptr %gep170, align 8, !tbaa !77 ; 2 uses
  %i.ds = shl i64 %i.dr, %i.cl
  %i.dt = and i64 %i.ds, %i.cq
  %i.du = and i64 %i.do, %i.cr
  %i.dv = or i64 %i.dt, %i.du
  store i64 %i.dv, ptr %i.dn, align 8, !tbaa !77
  %i.dw = and i64 %i.dr, %i.cq
  %i.dx = or i64 %i.dw, %i.dq
  store i64 %i.dx, ptr %gep170, align 8, !tbaa !77
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count153
  br i1 %exitcond154.not, label %._crit_edge.us, label %scalar.ph188, !llvm.loop !305

._crit_edge.us:                                   ; preds = %vector.body200, %scalar.ph188
  %i.dy = getelementptr inbounds [8 x i8], ptr %.0128.us, i64 %i.cn ; 2 uses
  %i.dz = icmp ult ptr %i.dy, %i.ch
  %indvar.next187 = add i64 %indvar186, 1
  br i1 %i.dz, label %.preheader.us, label %.loopexit, !llvm.loop !306

bb.h:                                             ; preds = %bb.f
  %i.ea = add nsw i32 %spec.select117, -6         ; 3 uses
  %i.eb = shl nuw i32 1, %i.ea                    ; 4 uses
  %i.ec = add nsw i32 %spec.select, -6            ; 3 uses
  %i.ed = shl nuw i32 1, %i.ec                    ; 2 uses
  %.not = icmp eq i32 %i.ce, 31
  br i1 %.not, label %.loopexit, label %.preheader120.lr.ph

.preheader120.lr.ph:                              ; preds = %bb.h
  %.not130 = icmp eq i32 %i.ec, 31
  %i.ee = shl i32 2, %i.ec
  %i.ef = sext i32 %i.ee to i64                   ; 2 uses
  %.not131 = icmp eq i32 %i.ea, 31
  %or.cond = select i1 %.not130, i1 true, i1 %.not131
  br i1 %or.cond, label %.loopexit, label %.preheader120.us.us.preheader

.preheader120.us.us.preheader:                    ; preds = %.preheader120.lr.ph
  %i.eg = shl i32 2, %i.ea                        ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.eb, i32 1) ; 2 uses
  %i.eh = sext i32 %i.eg to i64                   ; 5 uses
  %i.ei = sext i32 %i.eb to i64                   ; 2 uses
  %i.ej = sext i32 %i.ed to i64                   ; 4 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 5 uses
  %i.ek = shl nsw i64 %i.ef, 3
  %umax = tail call i64 @llvm.umax.i64(i64 %i.eh, i64 1)
  %smax175 = tail call i64 @llvm.smax.i64(i64 %i.ej, i64 %i.eh)
  %i.el = icmp slt i32 %i.eg, %i.ed
  %umin = zext i1 %i.el to i64                    ; 2 uses
  %i.em = or disjoint i64 %umin, %i.eh
  %i.en = sub i64 %smax175, %i.em
  %min.iters.check = icmp slt i32 %i.eb, 4
  %invariant.op = add i64 %i.ei, %wide.trip.count
  %invariant.op236 = add i64 %i.ej, %wide.trip.count
  %stride.check = icmp slt i32 %i.eg, 0
  %n.vec = and i64 %wide.trip.count, 2147483644
  %xtraiter = and i64 %wide.trip.count, 1
  %i.eo = icmp slt i32 %i.eb, 2
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod233 = trunc i32 %smax to i1
  br label %.preheader120.us.us

.preheader120.us.us:                              ; preds = %.preheader120.us.us.preheader, %._crit_edge124.us.us
  %indvar = phi i64 [ 0, %.preheader120.us.us.preheader ], [ %indvar.next, %._crit_edge124.us.us ] ; 2 uses
  %.1125.us.us = phi ptr [ %0, %.preheader120.us.us.preheader ], [ %i.fo, %._crit_edge124.us.us ] ; 3 uses
  %i.ep = mul i64 %i.ek, %indvar                  ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.1125.us.us, i64 %i.ei ; 2 uses
  %invariant.gep167 = getelementptr [8 x i8], ptr %.1125.us.us, i64 %i.ej ; 2 uses
  %invariant.gep234 = getelementptr i8, ptr %0, i64 %i.ep
  %invariant.gep238 = getelementptr i8, ptr %0, i64 %i.ep
  br label %.preheader119.us.us

.preheader119.us.us:                              ; preds = %._crit_edge.us.us, %.preheader120.us.us
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %._crit_edge.us.us ], [ 0, %.preheader120.us.us ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv146 ; 4 uses
  %gep168 = getelementptr [8 x i8], ptr %invariant.gep167, i64 %indvars.iv146 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader119.us.us
  br i1 %i.eo, label %scalar.ph.epil.preheader, label %scalar.ph

vector.memcheck:                                  ; preds = %.preheader119.us.us
  %i.eq = udiv i64 %i.en, %umax
  %i.er = add i64 %i.eq, %umin
  %i.es = mul i64 %i.er, %i.eh                    ; 2 uses
  %.reass = add i64 %i.es, %invariant.op
  %i.et = shl i64 %.reass, 3
  %gep235 = getelementptr i8, ptr %invariant.gep234, i64 %i.et
  %.reass237 = add i64 %i.es, %invariant.op236
  %i.eu = shl i64 %.reass237, 3
  %gep239 = getelementptr i8, ptr %invariant.gep238, i64 %i.eu
  %bound0 = icmp ult ptr %invariant.gep, %gep239
  %bound1 = icmp ult ptr %invariant.gep167, %gep235
  %found.conflict = and i1 %bound0, %bound1
  %i.ev = or i1 %found.conflict, %stride.check
  br i1 %i.ev, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ew = getelementptr [8 x i8], ptr %gep, i64 %index ; 3 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 16     ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ew, align 8, !tbaa !77, !alias.scope !316, !noalias !317
  %wide.load176 = load <2 x i64>, ptr %i.ex, align 8, !tbaa !77, !alias.scope !316, !noalias !317
  %i.ey = getelementptr [8 x i8], ptr %gep168, i64 %index ; 3 uses
  %i.ez = getelementptr i8, ptr %i.ey, i64 16     ; 2 uses
  %wide.load177 = load <2 x i64>, ptr %i.ey, align 8, !tbaa !77, !alias.scope !317
  %wide.load178 = load <2 x i64>, ptr %i.ez, align 8, !tbaa !77, !alias.scope !317
  store <2 x i64> %wide.load177, ptr %i.ew, align 8, !tbaa !77, !alias.scope !316, !noalias !317
  store <2 x i64> %wide.load178, ptr %i.ex, align 8, !tbaa !77, !alias.scope !316, !noalias !317
  store <2 x i64> %wide.load, ptr %i.ey, align 8, !tbaa !77, !alias.scope !317
  store <2 x i64> %wide.load176, ptr %i.ez, align 8, !tbaa !77, !alias.scope !317
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %._crit_edge.us.us, label %vector.body, !llvm.loop !310

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %i.fb = getelementptr [8 x i8], ptr %gep, i64 %indvars.iv ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !77
  %i.fd = getelementptr [8 x i8], ptr %gep168, i64 %indvars.iv ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !77
  store i64 %i.fe, ptr %i.fb, align 8, !tbaa !77
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !77
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ff = getelementptr [8 x i8], ptr %gep, i64 %indvars.iv.next ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !77
  %i.fh = getelementptr [8 x i8], ptr %gep168, i64 %indvars.iv.next ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !77
  store i64 %i.fi, ptr %i.ff, align 8, !tbaa !77
  store i64 %i.fg, ptr %i.fh, align 8, !tbaa !77
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !311

._crit_edge.us.us.loopexit.unr-lcssa:             ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge.us.us, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge.us.us.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.us.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod233)
  %i.fj = getelementptr [8 x i8], ptr %gep, i64 %indvars.iv.epil.init ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !77
  %i.fl = getelementptr [8 x i8], ptr %gep168, i64 %indvars.iv.epil.init ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !77
  store i64 %i.fm, ptr %i.fj, align 8, !tbaa !77
  store i64 %i.fk, ptr %i.fl, align 8, !tbaa !77
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %vector.body, %scalar.ph.epil.preheader, %._crit_edge.us.us.loopexit.unr-lcssa
  %indvars.iv.next147 = add nsw i64 %indvars.iv146, %i.eh ; 2 uses
  %i.fn = icmp slt i64 %indvars.iv.next147, %i.ej
  br i1 %i.fn, label %.preheader119.us.us, label %._crit_edge124.us.us, !llvm.loop !312

._crit_edge124.us.us:                             ; preds = %._crit_edge.us.us
  %i.fo = getelementptr inbounds [8 x i8], ptr %.1125.us.us, i64 %i.ef ; 2 uses
  %i.fp = icmp ult ptr %i.fo, %i.ch
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fp, label %.preheader120.us.us, label %.loopexit, !llvm.loop !313

.loopexit:                                        ; preds = %._crit_edge124.us.us, %._crit_edge.us, %vector.body220, %scalar.ph208, %scalar.ph208.1, %scalar.ph208.2, %.preheader120.lr.ph, %.preheader.lr.ph, %bb.h, %bb.g, %bb.e, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #19

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #20 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !58
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #30 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #30
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #30 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !107
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #34
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #30 ; 0 uses
  call void @free(ptr noundef %i.d) #30
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !107, !noalias !321
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #30, !inline_history !320 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #10

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #21

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #21

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @Vec_WecSortCompare4(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #24 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val6 = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.b = load i32, ptr %.val6, align 4, !tbaa !58
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val5 = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.d = load i32, ptr %.val5, align 4, !tbaa !58
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.d, i32 %i.b)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @Vec_IntSortCompare1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #25 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !58
  %i.b = load i32, ptr %1, align 4, !tbaa !58
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.a, i32 %i.b)
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #26

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #27

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

attributes #0 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nofree nounwind memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nofree nounwind }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #30 = { nounwind }
attributes #31 = { nounwind allocsize(1) }
attributes #32 = { nounwind allocsize(0) }
attributes #33 = { nounwind allocsize(0,1) }
attributes #34 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!19, !20}
!llvm.ident = !{!21}
!llvm.errno.tbaa = !{!26}

!0 = distinct !{!0, !59}
!1 = distinct !{!1, !59}
!2 = distinct !{!2, !59}
!3 = distinct !{!3, !59}
!4 = distinct !{!4, !59}
!5 = distinct !{!5, !59}
!6 = distinct !{!6, !59}
!7 = distinct !{!7, !59}
!8 = distinct !{!8, !59}
!9 = distinct !{!9, !59}
!10 = distinct !{!10, !59}
!11 = distinct !{!11, !59}
!12 = distinct !{!12, !59}
!13 = distinct !{!13, !59}
!14 = distinct !{!14, !59}
!15 = distinct !{!15, !59}
!16 = distinct !{!16, !59}
!17 = distinct !{!17, !59}
!18 = distinct !{!18, !59}
!19 = !{i32 8, !"PIC Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 2}
!21 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!22 = !{!"Simple C/C++ TBAA"}
!23 = !{!"omnipotent char", !22, i64 0}
!24 = !{!"int", !23, i64 0}
!25 = !{!"__libc_errno", !24, i64 0}
!26 = !{!25, !24, i64 0}
!27 = !{!"any pointer", !23, i64 0}
!28 = !{!"p1 _ZTS10Gia_Man_t_", !27, i64 0}
!29 = !{!"p1 _ZTS10Vec_Int_t_", !27, i64 0}
!30 = !{!"p1 _ZTS10Vec_Wec_t_", !27, i64 0}
!31 = !{!"p1 _ZTS10Vec_Mem_t_", !27, i64 0}
!32 = !{!"long", !23, i64 0}
!33 = !{!"Gia_Sto_t_", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !28, i64 24, !29, i64 32, !30, i64 40, !31, i64 48, !23, i64 56, !23, i64 67904, !24, i64 69960, !24, i64 69964, !24, i64 69968, !24, i64 69972, !23, i64 69976, !32, i64 70008}
!34 = !{!33, !28, i64 24}
!35 = !{!"p1 omnipotent char", !27, i64 0}
!36 = !{!"p1 _ZTS10Gia_Obj_t_", !27, i64 0}
!37 = !{!"p1 int", !27, i64 0}
!38 = !{!"Vec_Int_t_", !24, i64 0, !24, i64 4, !37, i64 8}
!39 = !{!"p1 _ZTS10Gia_Rpr_t_", !27, i64 0}
!40 = !{!"p1 _ZTS10Vec_Str_t_", !27, i64 0}
!41 = !{!"p1 _ZTS10Abc_Cex_t_", !27, i64 0}
!42 = !{!"p1 _ZTS10Vec_Ptr_t_", !27, i64 0}
!43 = !{!"p1 _ZTS10Gia_Plc_t_", !27, i64 0}
!44 = !{!"p1 _ZTS10Vec_Flt_t_", !27, i64 0}
!45 = !{!"float", !23, i64 0}
!46 = !{!"p1 _ZTS10Vec_Vec_t_", !27, i64 0}
!47 = !{!"p1 _ZTS10Vec_Wrd_t_", !27, i64 0}
!48 = !{!"p1 _ZTS10Vec_Bit_t_", !27, i64 0}
!49 = !{!"p1 _ZTS10Gia_Dat_t_", !27, i64 0}
!50 = !{!"Gia_Man_t_", !35, i64 0, !35, i64 8, !24, i64 16, !24, i64 20, !24, i64 24, !24, i64 28, !36, i64 32, !37, i64 40, !24, i64 48, !24, i64 52, !24, i64 56, !29, i64 64, !29, i64 72, !38, i64 80, !38, i64 96, !24, i64 112, !24, i64 116, !24, i64 120, !38, i64 128, !37, i64 144, !37, i64 152, !29, i64 160, !24, i64 168, !24, i64 172, !24, i64 176, !24, i64 180, !37, i64 184, !39, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !24, i64 224, !24, i64 228, !37, i64 232, !24, i64 240, !29, i64 248, !29, i64 256, !29, i64 264, !30, i64 272, !30, i64 280, !29, i64 288, !27, i64 296, !29, i64 304, !29, i64 312, !40, i64 320, !35, i64 328, !29, i64 336, !29, i64 344, !29, i64 352, !29, i64 360, !29, i64 368, !41, i64 376, !41, i64 384, !42, i64 392, !38, i64 400, !38, i64 416, !29, i64 432, !29, i64 440, !29, i64 448, !29, i64 456, !29, i64 464, !29, i64 472, !29, i64 480, !29, i64 488, !29, i64 496, !29, i64 504, !29, i64 512, !35, i64 520, !43, i64 528, !28, i64 536, !44, i64 544, !44, i64 552, !29, i64 560, !29, i64 568, !29, i64 576, !29, i64 584, !29, i64 592, !24, i64 600, !45, i64 604, !45, i64 608, !29, i64 616, !37, i64 624, !24, i64 632, !42, i64 640, !42, i64 648, !42, i64 656, !29, i64 664, !29, i64 672, !29, i64 680, !29, i64 688, !29, i64 696, !29, i64 704, !29, i64 712, !29, i64 720, !29, i64 728, !46, i64 736, !44, i64 744, !27, i64 752, !27, i64 760, !27, i64 768, !32, i64 776, !32, i64 784, !27, i64 792, !37, i64 800, !24, i64 808, !24, i64 812, !24, i64 816, !24, i64 820, !24, i64 824, !24, i64 828, !24, i64 832, !24, i64 836, !24, i64 840, !24, i64 844, !24, i64 848, !24, i64 852, !47, i64 856, !47, i64 864, !47, i64 872, !47, i64 880, !29, i64 888, !29, i64 896, !29, i64 904, !48, i64 912, !24, i64 920, !24, i64 924, !24, i64 928, !29, i64 936, !24, i64 944, !24, i64 948, !29, i64 952, !29, i64 960, !42, i64 968, !47, i64 976, !29, i64 984, !29, i64 992, !24, i64 1000, !24, i64 1004, !47, i64 1008, !38, i64 1016, !38, i64 1032, !38, i64 1048, !49, i64 1064, !40, i64 1072, !40, i64 1080, !24, i64 1088, !24, i64 1092, !24, i64 1096, !24, i64 1100, !40, i64 1104, !29, i64 1112, !29, i64 1120, !29, i64 1128, !42, i64 1136}
!51 = !{!50, !36, i64 32}
!52 = !{!33, !24, i64 0}
!53 = !{!33, !24, i64 4}
!54 = !{!33, !30, i64 40}
!55 = !{!"Vec_Wec_t_", !24, i64 0, !24, i64 4, !29, i64 8}
!56 = !{!55, !29, i64 8}
!57 = !{!38, !37, i64 8}
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!70 = !{!"Vec_Mem_t_", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !69, i64 24, !29, i64 32, !29, i64 40}
!71 = !{!70, !69, i64 24}
!72 = !{!70, !24, i64 8}
!73 = !{!"p1 long", !27, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !{!70, !24, i64 0}
!76 = !{!70, !24, i64 12}
!77 = !{!32, !32, i64 0}
!78 = !{!33, !24, i64 12}
!79 = !{!33, !24, i64 69972}
!80 = !{!38, !24, i64 4}
!81 = !{!38, !24, i64 0}
!82 = !{!"timespec", !32, i64 0, !32, i64 8}
!83 = !{!82, !32, i64 0}
!84 = !{!82, !32, i64 8}
!85 = !{!33, !32, i64 70008}
!86 = !{!33, !24, i64 16}
!87 = !{!50, !24, i64 24}
!88 = !{!55, !24, i64 0}
!89 = !{!55, !24, i64 4}
!90 = !{!70, !24, i64 20}
!91 = !{!70, !29, i64 32}
!92 = !{!70, !29, i64 40}
!93 = !{!29, !29, i64 0}
!94 = !{!50, !29, i64 64}
!95 = !{!50, !29, i64 72}
!96 = !{!"Hsh_VecMan_t_", !29, i64 0, !29, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !38, i64 40, !38, i64 56, !38, i64 72}
!97 = !{!96, !29, i64 0}
!98 = !{!96, !29, i64 8}
!99 = !{!96, !29, i64 16}
!100 = !{!50, !37, i64 144}
!101 = !{!"Vec_Wrd_t_", !24, i64 0, !24, i64 4, !73, i64 8}
!102 = !{!101, !73, i64 8}
!103 = !{!101, !24, i64 0}
!104 = !{!101, !24, i64 4}
!105 = !{!50, !47, i64 872}
!106 = !{!"p1 _ZTS8_IO_FILE", !27, i64 0}
!107 = !{!106, !106, i64 0}
!108 = !{!"Vec_Ptr_t_", !24, i64 0, !24, i64 4, !68, i64 8}
!109 = !{!108, !24, i64 4}
!110 = !{!108, !24, i64 0}
!111 = !{!108, !68, i64 8}
!112 = !{!27, !27, i64 0}
!113 = distinct !{!113, !59}
!114 = distinct !{!114, !59}
!115 = distinct !{!115, !60}
!116 = distinct !{!116, !59}
!117 = distinct !{!117, !60}
!118 = distinct !{!118, !59}
!119 = distinct !{!119, !60}
!120 = distinct !{!120, !59}
!121 = distinct !{!121, !60}
!122 = distinct !{!122, !60}
!123 = distinct !{!123, !60}
!124 = distinct !{!124, !59, !62, !63}
!125 = distinct !{!125, !59, !62, !63}
!126 = distinct !{!126, !60}
!127 = distinct !{!127, !59, !62}
!128 = distinct !{!128, !59, !62, !63}
!129 = distinct !{!129, !60}
!130 = distinct !{!130, !59, !62}
!131 = distinct !{!131, !59}
!132 = distinct !{!132, !59}
!133 = distinct !{!133, !59}
!134 = distinct !{!134, !59}
!135 = distinct !{!135, !59, !62, !63}
!136 = distinct !{!136, !59, !63, !62}
!137 = distinct !{!137, !59, !62, !63}
!138 = distinct !{!138, !59, !63, !62}
!139 = distinct !{!139, !59}
!140 = distinct !{!140, !59, !62, !63}
!141 = distinct !{!141, !59, !63, !62}
!142 = distinct !{!142, !59, !62, !63}
!143 = distinct !{!143, !59, !63, !62}
!144 = distinct !{!144, !59, !62, !63}
!145 = distinct !{!145, !59, !63, !62}
!146 = distinct !{!146, !59, !62, !63}
!147 = distinct !{!147, !59, !63, !62}
!148 = distinct !{!148, !59}
!149 = distinct !{!149, !59}
!150 = distinct !{!150, !60}
!151 = distinct !{!151, !60}
!152 = distinct !{!152, !60}
!153 = distinct !{!153, !59}
!154 = distinct !{!154, !59}
!155 = distinct !{!155, !59}
!156 = distinct !{!156, !59}
!157 = distinct !{!157, !59}
!158 = distinct !{!158, !59}
!159 = distinct !{!159, !59}
!160 = !{!"Gia_Cut_t_", !32, i64 0, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !24, i64 23, !23, i64 24, !45, i64 80}
!161 = !{!160, !24, i64 8}
!162 = !{!160, !32, i64 0}
!163 = !{!160, !45, i64 80}
!164 = !{!"p1 _ZTS10Gia_Cut_t_", !27, i64 0}
!165 = !{!164, !164, i64 0}
!166 = !{!33, !24, i64 69960}
!167 = !{!33, !24, i64 69964}
!168 = distinct !{!168, !59}
!169 = distinct !{!169, !59}
!170 = distinct !{!170, !59}
!171 = distinct !{!171, !59}
!172 = distinct !{!172, !59}
!173 = distinct !{!173, !59}
!174 = distinct !{!174, !59}
!175 = distinct !{!175, !59}
!176 = distinct !{!176, !59}
!177 = distinct !{!177, !59}
!178 = distinct !{!178, !59}
!179 = distinct !{!179, !59}
!180 = distinct !{!180, !59}
!181 = distinct !{!181, !59}
!182 = distinct !{!182, !59}
!183 = distinct !{!183, !59}
!184 = distinct !{!184, !59}
!185 = distinct !{!185, !59}
!186 = distinct !{!186, !59}
!187 = distinct !{!187, !59}
!188 = distinct !{!188, !59}
!189 = distinct !{!189, !59}
!190 = distinct !{!190, !59}
!191 = distinct !{!191, !59}
!192 = distinct !{!192, !59}
!193 = distinct !{!193, !59}
!194 = distinct !{!194, !59}
!195 = distinct !{!195, !59}
!196 = distinct !{!196, !59}
!197 = distinct !{!197, !59}
!198 = distinct !{!198, !59}
!199 = distinct !{!199, !59}
!200 = !{!"Hsh_VecObj_t_", !24, i64 0, !24, i64 4, !23, i64 8}
!201 = !{!200, !24, i64 0}
!202 = !{!96, !24, i64 40}
!203 = !{!96, !24, i64 44}
!204 = !{!96, !37, i64 48}
!205 = !{!200, !24, i64 4}
!206 = distinct !{!206, !60}
!207 = distinct !{!207, !59, !62, !63}
!208 = distinct !{!208, !59, !63, !62}
!209 = distinct !{!209, !59, !62, !63}
!210 = distinct !{!210, !59, !63, !62}
!211 = !{!47, !47, i64 0}
!212 = distinct !{!212, !59, !62, !63}
!213 = distinct !{!213, !59, !63, !62}
!214 = distinct !{!214, !59}
!215 = distinct !{!215, !59}
!216 = !{!50, !37, i64 624}
!217 = !{!50, !24, i64 176}
!218 = distinct !{!218, !60}
!219 = distinct !{!219, !59, !62, !63}
!220 = distinct !{!220, !59, !63, !62}
!221 = distinct !{!221, !59}
!222 = distinct !{!222, !59}
!223 = distinct !{!223, !59}
!224 = distinct !{!224, !59}
!225 = distinct !{!225, !59}
!226 = distinct !{!226, !59}
!227 = distinct !{!227, !59}
!228 = distinct !{!228, !59}
!229 = distinct !{!229, !59}
!230 = distinct !{!230, !59}
!231 = distinct !{!231, !59}
!232 = distinct !{!232, !59}
!233 = distinct !{!233, !59}
!234 = distinct !{!234, !59}
!235 = distinct !{!235, !59}
!236 = distinct !{!236, !59}
!237 = distinct !{!237, !59}
!238 = distinct !{!238, !59}
!239 = distinct !{!239, !59, !62, !63}
!240 = distinct !{!240, !59, !62}
!241 = distinct !{!241, !59}
!242 = distinct !{!242, !59}
!243 = distinct !{!243, !59}
!244 = distinct !{!244, !59}
!245 = distinct !{!245, !59}
!246 = distinct !{!246, !59}
!247 = distinct !{!247, !59, !62}
!248 = distinct !{!248, !60}
!249 = distinct !{!249, !59}
!250 = distinct !{!250, !59}
!251 = distinct !{!251, !59}
!252 = distinct !{!252, !59}
!253 = distinct !{!253, !60}
!254 = distinct !{!254, !59}
!255 = distinct !{!255, !59, !62}
!256 = distinct !{!256, !60}
!257 = distinct !{!257, !59}
!258 = distinct !{!258, !59}
!259 = distinct !{!259, !59}
!260 = distinct !{!260, !59}
!261 = distinct !{!261, !59}
!262 = distinct !{!262, !59}
!263 = distinct !{!263, !59, !62}
!264 = distinct !{!264, !60}
!265 = distinct !{!265, !59}
!266 = distinct !{!266, !59}
!267 = distinct !{!267, !59}
!268 = distinct !{!268, !59}
!269 = distinct !{!269, !59}
!270 = distinct !{!270, !59, !62}
!271 = distinct !{!271, !60}
!272 = distinct !{!272, !59}
!273 = distinct !{!273, !59}
!274 = !{!37, !37, i64 0}
!275 = !{i64 0, i64 4, !58, i64 4, i64 4, !58, i64 8, i64 8, !274}
!276 = distinct !{!276, !59, !62, !63}
!277 = distinct !{!277, !59, !63, !62}
!278 = distinct !{!278, !59}
!279 = distinct !{!279, !59}
!280 = distinct !{!280, !59}
!281 = distinct !{!281, !59}
!282 = distinct !{!282, !59}
!283 = distinct !{!283, !59}
!284 = distinct !{!284, !59}
!285 = distinct !{!285, !59}
!286 = distinct !{!286, !59}
!287 = distinct !{!287, !59}
!288 = distinct !{!288, !59, !62, !63}
!289 = distinct !{!289, !59, !63, !62}
!290 = distinct !{!290, !59, !62, !63}
!291 = distinct !{!291, !59, !63, !62}
!292 = distinct !{!292, !59, !62}
!293 = distinct !{!293, !60}
!294 = distinct !{!294, !59}
!295 = distinct !{!295, !59, !62}
!296 = distinct !{!296, !60}
!297 = distinct !{!297, !59}
!298 = !{!70, !24, i64 4}
!299 = !{!70, !24, i64 16}
!300 = distinct !{!300, !59, !62, !63}
!301 = distinct !{!301, i1 false, !"LVerDomain"}
!302 = distinct !{!302, !301}
!303 = distinct !{!303, !301}
!304 = distinct !{!304, !59, !62, !63}
!305 = distinct !{!305, !59, !62}
!306 = distinct !{!306, !59}
!307 = distinct !{!307, i1 false, !"LVerDomain"}
!308 = distinct !{!308, !307}
!309 = distinct !{!309, !307}
!310 = distinct !{!310, !59, !62, !63}
!311 = distinct !{!311, !59, !62}
!312 = distinct !{!312, !59}
!313 = distinct !{!313, !59}
!314 = !{!302}
!315 = !{!303}
!316 = !{!308}
!317 = !{!309}
!318 = distinct !{!318, i1 true, !"vprintf"}
!319 = distinct !{!319, !318, !"vprintf: argument 0"}
!320 = distinct !{null}
!321 = !{!319}
end_hunk_1
