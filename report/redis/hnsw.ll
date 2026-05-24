inline.NumInlined: 98
inline.NumDeleted: 4
begin_hunk_0_@hnsw_free:bb.a
  %i.bx = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.bw) #34 ; 0 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.bz = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.by) #34 ; 0 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.cb = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.ca) #34 ; 0 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.cd = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.cc) #34 ; 0 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.cf = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.ce) #34 ; 0 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.ch = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.cg) #34 ; 0 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.cj = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.ci) #34 ; 0 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.cl = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.ck) #34 ; 0 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.cn = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.cm) #34 ; 0 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1560
  %i.cp = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.co) #34 ; 0 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.cr = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.cq) #34 ; 0 uses
  %i.cs = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.cs(ptr noundef nonnull %0) #34
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @hnsw_add_node(ptr noundef captures(none) %0, ptr noundef initializes((296, 312)) %1) local_unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 304
  store ptr %i.b, ptr %i.c, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 296
  store ptr null, ptr %i.d, align 8, !tbaa !26
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !140  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  store ptr %1, ptr %i.f, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %1, ptr %i.a, align 8, !tbaa !140
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !93
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.g, align 8, !tbaa !93
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @search_layer_with_filter(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly captures(address_is_null) %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = zext i32 %5 to i64                       ; 4 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !13
  %i.f = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.g = tail call ptr %i.f(i64 noundef 16) #34, !inline_history !143 ; 6 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %pq_new.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.i = tail call ptr %i.h(i64 noundef 4096) #34, !inline_history !143 ; 2 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !17
  %.not10.i = icmp eq ptr %i.i, null
  br i1 %.not10.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.j(ptr noundef nonnull %i.g) #34, !inline_history !143
  br label %pq_new.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 0, ptr %i.k, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 256, ptr %i.l, align 4, !tbaa !20
  br label %pq_new.exit

pq_new.exit:                                      ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.g, %bb.d ], [ null, %bb.c ], [ null, %bb.a ] ; 24 uses
  %i.m = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.n = tail call ptr %i.m(i64 noundef 16) #34, !inline_history !143 ; 25 uses
  %.not.i107 = icmp eq ptr %i.n, null
  br i1 %.not.i107, label %pq_new.exit110.thread, label %bb.e

bb.e:                                             ; preds = %pq_new.exit
  %i.o = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.p = zext i32 %3 to i64
  %i.q = shl nuw nsw i64 %i.p, 4
  %i.r = tail call ptr %i.o(i64 noundef %i.q) #34, !inline_history !143 ; 3 uses
  store ptr %i.r, ptr %i.n, align 8, !tbaa !17
  %.not10.i108 = icmp eq ptr %i.r, null
  br i1 %.not10.i108, label %bb.f, label %pq_new.exit110

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.s(ptr noundef nonnull %i.n) #34, !inline_history !143
  br label %pq_new.exit110.thread

pq_new.exit110.thread:                            ; preds = %bb.f, %pq_new.exit
  %.not253 = icmp eq ptr %.0.i, null
  br i1 %.not253, label %.thread, label %pq_free.exit

pq_new.exit110:                                   ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 14 uses
  store i32 0, ptr %i.t, align 8, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 12 ; 7 uses
  store i32 %3, ptr %i.u, align 4, !tbaa !20
  %.not249 = icmp eq ptr %.0.i, null
  br i1 %.not249, label %pq_free.exit113, label %bb.g

pq_free.exit:                                     ; preds = %pq_new.exit110.thread
  %i.v = load ptr, ptr @hfree, align 8, !tbaa !15
  %i.w = load ptr, ptr %.0.i, align 8, !tbaa !17
  tail call void %i.v(ptr noundef %i.w) #34, !inline_history !144
  br label %.thread.sink.split

pq_free.exit113:                                  ; preds = %pq_new.exit110
  %i.x = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.x(ptr noundef nonnull %i.r) #34, !inline_history !144
  br label %.thread.sink.split

bb.g:                                             ; preds = %pq_new.exit110
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1656 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !71
  switch i32 %i.z, label %bb.k [
    i32 0, label %bb.h
    i32 1, label %bb.i
    i32 2, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !74
  %i.ag = tail call float @vectors_distance_float(ptr noundef %i.ab, ptr noundef %i.ad, i32 noundef %i.af)
  br label %hnsw_distance.exit

bb.i:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !74
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = load float, ptr %i.an, align 8, !tbaa !27
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !27
  %i.ar = tail call float @vectors_distance_q8(ptr noundef %i.ai, ptr noundef %i.ak, i32 noundef %i.am, float noundef %i.ao, float noundef %i.aq)
  br label %hnsw_distance.exit

bb.j:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !15
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !15
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !74
  %i.ay = tail call float @vectors_distance_bin(ptr noundef %i.at, ptr noundef %i.av, i32 noundef %i.ax)
  br label %hnsw_distance.exit

bb.k:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @__PRETTY_FUNCTION__.hnsw_distance) #35
  unreachable

hnsw_distance.exit:                               ; preds = %bb.h, %bb.i, %bb.j
  %.0.i114 = phi float [ %i.ag, %bb.h ], [ %i.ar, %bb.i ], [ %i.ay, %bb.j ] ; 10 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 12 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !19 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i, i64 12 ; 6 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !20 ; 2 uses
  %i.bd = icmp ult i32 %i.ba, %i.bc
  br i1 %i.bd, label %.preheader.i, label %bb.m

.preheader.i:                                     ; preds = %hnsw_distance.exit
  %.not45.i = icmp eq i32 %i.ba, 0
  br i1 %.not45.i, label %.critedge.i, label %.lr.ph47.preheader.i

.lr.ph47.preheader.i:                             ; preds = %.preheader.i
  %i.be = zext i32 %i.ba to i64
  br label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.l, %.lr.ph47.preheader.i
  %indvars.iv53.i = phi i64 [ %i.be, %.lr.ph47.preheader.i ], [ %indvars.iv.next54.i, %bb.l ] ; 3 uses
  %i.bf = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 2 uses
  %indvars.iv.next54.i = add nsw i64 %indvars.iv53.i, -1 ; 3 uses
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %indvars.iv.next54.i ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load float, ptr %i.bh, align 8, !tbaa !21
  %i.bj = fcmp olt float %i.bi, %.0.i114
  br i1 %i.bj, label %bb.l, label %.critedge.loopexit.i

bb.l:                                             ; preds = %.lr.ph47.i
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %indvars.iv53.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 16, i1 false), !tbaa.struct !25
  %.not.i115 = icmp eq i64 %indvars.iv.next54.i, 0
  br i1 %.not.i115, label %.critedge.loopexit.i, label %.lr.ph47.i, !llvm.loop !28

.critedge.loopexit.i:                             ; preds = %bb.l, %.lr.ph47.i
  %.038.lcssa.ph.i = phi i64 [ %indvars.iv53.i, %.lr.ph47.i ], [ 0, %bb.l ]
  %.pre57.i = load i32, ptr %i.az, align 8, !tbaa !19
  %i.bl = add i32 %.pre57.i, 1
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader.i
  %i.bm = phi i32 [ 1, %.preheader.i ], [ %i.bl, %.critedge.loopexit.i ]
  %.038.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %.038.lcssa.ph.i, %.critedge.loopexit.i ]
  %i.bn = load ptr, ptr %.0.i, align 8, !tbaa !17
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %.038.lcssa.i ; 2 uses
  store ptr %2, ptr %i.bo, align 8, !tbaa !30
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store float %.0.i114, ptr %i.bp, align 8, !tbaa !21
  store i32 %i.bm, ptr %i.az, align 8, !tbaa !19
  br label %pq_push.exit

bb.m:                                             ; preds = %hnsw_distance.exit
  %i.bq = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load float, ptr %i.br, align 8, !tbaa !21
  %i.bt = fcmp ult float %.0.i114, %i.bs
  br i1 %i.bt, label %.preheader41.i, label %pq_push.exit

.preheader41.i:                                   ; preds = %bb.m
  %.not51.i = icmp eq i32 %i.bc, 1
  br i1 %.not51.i, label %.critedge2.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader41.i, %bb.n
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.n ], [ 0, %.preheader41.i ] ; 3 uses
  %i.bu = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %indvars.iv.next.i ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load float, ptr %i.bw, align 8, !tbaa !21
  %i.by = fcmp ogt float %i.bx, %.0.i114
  br i1 %i.by, label %bb.n, label %.critedge2.i

bb.n:                                             ; preds = %.lr.ph.i
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %indvars.iv.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !tbaa.struct !25
  %i.ca = load i32, ptr %i.bb, align 4, !tbaa !20
  %i.cb = add i32 %i.ca, -1
  %i.cc = zext i32 %i.cb to i64
  %i.cd = icmp samesign ult i64 %indvars.iv.next.i, %i.cc
  br i1 %i.cd, label %.lr.ph.i, label %..critedge2.loopexit_crit_edge.i, !llvm.loop !31

..critedge2.loopexit_crit_edge.i:                 ; preds = %bb.n
  %.pre.pre.i = load ptr, ptr %.0.i, align 8, !tbaa !17
  br label %.critedge2.i, !llvm.loop !31

.critedge2.i:                                     ; preds = %.lr.ph.i, %..critedge2.loopexit_crit_edge.i, %.preheader41.i
  %i.ce = phi ptr [ %i.bq, %.preheader41.i ], [ %.pre.pre.i, %..critedge2.loopexit_crit_edge.i ], [ %i.bu, %.lr.ph.i ]
  %.0.lcssa.i = phi i64 [ 0, %.preheader41.i ], [ %indvars.iv.next.i, %..critedge2.loopexit_crit_edge.i ], [ %indvars.iv.i, %.lr.ph.i ]
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %.0.lcssa.i ; 2 uses
  store ptr %2, ptr %i.cf, align 8, !tbaa !30
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store float %.0.i114, ptr %i.cg, align 8, !tbaa !21
  br label %pq_push.exit

pq_push.exit:                                     ; preds = %.critedge.i, %bb.m, %.critedge2.i
  %i.ch = icmp eq ptr %6, null                    ; 3 uses
  br i1 %i.ch, label %bb.p, label %bb.o

bb.o:                                             ; preds = %pq_push.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !15
  %i.ck = tail call i32 %6(ptr noundef %i.cj, ptr noundef %7) #34
  %.not = icmp eq i32 %i.ck, 0
  br i1 %.not, label %pq_push.exit137, label %bb.p

bb.p:                                             ; preds = %bb.o, %pq_push.exit
  %i.cl = load i32, ptr %i.t, align 8, !tbaa !19  ; 3 uses
  %i.cm = load i32, ptr %i.u, align 4, !tbaa !20  ; 2 uses
  %i.cn = icmp ult i32 %i.cl, %i.cm
  br i1 %i.cn, label %.preheader.i125, label %bb.r

.preheader.i125:                                  ; preds = %bb.p
  %.not45.i126 = icmp eq i32 %i.cl, 0
  br i1 %.not45.i126, label %.critedge.i134, label %.lr.ph47.preheader.i127

.lr.ph47.preheader.i127:                          ; preds = %.preheader.i125
  %i.co = zext i32 %i.cl to i64
  br label %.lr.ph47.i128

.lr.ph47.i128:                                    ; preds = %bb.q, %.lr.ph47.preheader.i127
  %indvars.iv53.i129 = phi i64 [ %i.co, %.lr.ph47.preheader.i127 ], [ %indvars.iv.next54.i130, %bb.q ] ; 3 uses
  %i.cp = load ptr, ptr %i.n, align 8, !tbaa !17  ; 2 uses
  %indvars.iv.next54.i130 = add nsw i64 %indvars.iv53.i129, -1 ; 3 uses
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %indvars.iv.next54.i130 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load float, ptr %i.cr, align 8, !tbaa !21
  %i.ct = fcmp olt float %i.cs, %.0.i114
  br i1 %i.ct, label %bb.q, label %.critedge.loopexit.i131

bb.q:                                             ; preds = %.lr.ph47.i128
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %indvars.iv53.i129
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i64 16, i1 false), !tbaa.struct !25
  %.not.i136 = icmp eq i64 %indvars.iv.next54.i130, 0
  br i1 %.not.i136, label %.critedge.loopexit.i131, label %.lr.ph47.i128, !llvm.loop !28

.critedge.loopexit.i131:                          ; preds = %bb.q, %.lr.ph47.i128
  %.038.lcssa.ph.i132 = phi i64 [ %indvars.iv53.i129, %.lr.ph47.i128 ], [ 0, %bb.q ]
  %.pre57.i133 = load i32, ptr %i.t, align 8, !tbaa !19
  %i.cv = add i32 %.pre57.i133, 1
  br label %.critedge.i134

.critedge.i134:                                   ; preds = %.critedge.loopexit.i131, %.preheader.i125
  %i.cw = phi i32 [ 1, %.preheader.i125 ], [ %i.cv, %.critedge.loopexit.i131 ]
  %.038.lcssa.i135 = phi i64 [ 0, %.preheader.i125 ], [ %.038.lcssa.ph.i132, %.critedge.loopexit.i131 ]
  %i.cx = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %.038.lcssa.i135 ; 2 uses
  store ptr %2, ptr %i.cy, align 8, !tbaa !30
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store float %.0.i114, ptr %i.cz, align 8, !tbaa !21
  store i32 %i.cw, ptr %i.t, align 8, !tbaa !19
  br label %pq_push.exit137

