Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/topo_base_dist_graph_create?download=true
inline.NumInlined: 10
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@mca_topo_base_dist_graph_distribute:bb.a
  %indvars.iv.next406 = add nuw nsw i64 %indvars.iv405, 1 ; 2 uses
  %exitcond409.not = icmp eq i64 %indvars.iv.next406, %wide.trip.count417
  br i1 %exitcond409.not, label %._crit_edge361, label %.preheader341, !llvm.loop !58

._crit_edge361:                                   ; preds = %._crit_edge357.split, %._crit_edge357.split.us.us, %bb.c
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !92 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 208
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !96
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 216
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !97
  %i.fe = tail call i32 %i.fb(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull %i.j, i32 noundef 2, ptr noundef nonnull @ompi_mpi_int, ptr noundef nonnull @ompi_mpi_op_sum, ptr noundef %1, ptr noundef %i.fd) #10 ; 0 uses
  %i.ff = load i64, ptr getelementptr inbounds nuw (i8, ptr @mca_topo_base_comm_dist_graph_2_2_0_t_class, i64 56), align 8, !tbaa !98
  %i.fg = tail call noalias ptr @malloc(i64 noundef %i.ff) #12 ; 23 uses
  %i.fh = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !38
  %i.fi = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_topo_base_comm_dist_graph_2_2_0_t_class, i64 32), align 8, !tbaa !99
  %.not.i = icmp eq i32 %i.fh, %i.fi
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge361
  tail call void @opal_class_initialize(ptr noundef nonnull @mca_topo_base_comm_dist_graph_2_2_0_t_class) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge361
  %.not9.i = icmp eq ptr %i.fg, null
  br i1 %.not9.i, label %opal_obj_new.exit.thread309.thread.thread328, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr @mca_topo_base_comm_dist_graph_2_2_0_t_class, ptr %i.fg, align 8, !tbaa !41
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store volatile i32 1, ptr %i.fj, align 8, !tbaa !100
  %i.fk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_topo_base_comm_dist_graph_2_2_0_t_class, i64 40), align 8, !tbaa !101 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !42 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.fl, null
  br i1 %.not6.i.i, label %.loopexit340, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %i.fm = phi ptr [ %i.fo, %.lr.ph.i.i ], [ %i.fl, %bb.h ]
  %.07.i.i = phi ptr [ %i.fn, %.lr.ph.i.i ], [ %i.fk, %bb.h ]
  tail call void %i.fm(ptr noundef nonnull %i.fg) #10, !inline_history !59
  %i.fn = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !42 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fo, null
  br i1 %.not.i.i, label %.loopexit340, label %.lr.ph.i.i, !llvm.loop !60

.loopexit340:                                     ; preds = %.lr.ph.i.i, %bb.h
  %i.fp = load i32, ptr %i.j, align 4, !tbaa !90  ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fg, i64 48 ; 2 uses
  store i32 %i.fp, ptr %i.fq, align 8, !tbaa !102
  %i.fr = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !89 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fg, i64 52 ; 3 uses
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !103
  %i.fu = icmp ne ptr %6, inttoptr (i64 2 to ptr) ; 9 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fg, i64 56
  %i.fw = zext i1 %i.fu to i8
  store i8 %i.fw, ptr %i.fv, align 8, !tbaa !104
  %i.fx = icmp sgt i32 %i.fp, 0
  br i1 %i.fx, label %bb.i, label %bb.l

bb.i:                                             ; preds = %.loopexit340
  %i.fy = zext nneg i32 %i.fp to i64
  %i.fz = shl nuw nsw i64 %i.fy, 2                ; 2 uses
  %i.ga = tail call noalias ptr @malloc(i64 noundef %i.fz) #12 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store ptr %i.ga, ptr %i.gb, align 8, !tbaa !44
  %i.gc = icmp eq ptr %i.ga, null
  br i1 %i.gc, label %opal_obj_new.exit.thread309.thread.thread328, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.fu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.gd = tail call noalias ptr @malloc(i64 noundef %i.fz) #12 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  store ptr %i.gd, ptr %i.ge, align 8, !tbaa !45
  %i.gf = icmp eq ptr %i.gd, null
  br i1 %i.gf, label %opal_obj_new.exit.thread309.thread.thread328, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %.loopexit340
  %i.gg = icmp sgt i32 %i.fs, 0
  br i1 %i.gg, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.gh = zext nneg i32 %i.fs to i64
  %i.gi = shl nuw nsw i64 %i.gh, 2                ; 2 uses
  %i.gj = tail call noalias ptr @malloc(i64 noundef %i.gi) #12 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  store ptr %i.gj, ptr %i.gk, align 8, !tbaa !46
  %i.gl = icmp eq ptr %i.gj, null
  br i1 %i.gl, label %opal_obj_new.exit.thread309.thread.thread328, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.fu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.gm = tail call noalias ptr @malloc(i64 noundef %i.gi) #12 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  store ptr %i.gm, ptr %i.gn, align 8, !tbaa !47
  %i.go = icmp eq ptr %i.gm, null
  br i1 %i.go, label %opal_obj_new.exit.thread309.thread.thread328, label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.l
  %i.gp = shl nsw i64 %i.h, 4
  %i.gq = tail call noalias ptr @malloc(i64 noundef %i.gp) #12 ; 5 uses
  %i.gr = icmp sgt i32 %.val.val, 0
  br i1 %i.gr, label %.lr.ph365, label %._crit_edge366

.lr.ph365:                                        ; preds = %bb.p
  %i.gs = zext i1 %i.fu to i32                    ; 4 uses
  %wide.trip.count422 = zext nneg i32 %.val.val to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph365, %bb.u
  %indvars.iv419 = phi i64 [ 0, %.lr.ph365 ], [ %indvars.iv.next420, %bb.u ] ; 6 uses
  %.0260363 = phi i32 [ 0, %.lr.ph365 ], [ %.2262, %bb.u ] ; 3 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv419 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !90 ; 2 uses
  %.not = icmp eq i32 %i.gu, 0
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv419
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !90
  %.0265 = shl nsw i32 %i.gu, %i.gs
  %.0 = shl nsw i32 %i.gw, %i.gs
  %i.gx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 88), align 8, !tbaa !106
  %i.gy = sext i32 %.0 to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.gy
  %i.ha = sext i32 %.0265 to i64
  %i.hb = sext i32 %.0260363 to i64
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.hb
  %i.hd = trunc nuw nsw i64 %indvars.iv419 to i32
  %i.he = tail call i32 %i.gx(ptr noundef nonnull %i.gz, i64 noundef %i.ha, ptr noundef nonnull @ompi_mpi_int, i32 noundef %i.hd, i32 noundef -50, i32 noundef 4, ptr noundef %1, ptr noundef %i.hc) #10 ; 0 uses
  %i.hf = add nsw i32 %.0260363, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1261 = phi i32 [ %i.hf, %bb.r ], [ %.0260363, %bb.q ] ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !89 ; 2 uses
  %.not300 = icmp eq i32 %i.hh, 0
  br i1 %.not300, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv419
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !89
  %.1266 = shl nsw i32 %i.hh, %i.gs
  %.1 = shl nsw i32 %i.hk, %i.gs
  %i.hl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 88), align 8, !tbaa !106
  %i.hm = sext i32 %.1 to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.hm
  %i.ho = sext i32 %.1266 to i64
  %i.hp = sext i32 %.1261 to i64
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.hp
  %i.hr = trunc nuw nsw i64 %indvars.iv419 to i32
  %i.hs = tail call i32 %i.hl(ptr noundef nonnull %i.hn, i64 noundef %i.ho, ptr noundef nonnull @ompi_mpi_int, i32 noundef %i.hr, i32 noundef -51, i32 noundef 4, ptr noundef %1, ptr noundef %i.hq) #10 ; 0 uses
  %i.ht = add nsw i32 %.1261, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.2262 = phi i32 [ %i.ht, %bb.t ], [ %.1261, %bb.s ] ; 2 uses
  %indvars.iv.next420 = add nuw nsw i64 %indvars.iv419, 1 ; 2 uses
  %exitcond423.not = icmp eq i64 %indvars.iv.next420, %wide.trip.count422
  br i1 %exitcond423.not, label %._crit_edge366.loopexit, label %bb.q, !llvm.loop !61

