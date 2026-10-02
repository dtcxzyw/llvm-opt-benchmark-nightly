Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/lpkSets?download=true
inline.NumInlined: 44
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Lpk_ComputeSets_rec:bb.a
._crit_edge.Vec_IntPush.exit_crit_edge:           ; preds = %._crit_edge
  %.pre93 = load ptr, ptr %i.ag, align 8, !tbaa !24
  br label %Vec_IntPush.exit

bb.i:                                             ; preds = %._crit_edge
  %i.bf = icmp slt i32 %i.bc, 16
  br i1 %i.bf, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bg = load ptr, ptr %i.ag, align 8, !tbaa !24 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.bg, null
  br i1 %.not9.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bg, i64 noundef 64) #14
  br label %Vec_IntGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.bi = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #15
  br label %Vec_IntGrow.exit11.sink.split.i

bb.m:                                             ; preds = %bb.i
  %i.bj = icmp samesign ult i32 %i.bc, 1073741823
  %i.bk = shl nuw nsw i32 %i.bc, 1
  %spec.select.i = select i1 %i.bj, i32 %i.bk, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.bc, %spec.select.i
  %.pre94 = load ptr, ptr %i.ag, align 8, !tbaa !24 ; 3 uses
  br i1 %.not.i9.i, label %bb.n, label %Vec_IntPush.exit

bb.n:                                             ; preds = %bb.m
  %.not9.i10.i = icmp eq ptr %.pre94, null
  %i.bl = zext nneg i32 %spec.select.i to i64
  %i.bm = shl nuw nsw i64 %i.bl, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = tail call ptr @realloc(ptr noundef nonnull %.pre94, i64 noundef %i.bm) #14
  br label %Vec_IntGrow.exit11.sink.split.i

bb.p:                                             ; preds = %bb.n
  %i.bo = tail call noalias ptr @malloc(i64 noundef %i.bm) #15
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.o, %bb.p, %bb.k, %bb.l
  %i.bp = phi ptr [ %i.bi, %bb.l ], [ %i.bh, %bb.k ], [ %i.bn, %bb.o ], [ %i.bo, %bb.p ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.l ], [ 16, %bb.k ], [ %spec.select.i, %bb.o ], [ %spec.select.i, %bb.p ]
  store ptr %i.bp, ptr %i.ag, align 8, !tbaa !24
  store i32 %spec.select.sink.i, ptr %2, align 8, !tbaa !23
  %.pre95 = load i32, ptr %i.af, align 4, !tbaa !22
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %._crit_edge.Vec_IntPush.exit_crit_edge, %bb.m, %Vec_IntGrow.exit11.sink.split.i
  %i.bq = phi i32 [ %i.bc, %._crit_edge.Vec_IntPush.exit_crit_edge ], [ %i.bc, %bb.m ], [ %.pre95, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.br = phi ptr [ %.pre93, %._crit_edge.Vec_IntPush.exit_crit_edge ], [ %.pre94, %bb.m ], [ %i.bp, %Vec_IntGrow.exit11.sink.split.i ]
  %i.bs = add nsw i32 %i.bq, 1
  store i32 %i.bs, ptr %i.af, align 4, !tbaa !22
  %i.bt = sext i32 %i.bq to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bt
  store i32 %.046.lcssa, ptr %i.bu, align 4, !tbaa !19
  %i.bv = add nuw nsw i32 %.075, 1                ; 2 uses
  %i.bw = xor i32 %notmask, %i.bv
  %exitcond90.not = icmp eq i32 %i.bw, -1
  br i1 %exitcond90.not, label %._crit_edge76, label %.preheader, !llvm.loop !34

._crit_edge76:                                    ; preds = %Vec_IntPush.exit, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.critedge2

bb.q:                                             ; preds = %.lr.ph, %Vec_IntPush.exit62
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit62 ] ; 2 uses
  %.14865 = phi i32 [ 0, %.lr.ph ], [ %i.cb, %Vec_IntPush.exit62 ]
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !18
  %i.bz = zext i16 %i.by to i32
  %i.ca = tail call i32 @Lpk_ComputeSets_rec(ptr noundef nonnull %0, i32 noundef %i.bz, ptr noundef %2) ; 2 uses
  %i.cb = or i32 %i.ca, %.14865                   ; 2 uses
  %i.cc = load i32, ptr %i.r, align 4, !tbaa !22  ; 7 uses
  %i.cd = load i32, ptr %2, align 8, !tbaa !23
  %i.ce = icmp eq i32 %i.cc, %i.cd
  br i1 %i.ce, label %bb.r, label %.Vec_IntPush.exit62_crit_edge

