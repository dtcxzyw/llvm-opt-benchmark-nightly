Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/fcoll_vulcan_file_write_all?download=true
inline.NumInlined: 9
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@mca_fcoll_vulcan_file_write_all:bb.a

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <4 x i32> %vec.ind, ptr %i.at, align 4, !tbaa !9
  store <4 x i32> %step.add, ptr %i.au, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %mca_fcoll_vulcan_get_configuration.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i
  %i.ax = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %mca_fcoll_vulcan_get_configuration.exit, label %.lr.ph.i, !llvm.loop !88

mca_fcoll_vulcan_get_configuration.exit:          ; preds = %.lr.ph.i, %middle.block, %.preheader.i
  %.not512 = icmp eq i32 %i.ah, 0
  br i1 %.not512, label %bb.k, label %.thread

bb.k:                                             ; preds = %mca_fcoll_vulcan_get_configuration.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 17 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !123 ; 3 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = shl nsw i64 %i.ba, 3
  %i.bc = call noalias ptr @malloc(i64 noundef %i.bb) #13 ; 11 uses
  %i.bd = icmp sgt i32 %i.az, 0
  br i1 %i.bd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k
  %i.be = load i32, ptr %i.ak, align 8, !tbaa !45
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !124
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !125
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !126
  %wide.trip.count = zext nneg i32 %i.az to i64
  %i.bl = insertelement <2 x ptr> poison, ptr %i.bg, i64 0
  %i.bm = insertelement <2 x ptr> %i.bl, ptr %1, i64 1
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 4 uses
  %.0471586 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %bb.l ]
  %i.bn = call noalias dereferenceable_or_null(224) ptr @calloc(i64 noundef 1, i64 noundef 224) #14 ; 4 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !128
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 152
  store i32 %i.be, ptr %i.bp, align 8, !tbaa !54
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 160
  store ptr %i.aq, ptr %i.bq, align 8, !tbaa !55
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 80
  store <2 x ptr> %i.bm, ptr %i.br, align 8, !tbaa !129
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !9
  %i.bu = icmp eq i32 %i.bt, %i.bk
  %i.bv = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %i.bu, i32 %i.bv, i32 %.0471586 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.l, !llvm.loop !89

