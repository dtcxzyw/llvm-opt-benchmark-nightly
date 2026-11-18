Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/test_pvar_access?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@main:bb.a
  %.pre = load i32, ptr @world_rank, align 4, !tbaa !17
  %.pre162 = load i32, ptr @world_size, align 4, !tbaa !17
  br label %print_vars.exit141

print_vars.exit141:                               ; preds = %print_vars.exit141.loopexit, %bb.ai
  %i.ek = phi i32 [ %.pre162, %print_vars.exit141.loopexit ], [ %i.ec, %bb.ai ]
  %i.el = phi i32 [ %.pre, %print_vars.exit141.loopexit ], [ %i.eb, %bb.ai ]
  %i.em = add nsw i32 %i.el, 1
  %i.en = srem i32 %i.em, %i.ek
  %i.eo = call i32 @MPI_Send(ptr noundef null, i32 noundef 0, ptr noundef nonnull @ompi_mpi_byte, i32 noundef %i.en, i32 noundef 300, ptr noundef nonnull @ompi_mpi_comm_world) #7 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %print_vars.exit141, %print_vars.exit
  %i.ep = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.eq = load ptr, ptr @count_handle, align 8, !tbaa !27
  %i.er = call i32 @MPI_T_pvar_read(ptr noundef %i.ep, ptr noundef %i.eq, ptr noundef %i.aw) #7 ; 2 uses
  %.not122 = icmp eq i32 %i.er, 0
  br i1 %.not122, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.es = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @count_pvar_name) ; 0 uses
  %i.et = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.er) #7 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.eu = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.ev = load ptr, ptr @msize_handle, align 8, !tbaa !27
  %i.ew = call i32 @MPI_T_pvar_read(ptr noundef %i.eu, ptr noundef %i.ev, ptr noundef %i.ay) #7 ; 2 uses
  %.not123 = icmp eq i32 %i.ew, 0
  br i1 %.not123, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ex = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @msize_pvar_name) ; 0 uses
  %i.ey = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.ew) #7 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ez = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.fa = load ptr, ptr @count_handle, align 8, !tbaa !27
  %i.fb = call i32 @MPI_T_pvar_start(ptr noundef %i.ez, ptr noundef %i.fa) #7 ; 2 uses
  %.not124 = icmp eq i32 %i.fb, 0
  br i1 %.not124, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @count_pvar_name) ; 0 uses
  %i.fd = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.fb) #7 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.fe = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.ff = load ptr, ptr @msize_handle, align 8, !tbaa !27
  %i.fg = call i32 @MPI_T_pvar_start(ptr noundef %i.fe, ptr noundef %i.ff) #7 ; 2 uses
  %.not125 = icmp eq i32 %i.fg, 0
  br i1 %.not125, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @msize_pvar_name) ; 0 uses
  %i.fi = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.fg) #7 ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.fj = load i32, ptr %i.c, align 4, !tbaa !17  ; 2 uses
  %i.fk = srem i32 %i.fj, 2
  %i.fl = call i32 @MPI_Comm_split(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.fk, i32 noundef %i.fj, ptr noundef nonnull %i.i) #7 ; 0 uses
  %i.fm = load i32, ptr %i.c, align 4, !tbaa !17
  %i.fn = and i32 %i.fm, 1
  %.not126 = icmp eq i32 %i.fn, 0
  br i1 %.not126, label %bb.bb, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fo = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.fp = call i32 @MPI_Comm_rank(ptr noundef %i.fo, ptr noundef nonnull %i.c) #7 ; 0 uses
  %i.fq = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.fr = call i32 @MPI_Comm_size(ptr noundef %i.fq, ptr noundef nonnull %i.d) #7 ; 0 uses
  %i.fs = load i32, ptr %i.d, align 4, !tbaa !17  ; 2 uses
  %i.ft = icmp sgt i32 %i.fs, 1
  br i1 %i.ft, label %bb.av, label %.loopexit

bb.av:                                            ; preds = %bb.au
  %i.fu = load i32, ptr %i.c, align 4, !tbaa !17  ; 2 uses
  %i.fv = insertelement <2 x i32> poison, i32 %i.fu, i64 0
  %i.fw = shufflevector <2 x i32> %i.fv, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.fx = add nsw <2 x i32> %i.fw, <i32 1, i32 -1>
  %i.fy = insertelement <2 x i32> poison, i32 %i.fs, i64 0
  %i.fz = shufflevector <2 x i32> %i.fy, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ga = srem <2 x i32> %i.fx, %i.fz             ; 3 uses
  %i.gb = icmp eq i32 %i.fu, 0
  br i1 %i.gb, label %bb.aw, label %.preheader

