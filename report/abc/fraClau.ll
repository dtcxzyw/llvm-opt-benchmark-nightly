Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/fraClau?download=true
inline.NumInlined: 175
inline.NumDeleted: 34
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Fra_ClauMinimizeClause_rec:bb.a
  %i.cg = icmp eq i32 %.val38110, 1
  br i1 %i.cg, label %.loopexit, label %.lr.ph

bb.ad:                                            ; preds = %Vec_IntAppend.exit65
  tail call void @Fra_ClauMinimizeClause_rec(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %.tr103.ph113)
  store i32 %.val.pre.pre, ptr %i.c, align 4, !tbaa !30
  %.val7.i66 = load i32, ptr %i.e, align 4, !tbaa !30
  %i.ch = icmp sgt i32 %.val7.i66, 0
  br i1 %i.ch, label %.lr.ph.i67, label %Vec_IntAppend.exit83

thread-pre-split145:                              ; preds = %Vec_IntPush.exit.i72
  %.pr146 = load i32, ptr %i.c, align 4, !tbaa !30
  br label %.lr.ph.i67

.lr.ph.i67:                                       ; preds = %bb.ad, %thread-pre-split145
  %i.ci = phi i32 [ %.pr146, %thread-pre-split145 ], [ %.val.pre.pre, %bb.ad ] ; 7 uses
  %indvars.iv.i68 = phi i64 [ %indvars.iv.next.i73, %thread-pre-split145 ], [ 0, %bb.ad ] ; 2 uses
  %.val6.i69 = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.val6.i69, i64 %indvars.iv.i68
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !34
  %i.cl = load i32, ptr %1, align 8, !tbaa !31
  %i.cm = icmp eq i32 %i.ci, %i.cl
  br i1 %i.cm, label %bb.ae, label %.Vec_IntPush.exit_crit_edge.i70

.Vec_IntPush.exit_crit_edge.i70:                  ; preds = %.lr.ph.i67
  %.pre.i71 = load ptr, ptr %i.d, align 8, !tbaa !32
  br label %Vec_IntPush.exit.i72

bb.ae:                                            ; preds = %.lr.ph.i67
  %i.cn = icmp slt i32 %i.ci, 16
  br i1 %i.cn, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.co = load ptr, ptr %i.d, align 8, !tbaa !32  ; 2 uses
  %.not9.i.i.i82 = icmp eq ptr %i.co, null
  br i1 %.not9.i.i.i82, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cp = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.co, i64 noundef 64) #16
  br label %Vec_IntGrow.exit11.sink.split.i.i79

bb.ah:                                            ; preds = %bb.af
  %i.cq = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #15
  br label %Vec_IntGrow.exit11.sink.split.i.i79

bb.ai:                                            ; preds = %bb.ae
  %i.cr = icmp samesign ult i32 %i.ci, 1073741823
  %i.cs = shl nuw nsw i32 %i.ci, 1
  %spec.select.i.i75 = select i1 %i.cr, i32 %i.cs, i32 2147483647 ; 4 uses
  %.not.i9.i.i76 = icmp samesign ult i32 %i.ci, %spec.select.i.i75
  %.pre10.i77 = load ptr, ptr %i.d, align 8, !tbaa !32 ; 3 uses
  br i1 %.not.i9.i.i76, label %bb.aj, label %Vec_IntPush.exit.i72

bb.aj:                                            ; preds = %bb.ai
  %.not9.i10.i.i78 = icmp eq ptr %.pre10.i77, null
  %i.ct = zext nneg i32 %spec.select.i.i75 to i64
  %i.cu = shl nuw nsw i64 %i.ct, 2                ; 2 uses
  br i1 %.not9.i10.i.i78, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cv = tail call ptr @realloc(ptr noundef nonnull %.pre10.i77, i64 noundef %i.cu) #16
  br label %Vec_IntGrow.exit11.sink.split.i.i79

bb.al:                                            ; preds = %bb.aj
  %i.cw = tail call noalias ptr @malloc(i64 noundef %i.cu) #15
  br label %Vec_IntGrow.exit11.sink.split.i.i79

