Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/lpkAbcDsd?download=true
inline.NumInlined: 53
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Lpk_ComputeBoundSets_rec:bb.a
  %i.aw = trunc nuw nsw i64 %indvars.iv95.epil.init to i32
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = and i32 %i.ax, %.083
  %.not62.epil = icmp eq i32 %i.ay, 0
  br i1 %.not62.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %.lr.ph81.epil.preheader
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv95.epil.init
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !14
  %i.bb = or i32 %i.ba, %.05280.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.h, %.lr.ph81.epil.preheader, %.preheader
  %.052.lcssa = phi i32 [ 0, %.preheader ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.bb, %bb.h ], [ %.05280.epil.init, %.lr.ph81.epil.preheader ] ; 2 uses
  %i.bc = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.052.lcssa)
  %.not61 = icmp sgt i32 %i.bc, %3
  br i1 %.not61, label %bb.r, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.bd = load i32, ptr %i.af, align 4, !tbaa !28 ; 7 uses
  %i.be = load i32, ptr %2, align 8, !tbaa !29
  %i.bf = icmp eq i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.j, label %.Vec_IntPush.exit_crit_edge

.Vec_IntPush.exit_crit_edge:                      ; preds = %bb.i
  %.pre101 = load ptr, ptr %i.ag, align 8, !tbaa !30
  br label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp slt i32 %i.bd, 16
  br i1 %i.bg, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bh = load ptr, ptr %i.ag, align 8, !tbaa !30 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.bh, null
  br i1 %.not9.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bh, i64 noundef 64) #12
  br label %Vec_IntGrow.exit11.sink.split.i

bb.m:                                             ; preds = %bb.k
  %i.bj = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #13
  br label %Vec_IntGrow.exit11.sink.split.i

bb.n:                                             ; preds = %bb.j
  %i.bk = icmp samesign ult i32 %i.bd, 1073741823
  %i.bl = shl nuw nsw i32 %i.bd, 1
  %spec.select.i = select i1 %i.bk, i32 %i.bl, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.bd, %spec.select.i
  %.pre102 = load ptr, ptr %i.ag, align 8, !tbaa !30 ; 3 uses
  br i1 %.not.i9.i, label %bb.o, label %Vec_IntPush.exit

bb.o:                                             ; preds = %bb.n
  %.not9.i10.i = icmp eq ptr %.pre102, null
  %i.bm = zext nneg i32 %spec.select.i to i64
  %i.bn = shl nuw nsw i64 %i.bm, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = tail call ptr @realloc(ptr noundef nonnull %.pre102, i64 noundef %i.bn) #12
  br label %Vec_IntGrow.exit11.sink.split.i

