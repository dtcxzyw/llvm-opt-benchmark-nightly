Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcFanOrder?download=true
inline.NumInlined: 173
inline.NumDeleted: 39
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@Abc_NtkSopTranspose:bb.a
  store i32 %spec.select.sink.i35, ptr %3, align 8, !tbaa !22
  %.pre78 = load i32, ptr %i.ab, align 4, !tbaa !21
  br label %Vec_StrPush.exit

Vec_StrPush.exit:                                 ; preds = %.Vec_StrPush.exit_crit_edge, %bb.o, %Vec_StrGrow.exit11.sink.split.i
  %i.ax = phi i32 [ %i.ak, %.Vec_StrPush.exit_crit_edge ], [ %i.ak, %bb.o ], [ %.pre78, %Vec_StrGrow.exit11.sink.split.i ] ; 2 uses
  %i.ay = phi ptr [ %.pre76, %.Vec_StrPush.exit_crit_edge ], [ %.pre77, %bb.o ], [ %i.aw, %Vec_StrGrow.exit11.sink.split.i ]
  %i.az = add nsw i32 %i.ax, 1
  store i32 %i.az, ptr %i.ab, align 4, !tbaa !21
  %i.ba = sext i32 %i.ax to i64
  %i.bb = getelementptr inbounds i8, ptr %i.ay, i64 %i.ba
  store i8 %i.aj, ptr %i.bb, align 1, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val31 = load i32, ptr %i.a, align 4, !tbaa !42
  %i.bc = sext i32 %.val31 to i64
  %i.bd = icmp slt i64 %indvars.iv.next, %i.bc
  br i1 %i.bd, label %.lr.ph57, label %.critedge, !llvm.loop !64

.critedge:                                        ; preds = %Vec_StrPush.exit, %.preheader
  %i.be = load i32, ptr %i.ab, align 4, !tbaa !21 ; 7 uses
  %i.bf = load i32, ptr %3, align 8, !tbaa !22
  %i.bg = icmp eq i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.s, label %.critedge.Vec_StrPush.exit44_crit_edge

.critedge.Vec_StrPush.exit44_crit_edge:           ; preds = %.critedge
  %.pre79 = load ptr, ptr %i.ae, align 8, !tbaa !23
  br label %Vec_StrPush.exit44

bb.s:                                             ; preds = %.critedge
  %i.bh = icmp slt i32 %i.be, 16
  br i1 %i.bh, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.bi = load ptr, ptr %i.ae, align 8, !tbaa !23 ; 2 uses
  %.not9.i.i42 = icmp eq ptr %i.bi, null
  br i1 %.not9.i.i42, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bj = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.bi, i64 noundef 16) #22
  br label %Vec_StrGrow.exit11.sink.split.i40

bb.v:                                             ; preds = %bb.t
  %i.bk = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20
  br label %Vec_StrGrow.exit11.sink.split.i40

bb.w:                                             ; preds = %bb.s
  %i.bl = icmp samesign ult i32 %i.be, 1073741823
  %i.bm = shl nuw nsw i32 %i.be, 1
  %spec.select.i37 = select i1 %i.bl, i32 %i.bm, i32 2147483647 ; 4 uses
  %.not.i9.i38 = icmp samesign ult i32 %i.be, %spec.select.i37
  %.pre80 = load ptr, ptr %i.ae, align 8, !tbaa !23 ; 3 uses
  br i1 %.not.i9.i38, label %bb.x, label %Vec_StrPush.exit44

bb.x:                                             ; preds = %bb.w
  %.not9.i10.i39 = icmp eq ptr %.pre80, null
  %i.bn = zext nneg i32 %spec.select.i37 to i64   ; 2 uses
  br i1 %.not9.i10.i39, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = tail call ptr @realloc(ptr noundef nonnull %.pre80, i64 noundef %i.bn) #22
  br label %Vec_StrGrow.exit11.sink.split.i40

bb.z:                                             ; preds = %bb.x
  %i.bp = tail call noalias ptr @malloc(i64 noundef %i.bn) #20
  br label %Vec_StrGrow.exit11.sink.split.i40

Vec_StrGrow.exit11.sink.split.i40:                ; preds = %bb.y, %bb.z, %bb.u, %bb.v
  %i.bq = phi ptr [ %i.bk, %bb.v ], [ %i.bj, %bb.u ], [ %i.bo, %bb.y ], [ %i.bp, %bb.z ] ; 2 uses
  %spec.select.sink.i41 = phi i32 [ 16, %bb.v ], [ 16, %bb.u ], [ %spec.select.i37, %bb.y ], [ %spec.select.i37, %bb.z ]
  store ptr %i.bq, ptr %i.ae, align 8, !tbaa !23
  store i32 %spec.select.sink.i41, ptr %3, align 8, !tbaa !22
  %.pre81 = load i32, ptr %i.ab, align 4, !tbaa !21
  br label %Vec_StrPush.exit44

Vec_StrPush.exit44:                               ; preds = %.critedge.Vec_StrPush.exit44_crit_edge, %bb.w, %Vec_StrGrow.exit11.sink.split.i40
  %i.br = phi i32 [ %i.be, %.critedge.Vec_StrPush.exit44_crit_edge ], [ %i.be, %bb.w ], [ %.pre81, %Vec_StrGrow.exit11.sink.split.i40 ] ; 2 uses
  %i.bs = phi ptr [ %.pre79, %.critedge.Vec_StrPush.exit44_crit_edge ], [ %.pre80, %bb.w ], [ %i.bq, %Vec_StrGrow.exit11.sink.split.i40 ]
  %i.bt = add nsw i32 %i.br, 1
  store i32 %i.bt, ptr %i.ab, align 4, !tbaa !21
  %i.bu = sext i32 %i.br to i64
  %i.bv = getelementptr inbounds i8, ptr %i.bs, i64 %i.bu
  store i8 0, ptr %i.bv, align 1, !tbaa !45
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge59, label %.preheader, !llvm.loop !65

._crit_edge59:                                    ; preds = %Vec_StrPush.exit44
  %.val.pre = load i32, ptr %i.a, align 4, !tbaa !42
  store i32 0, ptr %i.a, align 4, !tbaa !42
  %i.bw = add nsw i32 %.val.pre, 1
  %i.bx = getelementptr i8, ptr %3, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.bz = sext i32 %i.bw to i64
  %wide.trip.count71 = zext nneg i32 %1 to i64
  %.pre84 = load i32, ptr %2, align 8, !tbaa !50
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge59, %Vec_PtrPush.exit52
  %i.ca = phi i32 [ %.pre84, %._crit_edge59 ], [ %i.cs, %Vec_PtrPush.exit52 ] ; 8 uses
  %i.cb = phi i32 [ 0, %._crit_edge59 ], [ %i.ct, %Vec_PtrPush.exit52 ] ; 2 uses
  %indvars.iv68 = phi i64 [ 0, %._crit_edge59 ], [ %indvars.iv.next69, %Vec_PtrPush.exit52 ] ; 2 uses
  %i.cc = mul nsw i64 %indvars.iv68, %i.bz
  %.val33 = load ptr, ptr %i.bx, align 8, !tbaa !23
  %i.cd = getelementptr inbounds i8, ptr %.val33, i64 %i.cc
  %i.ce = icmp eq i32 %i.cb, %i.ca
  br i1 %i.ce, label %bb.ab, label %.Vec_PtrPush.exit52_crit_edge

.Vec_PtrPush.exit52_crit_edge:                    ; preds = %bb.aa
  %.pre85 = load ptr, ptr %i.by, align 8, !tbaa !43
  br label %Vec_PtrPush.exit52

bb.ab:                                            ; preds = %bb.aa
  %i.cf = icmp slt i32 %i.ca, 16
  br i1 %i.cf, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.cg = load ptr, ptr %i.by, align 8, !tbaa !43 ; 2 uses
  %.not9.i.i50 = icmp eq ptr %i.cg, null
  br i1 %.not9.i.i50, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ch = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.cg, i64 noundef 128) #22
  br label %Vec_PtrGrow.exit12.sink.split.i48

bb.ae:                                            ; preds = %bb.ac
  %i.ci = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #20
  br label %Vec_PtrGrow.exit12.sink.split.i48

bb.af:                                            ; preds = %bb.ab
  %i.cj = icmp samesign ult i32 %i.ca, 1073741823
  %i.ck = shl nuw nsw i32 %i.ca, 1
  %spec.select.i45 = select i1 %i.cj, i32 %i.ck, i32 2147483647 ; 4 uses
  %.not.i10.i46 = icmp samesign ult i32 %i.ca, %spec.select.i45
  %.pre86 = load ptr, ptr %i.by, align 8, !tbaa !43 ; 3 uses
  br i1 %.not.i10.i46, label %bb.ag, label %Vec_PtrPush.exit52

bb.ag:                                            ; preds = %bb.af
  %.not9.i11.i47 = icmp eq ptr %.pre86, null
  %i.cl = zext nneg i32 %spec.select.i45 to i64
  %i.cm = shl nuw nsw i64 %i.cl, 3                ; 2 uses
  br i1 %.not9.i11.i47, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cn = tail call ptr @realloc(ptr noundef nonnull %.pre86, i64 noundef %i.cm) #22
  br label %Vec_PtrGrow.exit12.sink.split.i48

bb.ai:                                            ; preds = %bb.ag
  %i.co = tail call noalias ptr @malloc(i64 noundef %i.cm) #20
  br label %Vec_PtrGrow.exit12.sink.split.i48