bb.r:                                             ; preds = %bb.p
  %i.da = load ptr, ptr %i.n, align 8, !tbaa !17  ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load float, ptr %i.db, align 8, !tbaa !21
  %i.dd = fcmp ult float %.0.i114, %i.dc
  br i1 %i.dd, label %.preheader41.i116, label %pq_push.exit137

.preheader41.i116:                                ; preds = %bb.r
  %.not51.i117 = icmp eq i32 %i.cm, 1
  br i1 %.not51.i117, label %.critedge2.i121, label %.lr.ph.i118

.lr.ph.i118:                                      ; preds = %.preheader41.i116, %bb.s
  %indvars.iv.i119 = phi i64 [ %indvars.iv.next.i120, %bb.s ], [ 0, %.preheader41.i116 ] ; 3 uses
  %i.de = load ptr, ptr %i.n, align 8, !tbaa !17  ; 3 uses
  %indvars.iv.next.i120 = add nuw nsw i64 %indvars.iv.i119, 1 ; 4 uses
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %indvars.iv.next.i120 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load float, ptr %i.dg, align 8, !tbaa !21
  %i.di = fcmp ogt float %i.dh, %.0.i114
  br i1 %i.di, label %bb.s, label %.critedge2.i121

bb.s:                                             ; preds = %.lr.ph.i118
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %indvars.iv.i119
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 16, i1 false), !tbaa.struct !25
  %i.dk = load i32, ptr %i.u, align 4, !tbaa !20
  %i.dl = add i32 %i.dk, -1
  %i.dm = zext i32 %i.dl to i64
  %i.dn = icmp samesign ult i64 %indvars.iv.next.i120, %i.dm
  br i1 %i.dn, label %.lr.ph.i118, label %..critedge2.loopexit_crit_edge.i123, !llvm.loop !31

..critedge2.loopexit_crit_edge.i123:              ; preds = %bb.s
  %.pre.pre.i124 = load ptr, ptr %i.n, align 8, !tbaa !17
  br label %.critedge2.i121, !llvm.loop !31

.critedge2.i121:                                  ; preds = %.lr.ph.i118, %..critedge2.loopexit_crit_edge.i123, %.preheader41.i116
  %i.do = phi ptr [ %i.da, %.preheader41.i116 ], [ %.pre.pre.i124, %..critedge2.loopexit_crit_edge.i123 ], [ %i.de, %.lr.ph.i118 ]
  %.0.lcssa.i122 = phi i64 [ 0, %.preheader41.i116 ], [ %indvars.iv.next.i120, %..critedge2.loopexit_crit_edge.i123 ], [ %indvars.iv.i119, %.lr.ph.i118 ]
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %.0.lcssa.i122 ; 2 uses
  store ptr %2, ptr %i.dp, align 8, !tbaa !30
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store float %.0.i114, ptr %i.dq, align 8, !tbaa !21
  br label %pq_push.exit137

pq_push.exit137:                                  ; preds = %.critedge2.i121, %bb.r, %.critedge.i134, %bb.o
  %i.dr = load i64, ptr %i.c, align 8, !tbaa !13
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.b
  store i64 %i.dr, ptr %i.dt, align 8, !tbaa !13
  %i.du = load i32, ptr %i.az, align 8, !tbaa !19 ; 2 uses
  %.not100278 = icmp eq i32 %i.du, 0
  br i1 %.not100278, label %pq_free.exit233, label %.lr.ph280

.lr.ph280:                                        ; preds = %pq_push.exit137
  %i.dv = icmp eq i32 %8, 0
  %or.cond3.not252 = or i1 %i.ch, %i.dv
  %i.dw = zext i32 %4 to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.t

.loopexit:                                        ; preds = %pq_push.exit187, %pq_push.exit187.us, %.preheader
  %i.ea = load i32, ptr %i.az, align 8, !tbaa !19 ; 2 uses
  %.not100 = icmp eq i32 %i.ea, 0
  br i1 %.not100, label %pq_free.exit233, label %bb.t

bb.t:                                             ; preds = %.lr.ph280, %.loopexit
  %i.eb = phi i32 [ %i.du, %.lr.ph280 ], [ %i.ea, %.loopexit ]
  %.092279 = phi i32 [ 1, %.lr.ph280 ], [ %i.ej, %.loopexit ] ; 2 uses
  %.not101 = icmp ult i32 %.092279, %8
  %or.cond104 = select i1 %or.cond3.not252, i1 true, i1 %.not101
  br i1 %or.cond104, label %pq_pop.exit, label %pq_free.exit233

pq_pop.exit:                                      ; preds = %bb.t
  %i.ec = add i32 %i.eb, -1                       ; 2 uses
  store i32 %i.ec, ptr %i.az, align 8, !tbaa !19
  %i.ed = load ptr, ptr %.0.i, align 8, !tbaa !17
  %i.ee = zext i32 %i.ec to i64
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.ed, i64 %i.ee ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load float, ptr %i.eg, align 8, !tbaa !21
  %i.ei = load ptr, ptr %i.ef, align 8, !tbaa !30
  %i.ej = add i32 %.092279, 1
  %i.ek = load i32, ptr %i.t, align 8, !tbaa !19  ; 2 uses
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %pq_max_distance.exit, label %bb.u

bb.u:                                             ; preds = %pq_pop.exit
  %i.em = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load float, ptr %i.en, align 8, !tbaa !21
  br label %pq_max_distance.exit

pq_max_distance.exit:                             ; preds = %pq_pop.exit, %bb.u
  %.0.i139 = phi float [ %i.eo, %bb.u ], [ +inf, %pq_pop.exit ]
  %.not102 = icmp uge i32 %i.ek, %3
  %i.ep = fcmp ogt float %i.eh, %.0.i139
  %or.cond106 = select i1 %.not102, i1 %i.ep, i1 false
  br i1 %or.cond106, label %pq_free.exit233, label %.preheader

.preheader:                                       ; preds = %pq_max_distance.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ei, i64 312
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %i.eq, i64 %i.dw ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 3 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !133
  %.not282 = icmp eq i32 %i.et, 0
  br i1 %.not282, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  br i1 %i.ch, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %pq_push.exit187.us
  %indvars.iv309 = phi i64 [ %indvars.iv.next310, %pq_push.exit187.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.eu = load ptr, ptr %i.er, align 8, !tbaa !136
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv309
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !26 ; 9 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.b ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !13
  %i.fa = load i64, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.fb = icmp eq i64 %i.ez, %i.fa
  br i1 %i.fb, label %pq_push.exit187.us, label %bb.v

bb.v:                                             ; preds = %.lr.ph.split.us
  store i64 %i.fa, ptr %i.ey, align 8, !tbaa !13
  %i.fc = load i32, ptr %i.y, align 8, !tbaa !71
  switch i32 %i.fc, label %.split.us [
    i32 0, label %bb.y
    i32 1, label %bb.x
    i32 2, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.fd = load ptr, ptr %i.dx, align 8, !tbaa !15
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !15
  %i.fg = load i32, ptr %i.dy, align 8, !tbaa !74
  %i.fh = tail call float @vectors_distance_bin(ptr noundef %i.fd, ptr noundef %i.ff, i32 noundef %i.fg)
  br label %hnsw_distance.exit141.us

bb.x:                                             ; preds = %bb.v
  %i.fi = load ptr, ptr %i.dx, align 8, !tbaa !15
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !15
  %i.fl = load i32, ptr %i.dy, align 8, !tbaa !74
  %i.fm = load float, ptr %i.dz, align 8, !tbaa !27
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.fo = load float, ptr %i.fn, align 8, !tbaa !27
  %i.fp = tail call float @vectors_distance_q8(ptr noundef %i.fi, ptr noundef %i.fk, i32 noundef %i.fl, float noundef %i.fm, float noundef %i.fo)
  br label %hnsw_distance.exit141.us

bb.y:                                             ; preds = %bb.v
  %i.fq = load ptr, ptr %i.dx, align 8, !tbaa !15
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !15
  %i.ft = load i32, ptr %i.dy, align 8, !tbaa !74
  %i.fu = tail call float @vectors_distance_float(ptr noundef %i.fq, ptr noundef %i.fs, i32 noundef %i.ft)
  br label %hnsw_distance.exit141.us

hnsw_distance.exit141.us:                         ; preds = %bb.y, %bb.x, %bb.w
  %.0.i140.us = phi float [ %i.fu, %bb.y ], [ %i.fp, %bb.x ], [ %i.fh, %bb.w ] ; 11 uses
  %i.fv = load i32, ptr %i.t, align 8, !tbaa !19  ; 2 uses
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %pq_max_distance.exit143.us, label %bb.z

bb.z:                                             ; preds = %hnsw_distance.exit141.us
  %i.fx = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load float, ptr %i.fy, align 8, !tbaa !21
  br label %pq_max_distance.exit143.us

pq_max_distance.exit143.us:                       ; preds = %bb.z, %hnsw_distance.exit141.us
  %.0.i142.us = phi float [ %i.fz, %bb.z ], [ +inf, %hnsw_distance.exit141.us ]
  %i.ga = fcmp olt float %.0.i140.us, %.0.i142.us
  %i.gb = icmp ult i32 %i.fv, %3
  %or.cond248.us = or i1 %i.gb, %i.ga
  br i1 %or.cond248.us, label %bb.aa, label %pq_push.exit187.us

bb.aa:                                            ; preds = %pq_max_distance.exit143.us
  %i.gc = load i32, ptr %i.az, align 8, !tbaa !19 ; 3 uses
  %i.gd = load i32, ptr %i.bb, align 4, !tbaa !20 ; 2 uses
  %i.ge = icmp ult i32 %i.gc, %i.gd
  br i1 %i.ge, label %.preheader.i153.us, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gf = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load float, ptr %i.gg, align 8, !tbaa !21
  %i.gi = fcmp ult float %.0.i140.us, %i.gh
  br i1 %i.gi, label %.preheader41.i144.us, label %pq_push.exit165.us

.preheader41.i144.us:                             ; preds = %bb.ab
  %.not51.i145.us = icmp eq i32 %i.gd, 1
  br i1 %.not51.i145.us, label %.critedge2.i149.us, label %.lr.ph.i146.us

.lr.ph.i146.us:                                   ; preds = %.preheader41.i144.us, %bb.ac
  %indvars.iv.i147.us = phi i64 [ %indvars.iv.next.i148.us, %bb.ac ], [ 0, %.preheader41.i144.us ] ; 3 uses
  %i.gj = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 3 uses
  %indvars.iv.next.i148.us = add nuw nsw i64 %indvars.iv.i147.us, 1 ; 4 uses
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.gj, i64 %indvars.iv.next.i148.us ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load float, ptr %i.gl, align 8, !tbaa !21
  %i.gn = fcmp ogt float %i.gm, %.0.i140.us
  br i1 %i.gn, label %bb.ac, label %.critedge2.i149.us

bb.ac:                                            ; preds = %.lr.ph.i146.us
  %i.go = getelementptr inbounds nuw [16 x i8], ptr %i.gj, i64 %indvars.iv.i147.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.go, ptr noundef nonnull align 8 dereferenceable(16) %i.gk, i64 16, i1 false), !tbaa.struct !25
  %i.gp = load i32, ptr %i.bb, align 4, !tbaa !20
  %i.gq = add i32 %i.gp, -1
  %i.gr = zext i32 %i.gq to i64
  %i.gs = icmp samesign ult i64 %indvars.iv.next.i148.us, %i.gr
  br i1 %i.gs, label %.lr.ph.i146.us, label %..critedge2.loopexit_crit_edge.i151.us, !llvm.loop !31

..critedge2.loopexit_crit_edge.i151.us:           ; preds = %bb.ac
  %.pre.pre.i152.us = load ptr, ptr %.0.i, align 8, !tbaa !17
  br label %.critedge2.i149.us, !llvm.loop !31

.critedge2.i149.us:                               ; preds = %.lr.ph.i146.us, %..critedge2.loopexit_crit_edge.i151.us, %.preheader41.i144.us
  %i.gt = phi ptr [ %i.gf, %.preheader41.i144.us ], [ %.pre.pre.i152.us, %..critedge2.loopexit_crit_edge.i151.us ], [ %i.gj, %.lr.ph.i146.us ]
  %.0.lcssa.i150.us = phi i64 [ 0, %.preheader41.i144.us ], [ %indvars.iv.next.i148.us, %..critedge2.loopexit_crit_edge.i151.us ], [ %indvars.iv.i147.us, %.lr.ph.i146.us ]
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %i.gt, i64 %.0.lcssa.i150.us ; 2 uses
  store ptr %i.ew, ptr %i.gu, align 8, !tbaa !30
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store float %.0.i140.us, ptr %i.gv, align 8, !tbaa !21
  br label %pq_push.exit165.us

.preheader.i153.us:                               ; preds = %bb.aa
  %.not45.i154.us = icmp eq i32 %i.gc, 0
  br i1 %.not45.i154.us, label %.critedge.i162.us, label %.lr.ph47.preheader.i155.us

.lr.ph47.preheader.i155.us:                       ; preds = %.preheader.i153.us
  %i.gw = zext i32 %i.gc to i64
  br label %.lr.ph47.i156.us

.lr.ph47.i156.us:                                 ; preds = %bb.ad, %.lr.ph47.preheader.i155.us
  %indvars.iv53.i157.us = phi i64 [ %i.gw, %.lr.ph47.preheader.i155.us ], [ %indvars.iv.next54.i158.us, %bb.ad ] ; 3 uses
  %i.gx = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 2 uses
  %indvars.iv.next54.i158.us = add nsw i64 %indvars.iv53.i157.us, -1 ; 3 uses
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.gx, i64 %indvars.iv.next54.i158.us ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load float, ptr %i.gz, align 8, !tbaa !21
  %i.hb = fcmp olt float %i.ha, %.0.i140.us
  br i1 %i.hb, label %bb.ad, label %.critedge.loopexit.i159.us

bb.ad:                                            ; preds = %.lr.ph47.i156.us
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %i.gx, i64 %indvars.iv53.i157.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hc, ptr noundef nonnull align 8 dereferenceable(16) %i.gy, i64 16, i1 false), !tbaa.struct !25
  %.not.i164.us = icmp eq i64 %indvars.iv.next54.i158.us, 0
  br i1 %.not.i164.us, label %.critedge.loopexit.i159.us, label %.lr.ph47.i156.us, !llvm.loop !28