Vec_IntGrow.exit11.sink.split.i.i79:              ; preds = %bb.al, %bb.ak, %bb.ah, %bb.ag
  %i.cx = phi ptr [ %i.cq, %bb.ah ], [ %i.cp, %bb.ag ], [ %i.cv, %bb.ak ], [ %i.cw, %bb.al ] ; 2 uses
  %spec.select.sink.i.i80 = phi i32 [ 16, %bb.ah ], [ 16, %bb.ag ], [ %spec.select.i.i75, %bb.ak ], [ %spec.select.i.i75, %bb.al ]
  store ptr %i.cx, ptr %i.d, align 8, !tbaa !32
  store i32 %spec.select.sink.i.i80, ptr %1, align 8, !tbaa !31
  %.pre11.i81 = load i32, ptr %i.c, align 4, !tbaa !30
  br label %Vec_IntPush.exit.i72

Vec_IntPush.exit.i72:                             ; preds = %Vec_IntGrow.exit11.sink.split.i.i79, %bb.ai, %.Vec_IntPush.exit_crit_edge.i70
  %i.cy = phi i32 [ %i.ci, %.Vec_IntPush.exit_crit_edge.i70 ], [ %i.ci, %bb.ai ], [ %.pre11.i81, %Vec_IntGrow.exit11.sink.split.i.i79 ] ; 2 uses
  %i.cz = phi ptr [ %.pre.i71, %.Vec_IntPush.exit_crit_edge.i70 ], [ %.pre10.i77, %bb.ai ], [ %i.cx, %Vec_IntGrow.exit11.sink.split.i.i79 ]
  %i.da = add nsw i32 %i.cy, 1
  store i32 %i.da, ptr %i.c, align 4, !tbaa !30
  %i.db = sext i32 %i.cy to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.db
  store i32 %i.ck, ptr %i.dc, align 4, !tbaa !34
  %indvars.iv.next.i73 = add nuw nsw i64 %indvars.iv.i68, 1 ; 2 uses
  %.val.i74 = load i32, ptr %i.e, align 4, !tbaa !30
  %i.dd = sext i32 %.val.i74 to i64
  %i.de = icmp slt i64 %indvars.iv.next.i73, %i.dd
  br i1 %i.de, label %thread-pre-split145, label %Vec_IntAppend.exit83, !llvm.loop !103

Vec_IntAppend.exit83:                             ; preds = %Vec_IntPush.exit.i72, %bb.ad
  tail call void @Fra_ClauMinimizeClause_rec(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.h)
  store i32 %.val.pre.pre, ptr %i.c, align 4, !tbaa !30
  %.val7.i84 = load i32, ptr %i.j, align 4, !tbaa !30
  %i.df = icmp sgt i32 %.val7.i84, 0
  br i1 %i.df, label %.lr.ph.i85, label %Vec_IntAppend.exit101

.lr.ph.i85:                                       ; preds = %Vec_IntAppend.exit83, %Vec_IntPush.exit.i90
  %indvars.iv.i86 = phi i64 [ %indvars.iv.next.i91, %Vec_IntPush.exit.i90 ], [ 0, %Vec_IntAppend.exit83 ] ; 2 uses
  %.val6.i87 = load ptr, ptr %i.n, align 8, !tbaa !32
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.val6.i87, i64 %indvars.iv.i86
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !34
  %i.di = load i32, ptr %i.e, align 4, !tbaa !30  ; 7 uses
  %i.dj = load i32, ptr %.tr103.ph113, align 8, !tbaa !31
  %i.dk = icmp eq i32 %i.di, %i.dj
  br i1 %i.dk, label %bb.am, label %.Vec_IntPush.exit_crit_edge.i88

.Vec_IntPush.exit_crit_edge.i88:                  ; preds = %.lr.ph.i85
  %.pre.i89 = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %Vec_IntPush.exit.i90

bb.am:                                            ; preds = %.lr.ph.i85
  %i.dl = icmp slt i32 %i.di, 16
  br i1 %i.dl, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.dm = load ptr, ptr %i.f, align 8, !tbaa !32  ; 2 uses
  %.not9.i.i.i100 = icmp eq ptr %i.dm, null
  br i1 %.not9.i.i.i100, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dn = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.dm, i64 noundef 64) #16
  br label %Vec_IntGrow.exit11.sink.split.i.i97

bb.ap:                                            ; preds = %bb.an
  %i.do = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #15
  br label %Vec_IntGrow.exit11.sink.split.i.i97

bb.aq:                                            ; preds = %bb.am
  %i.dp = icmp samesign ult i32 %i.di, 1073741823
  %i.dq = shl nuw nsw i32 %i.di, 1
  %spec.select.i.i93 = select i1 %i.dp, i32 %i.dq, i32 2147483647 ; 4 uses
  %.not.i9.i.i94 = icmp samesign ult i32 %i.di, %spec.select.i.i93
  %.pre10.i95 = load ptr, ptr %i.f, align 8, !tbaa !32 ; 3 uses
  br i1 %.not.i9.i.i94, label %bb.ar, label %Vec_IntPush.exit.i90