Vec_PtrGrow.exit12.sink.split.i48:                ; preds = %bb.ah, %bb.ai, %bb.ad, %bb.ae
  %i.cp = phi ptr [ %i.ci, %bb.ae ], [ %i.ch, %bb.ad ], [ %i.cn, %bb.ah ], [ %i.co, %bb.ai ] ; 2 uses
  %spec.select.sink.i49 = phi i32 [ 16, %bb.ae ], [ 16, %bb.ad ], [ %spec.select.i45, %bb.ah ], [ %spec.select.i45, %bb.ai ] ; 2 uses
  store ptr %i.cp, ptr %i.by, align 8, !tbaa !43
  store i32 %spec.select.sink.i49, ptr %2, align 8, !tbaa !50
  %.pre87 = load i32, ptr %i.a, align 4, !tbaa !42
  br label %Vec_PtrPush.exit52

Vec_PtrPush.exit52:                               ; preds = %.Vec_PtrPush.exit52_crit_edge, %bb.af, %Vec_PtrGrow.exit12.sink.split.i48
  %i.cq = phi i32 [ %i.cb, %.Vec_PtrPush.exit52_crit_edge ], [ %i.ca, %bb.af ], [ %.pre87, %Vec_PtrGrow.exit12.sink.split.i48 ] ; 2 uses
  %i.cr = phi ptr [ %.pre85, %.Vec_PtrPush.exit52_crit_edge ], [ %.pre86, %bb.af ], [ %i.cp, %Vec_PtrGrow.exit12.sink.split.i48 ]
  %i.cs = phi i32 [ %i.ca, %.Vec_PtrPush.exit52_crit_edge ], [ %i.ca, %bb.af ], [ %spec.select.sink.i49, %Vec_PtrGrow.exit12.sink.split.i48 ]
  %i.ct = add nsw i32 %i.cq, 1                    ; 2 uses
  store i32 %i.ct, ptr %i.a, align 4, !tbaa !42
  %i.cu = sext i32 %i.cq to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.cu
  store ptr %i.cd, ptr %i.cv, align 8, !tbaa !44
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %exitcond72.not = icmp eq i64 %indvars.iv.next69, %wide.trip.count71
  br i1 %exitcond72.not, label %._crit_edge63, label %bb.aa, !llvm.loop !66

._crit_edge63:                                    ; preds = %Vec_PtrPush.exit52, %._crit_edge59.thread
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_NtkOrderFaninsBySortingColumns(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  store i32 0, ptr %i.b, align 4, !tbaa !49
  store i32 100, ptr %i.a, align 8, !tbaa !51
  %i.c = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #20
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 7 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !48
  %i.e = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 0, ptr %i.f, align 4, !tbaa !21
  store i32 100, ptr %i.e, align 8, !tbaa !22
  %i.g = tail call noalias dereferenceable_or_null(100) ptr @malloc(i64 noundef 100) #20
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !23
  %i.i = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 0, ptr %i.j, align 4, !tbaa !42
  store i32 100, ptr %i.i, align 8, !tbaa !50
  %i.k = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #20
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !43
  %i.m = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 4 uses
  store i32 0, ptr %i.n, align 4, !tbaa !49
  store i32 100, ptr %i.m, align 8, !tbaa !51
  %i.o = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #20 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39   ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 4
  %.val121 = load i32, ptr %i.s, align 4, !tbaa !42
  %i.t = icmp sgt i32 %.val121, 0
  br i1 %i.t, label %.lr.ph124, label %.critedge

.lr.ph124:                                        ; preds = %bb.a, %Vec_IntAppend.exit
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %Vec_IntAppend.exit ], [ 0, %bb.a ] ; 2 uses
  %i.u = phi ptr [ %i.eu, %Vec_IntAppend.exit ], [ %i.r, %bb.a ]
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val74.val = load ptr, ptr %i.v, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.val74.val, i64 %indvars.iv137
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !44   ; 8 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %Vec_IntAppend.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph124
  %i.z = getelementptr i8, ptr %i.x, i64 20
  %.val75 = load i32, ptr %i.z, align 4
  %i.aa = and i32 %.val75, 15
  %.not = icmp eq i32 %i.aa, 7
  br i1 %.not, label %bb.c, label %Vec_IntAppend.exit

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !45 ; 7 uses
  %i.ad = tail call i32 @Abc_SopGetVarNum(ptr noundef %i.ac) #21 ; 11 uses
  tail call void @Abc_NtkSopTranspose(ptr noundef %i.ac, i32 noundef %i.ad, ptr noundef nonnull %i.i, ptr noundef nonnull %i.e)
  %.val79 = load ptr, ptr %i.l, align 8, !tbaa !43 ; 3 uses
  store i32 0, ptr %i.b, align 4, !tbaa !49
  %i.ae = icmp sgt i32 %i.ad, 0                   ; 3 uses
  br i1 %i.ae, label %.lr.ph.i, label %.Vec_StrSelectSortCost.exit_crit_edge

.Vec_StrSelectSortCost.exit_crit_edge:            ; preds = %bb.c
  %.val76.pre = load ptr, ptr %i.d, align 8, !tbaa !48
  br label %Vec_StrSelectSortCost.exit

thread-pre-split.i:                               ; preds = %Vec_IntPush.exit.i
  %.pr.i = load i32, ptr %i.b, align 4, !tbaa !49
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %thread-pre-split.i
  %.pre61.i = phi i32 [ %.pr.i, %thread-pre-split.i ], [ 0, %bb.c ] ; 7 uses
  %.041.i = phi i32 [ %i.aw, %thread-pre-split.i ], [ 0, %bb.c ] ; 2 uses
  %i.af = load i32, ptr %i.a, align 8, !tbaa !51
  %i.ag = icmp eq i32 %.pre61.i, %i.af
  br i1 %i.ag, label %bb.d, label %.Vec_IntPush.exit_crit_edge.i

.Vec_IntPush.exit_crit_edge.i:                    ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !48
  br label %Vec_IntPush.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.ah = icmp slt i32 %.pre61.i, 16
  br i1 %i.ah, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !48  ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not9.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ai, i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.g:                                             ; preds = %bb.e
  %i.ak = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #20
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.h:                                             ; preds = %bb.d
  %i.al = icmp samesign ult i32 %.pre61.i, 1073741823
  %i.am = shl nuw nsw i32 %.pre61.i, 1
  %spec.select.i.i = select i1 %i.al, i32 %i.am, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %.pre61.i, %spec.select.i.i
  %.pre60.i = load ptr, ptr %i.d, align 8, !tbaa !48 ; 3 uses
  br i1 %.not.i9.i.i, label %bb.i, label %Vec_IntPush.exit.i

bb.i:                                             ; preds = %bb.h
  %.not9.i10.i.i = icmp eq ptr %.pre60.i, null
  %i.an = zext nneg i32 %spec.select.i.i to i64
  %i.ao = shl nuw nsw i64 %i.an, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = tail call ptr @realloc(ptr noundef nonnull %.pre60.i, i64 noundef %i.ao) #22
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.k:                                             ; preds = %bb.i
  %i.aq = tail call noalias ptr @malloc(i64 noundef %i.ao) #20
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.k, %bb.j, %bb.g, %bb.f
  %i.ar = phi ptr [ %i.ak, %bb.g ], [ %i.aj, %bb.f ], [ %i.ap, %bb.j ], [ %i.aq, %bb.k ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i.i, %bb.j ], [ %spec.select.i.i, %bb.k ]
  store ptr %i.ar, ptr %i.d, align 8, !tbaa !48
  store i32 %spec.select.sink.i.i, ptr %i.a, align 8, !tbaa !51
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.h, %.Vec_IntPush.exit_crit_edge.i
  %i.as = phi ptr [ %.pre.i, %.Vec_IntPush.exit_crit_edge.i ], [ %.pre60.i, %bb.h ], [ %i.ar, %Vec_IntGrow.exit11.sink.split.i.i ] ; 5 uses
  %i.at = add nsw i32 %.pre61.i, 1
  store i32 %i.at, ptr %i.b, align 4, !tbaa !49
  %i.au = sext i32 %.pre61.i to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.au
  store i32 %.041.i, ptr %i.av, align 4, !tbaa !46
  %i.aw = add nuw nsw i32 %.041.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.aw, %i.ad
  br i1 %exitcond.not.i, label %._crit_edge.i, label %thread-pre-split.i, !llvm.loop !67

._crit_edge.i:                                    ; preds = %Vec_IntPush.exit.i
  %.not.i = icmp eq i32 %i.ad, 1
  br i1 %.not.i, label %Vec_StrSelectSortCost.exit, label %.lr.ph49.preheader.i

.lr.ph49.preheader.i:                             ; preds = %._crit_edge.i
  %i.ax = add nsw i32 %i.ad, -1
  %wide.trip.count58.i = zext nneg i32 %i.ax to i64
  %wide.trip.count.i = zext nneg i32 %i.ad to i64
  br label %.lr.ph45.preheader.i