.critedge.loopexit.i159.us:                       ; preds = %bb.ad, %.lr.ph47.i156.us
  %.038.lcssa.ph.i160.us = phi i64 [ %indvars.iv53.i157.us, %.lr.ph47.i156.us ], [ 0, %bb.ad ]
  %.pre57.i161.us = load i32, ptr %i.az, align 8, !tbaa !19
  %i.hd = add i32 %.pre57.i161.us, 1
  br label %.critedge.i162.us

.critedge.i162.us:                                ; preds = %.critedge.loopexit.i159.us, %.preheader.i153.us
  %i.he = phi i32 [ 1, %.preheader.i153.us ], [ %i.hd, %.critedge.loopexit.i159.us ]
  %.038.lcssa.i163.us = phi i64 [ 0, %.preheader.i153.us ], [ %.038.lcssa.ph.i160.us, %.critedge.loopexit.i159.us ]
  %i.hf = load ptr, ptr %.0.i, align 8, !tbaa !17
  %i.hg = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %.038.lcssa.i163.us ; 2 uses
  store ptr %i.ew, ptr %i.hg, align 8, !tbaa !30
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store float %.0.i140.us, ptr %i.hh, align 8, !tbaa !21
  store i32 %i.he, ptr %i.az, align 8, !tbaa !19
  br label %pq_push.exit165.us

pq_push.exit165.us:                               ; preds = %.critedge.i162.us, %.critedge2.i149.us, %bb.ab
  %i.hi = load i32, ptr %i.t, align 8, !tbaa !19  ; 3 uses
  %i.hj = load i32, ptr %i.u, align 4, !tbaa !20  ; 2 uses
  %i.hk = icmp ult i32 %i.hi, %i.hj
  br i1 %i.hk, label %.preheader.i175.us, label %bb.ae

bb.ae:                                            ; preds = %pq_push.exit165.us
  %i.hl = load ptr, ptr %i.n, align 8, !tbaa !17  ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load float, ptr %i.hm, align 8, !tbaa !21
  %i.ho = fcmp ult float %.0.i140.us, %i.hn
  br i1 %i.ho, label %.preheader41.i166.us, label %pq_push.exit187.us

.preheader41.i166.us:                             ; preds = %bb.ae
  %.not51.i167.us = icmp eq i32 %i.hj, 1
  br i1 %.not51.i167.us, label %.critedge2.i171.us, label %.lr.ph.i168.us

.lr.ph.i168.us:                                   ; preds = %.preheader41.i166.us, %bb.af
  %indvars.iv.i169.us = phi i64 [ %indvars.iv.next.i170.us, %bb.af ], [ 0, %.preheader41.i166.us ] ; 3 uses
  %i.hp = load ptr, ptr %i.n, align 8, !tbaa !17  ; 3 uses
  %indvars.iv.next.i170.us = add nuw nsw i64 %indvars.iv.i169.us, 1 ; 4 uses
  %i.hq = getelementptr inbounds nuw [16 x i8], ptr %i.hp, i64 %indvars.iv.next.i170.us ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load float, ptr %i.hr, align 8, !tbaa !21
  %i.ht = fcmp ogt float %i.hs, %.0.i140.us
  br i1 %i.ht, label %bb.af, label %.critedge2.i171.us

bb.af:                                            ; preds = %.lr.ph.i168.us
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.hp, i64 %indvars.iv.i169.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hu, ptr noundef nonnull align 8 dereferenceable(16) %i.hq, i64 16, i1 false), !tbaa.struct !25
  %i.hv = load i32, ptr %i.u, align 4, !tbaa !20
  %i.hw = add i32 %i.hv, -1
  %i.hx = zext i32 %i.hw to i64
  %i.hy = icmp samesign ult i64 %indvars.iv.next.i170.us, %i.hx
  br i1 %i.hy, label %.lr.ph.i168.us, label %..critedge2.loopexit_crit_edge.i173.us, !llvm.loop !31

..critedge2.loopexit_crit_edge.i173.us:           ; preds = %bb.af
  %.pre.pre.i174.us = load ptr, ptr %i.n, align 8, !tbaa !17
  br label %.critedge2.i171.us, !llvm.loop !31

.critedge2.i171.us:                               ; preds = %.lr.ph.i168.us, %..critedge2.loopexit_crit_edge.i173.us, %.preheader41.i166.us
  %i.hz = phi ptr [ %i.hl, %.preheader41.i166.us ], [ %.pre.pre.i174.us, %..critedge2.loopexit_crit_edge.i173.us ], [ %i.hp, %.lr.ph.i168.us ]
  %.0.lcssa.i172.us = phi i64 [ 0, %.preheader41.i166.us ], [ %indvars.iv.next.i170.us, %..critedge2.loopexit_crit_edge.i173.us ], [ %indvars.iv.i169.us, %.lr.ph.i168.us ]
  %i.ia = getelementptr inbounds nuw [16 x i8], ptr %i.hz, i64 %.0.lcssa.i172.us ; 2 uses
  store ptr %i.ew, ptr %i.ia, align 8, !tbaa !30
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store float %.0.i140.us, ptr %i.ib, align 8, !tbaa !21
  br label %pq_push.exit187.us

.preheader.i175.us:                               ; preds = %pq_push.exit165.us
  %.not45.i176.us = icmp eq i32 %i.hi, 0
  br i1 %.not45.i176.us, label %.critedge.i184.us, label %.lr.ph47.preheader.i177.us

.lr.ph47.preheader.i177.us:                       ; preds = %.preheader.i175.us
  %i.ic = zext i32 %i.hi to i64
  br label %.lr.ph47.i178.us

.lr.ph47.i178.us:                                 ; preds = %bb.ag, %.lr.ph47.preheader.i177.us
  %indvars.iv53.i179.us = phi i64 [ %i.ic, %.lr.ph47.preheader.i177.us ], [ %indvars.iv.next54.i180.us, %bb.ag ] ; 3 uses
  %i.id = load ptr, ptr %i.n, align 8, !tbaa !17  ; 2 uses
  %indvars.iv.next54.i180.us = add nsw i64 %indvars.iv53.i179.us, -1 ; 3 uses
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %i.id, i64 %indvars.iv.next54.i180.us ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = load float, ptr %i.if, align 8, !tbaa !21
  %i.ih = fcmp olt float %i.ig, %.0.i140.us
  br i1 %i.ih, label %bb.ag, label %.critedge.loopexit.i181.us

bb.ag:                                            ; preds = %.lr.ph47.i178.us
  %i.ii = getelementptr inbounds nuw [16 x i8], ptr %i.id, i64 %indvars.iv53.i179.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ii, ptr noundef nonnull align 8 dereferenceable(16) %i.ie, i64 16, i1 false), !tbaa.struct !25
  %.not.i186.us = icmp eq i64 %indvars.iv.next54.i180.us, 0
  br i1 %.not.i186.us, label %.critedge.loopexit.i181.us, label %.lr.ph47.i178.us, !llvm.loop !28

.critedge.loopexit.i181.us:                       ; preds = %bb.ag, %.lr.ph47.i178.us
  %.038.lcssa.ph.i182.us = phi i64 [ %indvars.iv53.i179.us, %.lr.ph47.i178.us ], [ 0, %bb.ag ]
  %.pre57.i183.us = load i32, ptr %i.t, align 8, !tbaa !19
  %i.ij = add i32 %.pre57.i183.us, 1
  br label %.critedge.i184.us

.critedge.i184.us:                                ; preds = %.critedge.loopexit.i181.us, %.preheader.i175.us
  %i.ik = phi i32 [ 1, %.preheader.i175.us ], [ %i.ij, %.critedge.loopexit.i181.us ]
  %.038.lcssa.i185.us = phi i64 [ 0, %.preheader.i175.us ], [ %.038.lcssa.ph.i182.us, %.critedge.loopexit.i181.us ]
  %i.il = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.im = getelementptr inbounds nuw [16 x i8], ptr %i.il, i64 %.038.lcssa.i185.us ; 2 uses
  store ptr %i.ew, ptr %i.im, align 8, !tbaa !30
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store float %.0.i140.us, ptr %i.in, align 8, !tbaa !21
  store i32 %i.ik, ptr %i.t, align 8, !tbaa !19
  br label %pq_push.exit187.us

pq_push.exit187.us:                               ; preds = %.critedge.i184.us, %.critedge2.i171.us, %bb.ae, %pq_max_distance.exit143.us, %.lr.ph.split.us
  %indvars.iv.next310 = add nuw nsw i64 %indvars.iv309, 1 ; 2 uses
  %i.io = load i32, ptr %i.es, align 8, !tbaa !133
  %i.ip = zext i32 %i.io to i64
  %i.iq = icmp samesign ult i64 %indvars.iv.next310, %i.ip
  br i1 %i.iq, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !145

.lr.ph.split:                                     ; preds = %.lr.ph, %pq_push.exit187
  %indvars.iv = phi i64 [ %indvars.iv.next, %pq_push.exit187 ], [ 0, %.lr.ph ] ; 2 uses
  %i.ir = load ptr, ptr %i.er, align 8, !tbaa !136
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !26 ; 11 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 32
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.b ; 2 uses
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !13
  %i.ix = load i64, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.iy = icmp eq i64 %i.iw, %i.ix
  br i1 %i.iy, label %pq_push.exit187, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.split
  store i64 %i.ix, ptr %i.iv, align 8, !tbaa !13
  %i.iz = load i32, ptr %i.y, align 8, !tbaa !71
  switch i32 %i.iz, label %.split.us [
    i32 0, label %bb.ai
    i32 1, label %bb.aj
    i32 2, label %bb.ak
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.ja = load ptr, ptr %i.dx, align 8, !tbaa !15
  %i.jb = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !15
  %i.jd = load i32, ptr %i.dy, align 8, !tbaa !74
  %i.je = tail call float @vectors_distance_float(ptr noundef %i.ja, ptr noundef %i.jc, i32 noundef %i.jd)
  br label %hnsw_distance.exit141

bb.aj:                                            ; preds = %bb.ah
  %i.jf = load ptr, ptr %i.dx, align 8, !tbaa !15
  %i.jg = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !15
  %i.ji = load i32, ptr %i.dy, align 8, !tbaa !74
  %i.jj = load float, ptr %i.dz, align 8, !tbaa !27
  %i.jk = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.jl = load float, ptr %i.jk, align 8, !tbaa !27
  %i.jm = tail call float @vectors_distance_q8(ptr noundef %i.jf, ptr noundef %i.jh, i32 noundef %i.ji, float noundef %i.jj, float noundef %i.jl)
  br label %hnsw_distance.exit141

bb.ak:                                            ; preds = %bb.ah
  %i.jn = load ptr, ptr %i.dx, align 8, !tbaa !15
  %i.jo = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !15
  %i.jq = load i32, ptr %i.dy, align 8, !tbaa !74
  %i.jr = tail call float @vectors_distance_bin(ptr noundef %i.jn, ptr noundef %i.jp, i32 noundef %i.jq)
  br label %hnsw_distance.exit141

.split.us:                                        ; preds = %bb.ah, %bb.v
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @__PRETTY_FUNCTION__.hnsw_distance) #35
  unreachable

hnsw_distance.exit141:                            ; preds = %bb.ai, %bb.aj, %bb.ak
  %.0.i140 = phi float [ %i.je, %bb.ai ], [ %i.jm, %bb.aj ], [ %i.jr, %bb.ak ] ; 11 uses
  %i.js = load i32, ptr %i.t, align 8, !tbaa !19
  %i.jt = icmp eq i32 %i.js, 0
  br i1 %i.jt, label %pq_max_distance.exit143, label %bb.al

bb.al:                                            ; preds = %hnsw_distance.exit141
  %i.ju = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jw = load float, ptr %i.jv, align 8, !tbaa !21
  br label %pq_max_distance.exit143

pq_max_distance.exit143:                          ; preds = %hnsw_distance.exit141, %bb.al
  %.0.i142 = phi float [ %i.jw, %bb.al ], [ +inf, %hnsw_distance.exit141 ]
  %i.jx = fcmp olt float %.0.i140, %.0.i142       ; 2 uses
  %.pr = load i32, ptr %i.az, align 8, !tbaa !19  ; 4 uses
  %i.jy = icmp ult i32 %.pr, %3
  %or.cond = select i1 %i.jx, i1 true, i1 %i.jy
  br i1 %or.cond, label %thread-pre-split, label %pq_push.exit209.thread