bb.ar:                                            ; preds = %bb.aq
  %.not9.i10.i.i96 = icmp eq ptr %.pre10.i95, null
  %i.dr = zext nneg i32 %spec.select.i.i93 to i64
  %i.ds = shl nuw nsw i64 %i.dr, 2                ; 2 uses
  br i1 %.not9.i10.i.i96, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dt = tail call ptr @realloc(ptr noundef nonnull %.pre10.i95, i64 noundef %i.ds) #16
  br label %Vec_IntGrow.exit11.sink.split.i.i97

bb.at:                                            ; preds = %bb.ar
  %i.du = tail call noalias ptr @malloc(i64 noundef %i.ds) #15
  br label %Vec_IntGrow.exit11.sink.split.i.i97

Vec_IntGrow.exit11.sink.split.i.i97:              ; preds = %bb.at, %bb.as, %bb.ap, %bb.ao
  %i.dv = phi ptr [ %i.do, %bb.ap ], [ %i.dn, %bb.ao ], [ %i.dt, %bb.as ], [ %i.du, %bb.at ] ; 2 uses
  %spec.select.sink.i.i98 = phi i32 [ 16, %bb.ap ], [ 16, %bb.ao ], [ %spec.select.i.i93, %bb.as ], [ %spec.select.i.i93, %bb.at ]
  store ptr %i.dv, ptr %i.f, align 8, !tbaa !32
  store i32 %spec.select.sink.i.i98, ptr %.tr103.ph113, align 8, !tbaa !31
  %.pre11.i99 = load i32, ptr %i.e, align 4, !tbaa !30
  br label %Vec_IntPush.exit.i90

Vec_IntPush.exit.i90:                             ; preds = %Vec_IntGrow.exit11.sink.split.i.i97, %bb.aq, %.Vec_IntPush.exit_crit_edge.i88
  %i.dw = phi i32 [ %i.di, %.Vec_IntPush.exit_crit_edge.i88 ], [ %i.di, %bb.aq ], [ %.pre11.i99, %Vec_IntGrow.exit11.sink.split.i.i97 ] ; 2 uses
  %i.dx = phi ptr [ %.pre.i89, %.Vec_IntPush.exit_crit_edge.i88 ], [ %.pre10.i95, %bb.aq ], [ %i.dv, %Vec_IntGrow.exit11.sink.split.i.i97 ]
  %i.dy = add nsw i32 %i.dw, 1
  store i32 %i.dy, ptr %i.e, align 4, !tbaa !30
  %i.dz = sext i32 %i.dw to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.dz
  store i32 %i.dh, ptr %i.ea, align 4, !tbaa !34
  %indvars.iv.next.i91 = add nuw nsw i64 %indvars.iv.i86, 1 ; 2 uses
  %.val.i92 = load i32, ptr %i.j, align 4, !tbaa !30
  %i.eb = sext i32 %.val.i92 to i64
  %i.ec = icmp slt i64 %indvars.iv.next.i91, %i.eb
  br i1 %i.ec, label %.lr.ph.i85, label %Vec_IntAppend.exit101, !llvm.loop !103

Vec_IntAppend.exit101:                            ; preds = %Vec_IntPush.exit.i90, %Vec_IntAppend.exit83
  %i.ed = load ptr, ptr %i.n, align 8, !tbaa !32  ; 2 uses
  %.not.i = icmp eq ptr %i.ed, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.au

