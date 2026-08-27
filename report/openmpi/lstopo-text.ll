Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/lstopo-text?download=true
inline.NumInlined: 29
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@output_distances:bb.a
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
  %.pn.i = phi ptr [ %i.bf, %.lr.ph.i ], [ %.085109.i, %bb.q ]
  %.0108.i = phi i64 [ 5, %.lr.ph.i ], [ %spec.select.i, %bb.q ]
  %.085109.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 17 ; 3 uses
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
  %.084.in.i = phi i32 [ %i.bt, %bb.l ], [ %i.ch, %bb.m ], [ %i.cj, %bb.o ], [ %i.ck, %bb.p ]
  %.084.i = sext i32 %.084.in.i to i64            ; 3 uses
  %spec.select.i = call i64 @llvm.umax.i64(i64 %.0108.i, i64 %.084.i) ; 2 uses
  %i.cl = sub nsw i64 16, %.084.i                 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.085109.i, i64 %i.cl
  %i.cn = add nsw i64 %.084.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cm, ptr nonnull align 16 %i.a, i64 %i.cn, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.085109.i, i8 32, i64 %i.cl, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader104.i, label %bb.k, !llvm.loop !57

.preheader104.i:                                  ; preds = %bb.q, %bb.s
  %.2115.i = phi i64 [ %spec.select103.i, %bb.s ], [ %spec.select.i, %bb.q ]
  %.186114.i = phi ptr [ %i.da, %bb.s ], [ %i.bj, %bb.q ]
  %.191113.i = phi i32 [ %i.db, %bb.s ], [ 0, %bb.q ] ; 2 uses
  %i.co = mul i32 %.191113.i, %i.av
  br label %bb.r

.preheader.i:                                     ; preds = %bb.s
  %.not129.i = icmp eq i32 %i.bc, 0
  br i1 %.not129.i, label %._crit_edge.thread.i, label %.lr.ph118.i

._crit_edge.thread.i:                             ; preds = %.preheader.i
  %fputc163.i = call i32 @fputc(i32 10, ptr %i.h) ; 0 uses
  %.pre = sub nsw i64 0, %spec.select103.i
  br label %.lr.ph124.i

.lr.ph118.i:                                      ; preds = %.preheader.i, %bb.j
  %.2.lcssa160.i = phi i64 [ %spec.select103.i, %.preheader.i ], [ 5, %bb.j ]
  %i.cp = sub nsw i64 0, %.2.lcssa160.i           ; 2 uses
  %invariant.gep.i = getelementptr i8, ptr %i.bf, i64 %i.cp
  %wide.trip.count141.i = zext i32 %i.bc to i64
  br label %bb.t