thread-pre-split:                                 ; preds = %pq_max_distance.exit143
  %i.jz = load i32, ptr %i.bb, align 4, !tbaa !20 ; 2 uses
  %i.ka = icmp ult i32 %.pr, %i.jz
  br i1 %i.ka, label %.preheader.i197, label %bb.an

.preheader.i197:                                  ; preds = %thread-pre-split
  %.not45.i198 = icmp eq i32 %.pr, 0
  br i1 %.not45.i198, label %.critedge.i206, label %.lr.ph47.preheader.i199

.lr.ph47.preheader.i199:                          ; preds = %.preheader.i197
  %i.kb = zext i32 %.pr to i64
  br label %.lr.ph47.i200

.lr.ph47.i200:                                    ; preds = %bb.am, %.lr.ph47.preheader.i199
  %indvars.iv53.i201 = phi i64 [ %i.kb, %.lr.ph47.preheader.i199 ], [ %indvars.iv.next54.i202, %bb.am ] ; 3 uses
  %i.kc = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 2 uses
  %indvars.iv.next54.i202 = add nsw i64 %indvars.iv53.i201, -1 ; 3 uses
  %i.kd = getelementptr inbounds nuw [16 x i8], ptr %i.kc, i64 %indvars.iv.next54.i202 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load float, ptr %i.ke, align 8, !tbaa !21
  %i.kg = fcmp olt float %i.kf, %.0.i140
  br i1 %i.kg, label %bb.am, label %.critedge.loopexit.i203

bb.am:                                            ; preds = %.lr.ph47.i200
  %i.kh = getelementptr inbounds nuw [16 x i8], ptr %i.kc, i64 %indvars.iv53.i201
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kh, ptr noundef nonnull align 8 dereferenceable(16) %i.kd, i64 16, i1 false), !tbaa.struct !25
  %.not.i208 = icmp eq i64 %indvars.iv.next54.i202, 0
  br i1 %.not.i208, label %.critedge.loopexit.i203, label %.lr.ph47.i200, !llvm.loop !28

.critedge.loopexit.i203:                          ; preds = %bb.am, %.lr.ph47.i200
  %.038.lcssa.ph.i204 = phi i64 [ %indvars.iv53.i201, %.lr.ph47.i200 ], [ 0, %bb.am ]
  %.pre57.i205 = load i32, ptr %i.az, align 8, !tbaa !19
  %i.ki = add i32 %.pre57.i205, 1
  br label %.critedge.i206

.critedge.i206:                                   ; preds = %.critedge.loopexit.i203, %.preheader.i197
  %i.kj = phi i32 [ 1, %.preheader.i197 ], [ %i.ki, %.critedge.loopexit.i203 ]
  %.038.lcssa.i207 = phi i64 [ 0, %.preheader.i197 ], [ %.038.lcssa.ph.i204, %.critedge.loopexit.i203 ]
  %i.kk = load ptr, ptr %.0.i, align 8, !tbaa !17
  %i.kl = getelementptr inbounds nuw [16 x i8], ptr %i.kk, i64 %.038.lcssa.i207 ; 2 uses
  store ptr %i.it, ptr %i.kl, align 8, !tbaa !30
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  store float %.0.i140, ptr %i.km, align 8, !tbaa !21
  store i32 %i.kj, ptr %i.az, align 8, !tbaa !19
  br label %pq_push.exit209

bb.an:                                            ; preds = %thread-pre-split
  %i.kn = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = load float, ptr %i.ko, align 8, !tbaa !21
  %i.kq = fcmp ult float %.0.i140, %i.kp
  br i1 %i.kq, label %.preheader41.i188, label %pq_push.exit209

.preheader41.i188:                                ; preds = %bb.an
  %.not51.i189 = icmp eq i32 %i.jz, 1
  br i1 %.not51.i189, label %.critedge2.i193, label %.lr.ph.i190

.lr.ph.i190:                                      ; preds = %.preheader41.i188, %bb.ao
  %indvars.iv.i191 = phi i64 [ %indvars.iv.next.i192, %bb.ao ], [ 0, %.preheader41.i188 ] ; 3 uses
  %i.kr = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 3 uses
  %indvars.iv.next.i192 = add nuw nsw i64 %indvars.iv.i191, 1 ; 4 uses
  %i.ks = getelementptr inbounds nuw [16 x i8], ptr %i.kr, i64 %indvars.iv.next.i192 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.ku = load float, ptr %i.kt, align 8, !tbaa !21
  %i.kv = fcmp ogt float %i.ku, %.0.i140
  br i1 %i.kv, label %bb.ao, label %.critedge2.i193

bb.ao:                                            ; preds = %.lr.ph.i190
  %i.kw = getelementptr inbounds nuw [16 x i8], ptr %i.kr, i64 %indvars.iv.i191
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kw, ptr noundef nonnull align 8 dereferenceable(16) %i.ks, i64 16, i1 false), !tbaa.struct !25
  %i.kx = load i32, ptr %i.bb, align 4, !tbaa !20
  %i.ky = add i32 %i.kx, -1
  %i.kz = zext i32 %i.ky to i64
  %i.la = icmp samesign ult i64 %indvars.iv.next.i192, %i.kz
  br i1 %i.la, label %.lr.ph.i190, label %..critedge2.loopexit_crit_edge.i195, !llvm.loop !31

..critedge2.loopexit_crit_edge.i195:              ; preds = %bb.ao
  %.pre.pre.i196 = load ptr, ptr %.0.i, align 8, !tbaa !17
  br label %.critedge2.i193, !llvm.loop !31

.critedge2.i193:                                  ; preds = %.lr.ph.i190, %..critedge2.loopexit_crit_edge.i195, %.preheader41.i188
  %i.lb = phi ptr [ %i.kn, %.preheader41.i188 ], [ %.pre.pre.i196, %..critedge2.loopexit_crit_edge.i195 ], [ %i.kr, %.lr.ph.i190 ]
  %.0.lcssa.i194 = phi i64 [ 0, %.preheader41.i188 ], [ %indvars.iv.next.i192, %..critedge2.loopexit_crit_edge.i195 ], [ %indvars.iv.i191, %.lr.ph.i190 ]
  %i.lc = getelementptr inbounds nuw [16 x i8], ptr %i.lb, i64 %.0.lcssa.i194 ; 2 uses
  store ptr %i.it, ptr %i.lc, align 8, !tbaa !30
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  store float %.0.i140, ptr %i.ld, align 8, !tbaa !21
  br label %pq_push.exit209

pq_push.exit209:                                  ; preds = %.critedge2.i193, %bb.an, %.critedge.i206
  %i.le = getelementptr inbounds nuw i8, ptr %i.it, i64 288
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !15
  %i.lg = tail call i32 %6(ptr noundef %i.lf, ptr noundef %7) #34
  %.not103 = icmp eq i32 %i.lg, 0
  br i1 %.not103, label %pq_push.exit187, label %bb.ap

pq_push.exit209.thread:                           ; preds = %pq_max_distance.exit143
  %i.lh = getelementptr inbounds nuw i8, ptr %i.it, i64 288
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !15
  %i.lj = tail call i32 %6(ptr noundef %i.li, ptr noundef %7) #34
  %.not103242 = icmp eq i32 %i.lj, 0
  br i1 %.not103242, label %pq_push.exit187, label %.thread243

bb.ap:                                            ; preds = %pq_push.exit209
  br i1 %i.jx, label %thread-pre-split244, label %.thread243

.thread243:                                       ; preds = %pq_push.exit209.thread, %bb.ap
  %i.lk = load i32, ptr %i.t, align 8, !tbaa !19  ; 2 uses
  %i.ll = icmp ult i32 %i.lk, %3
  br i1 %i.ll, label %bb.aq, label %pq_push.exit187

thread-pre-split244:                              ; preds = %bb.ap
  %.pr245 = load i32, ptr %i.t, align 8, !tbaa !19
  br label %bb.aq

bb.aq:                                            ; preds = %thread-pre-split244, %.thread243
  %i.lm = phi i32 [ %.pr245, %thread-pre-split244 ], [ %i.lk, %.thread243 ] ; 3 uses
  %i.ln = load i32, ptr %i.u, align 4, !tbaa !20  ; 2 uses
  %i.lo = icmp ult i32 %i.lm, %i.ln
  br i1 %i.lo, label %.preheader.i219, label %bb.as

.preheader.i219:                                  ; preds = %bb.aq
  %.not45.i220 = icmp eq i32 %i.lm, 0
  br i1 %.not45.i220, label %.critedge.i228, label %.lr.ph47.preheader.i221

.lr.ph47.preheader.i221:                          ; preds = %.preheader.i219
  %i.lp = zext i32 %i.lm to i64
  br label %.lr.ph47.i222

.lr.ph47.i222:                                    ; preds = %bb.ar, %.lr.ph47.preheader.i221
  %indvars.iv53.i223 = phi i64 [ %i.lp, %.lr.ph47.preheader.i221 ], [ %indvars.iv.next54.i224, %bb.ar ] ; 3 uses
  %i.lq = load ptr, ptr %i.n, align 8, !tbaa !17  ; 2 uses
  %indvars.iv.next54.i224 = add nsw i64 %indvars.iv53.i223, -1 ; 3 uses
  %i.lr = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %indvars.iv.next54.i224 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lt = load float, ptr %i.ls, align 8, !tbaa !21
  %i.lu = fcmp olt float %i.lt, %.0.i140
  br i1 %i.lu, label %bb.ar, label %.critedge.loopexit.i225

bb.ar:                                            ; preds = %.lr.ph47.i222
  %i.lv = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %indvars.iv53.i223
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lv, ptr noundef nonnull align 8 dereferenceable(16) %i.lr, i64 16, i1 false), !tbaa.struct !25
  %.not.i230 = icmp eq i64 %indvars.iv.next54.i224, 0
  br i1 %.not.i230, label %.critedge.loopexit.i225, label %.lr.ph47.i222, !llvm.loop !28

.critedge.loopexit.i225:                          ; preds = %bb.ar, %.lr.ph47.i222
  %.038.lcssa.ph.i226 = phi i64 [ %indvars.iv53.i223, %.lr.ph47.i222 ], [ 0, %bb.ar ]
  %.pre57.i227 = load i32, ptr %i.t, align 8, !tbaa !19
  %i.lw = add i32 %.pre57.i227, 1
  br label %.critedge.i228

.critedge.i228:                                   ; preds = %.critedge.loopexit.i225, %.preheader.i219
  %i.lx = phi i32 [ 1, %.preheader.i219 ], [ %i.lw, %.critedge.loopexit.i225 ]
  %.038.lcssa.i229 = phi i64 [ 0, %.preheader.i219 ], [ %.038.lcssa.ph.i226, %.critedge.loopexit.i225 ]
  %i.ly = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.lz = getelementptr inbounds nuw [16 x i8], ptr %i.ly, i64 %.038.lcssa.i229 ; 2 uses
  store ptr %i.it, ptr %i.lz, align 8, !tbaa !30
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  store float %.0.i140, ptr %i.ma, align 8, !tbaa !21
  store i32 %i.lx, ptr %i.t, align 8, !tbaa !19
  br label %pq_push.exit187

bb.as:                                            ; preds = %bb.aq
  %i.mb = load ptr, ptr %i.n, align 8, !tbaa !17  ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.md = load float, ptr %i.mc, align 8, !tbaa !21
  %i.me = fcmp ult float %.0.i140, %i.md
  br i1 %i.me, label %.preheader41.i210, label %pq_push.exit187

.preheader41.i210:                                ; preds = %bb.as
  %.not51.i211 = icmp eq i32 %i.ln, 1
  br i1 %.not51.i211, label %.critedge2.i215, label %.lr.ph.i212

.lr.ph.i212:                                      ; preds = %.preheader41.i210, %bb.at
  %indvars.iv.i213 = phi i64 [ %indvars.iv.next.i214, %bb.at ], [ 0, %.preheader41.i210 ] ; 3 uses
  %i.mf = load ptr, ptr %i.n, align 8, !tbaa !17  ; 3 uses
  %indvars.iv.next.i214 = add nuw nsw i64 %indvars.iv.i213, 1 ; 4 uses
  %i.mg = getelementptr inbounds nuw [16 x i8], ptr %i.mf, i64 %indvars.iv.next.i214 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mi = load float, ptr %i.mh, align 8, !tbaa !21
  %i.mj = fcmp ogt float %i.mi, %.0.i140
  br i1 %i.mj, label %bb.at, label %.critedge2.i215

bb.at:                                            ; preds = %.lr.ph.i212
  %i.mk = getelementptr inbounds nuw [16 x i8], ptr %i.mf, i64 %indvars.iv.i213
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mk, ptr noundef nonnull align 8 dereferenceable(16) %i.mg, i64 16, i1 false), !tbaa.struct !25
  %i.ml = load i32, ptr %i.u, align 4, !tbaa !20
  %i.mm = add i32 %i.ml, -1
  %i.mn = zext i32 %i.mm to i64
  %i.mo = icmp samesign ult i64 %indvars.iv.next.i214, %i.mn
  br i1 %i.mo, label %.lr.ph.i212, label %..critedge2.loopexit_crit_edge.i217, !llvm.loop !31

..critedge2.loopexit_crit_edge.i217:              ; preds = %bb.at
  %.pre.pre.i218 = load ptr, ptr %i.n, align 8, !tbaa !17
  br label %.critedge2.i215, !llvm.loop !31

