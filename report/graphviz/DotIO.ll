Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/DotIO?download=true
inline.NumInlined: 61
inline.NumDeleted: 18
begin_hunk_0_@Import_coord_clusters_from_dot:bb.a
  %i.px = call ptr @agnxtnode(ptr noundef nonnull %0, ptr noundef nonnull %.7468) #19 ; 2 uses
  %.not313 = icmp eq ptr %i.px, null
  br i1 %.not313, label %._crit_edge471, label %.lr.ph470, !llvm.loop !72

.thread:                                          ; preds = %.lr.ph470
  %i.py = call ptr @agget(ptr noundef nonnull %.7468, ptr noundef nonnull @.str.5) #19
  %i.pz = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.py, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #19 ; 0 uses
  %i.qa = load double, ptr %i.g, align 8, !tbaa !29
  %i.qb = load ptr, ptr %5, align 8, !tbaa !35
  %i.qc = mul nsw i32 %i.pp, %2
  %i.qd = sext i32 %i.qc to i64
  %i.qe = getelementptr inbounds [8 x i8], ptr %i.qb, i64 %i.qd ; 2 uses
  store double %i.qa, ptr %i.qe, align 8, !tbaa !29
  %i.qf = load double, ptr %i.h, align 8, !tbaa !29
  %i.qg = getelementptr i8, ptr %i.qe, i64 8
  store double %i.qf, ptr %i.qg, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  %i.qh = call ptr @agnxtnode(ptr noundef nonnull %0, ptr noundef nonnull %.7468) #19 ; 2 uses
  %.not313528 = icmp eq ptr %i.qh, null
  br i1 %.not313528, label %._crit_edge471.thread, label %.lr.ph470.outer, !llvm.loop !72

._crit_edge471:                                   ; preds = %bb.dm
  br i1 %.0469.ph, label %._crit_edge471.thread, label %.critedge

.critedge:                                        ; preds = %gv_calloc.exit401, %._crit_edge471
  %i.qi = load ptr, ptr %5, align 8, !tbaa !35
  call void @free(ptr noundef %i.qi) #19
  store ptr null, ptr %5, align 8, !tbaa !35
  br label %._crit_edge471.thread

._crit_edge471.thread:                            ; preds = %.thread, %.critedge, %._crit_edge471
  call void @free(ptr noundef %i.an) #19
  call void @free(ptr noundef %i.am) #19
  call void @free(ptr noundef %i.ao) #19
  br label %bb.dn

bb.dn:                                            ; preds = %bb.l, %._crit_edge471.thread
  %.0270 = phi ptr [ %i.ch, %._crit_edge471.thread ], [ null, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.0270
}

declare ptr @agfstsubg(ptr noundef) local_unnamed_addr #2

declare ptr @agnxtsubg(ptr noundef) local_unnamed_addr #2

