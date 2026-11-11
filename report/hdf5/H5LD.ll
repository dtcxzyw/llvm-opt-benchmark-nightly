Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5LD?download=true
inline.NumInlined: 5
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@H5LDget_dset_elmts:bb.a
  %i.f = icmp eq ptr %1, null
  %i.g = icmp eq ptr %2, null
  %or.cond.i = or i1 %i.f, %i.g
  %i.h = icmp eq ptr %4, null
  %or.cond3.i = or i1 %or.cond.i, %i.h
  br i1 %or.cond3.i, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i64 @H5Dget_space(i64 noundef %0) #10 ; 28 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @H5Sget_simple_extent_ndims(i64 noundef %i.i) #10 ; 4 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.c, i8 0, i64 256, i1 false)
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %.thread.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = zext nneg i32 %i.k to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %i.k, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi23 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <2 x i64>, ptr %i.m, align 8, !tbaa !37 ; 2 uses
  %wide.load24 = load <2 x i64>, ptr %i.n, align 8, !tbaa !37 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load25 = load <2 x i64>, ptr %i.o, align 8, !tbaa !37 ; 2 uses
  %wide.load26 = load <2 x i64>, ptr %i.p, align 8, !tbaa !37 ; 2 uses
  %i.q = icmp ugt <2 x i64> %wide.load, %wide.load25 ; 2 uses
  %i.r = icmp ugt <2 x i64> %wide.load24, %wide.load26 ; 2 uses
  %i.s = select <2 x i1> %i.q, <2 x i64> %wide.load25, <2 x i64> zeroinitializer ; 2 uses
  %i.t = select <2 x i1> %i.r, <2 x i64> %wide.load26, <2 x i64> zeroinitializer ; 2 uses
  %i.u = sub nuw <2 x i64> %wide.load, %i.s
  %i.v = sub nuw <2 x i64> %wide.load24, %i.t
  %i.w = zext <2 x i1> %i.q to <2 x i32>
  %i.x = zext <2 x i1> %i.r to <2 x i32>
  %i.y = add <2 x i32> %vec.phi, %i.w             ; 2 uses
  %i.z = add <2 x i32> %vec.phi23, %i.x           ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <2 x i64> %i.u, ptr %i.aa, align 16, !tbaa !37
  store <2 x i64> %i.v, ptr %i.ab, align 16, !tbaa !37
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <2 x i64> %i.s, ptr %i.ac, align 16, !tbaa !37
  store <2 x i64> %i.t, ptr %i.ad, align 16, !tbaa !37
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.z, %i.y
  %i.af = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.0101154.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.af, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 5 uses
  %.0101154.i = phi i32 [ %.1102.i, %.lr.ph.i ], [ %.0101154.i.ph, %.lr.ph.i.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !37 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !37 ; 2 uses
  %i.ak = icmp ugt i64 %i.ah, %i.aj               ; 2 uses
  %i.al = select i1 %i.ak, i64 %i.aj, i64 0       ; 2 uses
  %.sink171.i = sub nuw i64 %i.ah, %i.al
  %i.am = zext i1 %i.ak to i32
  %.1102.i = add i32 %.0101154.i, %i.am           ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i
  store i64 %.sink171.i, ptr %i.an, align 8, !tbaa !37
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  store i64 %i.al, ptr %i.ao, align 8, !tbaa !37
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !34

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block
  %.1102.i.lcssa = phi i32 [ %i.af, %middle.block ], [ %.1102.i, %.lr.ph.i ]
  switch i32 %.1102.i.lcssa, label %bb.f [
    i32 0, label %.thread.i
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %._crit_edge.i
  %i.ap = call i32 @H5Sselect_hyperslab(i64 noundef %i.i, i32 noundef 0, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef nonnull %i.c, ptr noundef null) #10
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %.thread.i, label %bb.h

bb.f:                                             ; preds = %._crit_edge.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false)
  %i.ar = call i32 @H5Sselect_hyperslab(i64 noundef %i.i, i32 noundef 0, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef nonnull %2, ptr noundef null) #10
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = call i32 @H5Sselect_hyperslab(i64 noundef %i.i, i32 noundef 4, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef nonnull %1, ptr noundef null) #10
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.av = call i64 @H5Sget_select_npoints(i64 noundef %i.i) #10 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %i.av, ptr %i.a, align 8, !tbaa !37
  %i.ax = call i64 @H5Screate_simple(i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef null) #10 ; 15 uses
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = call i64 @H5Dget_type(i64 noundef %0) #10 ; 13 uses
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = call i64 @H5Tget_native_type(i64 noundef %i.az, i32 noundef 0) #10 ; 15 uses
  %i.bc = icmp slt i64 %i.bb, 0
  br i1 %i.bc, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = icmp eq ptr %3, null
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.be = call i32 @H5Dread(i64 noundef %0, i64 noundef %i.bb, i64 noundef %i.ax, i64 noundef %i.i, i64 noundef 0, ptr noundef nonnull %4) #10
  %.lobit.i = ashr i32 %i.be, 31
  br label %.thread.i

bb.n:                                             ; preds = %bb.l
  %i.bf = call i32 @H5Tget_class(i64 noundef %i.bb) #10
  %.not142.i = icmp eq i32 %i.bf, 6
  br i1 %.not142.i, label %bb.o, label %.thread.i

bb.o:                                             ; preds = %bb.n
  %i.bg = call fastcc i64 @H5LD_get_dset_type_size(i64 noundef %0, ptr noundef null) ; 3 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !37
  %i.bj = call noalias ptr @calloc(i64 noundef %i.bi, i64 noundef %i.bg) #12 ; 8 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = call i32 @H5Dread(i64 noundef %0, i64 noundef %i.bb, i64 noundef %i.ax, i64 noundef %i.i, i64 noundef 0, ptr noundef nonnull %i.bj) #10
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = call noalias ptr @strdup(ptr noundef nonnull readonly %3) #10 ; 5 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %3) #11
  %i.bq = lshr i64 %i.bp, 1
  %i.br = add nuw i64 %i.bq, 2
  %i.bs = call noalias ptr @calloc(i64 noundef %i.br, i64 noundef 8) #12 ; 9 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = call i32 @H5LD_construct_vector(ptr noundef nonnull %i.bn, ptr noundef nonnull %i.bs, i64 noundef %i.bb)
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %.thread.i, label %.preheader153.i

.preheader153.i:                                  ; preds = %bb.t
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  %i.bx = trunc i64 %i.bw to i32
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.preheader.lr.ph.i, label %._crit_edge165.i

.preheader.lr.ph.i:                               ; preds = %.preheader153.i
  %i.bz = load ptr, ptr %i.bs, align 8, !tbaa !11 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %._crit_edge165.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.lr.ph.i, %._crit_edge160.i
  %6 = phi i64 [ %i.cn, %._crit_edge160.i ], [ %i.bw, %.preheader.lr.ph.i ]
  %7 = phi ptr [ %8, %._crit_edge160.i ], [ %i.bz, %.preheader.lr.ph.i ] ; 2 uses
  %.096164.i = phi ptr [ %9, %._crit_edge160.i ], [ %i.bj, %.preheader.lr.ph.i ] ; 2 uses
  %.097163.i = phi ptr [ %.1.lcssa.i, %._crit_edge160.i ], [ %4, %.preheader.lr.ph.i ] ; 2 uses
  %.1100162.i = phi i32 [ %i.co, %._crit_edge160.i ], [ 0, %.preheader.lr.ph.i ]
  %.not143156.i = icmp eq ptr %7, null
  br i1 %.not143156.i, label %._crit_edge160.i, label %.lr.ph159.i

.lr.ph159.i:                                      ; preds = %.preheader.i, %.lr.ph159.i
  %indvars.iv168.i = phi i64 [ %indvars.iv.next169.i, %.lr.ph159.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.cb = phi ptr [ %i.cm, %.lr.ph159.i ], [ %7, %.preheader.i ] ; 2 uses
  %.1157.i = phi ptr [ %i.ck, %.lr.ph159.i ], [ %.097163.i, %.preheader.i ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv168.i
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !20
  %i.ce = getelementptr inbounds nuw i8, ptr %.096164.i, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1157.i, ptr align 1 %i.ce, i64 %i.cg, i1 false)
  %i.ch = load ptr, ptr %i.cc, align 8, !tbaa !11
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !21
  %i.ck = getelementptr inbounds nuw i8, ptr %.1157.i, i64 %i.cj ; 2 uses
  %indvars.iv.next169.i = add nuw nsw i64 %indvars.iv168.i, 1 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next169.i
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !11 ; 2 uses
  %.not143.i = icmp eq ptr %i.cm, null
  br i1 %.not143.i, label %._crit_edge160.loopexit.i, label %.lr.ph159.i, !llvm.loop !35

._crit_edge160.loopexit.i:                        ; preds = %.lr.ph159.i
  %.pre.i = load ptr, ptr %i.bs, align 8, !tbaa !11
  %.pre.i.a = load i64, ptr %i.a, align 8, !tbaa !37
  br label %._crit_edge160.i

._crit_edge160.i:                                 ; preds = %._crit_edge160.loopexit.i, %.preheader.i
  %i.cn = phi i64 [ %6, %.preheader.i ], [ %.pre.i.a, %._crit_edge160.loopexit.i ] ; 2 uses
  %8 = phi ptr [ null, %.preheader.i ], [ %.pre.i, %._crit_edge160.loopexit.i ]
  %.1.lcssa.i = phi ptr [ %.097163.i, %.preheader.i ], [ %i.ck, %._crit_edge160.loopexit.i ]
  %9 = getelementptr inbounds nuw i8, ptr %.096164.i, i64 %i.bg
  %i.co = add nuw nsw i32 %.1100162.i, 1          ; 2 uses
  %i.cp = trunc i64 %i.cn to i32
  %i.cq = icmp slt i32 %i.co, %i.cp
  br i1 %i.cq, label %.preheader.i, label %._crit_edge165.i, !llvm.loop !36

._crit_edge165.i:                                 ; preds = %._crit_edge160.i, %.preheader.lr.ph.i, %.preheader153.i
  call void @H5LD_clean_vector(ptr noundef nonnull %i.bs)
  br label %.thread.i

.thread.i:                                        ; preds = %._crit_edge165.i, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %._crit_edge.i, %bb.d, %bb.c, %bb.b, %bb.a
  %.0114.i = phi i64 [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %bb.e ], [ -1, %bb.h ], [ -1, %bb.i ], [ %i.az, %bb.j ], [ %i.az, %bb.k ], [ %i.az, %bb.m ], [ -1, %._crit_edge.i ], [ %i.az, %bb.t ], [ -1, %bb.f ], [ -1, %bb.g ], [ %i.az, %._crit_edge165.i ], [ %i.az, %bb.n ], [ %i.az, %bb.o ], [ %i.az, %bb.p ], [ %i.az, %bb.q ], [ %i.az, %bb.r ], [ %i.az, %bb.s ], [ -1, %bb.d ]
  %.0113.i = phi i64 [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %bb.e ], [ -1, %bb.h ], [ -1, %bb.i ], [ -1, %bb.j ], [ %i.bb, %bb.k ], [ %i.bb, %bb.m ], [ -1, %._crit_edge.i ], [ %i.bb, %bb.t ], [ -1, %bb.f ], [ -1, %bb.g ], [ %i.bb, %._crit_edge165.i ], [ %i.bb, %bb.n ], [ %i.bb, %bb.o ], [ %i.bb, %bb.p ], [ %i.bb, %bb.q ], [ %i.bb, %bb.r ], [ %i.bb, %bb.s ], [ -1, %bb.d ]
  %.0112.i = phi i64 [ -1, %bb.a ], [ %i.i, %bb.b ], [ %i.i, %bb.c ], [ %i.i, %bb.e ], [ %i.i, %bb.h ], [ %i.i, %bb.i ], [ %i.i, %bb.j ], [ %i.i, %bb.k ], [ %i.i, %bb.m ], [ %i.i, %._crit_edge.i ], [ %i.i, %bb.t ], [ %i.i, %bb.f ], [ %i.i, %bb.g ], [ %i.i, %._crit_edge165.i ], [ %i.i, %bb.n ], [ %i.i, %bb.o ], [ %i.i, %bb.p ], [ %i.i, %bb.q ], [ %i.i, %bb.r ], [ %i.i, %bb.s ], [ %i.i, %bb.d ]
  %.0111.i = phi i64 [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %bb.e ], [ -1, %bb.h ], [ %i.ax, %bb.i ], [ %i.ax, %bb.j ], [ %i.ax, %bb.k ], [ %i.ax, %bb.m ], [ -1, %._crit_edge.i ], [ %i.ax, %bb.t ], [ -1, %bb.f ], [ -1, %bb.g ], [ %i.ax, %._crit_edge165.i ], [ %i.ax, %bb.n ], [ %i.ax, %bb.o ], [ %i.ax, %bb.p ], [ %i.ax, %bb.q ], [ %i.ax, %bb.r ], [ %i.ax, %bb.s ], [ -1, %bb.d ]
  %.2110.i = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.m ], [ null, %._crit_edge.i ], [ %i.bs, %bb.t ], [ null, %bb.f ], [ null, %bb.g ], [ %i.bs, %._crit_edge165.i ], [ null, %bb.n ], [ null, %bb.o ], [ null, %bb.p ], [ null, %bb.q ], [ null, %bb.r ], [ null, %bb.s ], [ null, %bb.d ] ; 2 uses
  %.2107.i = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.m ], [ null, %._crit_edge.i ], [ %i.bn, %bb.t ], [ null, %bb.f ], [ null, %bb.g ], [ %i.bn, %._crit_edge165.i ], [ null, %bb.n ], [ null, %bb.o ], [ null, %bb.p ], [ null, %bb.q ], [ null, %bb.r ], [ %i.bn, %bb.s ], [ null, %bb.d ] ; 2 uses
  %.2.i = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.m ], [ null, %._crit_edge.i ], [ %i.bj, %bb.t ], [ null, %bb.f ], [ null, %bb.g ], [ %i.bj, %._crit_edge165.i ], [ null, %bb.n ], [ null, %bb.o ], [ null, %bb.p ], [ %i.bj, %bb.q ], [ %i.bj, %bb.r ], [ %i.bj, %bb.s ], [ null, %bb.d ] ; 2 uses
  %.098.i = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %bb.e ], [ -1, %bb.h ], [ -1, %bb.i ], [ -1, %bb.j ], [ -1, %bb.k ], [ %.lobit.i, %bb.m ], [ -1, %._crit_edge.i ], [ -1, %bb.t ], [ -1, %bb.f ], [ -1, %bb.g ], [ 0, %._crit_edge165.i ], [ -1, %bb.n ], [ -1, %bb.o ], [ -1, %bb.p ], [ -1, %bb.q ], [ -1, %bb.r ], [ -1, %bb.s ], [ -1, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.cr = call i32 @H5Eauto_is_v2(i64 noundef 0, ptr noundef nonnull %i.d) #10 ; 0 uses
  %i.cs = load i32, ptr %i.d, align 4, !tbaa !22
  %.not144.i = icmp eq i32 %i.cs, 0
  br i1 %.not144.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.thread.i
  %i.ct = call i32 @H5Eget_auto2(i64 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %i.e) #10 ; 0 uses
  %i.cu = call i32 @H5Eset_auto2(i64 noundef 0, ptr noundef null, ptr noundef null) #10 ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %.thread.i
  %i.cv = call i32 @H5Eget_auto1(ptr noundef nonnull %5, ptr noundef nonnull %i.e) #10 ; 0 uses
  %i.cw = call i32 @H5Eset_auto1(ptr noundef null, ptr noundef null) #10 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cx = call i32 @H5Tclose(i64 noundef %.0114.i) #10 ; 0 uses
  %i.cy = call i32 @H5Tclose(i64 noundef %.0113.i) #10 ; 0 uses
  %i.cz = call i32 @H5Sclose(i64 noundef %.0112.i) #10 ; 0 uses
  %i.da = call i32 @H5Sclose(i64 noundef %.0111.i) #10 ; 0 uses
  %i.db = load i32, ptr %i.d, align 4, !tbaa !22
  %.not145.i = icmp eq i32 %i.db, 0
  %i.dc = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %i.dd = load ptr, ptr %i.e, align 8, !tbaa !23  ; 2 uses
  br i1 %.not145.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.de = call i32 @H5Eset_auto2(i64 noundef 0, ptr noundef %i.dc, ptr noundef %i.dd) #10 ; 0 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.df = call i32 @H5Eset_auto1(ptr noundef %i.dc, ptr noundef %i.dd) #10 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  %.not146.i = icmp eq ptr %.2110.i, null
  br i1 %.not146.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @free(ptr noundef nonnull %.2110.i) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.not147.i = icmp eq ptr %.2107.i, null
  br i1 %.not147.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @free(ptr noundef nonnull %.2107.i) #10
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.not148.i = icmp eq ptr %.2.i, null
  br i1 %.not148.i, label %H5LD_get_dset_elmts.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef nonnull %.2.i) #10
  br label %H5LD_get_dset_elmts.exit