.critedge2.i215:                                  ; preds = %.lr.ph.i212, %..critedge2.loopexit_crit_edge.i217, %.preheader41.i210
  %i.mp = phi ptr [ %i.mb, %.preheader41.i210 ], [ %.pre.pre.i218, %..critedge2.loopexit_crit_edge.i217 ], [ %i.mf, %.lr.ph.i212 ]
  %.0.lcssa.i216 = phi i64 [ 0, %.preheader41.i210 ], [ %indvars.iv.next.i214, %..critedge2.loopexit_crit_edge.i217 ], [ %indvars.iv.i213, %.lr.ph.i212 ]
  %i.mq = getelementptr inbounds nuw [16 x i8], ptr %i.mp, i64 %.0.lcssa.i216 ; 2 uses
  store ptr %i.it, ptr %i.mq, align 8, !tbaa !30
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  store float %.0.i140, ptr %i.mr, align 8, !tbaa !21
  br label %pq_push.exit187

pq_push.exit187:                                  ; preds = %.critedge2.i215, %bb.as, %.critedge.i228, %pq_push.exit209.thread, %.thread243, %pq_push.exit209, %.lr.ph.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ms = load i32, ptr %i.es, align 8, !tbaa !133
  %i.mt = zext i32 %i.ms to i64
  %i.mu = icmp samesign ult i64 %indvars.iv.next, %i.mt
  br i1 %i.mu, label %.lr.ph.split, label %.loopexit, !llvm.loop !145

pq_free.exit233:                                  ; preds = %.loopexit, %bb.t, %pq_max_distance.exit, %pq_push.exit137
  %i.mv = load ptr, ptr @hfree, align 8, !tbaa !15
  %i.mw = load ptr, ptr %.0.i, align 8, !tbaa !17
  tail call void %i.mv(ptr noundef %i.mw) #34, !inline_history !144
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %pq_free.exit233, %pq_free.exit113, %pq_free.exit
  %.0.i.sink = phi ptr [ %.0.i, %pq_free.exit ], [ %i.n, %pq_free.exit113 ], [ %.0.i, %pq_free.exit233 ]
  %.0.ph = phi ptr [ null, %pq_free.exit ], [ null, %pq_free.exit113 ], [ %i.n, %pq_free.exit233 ]
  %i.mx = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.mx(ptr noundef nonnull %.0.i.sink) #34
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %pq_new.exit110.thread
  %.0 = phi ptr [ null, %pq_new.exit110.thread ], [ %.0.ph, %.thread.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @search_layer(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @search_layer_with_filter(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef null, ptr noundef null, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @hnsw_init_tmp_node(ptr noundef readonly captures(none) %0, ptr noundef captures(none) initializes((16, 24)) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  store ptr null, ptr %i.a, align 8, !tbaa !15
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !74
  %i.e = zext i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 2
  %i.g = tail call ptr %i.b(i64 noundef %i.f) #34 ; 3 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !15
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.c, align 8, !tbaa !74
  %i.j = zext i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr align 4 %3, i64 %i.k, i1 false)
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !15   ; 8 uses
  %i.m = load i32, ptr %i.c, align 8, !tbaa !74   ; 8 uses
  %i.n = icmp ugt i32 %i.m, 3
  br i1 %i.n, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.o = zext i32 %i.m to i64
  br label %.lr.ph.i

.preheader.loopexit.i:                            ; preds = %.lr.ph.i
  %i.p = and i32 %i.m, -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.c
  %.038.lcssa.i = phi float [ 0.000000e+00, %bb.c ], [ %i.aj, %.preheader.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.p, %.preheader.loopexit.i ] ; 2 uses
  %i.q = icmp ult i32 %.0.lcssa.i, %i.m
  br i1 %i.q, label %.lr.ph48.preheader.i, label %._crit_edge.i

.lr.ph48.preheader.i:                             ; preds = %.preheader.i
  %i.r = zext i32 %.0.lcssa.i to i64              ; 3 uses
  %wide.trip.count.i = zext i32 %i.m to i64       ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph48.i.prol.loopexit, label %.lr.ph48.i.prol

.lr.ph48.i.prol:                                  ; preds = %.lr.ph48.preheader.i, %.lr.ph48.i.prol
  %indvars.iv57.i.prol = phi i64 [ %indvars.iv.next58.i.prol, %.lr.ph48.i.prol ], [ %i.r, %.lr.ph48.preheader.i ] ; 2 uses
  %.13946.i.prol = phi float [ %i.u, %.lr.ph48.i.prol ], [ %.038.lcssa.i, %.lr.ph48.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph48.i.prol ], [ 0, %.lr.ph48.preheader.i ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv57.i.prol
  %i.t = load float, ptr %i.s, align 4, !tbaa !27 ; 2 uses
  %i.u = tail call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %.13946.i.prol) ; 3 uses
  %indvars.iv.next58.i.prol = add nuw nsw i64 %indvars.iv57.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph48.i.prol.loopexit, label %.lr.ph48.i.prol, !llvm.loop !146

.lr.ph48.i.prol.loopexit:                         ; preds = %.lr.ph48.i.prol, %.lr.ph48.preheader.i
  %.lcssa.unr = phi float [ poison, %.lr.ph48.preheader.i ], [ %i.u, %.lr.ph48.i.prol ]
  %indvars.iv57.i.unr = phi i64 [ %i.r, %.lr.ph48.preheader.i ], [ %indvars.iv.next58.i.prol, %.lr.ph48.i.prol ]
  %.13946.i.unr = phi float [ %.038.lcssa.i, %.lr.ph48.preheader.i ], [ %i.u, %.lr.ph48.i.prol ]
  %i.v = sub nsw i64 %i.r, %wide.trip.count.i
  %i.w = icmp ugt i64 %i.v, -4
  br i1 %i.w, label %._crit_edge.i, label %.lr.ph48.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.03843.i = phi float [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.aj, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i ; 4 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !27 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !27 ; 2 uses
  %i.ab = fmul float %i.aa, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.y, float %i.y, float %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !27 ; 2 uses
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ae, float %i.ac)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !27 ; 2 uses
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float %i.af)
  %i.aj = fadd float %.03843.i, %i.ai             ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.ak = or disjoint i64 %indvars.iv.next.i, 3
  %i.al = icmp samesign ult i64 %i.ak, %i.o
  br i1 %i.al, label %.lr.ph.i, label %.preheader.loopexit.i, !llvm.loop !85

.lr.ph48.i:                                       ; preds = %.lr.ph48.i.prol.loopexit, %.lr.ph48.i
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i.3, %.lr.ph48.i ], [ %indvars.iv57.i.unr, %.lr.ph48.i.prol.loopexit ] ; 5 uses
  %.13946.i = phi float [ %i.ba, %.lr.ph48.i ], [ %.13946.i.unr, %.lr.ph48.i.prol.loopexit ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv57.i
  %i.an = load float, ptr %i.am, align 4, !tbaa !27 ; 2 uses
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float %i.an, float %.13946.i)
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv57.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !27 ; 2 uses
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %i.ao)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv57.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load float, ptr %i.au, align 4, !tbaa !27 ; 2 uses
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float %i.av, float %i.as)
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv57.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.az = load float, ptr %i.ay, align 4, !tbaa !27 ; 2 uses
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.az, float %i.az, float %i.aw) ; 2 uses
  %indvars.iv.next58.i.3 = add nuw nsw i64 %indvars.iv57.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next58.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph48.i, !llvm.loop !86

._crit_edge.i:                                    ; preds = %.lr.ph48.i.prol.loopexit, %.lr.ph48.i, %.preheader.i
  %.139.lcssa.i = phi float [ %.038.lcssa.i, %.preheader.i ], [ %.lcssa.unr, %.lr.ph48.i.prol.loopexit ], [ %i.ba, %.lr.ph48.i ] ; 2 uses
  %i.bb = fcmp oeq float %.139.lcssa.i, 0.000000e+00
  br i1 %i.bb, label %hnsw_normalize_vector.exit, label %bb.d
end_hunk_0
begin_hunk_1_@hnsw_reconnect_nodes:bb.a
  %.4.us = phi i32 [ %.1294428.us, %bb.an ], [ %.1294428.us, %bb.ao ], [ %.1294428.us, %bb.ap ], [ %i.mm, %bb.ar ], [ %.1294428.us, %bb.aq ] ; 2 uses
  %indvars.iv.next515 = add nuw nsw i64 %indvars.iv514, 1 ; 2 uses
  %exitcond519.not = icmp eq i64 %indvars.iv.next515, %wide.trip.count523
  br i1 %exitcond519.not, label %..loopexit_crit_edge.us, label %bb.an, !llvm.loop !193

.preheader.us:                                    ; preds = %bb.am
  %i.ml = mul nuw nsw i64 %indvars.iv520, %i.c
  %i.mm = trunc nuw nsw i64 %indvars.iv520 to i32
  %invariant.gep593 = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.ml
  br label %bb.an

._crit_edge440.split.us:                          ; preds = %..loopexit_crit_edge.us
  %.not328.not = icmp eq i32 %.5301.us, -1
  br i1 %.not328.not, label %.lr.ph454, label %bb.at

bb.at:                                            ; preds = %._crit_edge440.split.us
  %i.mn = sext i32 %.5.us to i64                  ; 2 uses
  %i.mo = getelementptr inbounds [8 x i8], ptr %1, i64 %i.mn ; 2 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !26
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 312
  %i.mr = getelementptr inbounds nuw [24 x i8], ptr %i.mq, i64 %i.lk ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mt = load i32, ptr %i.ms, align 8, !tbaa !133 ; 2 uses
  %i.mu = sext i32 %.5301.us to i64               ; 2 uses
  %i.mv = getelementptr inbounds [8 x i8], ptr %1, i64 %i.mu ; 2 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !26 ; 2 uses
  %i.mx = load ptr, ptr %i.mr, align 8, !tbaa !136
  %i.my = sext i32 %i.mt to i64
  %i.mz = getelementptr inbounds [8 x i8], ptr %i.mx, i64 %i.my
  store ptr %i.mw, ptr %i.mz, align 8, !tbaa !26
  %i.na = load ptr, ptr %i.mo, align 8, !tbaa !26 ; 3 uses
  %i.nb = getelementptr inbounds nuw [24 x i8], ptr %i.na, i64 %i.lk
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 320 ; 2 uses
  %i.nd = load i32, ptr %i.nc, align 8, !tbaa !133 ; 2 uses
  %i.ne = add i32 %i.nd, 1
  store i32 %i.ne, ptr %i.nc, align 8, !tbaa !133
  %i.nf = mul nsw i32 %.5.us, %2
  %i.ng = add nsw i32 %i.nf, %.5301.us
  %i.nh = sext i32 %i.ng to i64
  %i.ni = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.nh
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !27 ; 4 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.na, i64 312
  %i.nl = getelementptr inbounds nuw [24 x i8], ptr %i.nk, i64 %i.lk ; 3 uses
  %i.nm = icmp eq i32 %i.nd, 0
  br i1 %i.nm, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  %i.no = load float, ptr %i.nn, align 8, !tbaa !134
  %i.np = fcmp ogt float %i.nj, %i.no
  br i1 %i.np, label %bb.av, label %hnsw_update_worst_neighbor_on_add.exit

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  store float %i.nj, ptr %i.nq, align 8, !tbaa !134
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nl, i64 20
  store i32 %i.mt, ptr %i.nr, align 4, !tbaa !135
  br label %hnsw_update_worst_neighbor_on_add.exit

hnsw_update_worst_neighbor_on_add.exit:           ; preds = %bb.au, %bb.av
  %i.ns = getelementptr inbounds nuw i8, ptr %i.mw, i64 312
  %i.nt = getelementptr inbounds nuw [24 x i8], ptr %i.ns, i64 %i.lk ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.nv = load i32, ptr %i.nu, align 8, !tbaa !133 ; 2 uses
  %i.nw = load ptr, ptr %i.nt, align 8, !tbaa !136
  %i.nx = sext i32 %i.nv to i64
  %i.ny = getelementptr inbounds [8 x i8], ptr %i.nw, i64 %i.nx
  store ptr %i.na, ptr %i.ny, align 8, !tbaa !26
  %i.nz = load ptr, ptr %i.mv, align 8, !tbaa !26 ; 2 uses
  %i.oa = getelementptr inbounds nuw [24 x i8], ptr %i.nz, i64 %i.lk
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 320 ; 2 uses
  %i.oc = load i32, ptr %i.ob, align 8, !tbaa !133 ; 2 uses
  %i.od = add i32 %i.oc, 1
  store i32 %i.od, ptr %i.ob, align 8, !tbaa !133
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nz, i64 312
  %i.of = getelementptr inbounds nuw [24 x i8], ptr %i.oe, i64 %i.lk ; 3 uses
  %i.og = icmp eq i32 %i.oc, 0
  br i1 %i.og, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %hnsw_update_worst_neighbor_on_add.exit
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  %i.oi = load float, ptr %i.oh, align 8, !tbaa !134
  %i.oj = fcmp ogt float %i.nj, %i.oi
  br i1 %i.oj, label %bb.ax, label %hnsw_update_worst_neighbor_on_add.exit346

bb.ax:                                            ; preds = %bb.aw, %hnsw_update_worst_neighbor_on_add.exit
  %i.ok = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  store float %i.nj, ptr %i.ok, align 8, !tbaa !134
  %i.ol = getelementptr inbounds nuw i8, ptr %i.of, i64 20
  store i32 %i.nv, ptr %i.ol, align 4, !tbaa !135
  br label %hnsw_update_worst_neighbor_on_add.exit346