._crit_edge366.loopexit:                          ; preds = %bb.u
  %.pre443 = load i32, ptr %i.fq, align 8, !tbaa !102
  %i.hu = sext i32 %.2262 to i64
  br label %._crit_edge366

._crit_edge366:                                   ; preds = %._crit_edge366.loopexit, %bb.p
  %i.hv = phi i32 [ %i.fp, %bb.p ], [ %.pre443, %._crit_edge366.loopexit ] ; 3 uses
  %.0260.lcssa = phi i64 [ 0, %bb.p ], [ %i.hu, %._crit_edge366.loopexit ]
  %i.hw = getelementptr inbounds nuw i8, ptr %i.fg, i64 16 ; 2 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !44 ; 2 uses
  br i1 %i.fu, label %bb.v, label %bb.x

bb.v:                                             ; preds = %._crit_edge366
  %i.hy = shl nsw i32 %i.hv, 1                    ; 3 uses
  %i.hz = icmp sgt i32 %i.hv, 0
  br i1 %i.hz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ia = zext nneg i32 %i.hy to i64
  %i.ib = shl nuw nsw i64 %i.ia, 2
  %i.ic = tail call noalias ptr @malloc(i64 noundef %i.ib) #12 ; 2 uses
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %opal_obj_new.exit, label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %._crit_edge366
  %.2267 = phi i32 [ %i.hy, %bb.w ], [ %i.hy, %bb.v ], [ %i.hv, %._crit_edge366 ] ; 4 uses
  %.0251 = phi ptr [ %i.ic, %bb.w ], [ %i.hx, %bb.v ], [ %i.hx, %._crit_edge366 ] ; 10 uses
  %i.ie = icmp sgt i32 %.2267, 0
  br i1 %i.ie, label %.lr.ph375, label %._crit_edge376

.lr.ph375:                                        ; preds = %bb.x
  %i.if = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ig = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.ih = zext nneg i32 %.2267 to i64
  %i.ii = shl nuw nsw i64 %i.ih, 2
  %9 = getelementptr i8, ptr %.0251, i64 %i.ii
  %scevgep.a = getelementptr i8, ptr %9, i64 -4
  %scevgep500 = getelementptr i8, ptr %.0251, i64 -4
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph375, %.loopexit339
  %.0256373 = phi i32 [ 0, %.lr.ph375 ], [ %.2258, %.loopexit339 ] ; 3 uses
  %.0263372 = phi i32 [ %.2267, %.lr.ph375 ], [ %i.lj, %.loopexit339 ] ; 4 uses
  %i.ij = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 72), align 8, !tbaa !107
  %i.ik = sub nsw i32 %.2267, %.0263372           ; 3 uses
  %i.il = sext i32 %i.ik to i64                   ; 2 uses
  %i.im = getelementptr inbounds [4 x i8], ptr %.0251, i64 %i.il
  %i.in = zext nneg i32 %.0263372 to i64
  %i.io = call i32 %i.ij(ptr noundef %i.im, i64 noundef %i.in, ptr noundef nonnull @ompi_mpi_int, i32 noundef -1, i32 noundef -50, ptr noundef %1, ptr noundef nonnull %8) #10 ; 0 uses
  %i.ip = load i64, ptr %i.if, align 8, !tbaa !109
  %i.iq = udiv i64 %i.ip, %i.a
  %i.ir = trunc i64 %i.iq to i32                  ; 2 uses
  br i1 %i.fu, label %.preheader338, label %.loopexit339

.preheader338:                                    ; preds = %bb.y
  %i.is = ashr i32 %i.ir, 1                       ; 3 uses
  %i.it = icmp sgt i32 %i.is, 0
  br i1 %i.it, label %.lr.ph370, label %.loopexit339

