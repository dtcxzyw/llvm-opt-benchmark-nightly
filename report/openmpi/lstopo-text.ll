inline.NumInlined: 29
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@output_console:bb.a

bb.q:                                             ; preds = %bb.p
  %i.ag = load i32, ptr %i.w, align 8, !tbaa !33
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @hwloc_lstopo_show_summary(ptr noundef %i.h, ptr noundef %i.c)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ai = icmp samesign ugt i32 %i.e, 1
  br i1 %i.ai, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.aj = load i32, ptr %i.w, align 8, !tbaa !33
  %i.ak = icmp eq i32 %i.aj, -1
  br i1 %i.ak, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @output_distances(ptr noundef nonnull %0)
  tail call fastcc void @output_memattrs(ptr noundef nonnull %0)
  %.val = load ptr, ptr %0, align 8, !tbaa !12
  tail call fastcc void @output_cpukinds(ptr %.val)
  %.pr = load i32, ptr %i.w, align 8, !tbaa !33
  %i.al = icmp eq i32 %.pr, -1
  br i1 %i.al, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.am = tail call ptr @hwloc_topology_get_complete_cpuset(ptr noundef %i.c) #19 ; 2 uses
  %i.an = tail call ptr @hwloc_topology_get_topology_cpuset(ptr noundef %i.c) #19 ; 4 uses
  %i.ao = tail call ptr @hwloc_topology_get_allowed_cpuset(ptr noundef %i.c) #19 ; 2 uses
  %i.ap = tail call i32 @hwloc_bitmap_isequal(ptr noundef %i.an, ptr noundef %i.am) #19
  %.not78 = icmp eq i32 %i.ap, 0
  br i1 %.not78, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.aq = tail call noalias ptr @hwloc_bitmap_alloc() #16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.ar = tail call i32 @hwloc_bitmap_copy(ptr noundef %i.aq, ptr noundef %i.am) #16 ; 0 uses
  %i.as = tail call i32 @hwloc_bitmap_andnot(ptr noundef %i.aq, ptr noundef %i.aq, ptr noundef %i.an) #16 ; 0 uses
  %i.at = call i32 @hwloc_bitmap_asprintf(ptr noundef nonnull %i.a, ptr noundef %i.aq) #16 ; 0 uses
  %i.au = call i32 @hwloc_bitmap_weight(ptr noundef %i.aq) #19
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.aw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.3, i32 noundef %i.au, ptr noundef %i.av) #16 ; 0 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !34
  call void @free(ptr noundef %i.ax) #16
  call void @hwloc_bitmap_free(ptr noundef %i.aq) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ay = call i32 @hwloc_bitmap_isequal(ptr noundef %i.an, ptr noundef %i.ao) #19
  %.not79 = icmp eq i32 %i.ay, 0
  br i1 %.not79, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.az = call noalias ptr @hwloc_bitmap_alloc() #16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.ba = call i32 @hwloc_bitmap_copy(ptr noundef %i.az, ptr noundef %i.an) #16 ; 0 uses
  %i.bb = call i32 @hwloc_bitmap_andnot(ptr noundef %i.az, ptr noundef %i.az, ptr noundef %i.ao) #16 ; 0 uses
  %i.bc = call i32 @hwloc_bitmap_asprintf(ptr noundef nonnull %i.b, ptr noundef %i.az) #16 ; 0 uses
  %i.bd = call i32 @hwloc_bitmap_weight(ptr noundef %i.az) #19
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.bf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.4, i32 noundef %i.bd, ptr noundef %i.be) #16 ; 0 uses
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !34
  call void @free(ptr noundef %i.bg) #16
  call void @hwloc_bitmap_free(ptr noundef %i.az) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bh = call i32 @hwloc_topology_is_thissystem(ptr noundef %i.c) #19
  %.not80 = icmp eq i32 %i.bh, 0
  br i1 %.not80, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  %i.bi = call i64 @fwrite(ptr nonnull @.str.5, i64 30, i64 1, ptr nonnull %i.h) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.t, %bb.p, %bb.s, %bb.z, %bb.aa, %bb.u
  %i.bj = load ptr, ptr @stdout, align 8, !tbaa !26
  %.not81 = icmp eq ptr %i.h, %i.bj
  br i1 %.not81, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.critedge
  %i.bk = call i32 @fclose(ptr noundef nonnull %i.h) ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.i, %.critedge, %bb.ab, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %.critedge ], [ -1, %bb.b ], [ 0, %bb.ab ], [ 0, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noalias ptr @open_output(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @output_distances(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [17 x i8], align 16               ; 7 uses
  %i.b = alloca [17 x i8], align 16               ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !12     ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i32 0, ptr %i.c, align 4, !tbaa !27
  %i.i = call i32 @hwloc_distances_get(ptr noundef %i.d, ptr noundef nonnull %i.c, ptr noundef null, i64 noundef 0, i64 noundef 0) #16
  %i.j = icmp sgt i32 %i.i, -1
  %i.k = load i32, ptr %i.c, align 4              ; 2 uses
  %i.l = icmp ne i32 %i.k, 0
  %or.cond = select i1 %i.j, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.m = zext i32 %i.k to i64
  %i.n = shl nuw nsw i64 %i.m, 3
  %i.o = call noalias ptr @malloc(i64 noundef %i.n) #20 ; 4 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = call i32 @hwloc_distances_get(ptr noundef %i.d, ptr noundef nonnull %i.c, ptr noundef nonnull %i.o, i64 noundef 0, i64 noundef 0) #16
  %.not63 = icmp eq i32 %i.p, 0
  %i.q = load i32, ptr %i.c, align 4
  %i.r = icmp ne i32 %i.q, 0
  %or.cond74 = select i1 %.not63, i1 %i.r, i1 false
  br i1 %or.cond74, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 556
  %.not70 = icmp eq i32 %i.f, 1                   ; 2 uses
  %i.t = select i1 %.not70, ptr @.str.19, ptr @.str.18 ; 2 uses
  %.in.v.i = select i1 %.not70, i64 16, i64 52
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %hwloc_utils_print_distance_matrix.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %hwloc_utils_print_distance_matrix.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !37   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !39   ; 2 uses
  %i.y = and i64 %i.x, 4
  %.not64 = icmp eq i64 %i.y, 0
  %i.z = and i64 %i.x, 8
  %.not65 = icmp eq i64 %i.z, 0
  %i.aa = select i1 %.not65, ptr @.str.15, ptr @.str.14
  %i.ab = select i1 %.not64, ptr %i.aa, ptr @.str.13 ; 2 uses
  %i.ac = call ptr @hwloc_distances_get_name(ptr noundef %i.d, ptr noundef %i.v) #16 ; 2 uses
  %.not66 = icmp eq ptr %i.ac, null
  %spec.store.select = select i1 %.not66, ptr @.str.16, ptr %i.ac ; 2 uses
  %i.ad = load i32, ptr %i.s, align 4, !tbaa !43  ; 2 uses
  %.not67 = icmp eq i32 %i.ad, -1
  br i1 %.not67, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !37
  %i.af = call i32 @hwloc_distances_transform(ptr noundef %i.d, ptr noundef %i.ae, i32 noundef %i.ad, ptr noundef null, i64 noundef 0) #16 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ag = load ptr, ptr %i.u, align 8, !tbaa !37  ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !39 ; 3 uses
  %i.aj = and i64 %i.ai, 16
  %.not68 = icmp eq i64 %i.aj, 0
  %i.ak = load i32, ptr %i.ag, align 8, !tbaa !44 ; 2 uses
  br i1 %.not68, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.ab, ptr noundef nonnull %spec.store.select, i64 noundef %i.ai, i32 noundef %i.ak, ptr noundef nonnull %i.t) #16 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !45
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !46 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !48
  %i.aq = call ptr @hwloc_obj_type_string(i32 noundef %i.ap) #17
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !52
  %i.at = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.20, ptr noundef nonnull %i.ab, ptr noundef nonnull %spec.store.select, i64 noundef %i.ai, i32 noundef %i.ak, ptr noundef %i.aq, i32 noundef %i.as, ptr noundef nonnull %i.t) #16 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.au = load ptr, ptr %i.u, align 8, !tbaa !37  ; 4 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !44 ; 9 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !45
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !53
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !39
  %i.bc = add i32 %i.av, 1                        ; 3 uses
  %i.bd = mul i32 %i.bc, 17
  %i.be = zext i32 %i.bd to i64
  %i.bf = call noalias ptr @malloc(i64 noundef %i.be) #20 ; 6 uses
  %i.bg = mul i32 %i.av, 17
  %i.bh = mul i32 %i.bg, %i.av
  %i.bi = zext i32 %i.bh to i64
  %i.bj = call noalias ptr @malloc(i64 noundef %i.bi) #20 ; 4 uses
  %i.bk = icmp ne ptr %i.bf, null
  %i.bl = icmp ne ptr %i.bj, null
  %or.cond.i = and i1 %i.bk, %i.bl
  br i1 %or.cond.i, label %bb.j, label %hwloc_utils_print_distance_matrix.exit

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.bf, ptr noundef nonnull align 1 dereferenceable(17) @.str.21, i64 17, i1 false)
  %.not.i = icmp eq i32 %i.av, 0                  ; 2 uses
  br i1 %.not.i, label %.lr.ph118.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.bm = and i64 %i.bb, 16
  %.not101.i = icmp eq i64 %i.bm, 0
  %wide.trip.count.i = zext i32 %i.av to i64      ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.q, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.q ] ; 2 uses
  %.pn.i = phi ptr [ %i.bf, %.lr.ph.i ], [ %.091109.i, %bb.q ]
  %.086107.i = phi i64 [ 5, %.lr.ph.i ], [ %spec.select.i, %bb.q ]
  %.091109.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !46 ; 4 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.in.v.i
  %i.bp = load i32, ptr %.in.i, align 4, !tbaa !27 ; 2 uses
  %i.bq = load i32, ptr %i.bo, align 8, !tbaa !48 ; 2 uses
  switch i32 %i.bq, label %bb.n [
    i32 16, label %bb.l
    i32 15, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !54
  %i.bt = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 17, ptr noundef nonnull @.str.22, ptr noundef %i.bs) #16
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !55 ; 4 uses
  %i.bw = load i16, ptr %i.bv, align 8, !tbaa !56
  %i.bx = zext i16 %i.bw to i32
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %i.bz = load i8, ptr %i.by, align 2, !tbaa !56
  %i.ca = zext i8 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 3
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !56
  %i.cd = zext i8 %i.cc to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.cf = load i8, ptr %i.ce, align 4, !tbaa !56
  %i.cg = zext i8 %i.cf to i32
  %i.ch = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 17, ptr noundef nonnull @.str.23, i32 noundef %i.bx, i32 noundef %i.ca, i32 noundef %i.cd, i32 noundef %i.cg) #16
  br label %bb.q

bb.n:                                             ; preds = %bb.k
  br i1 %.not101.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = call ptr @hwloc_obj_type_string(i32 noundef %i.bq) #17
  %i.cj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 17, ptr noundef nonnull @.str.24, ptr noundef %i.ci, i32 noundef %i.bp) #16
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ck = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 17, ptr noundef nonnull @.str.25, i32 noundef %i.bp) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m, %bb.l
  %.090.in.i = phi i32 [ %i.bt, %bb.l ], [ %i.ch, %bb.m ], [ %i.cj, %bb.o ], [ %i.ck, %bb.p ]
  %.090.i = sext i32 %.090.in.i to i64            ; 3 uses
  %spec.select.i = call i64 @llvm.umax.i64(i64 %.086107.i, i64 %.090.i) ; 2 uses
  %i.cl = sub nsw i64 16, %.090.i                 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.091109.i, i64 %i.cl
  %i.cn = add nsw i64 %.090.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cm, ptr nonnull align 16 %i.a, i64 %i.cn, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.091109.i, i8 32, i64 %i.cl, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader104.i, label %bb.k, !llvm.loop !57

.preheader104.i:                                  ; preds = %bb.q, %bb.s
  %.1115.i = phi i32 [ %7, %bb.s ], [ 0, %bb.q ]  ; 2 uses
  %.288114.i = phi i64 [ %spec.select103.i, %bb.s ], [ %spec.select.i, %bb.q ]
  %.192113.i = phi ptr [ %6, %bb.s ], [ %i.bj, %bb.q ]
  %1 = mul i32 %.1115.i, %i.av
  br label %bb.r

.preheader.i:                                     ; preds = %bb.s
  %.not129.i = icmp eq i32 %i.bc, 0
  br i1 %.not129.i, label %._crit_edge.thread.i, label %.lr.ph118.i

._crit_edge.thread.i:                             ; preds = %.preheader.i
  %fputc163.i = call i32 @fputc(i32 10, ptr %i.h) ; 0 uses
  %.pre = sub nsw i64 0, %spec.select103.i
  br label %.lr.ph124.i