.Vec_IntPush.exit62_crit_edge:                    ; preds = %bb.q
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !24
  br label %Vec_IntPush.exit62

bb.r:                                             ; preds = %bb.q
  %i.cf = icmp slt i32 %i.cc, 16
  br i1 %i.cf, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.cg = load ptr, ptr %i.s, align 8, !tbaa !24  ; 2 uses
  %.not9.i.i60 = icmp eq ptr %i.cg, null
  br i1 %.not9.i.i60, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.cg, i64 noundef 64) #14
  br label %Vec_IntGrow.exit11.sink.split.i58

bb.u:                                             ; preds = %bb.s
  %i.ci = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #15
  br label %Vec_IntGrow.exit11.sink.split.i58

bb.v:                                             ; preds = %bb.r
  %i.cj = icmp samesign ult i32 %i.cc, 1073741823
  %i.ck = shl nuw nsw i32 %i.cc, 1
  %spec.select.i55 = select i1 %i.cj, i32 %i.ck, i32 2147483647 ; 4 uses
  %.not.i9.i56 = icmp samesign ult i32 %i.cc, %spec.select.i55
  %.pre91 = load ptr, ptr %i.s, align 8, !tbaa !24 ; 3 uses
  br i1 %.not.i9.i56, label %bb.w, label %Vec_IntPush.exit62

bb.w:                                             ; preds = %bb.v
  %.not9.i10.i57 = icmp eq ptr %.pre91, null
  %i.cl = zext nneg i32 %spec.select.i55 to i64
  %i.cm = shl nuw nsw i64 %i.cl, 2                ; 2 uses
  br i1 %.not9.i10.i57, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cn = tail call ptr @realloc(ptr noundef nonnull %.pre91, i64 noundef %i.cm) #14
  br label %Vec_IntGrow.exit11.sink.split.i58

bb.y:                                             ; preds = %bb.w
  %i.co = tail call noalias ptr @malloc(i64 noundef %i.cm) #15
  br label %Vec_IntGrow.exit11.sink.split.i58

Vec_IntGrow.exit11.sink.split.i58:                ; preds = %bb.x, %bb.y, %bb.t, %bb.u
  %i.cp = phi ptr [ %i.ci, %bb.u ], [ %i.ch, %bb.t ], [ %i.cn, %bb.x ], [ %i.co, %bb.y ] ; 2 uses
  %spec.select.sink.i59 = phi i32 [ 16, %bb.u ], [ 16, %bb.t ], [ %spec.select.i55, %bb.x ], [ %spec.select.i55, %bb.y ]
  store ptr %i.cp, ptr %i.s, align 8, !tbaa !24
  store i32 %spec.select.sink.i59, ptr %2, align 8, !tbaa !23
  %.pre92 = load i32, ptr %i.r, align 4, !tbaa !22
  br label %Vec_IntPush.exit62

Vec_IntPush.exit62:                               ; preds = %.Vec_IntPush.exit62_crit_edge, %bb.v, %Vec_IntGrow.exit11.sink.split.i58
  %i.cq = phi i32 [ %i.cc, %.Vec_IntPush.exit62_crit_edge ], [ %i.cc, %bb.v ], [ %.pre92, %Vec_IntGrow.exit11.sink.split.i58 ] ; 2 uses
  %i.cr = phi ptr [ %.pre, %.Vec_IntPush.exit62_crit_edge ], [ %.pre91, %bb.v ], [ %i.cp, %Vec_IntGrow.exit11.sink.split.i58 ]
  %i.cs = add nsw i32 %i.cq, 1
  store i32 %i.cs, ptr %i.r, align 4, !tbaa !22
  %i.ct = sext i32 %i.cq to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.ct
  store i32 %i.ca, ptr %i.cu, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cv = load i32, ptr %i.k, align 4
  %i.cw = lshr i32 %i.cv, 26
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = icmp samesign ult i64 %indvars.iv.next, %i.cx
  br i1 %i.cy, label %bb.q, label %.critedge2, !llvm.loop !35