bb.q:                                             ; preds = %bb.o
  %i.bp = tail call noalias ptr @malloc(i64 noundef %i.bn) #13
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.p, %bb.q, %bb.l, %bb.m
  %i.bq = phi ptr [ %i.bj, %bb.m ], [ %i.bi, %bb.l ], [ %i.bo, %bb.p ], [ %i.bp, %bb.q ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.m ], [ 16, %bb.l ], [ %spec.select.i, %bb.p ], [ %spec.select.i, %bb.q ]
  store ptr %i.bq, ptr %i.ag, align 8, !tbaa !30
  store i32 %spec.select.sink.i, ptr %2, align 8, !tbaa !29
  %.pre103 = load i32, ptr %i.af, align 4, !tbaa !28
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.Vec_IntPush.exit_crit_edge, %bb.n, %Vec_IntGrow.exit11.sink.split.i
  %i.br = phi i32 [ %i.bd, %.Vec_IntPush.exit_crit_edge ], [ %i.bd, %bb.n ], [ %.pre103, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bs = phi ptr [ %.pre101, %.Vec_IntPush.exit_crit_edge ], [ %.pre102, %bb.n ], [ %i.bq, %Vec_IntGrow.exit11.sink.split.i ]
  %i.bt = add nsw i32 %i.br, 1
  store i32 %i.bt, ptr %i.af, align 4, !tbaa !28
  %i.bu = sext i32 %i.br to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bu
  store i32 %.052.lcssa, ptr %i.bv, align 4, !tbaa !14
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %Vec_IntPush.exit
  %i.bw = add nuw nsw i32 %.083, 1                ; 2 uses
  %i.bx = xor i32 %notmask, %i.bw
  %exitcond98.not = icmp eq i32 %i.bx, -1
  br i1 %exitcond98.not, label %._crit_edge84, label %.preheader, !llvm.loop !55

._crit_edge84:                                    ; preds = %bb.r, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.critedge2

bb.s:                                             ; preds = %.lr.ph, %bb.ac
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ac ] ; 2 uses
  %.15473 = phi i32 [ 0, %.lr.ph ], [ %i.cc, %bb.ac ]
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !26
  %i.ca = zext i16 %i.bz to i32
  %i.cb = tail call i32 @Lpk_ComputeBoundSets_rec(ptr noundef nonnull %0, i32 noundef %i.ca, ptr noundef %2, i32 noundef %3) ; 3 uses
  %i.cc = or i32 %i.cb, %.15473                   ; 2 uses
  %i.cd = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.cb)
  %.not = icmp sgt i32 %i.cd, %3
  br i1 %.not, label %bb.ac, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = load i32, ptr %i.r, align 4, !tbaa !28  ; 7 uses
  %i.cf = load i32, ptr %2, align 8, !tbaa !29
  %i.cg = icmp eq i32 %i.ce, %i.cf
  br i1 %i.cg, label %bb.u, label %.Vec_IntPush.exit70_crit_edge

.Vec_IntPush.exit70_crit_edge:                    ; preds = %bb.t
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !30
  br label %Vec_IntPush.exit70

bb.u:                                             ; preds = %bb.t
  %i.ch = icmp slt i32 %i.ce, 16
  br i1 %i.ch, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.ci = load ptr, ptr %i.s, align 8, !tbaa !30  ; 2 uses
  %.not9.i.i68 = icmp eq ptr %i.ci, null
  br i1 %.not9.i.i68, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ci, i64 noundef 64) #12
  br label %Vec_IntGrow.exit11.sink.split.i66

bb.x:                                             ; preds = %bb.v
  %i.ck = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #13
  br label %Vec_IntGrow.exit11.sink.split.i66

bb.y:                                             ; preds = %bb.u
  %i.cl = icmp samesign ult i32 %i.ce, 1073741823
  %i.cm = shl nuw nsw i32 %i.ce, 1
  %spec.select.i63 = select i1 %i.cl, i32 %i.cm, i32 2147483647 ; 4 uses
  %.not.i9.i64 = icmp samesign ult i32 %i.ce, %spec.select.i63
  %.pre99 = load ptr, ptr %i.s, align 8, !tbaa !30 ; 3 uses
  br i1 %.not.i9.i64, label %bb.z, label %Vec_IntPush.exit70

bb.z:                                             ; preds = %bb.y
  %.not9.i10.i65 = icmp eq ptr %.pre99, null
  %i.cn = zext nneg i32 %spec.select.i63 to i64
  %i.co = shl nuw nsw i64 %i.cn, 2                ; 2 uses
  br i1 %.not9.i10.i65, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cp = tail call ptr @realloc(ptr noundef nonnull %.pre99, i64 noundef %i.co) #12
  br label %Vec_IntGrow.exit11.sink.split.i66

bb.ab:                                            ; preds = %bb.z
  %i.cq = tail call noalias ptr @malloc(i64 noundef %i.co) #13
  br label %Vec_IntGrow.exit11.sink.split.i66

Vec_IntGrow.exit11.sink.split.i66:                ; preds = %bb.aa, %bb.ab, %bb.w, %bb.x
  %i.cr = phi ptr [ %i.ck, %bb.x ], [ %i.cj, %bb.w ], [ %i.cp, %bb.aa ], [ %i.cq, %bb.ab ] ; 2 uses
  %spec.select.sink.i67 = phi i32 [ 16, %bb.x ], [ 16, %bb.w ], [ %spec.select.i63, %bb.aa ], [ %spec.select.i63, %bb.ab ]
  store ptr %i.cr, ptr %i.s, align 8, !tbaa !30
  store i32 %spec.select.sink.i67, ptr %2, align 8, !tbaa !29
  %.pre100 = load i32, ptr %i.r, align 4, !tbaa !28
  br label %Vec_IntPush.exit70