bb.aw:                                            ; preds = %bb.av
  store i32 50, ptr %i.e, align 4, !tbaa !17
  %i.gc = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.gd = extractelement <2 x i32> %i.ga, i64 0
  %i.ge = call i32 @MPI_Send(ptr noundef nonnull %i.e, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, i32 noundef %i.gd, i32 noundef 201, ptr noundef %i.gc) #7 ; 0 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.aw, %bb.av
  %i.gf = extractelement <2 x i32> %i.ga, i64 1
  %i.gg = extractelement <2 x i32> %i.ga, i64 0
  br label %bb.ax

bb.ax:                                            ; preds = %.preheader, %thread-pre-split158
  %.3 = phi i32 [ %.5, %thread-pre-split158 ], [ 201, %.preheader ] ; 3 uses
  %i.gh = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.gi = call i32 @MPI_Recv(ptr noundef nonnull %i.e, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, i32 noundef %i.gf, i32 noundef %.3, ptr noundef %i.gh, ptr noundef nonnull %2) #7 ; 0 uses
  %i.gj = load i32, ptr %i.c, align 4, !tbaa !17
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gl = load i32, ptr %i.e, align 4, !tbaa !17
  %i.gm = add nsw i32 %i.gl, -1
  store i32 %i.gm, ptr %i.e, align 4, !tbaa !17
  %i.gn = add nsw i32 %.3, 1
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.4 = phi i32 [ %i.gn, %bb.ay ], [ %.3, %bb.ax ] ; 3 uses
  %i.go = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.gp = call i32 @MPI_Send(ptr noundef nonnull %i.e, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, i32 noundef %i.gg, i32 noundef %.4, ptr noundef %i.go) #7 ; 0 uses
  %i.gq = load i32, ptr %i.c, align 4, !tbaa !17
  %.not127 = icmp eq i32 %i.gq, 0
  %.pr159 = load i32, ptr %i.e, align 4, !tbaa !17 ; 2 uses
  br i1 %.not127, label %thread-pre-split158, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gr = add nsw i32 %.pr159, -1                 ; 2 uses
  store i32 %i.gr, ptr %i.e, align 4, !tbaa !17
  %i.gs = add nsw i32 %.4, 1
  br label %thread-pre-split158

thread-pre-split158:                              ; preds = %bb.az, %bb.ba
  %i.gt = phi i32 [ %i.gr, %bb.ba ], [ %.pr159, %bb.az ]
  %.5 = phi i32 [ %i.gs, %bb.ba ], [ %.4, %bb.az ]
  %i.gu = icmp slt i32 %i.gt, 0
  br i1 %i.gu, label %.loopexit, label %bb.ax

bb.bb:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #7
  %i.gv = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.gw = call i32 @MPI_Comm_rank(ptr noundef %i.gv, ptr noundef nonnull %i.c) #7 ; 0 uses
  %i.gx = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.gy = call i32 @MPI_Comm_size(ptr noundef %i.gx, ptr noundef nonnull %i.d) #7 ; 0 uses
  %i.gz = load i32, ptr %i.d, align 4, !tbaa !17
  %i.ha = sdiv i32 10240, %i.gz                   ; 2 uses
  %i.hb = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.hc = call i32 @MPI_Alltoall(ptr noundef nonnull %i.l, i32 noundef %i.ha, ptr noundef nonnull @ompi_mpi_int, ptr noundef nonnull %i.m, i32 noundef %i.ha, ptr noundef nonnull @ompi_mpi_int, ptr noundef %i.hb) #7 ; 0 uses
  %i.hd = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.he = load i32, ptr %i.c, align 4, !tbaa !17  ; 2 uses
  %i.hf = srem i32 %i.he, 2
  %i.hg = call i32 @MPI_Comm_split(ptr noundef %i.hd, i32 noundef %i.hf, i32 noundef %i.he, ptr noundef nonnull %i.i) #7 ; 0 uses
  %i.hh = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.hi = call i32 @MPI_Barrier(ptr noundef %i.hh) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  br label %.loopexit