bb.au:                                            ; preds = %Vec_IntAppend.exit101
  tail call void @free(ptr noundef nonnull %i.ed) #17
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Vec_IntAppend.exit101, %bb.au
  tail call void @free(ptr noundef nonnull %i.h) #17
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse.outer, %tailrecurse, %bb.a, %Vec_IntFree.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @Fra_ClauMinimizeClause(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 4          ; 6 uses
  %.val32 = load i32, ptr %i.a, align 4, !tbaa !30 ; 3 uses
  %i.b = icmp sgt i32 %.val32, 0
  br i1 %i.b, label %.lr.ph45, label %.critedge

.lr.ph45:                                         ; preds = %bb.a
  %i.c = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %3 = add nsw i32 %.val32, -1
  %i.f = zext nneg i32 %3 to i64
  %i.g = zext nneg i32 %.val32 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph45, %bb.n
  %indvars.iv53 = phi i64 [ %i.g, %.lr.ph45 ], [ %indvars.iv.next54, %bb.n ] ; 3 uses
  %indvars.iv48.in = phi i64 [ %i.f, %.lr.ph45 ], [ %indvars.iv.next49, %bb.n ] ; 2 uses
  %indvars.iv.next54 = add nsw i64 %indvars.iv53, -1 ; 2 uses
  store i32 0, ptr %i.d, align 4, !tbaa !30
  %.val3137 = load i32, ptr %i.a, align 4, !tbaa !30 ; 2 uses
  %i.h = icmp sgt i32 %.val3137, 0
  br i1 %i.h, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.b, %bb.l
  %.val3158 = phi i32 [ %.val31, %bb.l ], [ %.val3137, %bb.b ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 0, %bb.b ] ; 3 uses
  %.val34 = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val34, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !34
  %.not29 = icmp eq i64 %indvars.iv, %indvars.iv.next54
  br i1 %.not29, label %bb.l, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.k = load i32, ptr %i.d, align 4, !tbaa !30   ; 7 uses
  %i.l = load i32, ptr %1, align 8, !tbaa !31
  %i.m = icmp eq i32 %i.k, %i.l
  br i1 %i.m, label %bb.d, label %.Vec_IntPush.exit_crit_edge

.Vec_IntPush.exit_crit_edge:                      ; preds = %bb.c
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !32
  br label %Vec_IntPush.exit

bb.d:                                             ; preds = %bb.c
  %i.n = icmp slt i32 %i.k, 16
  br i1 %i.n, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !32   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.o, i64 noundef 64) #16
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.q = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #15
  br label %Vec_IntGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.r = icmp samesign ult i32 %i.k, 1073741823
  %i.s = shl nuw nsw i32 %i.k, 1
  %spec.select.i = select i1 %i.r, i32 %i.s, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.k, %spec.select.i
  %.pre56 = load ptr, ptr %i.e, align 8, !tbaa !32 ; 3 uses
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i10.i = icmp eq ptr %.pre56, null
  %i.t = zext nneg i32 %spec.select.i to i64
  %i.u = shl nuw nsw i64 %i.t, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = tail call ptr @realloc(ptr noundef nonnull %.pre56, i64 noundef %i.u) #16
  br label %Vec_IntGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.u) #15
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %bb.k, %bb.f, %bb.g
  %i.x = phi ptr [ %i.q, %bb.g ], [ %i.p, %bb.f ], [ %i.v, %bb.j ], [ %i.w, %bb.k ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ]
  store ptr %i.x, ptr %i.e, align 8, !tbaa !32
  store i32 %spec.select.sink.i, ptr %1, align 8, !tbaa !31
  %.pre57 = load i32, ptr %i.d, align 4, !tbaa !30
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.Vec_IntPush.exit_crit_edge, %bb.h, %Vec_IntGrow.exit11.sink.split.i
  %i.y = phi i32 [ %i.k, %.Vec_IntPush.exit_crit_edge ], [ %i.k, %bb.h ], [ %.pre57, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.z = phi ptr [ %.pre, %.Vec_IntPush.exit_crit_edge ], [ %.pre56, %bb.h ], [ %i.x, %Vec_IntGrow.exit11.sink.split.i ]
  %i.aa = add nsw i32 %i.y, 1
  store i32 %i.aa, ptr %i.d, align 4, !tbaa !30
  %i.ab = sext i32 %i.y to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ab
  store i32 %i.j, ptr %i.ac, align 4, !tbaa !34
  %.val31.pre = load i32, ptr %i.a, align 4, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %.val31 = phi i32 [ %.val3158, %.lr.ph ], [ %.val31.pre, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = sext i32 %.val31 to i64
  %i.ae = icmp slt i64 %indvars.iv.next, %i.ad
  br i1 %i.ae, label %.lr.ph, label %.critedge2, !llvm.loop !104

.critedge2:                                       ; preds = %bb.l, %bb.b
  %i.af = tail call i32 @Fra_ClauCheckClause(ptr noundef %0, ptr noundef %1, ptr noundef null)
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.n, label %.preheader

.preheader:                                       ; preds = %.critedge2
  %.val3039 = load i32, ptr %i.a, align 4, !tbaa !30 ; 2 uses
  %i.ag = add nsw i32 %.val3039, -1
  %i.ah = sext i32 %.val3039 to i64
  %i.ai = icmp slt i64 %indvars.iv53, %i.ah
  br i1 %i.ai, label %.lr.ph41, label %._crit_edge

.lr.ph41:                                         ; preds = %.preheader
  %.val33 = load ptr, ptr %i.c, align 8, !tbaa !32 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph41, %bb.m
  %indvars.iv50 = phi i64 [ %indvars.iv48.in, %.lr.ph41 ], [ %indvars.iv.next51, %bb.m ] ; 2 uses
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.val33, i64 %indvars.iv.next51
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !34
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.val33, i64 %indvars.iv50
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !34
  %.val30 = load i32, ptr %i.a, align 4, !tbaa !30
  %i.am = add nsw i32 %.val30, -1                 ; 2 uses
  %4 = trunc nuw i64 %indvars.iv.next51 to i32
  %5 = icmp sgt i32 %i.am, %4
  br i1 %5, label %bb.m, label %._crit_edge, !llvm.loop !105

._crit_edge:                                      ; preds = %bb.m, %.preheader
  %.lcssa = phi i32 [ %i.ag, %.preheader ], [ %i.am, %bb.m ]
  store i32 %.lcssa, ptr %i.a, align 4, !tbaa !30
  br label %bb.n

bb.n:                                             ; preds = %.critedge2, %._crit_edge
  %i.an = icmp sgt i64 %indvars.iv53, 1
  %indvars.iv.next49 = add nsw i64 %indvars.iv48.in, -1
  br i1 %i.an, label %bb.b, label %.critedge, !llvm.loop !106

.critedge:                                        ; preds = %bb.n, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Fra_ClauPrintClause(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %i.b = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val2023 = load i32, ptr %i.b, align 4, !tbaa !30
  %i.c = icmp sgt i32 %.val2023, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.025 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.g ]  ; 5 uses
  %.01624 = phi i32 [ 0, %.lr.ph ], [ %.117, %bb.g ] ; 4 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !30
  %i.f = icmp slt i32 %.025, %.val
  br i1 %i.f, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %.val22 = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.g = sext i32 %.01624 to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %.val22, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !34   ; 2 uses
  %i.j = ashr i32 %i.i, 1                         ; 2 uses
  %.val21 = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.k = sext i32 %.025 to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %.val21, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !34   ; 2 uses
  %i.n = icmp slt i32 %i.j, %i.m
  br i1 %i.n, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp sgt i32 %i.j, %i.m
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %.025, 1
  %putchar = tail call i32 @putchar(i32 45)       ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = add nsw i32 %.01624, 1
  %i.r = add nsw i32 %.025, 1
  %i.s = and i32 %i.i, 1
  %i.t = xor i32 %i.s, 1
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.t) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.117 = phi i32 [ %.01624, %bb.c ], [ %.01624, %bb.e ], [ %i.q, %bb.f ] ; 2 uses
  %.1 = phi i32 [ %.025, %bb.c ], [ %i.p, %bb.e ], [ %i.r, %bb.f ]
  %.val20 = load i32, ptr %i.b, align 4, !tbaa !30
  %i.v = icmp slt i32 %.117, %.val20
  br i1 %i.v, label %bb.b, label %.critedge, !llvm.loop !4

.critedge:                                        ; preds = %bb.b, %bb.g, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Fra_Clau(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @Fra_ClauStart(ptr noundef %0) ; 19 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %i.e = tail call i32 @Fra_ClauCheckProperty(ptr noundef nonnull %i.a, ptr noundef %i.d)
  %.not140 = icmp eq i32 %i.e, 0
  %i.f = icmp sgt i32 %1, 0
  %i.g = and i1 %.not140, %i.f
  br i1 %i.g, label %.lr.ph142, label %.loopexit

.lr.ph142:                                        ; preds = %.preheader
  %i.h = icmp ne i32 %2, 0                        ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 5 uses
  %i.k = icmp ne i32 %3, 0
  %or.cond = and i1 %i.h, %i.k                    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.be

bb.c:                                             ; preds = %.lr.ph142, %bb.bb
  %i.s = phi ptr [ %i.d, %.lr.ph142 ], [ %i.gw, %bb.bb ] ; 2 uses
  %.081141 = phi i32 [ 0, %.lr.ph142 ], [ %i.gv, %bb.bb ] ; 4 uses
  br i1 %i.h, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !57   ; 2 uses
  tail call void @Fra_ClauRemapClause(ptr noundef %i.t, ptr noundef %i.s, ptr noundef %i.u, i32 noundef 0)
  br label %Fra_ClauPrintClause.exit

bb.d:                                             ; preds = %bb.c
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %.081141) ; 0 uses
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !57   ; 7 uses
  tail call void @Fra_ClauRemapClause(ptr noundef %i.w, ptr noundef %i.s, ptr noundef %i.x, i32 noundef 0)
  br i1 %or.cond, label %bb.e, label %Fra_ClauPrintClause.exit

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !53   ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 4
  %i.aa = getelementptr i8, ptr %i.x, i64 4       ; 2 uses
  %.val2023.i = load i32, ptr %i.aa, align 4, !tbaa !30
  %i.ab = icmp sgt i32 %.val2023.i, 0
  br i1 %i.ab, label %.lr.ph.i, label %Fra_ClauPrintClause.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.ac = getelementptr i8, ptr %i.x, i64 8
  %i.ad = getelementptr i8, ptr %i.y, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.k, %.lr.ph.i
  %.025.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.k ] ; 5 uses
  %.01624.i = phi i32 [ 0, %.lr.ph.i ], [ %.117.i, %bb.k ] ; 4 uses
  %.val.i = load i32, ptr %i.z, align 4, !tbaa !30
  %i.ae = icmp slt i32 %.025.i, %.val.i
  br i1 %i.ae, label %bb.g, label %Fra_ClauPrintClause.exit