H5LD_get_dset_elmts.exit:                         ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.098.i
}

declare i64 @H5Tcopy(i64 noundef) local_unnamed_addr #3

declare i32 @H5Tget_member_index(i64 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @H5Tget_member_type(i64 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @H5Tget_member_offset(i64 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @H5Tget_size(i64 noundef) local_unnamed_addr #3

declare i32 @H5Eauto_is_v2(i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @H5Eget_auto2(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @H5Eset_auto2(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @H5Eget_auto1(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @H5Eset_auto1(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @H5Dget_space(i64 noundef) local_unnamed_addr #3

declare i32 @H5Sget_simple_extent_dims(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @H5Sclose(i64 noundef) local_unnamed_addr #3

declare i64 @H5Dget_type(i64 noundef) local_unnamed_addr #3

declare i64 @H5Tget_native_type(i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @H5Tget_class(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #6

declare i32 @H5Sget_simple_extent_ndims(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare i32 @H5Sselect_hyperslab(i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @H5Sget_select_npoints(i64 noundef) local_unnamed_addr #3

declare i64 @H5Screate_simple(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @H5Dread(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !18}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS11H5LD_memb_t", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!"any p2 pointer", !9, i64 0}
!14 = !{!"p2 omnipotent char", !13, i64 0}
!15 = !{!"H5LD_memb_t", !12, i64 0, !12, i64 8, !12, i64 16, !14, i64 24}
!16 = !{!15, !14, i64 24}
!17 = !{!15, !12, i64 16}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!5, !5, i64 0}
!20 = !{!15, !12, i64 0}
!21 = !{!15, !12, i64 8}
!22 = !{!6, !6, i64 0}
!23 = !{!9, !9, i64 0}
!24 = distinct !{!24, !18, !29}
!25 = distinct !{!25, !18}
!26 = distinct !{!26, !18}
!27 = !{!"p1 omnipotent char", !9, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"llvm.loop.peeled.count", i32 1}
!30 = distinct !{!30, !18}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = distinct !{!33, !18, !38, !39}
!34 = distinct !{!34, !18, !39, !38}
!35 = distinct !{!35, !18}
!36 = distinct !{!36, !18, !40}
!37 = !{!12, !12, i64 0}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