declare void @mq_clustering(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @modularity_clustering(ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #8

declare ptr @agget(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @colorxlate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define void @attached_clustering(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca double, align 8                   ; 6 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca double, align 8                   ; 5 uses
  %3 = alloca %struct.itos_, align 1              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @agnnodes(ptr noundef nonnull %0) #19 ; 8 uses
  %i.f = tail call i32 @agnedges(ptr noundef nonnull %0) #19 ; 3 uses
  %i.g = tail call ptr @agfstnode(ptr noundef nonnull %0) #19 ; 2 uses
  %.not79104 = icmp eq ptr %i.g, null
  br i1 %.not79104, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.0106 = phi i32 [ %i.h, %.lr.ph ], [ 0, %bb.b ] ; 2 uses
  %.072105 = phi ptr [ %i.l, %.lr.ph ], [ %i.g, %bb.b ] ; 2 uses
  %i.h = add nuw nsw i32 %.0106, 1
  %i.i = getelementptr inbounds nuw i8, ptr %.072105, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 %.0106, ptr %i.k, align 8, !tbaa !23
  %i.l = tail call ptr @agnxtnode(ptr noundef nonnull %0, ptr noundef nonnull %.072105) #19 ; 2 uses
  %.not79 = icmp eq ptr %i.l, null
  br i1 %.not79, label %._crit_edge, label %.lr.ph, !llvm.loop !76

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.m = sext i32 %i.f to i64                     ; 8 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %.thread.i95, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %mul.ov.i = icmp slt i32 %i.f, 0
  br i1 %mul.ov.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.32, i64 noundef %i.m, i64 noundef 4) #22 ; 0 uses
  tail call fastcc void @graphviz_exit() #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = tail call noalias ptr @calloc(i64 noundef %i.m, i64 noundef 4) #24 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %gv_calloc.exit

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.s = shl nuw nsw i64 %i.m, 2
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.33, i64 noundef %i.s) #22 ; 0 uses
  tail call fastcc void @graphviz_exit() #23
  unreachable

gv_calloc.exit:                                   ; preds = %bb.e
  %i.u = tail call noalias ptr @calloc(i64 noundef %i.m, i64 noundef 4) #24 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.g, label %gv_calloc.exit91

bb.g:                                             ; preds = %gv_calloc.exit
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.x = shl nuw nsw i64 %i.m, 2
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.w, ptr noundef nonnull @.str.33, i64 noundef %i.x) #22 ; 0 uses
  tail call fastcc void @graphviz_exit() #23
  unreachable

.thread.i95:                                      ; preds = %._crit_edge
  %i.z = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #24
  %i.aa = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #24
  %i.ab = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #24
  br label %gv_calloc.exit96

gv_calloc.exit91:                                 ; preds = %gv_calloc.exit
  %i.ac = tail call noalias ptr @calloc(i64 noundef %i.m, i64 noundef 8) #24 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.h, label %gv_calloc.exit96

bb.h:                                             ; preds = %gv_calloc.exit91
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.af = shl nuw nsw i64 %i.m, 3
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.33, i64 noundef %i.af) #22 ; 0 uses
  tail call fastcc void @graphviz_exit() #23
  unreachable

gv_calloc.exit96:                                 ; preds = %.thread.i95, %gv_calloc.exit91
  %i.ah = phi ptr [ %i.aa, %.thread.i95 ], [ %i.u, %gv_calloc.exit91 ] ; 4 uses
  %i.ai = phi ptr [ %i.z, %.thread.i95 ], [ %i.p, %gv_calloc.exit91 ] ; 4 uses
  %i.aj = phi ptr [ %i.ab, %.thread.i95 ], [ %i.ac, %gv_calloc.exit91 ] ; 4 uses
  %i.ak = tail call ptr @agattr_text(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef null) #19
  %.fr = freeze ptr %i.ak                         ; 2 uses
  %i.al = tail call ptr @agattr_text(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.16, ptr noundef null) #19 ; 2 uses
  %i.am = tail call ptr @agfstnode(ptr noundef nonnull %0) #19 ; 3 uses
  %.not80113 = icmp eq ptr %i.am, null
  br i1 %.not80113, label %._crit_edge117, label %.lr.ph116

.lr.ph116:                                        ; preds = %gv_calloc.exit96
  %.not85 = icmp eq ptr %.fr, null
  br i1 %.not85, label %.lr.ph116.split.us, label %.lr.ph116.split