.lr.ph118.i:                                      ; preds = %.preheader.i, %bb.j
  %.288.lcssa160.i = phi i64 [ %spec.select103.i, %.preheader.i ], [ 5, %bb.j ]
  %2 = sub nsw i64 0, %.288.lcssa160.i            ; 2 uses
  %invariant.gep.i = getelementptr i8, ptr %i.bf, i64 %2
  %wide.trip.count141.i = zext i32 %i.bc to i64
  br label %bb.t

bb.r:                                             ; preds = %bb.r, %.preheader104.i
  %indvars.iv132.i = phi i64 [ 0, %.preheader104.i ], [ %indvars.iv.next133.i, %bb.r ] ; 2 uses
  %.389111.i = phi i64 [ %.288114.i, %.preheader104.i ], [ %spec.select103.i, %bb.r ]
  %.293110.i = phi ptr [ %.192113.i, %.preheader104.i ], [ %6, %bb.r ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %3 = trunc nuw i64 %indvars.iv132.i to i32
  %4 = add i32 %1, %3
  %5 = zext i32 %4 to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %5
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !59
  %i.cq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 17, ptr noundef nonnull @.str.26, i64 noundef %i.cp) #16
  %i.cr = sext i32 %i.cq to i64                   ; 3 uses
  %spec.select103.i = call i64 @llvm.umax.i64(i64 %.389111.i, i64 %i.cr) ; 4 uses
  %i.cs = sub nsw i64 16, %i.cr                   ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.293110.i, i64 %i.cs
  %i.cu = add nsw i64 %i.cr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ct, ptr nonnull align 16 %i.b, i64 %i.cu, i1 false)
  call void @llvm.memset.p0.i64(ptr align 1 %.293110.i, i8 32, i64 %i.cs, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %indvars.iv.next133.i = add nuw nsw i64 %indvars.iv132.i, 1 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.293110.i, i64 17 ; 2 uses
  %exitcond136.not.i = icmp eq i64 %indvars.iv.next133.i, %wide.trip.count.i
  br i1 %exitcond136.not.i, label %bb.s, label %bb.r, !llvm.loop !60

bb.s:                                             ; preds = %bb.r
  %7 = add nuw i32 %.1115.i, 1                    ; 2 uses
  %exitcond137.not.i = icmp eq i32 %7, %i.av
  br i1 %exitcond137.not.i, label %.preheader.i, label %.preheader104.i, !llvm.loop !61

bb.t:                                             ; preds = %bb.t, %.lr.ph118.i
  %indvars.iv138.i = phi i64 [ 0, %.lr.ph118.i ], [ %indvars.iv.next139.i, %bb.t ] ; 2 uses
  %i.cv = mul i64 %indvars.iv138.i, 17
  %i.cw = and i64 %i.cv, 4294967295
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.cw
  %i.cx = getelementptr i8, ptr %gep.i, i64 16
  %i.cy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.27, ptr noundef %i.cx) #16 ; 0 uses
  %indvars.iv.next139.i = add nuw nsw i64 %indvars.iv138.i, 1 ; 2 uses
  %exitcond142.not.i = icmp eq i64 %indvars.iv.next139.i, %wide.trip.count141.i
  br i1 %exitcond142.not.i, label %._crit_edge.i, label %bb.t, !llvm.loop !62

._crit_edge.i:                                    ; preds = %bb.t
  %fputc.i = call i32 @fputc(i32 10, ptr %i.h)    ; 0 uses
  br i1 %.not.i, label %hwloc_utils_print_distance_matrix.exit, label %._crit_edge.i..lr.ph124.i_crit_edge

._crit_edge.i..lr.ph124.i_crit_edge:              ; preds = %._crit_edge.i
  %.pre76 = zext i32 %i.av to i64
  br label %.lr.ph124.i

.lr.ph124.i:                                      ; preds = %._crit_edge.i..lr.ph124.i_crit_edge, %._crit_edge.thread.i
  %wide.trip.count151.i.pre-phi = phi i64 [ %.pre76, %._crit_edge.i..lr.ph124.i_crit_edge ], [ 4294967295, %._crit_edge.thread.i ] ; 2 uses
  %.pre-phi = phi i64 [ %2, %._crit_edge.i..lr.ph124.i_crit_edge ], [ %.pre, %._crit_edge.thread.i ] ; 2 uses
  %invariant.gep126.i = getelementptr i8, ptr %i.bf, i64 %.pre-phi
  %invariant.gep119.i = getelementptr i8, ptr %i.bj, i64 %.pre-phi
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %.lr.ph124.i
  %indvars.iv148.i = phi i64 [ 0, %.lr.ph124.i ], [ %indvars.iv.next149.i, %bb.w ] ; 2 uses
  %indvars.iv.next149.i = add nuw nsw i64 %indvars.iv148.i, 1 ; 3 uses
  %i.cz = mul i64 %indvars.iv.next149.i, 17
  %i.da = and i64 %i.cz, 4294967295
  %gep127.i = getelementptr i8, ptr %invariant.gep126.i, i64 %i.da
  %i.db = getelementptr i8, ptr %gep127.i, i64 16
  %i.dc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.27, ptr noundef %i.db) #16 ; 0 uses
  %i.dd = trunc nuw i64 %indvars.iv148.i to i32
  %i.de = mul i32 %i.av, %i.dd
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %indvars.iv143.i = phi i64 [ 0, %bb.u ], [ %indvars.iv.next144.i, %bb.v ] ; 2 uses
  %i.df = trunc nuw i64 %indvars.iv143.i to i32
  %i.dg = add i32 %i.de, %i.df
  %i.dh = mul i32 %i.dg, 17
  %i.di = zext i32 %i.dh to i64
  %gep120.i = getelementptr i8, ptr %invariant.gep119.i, i64 %i.di
  %i.dj = getelementptr i8, ptr %gep120.i, i64 16
  %i.dk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.27, ptr noundef %i.dj) #16 ; 0 uses
  %indvars.iv.next144.i = add nuw nsw i64 %indvars.iv143.i, 1 ; 2 uses
  %exitcond147.not.i = icmp eq i64 %indvars.iv.next144.i, %wide.trip.count151.i.pre-phi
  br i1 %exitcond147.not.i, label %bb.w, label %bb.v, !llvm.loop !63

bb.w:                                             ; preds = %bb.v
  %fputc99.i = call i32 @fputc(i32 10, ptr %i.h)  ; 0 uses
  %exitcond152.not.i = icmp eq i64 %indvars.iv.next149.i, %wide.trip.count151.i.pre-phi
  br i1 %exitcond152.not.i, label %hwloc_utils_print_distance_matrix.exit, label %bb.u, !llvm.loop !64

hwloc_utils_print_distance_matrix.exit:           ; preds = %bb.w, %bb.i, %._crit_edge.i
  call void @free(ptr noundef %i.bf) #16
  call void @free(ptr noundef %i.bj) #16
  %i.dl = load ptr, ptr %i.u, align 8, !tbaa !37
  call void @hwloc_distances_release(ptr noundef %i.d, ptr noundef %i.dl) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dm = load i32, ptr %i.c, align 4, !tbaa !27
  %i.dn = zext i32 %i.dm to i64
  %i.do = icmp samesign ult i64 %indvars.iv.next, %i.dn
  br i1 %i.do, label %bb.d, label %.loopexit, !llvm.loop !65

.loopexit:                                        ; preds = %hwloc_utils_print_distance_matrix.exit, %bb.c
  call void @free(ptr noundef nonnull %i.o) #16
  br label %bb.x

bb.x:                                             ; preds = %bb.b, %bb.a, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @output_memattrs(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca [16 x i8], align 16               ; 5 uses
  %i.e = alloca [16 x i8], align 16               ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 10 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 8 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !12     ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.o = load i32, ptr %i.n, align 4, !tbaa !30
  %i.p = icmp ne i32 %i.o, 0
  %i.q = icmp sgt i32 %i.m, 2
  %i.r = select i1 %i.p, i1 true, i1 %i.q         ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 36         ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.as, %bb.a
  %.066 = phi i32 [ 0, %bb.a ], [ %i.en, %bb.as ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  %or.cond = icmp ugt i32 %.066, 1
  %or.cond80.not = select i1 %i.r, i1 true, i1 %or.cond
  br i1 %or.cond80.not, label %bb.c, label %bb.as

bb.c:                                             ; preds = %bb.b
  %i.t = call i32 @hwloc_memattr_get_name(ptr noundef %i.k, i32 noundef %.066, ptr noundef nonnull %i.f) #16
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.at, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = call i32 @hwloc_memattr_get_flags(ptr noundef %i.k, i32 noundef %.066, ptr noundef nonnull %i.g) #16
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @__assert_fail(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 336, ptr noundef nonnull @__PRETTY_FUNCTION__.output_memattrs) #21
  unreachable

bb.f:                                             ; preds = %bb.d
  store i32 0, ptr %i.h, align 4, !tbaa !27
  %i.w = call i32 @hwloc_memattr_get_targets(ptr noundef %i.k, i32 noundef %.066, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.h, ptr noundef null, ptr noundef null) #16
  %.not72 = icmp eq i32 %i.w, 0
  br i1 %.not72, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @__assert_fail(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 340, ptr noundef nonnull @__PRETTY_FUNCTION__.output_memattrs) #21
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.x = load i32, ptr %i.h, align 4
  %i.y = icmp ne i32 %i.x, 0
  %or.cond3 = select i1 %i.r, i1 true, i1 %i.y
  br i1 %or.cond3, label %bb.i, label %bb.as

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !59
  %i.ab = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %.066, ptr noundef %i.z, i64 noundef %i.aa) ; 0 uses
  %i.ac = load i32, ptr %i.h, align 4, !tbaa !27
  %i.ad = zext i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = call noalias ptr @malloc(i64 noundef %i.ae) #20 ; 5 uses
  %.not73 = icmp eq ptr %i.af, null
  br i1 %.not73, label %bb.as, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = call i32 @hwloc_memattr_get_targets(ptr noundef %i.k, i32 noundef %.066, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.af, ptr noundef null) #16
  %.not74 = icmp eq i32 %i.ag, 0
  br i1 %.not74, label %.preheader88, label %bb.k

.preheader88:                                     ; preds = %bb.j
  %i.ah = load i32, ptr %i.h, align 4, !tbaa !27
  %.not97 = icmp eq i32 %i.ah, 0
  br i1 %.not97, label %._crit_edge, label %.lr.ph94

bb.k:                                             ; preds = %bb.j
  call void @__assert_fail(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__.output_memattrs) #21
  unreachable

.lr.ph94:                                         ; preds = %.preheader88, %bb.ar
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %bb.ar ], [ 0, %.preheader88 ] ; 3 uses
  %i.ai = load i64, ptr %i.g, align 8, !tbaa !59
  %i.aj = and i64 %i.ai, 4
  %.not75 = icmp eq i64 %i.aj, 0
  br i1 %.not75, label %bb.l, label %bb.s

bb.l:                                             ; preds = %.lr.ph94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv102 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !46
  %i.am = call i32 @hwloc_memattr_get_value(ptr noundef %i.k, i32 noundef %.066, ptr noundef %i.al, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.i) #16
  %.not76 = icmp eq i32 %i.am, 0
  br i1 %.not76, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.an = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31) ; 0 uses
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !46 ; 3 uses
  %.val81 = load i32, ptr %i.s, align 4, !tbaa !36
  %i.ap = icmp eq i32 %.val81, 1                  ; 2 uses
  %.in.v.i = select i1 %i.ap, i64 16, i64 52
  %.in.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.in.v.i
  %i.aq = load i32, ptr %.in.i, align 4, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %i.ar = call i32 @hwloc_obj_type_snprintf(ptr noundef nonnull %i.e, i64 noundef 16, ptr noundef %i.ao, i32 noundef 0) #16 ; 0 uses
  %i.as = icmp eq i32 %i.aq, -1
  %i.at = select i1 %i.ap, i32 80, i32 76         ; 2 uses
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.au = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, ptr noundef nonnull %i.e, i32 noundef %i.at) ; 0 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.av = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, ptr noundef nonnull %i.e, i32 noundef %i.at, i32 noundef %i.aq) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !54 ; 2 uses
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %output_memattr_obj.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, ptr noundef nonnull %i.ax) ; 0 uses
  br label %output_memattr_obj.exit

output_memattr_obj.exit:                          ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  %i.az = load i64, ptr %i.i, align 8, !tbaa !59
  %i.ba = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, i64 noundef %i.az) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %output_memattr_obj.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  br label %bb.ar

bb.s:                                             ; preds = %.lr.ph94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  store i32 0, ptr %i.j, align 4, !tbaa !27
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv102 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !46
  %i.bd = call i32 @hwloc_memattr_get_initiators(ptr noundef %i.k, i32 noundef %.066, ptr noundef %i.bc, i64 noundef 0, ptr noundef nonnull %i.j, ptr noundef null, ptr noundef null) #16
  %.not77 = icmp eq i32 %i.bd, 0
  br i1 %.not77, label %bb.t, label %bb.aq