.lr.ph45.preheader.i:                             ; preds = %._crit_edge46.i, %.lr.ph49.preheader.i
  %indvars.iv55.i = phi i64 [ 0, %.lr.ph49.preheader.i ], [ %indvars.iv.next56.i, %._crit_edge46.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ 1, %.lr.ph49.preheader.i ], [ %indvars.iv.next.i, %._crit_edge46.i ] ; 2 uses
  %i.ay = trunc nuw nsw i64 %indvars.iv55.i to i32
  %.phi.trans.insert63.i = getelementptr inbounds nuw [8 x i8], ptr %.val79, i64 %indvars.iv55.i ; 2 uses
  %.pre64.i = load ptr, ptr %.phi.trans.insert63.i, align 8, !tbaa !52 ; 2 uses
  br label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %.lr.ph45.i, %.lr.ph45.preheader.i
  %i.az = phi ptr [ %.pre64.i, %.lr.ph45.preheader.i ], [ %i.bf, %.lr.ph45.i ] ; 2 uses
  %indvars.iv51.i = phi i64 [ %indvars.iv.i, %.lr.ph45.preheader.i ], [ %indvars.iv.next52.i, %.lr.ph45.i ] ; 3 uses
  %.03842.i = phi i32 [ %i.ay, %.lr.ph45.preheader.i ], [ %spec.select.i, %.lr.ph45.i ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.val79, i64 %indvars.iv51.i
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !52 ; 2 uses
  %i.bc = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bb, ptr noundef nonnull dereferenceable(1) %i.az) #23
  %i.bd = icmp slt i32 %i.bc, 0                   ; 2 uses
  %i.be = trunc nuw nsw i64 %indvars.iv51.i to i32
  %spec.select.i = select i1 %i.bd, i32 %i.be, i32 %.03842.i ; 2 uses
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 1 ; 2 uses
  %exitcond54.not.i = icmp eq i64 %indvars.iv.next52.i, %wide.trip.count.i
  %i.bf = select i1 %i.bd, ptr %i.bb, ptr %i.az
  br i1 %exitcond54.not.i, label %._crit_edge46.i, label %.lr.ph45.i, !llvm.loop !68

._crit_edge46.i:                                  ; preds = %.lr.ph45.i
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %i.bg = sext i32 %spec.select.i to i64          ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %.val79, i64 %i.bg ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !52
  store ptr %i.bi, ptr %.phi.trans.insert63.i, align 8, !tbaa !52
  store ptr %.pre64.i, ptr %i.bh, align 8, !tbaa !52
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv55.i ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !46
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.bg ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !46
  store i32 %i.bm, ptr %i.bj, align 4, !tbaa !46
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !46
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond59.not.i = icmp eq i64 %indvars.iv.next56.i, %wide.trip.count58.i
  br i1 %exitcond59.not.i, label %Vec_StrSelectSortCost.exit, label %.lr.ph45.preheader.i, !llvm.loop !69

Vec_StrSelectSortCost.exit:                       ; preds = %._crit_edge46.i, %.Vec_StrSelectSortCost.exit_crit_edge, %._crit_edge.i
  %.val76 = phi ptr [ %.val76.pre, %.Vec_StrSelectSortCost.exit_crit_edge ], [ %i.as, %._crit_edge.i ], [ %i.as, %._crit_edge46.i ] ; 4 uses
  %i.bn = tail call i32 @Abc_SopGetCubeNum(ptr noundef %i.ac) #21
  %i.bo = add nsw i32 %i.ad, 3                    ; 3 uses
  %i.bp = mul nsw i32 %i.bn, %i.bo                ; 2 uses
  %i.bq = add nsw i32 %i.bp, 1                    ; 2 uses
  %i.br = load i32, ptr %i.e, align 8, !tbaa !22
  %.not.i81.not = icmp sgt i32 %i.br, %i.bp
  %.val78.pre = load ptr, ptr %i.h, align 8, !tbaa !23 ; 3 uses
  br i1 %.not.i81.not, label %Vec_StrGrow.exit, label %bb.l

bb.l:                                             ; preds = %Vec_StrSelectSortCost.exit
  %.not9.i = icmp eq ptr %.val78.pre, null
  %i.bs = sext i32 %i.bq to i64                   ; 2 uses
  br i1 %.not9.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = tail call ptr @realloc(ptr noundef nonnull %.val78.pre, i64 noundef %i.bs) #22
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bu = tail call noalias ptr @malloc(i64 noundef %i.bs) #20
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bv = phi ptr [ %i.bt, %bb.m ], [ %i.bu, %bb.n ] ; 2 uses
  store ptr %i.bv, ptr %i.h, align 8, !tbaa !23
  store i32 %i.bq, ptr %i.e, align 8, !tbaa !22
  br label %Vec_StrGrow.exit

Vec_StrGrow.exit:                                 ; preds = %Vec_StrSelectSortCost.exit, %bb.o
  %.val78 = phi ptr [ %.val78.pre, %Vec_StrSelectSortCost.exit ], [ %i.bv, %bb.o ] ; 3 uses
  %i.bw = tail call i32 @Abc_SopGetCubeNum(ptr noundef %i.ac) #21
  %i.bx = mul nsw i32 %i.bw, %i.bo
  %i.by = add nsw i32 %i.bx, 1
  %i.bz = sext i32 %i.by to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.val78, ptr align 1 %i.ac, i64 %i.bz, i1 false)
  %i.ca = load i8, ptr %.val78, align 1, !tbaa !45
  %.not73106 = icmp eq i8 %i.ca, 0
  br i1 %.not73106, label %._crit_edge109, label %.preheader102.lr.ph.a

.preheader102.lr.ph.a:                            ; preds = %Vec_StrGrow.exit
  %1 = sext i32 %i.bo to i64                      ; 2 uses
  %2 = zext i32 %i.ad to i64                      ; 3 uses
  %xtraiter = and i64 %2, 1
  %i.cb = icmp eq i32 %i.ad, 1
  %unroll_iter = and i64 %2, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod154 = trunc i32 %i.ad to i1
  br label %.preheader102

.preheader102:                                    ; preds = %.preheader102.lr.ph.a, %._crit_edge
  %.068108 = phi ptr [ %i.ac, %.preheader102.lr.ph.a ], [ %i.cx, %._crit_edge ] ; 5 uses
  %.069107 = phi ptr [ %.val78, %.preheader102.lr.ph.a ], [ %i.cy, %._crit_edge ] ; 4 uses
  br i1 %i.ae, label %.lr.ph105.preheader, label %._crit_edge

.lr.ph105.preheader:                              ; preds = %.preheader102
  tail call void @llvm.memset.p0.i64(ptr align 1 %.068108, i8 45, i64 %2, i1 false), !tbaa !45
  br i1 %i.cb, label %.lr.ph105.epil.preheader, label %.lr.ph105

.lr.ph105:                                        ; preds = %.lr.ph105.preheader, %bb.p
  %indvars.iv.a = phi i64 [ %indvars.iv.next.1, %bb.p ], [ 0, %.lr.ph105.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.p ], [ 0, %.lr.ph105.preheader ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.val76, i64 %indvars.iv.a
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !46
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds i8, ptr %.069107, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !45  ; 2 uses
  %i.ch = and i8 %i.cg, -2
  %switch = icmp eq i8 %i.ch, 48
  br i1 %switch, label %.sink.split, label %.lr.ph105.1

.sink.split:                                      ; preds = %.lr.ph105
  %i.ci = getelementptr inbounds nuw i8, ptr %.068108, i64 %indvars.iv.a
  store i8 %i.cg, ptr %i.ci, align 1, !tbaa !45
  br label %.lr.ph105.1

.lr.ph105.1:                                      ; preds = %.lr.ph105, %.sink.split
  %indvars.iv.next.a = or disjoint i64 %indvars.iv.a, 1 ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.val76, i64 %indvars.iv.next.a
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !46
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds i8, ptr %.069107, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !45  ; 2 uses
  %i.co = and i8 %i.cn, -2
  %switch.1 = icmp eq i8 %i.co, 48
  br i1 %switch.1, label %.sink.split.1, label %bb.p

.sink.split.1:                                    ; preds = %.lr.ph105.1
  %i.cp = getelementptr inbounds nuw i8, ptr %.068108, i64 %indvars.iv.next.a
  store i8 %i.cn, ptr %i.cp, align 1, !tbaa !45
  br label %bb.p

bb.p:                                             ; preds = %.sink.split.1, %.lr.ph105.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.a, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph105, !llvm.loop !70

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.p
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph105.epil.preheader

.lr.ph105.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph105.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph105.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod154)
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.val76, i64 %indvars.iv.epil.init
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !46
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds i8, ptr %.069107, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !45  ; 2 uses
  %i.cv = and i8 %i.cu, -2
  %switch.epil = icmp eq i8 %i.cv, 48
  br i1 %switch.epil, label %.sink.split.epil, label %._crit_edge

.sink.split.epil:                                 ; preds = %.lr.ph105.epil.preheader
  %i.cw = getelementptr inbounds nuw i8, ptr %.068108, i64 %indvars.iv.epil.init
  store i8 %i.cu, ptr %i.cw, align 1, !tbaa !45
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.sink.split.epil, %.lr.ph105.epil.preheader, %.preheader102
  %i.cx = getelementptr i8, ptr %.068108, i64 %1
  %i.cy = getelementptr inbounds i8, ptr %.069107, i64 %1 ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !45
  %.not73 = icmp eq i8 %i.cz, 0
  br i1 %.not73, label %._crit_edge109, label %.preheader102, !llvm.loop !71

._crit_edge109:                                   ; preds = %._crit_edge, %Vec_StrGrow.exit
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !45
  store i32 0, ptr %i.n, align 4, !tbaa !49
  br i1 %i.ae, label %.lr.ph112, label %.thread

.thread:                                          ; preds = %._crit_edge109
  %3 = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  store i32 0, ptr %3, align 4, !tbaa !49
  br label %Vec_IntAppend.exit