.lr.ph116.split.us:                               ; preds = %.lr.ph116, %._crit_edge112.split.us.us
  %.1115.us = phi i32 [ %.2.lcssa.us, %._crit_edge112.split.us.us ], [ 0, %.lr.ph116 ] ; 2 uses
  %.173114.us = phi ptr [ %i.bi, %._crit_edge112.split.us.us ], [ %i.am, %.lr.ph116 ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.173114.us, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !23
  %i.ar = tail call ptr @agfstout(ptr noundef nonnull %0, ptr noundef nonnull %.173114.us) #19 ; 2 uses
  %.not84107.us = icmp eq ptr %i.ar, null
  br i1 %.not84107.us, label %._crit_edge112.split.us.us, label %.lr.ph111.us.preheader

.lr.ph111.us.preheader:                           ; preds = %.lr.ph116.split.us
  %i.as = sext i32 %.1115.us to i64
  br label %.lr.ph111.us

.lr.ph111.us:                                     ; preds = %.lr.ph111.us.preheader, %.lr.ph111.us
  %indvars.iv130 = phi i64 [ %i.as, %.lr.ph111.us.preheader ], [ %indvars.iv.next131, %.lr.ph111.us ] ; 4 uses
  %.071108.us.us = phi ptr [ %i.ar, %.lr.ph111.us.preheader ], [ %i.bg, %.lr.ph111.us ] ; 3 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %indvars.iv130
  store i32 %i.aq, ptr %i.at, align 4, !tbaa !33
  %i.au = load i32, ptr %.071108.us.us, align 8
  %i.av = and i32 %i.au, 3
  %i.aw = icmp eq i32 %i.av, 2
  %i.ax = select i1 %i.aw, i64 56, i64 -8
  %i.ay = getelementptr inbounds i8, ptr %.071108.us.us, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !25
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !19
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !23
  %i.be = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %indvars.iv130
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !33
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %indvars.iv130
  store double 1.000000e+00, ptr %i.bf, align 8, !tbaa !29
  %indvars.iv.next131 = add nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.bg = tail call ptr @agnxtout(ptr noundef nonnull %0, ptr noundef nonnull %.071108.us.us) #19 ; 2 uses
  %.not84.us.us = icmp eq ptr %i.bg, null
  br i1 %.not84.us.us, label %._crit_edge112.split.us.us.loopexit, label %.lr.ph111.us, !llvm.loop !77

._crit_edge112.split.us.us.loopexit:              ; preds = %.lr.ph111.us
  %i.bh = trunc nsw i64 %indvars.iv.next131 to i32
  br label %._crit_edge112.split.us.us

._crit_edge112.split.us.us:                       ; preds = %._crit_edge112.split.us.us.loopexit, %.lr.ph116.split.us
  %.2.lcssa.us = phi i32 [ %.1115.us, %.lr.ph116.split.us ], [ %i.bh, %._crit_edge112.split.us.us.loopexit ]
  %i.bi = tail call ptr @agnxtnode(ptr noundef nonnull %0, ptr noundef nonnull %.173114.us) #19 ; 2 uses
  %.not80.us = icmp eq ptr %i.bi, null
  br i1 %.not80.us, label %._crit_edge117.split.us, label %.lr.ph116.split.us, !llvm.loop !78

._crit_edge117.split.us:                          ; preds = %._crit_edge112.split.us.us
  store double 1.000000e+00, ptr %i.b, align 8
  br label %._crit_edge117

.lr.ph116.split:                                  ; preds = %.lr.ph116, %._crit_edge112.split
  %.1115 = phi i32 [ %.2.lcssa, %._crit_edge112.split ], [ 0, %.lr.ph116 ] ; 2 uses
  %.173114 = phi ptr [ %i.ch, %._crit_edge112.split ], [ %i.am, %.lr.ph116 ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.173114, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !23
  %i.bn = call ptr @agfstout(ptr noundef nonnull %0, ptr noundef nonnull %.173114) #19 ; 2 uses
  %.not84107 = icmp eq ptr %i.bn, null
  br i1 %.not84107, label %._crit_edge112.split, label %.lr.ph111.preheader

.lr.ph111.preheader:                              ; preds = %.lr.ph116.split
  %i.bo = sext i32 %.1115 to i64
  br label %.lr.ph111

.lr.ph111:                                        ; preds = %.lr.ph111.preheader, %bb.j
  %indvars.iv = phi i64 [ %i.bo, %.lr.ph111.preheader ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %.071108 = phi ptr [ %i.bn, %.lr.ph111.preheader ], [ %i.cf, %bb.j ] ; 4 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %indvars.iv
  store i32 %i.bm, ptr %i.bp, align 4, !tbaa !33
  %i.bq = load i32, ptr %.071108, align 8
  %i.br = and i32 %i.bq, 3
  %i.bs = icmp eq i32 %i.br, 2
  %i.bt = select i1 %i.bs, i64 56, i64 -8
  %i.bu = getelementptr inbounds i8, ptr %.071108, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !25
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !19
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !23
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %indvars.iv
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !33
  %i.cb = call ptr @agxget(ptr noundef nonnull %.071108, ptr noundef nonnull %.fr) #19
  %i.cc = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.cb, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.b) #19
  %.not86 = icmp eq i32 %i.cc, 1
  br i1 %.not86, label %.lr.ph111._crit_edge, label %bb.i

.lr.ph111._crit_edge:                             ; preds = %.lr.ph111
  %.pre = load double, ptr %i.b, align 8, !tbaa !29
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph111
  store double 1.000000e+00, ptr %i.b, align 8, !tbaa !29
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph111._crit_edge, %bb.i
  %i.cd = phi double [ %.pre, %.lr.ph111._crit_edge ], [ 1.000000e+00, %bb.i ]
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %indvars.iv
  store double %i.cd, ptr %i.ce, align 8, !tbaa !29
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cf = call ptr @agnxtout(ptr noundef nonnull %0, ptr noundef nonnull %.071108) #19 ; 2 uses
  %.not84 = icmp eq ptr %i.cf, null
  br i1 %.not84, label %._crit_edge112.split.loopexit, label %.lr.ph111, !llvm.loop !77

._crit_edge112.split.loopexit:                    ; preds = %bb.j
  %i.cg = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge112.split

._crit_edge112.split:                             ; preds = %._crit_edge112.split.loopexit, %.lr.ph116.split
  %.2.lcssa = phi i32 [ %.1115, %.lr.ph116.split ], [ %i.cg, %._crit_edge112.split.loopexit ]
  %i.ch = call ptr @agnxtnode(ptr noundef nonnull %0, ptr noundef nonnull %.173114) #19 ; 2 uses
  %.not80 = icmp eq ptr %i.ch, null
  br i1 %.not80, label %._crit_edge117, label %.lr.ph116.split, !llvm.loop !78

._crit_edge117:                                   ; preds = %._crit_edge112.split, %._crit_edge117.split.us, %gv_calloc.exit96
  %i.ci = call ptr @SparseMatrix_from_coordinate_arrays(i64 noundef %i.m, i32 noundef %i.e, i32 noundef %i.e, ptr noundef %i.ai, ptr noundef %i.ah, ptr noundef %i.aj, i32 noundef 1, i64 noundef 8) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.cj = sext i32 %i.e to i64                    ; 3 uses
  %.not.i97 = icmp eq i32 %i.e, 0
  br i1 %.not.i97, label %.thread.i100, label %bb.k

.thread.i100:                                     ; preds = %._crit_edge117
  %i.ck = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #24
  br label %gv_calloc.exit101

bb.k:                                             ; preds = %._crit_edge117
  %mul.ov.i99 = icmp slt i32 %i.e, 0
  br i1 %mul.ov.i99, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cl = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.cm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cl, ptr noundef nonnull @.str.32, i64 noundef %i.cj, i64 noundef 4) #22 ; 0 uses
  call fastcc void @graphviz_exit() #23
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cn = call noalias ptr @calloc(i64 noundef %i.cj, i64 noundef 4) #24 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.n, label %gv_calloc.exit101

bb.n:                                             ; preds = %bb.m
  %i.cp = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.cq = shl nuw nsw i64 %i.cj, 2
  %i.cr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cp, ptr noundef nonnull @.str.33, i64 noundef %i.cq) #22 ; 0 uses
  call fastcc void @graphviz_exit() #23
  unreachable

