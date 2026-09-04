Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcVerify?download=true
inline.NumInlined: 192
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@Abc_NtkVerifyCollectWords:bb.a
  %i.ax = phi ptr [ %i.aq, %bb.k ], [ %i.ap, %bb.j ], [ %i.av, %bb.n ], [ %i.aw, %bb.o ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i.i, %bb.n ], [ %spec.select.i.i, %bb.o ]
  store ptr %i.ax, ptr %i.d, align 8, !tbaa !30
  store i32 %spec.select.sink.i.i, ptr %0, align 8, !tbaa !54
  %.pre.i = load i32, ptr %i.c, align 4, !tbaa !28
  br label %Vec_PtrPush.exit.i

Vec_PtrPush.exit.i:                               ; preds = %.critedge.i.Vec_PtrPush.exit.i_crit_edge, %Vec_PtrGrow.exit12.sink.split.i.i, %bb.l
  %i.ay = phi ptr [ %.pre, %.critedge.i.Vec_PtrPush.exit.i_crit_edge ], [ %.pre46, %bb.l ], [ %i.ax, %Vec_PtrGrow.exit12.sink.split.i.i ]
  %i.az = phi i32 [ %.val.i, %.critedge.i.Vec_PtrPush.exit.i_crit_edge ], [ %.val.i, %bb.l ], [ %.pre.i, %Vec_PtrGrow.exit12.sink.split.i.i ] ; 2 uses
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.c, align 4, !tbaa !28
  %i.bb = sext i32 %i.az to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.bb
  store ptr %i.af, ptr %i.bc, align 8, !tbaa !31
  br label %Abc_NtkVerifyFindWord.exit

Abc_NtkVerifyFindWord.exit:                       ; preds = %bb.g, %Vec_PtrPush.exit.i
  %.016.i = phi ptr [ %i.af, %Vec_PtrPush.exit.i ], [ %i.ac, %bb.g ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.016.i, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !61 ; 7 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !37
  %i.bh = add nsw i32 %.not38, 1                  ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !49 ; 4 uses
  %.not.i.not.i = icmp slt i32 %.not38, %i.bj
  br i1 %.not.i.not.i, label %Vec_IntSetEntry.exit, label %bb.p

bb.p:                                             ; preds = %Abc_NtkVerifyFindWord.exit
  %i.bk = load i32, ptr %i.be, align 8, !tbaa !47 ; 4 uses
  %i.bl = shl nsw i32 %i.bk, 1                    ; 2 uses
  %.not.i20 = icmp slt i32 %.not38, %i.bl
  %.not.i.i.not.i = icmp sgt i32 %i.bk, %.not38   ; 2 uses
  br i1 %.not.i20, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %.not.i.i.not.i, label %Vec_IntGrow.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !48 ; 2 uses
  %.not9.i.i.i21 = icmp eq ptr %i.bn, null
  %i.bo = sext i32 %i.bh to i64
  %i.bp = shl nsw i64 %i.bo, 2                    ; 2 uses
  br i1 %.not9.i.i.i21, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = tail call ptr @realloc(ptr noundef nonnull %i.bn, i64 noundef %i.bp) #24
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.br = tail call noalias ptr @malloc(i64 noundef %i.bp) #22
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bs = phi ptr [ %i.bq, %bb.s ], [ %i.br, %bb.t ]
  store ptr %i.bs, ptr %i.bm, align 8, !tbaa !48
  br label %Vec_IntGrow.exit.sink.split.i.i

bb.v:                                             ; preds = %bb.p
  br i1 %.not.i.i.not.i, label %Vec_IntGrow.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bt = icmp slt i32 %i.bk, 1073741823
  %spec.select.i.i25 = select i1 %i.bt, i32 %i.bl, i32 2147483647 ; 3 uses
  %.not.i22.i.i = icmp slt i32 %i.bk, %spec.select.i.i25
  br i1 %.not.i22.i.i, label %bb.x, label %Vec_IntGrow.exit.i.i

bb.x:                                             ; preds = %bb.w
  %i.bu = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !48 ; 2 uses
  %.not9.i23.i.i = icmp eq ptr %i.bv, null
  %i.bw = sext i32 %spec.select.i.i25 to i64
  %i.bx = shl nuw nsw i64 %i.bw, 2                ; 2 uses
  br i1 %.not9.i23.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.by = tail call ptr @realloc(ptr noundef nonnull %i.bv, i64 noundef %i.bx) #24
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.bz = tail call noalias ptr @malloc(i64 noundef %i.bx) #22
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ca = phi ptr [ %i.by, %bb.y ], [ %i.bz, %bb.z ]
  store ptr %i.ca, ptr %i.bu, align 8, !tbaa !48
  br label %Vec_IntGrow.exit.sink.split.i.i

Vec_IntGrow.exit.sink.split.i.i:                  ; preds = %bb.aa, %bb.u
  %spec.select.sink.i.i22 = phi i32 [ %spec.select.i.i25, %bb.aa ], [ %i.bh, %bb.u ]
  store i32 %spec.select.sink.i.i22, ptr %i.be, align 8, !tbaa !47
  %.pre.i23 = load i32, ptr %i.bi, align 4, !tbaa !49
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %Vec_IntGrow.exit.sink.split.i.i, %bb.w, %bb.v, %bb.q
  %i.cb = phi i32 [ %.pre.i23, %Vec_IntGrow.exit.sink.split.i.i ], [ %i.bj, %bb.w ], [ %i.bj, %bb.v ], [ %i.bj, %bb.q ] ; 3 uses
  %.not4.i = icmp sgt i32 %i.cb, %.not38
  br i1 %.not4.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %Vec_IntGrow.exit.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !48
  %i.ce = sext i32 %i.cb to i64
  %i.cf = shl nsw i64 %i.ce, 2
  %scevgep.i.i = getelementptr i8, ptr %i.cd, i64 %i.cf
  %i.cg = sub i32 %.not38, %i.cb
  %i.ch = zext i32 %i.cg to i64
  %i.ci = shl nuw nsw i64 %i.ch, 2
  %i.cj = add nuw nsw i64 %i.ci, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i, i8 0, i64 %i.cj, i1 false), !tbaa !37
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %Vec_IntGrow.exit.i.i
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !49
  br label %Vec_IntSetEntry.exit