.critedge2:                                       ; preds = %Vec_IntPush.exit62, %.preheader63, %._crit_edge76, %Kit_DsdNtkObj.exit.thread
  %.051 = phi i32 [ %i.m, %Kit_DsdNtkObj.exit.thread ], [ %.047.lcssa, %._crit_edge76 ], [ 0, %.preheader63 ], [ %i.cb, %Vec_IntPush.exit62 ]
  ret i32 %.051
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Lpk_ComputeSets(ptr noundef %0, ptr noundef initializes((4, 8)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 11 uses
  store i32 0, ptr %i.a, align 4, !tbaa !22
  %i.b = load i32, ptr %1, align 8, !tbaa !23
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 3 uses
  br i1 %i.c, label %bb.b, label %Vec_IntPush.exit

bb.b:                                             ; preds = %bb.a
  %.not9.i.i = icmp eq ptr %i.e, null
  br i1 %.not9.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.e, i64 noundef 64) #14
  %.pre53.pre = load i32, ptr %i.a, align 4, !tbaa !22
  br label %Vec_IntGrow.exit11.sink.split.i

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #15
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.c, %bb.d
  %.pre53 = phi i32 [ %.pre53.pre, %bb.c ], [ 0, %bb.d ]
  %i.h = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.d ] ; 2 uses
  store ptr %i.h, ptr %i.d, align 8, !tbaa !24
  store i32 16, ptr %1, align 8, !tbaa !23
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.a, %Vec_IntGrow.exit11.sink.split.i
  %i.i = phi i32 [ %.pre53, %Vec_IntGrow.exit11.sink.split.i ], [ 0, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %i.h, %Vec_IntGrow.exit11.sink.split.i ], [ %i.e, %bb.a ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.l = add nsw i32 %i.i, 1
  store i32 %i.l, ptr %i.a, align 4, !tbaa !22
  %i.m = sext i32 %i.i to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.m
  store i32 0, ptr %i.n, align 4, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.p = load i16, ptr %i.o, align 2, !tbaa !37   ; 2 uses
  %i.q = lshr i16 %i.p, 1                         ; 2 uses
  %i.r = load i16, ptr %0, align 8, !tbaa !14     ; 2 uses
  %2 = icmp uge i16 %i.q, %i.r
  tail call void @llvm.assume(i1 %2)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15
  %narrow.i = sub nuw nsw i16 %i.q, %i.r
  %i.u = zext nneg i16 %narrow.i to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !17   ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, 448
  switch i32 %i.y, label %bb.h [
    i32 64, label %.critedge
    i32 128, label %Kit_DsdNtkRoot.exit31
  ]

Kit_DsdNtkRoot.exit31:                            ; preds = %Vec_IntPush.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !18
  %i.ab = lshr i16 %i.aa, 1
  %i.ac = zext nneg i16 %i.ab to i32
  %i.ad = shl nuw i32 1, %i.ac                    ; 2 uses
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !22  ; 7 uses
  %i.af = load i32, ptr %1, align 8, !tbaa !23
  %i.ag = icmp eq i32 %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %Vec_IntPush.exit39

bb.e:                                             ; preds = %Kit_DsdNtkRoot.exit31
  %i.ah = icmp slt i32 %i.ae, 16
  br i1 %i.ah, label %Vec_IntGrow.exit11.sink.split.i35, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp samesign ult i32 %i.ae, 1073741823
  %i.aj = shl nuw nsw i32 %i.ae, 1
  %spec.select.i32 = select i1 %i.ai, i32 %i.aj, i32 2147483647 ; 3 uses
  %.not.i9.i33 = icmp samesign ult i32 %i.ae, %spec.select.i32
  br i1 %.not.i9.i33, label %bb.g, label %Vec_IntPush.exit39

bb.g:                                             ; preds = %bb.f
  %i.ak = zext nneg i32 %spec.select.i32 to i64
  %i.al = shl nuw nsw i64 %i.ak, 2
  br label %Vec_IntGrow.exit11.sink.split.i35

Vec_IntGrow.exit11.sink.split.i35:                ; preds = %bb.e, %bb.g
  %.sink = phi i64 [ %i.al, %bb.g ], [ 64, %bb.e ]
  %spec.select.sink.i36 = phi i32 [ %spec.select.i32, %bb.g ], [ 16, %bb.e ]
  %i.am = tail call ptr @realloc(ptr noundef nonnull %i.j, i64 noundef %.sink) #14 ; 2 uses
  store ptr %i.am, ptr %i.k, align 8, !tbaa !24
  store i32 %spec.select.sink.i36, ptr %1, align 8, !tbaa !23
  %.pre57 = load i32, ptr %i.a, align 4, !tbaa !22
  br label %Vec_IntPush.exit39

Vec_IntPush.exit39:                               ; preds = %Kit_DsdNtkRoot.exit31, %bb.f, %Vec_IntGrow.exit11.sink.split.i35
  %i.an = phi i32 [ %i.ae, %Kit_DsdNtkRoot.exit31 ], [ %i.ae, %bb.f ], [ %.pre57, %Vec_IntGrow.exit11.sink.split.i35 ] ; 2 uses
  %i.ao = phi ptr [ %i.j, %Kit_DsdNtkRoot.exit31 ], [ %i.j, %bb.f ], [ %i.am, %Vec_IntGrow.exit11.sink.split.i35 ]
  %i.ap = add nsw i32 %i.an, 1
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !22
  %i.aq = sext i32 %i.an to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.aq
  store i32 %i.ad, ptr %i.ar, align 4, !tbaa !19
  br label %.critedge

bb.h:                                             ; preds = %Vec_IntPush.exit
  %i.as = zext i16 %i.p to i32
  %i.at = tail call i32 @Lpk_ComputeSets_rec(ptr noundef nonnull %0, i32 noundef %i.as, ptr noundef nonnull %1) ; 4 uses
  %i.au = load i32, ptr %i.a, align 4, !tbaa !22  ; 7 uses
  %i.av = load i32, ptr %1, align 8, !tbaa !23
  %i.aw = icmp eq i32 %i.au, %i.av
  br i1 %i.aw, label %bb.i, label %.Vec_IntPush.exit47_crit_edge

.Vec_IntPush.exit47_crit_edge:                    ; preds = %bb.h
  %.pre54 = load ptr, ptr %i.k, align 8, !tbaa !24
  br label %Vec_IntPush.exit47

bb.i:                                             ; preds = %bb.h
  %i.ax = icmp slt i32 %i.au, 16
  br i1 %i.ax, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ay = load ptr, ptr %i.k, align 8, !tbaa !24  ; 2 uses
  %.not9.i.i45 = icmp eq ptr %i.ay, null
  br i1 %.not9.i.i45, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef 64) #14
  br label %Vec_IntGrow.exit11.sink.split.i43