.lr.ph112:                                        ; preds = %._crit_edge109
  %i.da = getelementptr i8, ptr %i.x, i64 32
  %.promoted115 = load i32, ptr %i.m, align 8, !tbaa !51
  %.promoted118 = load ptr, ptr %i.p, align 8, !tbaa !48
  %wide.trip.count135 = zext nneg i32 %i.ad to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph112, %Vec_IntPush.exit
  %indvars.iv130 = phi i64 [ 0, %.lr.ph112 ], [ %indvars.iv.next131, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv128 = phi i64 [ 0, %.lr.ph112 ], [ %indvars.iv.next129, %Vec_IntPush.exit ] ; 7 uses
  %storemerge119 = phi ptr [ %.promoted118, %.lr.ph112 ], [ %storemerge120, %Vec_IntPush.exit ] ; 6 uses
  %spec.select.sink.i117 = phi i32 [ %.promoted115, %.lr.ph112 ], [ %spec.select.sink.i116, %Vec_IntPush.exit ] ; 3 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.val76, i64 %indvars.iv130
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !46
  %.val80 = load ptr, ptr %i.da, align 8, !tbaa !55
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %.val80, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !46
  %i.dg = trunc nsw i64 %indvars.iv128 to i32
  %i.dh = icmp eq i32 %spec.select.sink.i117, %i.dg
  br i1 %i.dh, label %bb.r, label %Vec_IntPush.exit

bb.r:                                             ; preds = %bb.q
  %i.di = icmp samesign ult i64 %indvars.iv128, 16
  br i1 %i.di, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %.not9.i.i = icmp eq ptr %storemerge119, null
  br i1 %.not9.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dj = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge119, i64 noundef 64) #22
  br label %Vec_IntPush.exit

bb.u:                                             ; preds = %bb.s
  %i.dk = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #20
  br label %Vec_IntPush.exit

bb.v:                                             ; preds = %bb.r
  %i.dl = icmp samesign ult i64 %indvars.iv128, 1073741823
  %indvars.iv128.tr = trunc nsw i64 %indvars.iv128 to i32
  %i.dm = shl nsw i32 %indvars.iv128.tr, 1
  %spec.select.i82 = select i1 %i.dl, i32 %i.dm, i32 2147483647 ; 4 uses
  %i.dn = sext i32 %spec.select.i82 to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv128, %i.dn
  br i1 %.not.i9.i, label %bb.w, label %Vec_IntPush.exit

bb.w:                                             ; preds = %bb.v
  %.not9.i10.i = icmp eq ptr %storemerge119, null
  %i.do = zext nneg i32 %spec.select.i82 to i64
  %i.dp = shl nuw nsw i64 %i.do, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dq = tail call ptr @realloc(ptr noundef nonnull %storemerge119, i64 noundef %i.dp) #22
  br label %Vec_IntPush.exit

bb.y:                                             ; preds = %bb.w
  %i.dr = tail call noalias ptr @malloc(i64 noundef %i.dp) #20
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.u, %bb.t, %bb.y, %bb.x, %bb.q, %bb.v
  %storemerge120 = phi ptr [ %storemerge119, %bb.q ], [ %storemerge119, %bb.v ], [ %i.dk, %bb.u ], [ %i.dj, %bb.t ], [ %i.dq, %bb.x ], [ %i.dr, %bb.y ] ; 4 uses
  %spec.select.sink.i116 = phi i32 [ %spec.select.sink.i117, %bb.q ], [ %spec.select.sink.i117, %bb.v ], [ 16, %bb.u ], [ 16, %bb.t ], [ %spec.select.i82, %bb.x ], [ %spec.select.i82, %bb.y ] ; 2 uses
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %storemerge120, i64 %indvars.iv128
  store i32 %i.df, ptr %i.ds, align 4, !tbaa !46
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next131, %wide.trip.count135
  br i1 %exitcond136.not, label %.lr.ph.i83, label %bb.q, !llvm.loop !72

.lr.ph.i83:                                       ; preds = %Vec_IntPush.exit
  %i.dt = trunc nsw i64 %indvars.iv.next129 to i32
  store i32 %i.dt, ptr %i.n, align 4, !tbaa !49
  store i32 %spec.select.sink.i116, ptr %i.m, align 8
  store ptr %storemerge120, ptr %i.p, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.x, i64 28 ; 4 uses
  store i32 0, ptr %i.dv, align 4, !tbaa !49
  %i.dw = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 4 uses
  br label %bb.z

thread-pre-split:                                 ; preds = %Vec_IntPush.exit.i87
  %.pr = load i32, ptr %i.dv, align 4, !tbaa !49
  br label %bb.z

bb.z:                                             ; preds = %thread-pre-split, %.lr.ph.i83
  %i.dx = phi i32 [ %.pr, %thread-pre-split ], [ 0, %.lr.ph.i83 ] ; 7 uses
  %indvars.iv.i84 = phi i64 [ %indvars.iv.next.i88, %thread-pre-split ], [ 0, %.lr.ph.i83 ] ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %storemerge120, i64 %indvars.iv.i84
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !46
  %i.ea = load i32, ptr %i.du, align 8, !tbaa !51
  %i.eb = icmp eq i32 %i.dx, %i.ea
  br i1 %i.eb, label %bb.aa, label %.Vec_IntPush.exit_crit_edge.i85

.Vec_IntPush.exit_crit_edge.i85:                  ; preds = %bb.z
  %.pre.i86 = load ptr, ptr %i.dw, align 8, !tbaa !48
  br label %Vec_IntPush.exit.i87

bb.aa:                                            ; preds = %bb.z
  %i.ec = icmp slt i32 %i.dx, 16
  br i1 %i.ec, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.ed = load ptr, ptr %i.dw, align 8, !tbaa !48 ; 2 uses
  %.not9.i.i.i94 = icmp eq ptr %i.ed, null
  br i1 %.not9.i.i.i94, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ee = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ed, i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i.i92

bb.ad:                                            ; preds = %bb.ab
  %i.ef = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #20
  br label %Vec_IntGrow.exit11.sink.split.i.i92

bb.ae:                                            ; preds = %bb.aa
  %i.eg = icmp samesign ult i32 %i.dx, 1073741823
  %i.eh = shl nuw nsw i32 %i.dx, 1
  %spec.select.i.i89 = select i1 %i.eg, i32 %i.eh, i32 2147483647 ; 4 uses
  %.not.i9.i.i90 = icmp samesign ult i32 %i.dx, %spec.select.i.i89
  %.pre10.i = load ptr, ptr %i.dw, align 8, !tbaa !48 ; 3 uses
  br i1 %.not.i9.i.i90, label %bb.af, label %Vec_IntPush.exit.i87

bb.af:                                            ; preds = %bb.ae
  %.not9.i10.i.i91 = icmp eq ptr %.pre10.i, null
  %i.ei = zext nneg i32 %spec.select.i.i89 to i64
  %i.ej = shl nuw nsw i64 %i.ei, 2                ; 2 uses
  br i1 %.not9.i10.i.i91, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ek = tail call ptr @realloc(ptr noundef nonnull %.pre10.i, i64 noundef %i.ej) #22
  br label %Vec_IntGrow.exit11.sink.split.i.i92

bb.ah:                                            ; preds = %bb.af
  %i.el = tail call noalias ptr @malloc(i64 noundef %i.ej) #20
  br label %Vec_IntGrow.exit11.sink.split.i.i92

Vec_IntGrow.exit11.sink.split.i.i92:              ; preds = %bb.ah, %bb.ag, %bb.ad, %bb.ac
  %i.em = phi ptr [ %i.ef, %bb.ad ], [ %i.ee, %bb.ac ], [ %i.ek, %bb.ag ], [ %i.el, %bb.ah ] ; 2 uses
  %spec.select.sink.i.i93 = phi i32 [ 16, %bb.ad ], [ 16, %bb.ac ], [ %spec.select.i.i89, %bb.ag ], [ %spec.select.i.i89, %bb.ah ]
  store ptr %i.em, ptr %i.dw, align 8, !tbaa !48
  store i32 %spec.select.sink.i.i93, ptr %i.du, align 8, !tbaa !51
  %.pre11.i = load i32, ptr %i.dv, align 4, !tbaa !49
  br label %Vec_IntPush.exit.i87

Vec_IntPush.exit.i87:                             ; preds = %Vec_IntGrow.exit11.sink.split.i.i92, %bb.ae, %.Vec_IntPush.exit_crit_edge.i85
  %i.en = phi i32 [ %i.dx, %.Vec_IntPush.exit_crit_edge.i85 ], [ %i.dx, %bb.ae ], [ %.pre11.i, %Vec_IntGrow.exit11.sink.split.i.i92 ] ; 2 uses
  %i.eo = phi ptr [ %.pre.i86, %.Vec_IntPush.exit_crit_edge.i85 ], [ %.pre10.i, %bb.ae ], [ %i.em, %Vec_IntGrow.exit11.sink.split.i.i92 ]
  %i.ep = add nsw i32 %i.en, 1
  store i32 %i.ep, ptr %i.dv, align 4, !tbaa !49
  %i.eq = sext i32 %i.en to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.eq
  store i32 %i.dz, ptr %i.er, align 4, !tbaa !46
  %indvars.iv.next.i88 = add nuw nsw i64 %indvars.iv.i84, 1 ; 2 uses
  %.val6.i = load i32, ptr %i.n, align 4, !tbaa !49
  %i.es = sext i32 %.val6.i to i64
  %i.et = icmp slt i64 %indvars.iv.next.i88, %i.es
  br i1 %i.et, label %thread-pre-split, label %Vec_IntAppend.exit, !llvm.loop !2

Vec_IntAppend.exit:                               ; preds = %Vec_IntPush.exit.i87, %.thread, %bb.b, %.lr.ph124
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %i.eu = load ptr, ptr %i.q, align 8, !tbaa !39  ; 2 uses
  %i.ev = getelementptr i8, ptr %i.eu, i64 4
  %.val = load i32, ptr %i.ev, align 4, !tbaa !42
  %i.ew = sext i32 %.val to i64
  %i.ex = icmp slt i64 %indvars.iv.next138, %i.ew
  br i1 %i.ex, label %.lr.ph124, label %.critedge.loopexit, !llvm.loop !73