bb.t:                                             ; preds = %bb.s
  %i.be = load i32, ptr %i.j, align 4, !tbaa !27
  %i.bf = zext i32 %i.be to i64                   ; 2 uses
  %i.bg = shl nuw nsw i64 %i.bf, 4
  %i.bh = call noalias ptr @malloc(i64 noundef %i.bg) #20 ; 4 uses
  %i.bi = shl nuw nsw i64 %i.bf, 3
  %i.bj = call noalias ptr @malloc(i64 noundef %i.bi) #20 ; 4 uses
  %i.bk = icmp ne ptr %i.bh, null
  %i.bl = icmp ne ptr %i.bj, null
  %or.cond5 = and i1 %i.bk, %i.bl
  br i1 %or.cond5, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.bm = load ptr, ptr %i.bb, align 8, !tbaa !46
  %i.bn = call i32 @hwloc_memattr_get_initiators(ptr noundef %i.k, i32 noundef %.066, ptr noundef %i.bm, i64 noundef 0, ptr noundef nonnull %i.j, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bj) #16
  %.not78 = icmp eq i32 %i.bn, 0
  %i.bo = load i32, ptr %i.j, align 4
  %i.bp = icmp ne i32 %i.bo, 0
  %or.cond96 = select i1 %.not78, i1 %i.bp, i1 false
  br i1 %or.cond96, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.u, %output_memattr_initiator.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %output_memattr_initiator.exit ], [ 0, %bb.u ] ; 3 uses
  %i.bq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31) ; 0 uses
  %i.br = load ptr, ptr %i.bb, align 8, !tbaa !46 ; 3 uses
  %.val = load i32, ptr %i.s, align 4, !tbaa !36
  %i.bs = icmp eq i32 %.val, 1                    ; 2 uses
  %.in.v.i82 = select i1 %i.bs, i64 16, i64 52
  %.in.i83 = getelementptr inbounds nuw i8, ptr %i.br, i64 %.in.v.i82
  %i.bt = load i32, ptr %.in.i83, align 4, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.bu = call i32 @hwloc_obj_type_snprintf(ptr noundef nonnull %i.d, i64 noundef 16, ptr noundef %i.br, i32 noundef 0) #16 ; 0 uses
  %i.bv = icmp eq i32 %i.bt, -1
  %i.bw = select i1 %i.bs, i32 80, i32 76         ; 2 uses
  br i1 %i.bv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph
  %i.bx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, ptr noundef nonnull %i.d, i32 noundef %i.bw) ; 0 uses
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph
  %i.by = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, ptr noundef nonnull %i.d, i32 noundef %i.bw, i32 noundef %i.bt) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !54 ; 2 uses
  %.not.i84 = icmp eq ptr %i.ca, null
  br i1 %.not.i84, label %output_memattr_obj.exit85, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, ptr noundef nonnull %i.ca) ; 0 uses
  br label %output_memattr_obj.exit85

output_memattr_obj.exit85:                        ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !59
  %i.ce = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, i64 noundef %i.cd) ; 0 uses
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %indvars.iv ; 3 uses
  %i.cg = load ptr, ptr %0, align 8, !tbaa !12
  %i.ch = load i32, ptr %i.cf, align 8, !tbaa !66 ; 2 uses
  switch i32 %i.ch, label %bb.ap [
    i32 1, label %bb.z
    i32 0, label %bb.ak
  ]

bb.z:                                             ; preds = %output_memattr_obj.exit85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !56 ; 2 uses
  %.not.i86 = icmp eq ptr %i.cj, null
  br i1 %.not.i86, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @__assert_fail(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.29, i32 noundef 286, ptr noundef nonnull @__PRETTY_FUNCTION__.output_memattr_initiator) #21
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.ck = call i32 @hwloc_bitmap_asprintf(ptr noundef nonnull %i.c, ptr noundef nonnull %i.cj) #16 ; 0 uses
  %i.cl = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.cm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, ptr noundef %i.cl) ; 0 uses
  %i.cn = load ptr, ptr %i.c, align 8, !tbaa !34
  call void @free(ptr noundef %i.cn) #16
  %i.co = load ptr, ptr %i.ci, align 8, !tbaa !56 ; 4 uses
  %i.cp = call i32 @hwloc_bitmap_iszero(ptr noundef readonly %i.co) #19
  %.not.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i, label %bb.ac, label %.thread.i

bb.ac:                                            ; preds = %bb.ab
  %i.cq = call ptr @hwloc_get_obj_by_depth(ptr noundef readonly %i.cg, i32 noundef 0, i32 noundef 0) #19 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 184
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !68 ; 2 uses
  %i.ct = call i32 @hwloc_bitmap_isincluded(ptr noundef readonly %i.co, ptr noundef %i.cs) #19
  %.not15.i.i = icmp eq i32 %i.ct, 0
  br i1 %.not15.i.i, label %.thread.i, label %hwloc_get_child_covering_cpuset.exit.preheader.i.i

hwloc_get_child_covering_cpuset.exit.preheader.i.i: ; preds = %bb.ac
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 120
  %.01.i24.i.i = load ptr, ptr %i.cu, align 8, !tbaa !46 ; 2 uses
  %.not112.i25.i.i = icmp eq ptr %.01.i24.i.i, null
  br i1 %.not112.i25.i.i, label %hwloc_get_obj_covering_cpuset.exit.thread39.i, label %.lr.ph.i.preheader.i.i

hwloc_get_child_covering_cpuset.exit.loopexit.i.i: ; preds = %bb.ad
  %i.cv = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 120
  %.01.i.i.i = load ptr, ptr %i.cv, align 8, !tbaa !46 ; 2 uses
  %.not112.i.i.i = icmp eq ptr %.01.i.i.i, null
  br i1 %.not112.i.i.i, label %hwloc_get_obj_covering_cpuset.exit.thread39.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %hwloc_get_child_covering_cpuset.exit.preheader.i.i, %hwloc_get_child_covering_cpuset.exit.loopexit.i.i
  %.01.i27.i.i = phi ptr [ %.01.i.i.i, %hwloc_get_child_covering_cpuset.exit.loopexit.i.i ], [ %.01.i24.i.i, %hwloc_get_child_covering_cpuset.exit.preheader.i.i ]
  %.01226.i.i = phi ptr [ %.03.i.i.i, %hwloc_get_child_covering_cpuset.exit.loopexit.i.i ], [ %i.cq, %hwloc_get_child_covering_cpuset.exit.preheader.i.i ] ; 3 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ae, %.lr.ph.i.preheader.i.i
  %.03.i.i.i = phi ptr [ %.0.i.i.i, %bb.ae ], [ %.01.i27.i.i, %.lr.ph.i.preheader.i.i ] ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 184
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !68 ; 3 uses
  %.not12.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not12.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i
  %i.cy = call i32 @hwloc_bitmap_isincluded(ptr noundef readonly %i.co, ptr noundef nonnull %i.cx) #19
  %.not13.i.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not13.i.i.i, label %bb.ae, label %hwloc_get_child_covering_cpuset.exit.loopexit.i.i

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 88
  %.0.i.i.i = load ptr, ptr %i.cz, align 8, !tbaa !46 ; 2 uses
  %.not11.i.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not11.i.i.i, label %hwloc_get_obj_covering_cpuset.exit.i, label %.lr.ph.i.i.i, !llvm.loop !69

hwloc_get_obj_covering_cpuset.exit.i:             ; preds = %bb.ae
  %.not25.i = icmp eq ptr %.01226.i.i, null
  br i1 %.not25.i, label %.thread.i, label %hwloc_get_obj_covering_cpuset.exit.hwloc_get_obj_covering_cpuset.exit.thread39_crit_edge.i

hwloc_get_obj_covering_cpuset.exit.hwloc_get_obj_covering_cpuset.exit.thread39_crit_edge.i: ; preds = %hwloc_get_obj_covering_cpuset.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.01226.i.i, i64 184
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !68
  br label %hwloc_get_obj_covering_cpuset.exit.thread39.i

hwloc_get_obj_covering_cpuset.exit.thread39.i:    ; preds = %hwloc_get_child_covering_cpuset.exit.loopexit.i.i, %hwloc_get_obj_covering_cpuset.exit.hwloc_get_obj_covering_cpuset.exit.thread39_crit_edge.i, %hwloc_get_child_covering_cpuset.exit.preheader.i.i
  %i.da = phi ptr [ %.pre.i, %hwloc_get_obj_covering_cpuset.exit.hwloc_get_obj_covering_cpuset.exit.thread39_crit_edge.i ], [ %i.cs, %hwloc_get_child_covering_cpuset.exit.preheader.i.i ], [ %i.cx, %hwloc_get_child_covering_cpuset.exit.loopexit.i.i ] ; 2 uses
  %.2.i42.i = phi ptr [ %.01226.i.i, %hwloc_get_obj_covering_cpuset.exit.hwloc_get_obj_covering_cpuset.exit.thread39_crit_edge.i ], [ %i.cq, %hwloc_get_child_covering_cpuset.exit.preheader.i.i ], [ %.03.i.i.i, %hwloc_get_child_covering_cpuset.exit.loopexit.i.i ]
  %i.db = call i32 @hwloc_bitmap_isequal(ptr noundef %i.da, ptr noundef %i.co) #19
  %.not26.i = icmp eq i32 %i.db, 0
  br i1 %.not26.i, label %.thread.i, label %.preheader.i

.preheader.i:                                     ; preds = %hwloc_get_obj_covering_cpuset.exit.thread39.i, %bb.af
  %i.dc = phi ptr [ %i.dg, %bb.af ], [ %i.da, %hwloc_get_obj_covering_cpuset.exit.thread39.i ]
  %.1.i = phi ptr [ %i.de, %bb.af ], [ %.2.i42.i, %hwloc_get_obj_covering_cpuset.exit.thread39.i ] ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.1.i, i64 72
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !70 ; 3 uses
  %.not28.i = icmp eq ptr %i.de, null
  br i1 %.not28.i, label %.critedge.i, label %bb.af

bb.af:                                            ; preds = %.preheader.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 184
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !68 ; 2 uses
  %i.dh = call i32 @hwloc_bitmap_isequal(ptr noundef %i.dc, ptr noundef %i.dg) #19
  %.not29.i = icmp eq i32 %i.dh, 0
  br i1 %.not29.i, label %.critedge.i, label %.preheader.i, !llvm.loop !71

.critedge.i:                                      ; preds = %bb.af, %.preheader.i
  %i.di = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39) ; 0 uses
  %.val30.i = load i32, ptr %i.s, align 4, !tbaa !36
  %i.dj = icmp eq i32 %.val30.i, 1                ; 2 uses
  %.in.v.i.i = select i1 %i.dj, i64 16, i64 52
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.1.i, i64 %.in.v.i.i
  %i.dk = load i32, ptr %.in.i.i, align 4, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.dl = call i32 @hwloc_obj_type_snprintf(ptr noundef nonnull %i.b, i64 noundef 16, ptr noundef nonnull %.1.i, i32 noundef 0) #16 ; 0 uses
  %i.dm = icmp eq i32 %i.dk, -1
  %i.dn = select i1 %i.dj, i32 80, i32 76         ; 2 uses
  br i1 %i.dm, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.critedge.i
  %i.do = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, ptr noundef nonnull %i.b, i32 noundef %i.dn) ; 0 uses
  br label %bb.ai

bb.ah:                                            ; preds = %.critedge.i
  %i.dp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, ptr noundef nonnull %i.b, i32 noundef %i.dn, i32 noundef %i.dk) ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dq = getelementptr inbounds nuw i8, ptr %.1.i, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !54 ; 2 uses
  %.not.i31.i = icmp eq ptr %i.dr, null
  br i1 %.not.i31.i, label %output_memattr_obj.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ds = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, ptr noundef nonnull %i.dr) ; 0 uses
  br label %output_memattr_obj.exit.i

output_memattr_obj.exit.i:                        ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %putchar.i = call i32 @putchar(i32 41)          ; 0 uses
  br label %.thread.i

.thread.i:                                        ; preds = %output_memattr_obj.exit.i, %hwloc_get_obj_covering_cpuset.exit.thread39.i, %hwloc_get_obj_covering_cpuset.exit.i, %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %output_memattr_initiator.exit