bb.l:                                             ; preds = %bb.j
  %i.ba = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #15
  br label %Vec_IntGrow.exit11.sink.split.i43

bb.m:                                             ; preds = %bb.i
  %i.bb = icmp samesign ult i32 %i.au, 1073741823
  %i.bc = shl nuw nsw i32 %i.au, 1
  %spec.select.i40 = select i1 %i.bb, i32 %i.bc, i32 2147483647 ; 4 uses
  %.not.i9.i41 = icmp samesign ult i32 %i.au, %spec.select.i40
  %.pre55 = load ptr, ptr %i.k, align 8, !tbaa !24 ; 3 uses
  br i1 %.not.i9.i41, label %bb.n, label %Vec_IntPush.exit47

bb.n:                                             ; preds = %bb.m
  %.not9.i10.i42 = icmp eq ptr %.pre55, null
  %i.bd = zext nneg i32 %spec.select.i40 to i64
  %i.be = shl nuw nsw i64 %i.bd, 2                ; 2 uses
  br i1 %.not9.i10.i42, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = tail call ptr @realloc(ptr noundef nonnull %.pre55, i64 noundef %i.be) #14
  br label %Vec_IntGrow.exit11.sink.split.i43

bb.p:                                             ; preds = %bb.n
  %i.bg = tail call noalias ptr @malloc(i64 noundef %i.be) #15
  br label %Vec_IntGrow.exit11.sink.split.i43

Vec_IntGrow.exit11.sink.split.i43:                ; preds = %bb.o, %bb.p, %bb.k, %bb.l
  %storemerge49 = phi ptr [ %i.ba, %bb.l ], [ %i.az, %bb.k ], [ %i.bf, %bb.o ], [ %i.bg, %bb.p ] ; 2 uses
  %spec.select.sink.i44 = phi i32 [ 16, %bb.l ], [ 16, %bb.k ], [ %spec.select.i40, %bb.o ], [ %spec.select.i40, %bb.p ]
  store ptr %storemerge49, ptr %i.k, align 8, !tbaa !24
  store i32 %spec.select.sink.i44, ptr %1, align 8, !tbaa !23
  %.pre56 = load i32, ptr %i.a, align 4, !tbaa !22
  br label %Vec_IntPush.exit47