bb.r:                                             ; preds = %bb.r, %.preheader104.i
  %indvars.iv132.i = phi i64 [ 0, %.preheader104.i ], [ %indvars.iv.next133.i, %bb.r ] ; 2 uses
  %.3112.i = phi i64 [ %.2115.i, %.preheader104.i ], [ %spec.select103.i, %bb.r ]
  %.287111.i = phi ptr [ %.186114.i, %.preheader104.i ], [ %i.da, %bb.r ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.cq = trunc nuw i64 %indvars.iv132.i to i32
  %i.cr = add i32 %i.co, %i.cq
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.cs
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !59
  %i.cv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 17, ptr noundef nonnull @.str.26, i64 noundef %i.cu) #16
  %i.cw = sext i32 %i.cv to i64                   ; 3 uses
  %spec.select103.i = call i64 @llvm.umax.i64(i64 %.3112.i, i64 %i.cw) ; 4 uses
  %i.cx = sub nsw i64 16, %i.cw                   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.287111.i, i64 %i.cx
  %i.cz = add nsw i64 %i.cw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cy, ptr nonnull align 16 %i.b, i64 %i.cz, i1 false)
  call void @llvm.memset.p0.i64(ptr align 1 %.287111.i, i8 32, i64 %i.cx, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %indvars.iv.next133.i = add nuw nsw i64 %indvars.iv132.i, 1 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.287111.i, i64 17 ; 2 uses
  %exitcond136.not.i = icmp eq i64 %indvars.iv.next133.i, %wide.trip.count.i
  br i1 %exitcond136.not.i, label %bb.s, label %bb.r, !llvm.loop !60

bb.s:                                             ; preds = %bb.r
  %i.db = add nuw i32 %.191113.i, 1               ; 2 uses
  %exitcond137.not.i = icmp eq i32 %i.db, %i.av
  br i1 %exitcond137.not.i, label %.preheader.i, label %.preheader104.i, !llvm.loop !61

bb.t:                                             ; preds = %bb.t, %.lr.ph118.i
  %indvars.iv138.i = phi i64 [ 0, %.lr.ph118.i ], [ %indvars.iv.next139.i, %bb.t ] ; 2 uses
  %i.dc = mul i64 %indvars.iv138.i, 17
  %i.dd = and i64 %i.dc, 4294967295
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.dd
  %i.de = getelementptr i8, ptr %gep.i, i64 16
  %i.df = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.27, ptr noundef %i.de) #16 ; 0 uses
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
  %.pre-phi = phi i64 [ %i.cp, %._crit_edge.i..lr.ph124.i_crit_edge ], [ %.pre, %._crit_edge.thread.i ] ; 2 uses
  %invariant.gep126.i = getelementptr i8, ptr %i.bf, i64 %.pre-phi
  %invariant.gep119.i = getelementptr i8, ptr %i.bj, i64 %.pre-phi
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %.lr.ph124.i
  %indvars.iv148.i = phi i64 [ 0, %.lr.ph124.i ], [ %indvars.iv.next149.i, %bb.w ] ; 2 uses
  %indvars.iv.next149.i = add nuw nsw i64 %indvars.iv148.i, 1 ; 3 uses
  %i.dg = mul i64 %indvars.iv.next149.i, 17
  %gep127.i = getelementptr i8, ptr %invariant.gep126.i, i64 %i.dg
  %i.dh = getelementptr i8, ptr %gep127.i, i64 16
  %i.di = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.27, ptr noundef %i.dh) #16 ; 0 uses
  %i.dj = trunc nuw i64 %indvars.iv148.i to i32
  %i.dk = mul i32 %i.av, %i.dj
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %indvars.iv143.i = phi i64 [ 0, %bb.u ], [ %indvars.iv.next144.i, %bb.v ] ; 2 uses
  %i.dl = trunc nuw i64 %indvars.iv143.i to i32
  %i.dm = add i32 %i.dk, %i.dl
  %i.dn = mul i32 %i.dm, 17
  %i.do = zext i32 %i.dn to i64
  %gep120.i = getelementptr i8, ptr %invariant.gep119.i, i64 %i.do
  %i.dp = getelementptr i8, ptr %gep120.i, i64 16
  %i.dq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.27, ptr noundef %i.dp) #16 ; 0 uses
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
  %i.dr = load ptr, ptr %i.u, align 8, !tbaa !37
  call void @hwloc_distances_release(ptr noundef %i.d, ptr noundef %i.dr) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ds = load i32, ptr %i.c, align 4, !tbaa !27
  %i.dt = zext i32 %i.ds to i64
  %i.du = icmp samesign ult i64 %indvars.iv.next, %i.dt
  br i1 %i.du, label %bb.d, label %.loopexit, !llvm.loop !65

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
  %.068 = phi i32 [ 0, %bb.a ], [ %i.en, %bb.as ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  %or.cond = icmp ugt i32 %.068, 1
  %or.cond80.not = select i1 %i.r, i1 true, i1 %or.cond
  br i1 %or.cond80.not, label %bb.c, label %bb.as

bb.c:                                             ; preds = %bb.b
  %i.t = call i32 @hwloc_memattr_get_name(ptr noundef %i.k, i32 noundef %.068, ptr noundef nonnull %i.f) #16
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.at, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = call i32 @hwloc_memattr_get_flags(ptr noundef %i.k, i32 noundef %.068, ptr noundef nonnull %i.g) #16
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @__assert_fail(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 336, ptr noundef nonnull @__PRETTY_FUNCTION__.output_memattrs) #21
  unreachable

bb.f:                                             ; preds = %bb.d
  store i32 0, ptr %i.h, align 4, !tbaa !27
  %i.w = call i32 @hwloc_memattr_get_targets(ptr noundef %i.k, i32 noundef %.068, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.h, ptr noundef null, ptr noundef null) #16
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
  %i.ab = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %.068, ptr noundef %i.z, i64 noundef %i.aa) ; 0 uses
  %i.ac = load i32, ptr %i.h, align 4, !tbaa !27
  %i.ad = zext i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = call noalias ptr @malloc(i64 noundef %i.ae) #20 ; 5 uses
  %.not73 = icmp eq ptr %i.af, null
  br i1 %.not73, label %bb.as, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = call i32 @hwloc_memattr_get_targets(ptr noundef %i.k, i32 noundef %.068, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.af, ptr noundef null) #16
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
  %i.am = call i32 @hwloc_memattr_get_value(ptr noundef %i.k, i32 noundef %.068, ptr noundef %i.al, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.i) #16
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
  %i.bd = call i32 @hwloc_memattr_get_initiators(ptr noundef %i.k, i32 noundef %.068, ptr noundef %i.bc, i64 noundef 0, ptr noundef nonnull %i.j, ptr noundef null, ptr noundef null) #16
  %.not77 = icmp eq i32 %i.bd, 0
  br i1 %.not77, label %bb.t, label %bb.aq

bb.t:                                             ; preds = %bb.s
  %i.be = load i32, ptr %i.j, align 4, !tbaa !27
end_hunk_0