bb.ak:                                            ; preds = %output_memattr_obj.exit85
  %i.dt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41) ; 0 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !56 ; 3 uses
  %.val.i = load i32, ptr %i.s, align 4, !tbaa !36
  %i.dw = icmp eq i32 %.val.i, 1                  ; 2 uses
  %.in.v.i32.i = select i1 %i.dw, i64 16, i64 52
  %.in.i33.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.in.v.i32.i
  %i.dx = load i32, ptr %.in.i33.i, align 4, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.dy = call i32 @hwloc_obj_type_snprintf(ptr noundef nonnull %i.a, i64 noundef 16, ptr noundef %i.dv, i32 noundef 0) #16 ; 0 uses
  %i.dz = icmp eq i32 %i.dx, -1
  %i.ea = select i1 %i.dw, i32 80, i32 76         ; 2 uses
  br i1 %i.dz, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.eb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, ptr noundef nonnull %i.a, i32 noundef %i.ea) ; 0 uses
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.ec = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, ptr noundef nonnull %i.a, i32 noundef %i.ea, i32 noundef %i.dx) ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !54 ; 2 uses
  %.not.i34.i = icmp eq ptr %i.ee, null
  br i1 %.not.i34.i, label %output_memattr_obj.exit35.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ef = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, ptr noundef nonnull %i.ee) ; 0 uses
  br label %output_memattr_obj.exit35.i

output_memattr_obj.exit35.i:                      ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %output_memattr_initiator.exit

bb.ap:                                            ; preds = %output_memattr_obj.exit85
  %i.eg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef %i.ch) ; 0 uses
  br label %output_memattr_initiator.exit

output_memattr_initiator.exit:                    ; preds = %.thread.i, %output_memattr_obj.exit35.i, %bb.ap
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eh = load i32, ptr %i.j, align 4, !tbaa !27
  %i.ei = zext i32 %i.eh to i64
  %i.ej = icmp samesign ult i64 %indvars.iv.next, %i.ei
  br i1 %i.ej, label %.lr.ph, label %.loopexit, !llvm.loop !72

.loopexit:                                        ; preds = %output_memattr_initiator.exit, %bb.u, %bb.t
  call void @free(ptr noundef %i.bh) #16
  call void @free(ptr noundef %i.bj) #16
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  br label %bb.ar

bb.ar:                                            ; preds = %bb.r, %bb.aq
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %i.ek = load i32, ptr %i.h, align 4, !tbaa !27
  %i.el = zext i32 %i.ek to i64
  %i.em = icmp samesign ult i64 %indvars.iv.next103, %i.el
  br i1 %i.em, label %.lr.ph94, label %._crit_edge, !llvm.loop !73

._crit_edge:                                      ; preds = %bb.ar, %.preheader88
  call void @free(ptr noundef %i.af) #16
  br label %bb.as

bb.as:                                            ; preds = %bb.b, %._crit_edge, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  %i.en = add i32 %.066, 1
  br label %bb.b

bb.at:                                            ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @output_cpukinds(ptr %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = tail call noalias ptr @hwloc_bitmap_alloc() #16 ; 3 uses
  %i.f = tail call i32 @hwloc_cpukinds_get_nr(ptr noundef %.0.val, i64 noundef 0) #16 ; 2 uses
  %.not6 = icmp eq i32 %i.f, 0
  br i1 %.not6, label %._crit_edge5, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.a, %bb.c
  %.02 = phi i32 [ %i.w, %bb.c ], [ 0, %bb.a ]    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.g = call i32 @hwloc_cpukinds_get_info(ptr noundef %.0.val, i32 noundef %.02, ptr noundef %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, i64 noundef 0) #16
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.h = call i32 @hwloc_bitmap_asprintf(ptr noundef nonnull %i.d, ptr noundef %i.e) #16 ; 0 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !27
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.k = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, i32 noundef %.02, i32 noundef %i.i, ptr noundef %i.j) ; 0 uses
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !34
  call void @free(ptr noundef %i.l) #16
  %i.m = load i32, ptr %i.c, align 4, !tbaa !27
  %.not7 = icmp eq i32 %i.m, 0
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.b ] ; 2 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %indvars.iv ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !75
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !77
  %i.s = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, ptr noundef %i.p, ptr noundef %i.r) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = load i32, ptr %i.c, align 4, !tbaa !27
  %i.u = zext i32 %i.t to i64
  %i.v = icmp samesign ult i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !78

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %.lr.ph4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.w = add nuw i32 %.02, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.w, %i.f
  br i1 %exitcond.not, label %._crit_edge5, label %.lr.ph4, !llvm.loop !79

._crit_edge5:                                     ; preds = %bb.c, %bb.a
  call void @hwloc_bitmap_free(ptr noundef %i.e) #16
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @hwloc_obj_type_string(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @output_only(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33
  %i.c = load i32, ptr %1, align 8, !tbaa !48
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28
  tail call fastcc void @output_console_obj(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0)
  %fputc = tail call i32 @fputc(i32 10, ptr %i.f) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.036 = load ptr, ptr %i.g, align 8, !tbaa !46  ; 2 uses
  %.not37 = icmp eq ptr %.036, null
  br i1 %.not37, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.038 = phi ptr [ %.0, %.lr.ph ], [ %.036, %bb.c ] ; 2 uses
  tail call fastcc void @output_only(ptr noundef nonnull %0, ptr noundef nonnull %.038)
  %i.h = getelementptr inbounds nuw i8, ptr %.038, i64 88
  %.0 = load ptr, ptr %i.h, align 8, !tbaa !46    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !80

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.i = load i32, ptr %i.a, align 8, !tbaa !33
  %i.j = tail call i32 @hwloc_obj_type_is_memory(i32 noundef %i.i) #16
  %.not31 = icmp eq i32 %i.j, 0
  br i1 %.not31, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.k = load i32, ptr %i.a, align 8, !tbaa !33
  %i.l = icmp eq i32 %i.k, 17
  br i1 %i.l, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.139 = load ptr, ptr %i.m, align 8, !tbaa !46  ; 2 uses
  %.not3240 = icmp eq ptr %.139, null
  br i1 %.not3240, label %.loopexit, label %.lr.ph43

.lr.ph43:                                         ; preds = %bb.e, %.lr.ph43
  %.141 = phi ptr [ %.1, %.lr.ph43 ], [ %.139, %bb.e ] ; 2 uses
  tail call fastcc void @output_only(ptr noundef nonnull %0, ptr noundef nonnull %.141)
  %i.n = getelementptr inbounds nuw i8, ptr %.141, i64 88
  %.1 = load ptr, ptr %i.n, align 8, !tbaa !46    ; 2 uses
  %.not32 = icmp eq ptr %.1, null
  br i1 %.not32, label %.loopexit, label %.lr.ph43, !llvm.loop !81

.loopexit:                                        ; preds = %.lr.ph43, %bb.e, %bb.d
  %i.o = load i32, ptr %i.a, align 8, !tbaa !33
  %i.p = tail call i32 @hwloc_obj_type_is_io(i32 noundef %i.o) #16
  %.not33 = icmp eq i32 %i.p, 0
  br i1 %.not33, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  %i.q = load i32, ptr %i.a, align 8, !tbaa !33
  %i.r = icmp eq i32 %i.q, 17
  br i1 %i.r, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f, %.loopexit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.244 = load ptr, ptr %i.s, align 8, !tbaa !46  ; 2 uses
  %.not3445 = icmp eq ptr %.244, null
  br i1 %.not3445, label %._crit_edge49, label %.lr.ph48

.lr.ph48:                                         ; preds = %bb.g, %.lr.ph48
  %.246 = phi ptr [ %.2, %.lr.ph48 ], [ %.244, %bb.g ] ; 2 uses
  tail call fastcc void @output_only(ptr noundef nonnull %0, ptr noundef nonnull %.246)
  %i.t = getelementptr inbounds nuw i8, ptr %.246, i64 88
  %.2 = load ptr, ptr %i.t, align 8, !tbaa !46    ; 2 uses
  %.not34 = icmp eq ptr %.2, null
  br i1 %.not34, label %._crit_edge49, label %.lr.ph48, !llvm.loop !82

._crit_edge49:                                    ; preds = %.lr.ph48, %bb.g
  %.pr = load i32, ptr %i.a, align 8, !tbaa !33
  %i.u = icmp eq i32 %.pr, 17
  br i1 %i.u, label %bb.h, label %.thread

bb.h:                                             ; preds = %._crit_edge49
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.350 = load ptr, ptr %i.v, align 8, !tbaa !46  ; 2 uses
  %.not3551 = icmp eq ptr %.350, null
  br i1 %.not3551, label %.thread, label %.lr.ph54

.lr.ph54:                                         ; preds = %bb.h, %.lr.ph54
  %.352 = phi ptr [ %.3, %.lr.ph54 ], [ %.350, %bb.h ] ; 2 uses
  tail call fastcc void @output_only(ptr noundef nonnull %0, ptr noundef nonnull %.352)
  %i.w = getelementptr inbounds nuw i8, ptr %.352, i64 88
  %.3 = load ptr, ptr %i.w, align 8, !tbaa !46    ; 2 uses
  %.not35 = icmp eq ptr %.3, null
  br i1 %.not35, label %.thread, label %.lr.ph54, !llvm.loop !83

.thread:                                          ; preds = %.lr.ph54, %bb.h, %bb.f, %._crit_edge49
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @output_topology(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24
  %i.e = icmp slt i32 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 548
  %i.g = load i32, ptr %i.f, align 4, !tbaa !84
  %.not = icmp eq i32 %i.g, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %.not, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.j = load i32, ptr %i.i, align 4, !tbaa !85
  %.not71 = icmp eq i32 %i.j, 0
  br i1 %.not71, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !86
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !87   ; 2 uses
  %i.o = load i32, ptr %1, align 8, !tbaa !48
  %i.p = icmp eq i32 %i.o, 15
  %i.q = icmp eq i32 %i.n, -1
  %or.cond = select i1 %i.p, i1 %i.q, i1 false
  br i1 %or.cond, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.r = phi i32 [ %i.n, %bb.d ], [ 0, %bb.c ]    ; 4 uses
  %i.s = icmp ne ptr %2, null                     ; 2 uses
  %or.cond3 = and i1 %i.s, %i.h
  br i1 %or.cond3, label %bb.e, label %bb.m

bb.e:                                             ; preds = %.thread
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.u = load i32, ptr %i.t, align 8, !tbaa !94
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.f, label %.thread87

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.x = load i32, ptr %i.w, align 4, !tbaa !95
  %.not72 = icmp eq i32 %i.x, 0
  br i1 %.not72, label %bb.g, label %.thread87

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.z = load i32, ptr %i.y, align 8, !tbaa !96
  %.not73 = icmp eq i32 %i.z, 0
  br i1 %.not73, label %bb.h, label %.thread87

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !97
  %.not74 = icmp eq i32 %i.ab, 0
  br i1 %.not74, label %bb.i, label %.thread87

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !68 ; 2 uses
  %.not75 = icmp eq ptr %i.ad, null
  br i1 %.not75, label %.thread87, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !68 ; 2 uses
  %.not76 = icmp eq ptr %i.af, null
  br i1 %.not76, label %.thread87, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = tail call i32 @hwloc_bitmap_isequal(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.af) #19
  %.not77 = icmp eq i32 %i.ag, 0
  br i1 %.not77, label %.thread87, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = tail call i64 @fwrite(ptr nonnull @.str.71, i64 3, i64 1, ptr %i.b) ; 0 uses
  br label %bb.o

bb.m:                                             ; preds = %.thread
  br i1 %i.s, label %.thread87, label %bb.n

.thread87:                                        ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.m
  %fputc = tail call i32 @fputc(i32 10, ptr %i.b) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %.thread87, %bb.m
  %i.ai = shl nsw i32 %3, 1
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.72, i32 noundef %i.ai, ptr noundef nonnull @.str.73) #16 ; 0 uses
  %i.ak = add nsw i32 %3, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.0 = phi i32 [ %i.ak, %bb.n ], [ %3, %bb.l ]   ; 4 uses
  %i.al = icmp sgt i32 %i.r, 1
  br i1 %i.al, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.am = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.74, i32 noundef %i.r) #16 ; 0 uses
  tail call fastcc void @output_console_obj(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.r)
  %i.an = tail call i64 @fwrite(ptr nonnull @.str.75, i64 2, i64 1, ptr %i.b) ; 0 uses
  br label %bb.q

.critedge:                                        ; preds = %bb.o
  tail call fastcc void @output_console_obj(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.r)
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.06688 = load ptr, ptr %i.ao, align 8, !tbaa !46 ; 2 uses
  %.not7889 = icmp eq ptr %.06688, null
  br i1 %.not7889, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.u
  %.06690 = phi ptr [ %.06688, %.lr.ph ], [ %.066, %bb.u ] ; 3 uses
  %i.aq = load i32, ptr %.06690, align 8, !tbaa !48
  %.not84 = icmp eq i32 %i.aq, 3
  br i1 %.not84, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ar = load i32, ptr %i.ap, align 8, !tbaa !98
  %.not85 = icmp eq i32 %i.ar, 0
  br i1 %.not85, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  tail call fastcc void @output_topology(ptr noundef %0, ptr noundef nonnull %.06690, ptr noundef nonnull %1, i32 noundef %.0)
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.as = getelementptr inbounds nuw i8, ptr %.06690, i64 88
  %.066 = load ptr, ptr %i.as, align 8, !tbaa !46 ; 2 uses
  %.not78 = icmp eq ptr %.066, null
  br i1 %.not78, label %._crit_edge, label %bb.r, !llvm.loop !99

._crit_edge:                                      ; preds = %bb.u, %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.191 = load ptr, ptr %i.at, align 8, !tbaa !46 ; 2 uses
  %.not7992 = icmp eq ptr %.191, null
  br i1 %.not7992, label %._crit_edge96, label %.lr.ph95

.lr.ph95:                                         ; preds = %._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 44
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph95, %bb.y
  %.193 = phi ptr [ %.191, %.lr.ph95 ], [ %.1, %bb.y ] ; 3 uses
  %i.av = load i32, ptr %.193, align 8, !tbaa !48
  %.not82 = icmp eq i32 %i.av, 3
  br i1 %.not82, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !100
  %.not83 = icmp eq i32 %i.aw, 0
  br i1 %.not83, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  tail call fastcc void @output_topology(ptr noundef %0, ptr noundef nonnull %.193, ptr noundef nonnull %1, i32 noundef %.0)
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.ax = getelementptr inbounds nuw i8, ptr %.193, i64 88
  %.1 = load ptr, ptr %i.ax, align 8, !tbaa !46   ; 2 uses
  %.not79 = icmp eq ptr %.1, null
  br i1 %.not79, label %._crit_edge96, label %bb.v, !llvm.loop !101

._crit_edge96:                                    ; preds = %bb.y, %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.297 = load ptr, ptr %i.ay, align 8, !tbaa !46 ; 2 uses
  %.not8098 = icmp eq ptr %.297, null
  br i1 %.not8098, label %._crit_edge102, label %.lr.ph101

.lr.ph101:                                        ; preds = %._crit_edge96, %.lr.ph101
  %.299 = phi ptr [ %.2, %.lr.ph101 ], [ %.297, %._crit_edge96 ] ; 2 uses
  tail call fastcc void @output_topology(ptr noundef %0, ptr noundef nonnull %.299, ptr noundef nonnull %1, i32 noundef %.0)
  %i.az = getelementptr inbounds nuw i8, ptr %.299, i64 88
  %.2 = load ptr, ptr %i.az, align 8, !tbaa !46   ; 2 uses
  %.not80 = icmp eq ptr %.2, null
  br i1 %.not80, label %._crit_edge102, label %.lr.ph101, !llvm.loop !102

._crit_edge102:                                   ; preds = %.lr.ph101, %._crit_edge96
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.3103 = load ptr, ptr %i.ba, align 8, !tbaa !46 ; 2 uses
  %.not81104 = icmp eq ptr %.3103, null
  br i1 %.not81104, label %.loopexit, label %.lr.ph107

.lr.ph107:                                        ; preds = %._crit_edge102, %.lr.ph107
  %.3105 = phi ptr [ %.3, %.lr.ph107 ], [ %.3103, %._crit_edge102 ] ; 2 uses
  tail call fastcc void @output_topology(ptr noundef %0, ptr noundef nonnull %.3105, ptr noundef nonnull %1, i32 noundef %.0)
  %i.bb = getelementptr inbounds nuw i8, ptr %.3105, i64 88
  %.3 = load ptr, ptr %i.bb, align 8, !tbaa !46   ; 2 uses
  %.not81 = icmp eq ptr %.3, null
  br i1 %.not81, label %.loopexit, label %.lr.ph107, !llvm.loop !103

.loopexit:                                        ; preds = %.lr.ph107, %._crit_edge102, %bb.d
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @hwloc_lstopo_show_summary(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @hwloc_topology_get_depth(ptr noundef %1) #19 ; 3 uses
  %i.b = sext i32 %i.a to i64
  %i.c = add nsw i64 %i.b, 11
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.c, i64 19) ; 7 uses
  %i.d = icmp sgt i32 %i.a, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.041 = phi i32 [ %i.e, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  tail call fastcc void @hwloc_lstopo_show_summary_depth(ptr noundef %0, i64 noundef %spec.select, ptr noundef %1, i32 noundef %.041)
  %i.e = add nuw nsw i32 %.041, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.e, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !104

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.f = tail call i32 @hwloc_get_nbobjs_by_depth(ptr noundef %1, i32 noundef -3) #19 ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %hwloc_lstopo_show_summary_depth.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.g = tail call i32 @hwloc_get_depth_type(ptr noundef %1, i32 noundef -3) #19 ; 2 uses
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.76, i32 noundef -3) #16
  %i.i = tail call ptr @hwloc_obj_type_string(i32 noundef %i.g) #17
  %i.j = trunc i64 %spec.select to i32
  %i.k = sub i32 %i.j, %i.h
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.78, i32 noundef %i.k, ptr noundef nonnull @.str.73, i32 noundef %i.f, ptr noundef %i.i, i32 noundef %i.g) #16 ; 0 uses
  br label %hwloc_lstopo_show_summary_depth.exit