gv_calloc.exit101:                                ; preds = %.thread.i100, %bb.m
  %i.cs = phi ptr [ %i.ck, %.thread.i100 ], [ %i.cn, %bb.m ]
  store ptr %i.cs, ptr %i.c, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %.not81 = icmp eq ptr %i.al, null
  br i1 %.not81, label %bb.o, label %bb.p

bb.o:                                             ; preds = %gv_calloc.exit101
  %i.ct = call ptr @agattr_text(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15) #19
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %gv_calloc.exit101
  %.070 = phi ptr [ %i.al, %gv_calloc.exit101 ], [ %i.ct, %bb.o ]
  switch i32 %2, label %bb.s [
    i32 1, label %bb.q
    i32 0, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  call void @mq_clustering(ptr noundef %i.ci, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #19
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  call void @modularity_clustering(ptr noundef %i.ci, i1 noundef zeroext false, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #19
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.cu = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.cv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cu, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 630) #22 ; 0 uses
  call void @abort() #27
  unreachable

bb.t:                                             ; preds = %bb.r, %bb.q
  %.not152 = icmp eq i32 %i.e, 0
  br i1 %.not152, label %._crit_edge121, label %.lr.ph120

.lr.ph120:                                        ; preds = %bb.t
  %i.cw = load ptr, ptr %i.c, align 8, !tbaa !42  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.e, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph120
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %index ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cx, align 4, !tbaa !33
  %wide.load154 = load <4 x i32>, ptr %i.cy, align 4, !tbaa !33
  %i.cz = add nsw <4 x i32> %wide.load, splat (i32 1)
  %i.da = add nsw <4 x i32> %wide.load154, splat (i32 1)
  store <4 x i32> %i.cz, ptr %i.cx, align 4, !tbaa !33
  store <4 x i32> %i.da, ptr %i.cy, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge121, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph120, %middle.block
  %indvars.iv133.ph = phi i64 [ 0, %.lr.ph120 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %scalar.ph ], [ %indvars.iv133.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv133 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !33
  %i.de = add nsw i32 %i.dd, 1
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !33
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge121, label %scalar.ph, !llvm.loop !80

._crit_edge121:                                   ; preds = %scalar.ph, %middle.block, %bb.t
  %i.df = call ptr @agfstnode(ptr noundef nonnull %0) #19 ; 2 uses
  %.not82122 = icmp eq ptr %i.df, null
  br i1 %.not82122, label %._crit_edge126, label %.lr.ph125

.lr.ph125:                                        ; preds = %._crit_edge121, %.lr.ph125
  %.274123 = phi ptr [ %i.dr, %.lr.ph125 ], [ %i.df, %._crit_edge121 ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.274123, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !19
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.dk = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.dl = sext i32 %i.dj to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !33
  %i.do = sext i32 %i.dn to i64
  %i.dp = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef 41, ptr noundef nonnull @.str.34, i64 noundef range(i64 -2147483648, 2147483648) %i.do) #19 ; 0 uses
  %i.dq = call i32 @agxset(ptr noundef nonnull %.274123, ptr noundef %.070, ptr noundef nonnull %3) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.dr = call ptr @agnxtnode(ptr noundef nonnull %0, ptr noundef nonnull %.274123) #19 ; 2 uses
  %.not82 = icmp eq ptr %i.dr, null
  br i1 %.not82, label %._crit_edge126, label %.lr.ph125, !llvm.loop !81

._crit_edge126:                                   ; preds = %.lr.ph125, %._crit_edge121
  %i.ds = load i8, ptr @Verbose, align 1, !tbaa !30
  %.not83 = icmp eq i8 %i.ds, 0
  br i1 %.not83, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge126
  %i.dt = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.du = load double, ptr %i.d, align 8, !tbaa !29
  %i.dv = load i32, ptr %i.a, align 4, !tbaa !33
  %i.dw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dt, ptr noundef nonnull @.str.21, double noundef %i.du, i32 noundef %i.dv) #22 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @free(ptr noundef %i.ai) #19
  call void @free(ptr noundef %i.ah) #19
  call void @free(ptr noundef %i.aj) #19
  %i.dx = load ptr, ptr %i.c, align 8, !tbaa !42
  call void @free(ptr noundef %i.dx) #19
  call void @SparseMatrix_delete(ptr noundef %i.ci) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: nounwind uwtable
define void @initDotIO(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @aginit(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.29, i32 noundef 24, i32 noundef 1) #19
  ret void
}

declare void @aginit(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @setDotNodeID(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %1, ptr %i.c, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @getDotNodeID(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !23
  ret i32 %i.d
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @agxbprint(ptr nofree noundef nonnull captures(none) %0, ptr nofree readnone captures(none) %1, ...) unnamed_addr #12 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = alloca [32 x i8], align 16               ; 7 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.va_start.p0(ptr nonnull %3)
end_hunk_0