.lr.ph370:                                        ; preds = %.preheader338
  %i.iu = load ptr, ptr %i.hw, align 8, !tbaa !44 ; 6 uses
  %i.iv = add nsw i32 %i.ik, 1                    ; 6 uses
  %i.iw = load ptr, ptr %i.ig, align 8, !tbaa !45 ; 6 uses
  %i.ix = sext i32 %.0256373 to i64               ; 7 uses
  %wide.trip.count431 = zext nneg i32 %i.is to i64 ; 8 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.0251, i64 %i.il ; 6 uses
  %min.iters.check = icmp ult i32 %i.is, 29
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph370
  %i.iy = add nsw i64 %wide.trip.count431, -1     ; 2 uses
  %i.iz = trunc nsw i64 %i.iy to i32
  %mul.result = shl i32 %i.iz, 1
  %i.ja = add i32 %i.iv, %mul.result
  %i.jb = icmp sle i32 %i.ja, %i.ik
  %i.jc = icmp ugt i64 %i.iy, 4294967295
  %i.jd = or i1 %i.jb, %i.jc
  br i1 %i.jd, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.je = shl nsw i64 %i.ix, 2                    ; 2 uses
  %i.jf = getelementptr i8, ptr %i.iu, i64 %i.je  ; 3 uses
  %i.jg = add nsw i64 %i.ix, %wide.trip.count431
  %i.jh = shl nsw i64 %i.jg, 2                    ; 2 uses
  %i.ji = getelementptr i8, ptr %i.iu, i64 %i.jh  ; 3 uses
  %i.jj = getelementptr i8, ptr %i.iw, i64 %i.je  ; 3 uses
  %i.jk = getelementptr i8, ptr %i.iw, i64 %i.jh  ; 3 uses
  %10 = sext i32 %i.iv to i64
  %i.jl = shl nsw i64 %10, 2                      ; 2 uses
  %11 = getelementptr i8, ptr %.0251, i64 %i.jl   ; 2 uses
  %i.jm = shl nuw nsw i64 %wide.trip.count431, 3  ; 2 uses
  %12 = getelementptr i8, ptr %scevgep500, i64 %i.jm
  %i.jn = getelementptr i8, ptr %12, i64 %i.jl    ; 2 uses
  %13 = zext nneg i32 %.0263372 to i64
  %i.jo = shl nuw nsw i64 %13, 2
  %14 = sub nsw i64 %i.jm, %i.jo
  %i.jp = getelementptr i8, ptr %scevgep.a, i64 %14 ; 2 uses
  %bound0 = icmp ult ptr %i.jf, %i.jk
  %bound1 = icmp ult ptr %i.jj, %i.ji
  %found.conflict = and i1 %bound0, %bound1
  %bound0501 = icmp ult ptr %i.jf, %i.jn
  %bound1502 = icmp ult ptr %11, %i.ji
  %found.conflict503 = and i1 %bound0501, %bound1502
  %conflict.rdx = or i1 %found.conflict, %found.conflict503
  %bound0504 = icmp ult ptr %i.jf, %i.jp
  %bound1505 = icmp ult ptr %invariant.gep, %i.ji
  %found.conflict506 = and i1 %bound0504, %bound1505
  %conflict.rdx507 = or i1 %conflict.rdx, %found.conflict506
  %bound0508 = icmp ult ptr %i.jj, %i.jn
  %bound1509 = icmp ult ptr %11, %i.jk
  %found.conflict510 = and i1 %bound0508, %bound1509
  %conflict.rdx511 = or i1 %conflict.rdx507, %found.conflict510
  %bound0512 = icmp ult ptr %i.jj, %i.jp
  %bound1513 = icmp ult ptr %invariant.gep, %i.jk
  %found.conflict514 = and i1 %bound0512, %bound1513
  %conflict.rdx515 = or i1 %conflict.rdx511, %found.conflict514
  br i1 %conflict.rdx515, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.jq = and i64 %wide.trip.count431, 3          ; 2 uses
  %i.jr = icmp eq i64 %i.jq, 0
  %i.js = select i1 %i.jr, i64 4, i64 %i.jq
  %n.vec = sub nsw i64 %wide.trip.count431, %i.js ; 3 uses
  %i.jt = add nsw i64 %n.vec, %i.ix
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ju = add i64 %index, %i.ix                   ; 2 uses
  %i.jv = shl nuw nsw i64 %index, 1               ; 2 uses
  %i.jw = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.jv
  %wide.vec = load <8 x i32>, ptr %i.jw, align 4, !tbaa !38, !alias.scope !110
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %i.ju
  store <4 x i32> %strided.vec, ptr %i.jx, align 4, !tbaa !38, !alias.scope !111, !noalias !112
  %i.jy = trunc nuw nsw i64 %i.jv to i32
  %i.jz = add i32 %i.iv, %i.jy
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr inbounds [4 x i8], ptr %.0251, i64 %i.ka
  %wide.vec516 = load <8 x i32>, ptr %i.kb, align 4, !tbaa !38, !alias.scope !113
  %strided.vec517 = shufflevector <8 x i32> %wide.vec516, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.iw, i64 %i.ju
  store <4 x i32> %strided.vec517, ptr %i.kc, align 4, !tbaa !38, !alias.scope !114, !noalias !115
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kd = icmp eq i64 %index.next, %n.vec
  br i1 %i.kd, label %scalar.ph.preheader, label %vector.body, !llvm.loop !67

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.lr.ph370
  %indvars.iv426.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph370 ], [ %n.vec, %vector.body ] ; 5 uses
  %indvars.iv424.ph = phi i64 [ %i.ix, %vector.memcheck ], [ %i.ix, %vector.scevcheck ], [ %i.ix, %.lr.ph370 ], [ %i.jt, %vector.body ] ; 4 uses
  %i.ke = sub nsw i64 %wide.trip.count431, %indvars.iv426.ph
  %xtraiter596 = and i64 %i.ke, 1
  %lcmp.mod597.not = icmp eq i64 %xtraiter596, 0
  br i1 %lcmp.mod597.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.kf = shl nuw nsw i64 %indvars.iv426.ph, 1    ; 2 uses
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.kf
  %i.kg = load i32, ptr %gep.prol, align 4, !tbaa !38
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %indvars.iv424.ph
  store i32 %i.kg, ptr %i.kh, align 4, !tbaa !38
  %i.ki = trunc nuw nsw i64 %i.kf to i32
  %i.kj = add i32 %i.iv, %i.ki
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds [4 x i8], ptr %.0251, i64 %i.kk
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !38
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.iw, i64 %indvars.iv424.ph
  store i32 %i.km, ptr %i.kn, align 4, !tbaa !38
  %indvars.iv.next427.prol = add nuw nsw i64 %indvars.iv426.ph, 1
  %indvars.iv.next425.prol = add nsw i64 %indvars.iv424.ph, 1 ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next425.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next425.prol, %scalar.ph.prol ]
  %indvars.iv426.unr = phi i64 [ %indvars.iv426.ph, %scalar.ph.preheader ], [ %indvars.iv.next427.prol, %scalar.ph.prol ]
  %indvars.iv424.unr = phi i64 [ %indvars.iv424.ph, %scalar.ph.preheader ], [ %indvars.iv.next425.prol, %scalar.ph.prol ]
  %i.ko = add nsw i64 %wide.trip.count431, -1
  %i.kp = icmp eq i64 %indvars.iv426.ph, %i.ko
  br i1 %i.kp, label %.loopexit339.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv426 = phi i64 [ %indvars.iv.next427.1, %scalar.ph ], [ %indvars.iv426.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %indvars.iv424 = phi i64 [ %indvars.iv.next425.1, %scalar.ph ], [ %indvars.iv424.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.kq = shl nuw nsw i64 %indvars.iv426, 1       ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.kq
  %i.kr = load i32, ptr %gep, align 4, !tbaa !38
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %indvars.iv424
  store i32 %i.kr, ptr %i.ks, align 4, !tbaa !38
  %i.kt = trunc nuw nsw i64 %i.kq to i32
  %i.ku = add i32 %i.iv, %i.kt
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr inbounds [4 x i8], ptr %.0251, i64 %i.kv
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !38
  %i.ky = getelementptr inbounds [4 x i8], ptr %i.iw, i64 %indvars.iv424
  store i32 %i.kx, ptr %i.ky, align 4, !tbaa !38
  %indvars.iv.next425 = add nsw i64 %indvars.iv424, 1 ; 2 uses
  %indvars.iv.next427 = shl i64 %indvars.iv426, 1
  %i.kz = add i64 %indvars.iv.next427, 2          ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.kz
  %i.la = load i32, ptr %gep.1, align 4, !tbaa !38
  %i.lb = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %indvars.iv.next425
  store i32 %i.la, ptr %i.lb, align 4, !tbaa !38
  %i.lc = trunc nuw nsw i64 %i.kz to i32
  %i.ld = add i32 %i.iv, %i.lc
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds [4 x i8], ptr %.0251, i64 %i.le
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !38
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.iw, i64 %indvars.iv.next425
  store i32 %i.lg, ptr %i.lh, align 4, !tbaa !38
  %indvars.iv.next427.1 = add nuw nsw i64 %indvars.iv426, 2 ; 2 uses
  %indvars.iv.next425.1 = add nsw i64 %indvars.iv424, 2 ; 2 uses
  %exitcond432.not.1 = icmp eq i64 %indvars.iv.next427.1, %wide.trip.count431
  br i1 %exitcond432.not.1, label %.loopexit339.loopexit, label %scalar.ph, !llvm.loop !68

.loopexit339.loopexit:                            ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  %indvars.iv.next425.lcssa = phi i64 [ %indvars.iv.next425.lcssa.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next425.1, %scalar.ph ]
  %i.li = trunc nsw i64 %indvars.iv.next425.lcssa to i32
  br label %.loopexit339

.loopexit339:                                     ; preds = %bb.y, %.loopexit339.loopexit, %.preheader338
  %.2258 = phi i32 [ %.0256373, %.preheader338 ], [ %i.li, %.loopexit339.loopexit ], [ %.0256373, %bb.y ]
  %i.lj = sub i32 %.0263372, %i.ir                ; 2 uses
  %i.lk = icmp sgt i32 %i.lj, 0
  br i1 %i.lk, label %bb.y, label %._crit_edge376, !llvm.loop !69

._crit_edge376:                                   ; preds = %.loopexit339, %bb.x
  br i1 %i.fu, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge376
  %i.ll = load i32, ptr %i.ft, align 4, !tbaa !103
  %i.lm = getelementptr inbounds nuw i8, ptr %i.fg, i64 32 ; 2 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !46
  br label %bb.ac

bb.aa:                                            ; preds = %._crit_edge376
  call void @free(ptr noundef %.0251) #10
  %i.lo = load i32, ptr %i.ft, align 4, !tbaa !103 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.fg, i64 32 ; 3 uses
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !46
  %i.lr = shl nsw i32 %i.lo, 1                    ; 3 uses
  %i.ls = icmp sgt i32 %i.lo, 0
  br i1 %i.ls, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.lt = zext nneg i32 %i.lr to i64
  %i.lu = shl nuw nsw i64 %i.lt, 2
  %i.lv = call noalias ptr @malloc(i64 noundef %i.lu) #12 ; 2 uses
  %i.lw = icmp eq ptr %i.lv, null
  br i1 %i.lw, label %opal_obj_new.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.aa, %bb.ab
  %i.lx = phi ptr [ %i.lp, %bb.ab ], [ %i.lp, %bb.aa ], [ %i.lm, %bb.z ]
  %.3268 = phi i32 [ %i.lr, %bb.ab ], [ %i.lr, %bb.aa ], [ %i.ll, %bb.z ] ; 4 uses
  %.1252 = phi ptr [ %i.lv, %bb.ab ], [ %i.lq, %bb.aa ], [ %i.ln, %bb.z ] ; 10 uses
  %i.ly = icmp sgt i32 %.3268, 0
  br i1 %i.ly, label %.lr.ph384, label %._crit_edge385

.lr.ph384:                                        ; preds = %bb.ac
  %i.lz = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ma = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  %i.mb = zext nneg i32 %.3268 to i64
  %i.mc = shl nuw nsw i64 %i.mb, 2
  %15 = getelementptr i8, ptr %.1252, i64 %i.mc
  %scevgep552.a = getelementptr i8, ptr %15, i64 -4
  %scevgep553 = getelementptr i8, ptr %.1252, i64 -4
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph384, %.loopexit
  %.3259382 = phi i32 [ 0, %.lr.ph384 ], [ %.5, %.loopexit ] ; 3 uses
  %.1264381 = phi i32 [ %.3268, %.lr.ph384 ], [ %i.pd, %.loopexit ] ; 4 uses
  %i.md = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 72), align 8, !tbaa !107
  %i.me = sub nsw i32 %.3268, %.1264381           ; 3 uses
  %i.mf = sext i32 %i.me to i64                   ; 2 uses
  %i.mg = getelementptr inbounds [4 x i8], ptr %.1252, i64 %i.mf
  %i.mh = zext nneg i32 %.1264381 to i64
  %i.mi = call i32 %i.md(ptr noundef %i.mg, i64 noundef %i.mh, ptr noundef nonnull @ompi_mpi_int, i32 noundef -1, i32 noundef -51, ptr noundef %1, ptr noundef nonnull %8) #10 ; 0 uses
  %i.mj = load i64, ptr %i.lz, align 8, !tbaa !109
  %i.mk = udiv i64 %i.mj, %i.a
  %i.ml = trunc i64 %i.mk to i32                  ; 2 uses
  br i1 %i.fu, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.ad
  %i.mm = ashr i32 %i.ml, 1                       ; 3 uses
  %i.mn = icmp sgt i32 %i.mm, 0
  br i1 %i.mn, label %.lr.ph379, label %.loopexit

.lr.ph379:                                        ; preds = %.preheader
  %i.mo = load ptr, ptr %i.lx, align 8, !tbaa !46 ; 6 uses
  %i.mp = add nsw i32 %i.me, 1                    ; 6 uses
  %i.mq = load ptr, ptr %i.ma, align 8, !tbaa !47 ; 6 uses
  %i.mr = sext i32 %.3259382 to i64               ; 7 uses
  %wide.trip.count440 = zext nneg i32 %i.mm to i64 ; 8 uses
  %invariant.gep474 = getelementptr [4 x i8], ptr %.1252, i64 %i.mf ; 6 uses
  %min.iters.check555 = icmp ult i32 %i.mm, 29
  br i1 %min.iters.check555, label %scalar.ph554.preheader, label %vector.scevcheck519

vector.scevcheck519:                              ; preds = %.lr.ph379
  %i.ms = add nsw i64 %wide.trip.count440, -1     ; 2 uses
  %i.mt = trunc nsw i64 %i.ms to i32
  %mul.result521 = shl i32 %i.mt, 1
  %i.mu = add i32 %i.mp, %mul.result521
  %i.mv = icmp sle i32 %i.mu, %i.me
  %i.mw = icmp ugt i64 %i.ms, 4294967295
  %i.mx = or i1 %i.mv, %i.mw
  br i1 %i.mx, label %scalar.ph554.preheader, label %vector.memcheck556

vector.memcheck556:                               ; preds = %vector.scevcheck519
  %i.my = shl nsw i64 %i.mr, 2                    ; 2 uses
  %i.mz = getelementptr i8, ptr %i.mo, i64 %i.my  ; 3 uses
  %i.na = add nsw i64 %i.mr, %wide.trip.count440
  %i.nb = shl nsw i64 %i.na, 2                    ; 2 uses
  %i.nc = getelementptr i8, ptr %i.mo, i64 %i.nb  ; 3 uses
  %i.nd = getelementptr i8, ptr %i.mq, i64 %i.my  ; 3 uses
  %i.ne = getelementptr i8, ptr %i.mq, i64 %i.nb  ; 3 uses
  %16 = sext i32 %i.mp to i64
  %i.nf = shl nsw i64 %16, 2                      ; 2 uses
  %17 = getelementptr i8, ptr %.1252, i64 %i.nf   ; 2 uses
  %i.ng = shl nuw nsw i64 %wide.trip.count440, 3  ; 2 uses
  %18 = getelementptr i8, ptr %scevgep553, i64 %i.ng
  %i.nh = getelementptr i8, ptr %18, i64 %i.nf    ; 2 uses
  %19 = zext nneg i32 %.1264381 to i64
  %i.ni = shl nuw nsw i64 %19, 2
  %20 = sub nsw i64 %i.ng, %i.ni
  %i.nj = getelementptr i8, ptr %scevgep552.a, i64 %20 ; 2 uses
  %bound0557 = icmp ult ptr %i.mz, %i.ne
  %bound1558 = icmp ult ptr %i.nd, %i.nc
  %found.conflict559 = and i1 %bound0557, %bound1558
  %bound0560 = icmp ult ptr %i.mz, %i.nh
  %bound1561 = icmp ult ptr %17, %i.nc
  %found.conflict562 = and i1 %bound0560, %bound1561
  %conflict.rdx563 = or i1 %found.conflict559, %found.conflict562
  %bound0564 = icmp ult ptr %i.mz, %i.nj
  %bound1565 = icmp ult ptr %invariant.gep474, %i.nc
  %found.conflict566 = and i1 %bound0564, %bound1565
  %conflict.rdx567 = or i1 %conflict.rdx563, %found.conflict566
  %bound0568 = icmp ult ptr %i.nd, %i.nh
  %bound1569 = icmp ult ptr %17, %i.ne
  %found.conflict570 = and i1 %bound0568, %bound1569
  %conflict.rdx571 = or i1 %conflict.rdx567, %found.conflict570
  %bound0572 = icmp ult ptr %i.nd, %i.nj
  %bound1573 = icmp ult ptr %invariant.gep474, %i.ne
  %found.conflict574 = and i1 %bound0572, %bound1573
  %conflict.rdx575 = or i1 %conflict.rdx571, %found.conflict574
  br i1 %conflict.rdx575, label %scalar.ph554.preheader, label %vector.ph576

vector.ph576:                                     ; preds = %vector.memcheck556
  %i.nk = and i64 %wide.trip.count440, 3          ; 2 uses
  %i.nl = icmp eq i64 %i.nk, 0
  %i.nm = select i1 %i.nl, i64 4, i64 %i.nk
  %n.vec577 = sub nsw i64 %wide.trip.count440, %i.nm ; 3 uses
  %i.nn = add nsw i64 %n.vec577, %i.mr
  br label %vector.body578

vector.body578:                                   ; preds = %vector.body578, %vector.ph576
  %index579 = phi i64 [ 0, %vector.ph576 ], [ %index.next584, %vector.body578 ] ; 3 uses
  %i.no = add i64 %index579, %i.mr                ; 2 uses
  %i.np = shl nuw nsw i64 %index579, 1            ; 2 uses
  %i.nq = getelementptr [4 x i8], ptr %invariant.gep474, i64 %i.np
  %wide.vec580 = load <8 x i32>, ptr %i.nq, align 4, !tbaa !38, !alias.scope !118
  %strided.vec581 = shufflevector <8 x i32> %wide.vec580, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nr = getelementptr inbounds [4 x i8], ptr %i.mo, i64 %i.no
  store <4 x i32> %strided.vec581, ptr %i.nr, align 4, !tbaa !38, !alias.scope !119, !noalias !120
  %i.ns = trunc nuw nsw i64 %i.np to i32
  %i.nt = add i32 %i.mp, %i.ns
  %i.nu = sext i32 %i.nt to i64
  %i.nv = getelementptr inbounds [4 x i8], ptr %.1252, i64 %i.nu
  %wide.vec582 = load <8 x i32>, ptr %i.nv, align 4, !tbaa !38, !alias.scope !121
  %strided.vec583 = shufflevector <8 x i32> %wide.vec582, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nw = getelementptr inbounds [4 x i8], ptr %i.mq, i64 %i.no
  store <4 x i32> %strided.vec583, ptr %i.nw, align 4, !tbaa !38, !alias.scope !122, !noalias !123
  %index.next584 = add nuw i64 %index579, 4       ; 2 uses
  %i.nx = icmp eq i64 %index.next584, %n.vec577
  br i1 %i.nx, label %scalar.ph554.preheader, label %vector.body578, !llvm.loop !75

scalar.ph554.preheader:                           ; preds = %vector.body578, %vector.memcheck556, %vector.scevcheck519, %.lr.ph379
  %indvars.iv435.ph = phi i64 [ 0, %vector.memcheck556 ], [ 0, %vector.scevcheck519 ], [ 0, %.lr.ph379 ], [ %n.vec577, %vector.body578 ] ; 5 uses
  %indvars.iv433.ph = phi i64 [ %i.mr, %vector.memcheck556 ], [ %i.mr, %vector.scevcheck519 ], [ %i.mr, %.lr.ph379 ], [ %i.nn, %vector.body578 ] ; 4 uses
  %i.ny = sub nsw i64 %wide.trip.count440, %indvars.iv435.ph
  %xtraiter598 = and i64 %i.ny, 1
  %lcmp.mod599.not = icmp eq i64 %xtraiter598, 0
  br i1 %lcmp.mod599.not, label %scalar.ph554.prol.loopexit, label %scalar.ph554.prol

scalar.ph554.prol:                                ; preds = %scalar.ph554.preheader
  %i.nz = shl nuw nsw i64 %indvars.iv435.ph, 1    ; 2 uses
  %gep475.prol = getelementptr [4 x i8], ptr %invariant.gep474, i64 %i.nz
  %i.oa = load i32, ptr %gep475.prol, align 4, !tbaa !38
  %i.ob = getelementptr inbounds [4 x i8], ptr %i.mo, i64 %indvars.iv433.ph
  store i32 %i.oa, ptr %i.ob, align 4, !tbaa !38
  %i.oc = trunc nuw nsw i64 %i.nz to i32
  %i.od = add i32 %i.mp, %i.oc
  %i.oe = sext i32 %i.od to i64
  %i.of = getelementptr inbounds [4 x i8], ptr %.1252, i64 %i.oe
  %i.og = load i32, ptr %i.of, align 4, !tbaa !38
  %i.oh = getelementptr inbounds [4 x i8], ptr %i.mq, i64 %indvars.iv433.ph
  store i32 %i.og, ptr %i.oh, align 4, !tbaa !38
  %indvars.iv.next436.prol = add nuw nsw i64 %indvars.iv435.ph, 1
  %indvars.iv.next434.prol = add nsw i64 %indvars.iv433.ph, 1 ; 2 uses
  br label %scalar.ph554.prol.loopexit

scalar.ph554.prol.loopexit:                       ; preds = %scalar.ph554.prol, %scalar.ph554.preheader
  %indvars.iv.next434.lcssa.unr = phi i64 [ poison, %scalar.ph554.preheader ], [ %indvars.iv.next434.prol, %scalar.ph554.prol ]
  %indvars.iv435.unr = phi i64 [ %indvars.iv435.ph, %scalar.ph554.preheader ], [ %indvars.iv.next436.prol, %scalar.ph554.prol ]
  %indvars.iv433.unr = phi i64 [ %indvars.iv433.ph, %scalar.ph554.preheader ], [ %indvars.iv.next434.prol, %scalar.ph554.prol ]
  %i.oi = add nsw i64 %wide.trip.count440, -1
  %i.oj = icmp eq i64 %indvars.iv435.ph, %i.oi
  br i1 %i.oj, label %.loopexit.loopexit, label %scalar.ph554

scalar.ph554:                                     ; preds = %scalar.ph554.prol.loopexit, %scalar.ph554
  %indvars.iv435 = phi i64 [ %indvars.iv.next436.1, %scalar.ph554 ], [ %indvars.iv435.unr, %scalar.ph554.prol.loopexit ] ; 3 uses
  %indvars.iv433 = phi i64 [ %indvars.iv.next434.1, %scalar.ph554 ], [ %indvars.iv433.unr, %scalar.ph554.prol.loopexit ] ; 4 uses
  %i.ok = shl nuw nsw i64 %indvars.iv435, 1       ; 2 uses
  %gep475 = getelementptr [4 x i8], ptr %invariant.gep474, i64 %i.ok
  %i.ol = load i32, ptr %gep475, align 4, !tbaa !38
  %i.om = getelementptr inbounds [4 x i8], ptr %i.mo, i64 %indvars.iv433
  store i32 %i.ol, ptr %i.om, align 4, !tbaa !38
  %i.on = trunc nuw nsw i64 %i.ok to i32
  %i.oo = add i32 %i.mp, %i.on
  %i.op = sext i32 %i.oo to i64
  %i.oq = getelementptr inbounds [4 x i8], ptr %.1252, i64 %i.op
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !38
  %i.os = getelementptr inbounds [4 x i8], ptr %i.mq, i64 %indvars.iv433
  store i32 %i.or, ptr %i.os, align 4, !tbaa !38
  %indvars.iv.next434 = add nsw i64 %indvars.iv433, 1 ; 2 uses
  %indvars.iv.next436 = shl i64 %indvars.iv435, 1
  %i.ot = add i64 %indvars.iv.next436, 2          ; 2 uses
  %gep475.1 = getelementptr [4 x i8], ptr %invariant.gep474, i64 %i.ot
  %i.ou = load i32, ptr %gep475.1, align 4, !tbaa !38
  %i.ov = getelementptr inbounds [4 x i8], ptr %i.mo, i64 %indvars.iv.next434
  store i32 %i.ou, ptr %i.ov, align 4, !tbaa !38
  %i.ow = trunc nuw nsw i64 %i.ot to i32
  %i.ox = add i32 %i.mp, %i.ow
  %i.oy = sext i32 %i.ox to i64
  %i.oz = getelementptr inbounds [4 x i8], ptr %.1252, i64 %i.oy
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !38
  %i.pb = getelementptr inbounds [4 x i8], ptr %i.mq, i64 %indvars.iv.next434
  store i32 %i.pa, ptr %i.pb, align 4, !tbaa !38
  %indvars.iv.next436.1 = add nuw nsw i64 %indvars.iv435, 2 ; 2 uses
  %indvars.iv.next434.1 = add nsw i64 %indvars.iv433, 2 ; 2 uses
  %exitcond441.not.1 = icmp eq i64 %indvars.iv.next436.1, %wide.trip.count440
  br i1 %exitcond441.not.1, label %.loopexit.loopexit, label %scalar.ph554, !llvm.loop !76

.loopexit.loopexit:                               ; preds = %scalar.ph554, %scalar.ph554.prol.loopexit
  %indvars.iv.next434.lcssa = phi i64 [ %indvars.iv.next434.lcssa.unr, %scalar.ph554.prol.loopexit ], [ %indvars.iv.next434.1, %scalar.ph554 ]
  %i.pc = trunc nsw i64 %indvars.iv.next434.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ad, %.loopexit.loopexit, %.preheader
  %.5 = phi i32 [ %.3259382, %.preheader ], [ %i.pc, %.loopexit.loopexit ], [ %.3259382, %bb.ad ]
  %i.pd = sub i32 %.1264381, %i.ml                ; 2 uses
  %i.pe = icmp sgt i32 %i.pd, 0
  br i1 %i.pe, label %bb.ad, label %._crit_edge385, !llvm.loop !77

._crit_edge385:                                   ; preds = %.loopexit, %bb.ac
  br i1 %i.fu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %._crit_edge385
  call void @free(ptr noundef %.1252) #10
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge385
  %i.pf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 48), align 8, !tbaa !125
  %i.pg = call i32 %i.pf(i64 noundef %.0260.lcssa, ptr noundef %i.gq, ptr noundef null) #10
  store ptr %i.fg, ptr %7, align 8, !tbaa !127
  br label %opal_obj_new.exit