.critedge.loopexit:                               ; preds = %Vec_IntAppend.exit
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !48
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %i.ey = phi ptr [ %.pre, %.critedge.loopexit ], [ %i.o, %bb.a ] ; 2 uses
  %.not.i95 = icmp eq ptr %i.ey, null
  br i1 %.not.i95, label %Vec_IntFree.exit, label %bb.ai

bb.ai:                                            ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %i.ey) #21
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge, %bb.ai
  tail call void @free(ptr noundef nonnull %i.m) #21
  %i.ez = load ptr, ptr %i.d, align 8, !tbaa !48  ; 2 uses
  %.not.i98 = icmp eq ptr %i.ez, null
  br i1 %.not.i98, label %Vec_IntFree.exit99, label %bb.aj

bb.aj:                                            ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.ez) #21
  br label %Vec_IntFree.exit99

Vec_IntFree.exit99:                               ; preds = %Vec_IntFree.exit, %bb.aj
  tail call void @free(ptr noundef nonnull %i.a) #21
  %i.fa = load ptr, ptr %i.h, align 8, !tbaa !23  ; 2 uses
  %.not.i100 = icmp eq ptr %i.fa, null
  br i1 %.not.i100, label %Vec_StrFree.exit, label %bb.ak

bb.ak:                                            ; preds = %Vec_IntFree.exit99
  tail call void @free(ptr noundef nonnull %i.fa) #21
  br label %Vec_StrFree.exit

Vec_StrFree.exit:                                 ; preds = %Vec_IntFree.exit99, %bb.ak
  tail call void @free(ptr noundef nonnull %i.e) #21
  %i.fb = load ptr, ptr %i.l, align 8, !tbaa !43  ; 2 uses
  %.not.i101 = icmp eq ptr %i.fb, null
  br i1 %.not.i101, label %Vec_PtrFree.exit, label %bb.al

bb.al:                                            ; preds = %Vec_StrFree.exit
  tail call void @free(ptr noundef nonnull %i.fb) #21
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %Vec_StrFree.exit, %bb.al
  tail call void @free(ptr noundef nonnull %i.i) #21
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_NtkOrderFaninsByLitCount(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 5 uses
  store i32 0, ptr %i.b, align 4, !tbaa !49
  store i32 100, ptr %i.a, align 8, !tbaa !51
  %i.c = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #20
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 7 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !48
  %i.e = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 0, ptr %i.f, align 4, !tbaa !21
  store i32 100, ptr %i.e, align 8, !tbaa !22
  %i.g = tail call noalias dereferenceable_or_null(100) ptr @malloc(i64 noundef 100) #20
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !23
  %i.i = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 0, ptr %i.j, align 4, !tbaa !42
  store i32 100, ptr %i.i, align 8, !tbaa !50
  %i.k = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #20
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !43
  %i.m = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  store i32 100, ptr %i.m, align 8, !tbaa !51
  %i.o = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #20
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 9 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !48
  %i.q = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 4 uses
  store i32 0, ptr %i.r, align 4, !tbaa !49
  store i32 100, ptr %i.q, align 8, !tbaa !51
  %i.s = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #20 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !39   ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %.val147 = load i32, ptr %i.w, align 4, !tbaa !42
  %i.x = icmp sgt i32 %.val147, 0
  br i1 %i.x, label %.lr.ph150, label %.critedge

.lr.ph150:                                        ; preds = %bb.a, %Vec_IntAppend.exit
  %indvars.iv171.a = phi i64 [ %indvars.iv.next172, %Vec_IntAppend.exit ], [ 0, %bb.a ] ; 2 uses
  %i.y = phi ptr [ %i.gs, %Vec_IntAppend.exit ], [ %i.v, %bb.a ]
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val92.val = load ptr, ptr %i.z, align 8, !tbaa !43
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.val92.val, i64 %indvars.iv171.a
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !44 ; 8 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %Vec_IntAppend.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph150
  %i.ad = getelementptr i8, ptr %i.ab, i64 20
  %.val93 = load i32, ptr %i.ad, align 4
  %i.ae = and i32 %.val93, 15
  %.not = icmp eq i32 %i.ae, 7
  br i1 %.not, label %bb.c, label %Vec_IntAppend.exit

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 64 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !45 ; 10 uses
  %i.ah = tail call i32 @Abc_SopGetVarNum(ptr noundef %i.ag) #21 ; 22 uses
  %i.ai = load i32, ptr %i.m, align 8, !tbaa !51
  %.not.i.i = icmp slt i32 %i.ai, %i.ah
  br i1 %.not.i.i, label %bb.d, label %Vec_IntGrow.exit.i

bb.d:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr %i.p, align 8, !tbaa !48  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.aj, null
  %i.ak = sext i32 %i.ah to i64
  %i.al = shl nsw i64 %i.ak, 2                    ; 2 uses
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = tail call ptr @realloc(ptr noundef nonnull %i.aj, i64 noundef %i.al) #22
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.an = tail call noalias ptr @malloc(i64 noundef %i.al) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ao = phi ptr [ %i.am, %bb.e ], [ %i.an, %bb.f ]
  store ptr %i.ao, ptr %i.p, align 8, !tbaa !48
  store i32 %i.ah, ptr %i.m, align 8, !tbaa !51
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.g, %bb.c
  %i.ap = icmp sgt i32 %i.ah, 0                   ; 3 uses
  br i1 %i.ap, label %Vec_IntFill.exit, label %Vec_IntFill.exit.thread

Vec_IntFill.exit:                                 ; preds = %Vec_IntGrow.exit.i
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.ar = zext nneg i32 %i.ah to i64
  %i.as = shl nuw nsw i64 %i.ar, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aq, i8 0, i64 %i.as, i1 false), !tbaa !46
  store i32 %i.ah, ptr %i.n, align 4, !tbaa !49
  %i.at = load i8, ptr %i.ag, align 1, !tbaa !45
  %.not89126 = icmp eq i8 %i.at, 0
  br i1 %.not89126, label %._crit_edge128, label %.preheader124.us.preheader

Vec_IntFill.exit.thread:                          ; preds = %Vec_IntGrow.exit.i
  store i32 %i.ah, ptr %i.n, align 4, !tbaa !49
  tail call void @Abc_NtkSopTranspose(ptr noundef nonnull %i.ag, i32 noundef %i.ah, ptr noundef nonnull %i.i, ptr noundef nonnull %i.e)
  store i32 0, ptr %i.b, align 4, !tbaa !49
  %.val94.pre = load ptr, ptr %i.d, align 8, !tbaa !48
  br label %Vec_StrSelectSortCost2.exit

.preheader124.us.preheader:                       ; preds = %Vec_IntFill.exit
  %i.au = zext nneg i32 %i.ah to i64
  %wide.trip.count = zext nneg i32 %i.ah to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.av = icmp eq i32 %i.ah, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod193 = trunc i32 %i.ah to i1
  br label %.preheader124.us

.preheader124.us:                                 ; preds = %.preheader124.us.preheader, %._crit_edge.us
  %.083127.us = phi ptr [ %i.bm, %._crit_edge.us ], [ %i.ag, %.preheader124.us.preheader ] ; 4 uses
  br i1 %i.av, label %.epil.preheader, label %.preheader124.us.new

.preheader124.us.new:                             ; preds = %.preheader124.us, %bb.k
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.k ], [ 0, %.preheader124.us ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.k ], [ 0, %.preheader124.us ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.083127.us, i64 %indvars.iv
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !45
  %.not91.us = icmp eq i8 %i.ax, 45
  br i1 %.not91.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader124.us.new
  %.val99.us = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.val99.us, i64 %indvars.iv ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !46
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !46
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader124.us.new
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.083127.us, i64 %indvars.iv.next
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !45
  %.not91.us.1 = icmp eq i8 %i.bc, 45
  br i1 %.not91.us.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val99.us.1 = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.val99.us.1, i64 %indvars.iv.next ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !46
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !46
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader124.us.new, !llvm.loop !74

._crit_edge.us.unr-lcssa:                         ; preds = %bb.k
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader124.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader124.us ], [ %indvars.iv.next.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod193)
  %i.bg = getelementptr inbounds nuw i8, ptr %.083127.us, i64 %indvars.iv.epil.init
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !45
  %.not91.us.epil = icmp eq i8 %i.bh, 45
  br i1 %.not91.us.epil, label %._crit_edge.us, label %bb.l

bb.l:                                             ; preds = %.epil.preheader
  %.val99.us.epil = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.val99.us.epil, i64 %indvars.iv.epil.init ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !46
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !46
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.epil.preheader, %bb.l, %._crit_edge.us.unr-lcssa
  %i.bl = getelementptr i8, ptr %.083127.us, i64 %i.au
  %i.bm = getelementptr i8, ptr %i.bl, i64 3      ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !45
  %.not89.us = icmp eq i8 %i.bn, 0
  br i1 %.not89.us, label %._crit_edge128, label %.preheader124.us, !llvm.loop !75

._crit_edge128:                                   ; preds = %._crit_edge.us, %Vec_IntFill.exit
  tail call void @Abc_NtkSopTranspose(ptr noundef nonnull %i.ag, i32 noundef %i.ah, ptr noundef nonnull %i.i, ptr noundef nonnull %i.e)
  %.val97 = load ptr, ptr %i.l, align 8, !tbaa !43 ; 4 uses
  store i32 0, ptr %i.b, align 4, !tbaa !49
  br label %.lr.ph.i100