Vec_IntPush.exit70:                               ; preds = %.Vec_IntPush.exit70_crit_edge, %bb.y, %Vec_IntGrow.exit11.sink.split.i66
  %i.cs = phi i32 [ %i.ce, %.Vec_IntPush.exit70_crit_edge ], [ %i.ce, %bb.y ], [ %.pre100, %Vec_IntGrow.exit11.sink.split.i66 ] ; 2 uses
  %i.ct = phi ptr [ %.pre, %.Vec_IntPush.exit70_crit_edge ], [ %.pre99, %bb.y ], [ %i.cr, %Vec_IntGrow.exit11.sink.split.i66 ]
  %i.cu = add nsw i32 %i.cs, 1
  store i32 %i.cu, ptr %i.r, align 4, !tbaa !28
  %i.cv = sext i32 %i.cs to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.cv
  store i32 %i.cb, ptr %i.cw, align 4, !tbaa !14
  br label %bb.ac

bb.ac:                                            ; preds = %bb.s, %Vec_IntPush.exit70
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cx = load i32, ptr %i.k, align 4
  %i.cy = lshr i32 %i.cx, 26
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = icmp samesign ult i64 %indvars.iv.next, %i.cz
  br i1 %i.da, label %bb.s, label %.critedge2, !llvm.loop !56

.critedge2:                                       ; preds = %bb.ac, %.preheader71, %._crit_edge84, %Kit_DsdNtkObj.exit.thread
  %.057 = phi i32 [ %i.m, %Kit_DsdNtkObj.exit.thread ], [ %.053.lcssa, %._crit_edge84 ], [ 0, %.preheader71 ], [ %i.cc, %bb.ac ]
  ret i32 %.057
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @Lpk_ComputeBoundSets(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
Vec_IntPush.exit:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #13 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 7 uses
  store i32 100, ptr %i.a, align 8, !tbaa !29
  %i.c = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #13 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 6 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !30
  store i32 1, ptr %i.b, align 4, !tbaa !28
  store i32 0, ptr %i.c, align 4, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.f = load i16, ptr %i.e, align 2, !tbaa !58   ; 2 uses
  %i.g = lshr i16 %i.f, 1
  %i.h = load i16, ptr %0, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23
  %narrow.i = sub nuw nsw i16 %i.g, %i.h
  %i.k = zext nneg i16 %narrow.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25   ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = and i32 %i.n, 448
  switch i32 %i.o, label %bb.a [
    i32 64, label %.critedge
    i32 128, label %Kit_DsdNtkRoot.exit37
  ]

Kit_DsdNtkRoot.exit37:                            ; preds = %Vec_IntPush.exit
  %.not31 = icmp slt i32 %1, 1
  br i1 %.not31, label %.critedge, label %Vec_IntPush.exit45

Vec_IntPush.exit45:                               ; preds = %Kit_DsdNtkRoot.exit37
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.q = load i16, ptr %i.p, align 4, !tbaa !26
  %i.r = lshr i16 %i.q, 1
  %i.s = zext nneg i16 %i.r to i32
  %i.t = shl nuw i32 1, %i.s
  store i32 2, ptr %i.b, align 4, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.t, ptr %i.u, align 4, !tbaa !14
  br label %.critedge

bb.a:                                             ; preds = %Vec_IntPush.exit
  %i.v = zext i16 %i.f to i32
  %i.w = tail call i32 @Lpk_ComputeBoundSets_rec(ptr noundef nonnull %0, i32 noundef %i.v, ptr noundef nonnull %i.a, i32 noundef %1) ; 3 uses
  %i.x = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.w)
  %.not = icmp sgt i32 %i.x, %1
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = load i32, ptr %i.b, align 4, !tbaa !28   ; 7 uses
  %i.z = load i32, ptr %i.a, align 8, !tbaa !29
  %i.aa = icmp eq i32 %i.y, %i.z
  br i1 %i.aa, label %bb.c, label %.Vec_IntPush.exit53_crit_edge