hwloc_lstopo_show_summary_depth.exit:             ; preds = %._crit_edge, %bb.b
  %i.m = tail call i32 @hwloc_get_nbobjs_by_depth(ptr noundef %1, i32 noundef -8) #19 ; 2 uses
  %.not.i31 = icmp eq i32 %i.m, 0
  br i1 %.not.i31, label %hwloc_lstopo_show_summary_depth.exit32, label %bb.c

bb.c:                                             ; preds = %hwloc_lstopo_show_summary_depth.exit
  %i.n = tail call i32 @hwloc_get_depth_type(ptr noundef %1, i32 noundef -8) #19 ; 2 uses
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.76, i32 noundef -8) #16
  %i.p = tail call ptr @hwloc_obj_type_string(i32 noundef %i.n) #17
  %i.q = trunc i64 %spec.select to i32
  %i.r = sub i32 %i.q, %i.o
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.78, i32 noundef %i.r, ptr noundef nonnull @.str.73, i32 noundef %i.m, ptr noundef %i.p, i32 noundef %i.n) #16 ; 0 uses
  br label %hwloc_lstopo_show_summary_depth.exit32

hwloc_lstopo_show_summary_depth.exit32:           ; preds = %hwloc_lstopo_show_summary_depth.exit, %bb.c
  %i.t = tail call i32 @hwloc_get_nbobjs_by_depth(ptr noundef %1, i32 noundef -4) #19 ; 2 uses
  %.not.i33 = icmp eq i32 %i.t, 0
  br i1 %.not.i33, label %hwloc_lstopo_show_summary_depth.exit34, label %bb.d

bb.d:                                             ; preds = %hwloc_lstopo_show_summary_depth.exit32
  %i.u = tail call i32 @hwloc_get_depth_type(ptr noundef %1, i32 noundef -4) #19 ; 2 uses
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.76, i32 noundef -4) #16
  %i.w = tail call ptr @hwloc_obj_type_string(i32 noundef %i.u) #17
  %i.x = trunc i64 %spec.select to i32
  %i.y = sub i32 %i.x, %i.v
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.78, i32 noundef %i.y, ptr noundef nonnull @.str.73, i32 noundef %i.t, ptr noundef %i.w, i32 noundef %i.u) #16 ; 0 uses
  br label %hwloc_lstopo_show_summary_depth.exit34

hwloc_lstopo_show_summary_depth.exit34:           ; preds = %hwloc_lstopo_show_summary_depth.exit32, %bb.d
  %i.aa = tail call i32 @hwloc_get_nbobjs_by_depth(ptr noundef %1, i32 noundef -5) #19 ; 2 uses
  %.not.i35 = icmp eq i32 %i.aa, 0
  br i1 %.not.i35, label %hwloc_lstopo_show_summary_depth.exit36, label %bb.e

bb.e:                                             ; preds = %hwloc_lstopo_show_summary_depth.exit34
  %i.ab = tail call i32 @hwloc_get_depth_type(ptr noundef %1, i32 noundef -5) #19 ; 2 uses
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.76, i32 noundef -5) #16
  %i.ad = tail call ptr @hwloc_obj_type_string(i32 noundef %i.ab) #17
  %i.ae = trunc i64 %spec.select to i32
  %i.af = sub i32 %i.ae, %i.ac
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.78, i32 noundef %i.af, ptr noundef nonnull @.str.73, i32 noundef %i.aa, ptr noundef %i.ad, i32 noundef %i.ab) #16 ; 0 uses
  br label %hwloc_lstopo_show_summary_depth.exit36

hwloc_lstopo_show_summary_depth.exit36:           ; preds = %hwloc_lstopo_show_summary_depth.exit34, %bb.e
  %i.ah = tail call i32 @hwloc_get_nbobjs_by_depth(ptr noundef %1, i32 noundef -6) #19 ; 2 uses
  %.not.i37 = icmp eq i32 %i.ah, 0
  br i1 %.not.i37, label %hwloc_lstopo_show_summary_depth.exit38, label %bb.f

bb.f:                                             ; preds = %hwloc_lstopo_show_summary_depth.exit36
  %i.ai = tail call i32 @hwloc_get_depth_type(ptr noundef %1, i32 noundef -6) #19 ; 2 uses
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.76, i32 noundef -6) #16
  %i.ak = tail call ptr @hwloc_obj_type_string(i32 noundef %i.ai) #17
  %i.al = trunc i64 %spec.select to i32
  %i.am = sub i32 %i.al, %i.aj
  %i.an = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.78, i32 noundef %i.am, ptr noundef nonnull @.str.73, i32 noundef %i.ah, ptr noundef %i.ak, i32 noundef %i.ai) #16 ; 0 uses
  br label %hwloc_lstopo_show_summary_depth.exit38

hwloc_lstopo_show_summary_depth.exit38:           ; preds = %hwloc_lstopo_show_summary_depth.exit36, %bb.f
  %i.ao = tail call i32 @hwloc_get_nbobjs_by_depth(ptr noundef %1, i32 noundef -7) #19 ; 2 uses
  %.not.i39 = icmp eq i32 %i.ao, 0
  br i1 %.not.i39, label %hwloc_lstopo_show_summary_depth.exit40, label %bb.g

bb.g:                                             ; preds = %hwloc_lstopo_show_summary_depth.exit38
  %i.ap = tail call i32 @hwloc_get_depth_type(ptr noundef %1, i32 noundef -7) #19 ; 2 uses
  %i.aq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.76, i32 noundef -7) #16
  %i.ar = tail call ptr @hwloc_obj_type_string(i32 noundef %i.ap) #17
  %i.as = trunc i64 %spec.select to i32
  %i.at = sub i32 %i.as, %i.aq
  %i.au = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.78, i32 noundef %i.at, ptr noundef nonnull @.str.73, i32 noundef %i.ao, ptr noundef %i.ar, i32 noundef %i.ap) #16 ; 0 uses
  br label %hwloc_lstopo_show_summary_depth.exit40