thread-pre-split.i:                               ; preds = %Vec_IntPush.exit.i
  %.pr.i = load i32, ptr %i.b, align 4, !tbaa !49
  br label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %._crit_edge128, %thread-pre-split.i
  %.pre77.i = phi i32 [ %.pr.i, %thread-pre-split.i ], [ 0, %._crit_edge128 ] ; 7 uses
  %.057.i = phi i32 [ %i.cf, %thread-pre-split.i ], [ 0, %._crit_edge128 ] ; 2 uses
  %i.bo = load i32, ptr %i.a, align 8, !tbaa !51
  %i.bp = icmp eq i32 %.pre77.i, %i.bo
  br i1 %i.bp, label %bb.m, label %.Vec_IntPush.exit_crit_edge.i

.Vec_IntPush.exit_crit_edge.i:                    ; preds = %.lr.ph.i100
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !48
  br label %Vec_IntPush.exit.i

bb.m:                                             ; preds = %.lr.ph.i100
  %i.bq = icmp slt i32 %.pre77.i, 16
  br i1 %i.bq, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.br = load ptr, ptr %i.d, align 8, !tbaa !48  ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not9.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.br, i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.p:                                             ; preds = %bb.n
  %i.bt = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #20
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.q:                                             ; preds = %bb.m
  %i.bu = icmp samesign ult i32 %.pre77.i, 1073741823
  %i.bv = shl nuw nsw i32 %.pre77.i, 1
  %spec.select.i.i = select i1 %i.bu, i32 %i.bv, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %.pre77.i, %spec.select.i.i
  %.pre76.i = load ptr, ptr %i.d, align 8, !tbaa !48 ; 3 uses
  br i1 %.not.i9.i.i, label %bb.r, label %Vec_IntPush.exit.i

bb.r:                                             ; preds = %bb.q
  %.not9.i10.i.i = icmp eq ptr %.pre76.i, null
  %i.bw = zext nneg i32 %spec.select.i.i to i64
  %i.bx = shl nuw nsw i64 %i.bw, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = tail call ptr @realloc(ptr noundef nonnull %.pre76.i, i64 noundef %i.bx) #22
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.t:                                             ; preds = %bb.r
  %i.bz = tail call noalias ptr @malloc(i64 noundef %i.bx) #20
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.t, %bb.s, %bb.p, %bb.o
  %i.ca = phi ptr [ %i.bt, %bb.p ], [ %i.bs, %bb.o ], [ %i.by, %bb.s ], [ %i.bz, %bb.t ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.p ], [ 16, %bb.o ], [ %spec.select.i.i, %bb.s ], [ %spec.select.i.i, %bb.t ]
  store ptr %i.ca, ptr %i.d, align 8, !tbaa !48
  store i32 %spec.select.sink.i.i, ptr %i.a, align 8, !tbaa !51
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.q, %.Vec_IntPush.exit_crit_edge.i
  %i.cb = phi ptr [ %.pre.i, %.Vec_IntPush.exit_crit_edge.i ], [ %.pre76.i, %bb.q ], [ %i.ca, %Vec_IntGrow.exit11.sink.split.i.i ] ; 7 uses
  %i.cc = add nsw i32 %.pre77.i, 1
  store i32 %i.cc, ptr %i.b, align 4, !tbaa !49
  %i.cd = sext i32 %.pre77.i to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.cd
  store i32 %.057.i, ptr %i.ce, align 4, !tbaa !46
  %i.cf = add nuw nsw i32 %.057.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cf, %i.ah
  br i1 %exitcond.not.i, label %._crit_edge.i, label %thread-pre-split.i, !llvm.loop !76

._crit_edge.i:                                    ; preds = %Vec_IntPush.exit.i
  %.not.i = icmp eq i32 %i.ah, 1
  br i1 %.not.i, label %Vec_StrSelectSortCost2.exit, label %.lr.ph65.i

.lr.ph65.i:                                       ; preds = %._crit_edge.i
  %i.cg = add nsw i32 %i.ah, -1
  %wide.trip.count74.i = zext nneg i32 %i.cg to i64
  %.val56.i = load ptr, ptr %i.p, align 8, !tbaa !48 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.ah to i64
  br label %.lr.ph61.i

.lr.ph61.i:                                       ; preds = %._crit_edge62.i, %.lr.ph65.i
  %indvars.iv71.i = phi i64 [ 0, %.lr.ph65.i ], [ %indvars.iv.next72.i, %._crit_edge62.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ 1, %.lr.ph65.i ], [ %indvars.iv.next.i, %._crit_edge62.i ] ; 2 uses
  %i.ch = trunc nuw nsw i64 %indvars.iv71.i to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %.lr.ph61.i
  %indvars.iv67.i = phi i64 [ %indvars.iv.i, %.lr.ph61.i ], [ %indvars.iv.next68.i, %bb.y ] ; 4 uses
  %.05058.i = phi i32 [ %i.ch, %.lr.ph61.i ], [ %.151.i, %bb.y ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv67.i
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !46
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %.val56.i, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !46 ; 2 uses
  %i.cn = sext i32 %.05058.i to i64               ; 2 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !46
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %.val56.i, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !46 ; 2 uses
  %i.ct = icmp slt i32 %i.cm, %i.cs
  br i1 %i.ct, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cu = icmp eq i32 %i.cm, %i.cs
  br i1 %i.cu, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.val97, i64 %indvars.iv67.i
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !52
  %i.cx = getelementptr inbounds [8 x i8], ptr %.val97, i64 %i.cn
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !52
  %i.cz = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cw, ptr noundef nonnull dereferenceable(1) %i.cy) #23
  %i.da = icmp slt i32 %i.cz, 0
  br i1 %i.da, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.db = trunc nuw nsw i64 %indvars.iv67.i to i32
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.151.i = phi i32 [ %i.db, %bb.x ], [ %.05058.i, %bb.w ], [ %.05058.i, %bb.v ] ; 2 uses
  %indvars.iv.next68.i = add nuw nsw i64 %indvars.iv67.i, 1 ; 2 uses
  %exitcond70.not.i = icmp eq i64 %indvars.iv.next68.i, %wide.trip.count.i
  br i1 %exitcond70.not.i, label %._crit_edge62.i, label %bb.u, !llvm.loop !77

._crit_edge62.i:                                  ; preds = %bb.y
  %indvars.iv.next72.i = add nuw nsw i64 %indvars.iv71.i, 1 ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.val97, i64 %indvars.iv71.i ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !52
  %i.de = sext i32 %.151.i to i64                 ; 2 uses
  %i.df = getelementptr inbounds [8 x i8], ptr %.val97, i64 %i.de ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !52
  store ptr %i.dg, ptr %i.dc, align 8, !tbaa !52
  store ptr %i.dd, ptr %i.df, align 8, !tbaa !52
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv71.i ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !46
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.de ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !46
  store i32 %i.dk, ptr %i.dh, align 4, !tbaa !46
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !46
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next72.i, %wide.trip.count74.i
  br i1 %exitcond75.not.i, label %Vec_StrSelectSortCost2.exit, label %.lr.ph61.i, !llvm.loop !78

Vec_StrSelectSortCost2.exit:                      ; preds = %._crit_edge62.i, %Vec_IntFill.exit.thread, %._crit_edge.i
  %.val94 = phi ptr [ %.val94.pre, %Vec_IntFill.exit.thread ], [ %i.cb, %._crit_edge.i ], [ %i.cb, %._crit_edge62.i ] ; 4 uses
  %i.dl = tail call i32 @Abc_SopGetCubeNum(ptr noundef nonnull %i.ag) #21
  %i.dm = add nsw i32 %i.ah, 3                    ; 3 uses
  %i.dn = mul nsw i32 %i.dl, %i.dm                ; 2 uses
  %i.do = add nsw i32 %i.dn, 1                    ; 2 uses
  %i.dp = load i32, ptr %i.e, align 8, !tbaa !22
  %.not.i101.not = icmp sgt i32 %i.dp, %i.dn
  %.val96.pre = load ptr, ptr %i.h, align 8, !tbaa !23 ; 3 uses
  br i1 %.not.i101.not, label %Vec_StrGrow.exit, label %bb.z

bb.z:                                             ; preds = %Vec_StrSelectSortCost2.exit
  %.not9.i = icmp eq ptr %.val96.pre, null
  %i.dq = sext i32 %i.do to i64                   ; 2 uses
  br i1 %.not9.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dr = tail call ptr @realloc(ptr noundef nonnull %.val96.pre, i64 noundef %i.dq) #22
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ds = tail call noalias ptr @malloc(i64 noundef %i.dq) #20
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dt = phi ptr [ %i.dr, %bb.aa ], [ %i.ds, %bb.ab ] ; 2 uses
  store ptr %i.dt, ptr %i.h, align 8, !tbaa !23
  store i32 %i.do, ptr %i.e, align 8, !tbaa !22
  br label %Vec_StrGrow.exit

Vec_StrGrow.exit:                                 ; preds = %Vec_StrSelectSortCost2.exit, %bb.ac
  %.val96 = phi ptr [ %.val96.pre, %Vec_StrSelectSortCost2.exit ], [ %i.dt, %bb.ac ] ; 3 uses
  %i.du = tail call i32 @Abc_SopGetCubeNum(ptr noundef nonnull %i.ag) #21
  %i.dv = mul nsw i32 %i.du, %i.dm
  %i.dw = add nsw i32 %i.dv, 1
  %i.dx = sext i32 %i.dw to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.val96, ptr nonnull align 1 %i.ag, i64 %i.dx, i1 false)
  %i.dy = load i8, ptr %.val96, align 1, !tbaa !45
  %.not90132 = icmp eq i8 %i.dy, 0
  br i1 %.not90132, label %._crit_edge135, label %.preheader123.lr.ph.a