Vec_IntSetEntry.exit:                             ; preds = %Abc_NtkVerifyFindWord.exit, %._crit_edge.i.i
  %i.ck = getelementptr i8, ptr %i.be, i64 8
  %.val.i24 = load ptr, ptr %i.ck, align 8, !tbaa !48
  %i.cl = sext i32 %.not38 to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %.val.i24, i64 %i.cl
  store i32 %i.bg, ptr %i.cm, align 4, !tbaa !37
  %.not18 = icmp eq ptr %.02732, null
  br i1 %.not18, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %Vec_IntSetEntry.exit
  tail call void @free(ptr noundef nonnull %.02732) #21
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %Vec_IntSetEntry.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !105

._crit_edge:                                      ; preds = %bb.ac, %bb.a
  ret void
}

declare ptr @Extra_FileNameWithoutPath(ptr noundef) local_unnamed_addr #2

declare ptr @Extra_FileNameGeneric(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @Abc_NtkVerifyPrintWords(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 3 uses
  %.val4451 = load i32, ptr %i.a, align 4, !tbaa !28
  %i.b = icmp sgt i32 %.val4451, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv56 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next57, %bb.k ] ; 2 uses
  %.val45 = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.val45, i64 %indvars.iv56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !61
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %.val46 = load i32, ptr %i.h, align 4, !tbaa !49 ; 4 uses
  %i.i = add nsw i32 %.val46, 3
  %i.j = sdiv i32 %i.i, 4
  %.off = add i32 %.val46, 6
  %.not = icmp ult i32 %.off, 7
  %i.k = select i1 %.not, i32 1, i32 %i.j         ; 5 uses
  %i.l = add nsw i32 %i.k, 1
  %i.m = sext i32 %i.l to i64
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #22 ; 4 uses
  %i.o = icmp sgt i32 %i.k, 0
  br i1 %i.o, label %.preheader.preheader, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.b
  %.pre60 = sext i32 %i.k to i64
  br label %._crit_edge

.preheader.preheader:                             ; preds = %bb.b
  %i.p = sext i32 %.val46 to i64                  ; 4 uses
  %i.q = zext nneg i32 %i.k to i64                ; 2 uses
  %wide.trip.count = zext nneg i32 %i.k to i64
  %i.r = getelementptr i8, ptr %i.n, i64 %i.q
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.j
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.s = shl nuw nsw i64 %indvars.iv, 2           ; 5 uses
  %i.t = icmp slt i64 %i.s, %i.p
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !61
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val47 = load ptr, ptr %i.v, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %i.s
  %i.x = load i32, ptr %i.w, align 4, !tbaa !37
  %.not43 = icmp ne i32 %i.x, 0
  %spec.select = zext i1 %.not43 to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader
  %.1 = phi i32 [ 0, %.preheader ], [ %spec.select, %bb.c ] ; 3 uses
  %i.y = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.z = icmp slt i64 %i.y, %i.p
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !61
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %.val47.1 = load ptr, ptr %i.ab, align 8, !tbaa !48
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.val47.1, i64 %i.y
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !37
  %.not43.1 = icmp eq i32 %i.ad, 0
  %1 = or disjoint i32 %.1, 2
  %spec.select69 = select i1 %.not43.1, i32 %.1, i32 %1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.1 = phi i32 [ %.1, %bb.d ], [ %spec.select69, %bb.e ] ; 3 uses
  %i.ae = or disjoint i64 %i.s, 2                 ; 2 uses
  %i.af = icmp slt i64 %i.ae, %i.p
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !61
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val47.2 = load ptr, ptr %i.ah, align 8, !tbaa !48
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.val47.2, i64 %i.ae
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !37
  %.not43.2 = icmp eq i32 %i.aj, 0
  %2 = or i32 %.1.1, 4
  %spec.select70 = select i1 %.not43.2, i32 %.1.1, i32 %2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1.2 = phi i32 [ %.1.1, %bb.f ], [ %spec.select70, %bb.g ] ; 3 uses
  %i.ak = or disjoint i64 %i.s, 3                 ; 2 uses
  %i.al = icmp slt i64 %i.ak, %i.p
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !61
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %.val47.3 = load ptr, ptr %i.an, align 8, !tbaa !48
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.val47.3, i64 %i.ak
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !37
  %.not43.3 = icmp eq i32 %i.ap, 0
  %3 = or i32 %.1.2, 8
  %spec.select71 = select i1 %.not43.3, i32 %.1.2, i32 %3
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1.3 = phi i32 [ %.1.2, %bb.h ], [ %spec.select71, %bb.i ]
  %4 = zext nneg i32 %.1.3 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @.str.72, i64 %4
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !40
  %i.as = xor i64 %indvars.iv, -1
  %i.at = getelementptr i8, ptr %i.r, i64 %i.as
  store i8 %i.ar, ptr %i.at, align 1, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !106

._crit_edge:                                      ; preds = %bb.j, %.._crit_edge_crit_edge
  %.pre-phi61 = phi i64 [ %.pre60, %.._crit_edge_crit_edge ], [ %i.q, %bb.j ]
  %i.au = getelementptr inbounds i8, ptr %i.n, i64 %.pre-phi61
  store i8 0, ptr %i.au, align 1, !tbaa !40
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.aw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73, ptr noundef %i.av, i32 noundef %.val46, ptr noundef %i.n) ; 0 uses
  tail call void @free(ptr noundef %i.n) #21
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 3 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !28
  %i.ax = sext i32 %.val to i64
  %i.ay = icmp slt i64 %indvars.iv.next57, %i.ax
  br i1 %i.ay, label %bb.k, label %.critedge