hwloc_lstopo_show_summary_depth.exit40:           ; preds = %hwloc_lstopo_show_summary_depth.exit38, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @hwloc_topology_get_complete_cpuset(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @hwloc_topology_get_topology_cpuset(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @hwloc_topology_get_allowed_cpuset(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_bitmap_isequal(ptr noundef, ptr noundef) local_unnamed_addr #7

declare noalias ptr @hwloc_bitmap_alloc() local_unnamed_addr #2

declare i32 @hwloc_bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hwloc_bitmap_andnot(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hwloc_bitmap_asprintf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_bitmap_weight(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

declare void @hwloc_bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_topology_is_thissystem(ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @output_synthetic(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !12     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.c = tail call ptr @hwloc_get_obj_by_depth(ptr noundef readonly %i.b, i32 noundef 0, i32 noundef 0) #19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.e = load i32, ptr %i.d, align 8, !tbaa !105
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.g = tail call i64 @fwrite(ptr nonnull @.str.6, i64 55, i64 1, ptr %i.f) #22 ; 0 uses
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i32 @hwloc_get_type_depth(ptr noundef %i.b, i32 noundef 17) #16 ; 2 uses
  switch i32 %i.h, label %hwloc_get_nbobjs_by_type.exit [
    i32 -1, label %hwloc_get_nbobjs_by_type.exit.thread
    i32 -2, label %hwloc_get_nbobjs_by_type.exit.thread57
  ]

hwloc_get_nbobjs_by_type.exit:                    ; preds = %bb.c
  %i.i = tail call i32 @hwloc_get_nbobjs_by_depth(ptr noundef %i.b, i32 noundef %i.h) #19 ; 2 uses
  %.not44 = icmp eq i32 %i.i, 0
  br i1 %.not44, label %hwloc_get_nbobjs_by_type.exit.thread, label %hwloc_get_nbobjs_by_type.exit.thread57

hwloc_get_nbobjs_by_type.exit.thread57:           ; preds = %bb.c, %hwloc_get_nbobjs_by_type.exit
  %.0.i60 = phi i32 [ %i.i, %hwloc_get_nbobjs_by_type.exit ], [ -1, %bb.c ]
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.7, i32 noundef %.0.i60) #18 ; 0 uses
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.m = tail call i64 @fwrite(ptr nonnull @.str.8, i64 50, i64 1, ptr %i.l) #22 ; 0 uses
  br label %hwloc_get_nbobjs_by_type.exit.thread

hwloc_get_nbobjs_by_type.exit.thread:             ; preds = %bb.c, %hwloc_get_nbobjs_by_type.exit.thread57, %hwloc_get_nbobjs_by_type.exit
  %i.n = tail call i32 @hwloc_get_type_depth(ptr noundef %i.b, i32 noundef 14) #16 ; 2 uses
  switch i32 %i.n, label %bb.e [
    i32 -1, label %hwloc_get_nbobjs_by_type.exit50
    i32 -2, label %bb.d
  ]

bb.d:                                             ; preds = %hwloc_get_nbobjs_by_type.exit.thread
  br label %hwloc_get_nbobjs_by_type.exit50

bb.e:                                             ; preds = %hwloc_get_nbobjs_by_type.exit.thread
  %i.o = tail call i32 @hwloc_get_nbobjs_by_depth(ptr noundef %i.b, i32 noundef %i.n) #19
  br label %hwloc_get_nbobjs_by_type.exit50

hwloc_get_nbobjs_by_type.exit50:                  ; preds = %hwloc_get_nbobjs_by_type.exit.thread, %bb.d, %bb.e
  %.0.i49 = phi i32 [ %i.o, %bb.e ], [ -1, %bb.d ], [ 0, %hwloc_get_nbobjs_by_type.exit.thread ] ; 2 uses
  %i.p = tail call i32 @hwloc_get_type_depth(ptr noundef %i.b, i32 noundef 15) #16 ; 2 uses
  switch i32 %i.p, label %bb.g [
    i32 -1, label %hwloc_get_nbobjs_by_type.exit52
    i32 -2, label %bb.f
  ]

bb.f:                                             ; preds = %hwloc_get_nbobjs_by_type.exit50
  br label %hwloc_get_nbobjs_by_type.exit52

bb.g:                                             ; preds = %hwloc_get_nbobjs_by_type.exit50
  %i.q = tail call i32 @hwloc_get_nbobjs_by_depth(ptr noundef %i.b, i32 noundef %i.p) #19
  br label %hwloc_get_nbobjs_by_type.exit52

hwloc_get_nbobjs_by_type.exit52:                  ; preds = %hwloc_get_nbobjs_by_type.exit50, %bb.f, %bb.g
  %.0.i51 = phi i32 [ %i.q, %bb.g ], [ -1, %bb.f ], [ 0, %hwloc_get_nbobjs_by_type.exit50 ] ; 2 uses
  %i.r = tail call i32 @hwloc_get_type_depth(ptr noundef %i.b, i32 noundef 16) #16 ; 2 uses
  switch i32 %i.r, label %bb.h [
    i32 -1, label %hwloc_get_nbobjs_by_type.exit54
    i32 -2, label %hwloc_get_nbobjs_by_type.exit54.thread
  ]

bb.h:                                             ; preds = %hwloc_get_nbobjs_by_type.exit52
  %i.s = tail call i32 @hwloc_get_nbobjs_by_depth(ptr noundef %i.b, i32 noundef %i.r) #19
  br label %hwloc_get_nbobjs_by_type.exit54

hwloc_get_nbobjs_by_type.exit54:                  ; preds = %hwloc_get_nbobjs_by_type.exit52, %bb.h
  %.0.i53 = phi i32 [ %i.s, %bb.h ], [ 0, %hwloc_get_nbobjs_by_type.exit52 ] ; 2 uses
  %i.t = icmp ne i32 %.0.i49, 0
  %i.u = icmp ne i32 %.0.i51, 0
  %or.cond = select i1 %i.t, i1 true, i1 %i.u
  %i.v = icmp ne i32 %.0.i53, 0
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.v
  br i1 %or.cond3, label %hwloc_get_nbobjs_by_type.exit54.thread, label %bb.i

hwloc_get_nbobjs_by_type.exit54.thread:           ; preds = %hwloc_get_nbobjs_by_type.exit52, %hwloc_get_nbobjs_by_type.exit54
  %.0.i5364 = phi i32 [ %.0.i53, %hwloc_get_nbobjs_by_type.exit54 ], [ -1, %hwloc_get_nbobjs_by_type.exit52 ]
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.w, ptr noundef nonnull @.str.9, i32 noundef %.0.i49, i32 noundef %.0.i51, i32 noundef %.0.i5364) #18 ; 0 uses
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.z = tail call i64 @fwrite(ptr nonnull @.str.10, i64 39, i64 1, ptr %i.y) #22 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %hwloc_get_nbobjs_by_type.exit54, %hwloc_get_nbobjs_by_type.exit54.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !106
  %i.ac = call i32 @hwloc_topology_export_synthetic(ptr noundef %i.b, ptr noundef nonnull %i.a, i64 noundef 1024, i64 noundef %i.ab) #16 ; 3 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.af = tail call ptr @__errno_location() #17
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !27
  %i.ah = call ptr @strerror(i32 noundef %i.ag) #16
  %i.ai = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.11, ptr noundef %i.ah) #18 ; 0 uses
  br label %bb.t

bb.k:                                             ; preds = %bb.i
  %i.aj = icmp samesign ugt i32 %i.ac, 1023
  br i1 %i.aj, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ak = add nuw nsw i32 %i.ac, 1
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = call noalias ptr @malloc(i64 noundef %i.al) #20 ; 4 uses
  %.not45 = icmp eq ptr %i.am, null
  br i1 %.not45, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = load i64, ptr %i.aa, align 8, !tbaa !106
  %i.ao = call i32 @hwloc_topology_export_synthetic(ptr noundef %i.b, ptr noundef nonnull %i.am, i64 noundef %i.al, i64 noundef %i.an) #16
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.039 = phi ptr [ %i.am, %bb.m ], [ null, %bb.k ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !25
  %i.as = call noalias ptr @open_output(ptr noundef %1, i32 noundef %i.ar) #16 ; 4 uses
  %.not46 = icmp eq ptr %i.as, null
  br i1 %.not46, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.au = tail call ptr @__errno_location() #17
  %i.av = load i32, ptr %i.au, align 4, !tbaa !27
  %i.aw = call ptr @strerror(i32 noundef %i.av) #16
  %i.ax = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.at, ptr noundef nonnull @.str, ptr noundef %1, ptr noundef %i.aw) #18 ; 0 uses
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %.not47 = icmp eq ptr %.039, null
  %i.ay = select i1 %.not47, ptr %i.a, ptr %.039
  %i.az = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.as, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.ay) #16 ; 0 uses
  %i.ba = load ptr, ptr @stdout, align 8, !tbaa !26
  %.not48 = icmp eq ptr %i.as, %i.ba
  br i1 %.not48, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = call i32 @fclose(ptr noundef nonnull %i.as) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @free(ptr noundef %.039) #16
  br label %bb.t

bb.s:                                             ; preds = %bb.m, %bb.o
  %.1 = phi ptr [ %i.am, %bb.m ], [ %.039, %bb.o ]
  call void @free(ptr noundef %.1) #16
  br label %bb.t

bb.t:                                             ; preds = %bb.b, %bb.j, %bb.s, %bb.l, %bb.r
  %.0 = phi i32 [ 0, %bb.r ], [ -1, %bb.l ], [ -1, %bb.s ], [ -1, %bb.j ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.0
}

declare i32 @hwloc_topology_export_synthetic(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

declare i32 @hwloc_distances_get(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @hwloc_distances_get_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hwloc_distances_transform(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @hwloc_distances_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare i32 @hwloc_memattr_get_name(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hwloc_memattr_get_flags(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #11

declare i32 @hwloc_memattr_get_targets(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare i32 @hwloc_memattr_get_value(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hwloc_memattr_get_initiators(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hwloc_obj_type_snprintf(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_bitmap_iszero(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_bitmap_isincluded(ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @hwloc_cpukinds_get_nr(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @hwloc_cpukinds_get_info(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @output_console_obj(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 7 uses
  %i.b = alloca [16 x i8], align 16               ; 6 uses
  %i.c = alloca [32 x i8], align 16               ; 5 uses
  %i.d = alloca [32 x i8], align 16               ; 7 uses
  %i.e = alloca [64 x i8], align 16               ; 5 uses
  %i.f = alloca [32 x i8], align 16               ; 6 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28   ; 20 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !36   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !24   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.n = icmp sgt i32 %2, 1                       ; 2 uses
  br i1 %i.n, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %1, align 8, !tbaa !48
  %i.p = icmp eq i32 %i.o, 15
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(14) %i.b, ptr noundef nonnull align 1 dereferenceable(14) @.str.45, i64 14, i1 false) #16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.r = load i32, ptr %i.q, align 4, !tbaa !107  ; 2 uses
  %i.s = add nsw i32 %2, -1
  %i.t = add i32 %i.s, %i.r
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 32, ptr noundef nonnull @.str.46, i32 noundef %i.r, i32 noundef %i.t) #16 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !108
  %i.x = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 16, ptr noundef nonnull @.str.47, i32 noundef %i.w) #16 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.z = load i32, ptr %i.y, align 4, !tbaa !107
  %i.aa = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 32, ptr noundef nonnull @.str.48, i32 noundef %i.z) #16 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = load i32, ptr %1, align 8, !tbaa !48
  %i.ac = icmp eq i32 %i.ab, 15
  br i1 %i.ac, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.a, i8 0, i64 10, i1 false)
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !55
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !56
  %i.ai = zext i16 %i.ah to i32
  %i.aj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 10, ptr noundef nonnull @.str.65, i32 noundef %i.ai) #16 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !85
  %i.am = icmp eq i32 %i.al, 0
  %i.an = icmp slt i32 %2, 2
  %or.cond.i = or i1 %i.an, %i.am
  br i1 %or.cond.i, label %bb.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.h
  %i.ao = add nsw i32 %2, -1                      ; 2 uses
  %i.ap = add nsw i32 %2, -2
  %xtraiter = and i32 %i.ao, 7                    ; 3 uses
  %i.aq = icmp ult i32 %i.ap, 7
  br i1 %i.aq, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i32 %i.ao, -8
  br label %.preheader.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !55 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.au = load i8, ptr %i.at, align 2, !tbaa !56
  %i.av = zext i8 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !56
  %i.ay = zext i8 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.ba = load i8, ptr %i.az, align 4, !tbaa !56
  %i.bb = zext i8 %i.ba to i32
  %i.bc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 32, ptr noundef nonnull @.str.66, ptr noundef nonnull %i.a, i32 noundef %i.av, i32 noundef %i.ay, i32 noundef %i.bb) #16 ; 0 uses
  br label %lstopo_busid_snprintf.exit

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.03136.i = phi ptr [ %1, %.preheader.i.preheader.new ], [ %i.bs, %.preheader.i ]
  %niter = phi i32 [ 0, %.preheader.i.preheader.new ], [ %niter.next.7, %.preheader.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.03136.i, i64 56
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !110
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !110
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !110
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !110
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !110
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !110
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !110
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !110 ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.unr-lcssa, label %.preheader.i, !llvm.loop !111

.unr-lcssa:                                       ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.unr-lcssa, %.preheader.i.preheader
  %.03136.i.epil.init = phi ptr [ %1, %.preheader.i.preheader ], [ %i.bs, %.unr-lcssa ]
  %lcmp.mod189 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod189)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.03136.i.epil = phi ptr [ %i.bu, %.preheader.i.epil ], [ %.03136.i.epil.init, %.preheader.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.03136.i.epil, i64 56
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !110 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader.i.epil, !llvm.loop !112

.epilog-lcssa:                                    ; preds = %.preheader.i.epil, %.unr-lcssa
  %.lcssa = phi ptr [ %i.bs, %.unr-lcssa ], [ %i.bu, %.preheader.i.epil ]
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !55 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 3
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !56  ; 2 uses
  %i.bz = zext i8 %i.by to i32                    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.lcssa, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !55 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 3
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !56  ; 2 uses
  %i.ce = icmp eq i8 %i.by, %i.cd
  br i1 %i.ce, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.epilog-lcssa
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %i.cg = load i8, ptr %i.cf, align 2, !tbaa !56
  %i.ch = zext i8 %i.cg to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.cj = load i8, ptr %i.ci, align 4, !tbaa !56
  %i.ck = zext i8 %i.cj to i32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cm = load i8, ptr %i.cl, align 4, !tbaa !56
  %i.cn = zext i8 %i.cm to i32
  %i.co = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 32, ptr noundef nonnull @.str.69, ptr noundef nonnull %i.a, i32 noundef %i.ch, i32 noundef %i.bz, i32 noundef %i.ck, i32 noundef %i.cn) #16 ; 0 uses
  br label %lstopo_busid_snprintf.exit

bb.k:                                             ; preds = %.epilog-lcssa
  %i.cp = zext i8 %i.cd to i32
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %i.cr = load i8, ptr %i.cq, align 2, !tbaa !56
  %i.cs = zext i8 %i.cr to i32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.cu = load i8, ptr %i.ct, align 4, !tbaa !56
  %i.cv = zext i8 %i.cu to i32
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cx = load i8, ptr %i.cw, align 4, !tbaa !56
  %i.cy = zext i8 %i.cx to i32
  %i.cz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 32, ptr noundef nonnull @.str.70, ptr noundef nonnull %i.a, i32 noundef %i.cs, i32 noundef %i.bz, i32 noundef %i.cv, i32 noundef %i.cp, i32 noundef %i.cy) #16 ; 0 uses
  br label %lstopo_busid_snprintf.exit

lstopo_busid_snprintf.exit:                       ; preds = %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.l

bb.l:                                             ; preds = %lstopo_busid_snprintf.exit, %bb.e
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 548 ; 3 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !84
  %i.dc = icmp slt i32 %i.db, 2
  br i1 %i.dc, label %bb.m, label %bb.bf

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  %i.dd = add nsw i32 %i.m, -1                    ; 3 uses
  %i.de = call i32 @hwloc_obj_type_snprintf(ptr noundef nonnull %i.e, i64 noundef 64, ptr noundef nonnull %1, i32 noundef %i.dd) #16 ; 0 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !114 ; 2 uses
  %.not = icmp eq ptr %i.dg, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.49, ptr noundef nonnull %i.e, ptr noundef nonnull %i.dg) #16 ; 0 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %fputs = call i32 @fputs(ptr nonnull %i.e, ptr %i.i) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !52
  %.not123 = icmp eq i32 %i.dj, 0
  br i1 %.not123, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dk = icmp sgt i32 %i.m, 1
  br i1 %i.dk, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dl = load i32, ptr %1, align 8, !tbaa !48
  %i.dm = call i32 @hwloc_obj_type_is_normal(i32 noundef %i.dl) #16
  %.not124 = icmp eq i32 %i.dm, 0
  br i1 %.not124, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dn = load i32, ptr %1, align 8, !tbaa !48
  %i.do = call i32 @hwloc_obj_type_is_memory(i32 noundef %i.dn) #16
  %.not125 = icmp eq i32 %i.do, 0
  br i1 %.not125, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.not126 = icmp eq i32 %i.k, 1
  br i1 %.not126, label %bb.u, label %.sink.split

bb.u:                                             ; preds = %bb.t
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !108
  %.not127 = icmp eq i32 %i.dq, -1
  br i1 %.not127, label %bb.v, label %.sink.split

.sink.split:                                      ; preds = %bb.u, %bb.t
  %.sink = phi ptr [ %i.c, %bb.t ], [ %i.b, %bb.u ]
  %i.dr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.27, ptr noundef nonnull %.sink) #16 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %bb.u, %bb.s, %bb.p
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !54 ; 2 uses
  %.not128 = icmp eq ptr %i.dt, null
  br i1 %.not128, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.du = load i32, ptr %1, align 8, !tbaa !48
  switch i32 %i.du, label %bb.y [
    i32 17, label %bb.x
    i32 12, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w
  %i.dv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.dt) #16 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.v
  %i.dw = icmp eq i32 %i.k, 0
  br i1 %i.dw, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !108
  %.not129 = icmp eq i32 %i.dy, -1
  br i1 %.not129, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dz = icmp sgt i32 %i.m, 1
  br i1 %i.dz, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ea = load i32, ptr %1, align 8, !tbaa !48
  switch i32 %i.ea, label %bb.ad [
    i32 3, label %bb.ac
    i32 13, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab, %bb.aa
  %i.eb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 32, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.b) #16 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.z, %bb.y
  %i.ec = load i32, ptr %1, align 8, !tbaa !48
  %i.ed = icmp eq i32 %i.ec, 15
  %i.ee = icmp slt i32 %i.m, 2                    ; 2 uses
  %or.cond = select i1 %i.ed, i1 %i.ee, i1 false
  br i1 %or.cond, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !55
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 6
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !56
  %i.ej = call ptr @hwloc_pci_class_string(i16 noundef zeroext %i.ei) #16
  %i.ek = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.50, ptr noundef nonnull %i.d, ptr noundef %i.ej) #16 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.el = call i32 @hwloc_obj_attr_snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull @.str.51, i32 noundef %i.dd) #16
  %i.em = add nsw i32 %i.el, 1
  %i.en = sext i32 %i.em to i64                   ; 2 uses
  %i.eo = call noalias ptr @malloc(i64 noundef %i.en) #20 ; 9 uses
  store i8 0, ptr %i.eo, align 1, !tbaa !56
  %i.ep = call i32 @hwloc_obj_attr_snprintf(ptr noundef nonnull %i.eo, i64 noundef %i.en, ptr noundef nonnull %1, ptr noundef nonnull @.str.51, i32 noundef %i.dd) #16 ; 0 uses
  %i.eq = load i8, ptr %i.f, align 16, !tbaa !56
  %.not130 = icmp eq i8 %i.eq, 0
  br i1 %.not130, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.er = load i8, ptr %i.eo, align 1, !tbaa !56
  %.not131 = icmp eq i8 %i.er, 0
  br i1 %.not131, label %bb.as, label %.thread163

.thread163:                                       ; preds = %bb.ag
  %i.es = call i64 @fwrite(ptr nonnull @.str.39, i64 2, i64 1, ptr %i.i) ; 0 uses
  br label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %i.et = call i64 @fwrite(ptr nonnull @.str.39, i64 2, i64 1, ptr %i.i) ; 0 uses
  %fputs133 = call i32 @fputs(ptr nonnull %i.f, ptr %i.i) ; 0 uses
  %i.eu = load i8, ptr %i.eo, align 1, !tbaa !56
  %.not135 = icmp eq i8 %i.eu, 0
  br i1 %.not135, label %.thread164, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %fputc = call i32 @fputc(i32 32, ptr %i.i)      ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %.thread163, %bb.ai
  %.pr = load i8, ptr %i.eo, align 1, !tbaa !56
  %.not136 = icmp eq i8 %.pr, 0
  br i1 %.not136, label %.thread164, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.n, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %bb.ak
  %i.ev = load i32, ptr %1, align 8, !tbaa !48
  %i.ew = icmp eq i32 %i.ev, 15
  br i1 %i.ew, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.ex = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.eo, ptr noundef nonnull dereferenceable(7) @.str.52, i64 noundef 6) #19
  %.not138 = icmp eq i32 %i.ex, 0
  br i1 %.not138, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @__assert_fail(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.29, i32 noundef 90, ptr noundef nonnull @__PRETTY_FUNCTION__.output_console_obj) #21
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 18 ; 2 uses
  %i.ez = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ey, ptr noundef nonnull dereferenceable(5) @.str.54, i64 noundef 4) #19
  %.not139 = icmp eq i32 %i.ez, 0
  br i1 %.not139, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @__assert_fail(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.29, i32 noundef 91, ptr noundef nonnull @__PRETTY_FUNCTION__.output_console_obj) #21
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.fa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.56, ptr noundef nonnull %i.d, ptr noundef nonnull %i.ey) #16 ; 0 uses
  br label %.thread164

bb.ar:                                            ; preds = %bb.al, %bb.ak
  %fputs137 = call i32 @fputs(ptr nonnull %i.eo, ptr %i.i) ; 0 uses
  br label %.thread164

.thread164:                                       ; preds = %bb.ah, %bb.aq, %bb.ar, %bb.aj
  %fputc140 = call i32 @fputc(i32 41, ptr %i.i)   ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %.thread164, %bb.ag
  call void @free(ptr noundef nonnull %i.eo) #16
  %i.fb = icmp eq i32 %i.m, 1
  br i1 %i.fb, label %bb.at, label %bb.bb

bb.at:                                            ; preds = %bb.as
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !70
  %.not141 = icmp eq ptr %i.fd, null
  br i1 %.not141, label %bb.au, label %bb.bb

bb.au:                                            ; preds = %bb.at
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !115 ; 7 uses
  %.not142 = icmp eq i64 %i.ff, 0
  br i1 %.not142, label %bb.bb, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fg = icmp ult i64 %i.ff, 10485760
  br i1 %i.fg, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fh = icmp ult i64 %i.ff, 10737418240
  br i1 %i.fh, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fi = icmp ult i64 %i.ff, 10995116277760      ; 2 uses
  %.in.in.ph.ph.v = select i1 %i.fi, i64 29, i64 39
  %.in.in.ph.ph = lshr i64 %i.ff, %.in.in.ph.ph.v
  %i.fj = select i1 %i.fi, ptr @.str.60, ptr @.str.61
  br label %bb.ba

bb.ay:                                            ; preds = %bb.av
  %i.fk = lshr i64 %i.ff, 9
  br label %bb.ba

bb.az:                                            ; preds = %bb.aw
  %i.fl = lshr i64 %i.ff, 19
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %.in176.in = phi i64 [ %i.fk, %bb.ay ], [ %.in.in.ph.ph, %bb.ax ], [ %i.fl, %bb.az ]
  %i.fm = phi ptr [ @.str.58, %bb.ay ], [ %i.fj, %bb.ax ], [ @.str.59, %bb.az ]
  %.in176 = add nuw nsw i64 %.in176.in, 1
  %i.fn = lshr i64 %.in176, 1
  %i.fo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.57, i64 noundef %i.fn, ptr noundef nonnull %i.fm) #16 ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.au, %bb.at, %bb.as
  %i.fp = load ptr, ptr %i.ds, align 8, !tbaa !54 ; 2 uses
  %.not143 = icmp eq ptr %i.fp, null
  br i1 %.not143, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fq = load i32, ptr %1, align 8, !tbaa !48    ; 2 uses
  %i.fr = icmp ne i32 %i.fq, 16
  %or.cond3.not179 = select i1 %i.fr, i1 %i.ee, i1 false
  %i.fs = freeze i1 %or.cond3.not179
  br i1 %i.fs, label %bb.be, label %switch.early.test

switch.early.test:                                ; preds = %bb.bc
  switch i32 %i.fq, label %bb.bd [
    i32 17, label %bb.be
    i32 12, label %bb.be
  ]

bb.bd:                                            ; preds = %switch.early.test
  %i.ft = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.36, ptr noundef nonnull %i.fp) #16 ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %switch.early.test, %switch.early.test, %bb.bc, %bb.bd, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.l
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !68
  %.not146 = icmp eq ptr %i.fv, null
  br i1 %.not146, label %lstopo_pu_binding.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fw = load i32, ptr %i.da, align 4, !tbaa !84 ; 2 uses
  %i.fx = icmp eq i32 %i.fw, 1
  br i1 %i.fx, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.fy = call i64 @fwrite(ptr nonnull @.str.62, i64 8, i64 1, ptr %i.i) ; 0 uses
  %.pr173 = load i32, ptr %i.da, align 4, !tbaa !84
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.fz = phi i32 [ %.pr173, %bb.bh ], [ %i.fw, %bb.bg ]
  %.not147 = icmp eq i32 %i.fz, 0
  br i1 %.not147, label %bb.bn, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !116
  %.not148 = icmp eq i32 %i.gb, 0
  %i.gc = load ptr, ptr %i.fu, align 8, !tbaa !68 ; 2 uses
  br i1 %.not148, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gd = call i32 @hwloc_bitmap_taskset_asprintf(ptr noundef nonnull %i.g, ptr noundef %i.gc) #16 ; 0 uses
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.ge = call i32 @hwloc_bitmap_asprintf(ptr noundef nonnull %i.g, ptr noundef %i.gc) #16 ; 0 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.gf = load ptr, ptr %i.g, align 8, !tbaa !34
  %fputs149 = call i32 @fputs(ptr %i.gf, ptr %i.i) ; 0 uses
  %i.gg = load ptr, ptr %i.g, align 8, !tbaa !34
  call void @free(ptr noundef %i.gg) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bi
  %i.gh = icmp sgt i32 %i.m, 1
  br i1 %i.gh, label %bb.bo, label %lstopo_pu_binding.exit.thread

bb.bo:                                            ; preds = %bb.bn
  %i.gi = load i32, ptr %1, align 8, !tbaa !48
  switch i32 %i.gi, label %lstopo_pu_binding.exit.thread [
    i32 3, label %bb.bp
    i32 13, label %bb.bt
  ]

bb.bp:                                            ; preds = %bb.bo
  %.val = load ptr, ptr %0, align 8, !tbaa !12
  %i.gj = getelementptr i8, ptr %1, i64 16
  %.val156 = load i32, ptr %i.gj, align 8, !tbaa !108 ; 2 uses
  %i.gk = call ptr @hwloc_topology_get_allowed_cpuset(ptr noundef readonly %.val) #19
  %i.gl = call i32 @hwloc_bitmap_isset(ptr noundef %i.gk, i32 noundef %.val156) #19
  %.not.i159.not = icmp eq i32 %i.gl, 0
  br i1 %.not.i159.not, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.gm = call i64 @fwrite(ptr nonnull @.str.63, i64 13, i64 1, ptr %i.i) ; 0 uses
  br label %lstopo_pu_binding.exit.thread

bb.br:                                            ; preds = %bb.bp
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !117
  %.not.i160 = icmp eq i32 %i.go, -1
  br i1 %.not.i160, label %lstopo_pu_binding.exit.thread, label %lstopo_pu_binding.exit

lstopo_pu_binding.exit:                           ; preds = %bb.br
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !118
  %i.gr = call i32 @hwloc_bitmap_isset(ptr noundef %i.gq, i32 noundef %.val156) #19
  %.not181 = icmp eq i32 %i.gr, 0
  br i1 %.not181, label %lstopo_pu_binding.exit.thread, label %bb.bs

bb.bs:                                            ; preds = %lstopo_pu_binding.exit
  %i.gs = call i64 @fwrite(ptr nonnull @.str.64, i64 10, i64 1, ptr %i.i) ; 0 uses
  br label %lstopo_pu_binding.exit.thread

bb.bt:                                            ; preds = %bb.bo
  %.val157 = load ptr, ptr %0, align 8, !tbaa !12
  %i.gt = getelementptr i8, ptr %1, i64 16
  %.val158 = load i32, ptr %i.gt, align 8, !tbaa !108 ; 2 uses
  %i.gu = call ptr @hwloc_topology_get_allowed_nodeset(ptr noundef readonly %.val157) #19
  %i.gv = call i32 @hwloc_bitmap_isset(ptr noundef %i.gu, i32 noundef %.val158) #19
  %.not.i161.not = icmp eq i32 %i.gv, 0
  br i1 %.not.i161.not, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.gw = call i64 @fwrite(ptr nonnull @.str.63, i64 13, i64 1, ptr %i.i) ; 0 uses
  br label %lstopo_pu_binding.exit.thread

bb.bv:                                            ; preds = %bb.bt
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !117
  %.not.i162 = icmp eq i32 %i.gy, -1
  br i1 %.not.i162, label %lstopo_pu_binding.exit.thread, label %lstopo_numa_binding.exit

lstopo_numa_binding.exit:                         ; preds = %bb.bv
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !119
  %i.hb = call i32 @hwloc_bitmap_isset(ptr noundef %i.ha, i32 noundef %.val158) #19
  %.not180 = icmp eq i32 %i.hb, 0
  br i1 %.not180, label %lstopo_pu_binding.exit.thread, label %bb.bw

bb.bw:                                            ; preds = %lstopo_numa_binding.exit
  %i.hc = call i64 @fwrite(ptr nonnull @.str.64, i64 10, i64 1, ptr %i.i) ; 0 uses
  br label %lstopo_pu_binding.exit.thread

lstopo_pu_binding.exit.thread:                    ; preds = %bb.bv, %bb.br, %bb.bn, %lstopo_numa_binding.exit, %bb.bw, %bb.bu, %bb.bq, %bb.bs, %lstopo_pu_binding.exit, %bb.bo, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret void
}