hnsw_update_worst_neighbor_on_add.exit346:        ; preds = %bb.aw, %bb.ax
  %i.om = getelementptr inbounds [4 x i8], ptr %i.lj, i64 %i.mu
  store i32 1, ptr %i.om, align 4, !tbaa !9
  %i.on = getelementptr inbounds [4 x i8], ptr %i.lj, i64 %i.mn
  store i32 1, ptr %i.on, align 4, !tbaa !9
  br label %.lr.ph439.backedge

.lr.ph454:                                        ; preds = %._crit_edge440.split.us
  %i.oo = shl nuw nsw i64 %i.c, 4
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count533 = zext nneg i32 %2 to i64   ; 2 uses
  br label %bb.ay

.critedge375._crit_edge:                          ; preds = %pq_new.exit.thread
  %i.or = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.or(ptr noundef nonnull %i.f) #34
  br label %.sink.split.sink.split.sink.split

bb.ay:                                            ; preds = %.lr.ph454, %pq_new.exit.thread
  %indvars.iv530 = phi i64 [ 0, %.lr.ph454 ], [ %indvars.iv.next531, %pq_new.exit.thread ] ; 5 uses
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %indvars.iv530
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !9
  %.not329 = icmp eq i32 %i.ot, 0
  br i1 %.not329, label %bb.az, label %pq_new.exit.thread

bb.az:                                            ; preds = %bb.ay
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv530 ; 6 uses
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !26
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 312
  %i.ox = getelementptr inbounds nuw [24 x i8], ptr %i.ow, i64 %i.lk ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.oz = load i32, ptr %i.oy, align 8, !tbaa !133
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ox, i64 12
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !129
  %.not330 = icmp ult i32 %i.oz, %i.pb
  br i1 %.not330, label %bb.ba, label %pq_new.exit.thread

bb.ba:                                            ; preds = %bb.az
  %i.pc = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.pd = tail call ptr %i.pc(i64 noundef 16) #34, !inline_history !143 ; 13 uses
  %.not.i = icmp eq ptr %i.pd, null
  br i1 %.not.i, label %pq_new.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.pe = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.pf = tail call ptr %i.pe(i64 noundef %i.oo) #34, !inline_history !143 ; 4 uses
  store ptr %i.pf, ptr %i.pd, align 8, !tbaa !17
  %.not10.i = icmp eq ptr %i.pf, null
  br i1 %.not10.i, label %pq_new.exit.thread.sink.split, label %.lr.ph446

.lr.ph446:                                        ; preds = %bb.bb
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pd, i64 8 ; 5 uses
  store i32 0, ptr %i.pg, align 8, !tbaa !19
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pd, i64 12 ; 3 uses
  store i32 %2, ptr %i.ph, align 4, !tbaa !20
  %i.pi = mul nuw nsw i64 %indvars.iv530, %i.c
  %invariant.gep595 = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.pi
  br label %bb.bc

._crit_edge447:                                   ; preds = %pq_push.exit
  %.pre535 = load i32, ptr %i.pg, align 8, !tbaa !19
  %i.pj = load ptr, ptr %i.ou, align 8, !tbaa !26 ; 2 uses
  %i.pk = getelementptr inbounds nuw [24 x i8], ptr %i.pj, i64 %i.lk
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 320
  %i.pm = load i32, ptr %i.pl, align 8, !tbaa !133
  %i.pn = add i32 %i.pm, 1                        ; 3 uses
  %.not332 = icmp eq i32 %.pre535, 0
  br i1 %.not332, label %pq_free.exit, label %bb.bi

bb.bc:                                            ; preds = %.lr.ph446, %pq_push.exit
  %i.po = phi ptr [ %i.pf, %.lr.ph446 ], [ %i.rg, %pq_push.exit ] ; 5 uses
  %i.pp = phi ptr [ %i.pf, %.lr.ph446 ], [ %i.rh, %pq_push.exit ] ; 5 uses
  %indvars.iv525 = phi i64 [ 0, %.lr.ph446 ], [ %indvars.iv.next526, %pq_push.exit ] ; 4 uses
  %.not338 = icmp eq i64 %indvars.iv530, %indvars.iv525
  br i1 %.not338, label %pq_push.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv525
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !26 ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 312
  %i.pt = getelementptr inbounds nuw [24 x i8], ptr %i.ps, i64 %i.lk ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  %i.pv = load i32, ptr %i.pu, align 8, !tbaa !133
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pt, i64 12
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !129
  %i.py = icmp ult i32 %i.pv, %i.px
  br i1 %i.py, label %bb.be, label %pq_push.exit

bb.be:                                            ; preds = %bb.bd
  %gep596 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep595, i64 %indvars.iv525
  %i.pz = load float, ptr %gep596, align 4, !tbaa !27 ; 5 uses
  %i.qa = load i32, ptr %i.pg, align 8, !tbaa !19 ; 3 uses
  %i.qb = load i32, ptr %i.ph, align 4, !tbaa !20 ; 2 uses
  %i.qc = icmp ult i32 %i.qa, %i.qb
  br i1 %i.qc, label %.preheader.i, label %bb.bg

.preheader.i:                                     ; preds = %bb.be
  %.not45.i = icmp eq i32 %i.qa, 0
  br i1 %.not45.i, label %.critedge.i, label %.lr.ph47.preheader.i

.lr.ph47.preheader.i:                             ; preds = %.preheader.i
  %i.qd = zext i32 %i.qa to i64
  br label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.bf, %.lr.ph47.preheader.i
  %indvars.iv53.i = phi i64 [ %i.qd, %.lr.ph47.preheader.i ], [ %indvars.iv.next54.i, %bb.bf ] ; 3 uses
  %i.qe = load ptr, ptr %i.pd, align 8, !tbaa !17 ; 3 uses
  %indvars.iv.next54.i = add nsw i64 %indvars.iv53.i, -1 ; 3 uses
  %i.qf = getelementptr inbounds nuw [16 x i8], ptr %i.qe, i64 %indvars.iv.next54.i ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  %i.qh = load float, ptr %i.qg, align 8, !tbaa !21
  %i.qi = fcmp olt float %i.qh, %i.pz
  br i1 %i.qi, label %bb.bf, label %.critedge.loopexit.i

bb.bf:                                            ; preds = %.lr.ph47.i
  %i.qj = getelementptr inbounds nuw [16 x i8], ptr %i.qe, i64 %indvars.iv53.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qj, ptr noundef nonnull align 8 dereferenceable(16) %i.qf, i64 16, i1 false), !tbaa.struct !25
  %.not.i348 = icmp eq i64 %indvars.iv.next54.i, 0
  br i1 %.not.i348, label %..critedge.loopexit.i_crit_edge, label %.lr.ph47.i, !llvm.loop !28

..critedge.loopexit.i_crit_edge:                  ; preds = %bb.bf
  %.pre.pre = load ptr, ptr %i.pd, align 8, !tbaa !17
  br label %.critedge.loopexit.i, !llvm.loop !28

.critedge.loopexit.i:                             ; preds = %.lr.ph47.i, %..critedge.loopexit.i_crit_edge
  %.pre = phi ptr [ %.pre.pre, %..critedge.loopexit.i_crit_edge ], [ %i.qe, %.lr.ph47.i ]
  %.038.lcssa.ph.i = phi i64 [ 0, %..critedge.loopexit.i_crit_edge ], [ %indvars.iv53.i, %.lr.ph47.i ]
  %.pre57.i = load i32, ptr %i.pg, align 8, !tbaa !19
  %i.qk = add i32 %.pre57.i, 1
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader.i
  %i.ql = phi ptr [ %i.po, %.preheader.i ], [ %.pre, %.critedge.loopexit.i ] ; 3 uses
  %i.qm = phi i32 [ 1, %.preheader.i ], [ %i.qk, %.critedge.loopexit.i ]
  %.038.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %.038.lcssa.ph.i, %.critedge.loopexit.i ]
  %i.qn = getelementptr inbounds nuw [16 x i8], ptr %i.ql, i64 %.038.lcssa.i ; 2 uses
  store ptr %i.pr, ptr %i.qn, align 8, !tbaa !30
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  store float %i.pz, ptr %i.qo, align 8, !tbaa !21
  store i32 %i.qm, ptr %i.pg, align 8, !tbaa !19
  br label %pq_push.exit

bb.bg:                                            ; preds = %bb.be
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %i.qq = load float, ptr %i.qp, align 8, !tbaa !21
  %i.qr = fcmp ult float %i.pz, %i.qq
  br i1 %i.qr, label %.preheader41.i, label %pq_push.exit

.preheader41.i:                                   ; preds = %bb.bg
  %.not51.i = icmp eq i32 %i.qb, 1
  br i1 %.not51.i, label %.critedge2.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader41.i, %bb.bh
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.bh ], [ 0, %.preheader41.i ] ; 3 uses
  %i.qs = load ptr, ptr %i.pd, align 8, !tbaa !17 ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.qt = getelementptr inbounds nuw [16 x i8], ptr %i.qs, i64 %indvars.iv.next.i ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  %i.qv = load float, ptr %i.qu, align 8, !tbaa !21
  %i.qw = fcmp ogt float %i.qv, %i.pz
  br i1 %i.qw, label %bb.bh, label %.critedge2.i

bb.bh:                                            ; preds = %.lr.ph.i
  %i.qx = getelementptr inbounds nuw [16 x i8], ptr %i.qs, i64 %indvars.iv.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qx, ptr noundef nonnull align 8 dereferenceable(16) %i.qt, i64 16, i1 false), !tbaa.struct !25
  %i.qy = load i32, ptr %i.ph, align 4, !tbaa !20
  %i.qz = add i32 %i.qy, -1
  %i.ra = zext i32 %i.qz to i64
  %i.rb = icmp samesign ult i64 %indvars.iv.next.i, %i.ra
  br i1 %i.rb, label %.lr.ph.i, label %..critedge2.loopexit_crit_edge.i, !llvm.loop !31

..critedge2.loopexit_crit_edge.i:                 ; preds = %bb.bh
  %.pre.pre.i = load ptr, ptr %i.pd, align 8, !tbaa !17 ; 2 uses
  br label %.critedge2.i, !llvm.loop !31

.critedge2.i:                                     ; preds = %.lr.ph.i, %..critedge2.loopexit_crit_edge.i, %.preheader41.i
  %i.rc = phi ptr [ %i.po, %.preheader41.i ], [ %.pre.pre.i, %..critedge2.loopexit_crit_edge.i ], [ %i.qs, %.lr.ph.i ]
  %i.rd = phi ptr [ %i.pp, %.preheader41.i ], [ %.pre.pre.i, %..critedge2.loopexit_crit_edge.i ], [ %i.qs, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %.preheader41.i ], [ %indvars.iv.next.i, %..critedge2.loopexit_crit_edge.i ], [ %indvars.iv.i, %.lr.ph.i ]
  %i.re = getelementptr inbounds nuw [16 x i8], ptr %i.rd, i64 %.0.lcssa.i ; 2 uses
  store ptr %i.pr, ptr %i.re, align 8, !tbaa !30
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  store float %i.pz, ptr %i.rf, align 8, !tbaa !21
  br label %pq_push.exit

pq_push.exit:                                     ; preds = %.critedge2.i, %bb.bg, %.critedge.i, %bb.bc, %bb.bd
  %i.rg = phi ptr [ %i.rc, %.critedge2.i ], [ %i.po, %bb.bg ], [ %i.ql, %.critedge.i ], [ %i.po, %bb.bc ], [ %i.po, %bb.bd ]
  %i.rh = phi ptr [ %i.rd, %.critedge2.i ], [ %i.pp, %bb.bg ], [ %i.ql, %.critedge.i ], [ %i.pp, %bb.bc ], [ %i.pp, %bb.bd ]
  %indvars.iv.next526 = add nuw nsw i64 %indvars.iv525, 1 ; 2 uses
  %exitcond529.not = icmp eq i64 %indvars.iv.next526, %wide.trip.count533
  br i1 %exitcond529.not, label %._crit_edge447, label %bb.bc, !llvm.loop !194

bb.bi:                                            ; preds = %._crit_edge447
  tail call void @select_neighbors(ptr noundef %0, ptr noundef nonnull %i.pd, ptr noundef nonnull %i.pj, i32 noundef %3, i32 noundef %i.pn, i32 noundef 1)
  %.pre536 = load ptr, ptr %i.ou, align 8, !tbaa !26
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre536, i64 %i.lk
  %.phi.trans.insert537 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 320
  %.pre538 = load i32, ptr %.phi.trans.insert537, align 8, !tbaa !133
  %i.ri = icmp eq i32 %.pre538, %i.pn
  br i1 %i.ri, label %pq_new.exit.thread.sink.split.sink.split, label %pq_free.exit

pq_free.exit:                                     ; preds = %._crit_edge447, %bb.bi
  %i.rj = load ptr, ptr @hfree, align 8, !tbaa !15
  %i.rk = load ptr, ptr %i.pd, align 8, !tbaa !17
  tail call void %i.rj(ptr noundef %i.rk) #34, !inline_history !144
  %i.rl = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.rl(ptr noundef nonnull %i.pd) #34, !inline_history !144
  %i.rm = load ptr, ptr %0, align 8, !tbaa !91    ; 2 uses
  %i.rn = load i32, ptr %i.op, align 4, !tbaa !92 ; 2 uses
  %i.ro = icmp ugt i32 %i.rn, %3
  br i1 %i.ro, label %.lr.ph450, label %._crit_edge451