.preheader123.lr.ph.a:                            ; preds = %Vec_StrGrow.exit
  %1 = sext i32 %i.dm to i64                      ; 2 uses
  %2 = zext i32 %i.ah to i64                      ; 3 uses
  %xtraiter194 = and i64 %2, 1
  %i.dz = icmp eq i32 %i.ah, 1
  %unroll_iter197 = and i64 %2, 2147483646
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  %lcmp.mod196 = trunc i32 %i.ah to i1
  br label %.preheader123

.preheader123:                                    ; preds = %.preheader123.lr.ph.a, %._crit_edge
  %.082134 = phi ptr [ %i.ag, %.preheader123.lr.ph.a ], [ %i.ev, %._crit_edge ] ; 5 uses
  %.184133 = phi ptr [ %.val96, %.preheader123.lr.ph.a ], [ %i.ew, %._crit_edge ] ; 4 uses
  br i1 %i.ap, label %.lr.ph131.preheader, label %._crit_edge

.lr.ph131.preheader:                              ; preds = %.preheader123
  tail call void @llvm.memset.p0.i64(ptr align 1 %.082134, i8 45, i64 %2, i1 false), !tbaa !45
  br i1 %i.dz, label %.lr.ph131.epil.preheader, label %.lr.ph131

.lr.ph131:                                        ; preds = %.lr.ph131.preheader, %bb.ad
  %indvars.iv157 = phi i64 [ %indvars.iv.next158.1, %bb.ad ], [ 0, %.lr.ph131.preheader ] ; 4 uses
  %niter198 = phi i64 [ %niter198.next.1, %bb.ad ], [ 0, %.lr.ph131.preheader ]
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.val94, i64 %indvars.iv157
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !46
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds i8, ptr %.184133, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !45  ; 2 uses
  %i.ef = and i8 %i.ee, -2
  %switch = icmp eq i8 %i.ef, 48
  br i1 %switch, label %.sink.split, label %.lr.ph131.1

.sink.split:                                      ; preds = %.lr.ph131
  %i.eg = getelementptr inbounds nuw i8, ptr %.082134, i64 %indvars.iv157
  store i8 %i.ee, ptr %i.eg, align 1, !tbaa !45
  br label %.lr.ph131.1

.lr.ph131.1:                                      ; preds = %.lr.ph131, %.sink.split
  %indvars.iv.next158 = or disjoint i64 %indvars.iv157, 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.val94, i64 %indvars.iv.next158
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !46
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds i8, ptr %.184133, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !45  ; 2 uses
  %i.em = and i8 %i.el, -2
  %switch.1 = icmp eq i8 %i.em, 48
  br i1 %switch.1, label %.sink.split.1, label %bb.ad

.sink.split.1:                                    ; preds = %.lr.ph131.1
  %i.en = getelementptr inbounds nuw i8, ptr %.082134, i64 %indvars.iv.next158
  store i8 %i.el, ptr %i.en, align 1, !tbaa !45
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split.1, %.lr.ph131.1
  %indvars.iv.next158.1 = add nuw nsw i64 %indvars.iv157, 2 ; 2 uses
  %niter198.next.1 = add i64 %niter198, 2         ; 2 uses
  %niter198.ncmp.1 = icmp eq i64 %niter198.next.1, %unroll_iter197
  br i1 %niter198.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph131, !llvm.loop !79

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ad
  br i1 %lcmp.mod195.not, label %._crit_edge, label %.lr.ph131.epil.preheader

.lr.ph131.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph131.preheader
  %indvars.iv157.epil.init = phi i64 [ 0, %.lr.ph131.preheader ], [ %indvars.iv.next158.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod196)
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.val94, i64 %indvars.iv157.epil.init
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !46
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds i8, ptr %.184133, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !45  ; 2 uses
  %i.et = and i8 %i.es, -2
  %switch.epil = icmp eq i8 %i.et, 48
  br i1 %switch.epil, label %.sink.split.epil, label %._crit_edge

.sink.split.epil:                                 ; preds = %.lr.ph131.epil.preheader
  %i.eu = getelementptr inbounds nuw i8, ptr %.082134, i64 %indvars.iv157.epil.init
  store i8 %i.es, ptr %i.eu, align 1, !tbaa !45
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.sink.split.epil, %.lr.ph131.epil.preheader, %.preheader123
  %i.ev = getelementptr i8, ptr %.082134, i64 %1
  %i.ew = getelementptr inbounds i8, ptr %.184133, i64 %1 ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !45
  %.not90 = icmp eq i8 %i.ex, 0
  br i1 %.not90, label %._crit_edge135, label %.preheader123, !llvm.loop !80

._crit_edge135:                                   ; preds = %._crit_edge, %Vec_StrGrow.exit
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !45
  store i32 0, ptr %i.r, align 4, !tbaa !49
  br i1 %i.ap, label %.lr.ph138, label %.thread

.thread:                                          ; preds = %._crit_edge135
  %3 = getelementptr inbounds nuw i8, ptr %i.ab, i64 28
  store i32 0, ptr %3, align 4, !tbaa !49
  br label %Vec_IntAppend.exit