._crit_edge:                                      ; preds = %bb.l, %bb.k
  %.0471.lcssa = phi i32 [ -1, %bb.k ], [ %spec.select, %bb.l ] ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !130
  %i.by = load i64, ptr %i.j, align 8, !tbaa !16
  %i.bz = call i32 %i.bx(ptr noundef nonnull %0, i64 noundef %i.by, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #12
  %.not513 = icmp eq i32 %i.bz, 0
  br i1 %.not513, label %bb.m, label %.loopexit550

bb.m:                                             ; preds = %._crit_edge
  %i.ca = load ptr, ptr %i.g, align 8, !tbaa !12  ; 2 uses
  %i.cb = load i32, ptr %i.h, align 4, !tbaa !9   ; 2 uses
  %i.cc = load i32, ptr %i.ay, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.cd = icmp sgt i32 %i.cb, 0
  br i1 %i.cd, label %bb.n, label %mca_fcoll_vulcan_minmax.exit

bb.n:                                             ; preds = %bb.m
  %i.ce = load ptr, ptr %i.ca, align 8, !tbaa !57
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = zext nneg i32 %i.cb to i64
  %i.ch = getelementptr [16 x i8], ptr %i.ca, i64 %i.cg ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 -16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !57
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = getelementptr i8, ptr %i.ch, i64 -8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !58
  %i.cn = add nsw i64 %i.cm, %i.ck
  br label %mca_fcoll_vulcan_minmax.exit

mca_fcoll_vulcan_minmax.exit:                     ; preds = %bb.m, %bb.n
  %.sink.i = phi i64 [ %i.cf, %bb.n ], [ 0, %bb.m ]
  %storemerge.i = phi i64 [ %i.cn, %bb.n ], [ 0, %bb.m ]
  store i64 %.sink.i, ptr %i.a, align 8, !tbaa !16
  store i64 %storemerge.i, ptr %i.b, align 8, !tbaa !16
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !124 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 344
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !149 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !153
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !154
  %i.cw = call i32 %i.ct(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef nonnull @ompi_mpi_long, ptr noundef nonnull @ompi_mpi_op_min, ptr noundef %i.cp, ptr noundef %i.cv) #12, !inline_history !90 ; 0 uses
  %i.cx = load ptr, ptr %i.co, align 8, !tbaa !124 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 344
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !149 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !153
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !154
  %i.de = call i32 %i.db(ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef nonnull @ompi_mpi_long, ptr noundef nonnull @ompi_mpi_op_max, ptr noundef %i.cx, ptr noundef %i.dd) #12, !inline_history !90 ; 0 uses
  %i.df = load i64, ptr %i.d, align 8, !tbaa !16
  %i.dg = load i64, ptr %i.c, align 8, !tbaa !16
  %i.dh = sub nsw i64 %i.df, %i.dg                ; 2 uses
  %i.di = sext i32 %i.cc to i64                   ; 2 uses
  %i.dj = sdiv i64 %i.dh, %i.di
  %i.dk = srem i64 %i.dh, %i.di
  %.not.i533 = icmp ne i64 %i.dk, 0
  %i.dl = zext i1 %.not.i533 to i64
  %spec.select.i = add nsw i64 %i.dj, %i.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.dm = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.dn = load i32, ptr %i.e, align 4, !tbaa !9
  %i.do = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.dp = load i32, ptr %i.h, align 4, !tbaa !9
  %i.dq = load i32, ptr %i.ay, align 8, !tbaa !123
  %i.dr = call i32 @mca_fcoll_vulcan_break_file_view(ptr noundef %i.dm, i32 noundef %i.dn, ptr noundef %i.do, i32 noundef %i.dp, ptr noundef nonnull %i.l, ptr noundef nonnull %i.n, ptr noundef nonnull %i.k, ptr noundef nonnull %i.m, ptr noundef nonnull %i.o, i32 noundef %i.dq, i64 noundef %spec.select.i) ; 0 uses
  %i.ds = load i32, ptr @mca_fcoll_vulcan_num_groups, align 4, !tbaa !9
  %i.dt = icmp eq i32 %i.ds, 1
  br i1 %i.dt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %mca_fcoll_vulcan_minmax.exit
  %i.du = load ptr, ptr %i.co, align 8, !tbaa !124 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 344
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !149 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !153
  %i.dz = load ptr, ptr %i.o, align 8, !tbaa !23  ; 2 uses
  %i.ea = load i32, ptr %i.ay, align 8, !tbaa !123
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !154
  %i.ed = call i32 %i.dy(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %i.dz, i32 noundef %i.ea, ptr noundef nonnull @ompi_mpi_long, ptr noundef nonnull @ompi_mpi_op_sum, ptr noundef %i.du, ptr noundef %i.ec) #12
  %.not515 = icmp eq i32 %i.ed, 0
  br i1 %.not515, label %._crit_edge743, label %.loopexit550

._crit_edge743:                                   ; preds = %bb.o
  %.pre744 = load i32, ptr %i.ay, align 8, !tbaa !123
  br label %bb.r

bb.p:                                             ; preds = %mca_fcoll_vulcan_minmax.exit
  %i.ee = load i32, ptr %i.ay, align 8, !tbaa !123 ; 3 uses
  %i.ef = load i32, ptr %i.ak, align 8, !tbaa !45 ; 2 uses
  %i.eg = mul nsw i32 %i.ef, %i.ee
  %i.eh = sext i32 %i.eg to i64
  %i.ei = shl nsw i64 %i.eh, 3
  %i.ej = call noalias ptr @malloc(i64 noundef %i.ei) #13 ; 6 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %.loopexit550.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.el = load ptr, ptr %i.o, align 8, !tbaa !23  ; 6 uses
  %i.em = load ptr, ptr %i.al, align 8, !tbaa !46
  %i.en = load ptr, ptr %i.co, align 8, !tbaa !124
  %i.eo = call i32 @ompi_fcoll_base_coll_allgather_array(ptr noundef %i.el, i32 noundef %i.ee, ptr noundef nonnull @ompi_mpi_long, ptr noundef nonnull %i.ej, i32 noundef %i.ee, ptr noundef nonnull @ompi_mpi_long, i32 noundef 0, ptr noundef %i.em, i32 noundef %i.ef, ptr noundef %i.en) #12
  %.not514 = icmp eq i32 %i.eo, 0
  br i1 %.not514, label %.preheader559, label %.loopexit550

.preheader559:                                    ; preds = %bb.q
  %i.ep = load i32, ptr %i.ay, align 8, !tbaa !123 ; 4 uses
  %i.eq = icmp sgt i32 %i.ep, 0
  br i1 %i.eq, label %.lr.ph592, label %._crit_edge593

.lr.ph592:                                        ; preds = %.preheader559
  %i.er = load i32, ptr %i.ak, align 8, !tbaa !45 ; 3 uses
  %i.es = icmp sgt i32 %i.er, 0
  %i.et = zext nneg i32 %i.ep to i64              ; 7 uses
  br i1 %i.es, label %.lr.ph589.us.preheader, label %.lr.ph592.split.preheader

.lr.ph592.split.preheader:                        ; preds = %.lr.ph592
  %i.eu = shl nuw nsw i64 %i.et, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.el, i8 0, i64 %i.eu, i1 false), !tbaa !16
  br label %._crit_edge593