opal_obj_new.exit:                                ; preds = %bb.ab, %bb.w, %bb.af
  %.0269 = phi i32 [ %i.pg, %bb.af ], [ -2, %bb.ab ], [ -2, %bb.w ] ; 2 uses
  %.0249 = phi ptr [ null, %bb.af ], [ %i.fg, %bb.ab ], [ %i.fg, %bb.w ] ; 2 uses
  %.not302 = icmp eq ptr %i.gq, null
  br i1 %.not302, label %opal_obj_new.exit.thread309.thread.thread328, label %bb.ag

bb.ag:                                            ; preds = %opal_obj_new.exit
  call void @free(ptr noundef nonnull %i.gq) #10
  br label %opal_obj_new.exit.thread309.thread.thread328

opal_obj_new.exit.thread309.thread.thread328:     ; preds = %bb.g, %bb.o, %bb.m, %bb.k, %bb.i, %bb.ag, %opal_obj_new.exit
  %.0249317 = phi ptr [ %.0249, %opal_obj_new.exit ], [ %.0249, %bb.ag ], [ null, %bb.g ], [ %i.fg, %bb.o ], [ %i.fg, %bb.m ], [ %i.fg, %bb.k ], [ %i.fg, %bb.i ] ; 6 uses
  %.0269315 = phi i32 [ %.0269, %opal_obj_new.exit ], [ %.0269, %bb.ag ], [ -2, %bb.g ], [ -2, %bb.o ], [ -2, %bb.m ], [ -2, %bb.k ], [ -2, %bb.i ] ; 4 uses
  call void @free(ptr noundef nonnull %i.cg) #10
  call void @free(ptr noundef nonnull %i.f) #10
  %.not305 = icmp eq ptr %.0249317, null
  br i1 %.not305, label %.thread333, label %bb.ah