.Vec_IntPush.exit53_crit_edge:                    ; preds = %bb.b
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !30
  br label %Vec_IntPush.exit53

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp slt i32 %i.y, 16
  br i1 %i.ab, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !30  ; 2 uses
  %.not9.i.i51 = icmp eq ptr %i.ac, null
  br i1 %.not9.i.i51, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ac, i64 noundef 64) #12
  br label %Vec_IntGrow.exit11.sink.split.i49

bb.f:                                             ; preds = %bb.d
  %i.ae = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #13
  br label %Vec_IntGrow.exit11.sink.split.i49

bb.g:                                             ; preds = %bb.c
  %i.af = icmp samesign ult i32 %i.y, 1073741823
  %i.ag = shl nuw nsw i32 %i.y, 1
  %spec.select.i46 = select i1 %i.af, i32 %i.ag, i32 2147483647 ; 4 uses
  %.not.i9.i47 = icmp samesign ult i32 %i.y, %spec.select.i46
  %.pre59 = load ptr, ptr %i.d, align 8, !tbaa !30 ; 3 uses
  br i1 %.not.i9.i47, label %bb.h, label %Vec_IntPush.exit53

bb.h:                                             ; preds = %bb.g
  %.not9.i10.i48 = icmp eq ptr %.pre59, null
  %i.ah = zext nneg i32 %spec.select.i46 to i64
  %i.ai = shl nuw nsw i64 %i.ah, 2                ; 2 uses
  br i1 %.not9.i10.i48, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = tail call ptr @realloc(ptr noundef nonnull %.pre59, i64 noundef %i.ai) #12
  br label %Vec_IntGrow.exit11.sink.split.i49

bb.j:                                             ; preds = %bb.h
  %i.ak = tail call noalias ptr @malloc(i64 noundef %i.ai) #13
  br label %Vec_IntGrow.exit11.sink.split.i49

Vec_IntGrow.exit11.sink.split.i49:                ; preds = %bb.i, %bb.j, %bb.e, %bb.f
  %storemerge55 = phi ptr [ %i.ae, %bb.f ], [ %i.ad, %bb.e ], [ %i.aj, %bb.i ], [ %i.ak, %bb.j ] ; 2 uses
  %spec.select.sink.i50 = phi i32 [ 16, %bb.f ], [ 16, %bb.e ], [ %spec.select.i46, %bb.i ], [ %spec.select.i46, %bb.j ]
  store ptr %storemerge55, ptr %i.d, align 8, !tbaa !30
  store i32 %spec.select.sink.i50, ptr %i.a, align 8, !tbaa !29
  %.pre60 = load i32, ptr %i.b, align 4, !tbaa !28
  br label %Vec_IntPush.exit53

Vec_IntPush.exit53:                               ; preds = %.Vec_IntPush.exit53_crit_edge, %bb.g, %Vec_IntGrow.exit11.sink.split.i49
  %i.al = phi i32 [ %i.y, %.Vec_IntPush.exit53_crit_edge ], [ %i.y, %bb.g ], [ %.pre60, %Vec_IntGrow.exit11.sink.split.i49 ] ; 2 uses
  %i.am = phi ptr [ %.pre, %.Vec_IntPush.exit53_crit_edge ], [ %.pre59, %bb.g ], [ %storemerge55, %Vec_IntGrow.exit11.sink.split.i49 ]
  %i.an = add nsw i32 %i.al, 1
  store i32 %i.an, ptr %i.b, align 4, !tbaa !28
  %i.ao = sext i32 %i.al to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ao
  store i32 %i.w, ptr %i.ap, align 4, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %Vec_IntPush.exit53, %bb.a
  %.val56 = load i32, ptr %i.b, align 4, !tbaa !28
  %i.aq = icmp sgt i32 %.val56, 0
  br i1 %i.aq, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.k
  %.val32 = load ptr, ptr %i.d, align 8, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.val32, i64 %indvars.iv ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !14 ; 2 uses
  %i.at = xor i32 %i.as, -1
  %i.au = and i32 %i.w, %i.at
  %i.av = shl i32 %i.au, 16
  %i.aw = or i32 %i.av, %i.as
  store i32 %i.aw, ptr %i.ar, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load i32, ptr %i.b, align 4, !tbaa !28
  %i.ax = sext i32 %.val to i64
  %i.ay = icmp slt i64 %indvars.iv.next, %i.ax
  br i1 %i.ay, label %bb.l, label %.critedge, !llvm.loop !57