.loopexit:                                        ; preds = %thread-pre-split158, %bb.au, %bb.bb
  %i.hj = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.hk = load ptr, ptr @count_handle, align 8, !tbaa !27
  %i.hl = call i32 @MPI_T_pvar_read(ptr noundef %i.hj, ptr noundef %i.hk, ptr noundef %i.bb) #7 ; 2 uses
  %.not128 = icmp eq i32 %i.hl, 0
  br i1 %.not128, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.loopexit
  %i.hm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @count_pvar_name) ; 0 uses
  %i.hn = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.hl) #7 ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.loopexit
  %i.ho = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.hp = load ptr, ptr @msize_handle, align 8, !tbaa !27
  %i.hq = call i32 @MPI_T_pvar_read(ptr noundef %i.ho, ptr noundef %i.hp, ptr noundef %i.be) #7 ; 2 uses
  %.not129 = icmp eq i32 %i.hq, 0
  br i1 %.not129, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @msize_pvar_name) ; 0 uses
  %i.hs = call i32 @MPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef %i.hq) #7 ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ht = load i32, ptr %i.d, align 4, !tbaa !17  ; 3 uses
  %i.hu = icmp sgt i32 %i.ht, 0
  br i1 %i.hu, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.bf
  %wide.trip.count = zext nneg i32 %i.ht to i64   ; 9 uses
  %min.iters.check = icmp ult i32 %i.ht, 26
  br i1 %min.iters.check, label %.lr.ph.preheader245, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.hv = shl nuw nsw i64 %wide.trip.count, 3
  %i.hw = add nsw i64 %i.ba, %wide.trip.count
  %i.hx = shl nsw i64 %i.hw, 3
  %i.hy = getelementptr i8, ptr %i.aw, i64 %i.hx  ; 3 uses
  %i.hz = add nsw i64 %i.bd, %wide.trip.count
  %i.ia = shl nsw i64 %i.hz, 3
  %i.ib = getelementptr i8, ptr %i.aw, i64 %i.ia  ; 3 uses
  %bound0 = icmp ult ptr %i.bb, %i.ib
  %bound1 = icmp ult ptr %i.be, %i.hy
  %found.conflict = and i1 %bound0, %bound1
  %i.ic = getelementptr i8, ptr %i.aw, i64 %i.hv  ; 2 uses
  %bound0.a = icmp ult ptr %i.bb, %i.ic
  %bound1.a = icmp ult ptr %i.aw, %i.hy
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %conflict.rdx = or i1 %found.conflict, %found.conflict.a
  %3 = add nsw i64 %i.ax, %wide.trip.count
  %4 = shl nsw i64 %3, 3
  %5 = getelementptr i8, ptr %i.aw, i64 %4        ; 2 uses
  %bound0226 = icmp ult ptr %i.bb, %5
  %bound1227 = icmp ult ptr %i.ay, %i.hy
  %found.conflict228 = and i1 %bound0226, %bound1227
  %conflict.rdx229 = or i1 %conflict.rdx, %found.conflict228
  %bound0230 = icmp ult ptr %i.be, %i.ic
  %bound1231 = icmp ult ptr %i.aw, %i.ib
  %found.conflict232 = and i1 %bound0230, %bound1231
  %conflict.rdx233 = or i1 %conflict.rdx229, %found.conflict232
  %bound0234 = icmp ult ptr %i.be, %5
  %bound1235 = icmp ult ptr %i.ay, %i.ib
  %found.conflict236 = and i1 %bound0234, %bound1235
  %conflict.rdx237 = or i1 %conflict.rdx233, %found.conflict236
  br i1 %conflict.rdx237, label %.lr.ph.preheader245, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %wide.load = load <2 x i64>, ptr %i.id, align 8, !tbaa !29, !alias.scope !31
  %wide.load238 = load <2 x i64>, ptr %i.ie, align 8, !tbaa !29, !alias.scope !31
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16 ; 2 uses
  %wide.load239 = load <2 x i64>, ptr %i.if, align 8, !tbaa !29, !alias.scope !32, !noalias !33
  %wide.load240 = load <2 x i64>, ptr %i.ig, align 8, !tbaa !29, !alias.scope !32, !noalias !33
  %i.ih = sub <2 x i64> %wide.load239, %wide.load
  %i.ii = sub <2 x i64> %wide.load240, %wide.load238
  store <2 x i64> %i.ih, ptr %i.if, align 8, !tbaa !29, !alias.scope !32, !noalias !33
  store <2 x i64> %i.ii, ptr %i.ig, align 8, !tbaa !29, !alias.scope !32, !noalias !33
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %wide.load241 = load <2 x i64>, ptr %i.ij, align 8, !tbaa !29, !alias.scope !34
  %wide.load242 = load <2 x i64>, ptr %i.ik, align 8, !tbaa !29, !alias.scope !34
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16 ; 2 uses
  %wide.load243 = load <2 x i64>, ptr %i.il, align 8, !tbaa !29, !alias.scope !35, !noalias !36
  %wide.load244 = load <2 x i64>, ptr %i.im, align 8, !tbaa !29, !alias.scope !35, !noalias !36
  %i.in = sub <2 x i64> %wide.load243, %wide.load241
  %i.io = sub <2 x i64> %wide.load244, %wide.load242
  store <2 x i64> %i.in, ptr %i.il, align 8, !tbaa !29, !alias.scope !35, !noalias !36
  store <2 x i64> %i.io, ptr %i.im, align 8, !tbaa !29, !alias.scope !35, !noalias !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ip = icmp eq i64 %index.next, %n.vec
  br i1 %i.ip, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader245