.lr.ph138:                                        ; preds = %._crit_edge135
  %i.ey = getelementptr i8, ptr %i.ab, i64 32
  %.promoted141 = load i32, ptr %i.q, align 8, !tbaa !51
  %.promoted144 = load ptr, ptr %i.t, align 8, !tbaa !48
  %wide.trip.count169 = zext nneg i32 %i.ah to i64
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph138, %Vec_IntPush.exit
  %indvars.iv164 = phi i64 [ 0, %.lr.ph138 ], [ %indvars.iv.next165, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv162 = phi i64 [ 0, %.lr.ph138 ], [ %indvars.iv.next163, %Vec_IntPush.exit ] ; 7 uses
  %storemerge145 = phi ptr [ %.promoted144, %.lr.ph138 ], [ %storemerge146, %Vec_IntPush.exit ] ; 6 uses
  %spec.select.sink.i143 = phi i32 [ %.promoted141, %.lr.ph138 ], [ %spec.select.sink.i142, %Vec_IntPush.exit ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.val94, i64 %indvars.iv164
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !46
  %.val98 = load ptr, ptr %i.ey, align 8, !tbaa !55
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [4 x i8], ptr %.val98, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !46
  %i.fe = trunc nsw i64 %indvars.iv162 to i32
  %i.ff = icmp eq i32 %spec.select.sink.i143, %i.fe
  br i1 %i.ff, label %bb.af, label %Vec_IntPush.exit

bb.af:                                            ; preds = %bb.ae
  %i.fg = icmp samesign ult i64 %indvars.iv162, 16
  br i1 %i.fg, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %.not9.i.i102 = icmp eq ptr %storemerge145, null
  br i1 %.not9.i.i102, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fh = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge145, i64 noundef 64) #22
  br label %Vec_IntPush.exit

bb.ai:                                            ; preds = %bb.ag
  %i.fi = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #20
  br label %Vec_IntPush.exit

bb.aj:                                            ; preds = %bb.af
  %i.fj = icmp samesign ult i64 %indvars.iv162, 1073741823
  %indvars.iv162.tr = trunc nsw i64 %indvars.iv162 to i32
  %i.fk = shl nsw i32 %indvars.iv162.tr, 1
  %spec.select.i = select i1 %i.fj, i32 %i.fk, i32 2147483647 ; 4 uses
  %i.fl = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv162, %i.fl
  br i1 %.not.i9.i, label %bb.ak, label %Vec_IntPush.exit

bb.ak:                                            ; preds = %bb.aj
  %.not9.i10.i = icmp eq ptr %storemerge145, null
  %i.fm = zext nneg i32 %spec.select.i to i64
  %i.fn = shl nuw nsw i64 %i.fm, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fo = tail call ptr @realloc(ptr noundef nonnull %storemerge145, i64 noundef %i.fn) #22
  br label %Vec_IntPush.exit

bb.am:                                            ; preds = %bb.ak
  %i.fp = tail call noalias ptr @malloc(i64 noundef %i.fn) #20
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.ai, %bb.ah, %bb.am, %bb.al, %bb.ae, %bb.aj
  %storemerge146 = phi ptr [ %storemerge145, %bb.ae ], [ %storemerge145, %bb.aj ], [ %i.fi, %bb.ai ], [ %i.fh, %bb.ah ], [ %i.fo, %bb.al ], [ %i.fp, %bb.am ] ; 4 uses
  %spec.select.sink.i142 = phi i32 [ %spec.select.sink.i143, %bb.ae ], [ %spec.select.sink.i143, %bb.aj ], [ 16, %bb.ai ], [ 16, %bb.ah ], [ %spec.select.i, %bb.al ], [ %spec.select.i, %bb.am ] ; 2 uses
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %storemerge146, i64 %indvars.iv162
  store i32 %i.fd, ptr %i.fq, align 4, !tbaa !46
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next165, %wide.trip.count169
  br i1 %exitcond170.not, label %.lr.ph.i104, label %bb.ae, !llvm.loop !81

.lr.ph.i104:                                      ; preds = %Vec_IntPush.exit
  %i.fr = trunc nsw i64 %indvars.iv.next163 to i32
  store i32 %i.fr, ptr %i.r, align 4, !tbaa !49
  store i32 %spec.select.sink.i142, ptr %i.q, align 8
  store ptr %storemerge146, ptr %i.t, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ab, i64 28 ; 4 uses
  store i32 0, ptr %i.ft, align 4, !tbaa !49
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 4 uses
  br label %bb.an

thread-pre-split:                                 ; preds = %Vec_IntPush.exit.i108
  %.pr = load i32, ptr %i.ft, align 4, !tbaa !49
  br label %bb.an

bb.an:                                            ; preds = %thread-pre-split, %.lr.ph.i104
  %i.fv = phi i32 [ %.pr, %thread-pre-split ], [ 0, %.lr.ph.i104 ] ; 7 uses
  %indvars.iv.i105 = phi i64 [ %indvars.iv.next.i109, %thread-pre-split ], [ 0, %.lr.ph.i104 ] ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %storemerge146, i64 %indvars.iv.i105
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !46
  %i.fy = load i32, ptr %i.fs, align 8, !tbaa !51
  %i.fz = icmp eq i32 %i.fv, %i.fy
  br i1 %i.fz, label %bb.ao, label %.Vec_IntPush.exit_crit_edge.i106

.Vec_IntPush.exit_crit_edge.i106:                 ; preds = %bb.an
  %.pre.i107 = load ptr, ptr %i.fu, align 8, !tbaa !48
  br label %Vec_IntPush.exit.i108

bb.ao:                                            ; preds = %bb.an
  %i.ga = icmp slt i32 %i.fv, 16
  br i1 %i.ga, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.gb = load ptr, ptr %i.fu, align 8, !tbaa !48 ; 2 uses
  %.not9.i.i.i115 = icmp eq ptr %i.gb, null
  br i1 %.not9.i.i.i115, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gc = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.gb, i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i.i113

bb.ar:                                            ; preds = %bb.ap
  %i.gd = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #20
  br label %Vec_IntGrow.exit11.sink.split.i.i113

bb.as:                                            ; preds = %bb.ao
  %i.ge = icmp samesign ult i32 %i.fv, 1073741823
  %i.gf = shl nuw nsw i32 %i.fv, 1
  %spec.select.i.i110 = select i1 %i.ge, i32 %i.gf, i32 2147483647 ; 4 uses
  %.not.i9.i.i111 = icmp samesign ult i32 %i.fv, %spec.select.i.i110
  %.pre10.i = load ptr, ptr %i.fu, align 8, !tbaa !48 ; 3 uses
  br i1 %.not.i9.i.i111, label %bb.at, label %Vec_IntPush.exit.i108

bb.at:                                            ; preds = %bb.as
  %.not9.i10.i.i112 = icmp eq ptr %.pre10.i, null
  %i.gg = zext nneg i32 %spec.select.i.i110 to i64
  %i.gh = shl nuw nsw i64 %i.gg, 2                ; 2 uses
  br i1 %.not9.i10.i.i112, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gi = tail call ptr @realloc(ptr noundef nonnull %.pre10.i, i64 noundef %i.gh) #22
  br label %Vec_IntGrow.exit11.sink.split.i.i113

bb.av:                                            ; preds = %bb.at
  %i.gj = tail call noalias ptr @malloc(i64 noundef %i.gh) #20
  br label %Vec_IntGrow.exit11.sink.split.i.i113

Vec_IntGrow.exit11.sink.split.i.i113:             ; preds = %bb.av, %bb.au, %bb.ar, %bb.aq
  %i.gk = phi ptr [ %i.gd, %bb.ar ], [ %i.gc, %bb.aq ], [ %i.gi, %bb.au ], [ %i.gj, %bb.av ] ; 2 uses
  %spec.select.sink.i.i114 = phi i32 [ 16, %bb.ar ], [ 16, %bb.aq ], [ %spec.select.i.i110, %bb.au ], [ %spec.select.i.i110, %bb.av ]
  store ptr %i.gk, ptr %i.fu, align 8, !tbaa !48
  store i32 %spec.select.sink.i.i114, ptr %i.fs, align 8, !tbaa !51
  %.pre11.i = load i32, ptr %i.ft, align 4, !tbaa !49
  br label %Vec_IntPush.exit.i108

Vec_IntPush.exit.i108:                            ; preds = %Vec_IntGrow.exit11.sink.split.i.i113, %bb.as, %.Vec_IntPush.exit_crit_edge.i106
  %i.gl = phi i32 [ %i.fv, %.Vec_IntPush.exit_crit_edge.i106 ], [ %i.fv, %bb.as ], [ %.pre11.i, %Vec_IntGrow.exit11.sink.split.i.i113 ] ; 2 uses
  %i.gm = phi ptr [ %.pre.i107, %.Vec_IntPush.exit_crit_edge.i106 ], [ %.pre10.i, %bb.as ], [ %i.gk, %Vec_IntGrow.exit11.sink.split.i.i113 ]
  %i.gn = add nsw i32 %i.gl, 1
  store i32 %i.gn, ptr %i.ft, align 4, !tbaa !49
  %i.go = sext i32 %i.gl to i64
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.gm, i64 %i.go
  store i32 %i.fx, ptr %i.gp, align 4, !tbaa !46
  %indvars.iv.next.i109 = add nuw nsw i64 %indvars.iv.i105, 1 ; 2 uses
  %.val6.i = load i32, ptr %i.r, align 4, !tbaa !49
  %i.gq = sext i32 %.val6.i to i64
  %i.gr = icmp slt i64 %indvars.iv.next.i109, %i.gq
  br i1 %i.gr, label %thread-pre-split, label %Vec_IntAppend.exit, !llvm.loop !2

Vec_IntAppend.exit:                               ; preds = %Vec_IntPush.exit.i108, %.thread, %bb.b, %.lr.ph150
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171.a, 1 ; 2 uses
  %i.gs = load ptr, ptr %i.u, align 8, !tbaa !39  ; 2 uses
  %i.gt = getelementptr i8, ptr %i.gs, i64 4
  %.val = load i32, ptr %i.gt, align 4, !tbaa !42
  %i.gu = sext i32 %.val to i64
  %i.gv = icmp slt i64 %indvars.iv.next172, %i.gu
  br i1 %i.gv, label %.lr.ph150, label %.critedge.loopexit, !llvm.loop !82

.critedge.loopexit:                               ; preds = %Vec_IntAppend.exit
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !48
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %i.gw = phi ptr [ %.pre, %.critedge.loopexit ], [ %i.s, %bb.a ] ; 2 uses
  %.not.i116 = icmp eq ptr %i.gw, null
  br i1 %.not.i116, label %Vec_IntFree.exit, label %bb.aw

bb.aw:                                            ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %i.gw) #21
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge, %bb.aw
  tail call void @free(ptr noundef nonnull %i.q) #21
  %i.gx = load ptr, ptr %i.p, align 8, !tbaa !48  ; 2 uses
  %.not.i117 = icmp eq ptr %i.gx, null
  br i1 %.not.i117, label %Vec_IntFree.exit118, label %bb.ax

bb.ax:                                            ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.gx) #21
  br label %Vec_IntFree.exit118

Vec_IntFree.exit118:                              ; preds = %Vec_IntFree.exit, %bb.ax
  tail call void @free(ptr noundef nonnull %i.m) #21
  %i.gy = load ptr, ptr %i.d, align 8, !tbaa !48  ; 2 uses
  %.not.i119 = icmp eq ptr %i.gy, null
  br i1 %.not.i119, label %Vec_IntFree.exit120, label %bb.ay

bb.ay:                                            ; preds = %Vec_IntFree.exit118
  tail call void @free(ptr noundef nonnull %i.gy) #21
  br label %Vec_IntFree.exit120

Vec_IntFree.exit120:                              ; preds = %Vec_IntFree.exit118, %bb.ay
  tail call void @free(ptr noundef nonnull %i.a) #21
  %i.gz = load ptr, ptr %i.h, align 8, !tbaa !23  ; 2 uses
  %.not.i121 = icmp eq ptr %i.gz, null
  br i1 %.not.i121, label %Vec_StrFree.exit, label %bb.az

bb.az:                                            ; preds = %Vec_IntFree.exit120
  tail call void @free(ptr noundef nonnull %i.gz) #21
  br label %Vec_StrFree.exit

Vec_StrFree.exit:                                 ; preds = %Vec_IntFree.exit120, %bb.az
  tail call void @free(ptr noundef nonnull %i.e) #21
  %i.ha = load ptr, ptr %i.l, align 8, !tbaa !43  ; 2 uses
  %.not.i122 = icmp eq ptr %i.ha, null
  br i1 %.not.i122, label %Vec_PtrFree.exit, label %bb.ba

bb.ba:                                            ; preds = %Vec_StrFree.exit
  tail call void @free(ptr noundef nonnull %i.ha) #21
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %Vec_StrFree.exit, %bb.ba
  tail call void @free(ptr noundef nonnull %i.i) #21
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_NtkOrderFaninsByLitCountAndCubeCount(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !21
  store i32 100, ptr %i.a, align 8, !tbaa !22
  %i.c = tail call noalias dereferenceable_or_null(100) ptr @malloc(i64 noundef 100) #20
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !23
  %i.e = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 4 uses
  store i32 0, ptr %i.f, align 4, !tbaa !49
  store i32 100, ptr %i.e, align 8, !tbaa !51
  %i.g = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #20
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !48
  %i.i = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  store i32 0, ptr %i.j, align 4, !tbaa !49
  store i32 100, ptr %i.i, align 8, !tbaa !51
  %i.k = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #20
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 10 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !48
  %i.m = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 4 uses
  store i32 0, ptr %i.n, align 4, !tbaa !49
  store i32 100, ptr %i.m, align 8, !tbaa !51
  %i.o = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #20
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !48
  %i.q = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 3 uses
  store i32 0, ptr %i.r, align 4, !tbaa !49
  store i32 100, ptr %i.q, align 8, !tbaa !51
  %i.s = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #20 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 11 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !39   ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %.val193 = load i32, ptr %i.w, align 4, !tbaa !42
  %i.x = icmp sgt i32 %.val193, 0
  br i1 %i.x, label %.lr.ph196, label %.critedge
end_hunk_0