.critedge:                                        ; preds = %bb.l, %Vec_IntPush.exit, %bb.k, %Kit_DsdNtkRoot.exit37, %Vec_IntPush.exit45
  ret ptr %i.a
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Lpk_MergeBoundSets(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #13 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !28
  store i32 100, ptr %i.a, align 8, !tbaa !29
  %i.c = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #13 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %.val2227 = load i32, ptr %i.e, align 4, !tbaa !28 ; 2 uses
  %i.f = icmp sgt i32 %.val2227, 0
  br i1 %i.f, label %.lr.ph29, label %.critedge

.lr.ph29:                                         ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.h, align 4, !tbaa !28   ; 3 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph29.split, label %.critedge

.lr.ph29.split:                                   ; preds = %.lr.ph29, %.critedge2
  %.val2241 = phi i32 [ %.val22, %.critedge2 ], [ %.val2227, %.lr.ph29 ]
  %.val37 = phi i32 [ %.val38, %.critedge2 ], [ %i.j, %.lr.ph29 ] ; 2 uses
  %i.l = phi ptr [ %i.ay, %.critedge2 ], [ %i.c, %.lr.ph29 ] ; 2 uses
  %i.m = phi ptr [ %i.az, %.critedge2 ], [ %i.c, %.lr.ph29 ] ; 2 uses
  %i.n = phi i32 [ %i.ba, %.critedge2 ], [ 100, %.lr.ph29 ] ; 2 uses
  %i.o = phi i32 [ %i.bb, %.critedge2 ], [ 0, %.lr.ph29 ] ; 2 uses
  %.val25 = phi i32 [ %.val2536, %.critedge2 ], [ %i.j, %.lr.ph29 ] ; 2 uses
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %.critedge2 ], [ 0, %.lr.ph29 ] ; 2 uses
  %.val24 = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.val24, i64 %indvars.iv32
  %i.q = load i32, ptr %i.p, align 4, !tbaa !14
  %i.r = icmp sgt i32 %.val25, 0
  br i1 %i.r, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %.lr.ph29.split, %bb.l
  %.val39 = phi i32 [ %.val, %bb.l ], [ %.val37, %.lr.ph29.split ] ; 2 uses
  %i.s = phi ptr [ %i.as, %bb.l ], [ %i.l, %.lr.ph29.split ] ; 4 uses
  %i.t = phi ptr [ %i.at, %bb.l ], [ %i.m, %.lr.ph29.split ] ; 6 uses
  %i.u = phi i32 [ %i.au, %bb.l ], [ %i.n, %.lr.ph29.split ] ; 9 uses
  %i.v = phi i32 [ %i.av, %bb.l ], [ %i.o, %.lr.ph29.split ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 0, %.lr.ph29.split ] ; 2 uses
  %.val23 = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.val23, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4, !tbaa !14
  %i.y = or i32 %i.x, %i.q                        ; 4 uses
  %i.z = ashr i32 %i.y, 16
  %i.aa = and i32 %i.z, %i.y
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %.lr.ph
  %i.ab = and i32 %i.y, 65535
  %i.ac = tail call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.ab)
  %.not21 = icmp sgt i32 %i.ac, %2
  br i1 %.not21, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = icmp eq i32 %i.v, %i.u
  br i1 %i.ad, label %bb.d, label %Vec_IntPush.exit

bb.d:                                             ; preds = %bb.c
  %i.ae = icmp slt i32 %i.u, 16
  br i1 %i.ae, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not9.i.i = icmp eq ptr %i.t, null
end_hunk_0