bb.ah:                                            ; preds = %opal_obj_new.exit.thread309.thread.thread328
  %i.ph = getelementptr inbounds nuw i8, ptr %.0249317, i64 8 ; 4 uses
  %i.pi = load i8, ptr @opal_uses_threads, align 1, !tbaa !48, !range !49, !noundef !50
  %i.pj = trunc nuw i8 %i.pi to i1
  br i1 %i.pj, label %bb.ai, label %bb.aj, !prof !51

bb.ai:                                            ; preds = %bb.ah
  %i.pk = atomicrmw volatile add ptr %i.ph, i32 -1 monotonic, align 4
  %i.pl = add i32 %i.pk, -1
  br label %opal_thread_add_fetch_32.exit

bb.aj:                                            ; preds = %bb.ah
  %i.pm = load volatile i32, ptr %i.ph, align 4, !tbaa !38
  %i.pn = add nsw i32 %i.pm, -1
  store volatile i32 %i.pn, ptr %i.ph, align 4, !tbaa !38
  %i.po = load volatile i32, ptr %i.ph, align 4, !tbaa !38
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.ai, %bb.aj
  %.0.i = phi i32 [ %i.pl, %bb.ai ], [ %i.po, %bb.aj ]
  %i.pp = icmp eq i32 %.0.i, 0
  br i1 %i.pp, label %bb.ak, label %.thread333