.lr.ph589.us.preheader:                           ; preds = %.lr.ph592
  %wide.trip.count679 = zext nneg i32 %i.er to i64 ; 6 uses
  %i.ev = shl nuw nsw i64 %wide.trip.count679, 3
  %scevgep = getelementptr i8, ptr %i.ej, i64 %i.ev
  %scevgep824 = getelementptr i8, ptr %i.el, i64 8
  %min.iters.check826 = icmp ugt i32 %i.er, 3
  %ident.check.not = icmp eq i32 %i.ep, 1
  %or.cond871 = and i1 %min.iters.check826, %ident.check.not
  %bound0 = icmp ult ptr %i.el, %scevgep
  %bound1 = icmp ult ptr %i.ej, %scevgep824
  %found.conflict = and i1 %bound0, %bound1
  %n.vec828 = and i64 %wide.trip.count679, 2147483644 ; 3 uses
  %cmp.n835 = icmp eq i64 %n.vec828, %wide.trip.count679
  %xtraiter = and i64 %wide.trip.count679, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph589.us

.lr.ph589.us:                                     ; preds = %.lr.ph589.us.preheader, %._crit_edge590.us
  %indvars.iv681 = phi i64 [ 0, %.lr.ph589.us.preheader ], [ %indvars.iv.next682, %._crit_edge590.us ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv681 ; 7 uses
  store i64 0, ptr %i.ew, align 8, !tbaa !16
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv681 ; 6 uses
  %or.cond871.not = xor i1 %or.cond871, true
  %brmerge = select i1 %or.cond871.not, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph825.preheader, label %vector.body829

vector.body829:                                   ; preds = %.lr.ph589.us, %vector.body829
  %index830 = phi i64 [ %index.next833, %vector.body829 ], [ 0, %.lr.ph589.us ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.ez, %vector.body829 ], [ zeroinitializer, %.lr.ph589.us ]
  %vec.phi831 = phi <2 x i64> [ %i.fa, %vector.body829 ], [ zeroinitializer, %.lr.ph589.us ]
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index830 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %wide.load = load <2 x i64>, ptr %i.ex, align 8, !tbaa !16, !alias.scope !155
  %wide.load832 = load <2 x i64>, ptr %i.ey, align 8, !tbaa !16, !alias.scope !155
  %i.ez = add <2 x i64> %vec.phi, %wide.load      ; 2 uses
  %i.fa = add <2 x i64> %vec.phi831, %wide.load832 ; 2 uses
  %index.next833 = add nuw i64 %index830, 4       ; 2 uses
  %i.fb = icmp eq i64 %index.next833, %n.vec828
  br i1 %i.fb, label %middle.block834, label %vector.body829, !llvm.loop !93

middle.block834:                                  ; preds = %vector.body829
  %bin.rdx = add <2 x i64> %i.fa, %i.ez
  %i.fc = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  store i64 %i.fc, ptr %i.ew, align 8, !tbaa !16, !alias.scope !156, !noalias !155
  br i1 %cmp.n835, label %._crit_edge590.us, label %scalar.ph825.preheader

scalar.ph825.preheader:                           ; preds = %.lr.ph589.us, %middle.block834
  %indvars.iv676.ph = phi i64 [ %n.vec828, %middle.block834 ], [ 0, %.lr.ph589.us ] ; 3 uses
  %.ph = phi i64 [ %i.fc, %middle.block834 ], [ 0, %.lr.ph589.us ] ; 2 uses
  br i1 %lcmp.mod.not, label %scalar.ph825.prol.loopexit, label %scalar.ph825.prol

scalar.ph825.prol:                                ; preds = %scalar.ph825.preheader, %scalar.ph825.prol
  %indvars.iv676.prol = phi i64 [ %indvars.iv.next677.prol, %scalar.ph825.prol ], [ %indvars.iv676.ph, %scalar.ph825.preheader ] ; 2 uses
  %i.fd = phi i64 [ %i.fg, %scalar.ph825.prol ], [ %.ph, %scalar.ph825.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph825.prol ], [ 0, %scalar.ph825.preheader ]
  %i.fe = mul nuw nsw i64 %indvars.iv676.prol, %i.et
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.fe
  %i.ff = load i64, ptr %gep.prol, align 8, !tbaa !16
  %i.fg = add nsw i64 %i.fd, %i.ff                ; 3 uses
  store i64 %i.fg, ptr %i.ew, align 8, !tbaa !16
  %indvars.iv.next677.prol = add nuw nsw i64 %indvars.iv676.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph825.prol.loopexit, label %scalar.ph825.prol, !llvm.loop !95

scalar.ph825.prol.loopexit:                       ; preds = %scalar.ph825.prol, %scalar.ph825.preheader
  %indvars.iv676.unr = phi i64 [ %indvars.iv676.ph, %scalar.ph825.preheader ], [ %indvars.iv.next677.prol, %scalar.ph825.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph825.preheader ], [ %i.fg, %scalar.ph825.prol ]
  %i.fh = sub nsw i64 %indvars.iv676.ph, %wide.trip.count679
  %i.fi = icmp ugt i64 %i.fh, -4
  br i1 %i.fi, label %._crit_edge590.us, label %scalar.ph825

scalar.ph825:                                     ; preds = %scalar.ph825.prol.loopexit, %scalar.ph825
  %indvars.iv676 = phi i64 [ %indvars.iv.next677.3, %scalar.ph825 ], [ %indvars.iv676.unr, %scalar.ph825.prol.loopexit ] ; 5 uses
  %i.fj = phi i64 [ %i.fv, %scalar.ph825 ], [ %.unr, %scalar.ph825.prol.loopexit ]
  %i.fk = mul nuw nsw i64 %indvars.iv676, %i.et
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.fk
  %i.fl = load i64, ptr %gep, align 8, !tbaa !16
  %i.fm = add nsw i64 %i.fj, %i.fl                ; 2 uses
  store i64 %i.fm, ptr %i.ew, align 8, !tbaa !16
  %indvars.iv.next677 = add nuw nsw i64 %indvars.iv676, 1
  %i.fn = mul nuw nsw i64 %indvars.iv.next677, %i.et
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.fn
  %i.fo = load i64, ptr %gep.1, align 8, !tbaa !16
  %i.fp = add nsw i64 %i.fm, %i.fo                ; 2 uses
  store i64 %i.fp, ptr %i.ew, align 8, !tbaa !16
  %indvars.iv.next677.1 = add nuw nsw i64 %indvars.iv676, 2
  %i.fq = mul nuw nsw i64 %indvars.iv.next677.1, %i.et
  %gep.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.fq
  %i.fr = load i64, ptr %gep.2, align 8, !tbaa !16
  %i.fs = add nsw i64 %i.fp, %i.fr                ; 2 uses
  store i64 %i.fs, ptr %i.ew, align 8, !tbaa !16
  %indvars.iv.next677.2 = add nuw nsw i64 %indvars.iv676, 3
  %i.ft = mul nuw nsw i64 %indvars.iv.next677.2, %i.et
  %gep.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.ft
  %i.fu = load i64, ptr %gep.3, align 8, !tbaa !16
  %i.fv = add nsw i64 %i.fs, %i.fu                ; 2 uses
  store i64 %i.fv, ptr %i.ew, align 8, !tbaa !16
  %indvars.iv.next677.3 = add nuw nsw i64 %indvars.iv676, 4 ; 2 uses
  %exitcond680.not.3 = icmp eq i64 %indvars.iv.next677.3, %wide.trip.count679
  br i1 %exitcond680.not.3, label %._crit_edge590.us, label %scalar.ph825, !llvm.loop !96

._crit_edge590.us:                                ; preds = %scalar.ph825.prol.loopexit, %scalar.ph825, %middle.block834
  %indvars.iv.next682 = add nuw nsw i64 %indvars.iv681, 1 ; 2 uses
  %exitcond685.not = icmp eq i64 %indvars.iv.next682, %i.et
  br i1 %exitcond685.not, label %._crit_edge593, label %.lr.ph589.us, !llvm.loop !97

._crit_edge593:                                   ; preds = %._crit_edge590.us, %.lr.ph592.split.preheader, %.preheader559
  call void @free(ptr noundef nonnull %i.ej) #12
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge743, %._crit_edge593
  %i.fw = phi ptr [ %i.dz, %._crit_edge743 ], [ %i.el, %._crit_edge593 ] ; 4 uses
  %i.fx = phi i32 [ %.pre744, %._crit_edge743 ], [ %i.ep, %._crit_edge593 ] ; 9 uses
  %i.fy = icmp sgt i32 %i.fx, 0
  br i1 %i.fy, label %.lr.ph597, label %._crit_edge598

.lr.ph597:                                        ; preds = %bb.r
  %i.fz = sitofp i32 %i.ac to double              ; 3 uses
  %wide.trip.count689 = zext nneg i32 %i.fx to i64 ; 2 uses
  %xtraiter891 = and i64 %wide.trip.count689, 1
  %i.ga = icmp eq i32 %i.fx, 1
  br i1 %i.ga, label %.epil.preheader, label %.lr.ph597.new

.lr.ph597.new:                                    ; preds = %.lr.ph597
  %unroll_iter = and i64 %wide.trip.count689, 2147483646
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph597.new
  %indvars.iv686 = phi i64 [ 0, %.lr.ph597.new ], [ %indvars.iv.next687.1, %bb.s ] ; 3 uses
  %.0491594 = phi i32 [ 0, %.lr.ph597.new ], [ %spec.select532.1, %bb.s ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph597.new ], [ %niter.next.1, %bb.s ]
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %indvars.iv686
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !16
  %i.gd = sitofp i64 %i.gc to double
  %i.ge = fdiv double %i.gd, %i.fz
  %i.gf = call double @llvm.ceil.f64(double %i.ge) ; 2 uses
  %i.gg = sitofp i32 %.0491594 to double
  %i.gh = fcmp ogt double %i.gf, %i.gg
  %i.gi = fptosi double %i.gf to i32
  %spec.select532 = select i1 %i.gh, i32 %i.gi, i32 %.0491594 ; 2 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %indvars.iv686
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !16
  %i.gm = sitofp i64 %i.gl to double
  %i.gn = fdiv double %i.gm, %i.fz
  %i.go = call double @llvm.ceil.f64(double %i.gn) ; 2 uses
  %i.gp = sitofp i32 %spec.select532 to double
  %i.gq = fcmp ogt double %i.go, %i.gp
  %i.gr = fptosi double %i.go to i32
  %spec.select532.1 = select i1 %i.gq, i32 %i.gr, i32 %spec.select532 ; 3 uses
  %indvars.iv.next687.1 = add nuw nsw i64 %indvars.iv686, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge598.loopexit.unr-lcssa, label %bb.s, !llvm.loop !98

._crit_edge598.loopexit.unr-lcssa:                ; preds = %bb.s
  %lcmp.mod892.not = icmp eq i64 %xtraiter891, 0
  br i1 %lcmp.mod892.not, label %._crit_edge598, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge598.loopexit.unr-lcssa, %.lr.ph597
  %indvars.iv686.epil.init = phi i64 [ 0, %.lr.ph597 ], [ %indvars.iv.next687.1, %._crit_edge598.loopexit.unr-lcssa ]
  %.0491594.epil.init = phi i32 [ 0, %.lr.ph597 ], [ %spec.select532.1, %._crit_edge598.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod894 = trunc i32 %i.fx to i1
  call void @llvm.assume(i1 %lcmp.mod894)
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %indvars.iv686.epil.init
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !16
  %i.gu = sitofp i64 %i.gt to double
  %i.gv = fdiv double %i.gu, %i.fz
  %i.gw = call double @llvm.ceil.f64(double %i.gv) ; 2 uses
  %i.gx = sitofp i32 %.0491594.epil.init to double
  %i.gy = fcmp ogt double %i.gw, %i.gx
  %i.gz = fptosi double %i.gw to i32
  %spec.select532.epil = select i1 %i.gy, i32 %i.gz, i32 %.0491594.epil.init
  br label %._crit_edge598

._crit_edge598:                                   ; preds = %.epil.preheader, %._crit_edge598.loopexit.unr-lcssa, %bb.r
  %.0491.lcssa = phi i32 [ 0, %bb.r ], [ %spec.select532.1, %._crit_edge598.loopexit.unr-lcssa ], [ %spec.select532.epil, %.epil.preheader ] ; 4 uses
  %i.ha = load i32, ptr %i.ak, align 8, !tbaa !45 ; 2 uses
  %i.hb = mul nsw i32 %i.ha, %i.fx
  %i.hc = sext i32 %i.hb to i64
  %i.hd = shl nsw i64 %i.hc, 2
  %i.he = call noalias ptr @malloc(i64 noundef %i.hd) #13 ; 24 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %.loopexit550, label %bb.t

bb.t:                                             ; preds = %._crit_edge598
  %i.hg = load i32, ptr @mca_fcoll_vulcan_num_groups, align 4, !tbaa !9
  %i.hh = icmp eq i32 %i.hg, 1
  br i1 %i.hh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hi = load ptr, ptr %i.co, align 8, !tbaa !124 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 344
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !149 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !157
  %i.hm = load ptr, ptr %i.m, align 8, !tbaa !21  ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !158
  %i.hp = call i32 %i.hl(ptr noundef %i.hm, i32 noundef %i.fx, ptr noundef nonnull @ompi_mpi_int, ptr noundef nonnull %i.he, i32 noundef %i.fx, ptr noundef nonnull @ompi_mpi_int, ptr noundef %i.hi, ptr noundef %i.ho) #12
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.hq = load ptr, ptr %i.m, align 8, !tbaa !21  ; 2 uses
  %i.hr = load ptr, ptr %i.al, align 8, !tbaa !46
end_hunk_0