Vec_IntPush.exit47:                               ; preds = %.Vec_IntPush.exit47_crit_edge, %bb.m, %Vec_IntGrow.exit11.sink.split.i43
  %i.bh = phi i32 [ %i.au, %.Vec_IntPush.exit47_crit_edge ], [ %i.au, %bb.m ], [ %.pre56, %Vec_IntGrow.exit11.sink.split.i43 ] ; 2 uses
  %i.bi = phi ptr [ %.pre54, %.Vec_IntPush.exit47_crit_edge ], [ %.pre55, %bb.m ], [ %storemerge49, %Vec_IntGrow.exit11.sink.split.i43 ] ; 2 uses
  %i.bj = add nsw i32 %i.bh, 1
  store i32 %i.bj, ptr %i.a, align 4, !tbaa !22
  %i.bk = sext i32 %i.bh to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.bk
  store i32 %i.at, ptr %i.bl, align 4, !tbaa !19
  %.val50 = load i32, ptr %i.a, align 4, !tbaa !22
  %i.bm = icmp sgt i32 %.val50, 0
  br i1 %i.bm, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntPush.exit47, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %Vec_IntPush.exit47 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !19 ; 2 uses
  %i.bp = xor i32 %i.bo, -1
  %i.bq = and i32 %i.at, %i.bp
  %i.br = shl i32 %i.bq, 16
  %i.bs = or i32 %i.br, %i.bo
  store i32 %i.bs, ptr %i.bn, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !22
  %i.bt = sext i32 %.val to i64
  %i.bu = icmp slt i64 %indvars.iv.next, %i.bt
  br i1 %i.bu, label %.lr.ph, label %.critedge, !llvm.loop !36