bb.ak:                                            ; preds = %opal_thread_add_fetch_32.exit
  %i.pq = load ptr, ptr %.0249317, align 8, !tbaa !41
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 48
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !52 ; 2 uses
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !42 ; 2 uses
  %.not6.i = icmp eq ptr %i.pt, null
  br i1 %.not6.i, label %.thread333.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ak, %.lr.ph.i
  %i.pu = phi ptr [ %i.pw, %.lr.ph.i ], [ %i.pt, %bb.ak ]
  %.07.i = phi ptr [ %i.pv, %.lr.ph.i ], [ %i.ps, %bb.ak ]
  call void %i.pu(ptr noundef nonnull %.0249317) #10, !inline_history !0
  %i.pv = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !42 ; 2 uses
  %.not.i306 = icmp eq ptr %i.pw, null
  br i1 %.not.i306, label %.thread333.sink.split, label %.lr.ph.i, !llvm.loop !1

.thread333.sink.split:                            ; preds = %.lr.ph.i, %bb.ak, %._crit_edge352
  %.sink = phi ptr [ %i.f, %._crit_edge352 ], [ %.0249317, %bb.ak ], [ %.0249317, %.lr.ph.i ]
  %.0269315323326337.ph = phi i32 [ -2, %._crit_edge352 ], [ %.0269315, %bb.ak ], [ %.0269315, %.lr.ph.i ]
  call void @free(ptr noundef nonnull %.sink) #10
  br label %.thread333