.lr.ph.preheader245:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader245
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.ph
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !29
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.ph ; 2 uses
  %i.it = load i64, ptr %i.is, align 8, !tbaa !29
  %i.iu = sub i64 %i.it, %i.ir
  store i64 %i.iu, ptr %i.is, align 8, !tbaa !29
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.ph
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !29
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.ph ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !29
  %i.iz = sub i64 %i.iy, %i.iw
  store i64 %i.iz, ptr %i.ix, align 8, !tbaa !29
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader245
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader245 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ja = add nsw i64 %wide.trip.count, -1
  %i.jb = icmp eq i64 %indvars.iv.ph, %i.ja
  br i1 %i.jb, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.bf
  %i.jc = load i32, ptr @world_rank, align 4, !tbaa !17 ; 2 uses
  %i.jd = icmp eq i32 %i.jc, 0
  br i1 %i.jd, label %bb.bg, label %bb.bj

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !29
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv ; 2 uses
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !29
  %i.ji = sub i64 %i.jh, %i.jf
  store i64 %i.ji, ptr %i.jg, align 8, !tbaa !29
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !29
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv ; 2 uses
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !29
  %i.jn = sub i64 %i.jm, %i.jk
  store i64 %i.jn, ptr %i.jl, align 8, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.next
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !29
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next ; 2 uses
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !29
  %i.js = sub i64 %i.jr, %i.jp
  store i64 %i.js, ptr %i.jq, align 8, !tbaa !29
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !29
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next ; 2 uses
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !29
  %i.jx = sub i64 %i.jw, %i.ju
  store i64 %i.jx, ptr %i.jv, align 8, !tbaa !29
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !16

bb.bg:                                            ; preds = %._crit_edge
  %puts130 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.jy = load i32, ptr @world_rank, align 4, !tbaa !17 ; 2 uses
  %i.jz = load i32, ptr @world_size, align 4, !tbaa !17 ; 3 uses
  %i.ka = icmp sgt i32 %i.jz, 0
  br i1 %i.ka, label %.lr.ph.preheader.i142, label %print_vars.exit149

.lr.ph.preheader.i142:                            ; preds = %bb.bg
  %wide.trip.count.i143 = zext nneg i32 %i.jz to i64
  br label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %bb.bi, %.lr.ph.preheader.i142
  %indvars.iv.i145 = phi i64 [ 0, %.lr.ph.preheader.i142 ], [ %indvars.iv.next.i147, %bb.bi ] ; 4 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i145
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !29 ; 2 uses
  %.not.i146 = icmp eq i64 %i.kc, 0
  br i1 %.not.i146, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i144
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.i145
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !29
  %i.kf = trunc nuw nsw i64 %indvars.iv.i145 to i32
  %i.kg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.jy, i32 noundef %i.kf, i64 noundef %i.kc, i64 noundef %i.ke) ; 0 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.lr.ph.i144
  %indvars.iv.next.i147 = add nuw nsw i64 %indvars.iv.i145, 1 ; 2 uses
  %exitcond.not.i148 = icmp eq i64 %indvars.iv.next.i147, %wide.trip.count.i143
  br i1 %exitcond.not.i148, label %print_vars.exit149.loopexit, label %.lr.ph.i144, !llvm.loop !9

print_vars.exit149.loopexit:                      ; preds = %bb.bi
  %.pre167 = load i32, ptr @world_rank, align 4, !tbaa !17
  %.pre168 = load i32, ptr @world_size, align 4, !tbaa !17
  br label %print_vars.exit149