._crit_edge451:                                   ; preds = %bb.bl, %pq_free.exit
  %.0281.lcssa = phi ptr [ %i.rm, %pq_free.exit ], [ %.2, %bb.bl ] ; 2 uses
  %.not334 = icmp eq ptr %.0281.lcssa, null
  br i1 %.not334, label %pq_new.exit.thread, label %bb.bm

.lr.ph450:                                        ; preds = %pq_free.exit, %bb.bl
  %.0280449 = phi i32 [ %i.rz, %bb.bl ], [ %i.rn, %pq_free.exit ] ; 2 uses
  %.0281448 = phi ptr [ %.2, %bb.bl ], [ %i.rm, %pq_free.exit ] ; 3 uses
  %i.rp = load ptr, ptr %i.ou, align 8, !tbaa !26
  %i.rq = tail call ptr @search_layer_with_filter(ptr noundef nonnull %0, ptr noundef readonly %i.rp, ptr noundef %.0281448, i32 noundef 1, i32 noundef %.0280449, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 0) ; 4 uses
  %.not336 = icmp eq ptr %i.rq, null
  br i1 %.not336, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph450
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %i.rs = load i32, ptr %i.rr, align 8, !tbaa !19 ; 2 uses
  %.not337 = icmp eq i32 %i.rs, 0
  %.pre539 = load ptr, ptr %i.rq, align 8, !tbaa !17 ; 2 uses
  br i1 %.not337, label %pq_free.exit351, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.rt = add i32 %i.rs, -1
  %i.ru = zext i32 %i.rt to i64
  %i.rv = getelementptr inbounds nuw [16 x i8], ptr %.pre539, i64 %i.ru
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !30
  br label %pq_free.exit351

pq_free.exit351:                                  ; preds = %bb.bk, %bb.bj
  %.1 = phi ptr [ %i.rw, %bb.bk ], [ %.0281448, %bb.bj ]
  %i.rx = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.rx(ptr noundef %.pre539) #34, !inline_history !144
  %i.ry = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.ry(ptr noundef nonnull %i.rq) #34, !inline_history !144
  br label %bb.bl

bb.bl:                                            ; preds = %pq_free.exit351, %.lr.ph450
  %.2 = phi ptr [ %.1, %pq_free.exit351 ], [ %.0281448, %.lr.ph450 ] ; 2 uses
  %i.rz = add i32 %.0280449, -1                   ; 2 uses
  %i.sa = icmp ugt i32 %i.rz, %3
  br i1 %i.sa, label %.lr.ph450, label %._crit_edge451, !llvm.loop !195

bb.bm:                                            ; preds = %._crit_edge451
  %i.sb = load ptr, ptr %i.ou, align 8, !tbaa !26
  %i.sc = tail call ptr @search_layer_with_filter(ptr noundef nonnull %0, ptr noundef readonly %i.sb, ptr noundef nonnull %.0281.lcssa, i32 noundef 200, i32 noundef %3, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 0) ; 3 uses
  %.not335 = icmp eq ptr %i.sc, null
  br i1 %.not335, label %pq_new.exit.thread, label %pq_free.exit353

pq_free.exit353:                                  ; preds = %bb.bm
  %i.sd = load ptr, ptr %i.ou, align 8, !tbaa !26 ; 2 uses
  %i.se = getelementptr inbounds nuw [24 x i8], ptr %i.sd, i64 %i.lk
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 320
  %i.sg = load i32, ptr %i.sf, align 8, !tbaa !133
  %i.sh = load i32, ptr %i.oq, align 8, !tbaa !90
  %i.si = lshr i32 %i.sh, 1
  %i.sj = icmp ugt i32 %i.sg, %i.si
  %i.sk = select i1 %i.sj, i32 1, i32 2
  tail call void @select_neighbors(ptr noundef nonnull %0, ptr noundef nonnull %i.sc, ptr noundef %i.sd, i32 noundef %3, i32 noundef %i.pn, i32 noundef %i.sk)
  br label %pq_new.exit.thread.sink.split.sink.split

pq_new.exit.thread.sink.split.sink.split:         ; preds = %bb.bi, %pq_free.exit353
  %.sink602 = phi ptr [ %i.sc, %pq_free.exit353 ], [ %i.pd, %bb.bi ] ; 2 uses
  %i.sl = load ptr, ptr @hfree, align 8, !tbaa !15
  %i.sm = load ptr, ptr %.sink602, align 8, !tbaa !17
  tail call void %i.sl(ptr noundef %i.sm) #34
  br label %pq_new.exit.thread.sink.split

pq_new.exit.thread.sink.split:                    ; preds = %pq_new.exit.thread.sink.split.sink.split, %bb.bb
  %.sink = phi ptr [ %i.pd, %bb.bb ], [ %.sink602, %pq_new.exit.thread.sink.split.sink.split ]
  %i.sn = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.sn(ptr noundef nonnull %.sink) #34
  br label %pq_new.exit.thread

pq_new.exit.thread:                               ; preds = %pq_new.exit.thread.sink.split, %bb.ba, %._crit_edge451, %bb.bm, %bb.az, %bb.ay
  %indvars.iv.next531 = add nuw nsw i64 %indvars.iv530, 1 ; 2 uses
  %exitcond534.not = icmp eq i64 %indvars.iv.next531, %wide.trip.count533
  br i1 %exitcond534.not, label %.critedge375._crit_edge, label %bb.ay, !llvm.loop !196

.sink.split.sink.split.sink.split:                ; preds = %._crit_edge415, %.critedge375._crit_edge
  %.sink605 = phi ptr [ %i.k, %.critedge375._crit_edge ], [ %i.f, %._crit_edge415 ]
  %.sink603.ph = phi ptr [ %i.il, %.critedge375._crit_edge ], [ %i.k, %._crit_edge415 ]
  %.sink598.ph.ph = phi ptr [ %i.lj, %.critedge375._crit_edge ], [ %i.il, %._crit_edge415 ]
  %i.so = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.so(ptr noundef nonnull %.sink605) #34
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %.sink.split.sink.split.sink.split, %._crit_edge405
  %.sink603 = phi ptr [ %i.f, %._crit_edge405 ], [ %.sink603.ph, %.sink.split.sink.split.sink.split ]
  %.sink598.ph = phi ptr [ %i.k, %._crit_edge405 ], [ %.sink598.ph.ph, %.sink.split.sink.split.sink.split ]
  %i.sp = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.sp(ptr noundef nonnull %.sink603) #34
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %._crit_edge
  %.sink598 = phi ptr [ %i.f, %._crit_edge ], [ %.sink598.ph, %.sink.split.sink.split ]
  %i.sq = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.sq(ptr noundef nonnull %.sink598) #34
  br label %bb.bn

bb.bn:                                            ; preds = %.sink.split, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @hnsw_unlink_node(ptr noundef captures(address_is_null) %0, ptr noundef captures(address) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.ap

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.d = atomicrmw add ptr %i.c, i64 1 seq_cst, align 8 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1656
end_hunk_1
begin_hunk_2_@hnsw_test_graph_recall:bb.a
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv151
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !26
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 288
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !15
  %i.dd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef %i.dc) ; 0 uses
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge127, label %.lr.ph126, !llvm.loop !273

bb.n:                                             ; preds = %bb.j
  %i.de = add i32 %.095129, 1
  br label %bb.o

bb.o:                                             ; preds = %.critedge.thread, %.critedge, %._crit_edge127, %bb.n
  %.196 = phi i32 [ %.095129, %._crit_edge127 ], [ %.095129, %.critedge ], [ %i.de, %bb.n ], [ %.095129, %.critedge.thread ]
  %.1 = phi i32 [ %i.bx, %._crit_edge127 ], [ %i.bv, %.critedge ], [ %.092131, %bb.n ], [ %i.bw, %.critedge.thread ]
  %i.df = getelementptr inbounds nuw i8, ptr %.093130, i64 304
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !26
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %bb.o
  %.297 = phi i32 [ %.196, %bb.o ], [ %.095129, %.loopexit ] ; 2 uses
  %.194 = phi ptr [ %i.dg, %bb.o ], [ %.093130, %.loopexit ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.o ], [ %.092131, %.loopexit ] ; 2 uses
  %.not = icmp eq ptr %.194, null
  br i1 %.not, label %hnsw_release_read_slot.exit, label %bb.f

hnsw_release_read_slot.exit:                      ; preds = %bb.p, %bb.e
  %.095.lcssa = phi i32 [ 0, %bb.e ], [ %.297, %bb.p ] ; 3 uses
  %.092.lcssa = phi i32 [ 0, %bb.e ], [ %.2, %bb.p ] ; 2 uses
  %.090.lcssa = phi i32 [ 0, %bb.e ], [ %i.aa, %bb.p ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.di = tail call i32 @pthread_rwlock_unlock(ptr noundef nonnull %i.dh) #34 ; 0 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.dk = zext nneg i32 %i.t to i64
  %i.dl = getelementptr inbounds nuw [40 x i8], ptr %i.dj, i64 %i.dk
  %i.dm = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.dl) #34 ; 0 uses
  %i.dn = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.dn(ptr noundef nonnull %i.d) #34
  %i.do = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.do(ptr noundef nonnull %i.g) #34
  %i.dp = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.dp(ptr noundef nonnull %i.m) #34
  %i.dq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %.090.lcssa) ; 0 uses
  %.not105 = icmp eq i32 %.090.lcssa, 0
  br i1 %.not105, label %.critedge110, label %bb.q

bb.q:                                             ; preds = %hnsw_release_read_slot.exit
  %i.dr = uitofp i32 %.095.lcssa to float
  %i.ds = fmul nnan float %i.dr, 1.000000e+02
  %i.dt = uitofp i32 %.090.lcssa to float         ; 2 uses
  %i.du = fdiv float %i.ds, %i.dt
  %i.dv = fpext float %i.du to double
  %i.dw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, i32 noundef %.095.lcssa, double noundef %i.dv) ; 0 uses
  %i.dx = uitofp i32 %.092.lcssa to float
  %i.dy = fmul nnan float %i.dx, 1.000000e+02
  %i.dz = fdiv float %i.dy, %i.dt
  %i.ea = fpext float %i.dz to double
  br label %bb.r

.critedge110:                                     ; preds = %hnsw_release_read_slot.exit
  %i.eb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, i32 noundef %.095.lcssa, double noundef 0.000000e+00) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %.critedge110, %bb.q
  %i.ec = phi double [ %i.ea, %bb.q ], [ 0.000000e+00, %.critedge110 ]
  %i.ed = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %.092.lcssa, double noundef %i.ec) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.r, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @hnsw_ground_truth_with_filter(ptr noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef writeonly captures(none) %3, ptr noundef writeonly captures(address_is_null) %4, i32 noundef %5, i32 noundef %6, ptr noundef readonly captures(address_is_null) %7, ptr noundef %8) local_unnamed_addr #3 {
bb.a:
  %9 = alloca %struct.hnswNode, align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.a = call i32 @hnsw_init_tmp_node(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %6, ptr noundef %1)
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %hnsw_free_tmp_node.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.d = tail call ptr %i.c(i64 noundef 16) #34, !inline_history !143 ; 12 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.f = zext i32 %2 to i64
  %i.g = shl nuw nsw i64 %i.f, 4
  %i.h = tail call ptr %i.e(i64 noundef %i.g) #34, !inline_history !143 ; 3 uses
  store ptr %i.h, ptr %i.d, align 8, !tbaa !17
  %.not10.i = icmp eq ptr %i.h, null
  br i1 %.not10.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.i(ptr noundef nonnull %i.d) #34, !inline_history !143
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15   ; 2 uses
  %.not.i52 = icmp eq ptr %i.k, %1
  br i1 %.not.i52, label %hnsw_free_tmp_node.exit, label %hnsw_free_tmp_node.exit.sink.split

bb.f:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store i32 0, ptr %i.l, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 3 uses
  store i32 %2, ptr %i.m, align 4, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.04163 = load ptr, ptr %i.n, align 8, !tbaa !26 ; 2 uses
  %.not4864 = icmp eq ptr %.04163, null
  br i1 %.not4864, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %.not50 = icmp eq ptr %7, null
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 24
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %.backedge
  %.04165 = phi ptr [ %.04163, %.lr.ph ], [ %.041, %.backedge ] ; 8 uses
  br i1 %.not50, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.04165, i64 288
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15
  %i.u = tail call i32 %7(ptr noundef %i.t, ptr noundef %8) #34
  %.not51 = icmp eq i32 %i.u, 0
  br i1 %.not51, label %.backedge, label %bb.i

.backedge:                                        ; preds = %.critedge2.i, %bb.o, %.critedge.i, %bb.h
  %.041.in.be = getelementptr inbounds nuw i8, ptr %.04165, i64 304
  %.041 = load ptr, ptr %.041.in.be, align 8, !tbaa !26 ; 2 uses
  %.not48 = icmp eq ptr %.041, null
  br i1 %.not48, label %._crit_edge.loopexit, label %bb.g, !llvm.loop !274

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = load i32, ptr %i.o, align 8, !tbaa !71
  switch i32 %i.v, label %bb.m [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %.04165, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15
  %i.z = load i32, ptr %i.q, align 8, !tbaa !74
  %i.aa = tail call float @vectors_distance_float(ptr noundef %i.w, ptr noundef %i.y, i32 noundef %i.z)
  br label %hnsw_distance.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %.04165, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !15
  %i.ae = load i32, ptr %i.q, align 8, !tbaa !74
  %i.af = load float, ptr %i.r, align 8, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %.04165, i64 24
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !27
  %i.ai = tail call float @vectors_distance_q8(ptr noundef %i.ab, ptr noundef %i.ad, i32 noundef %i.ae, float noundef %i.af, float noundef %i.ah)
  br label %hnsw_distance.exit

bb.l:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %.04165, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !15
  %i.am = load i32, ptr %i.q, align 8, !tbaa !74
  %i.an = tail call float @vectors_distance_bin(ptr noundef %i.aj, ptr noundef %i.al, i32 noundef %i.am)
  br label %hnsw_distance.exit

bb.m:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @__PRETTY_FUNCTION__.hnsw_distance) #35
  unreachable