.thread333:                                       ; preds = %.thread333.sink.split, %bb.a, %opal_thread_add_fetch_32.exit, %opal_obj_new.exit.thread309.thread.thread328
  %.0269315323326337 = phi i32 [ %.0269315, %opal_obj_new.exit.thread309.thread.thread328 ], [ %.0269315, %opal_thread_add_fetch_32.exit ], [ -2, %bb.a ], [ %.0269315323326337.ph, %.thread333.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  ret i32 %.0269315323326337
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

end_hunk_0
begin_hunk_1_@mca_topo_base_dist_graph_create:bb.a
  br i1 %.not.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !1

opal_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.e
  tail call void @free(ptr noundef nonnull %0) #10
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %9, align 8, !tbaa !128    ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 296
  store ptr %0, ptr %i.s, align 8, !tbaa !129
  %i.t = icmp ne i32 %8, 0
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.v = zext i1 %i.t to i8
  store i8 %i.v, ptr %i.u, align 4, !tbaa !132
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 224 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !133
  %i.y = or i32 %i.x, 1024
  store i32 %i.y, ptr %i.w, align 8, !tbaa !133
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aa = tail call i32 @mca_topo_base_dist_graph_distribute(ptr poison, ptr noundef %i.r, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %i.z) ; 2 uses
  %.not24 = icmp eq i32 %i.aa, 0
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call i32 @ompi_comm_free(ptr noundef nonnull %9) #10 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %opal_thread_add_fetch_32.exit, %opal_obj_run_destructors.exit
  %.0 = phi i32 [ %i.a, %opal_thread_add_fetch_32.exit ], [ %i.a, %opal_obj_run_destructors.exit ], [ %i.aa, %bb.g ], [ 0, %bb.f ]
  ret i32 %.0
}

declare i32 @ompi_comm_dup_with_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @ompi_comm_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @mca_topo_base_comm_dist_graph_2_2_0_construct(ptr nofree noundef writeonly captures(none) initializes((16, 57)) %0) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.a, i8 0, i64 41, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal void @mca_topo_base_comm_dist_graph_2_2_0_destruct(ptr nofree noundef readonly captures(none) %0) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  tail call void @free(ptr noundef %i.b) #10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45
  tail call void @free(ptr noundef %i.d) #10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46
  tail call void @free(ptr noundef %i.f) #10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47
  tail call void @free(ptr noundef %i.h) #10
  ret void
}