.critedge:                                        ; preds = %.lr.ph, %Vec_IntPush.exit, %Vec_IntPush.exit47, %Vec_IntPush.exit39
  %.025 = phi i32 [ 0, %Vec_IntPush.exit ], [ %i.ad, %Vec_IntPush.exit39 ], [ %i.at, %Vec_IntPush.exit47 ], [ %i.at, %.lr.ph ]
  ret i32 %.025
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Lpk_ComposeSets(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef captures(none) %5, i32 noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @Lpk_ComposeSets.nTravId, align 4, !tbaa !19 ; 3 uses
  %i.b = icmp eq i32 %i.a, 1073741824
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(262144) @Lpk_ComposeSets.TravId, i8 0, i64 262144, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = add nsw i32 %i.a, 1                      ; 3 uses
  store i32 %i.c, ptr @Lpk_ComposeSets.nTravId, align 4, !tbaa !19
  %i.d = shl nsw i32 -1, %2
  %i.e = shl nuw i32 1, %3
  %.demorgan = or i32 %i.e, %i.d
  %i.f = getelementptr i8, ptr %0, i64 4
  %.val105 = load i32, ptr %i.f, align 4, !tbaa !22 ; 2 uses
  %i.g = icmp sgt i32 %.val105, 0
  br i1 %i.g, label %.lr.ph117, label %._crit_edge

.lr.ph117:                                        ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 8
  %.val109 = load ptr, ptr %i.h, align 8, !tbaa !24
  %i.i = getelementptr i8, ptr %1, i64 4
  %.val = load i32, ptr %i.i, align 4, !tbaa !22  ; 2 uses
  %i.j = icmp sgt i32 %.val, 0
  br i1 %i.j, label %.lr.ph117.split.us, label %._crit_edge

.lr.ph117.split.us:                               ; preds = %.lr.ph117
  %i.k = getelementptr i8, ptr %1, i64 8
  %.val108.us = load ptr, ptr %i.k, align 8, !tbaa !24
  %wide.trip.count136 = zext nneg i32 %.val105 to i64
  %wide.trip.count = zext nneg i32 %.val to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %..critedge2_crit_edge.us, %.lr.ph117.split.us
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %..critedge2_crit_edge.us ], [ 0, %.lr.ph117.split.us ] ; 3 uses
  %.093114.us = phi i32 [ %.us-phi.us, %..critedge2_crit_edge.us ], [ 0, %.lr.ph117.split.us ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.val109, i64 %indvars.iv133
  %i.m = load i32, ptr %i.l, align 4, !tbaa !19
  %.fr128 = freeze i32 %i.m                       ; 2 uses
  %i.n = and i32 %.fr128, 65535                   ; 3 uses
  %i.o = icmp eq i32 %i.n, 0
  %i.p = tail call range(i32 1, 17) i32 @llvm.ctpop.i32(i32 range(i32 1, 0) %i.n)
  %i.q = icmp samesign ugt i32 %i.p, 1
  br i1 %i.o, label %..critedge2_crit_edge.us, label %.lr.ph.split.us119.preheader

.lr.ph.split.us119.preheader:                     ; preds = %.lr.ph.us
end_hunk_0
begin_hunk_1_@Lpk_MapSuppRedDecSelect:bb.a
  %.not.i.not = icmp eq i32 %i.em, 0
  br i1 %.not.i.not, label %Kit_WordFindFirstBit.exit, label %bb.m

bb.m:                                             ; preds = %.critedge79
  %i.en = and i32 %.demorgan, 2
  %.not.1.i.not = icmp eq i32 %i.en, 0
  br i1 %.not.1.i.not, label %Kit_WordFindFirstBit.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eo = and i32 %.demorgan, 4
  %.not.2.i.not = icmp eq i32 %i.eo, 0
  br i1 %.not.2.i.not, label %Kit_WordFindFirstBit.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ep = and i32 %.demorgan, 8
  %.not.3.i.not = icmp eq i32 %i.ep, 0
  br i1 %.not.3.i.not, label %Kit_WordFindFirstBit.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eq = and i32 %.demorgan, 16
  %.not.4.i.not = icmp eq i32 %i.eq, 0
  br i1 %.not.4.i.not, label %Kit_WordFindFirstBit.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.er = and i32 %.demorgan, 32
  %.not.5.i.not = icmp eq i32 %i.er, 0
  br i1 %.not.5.i.not, label %Kit_WordFindFirstBit.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.es = and i32 %.demorgan, 64
  %.not.6.i.not = icmp eq i32 %i.es, 0
  br i1 %.not.6.i.not, label %Kit_WordFindFirstBit.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.et = and i32 %.demorgan, 128
  %.not.7.i.not = icmp eq i32 %i.et, 0
  br i1 %.not.7.i.not, label %Kit_WordFindFirstBit.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eu = and i32 %.demorgan, 256
  %.not.8.i.not = icmp eq i32 %i.eu, 0
  br i1 %.not.8.i.not, label %Kit_WordFindFirstBit.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ev = and i32 %.demorgan, 512
  %.not.9.i.not = icmp eq i32 %i.ev, 0
  br i1 %.not.9.i.not, label %Kit_WordFindFirstBit.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ew = and i32 %.demorgan, 1024
  %.not.10.i.not = icmp eq i32 %i.ew, 0
  br i1 %.not.10.i.not, label %Kit_WordFindFirstBit.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ex = and i32 %.demorgan, 2048
  %.not.11.i.not = icmp eq i32 %i.ex, 0
  br i1 %.not.11.i.not, label %Kit_WordFindFirstBit.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ey = and i32 %.demorgan, 4096
  %.not.12.i.not = icmp eq i32 %i.ey, 0
  br i1 %.not.12.i.not, label %Kit_WordFindFirstBit.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ez = and i32 %.demorgan, 8192
  %.not.13.i.not = icmp eq i32 %i.ez, 0
  br i1 %.not.13.i.not, label %Kit_WordFindFirstBit.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fa = and i32 %.demorgan, 16384
  %.not.14.i.not = icmp eq i32 %i.fa, 0
  br i1 %.not.14.i.not, label %Kit_WordFindFirstBit.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fb = and i32 %.demorgan, 32768
  %.not.15.i.not = icmp eq i32 %i.fb, 0
  br i1 %.not.15.i.not, label %Kit_WordFindFirstBit.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fc = and i32 %.demorgan, 65536
  %.not.16.i.not = icmp eq i32 %i.fc, 0
  br i1 %.not.16.i.not, label %Kit_WordFindFirstBit.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fd = and i32 %.demorgan, 131072
  %.not.17.i.not = icmp eq i32 %i.fd, 0
  br i1 %.not.17.i.not, label %Kit_WordFindFirstBit.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fe = and i32 %.demorgan, 262144
  %.not.18.i.not = icmp eq i32 %i.fe, 0
  br i1 %.not.18.i.not, label %Kit_WordFindFirstBit.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ff = and i32 %.demorgan, 524288
  %.not.19.i.not = icmp eq i32 %i.ff, 0
  br i1 %.not.19.i.not, label %Kit_WordFindFirstBit.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fg = and i32 %.demorgan, 1048576
  %.not.20.i.not = icmp eq i32 %i.fg, 0
  br i1 %.not.20.i.not, label %Kit_WordFindFirstBit.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fh = and i32 %.demorgan, 2097152
  %.not.21.i.not = icmp eq i32 %i.fh, 0
  br i1 %.not.21.i.not, label %Kit_WordFindFirstBit.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fi = and i32 %.demorgan, 4194304
  %.not.22.i.not = icmp eq i32 %i.fi, 0
  br i1 %.not.22.i.not, label %Kit_WordFindFirstBit.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fj = and i32 %.demorgan, 8388608
  %.not.23.i.not = icmp eq i32 %i.fj, 0
  br i1 %.not.23.i.not, label %Kit_WordFindFirstBit.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fk = and i32 %.demorgan, 16777216
  %.not.24.i.not = icmp eq i32 %i.fk, 0
  br i1 %.not.24.i.not, label %Kit_WordFindFirstBit.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fl = and i32 %.demorgan, 33554432
  %.not.25.i.not = icmp eq i32 %i.fl, 0
  br i1 %.not.25.i.not, label %Kit_WordFindFirstBit.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fm = and i32 %.demorgan, 67108864
  %.not.26.i.not = icmp eq i32 %i.fm, 0
  br i1 %.not.26.i.not, label %Kit_WordFindFirstBit.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fn = and i32 %.demorgan, 134217728
  %.not.27.i.not = icmp eq i32 %i.fn, 0
  br i1 %.not.27.i.not, label %Kit_WordFindFirstBit.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fo = and i32 %.demorgan, 268435456
  %.not.28.i.not = icmp eq i32 %i.fo, 0
  br i1 %.not.28.i.not, label %Kit_WordFindFirstBit.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fp = and i32 %.demorgan, 536870912
  %.not.29.i.not = icmp eq i32 %i.fp, 0
  br i1 %.not.29.i.not, label %Kit_WordFindFirstBit.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.not.30.i = icmp eq i32 %.demorgan, -1
  %spec.select = select i1 %.not.30.i, i32 -1, i32 30
  br label %Kit_WordFindFirstBit.exit

Kit_WordFindFirstBit.exit:                        ; preds = %bb.ap, %.critedge79, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao
  %.06.i = phi i32 [ 0, %.critedge79 ], [ 16, %bb.ab ], [ 1, %bb.m ], [ 24, %bb.aj ], [ 2, %bb.n ], [ 20, %bb.af ], [ 3, %bb.o ], [ %spec.select, %bb.ap ], [ 4, %bb.p ], [ 17, %bb.ac ], [ 5, %bb.q ], [ 29, %bb.ao ], [ 6, %bb.r ], [ 23, %bb.ai ], [ 7, %bb.s ], [ 28, %bb.an ], [ 8, %bb.t ], [ 18, %bb.ad ], [ 9, %bb.u ], [ 27, %bb.am ], [ 10, %bb.v ], [ 21, %bb.ag ], [ 11, %bb.w ], [ 26, %bb.al ], [ 12, %bb.x ], [ 19, %bb.ae ], [ 13, %bb.y ], [ 25, %bb.ak ], [ 14, %bb.z ], [ 22, %bb.ah ], [ 15, %bb.aa ]
  store i32 %.06.i, ptr %4, align 4, !tbaa !19
  %i.fq = sext i8 %i.ei to i32
  store i32 %i.fq, ptr %3, align 4, !tbaa !19
  %i.fr = load i32, ptr %i.ed, align 4, !tbaa !27
  %i.fs = shl i32 %i.fr, 16
  %i.ft = load i32, ptr %i.eb, align 4, !tbaa !26
  %i.fu = and i32 %i.ft, 65535
  %i.fv = or disjoint i32 %i.fu, %i.fs
  br label %.thread119.thread

.thread119.thread:                                ; preds = %.critedge77, %.thread119, %bb.j, %Kit_WordFindFirstBit.exit
  %.066 = phi i32 [ %i.fv, %Kit_WordFindFirstBit.exit ], [ 0, %bb.j ], [ 0, %.thread119 ], [ 0, %.critedge77 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.066
}

declare void @Kit_DsdPrintFromTruth(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @Kit_TruthCofactor0New(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare void @Kit_TruthCofactor1New(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare ptr @Kit_DsdDecompose(ptr noundef, i32 noundef) local_unnamed_addr #7

declare ptr @Kit_DsdExpand(ptr noundef) local_unnamed_addr #7

declare void @Kit_DsdNtkFree(ptr noundef) local_unnamed_addr #7

declare void @Kit_DsdPrint(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #10

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(1) }
attributes #15 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"short", !4, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 int", !9, i64 0}
!11 = !{!"any p2 pointer", !9, i64 0}
!12 = !{!"p2 _ZTS13Kit_DsdObj_t_", !11, i64 0}
!13 = !{!"Kit_DsdNtk_t_", !8, i64 0, !8, i64 2, !8, i64 4, !8, i64 6, !10, i64 8, !10, i64 16, !12, i64 24}
!14 = !{!13, !8, i64 0}
!15 = !{!13, !12, i64 24}
!16 = !{!"p1 _ZTS13Kit_DsdObj_t_", !9, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!8, !8, i64 0}
!19 = !{!5, !5, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !10, i64 8}
!22 = !{!21, !5, i64 4}
!23 = !{!21, !5, i64 0}
!24 = !{!21, !10, i64 8}
!25 = !{!"Lpk_Set_t_", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3, !5, i64 4, !5, i64 8}
!26 = !{!25, !5, i64 4}
!27 = !{!25, !5, i64 8}
!28 = !{!25, !4, i64 0}
!29 = !{!25, !4, i64 3}
!30 = !{!25, !4, i64 1}
!31 = !{!25, !4, i64 2}
!32 = distinct !{!32, !20}
!33 = distinct !{!33, !20}
!34 = distinct !{!34, !20}
!35 = distinct !{!35, !20}
!36 = distinct !{!36, !20}
!37 = !{!13, !8, i64 6}
!38 = distinct !{!38, !20}
!39 = distinct !{!39, !20}
!40 = distinct !{!40, !44}
!41 = distinct !{!41, !20}
!42 = distinct !{!42, !20}
!43 = !{!4, !4, i64 0}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = distinct !{!45, !20}
!46 = distinct !{!46, !20}
!47 = distinct !{!47, !20}
!48 = distinct !{!48, !20}
!49 = !{!"p1 _ZTS10Vec_Int_t_", !9, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"p1 _ZTS10Lpk_Par_t_", !9, i64 0}
!52 = !{!"p1 _ZTS10Abc_Ntk_t_", !9, i64 0}
!53 = !{!"p1 _ZTS10Abc_Obj_t_", !9, i64 0}
!54 = !{!"p1 _ZTS10Vec_Vec_t_", !9, i64 0}
!55 = !{!"p1 _ZTS9If_Man_t_", !9, i64 0}
!56 = !{!"p1 _ZTS10Vec_Ptr_t_", !9, i64 0}
!57 = !{!"p1 _ZTS13Kit_DsdMan_t_", !9, i64 0}
!58 = !{!"long", !4, i64 0}
!59 = !{!"Lpk_Man_t_", !51, i64 0, !52, i64 8, !53, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !4, i64 40, !4, i64 8200040, !54, i64 8240040, !55, i64 8240048, !49, i64 8240056, !54, i64 8240064, !5, i64 8240072, !5, i64 8240076, !5, i64 8240080, !4, i64 8240084, !4, i64 8240484, !56, i64 8240888, !56, i64 8240896, !56, i64 8240904, !56, i64 8240912, !49, i64 8240920, !49, i64 8240928, !49, i64 8240936, !4, i64 8240944, !4, i64 8241072, !4, i64 8241712, !57, i64 8241776, !5, i64 8241784, !5, i64 8241788, !5, i64 8241792, !5, i64 8241796, !5, i64 8241800, !5, i64 8241804, !5, i64 8241808, !5, i64 8241812, !5, i64 8241816, !5, i64 8241820, !5, i64 8241824, !5, i64 8241828, !5, i64 8241832, !4, i64 8241836, !58, i64 8241904, !58, i64 8241912, !58, i64 8241920, !58, i64 8241928, !58, i64 8241936, !58, i64 8241944, !58, i64 8241952, !58, i64 8241960, !58, i64 8241968, !58, i64 8241976, !58, i64 8241984, !58, i64 8241992, !58, i64 8242000}
!60 = !{!59, !56, i64 8240912}
!61 = !{!"Vec_Ptr_t_", !5, i64 0, !5, i64 4, !11, i64 8}
!62 = !{!61, !11, i64 8}
!63 = !{!9, !9, i64 0}
!64 = !{!59, !51, i64 0}
!65 = !{!"Lpk_Par_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44}
!66 = !{!65, !5, i64 36}
!67 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!68 = !{!67, !67, i64 0}
!69 = !{!"p1 _ZTS10Lpk_Set_t_", !9, i64 0}
!70 = !{!69, !69, i64 0}
!71 = !{!65, !5, i64 40}
end_hunk_1