hnsw_distance.exit:                               ; preds = %bb.j, %bb.k, %bb.l
  %.0.i53 = phi float [ %i.aa, %bb.j ], [ %i.ai, %bb.k ], [ %i.an, %bb.l ] ; 5 uses
  %i.ao = load i32, ptr %i.l, align 8, !tbaa !19  ; 3 uses
  %i.ap = load i32, ptr %i.m, align 4, !tbaa !20  ; 2 uses
  %i.aq = icmp ult i32 %i.ao, %i.ap
  br i1 %i.aq, label %.preheader.i, label %bb.o

.preheader.i:                                     ; preds = %hnsw_distance.exit
  %.not45.i = icmp eq i32 %i.ao, 0
  br i1 %.not45.i, label %.critedge.i, label %.lr.ph47.preheader.i

.lr.ph47.preheader.i:                             ; preds = %.preheader.i
  %i.ar = zext i32 %i.ao to i64
  br label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.n, %.lr.ph47.preheader.i
  %indvars.iv53.i = phi i64 [ %i.ar, %.lr.ph47.preheader.i ], [ %indvars.iv.next54.i, %bb.n ] ; 3 uses
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %indvars.iv.next54.i = add nsw i64 %indvars.iv53.i, -1 ; 3 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %indvars.iv.next54.i ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load float, ptr %i.au, align 8, !tbaa !21
  %i.aw = fcmp olt float %i.av, %.0.i53
  br i1 %i.aw, label %bb.n, label %.critedge.loopexit.i

bb.n:                                             ; preds = %.lr.ph47.i
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %indvars.iv53.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !tbaa.struct !25
  %.not.i54 = icmp eq i64 %indvars.iv.next54.i, 0
  br i1 %.not.i54, label %.critedge.loopexit.i, label %.lr.ph47.i, !llvm.loop !28

.critedge.loopexit.i:                             ; preds = %bb.n, %.lr.ph47.i
  %.038.lcssa.ph.i = phi i64 [ %indvars.iv53.i, %.lr.ph47.i ], [ 0, %bb.n ]
  %.pre57.i = load i32, ptr %i.l, align 8, !tbaa !19
  %i.ay = add i32 %.pre57.i, 1
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader.i
  %i.az = phi i32 [ 1, %.preheader.i ], [ %i.ay, %.critedge.loopexit.i ]
  %.038.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %.038.lcssa.ph.i, %.critedge.loopexit.i ]
  %i.ba = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %.038.lcssa.i ; 2 uses
  store ptr %.04165, ptr %i.bb, align 8, !tbaa !30
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store float %.0.i53, ptr %i.bc, align 8, !tbaa !21
  store i32 %i.az, ptr %i.l, align 8, !tbaa !19
  br label %.backedge

bb.o:                                             ; preds = %hnsw_distance.exit
  %i.bd = load ptr, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load float, ptr %i.be, align 8, !tbaa !21
  %i.bg = fcmp ult float %.0.i53, %i.bf
  br i1 %i.bg, label %.preheader41.i, label %.backedge

.preheader41.i:                                   ; preds = %bb.o
  %.not51.i = icmp eq i32 %i.ap, 1
  br i1 %.not51.i, label %.critedge2.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader41.i, %bb.p
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.p ], [ 0, %.preheader41.i ] ; 3 uses
  %i.bh = load ptr, ptr %i.d, align 8, !tbaa !17  ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %indvars.iv.next.i ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !21
  %i.bl = fcmp ogt float %i.bk, %.0.i53
  br i1 %i.bl, label %bb.p, label %.critedge2.i

bb.p:                                             ; preds = %.lr.ph.i
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %indvars.iv.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false), !tbaa.struct !25
  %i.bn = load i32, ptr %i.m, align 4, !tbaa !20
  %i.bo = add i32 %i.bn, -1
  %i.bp = zext i32 %i.bo to i64
  %i.bq = icmp samesign ult i64 %indvars.iv.next.i, %i.bp
  br i1 %i.bq, label %.lr.ph.i, label %..critedge2.loopexit_crit_edge.i, !llvm.loop !31

..critedge2.loopexit_crit_edge.i:                 ; preds = %bb.p
  %.pre.pre.i = load ptr, ptr %i.d, align 8, !tbaa !17
  br label %.critedge2.i, !llvm.loop !31

.critedge2.i:                                     ; preds = %.lr.ph.i, %..critedge2.loopexit_crit_edge.i, %.preheader41.i
  %i.br = phi ptr [ %i.bd, %.preheader41.i ], [ %.pre.pre.i, %..critedge2.loopexit_crit_edge.i ], [ %i.bh, %.lr.ph.i ]
  %.0.lcssa.i = phi i64 [ 0, %.preheader41.i ], [ %indvars.iv.next.i, %..critedge2.loopexit_crit_edge.i ], [ %indvars.iv.i, %.lr.ph.i ]
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %.0.lcssa.i ; 2 uses
  store ptr %.04165, ptr %i.bs, align 8, !tbaa !30
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store float %.0.i53, ptr %i.bt, align 8, !tbaa !21
  br label %.backedge

._crit_edge.loopexit:                             ; preds = %.backedge
  %.pre = load i32, ptr %i.l, align 8, !tbaa !19
  %.pre79.pre = load ptr, ptr %i.d, align 8, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %.pre79 = phi ptr [ %.pre79.pre, %._crit_edge.loopexit ], [ %i.h, %bb.f ] ; 21 uses
  %i.bu = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %bb.f ] ; 19 uses
  %. = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.bu) ; 6 uses
  %.not = icmp eq i32 %., 0
  br i1 %.not, label %pq_free.exit, label %.lr.ph68

.lr.ph68:                                         ; preds = %._crit_edge
  %.not49 = icmp eq ptr %4, null
  %wide.trip.count77 = zext i32 %. to i64         ; 17 uses
  br i1 %.not49, label %.lr.ph68.split.us.preheader, label %.lr.ph68.split.preheader

.lr.ph68.split.preheader:                         ; preds = %.lr.ph68
  %min.iters.check = icmp ult i32 %., 50
  br i1 %min.iters.check, label %.lr.ph68.split.preheader126, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph68.split.preheader
  %i.bv = add nsw i64 %wide.trip.count77, -1      ; 2 uses
  %i.bw = add i32 %i.bu, -1
  %i.bx = trunc i64 %i.bv to i32
  %i.by = icmp ult i32 %i.bw, %i.bx
  %i.bz = icmp ugt i64 %i.bv, 4294967295
  %i.ca = or i1 %i.by, %i.bz
  br i1 %i.ca, label %.lr.ph68.split.preheader126, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.cb = shl nuw nsw i64 %wide.trip.count77, 3
  %scevgep = getelementptr i8, ptr %3, i64 %i.cb
  %i.cc = add i32 %i.bu, -1
  %i.cd = zext i32 %i.cc to i64
  %i.ce = shl nuw nsw i64 %i.cd, 4                ; 4 uses
  %i.cf = add nuw nsw i64 %i.ce, 16
  %i.cg = shl nuw nsw i64 %wide.trip.count77, 4   ; 2 uses
  %i.ch = sub nsw i64 %i.cf, %i.cg
  %scevgep97 = getelementptr i8, ptr %.pre79, i64 %i.ch
  %i.ci = getelementptr i8, ptr %.pre79, i64 %i.ce
  %scevgep98 = getelementptr i8, ptr %i.ci, i64 8
  %i.cj = shl nuw nsw i64 %wide.trip.count77, 2
  %scevgep99 = getelementptr i8, ptr %4, i64 %i.cj
  %i.ck = add nuw nsw i64 %i.ce, 24
  %i.cl = sub nsw i64 %i.ck, %i.cg
  %scevgep100 = getelementptr i8, ptr %.pre79, i64 %i.cl
  %i.cm = getelementptr i8, ptr %.pre79, i64 %i.ce
  %scevgep101 = getelementptr i8, ptr %i.cm, i64 12
  %bound0 = icmp ult ptr %3, %scevgep98
  %bound1 = icmp ult ptr %scevgep97, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0102 = icmp ult ptr %4, %scevgep101
  %bound1103 = icmp ult ptr %scevgep100, %scevgep99
  %found.conflict104 = and i1 %bound0102, %bound1103
  %conflict.rdx = or i1 %found.conflict, %found.conflict104
  br i1 %conflict.rdx, label %.lr.ph68.split.preheader126, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count77, 4294967294 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.cn = trunc i64 %index to i32
  %.neg = xor i32 %i.cn, -1
  %i.co = trunc i64 %index to i32
  %i.cp = add i32 %i.co, 2
  %i.cq = add i32 %i.bu, %.neg
  %i.cr = sub i32 %i.bu, %i.cp
  %i.cs = zext i32 %i.cq to i64
  %i.ct = zext i32 %i.cr to i64
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %i.cs ; 2 uses
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %i.ct ; 2 uses
  %i.cw = load ptr, ptr %i.cu, align 8, !tbaa !30, !alias.scope !275
  %i.cx = load ptr, ptr %i.cv, align 8, !tbaa !30, !alias.scope !275
  %i.cy = insertelement <2 x ptr> poison, ptr %i.cw, i64 0
  %i.cz = insertelement <2 x ptr> %i.cy, ptr %i.cx, i64 1
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index
  store <2 x ptr> %i.cz, ptr %i.da, align 8, !tbaa !26, !alias.scope !278, !noalias !275
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.dd = load float, ptr %i.db, align 8, !tbaa !21, !alias.scope !280
  %i.de = load float, ptr %i.dc, align 8, !tbaa !21, !alias.scope !280
  %i.df = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.dg = insertelement <2 x float> %i.df, float %i.de, i64 1
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index
  store <2 x float> %i.dg, ptr %i.dh, align 4, !tbaa !27, !alias.scope !282, !noalias !280
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !284

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count77
  br i1 %cmp.n, label %pq_free.exit, label %.lr.ph68.split.preheader126

.lr.ph68.split.preheader126:                      ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph68.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph68.split.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count77, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph68.split.prol.loopexit, label %.lr.ph68.split.prol

.lr.ph68.split.prol:                              ; preds = %.lr.ph68.split.preheader126
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1 ; 2 uses
  %i.dj = trunc nuw i64 %indvars.iv.next.prol to i32
  %i.dk = sub i32 %i.bu, %i.dj
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %i.dl ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !30
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.ph
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !26
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dq = load float, ptr %i.dp, align 8, !tbaa !21
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.ph
  store float %i.dq, ptr %i.dr, align 4, !tbaa !27
  br label %.lr.ph68.split.prol.loopexit

.lr.ph68.split.prol.loopexit:                     ; preds = %.lr.ph68.split.prol, %.lr.ph68.split.preheader126
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph68.split.preheader126 ], [ %indvars.iv.next.prol, %.lr.ph68.split.prol ]
  %i.ds = add nsw i64 %wide.trip.count77, -1
  %i.dt = icmp eq i64 %indvars.iv.ph, %i.ds
  br i1 %i.dt, label %pq_free.exit, label %.lr.ph68.split

.lr.ph68.split.us.preheader:                      ; preds = %.lr.ph68
  %min.iters.check114 = icmp ult i32 %., 34
  br i1 %min.iters.check114, label %.lr.ph68.split.us.preheader125, label %vector.scevcheck105

vector.scevcheck105:                              ; preds = %.lr.ph68.split.us.preheader
  %i.du = add nsw i64 %wide.trip.count77, -1      ; 2 uses
  %i.dv = add i32 %i.bu, -1
  %i.dw = trunc i64 %i.du to i32
  %i.dx = icmp ult i32 %i.dv, %i.dw
  %i.dy = icmp ugt i64 %i.du, 4294967295
  %i.dz = or i1 %i.dx, %i.dy
  br i1 %i.dz, label %.lr.ph68.split.us.preheader125, label %vector.memcheck106

vector.memcheck106:                               ; preds = %vector.scevcheck105
  %i.ea = shl nuw nsw i64 %wide.trip.count77, 3
  %scevgep107 = getelementptr i8, ptr %3, i64 %i.ea
  %i.eb = add i32 %i.bu, -1
  %i.ec = zext i32 %i.eb to i64
  %i.ed = shl nuw nsw i64 %i.ec, 4                ; 2 uses
  %i.ee = add nuw nsw i64 %i.ed, 16
  %i.ef = shl nuw nsw i64 %wide.trip.count77, 4
  %i.eg = sub nsw i64 %i.ee, %i.ef
  %scevgep108 = getelementptr i8, ptr %.pre79, i64 %i.eg
  %i.eh = getelementptr i8, ptr %.pre79, i64 %i.ed
  %scevgep109 = getelementptr i8, ptr %i.eh, i64 8
  %bound0110 = icmp ult ptr %3, %scevgep109
end_hunk_2