declare void @opal_class_initialize(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { nounwind allocsize(0) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = distinct !{!1, !39}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS12opal_class_t", !10, i64 0}
!12 = !{!"opal_object_t", !11, i64 0, !7, i64 8}
!13 = !{!"long", !6, i64 0}
!14 = !{!"p1 _ZTS19opal_hash_element_t", !10, i64 0}
!15 = !{!"p1 _ZTS24opal_hash_type_methods_t", !10, i64 0}
!16 = !{!"opal_hash_table_t", !12, i64 0, !14, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !15, i64 64}
!17 = !{!"p1 _ZTS11opal_info_t", !10, i64 0}
!18 = !{!"opal_infosubscriber_t", !12, i64 0, !16, i64 16, !17, i64 88}
!19 = !{!"opal_mutex_t", !12, i64 0, !6, i64 16, !7, i64 56}
!20 = !{!"p1 omnipotent char", !10, i64 0}
!21 = !{!"ompi_comm_extended_cid_t", !13, i64 0, !6, i64 8}
!22 = !{!"ompi_comm_extended_cid_block_t", !21, i64 0, !13, i64 16, !6, i64 24, !6, i64 25}
!23 = !{!"p1 int", !10, i64 0}
!24 = !{!"p1 _ZTS12ompi_group_t", !10, i64 0}
!25 = !{!"p1 _ZTS19ompi_communicator_t", !10, i64 0}
!26 = !{!"p1 _ZTS17opal_hash_table_t", !10, i64 0}
!27 = !{!"p1 _ZTS22mca_topo_base_module_t", !10, i64 0}
!28 = !{!"any p2 pointer", !10, i64 0}
!29 = !{!"p2 _ZTS20ompi_peruse_handle_t", !28, i64 0}
!30 = !{!"p1 _ZTS17ompi_errhandler_t", !10, i64 0}
!31 = !{!"p1 _ZTS14mca_pml_comm_t", !10, i64 0}
!32 = !{!"p1 _ZTS14mca_mtl_comm_t", !10, i64 0}
!33 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !10, i64 0}
!34 = !{!"p1 _ZTS15ompi_instance_t", !10, i64 0}
!35 = !{!"p1 _ZTS13opal_object_t", !10, i64 0}
!36 = !{!"_Bool", !6, i64 0}
!37 = !{!"ompi_communicator_t", !18, i64 0, !19, i64 96, !20, i64 160, !21, i64 168, !22, i64 184, !7, i64 216, !7, i64 220, !7, i64 224, !7, i64 228, !7, i64 232, !23, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !24, i64 264, !24, i64 272, !25, i64 280, !26, i64 288, !27, i64 296, !29, i64 304, !30, i64 312, !7, i64 320, !31, i64 328, !32, i64 336, !33, i64 344, !34, i64 352, !35, i64 360, !7, i64 368, !7, i64 372, !36, i64 376, !36, i64 377, !36, i64 378}
!38 = !{!7, !7, i64 0}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"opal_class_t", !20, i64 0, !11, i64 8, !10, i64 16, !10, i64 24, !7, i64 32, !7, i64 36, !28, i64 40, !28, i64 48, !13, i64 56}
!41 = !{!12, !11, i64 0}
!42 = !{!10, !10, i64 0}
!43 = !{!"mca_topo_base_comm_dist_graph_2_2_0_t", !12, i64 0, !23, i64 16, !23, i64 24, !23, i64 32, !23, i64 40, !7, i64 48, !7, i64 52, !36, i64 56}
!44 = !{!43, !23, i64 16}
!45 = !{!43, !23, i64 24}
!46 = !{!43, !23, i64 32}
!47 = !{!43, !23, i64 40}
!48 = !{!36, !36, i64 0}
!49 = !{i8 0, i8 2}
!50 = !{}
!51 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!52 = !{!40, !28, i64 48}
!53 = distinct !{!53, !39}
!54 = distinct !{!54, !39}
!55 = distinct !{!55, !39}
!56 = distinct !{!56, !91}
!57 = distinct !{!57, !39}
!58 = distinct !{!58, !39}
!59 = distinct !{null, null}
!60 = distinct !{!60, !39}
!61 = distinct !{!61, !39}
!62 = distinct !{!62, i1 false, !"LVerDomain"}
!63 = distinct !{!63, !62}
!64 = distinct !{!64, !62}
!65 = distinct !{!65, !62}
!66 = distinct !{!66, !62}
!67 = distinct !{!67, !39, !116, !117}
!68 = distinct !{!68, !39, !116}
!69 = distinct !{!69, !39}
!70 = distinct !{!70, i1 false, !"LVerDomain"}
!71 = distinct !{!71, !70}
!72 = distinct !{!72, !70}
!73 = distinct !{!73, !70}
!74 = distinct !{!74, !70}
!75 = distinct !{!75, !39, !116, !117}
!76 = distinct !{!76, !39, !116}
!77 = distinct !{!77, !39}
!78 = !{!"short", !6, i64 0}
!79 = !{!"p1 _ZTS12dt_elem_desc", !10, i64 0}
!80 = !{!"dt_type_desc_t", !13, i64 0, !13, i64 8, !79, i64 16}
!81 = !{!"p1 long", !10, i64 0}
!82 = !{!"opal_datatype_t", !12, i64 0, !78, i64 16, !78, i64 18, !7, i64 20, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !7, i64 72, !7, i64 76, !6, i64 80, !80, i64 144, !80, i64 168, !81, i64 192}
!83 = !{!82, !13, i64 24}
!84 = !{!37, !24, i64 264}
!85 = !{!"p2 _ZTS11ompi_proc_t", !28, i64 0}
!86 = !{!"ompi_group_t", !12, i64 0, !7, i64 16, !7, i64 20, !7, i64 24, !85, i64 32, !7, i64 40, !24, i64 48, !6, i64 56, !34, i64 72}
!87 = !{!86, !7, i64 16}
!88 = !{!"_dist_graph_elem", !7, i64 0, !7, i64 4}
!89 = !{!88, !7, i64 4}
!90 = !{!88, !7, i64 0}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = !{!37, !33, i64 344}
!93 = !{!"p1 _ZTS28mca_coll_base_module_2_4_0_t", !10, i64 0}
!94 = !{!"p1 _ZTS11opal_list_t", !10, i64 0}
!95 = !{!"mca_coll_base_comm_coll_t", !10, i64 0, !93, i64 8, !10, i64 16, !93, i64 24, !10, i64 32, !93, i64 40, !10, i64 48, !93, i64 56, !10, i64 64, !93, i64 72, !10, i64 80, !93, i64 88, !10, i64 96, !93, i64 104, !10, i64 112, !93, i64 120, !10, i64 128, !93, i64 136, !10, i64 144, !93, i64 152, !10, i64 160, !93, i64 168, !10, i64 176, !93, i64 184, !10, i64 192, !93, i64 200, !10, i64 208, !93, i64 216, !10, i64 224, !93, i64 232, !10, i64 240, !93, i64 248, !10, i64 256, !93, i64 264, !10, i64 272, !93, i64 280, !10, i64 288, !93, i64 296, !10, i64 304, !93, i64 312, !10, i64 320, !93, i64 328, !10, i64 336, !93, i64 344, !10, i64 352, !93, i64 360, !10, i64 368, !93, i64 376, !10, i64 384, !93, i64 392, !10, i64 400, !93, i64 408, !10, i64 416, !93, i64 424, !10, i64 432, !93, i64 440, !10, i64 448, !93, i64 456, !10, i64 464, !93, i64 472, !10, i64 480, !93, i64 488, !10, i64 496, !93, i64 504, !10, i64 512, !93, i64 520, !10, i64 528, !93, i64 536, !10, i64 544, !93, i64 552, !10, i64 560, !93, i64 568, !10, i64 576, !93, i64 584, !10, i64 592, !93, i64 600, !10, i64 608, !93, i64 616, !10, i64 624, !93, i64 632, !10, i64 640, !93, i64 648, !10, i64 656, !93, i64 664, !10, i64 672, !93, i64 680, !10, i64 688, !93, i64 696, !10, i64 704, !93, i64 712, !10, i64 720, !93, i64 728, !10, i64 736, !93, i64 744, !10, i64 752, !93, i64 760, !10, i64 768, !93, i64 776, !10, i64 784, !93, i64 792, !10, i64 800, !93, i64 808, !10, i64 816, !93, i64 824, !10, i64 832, !93, i64 840, !10, i64 848, !93, i64 856, !10, i64 864, !93, i64 872, !10, i64 880, !93, i64 888, !10, i64 896, !93, i64 904, !10, i64 912, !93, i64 920, !10, i64 928, !93, i64 936, !10, i64 944, !93, i64 952, !10, i64 960, !93, i64 968, !10, i64 976, !93, i64 984, !10, i64 992, !93, i64 1000, !10, i64 1008, !93, i64 1016, !10, i64 1024, !93, i64 1032, !10, i64 1040, !93, i64 1048, !10, i64 1056, !93, i64 1064, !10, i64 1072, !93, i64 1080, !10, i64 1088, !93, i64 1096, !10, i64 1104, !94, i64 1112}
!96 = !{!95, !10, i64 208}
!97 = !{!95, !93, i64 216}
!98 = !{!40, !13, i64 56}
!99 = !{!40, !7, i64 32}
!100 = !{!12, !7, i64 8}
!101 = !{!40, !28, i64 40}
!102 = !{!43, !7, i64 48}
!103 = !{!43, !7, i64 52}
!104 = !{!43, !36, i64 56}
!105 = !{!"mca_pml_base_module_2_1_0_t", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !7, i64 168, !7, i64 172, !7, i64 176, !10, i64 184}
!106 = !{!105, !10, i64 88}
!107 = !{!105, !10, i64 72}
!108 = !{!"ompi_status_public_t", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !13, i64 16}
!109 = !{!108, !13, i64 16}
!110 = !{!63}
!111 = !{!64}
!112 = !{!66, !65, !63}
!113 = !{!65}
!114 = !{!66}
!115 = !{!65, !63}
!116 = !{!"llvm.loop.isvectorized", i32 1}
!117 = !{!"llvm.loop.unroll.runtime.disable"}
!118 = !{!71}
!119 = !{!72}
!120 = !{!74, !73, !71}
!121 = !{!73}
!122 = !{!74}
!123 = !{!73, !71}
!124 = !{!"ompi_request_fns_t", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56}
!125 = !{!124, !10, i64 48}
!126 = !{!"p1 _ZTS37mca_topo_base_comm_dist_graph_2_2_0_t", !10, i64 0}
!127 = !{!126, !126, i64 0}
!128 = !{!25, !25, i64 0}
!129 = !{!37, !27, i64 296}
!130 = !{!"p1 _ZTS31mca_topo_base_component_2_2_0_t", !10, i64 0}
!131 = !{!"mca_topo_base_module_t", !12, i64 0, !7, i64 16, !36, i64 20, !130, i64 24, !6, i64 32, !6, i64 96}
!132 = !{!131, !36, i64 20}
!133 = !{!37, !7, i64 224}
end_hunk_1