bb.k:                                             ; preds = %._crit_edge
  %i.az = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39) ; 0 uses
  %.val44.pre = load i32, ptr %i.a, align 4, !tbaa !28
  %.pre = sext i32 %.val44.pre to i64
  %i.ba = icmp slt i64 %indvars.iv.next57, %.pre
  br i1 %i.ba, label %bb.b, label %.critedge, !llvm.loop !107

.critedge:                                        ; preds = %._crit_edge, %bb.k, %bb.a
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Abc_NtkVerifyFreeWords(ptr noundef captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %.val14 = load i32, ptr %i.a, align 4, !tbaa !28
  %i.b = icmp sgt i32 %.val14, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Vec_IntFree.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntFree.exit ] ; 2 uses
  %.val12 = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.val12, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31   ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.f) #21
  store ptr null, ptr %i.e, align 8, !tbaa !60
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48   ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.j) #21
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.d, %bb.e
  tail call void @free(ptr noundef nonnull %i.h) #21
  tail call void @free(ptr noundef nonnull %i.e) #21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !28
  %i.k = sext i32 %.val to i64
  %i.l = icmp slt i64 %indvars.iv.next, %i.k
  br i1 %i.l, label %bb.b, label %.critedge, !llvm.loop !108

.critedge:                                        ; preds = %Vec_IntFree.exit, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !30   ; 2 uses
  %.not.i13 = icmp eq ptr %i.n, null
  br i1 %.not.i13, label %Vec_PtrFree.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %i.n) #21
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %.critedge, %bb.f
  tail call void @free(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_NtkGetSeqPoSupp(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = add i32 %1, 1
  %i.c = tail call ptr @Abc_NtkFrames(ptr noundef %0, i32 noundef %i.b, i32 noundef 0, i32 noundef 0) #21 ; 6 uses
  %i.d = getelementptr i8, ptr %0, i64 48
  %.val66 = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.e = getelementptr i8, ptr %.val66, i64 4
  %.val66.val = load i32, ptr %i.e, align 4, !tbaa !28
  %i.f = mul nsw i32 %.val66.val, %1
  %i.g = add nsw i32 %i.f, %2
  %i.h = getelementptr i8, ptr %i.c, i64 48
  %.val67 = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.i = getelementptr i8, ptr %.val67, i64 8
  %.val67.val = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.j = sext i32 %i.g to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %.val67.val, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !31
  store ptr %i.l, ptr %i.a, align 8, !tbaa !36
  %i.m = call ptr @Abc_NtkNodeSupport(ptr noundef %i.c, ptr noundef nonnull %i.a, i32 noundef 1) #21 ; 4 uses
  %i.n = getelementptr i8, ptr %i.c, i64 56       ; 2 uses
  %.val6276 = load ptr, ptr %i.n, align 8, !tbaa !25 ; 2 uses
  %i.o = getelementptr i8, ptr %.val6276, i64 4
  %.val62.val77 = load i32, ptr %i.o, align 4, !tbaa !28
  %i.p = icmp sgt i32 %.val62.val77, 0
  br i1 %i.p, label %.lr.ph, label %.critedge.preheader

.critedge.preheader:                              ; preds = %.lr.ph, %bb.a
  %i.q = getelementptr i8, ptr %i.m, i64 4        ; 2 uses
  %.val6080 = load i32, ptr %i.q, align 4, !tbaa !28
  %i.r = icmp sgt i32 %.val6080, 0
  br i1 %i.r, label %.lr.ph82, label %.critedge2.preheader

.lr.ph82:                                         ; preds = %.critedge.preheader
  %i.s = getelementptr i8, ptr %i.m, i64 8
  br label %.critedge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.val6279 = phi ptr [ %.val62, %.lr.ph ], [ %.val6276, %bb.a ]
  %i.t = getelementptr i8, ptr %.val6279, i64 8
  %.val65.val = load ptr, ptr %i.t, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.val65.val, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  store ptr null, ptr %i.w, align 8, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val62 = load ptr, ptr %i.n, align 8, !tbaa !25 ; 2 uses
  %i.x = getelementptr i8, ptr %.val62, i64 4
  %.val62.val = load i32, ptr %i.x, align 4, !tbaa !28
  %i.y = sext i32 %.val62.val to i64
  %i.z = icmp slt i64 %indvars.iv.next, %i.y
  br i1 %i.z, label %.lr.ph, label %.critedge.preheader, !llvm.loop !109

.critedge2.preheader:                             ; preds = %.critedge, %.critedge.preheader
  %i.aa = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %.val6183 = load ptr, ptr %i.aa, align 8, !tbaa !25 ; 2 uses
  %i.ab = getelementptr i8, ptr %.val6183, i64 4
  %.val61.val84 = load i32, ptr %i.ab, align 4, !tbaa !28
  %i.ac = icmp sgt i32 %.val61.val84, 0
  br i1 %i.ac, label %.critedge2, label %.critedge4.preheader

.critedge:                                        ; preds = %.lr.ph82, %.critedge
  %indvars.iv101 = phi i64 [ 0, %.lr.ph82 ], [ %indvars.iv.next102, %.critedge ] ; 2 uses
  %.val63 = load ptr, ptr %i.s, align 8, !tbaa !30
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.val63, i64 %indvars.iv101
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !31
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  store ptr inttoptr (i64 1 to ptr), ptr %i.af, align 8, !tbaa !40
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %.val60 = load i32, ptr %i.q, align 4, !tbaa !28
  %i.ag = sext i32 %.val60 to i64
  %i.ah = icmp slt i64 %indvars.iv.next102, %i.ag
  br i1 %i.ah, label %.critedge, label %.critedge2.preheader, !llvm.loop !110

.critedge4.preheader:                             ; preds = %.critedge2, %.critedge2.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !58 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  %.val88 = load i32, ptr %i.ak, align 4, !tbaa !28
  %i.al = icmp sgt i32 %.val88, 0
  br i1 %i.al, label %.lr.ph90, label %.critedge6.preheader

.lr.ph90:                                         ; preds = %.critedge4.preheader
  %i.am = getelementptr i8, ptr %i.c, i64 80
  br label %bb.b

.critedge2:                                       ; preds = %.critedge2.preheader, %.critedge2
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %.critedge2 ], [ 0, %.critedge2.preheader ] ; 2 uses
  %.val6186 = phi ptr [ %.val61, %.critedge2 ], [ %.val6183, %.critedge2.preheader ]
  %i.an = getelementptr i8, ptr %.val6186, i64 8
  %.val64.val = load ptr, ptr %i.an, align 8, !tbaa !30
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.val64.val, i64 %indvars.iv104
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !31
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  store ptr null, ptr %i.aq, align 8, !tbaa !40
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %.val61 = load ptr, ptr %i.aa, align 8, !tbaa !25 ; 2 uses
  %i.ar = getelementptr i8, ptr %.val61, i64 4
  %.val61.val = load i32, ptr %i.ar, align 4, !tbaa !28
  %i.as = sext i32 %.val61.val to i64
  %i.at = icmp slt i64 %indvars.iv.next105, %i.as
  br i1 %i.at, label %.critedge2, label %.critedge4.preheader, !llvm.loop !111

end_hunk_0