declare i32 @hwloc_obj_type_is_memory(i32 noundef) local_unnamed_addr #2

declare i32 @hwloc_obj_type_is_io(i32 noundef) local_unnamed_addr #2

declare i32 @hwloc_obj_type_is_normal(i32 noundef) local_unnamed_addr #2

declare ptr @hwloc_pci_class_string(i16 noundef zeroext) local_unnamed_addr #2

declare i32 @hwloc_obj_attr_snprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #12

declare i32 @hwloc_bitmap_taskset_asprintf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_bitmap_isset(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @hwloc_topology_get_allowed_nodeset(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @hwloc_get_obj_by_depth(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_topology_get_depth(ptr noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @hwloc_lstopo_show_summary_depth(ptr nofree noundef nonnull captures(none) %0, i64 noundef range(i64 -2147483636, 2147483659) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #6 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = tail call i32 @hwloc_get_depth_type(ptr noundef %2, i32 noundef %3) #19 ; 2 uses
  %i.c = tail call i32 @hwloc_get_nbobjs_by_depth(ptr noundef %2, i32 noundef %3) #19 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.d = icmp slt i32 %3, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.76, i32 noundef %3) #16
  %i.f = tail call ptr @hwloc_obj_type_string(i32 noundef %i.b) #17
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.77, i32 noundef %3, ptr noundef nonnull @.str.73, i32 noundef %3) #16
  %i.h = tail call ptr @hwloc_get_obj_by_depth(ptr noundef %2, i32 noundef %3, i32 noundef 0) #19
  %i.i = call i32 @hwloc_obj_type_snprintf(ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef %i.h, i32 noundef 1) #16 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.020.in24 = phi i32 [ %i.e, %bb.c ], [ %i.g, %bb.d ]
  %.0 = phi ptr [ %i.f, %bb.c ], [ %i.a, %bb.d ]
  %i.j = trunc i64 %1 to i32
  %i.k = sub i32 %i.j, %.020.in24
  %i.l = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.78, i32 noundef %i.k, ptr noundef nonnull @.str.73, i32 noundef %i.c, ptr noundef %.0, i32 noundef %i.b) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_get_depth_type(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_get_nbobjs_by_depth(ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @hwloc_get_type_depth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(none) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { noreturn nounwind }
attributes #22 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !14, i64 0}
!13 = !{!"lstopo_output", !14, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !16, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !17, i64 64, !17, i64 72, !9, i64 80, !9, i64 84, !18, i64 88, !18, i64 96, !18, i64 104, !9, i64 112, !10, i64 116, !9, i64 500, !9, i64 504, !19, i64 512, !9, i64 520, !9, i64 524, !9, i64 528, !9, i64 532, !9, i64 536, !9, i64 540, !9, i64 544, !9, i64 548, !9, i64 552, !9, i64 556, !10, i64 560, !9, i64 816, !9, i64 820, !9, i64 824, !9, i64 828, !9, i64 832, !21, i64 836, !10, i64 840, !9, i64 920, !9, i64 924, !10, i64 928, !9, i64 1008, !10, i64 1012, !9, i64 1092, !10, i64 1096, !9, i64 1176, !9, i64 1180, !9, i64 1184, !9, i64 1188, !9, i64 1192, !10, i64 1196, !10, i64 1276, !10, i64 1356, !22, i64 1440, !15, i64 1448, !18, i64 1456, !23, i64 1464, !9, i64 1472, !9, i64 1476, !9, i64 1480}
!14 = !{!"p1 _ZTS14hwloc_topology", !15, i64 0}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!17 = !{!"p1 _ZTS14hwloc_bitmap_s", !15, i64 0}
!18 = !{!"long", !10, i64 0}
!19 = !{!"p2 omnipotent char", !20, i64 0}
!20 = !{!"any p2 pointer", !15, i64 0}
!21 = !{!"float", !10, i64 0}
!22 = !{!"p1 _ZTS20lstopo_color_palette", !15, i64 0}
!23 = !{!"p1 _ZTS12draw_methods", !15, i64 0}
!24 = !{!13, !9, i64 40}
!25 = !{!13, !9, i64 32}
!26 = !{!16, !16, i64 0}
!27 = !{!9, !9, i64 0}
!28 = !{!13, !16, i64 24}
!29 = !{!13, !9, i64 528}
!30 = !{!13, !9, i64 532}
!31 = !{!13, !9, i64 536}
!32 = !{!13, !9, i64 540}
!33 = !{!13, !9, i64 544}
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 omnipotent char", !15, i64 0}
!36 = !{!13, !9, i64 36}
!37 = !{!38, !38, i64 0}
!38 = !{!"p1 _ZTS17hwloc_distances_s", !15, i64 0}
!39 = !{!40, !18, i64 16}
!40 = !{!"hwloc_distances_s", !9, i64 0, !41, i64 8, !18, i64 16, !42, i64 24}
!41 = !{!"p2 _ZTS9hwloc_obj", !20, i64 0}
!42 = !{!"p1 long", !15, i64 0}
!43 = !{!13, !9, i64 556}
!44 = !{!40, !9, i64 0}
!45 = !{!40, !41, i64 8}
!46 = !{!47, !47, i64 0}
!47 = !{!"p1 _ZTS9hwloc_obj", !15, i64 0}
!48 = !{!49, !9, i64 0}
!49 = !{!"hwloc_obj", !9, i64 0, !35, i64 8, !9, i64 16, !35, i64 24, !18, i64 32, !50, i64 40, !9, i64 48, !9, i64 52, !47, i64 56, !47, i64 64, !47, i64 72, !9, i64 80, !47, i64 88, !47, i64 96, !9, i64 104, !41, i64 112, !47, i64 120, !47, i64 128, !9, i64 136, !9, i64 140, !47, i64 144, !9, i64 152, !47, i64 160, !9, i64 168, !47, i64 176, !17, i64 184, !17, i64 192, !17, i64 200, !17, i64 208, !51, i64 216, !9, i64 224, !15, i64 232, !18, i64 240}
!50 = !{!"p1 _ZTS16hwloc_obj_attr_u", !15, i64 0}
!51 = !{!"p1 _ZTS12hwloc_info_s", !15, i64 0}
!52 = !{!49, !9, i64 48}
!53 = !{!40, !42, i64 24}
!54 = !{!49, !35, i64 24}
!55 = !{!49, !50, i64 40}
!56 = !{!10, !10, i64 0}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!18, !18, i64 0}
!60 = distinct !{!60, !58}
!61 = distinct !{!61, !58}
!62 = distinct !{!62, !58}
!63 = distinct !{!63, !58}
!64 = distinct !{!64, !58}
!65 = distinct !{!65, !58}
!66 = !{!67, !9, i64 0}
!67 = !{!"hwloc_location", !9, i64 0, !10, i64 8}
!68 = !{!49, !17, i64 184}
!69 = distinct !{!69, !58}
!70 = !{!49, !47, i64 72}
!71 = distinct !{!71, !58}
!72 = distinct !{!72, !58}
!73 = distinct !{!73, !58}
!74 = !{!51, !51, i64 0}
!75 = !{!76, !35, i64 0}
!76 = !{!"hwloc_info_s", !35, i64 0, !35, i64 8}
!77 = !{!76, !35, i64 8}
!78 = distinct !{!78, !58}
!79 = distinct !{!79, !58}
!80 = distinct !{!80, !58}
!81 = distinct !{!81, !58}
!82 = distinct !{!82, !58}
!83 = distinct !{!83, !58}
!84 = !{!13, !9, i64 548}
!85 = !{!13, !9, i64 52}
!86 = !{!49, !15, i64 232}
!87 = !{!88, !9, i64 32}
!88 = !{!"lstopo_obj_userdata", !89, i64 0, !9, i64 32, !9, i64 36, !91, i64 40, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !93, i64 80, !93, i64 112, !93, i64 144, !93, i64 176, !9, i64 208, !9, i64 212, !9, i64 216, !10, i64 220, !9, i64 764, !9, i64 768}
!89 = !{!"hwloc_utils_userdata", !35, i64 0, !18, i64 8, !35, i64 16, !90, i64 24}
!90 = !{!"p1 _ZTS20hwloc_utils_userdata", !15, i64 0}
!91 = !{!"lstopo_style", !92, i64 0, !92, i64 8, !92, i64 16}
!92 = !{!"p1 _ZTS12lstopo_color", !15, i64 0}
!93 = !{!"lstopo_children_position", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !92, i64 24}
!94 = !{!49, !9, i64 104}
!95 = !{!49, !9, i64 140}
!96 = !{!49, !9, i64 152}
!97 = !{!49, !9, i64 168}
!98 = !{!13, !9, i64 48}
!99 = distinct !{!99, !58}
!100 = !{!13, !9, i64 44}
!101 = distinct !{!101, !58}
!102 = distinct !{!102, !58}
!103 = distinct !{!103, !58}
!104 = distinct !{!104, !58}
!105 = !{!49, !9, i64 136}
!106 = !{!13, !18, i64 88}
!107 = !{!49, !9, i64 52}
!108 = !{!49, !9, i64 16}
!109 = !{!13, !9, i64 80}
!110 = !{!49, !47, i64 56}
!111 = distinct !{!111, !58}
!112 = distinct !{!112, !113}
!113 = !{!"llvm.loop.unroll.disable"}
!114 = !{!49, !35, i64 8}
!115 = !{!49, !18, i64 32}
!116 = !{!13, !9, i64 552}
!117 = !{!13, !9, i64 56}
!118 = !{!13, !17, i64 64}
!119 = !{!13, !17, i64 72}
end_hunk_0