bb.g:                                             ; preds = %bb.f
  %.val22.i = load ptr, ptr %i.ac, align 8, !tbaa !32
  %i.af = sext i32 %.01624.i to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %.val22.i, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !34 ; 2 uses
  %i.ai = ashr i32 %i.ah, 1                       ; 2 uses
  %.val21.i = load ptr, ptr %i.ad, align 8, !tbaa !32
  %i.aj = sext i32 %.025.i to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %.val21.i, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !34 ; 2 uses
  %i.am = icmp slt i32 %i.ai, %i.al
  br i1 %i.am, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = icmp sgt i32 %i.ai, %i.al
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = add nsw i32 %.025.i, 1
  %putchar.i = tail call i32 @putchar(i32 45)     ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ap = add nsw i32 %.01624.i, 1
  %i.aq = add nsw i32 %.025.i, 1
  %i.ar = and i32 %i.ah, 1
  %i.as = xor i32 %i.ar, 1
  %i.at = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.as) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.117.i = phi i32 [ %.01624.i, %bb.g ], [ %.01624.i, %bb.i ], [ %i.ap, %bb.j ] ; 2 uses
  %.1.i = phi i32 [ %.025.i, %bb.g ], [ %i.ao, %bb.i ], [ %i.aq, %bb.j ]
  %.val20.i = load i32, ptr %i.aa, align 4, !tbaa !30
  %i.au = icmp slt i32 %.117.i, %.val20.i
  br i1 %i.au, label %bb.f, label %Fra_ClauPrintClause.exit, !llvm.loop !4