print_vars.exit149:                               ; preds = %print_vars.exit149.loopexit, %bb.bg
  %i.kh = phi i32 [ %.pre168, %print_vars.exit149.loopexit ], [ %i.jz, %bb.bg ]
  %i.ki = phi i32 [ %.pre167, %print_vars.exit149.loopexit ], [ %i.jy, %bb.bg ]
  %i.kj = add nsw i32 %i.ki, 1
  %i.kk = srem i32 %i.kj, %i.kh
  %i.kl = call i32 @MPI_Send(ptr noundef null, i32 noundef 0, ptr noundef nonnull @ompi_mpi_byte, i32 noundef %i.kk, i32 noundef 300, ptr noundef nonnull @ompi_mpi_comm_world) #7 ; 0 uses
  %i.km = load i32, ptr @world_rank, align 4, !tbaa !17
  %i.kn = add nsw i32 %i.km, -1
  %i.ko = load i32, ptr @world_size, align 4, !tbaa !17
  %i.kp = srem i32 %i.kn, %i.ko
  %i.kq = call i32 @MPI_Recv(ptr noundef null, i32 noundef 0, ptr noundef nonnull @ompi_mpi_byte, i32 noundef %i.kp, i32 noundef 300, ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %2) #7 ; 0 uses
  br label %bb.bm

bb.bj:                                            ; preds = %._crit_edge
  %i.kr = add nsw i32 %i.jc, -1
  %i.ks = load i32, ptr @world_size, align 4, !tbaa !17
  %i.kt = srem i32 %i.kr, %i.ks
  %i.ku = call i32 @MPI_Recv(ptr noundef null, i32 noundef 0, ptr noundef nonnull @ompi_mpi_byte, i32 noundef %i.kt, i32 noundef 300, ptr noundef nonnull @ompi_mpi_comm_world, ptr noundef nonnull %2) #7 ; 0 uses
  %i.kv = load i32, ptr @world_rank, align 4, !tbaa !17 ; 2 uses
  %i.kw = load i32, ptr @world_size, align 4, !tbaa !17 ; 3 uses
  %i.kx = icmp sgt i32 %i.kw, 0
  br i1 %i.kx, label %.lr.ph.preheader.i150, label %print_vars.exit157

.lr.ph.preheader.i150:                            ; preds = %bb.bj
  %wide.trip.count.i151 = zext nneg i32 %i.kw to i64
  br label %.lr.ph.i152

.lr.ph.i152:                                      ; preds = %bb.bl, %.lr.ph.preheader.i150
  %indvars.iv.i153 = phi i64 [ 0, %.lr.ph.preheader.i150 ], [ %indvars.iv.next.i155, %bb.bl ] ; 4 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i153
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !29 ; 2 uses
  %.not.i154 = icmp eq i64 %i.kz, 0
  br i1 %.not.i154, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i152
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.i153
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !29
  %i.lc = trunc nuw nsw i64 %indvars.iv.i153 to i32
  %i.ld = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.kv, i32 noundef %i.lc, i64 noundef %i.kz, i64 noundef %i.lb) ; 0 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.lr.ph.i152
  %indvars.iv.next.i155 = add nuw nsw i64 %indvars.iv.i153, 1 ; 2 uses
  %exitcond.not.i156 = icmp eq i64 %indvars.iv.next.i155, %wide.trip.count.i151
  br i1 %exitcond.not.i156, label %print_vars.exit157.loopexit, label %.lr.ph.i152, !llvm.loop !9

print_vars.exit157.loopexit:                      ; preds = %bb.bl
  %.pre165 = load i32, ptr @world_rank, align 4, !tbaa !17
  %.pre166 = load i32, ptr @world_size, align 4, !tbaa !17
  br label %print_vars.exit157

print_vars.exit157:                               ; preds = %print_vars.exit157.loopexit, %bb.bj
  %i.le = phi i32 [ %.pre166, %print_vars.exit157.loopexit ], [ %i.kw, %bb.bj ]
  %i.lf = phi i32 [ %.pre165, %print_vars.exit157.loopexit ], [ %i.kv, %bb.bj ]
  %i.lg = add nsw i32 %i.lf, 1
  %i.lh = srem i32 %i.lg, %i.le
  %i.li = call i32 @MPI_Send(ptr noundef null, i32 noundef 0, ptr noundef nonnull @ompi_mpi_byte, i32 noundef %i.lh, i32 noundef 300, ptr noundef nonnull @ompi_mpi_comm_world) #7 ; 0 uses
  br label %bb.bm
end_hunk_0