Fra_ClauPrintClause.exit:                         ; preds = %bb.k, %bb.f, %.thread, %bb.e, %bb.d
  %i.av = phi ptr [ %i.u, %.thread ], [ %i.x, %bb.d ], [ %i.x, %bb.e ], [ %i.x, %bb.f ], [ %i.x, %bb.k ]
  %i.aw = load ptr, ptr %i.m, align 8, !tbaa !58
  %i.ax = tail call i32 @Fra_ClauCheckClause(ptr noundef nonnull %i.a, ptr noundef %i.av, ptr noundef %i.aw)
  %.not85.not138 = icmp eq i32 %i.ax, 0
  br i1 %.not85.not138, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Fra_ClauPrintClause.exit, %bb.ac
  %.0139 = phi i32 [ %i.dz, %bb.ac ], [ 0, %Fra_ClauPrintClause.exit ] ; 2 uses
  %i.ay = load ptr, ptr %i.j, align 8, !tbaa !57  ; 4 uses
  %i.az = load ptr, ptr %i.m, align 8, !tbaa !58  ; 3 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 4
  %i.bb = getelementptr i8, ptr %i.ay, i64 4      ; 5 uses
  %.val3034.i = load i32, ptr %i.bb, align 4, !tbaa !30 ; 2 uses
  %i.bc = icmp sgt i32 %.val3034.i, 0
  br i1 %i.bc, label %.lr.ph.i100, label %Fra_ClauReduceClause.exit

.lr.ph.i100:                                      ; preds = %.lr.ph
  %i.bd = getelementptr i8, ptr %i.ay, i64 8
end_hunk_0
