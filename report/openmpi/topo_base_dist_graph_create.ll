Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/topo_base_dist_graph_create?download=true
inline.NumInlined: 10
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@mca_topo_base_dist_graph_distribute:bb.a
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
  %invariant.op = add nsw i64 %i.ii, -4
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph375, %.loopexit339
  %.0256373 = phi i32 [ 0, %.lr.ph375 ], [ %.2258, %.loopexit339 ] ; 3 uses
  %.0263372 = phi i32 [ %.2267, %.lr.ph375 ], [ %i.lp, %.loopexit339 ] ; 4 uses
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
  %i.jl = sext i32 %i.iv to i64
  %i.jm = shl nsw i64 %i.jl, 2                    ; 2 uses
  %i.jn = getelementptr i8, ptr %.0251, i64 %i.jm ; 2 uses
  %i.jo = shl nuw nsw i64 %wide.trip.count431, 3  ; 2 uses
  %i.jp = getelementptr i8, ptr %.0251, i64 %i.jo
  %i.jq = getelementptr i8, ptr %i.jp, i64 %i.jm
  %i.jr = getelementptr i8, ptr %i.jq, i64 -4     ; 2 uses
  %i.js = zext nneg i32 %.0263372 to i64
  %i.jt = shl nuw nsw i64 %i.js, 2
  %.reass = add nsw i64 %i.jo, %invariant.op
  %i.ju = sub nsw i64 %.reass, %i.jt
  %i.jv = getelementptr i8, ptr %.0251, i64 %i.ju ; 2 uses
  %bound0 = icmp ult ptr %i.jf, %i.jk
  %bound1 = icmp ult ptr %i.jj, %i.ji
  %found.conflict = and i1 %bound0, %bound1
  %bound0500 = icmp ult ptr %i.jf, %i.jr
  %bound1501 = icmp ult ptr %i.jn, %i.ji
  %found.conflict502 = and i1 %bound0500, %bound1501
  %conflict.rdx = or i1 %found.conflict, %found.conflict502
  %bound0503 = icmp ult ptr %i.jf, %i.jv
  %bound1504 = icmp ult ptr %invariant.gep, %i.ji
  %found.conflict505 = and i1 %bound0503, %bound1504
  %conflict.rdx506 = or i1 %conflict.rdx, %found.conflict505
  %bound0507 = icmp ult ptr %i.jj, %i.jr
  %bound1508 = icmp ult ptr %i.jn, %i.jk
  %found.conflict509 = and i1 %bound0507, %bound1508
  %conflict.rdx510 = or i1 %conflict.rdx506, %found.conflict509
  %bound0511 = icmp ult ptr %i.jj, %i.jv
  %bound1512 = icmp ult ptr %invariant.gep, %i.jk
  %found.conflict513 = and i1 %bound0511, %bound1512
  %conflict.rdx514 = or i1 %conflict.rdx510, %found.conflict513
  br i1 %conflict.rdx514, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.jw = and i64 %wide.trip.count431, 3          ; 2 uses
  %i.jx = icmp eq i64 %i.jw, 0
  %i.jy = select i1 %i.jx, i64 4, i64 %i.jw
  %n.vec = sub nsw i64 %wide.trip.count431, %i.jy ; 3 uses
  %i.jz = add nsw i64 %n.vec, %i.ix
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ka = add i64 %index, %i.ix                   ; 2 uses
  %i.kb = shl nuw nsw i64 %index, 1               ; 2 uses
  %i.kc = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.kb
  %wide.vec = load <8 x i32>, ptr %i.kc, align 4, !tbaa !38, !alias.scope !110
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %i.ka
  store <4 x i32> %strided.vec, ptr %i.kd, align 4, !tbaa !38, !alias.scope !111, !noalias !112
  %i.ke = trunc nuw nsw i64 %i.kb to i32
  %i.kf = add i32 %i.iv, %i.ke
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds [4 x i8], ptr %.0251, i64 %i.kg
  %wide.vec515 = load <8 x i32>, ptr %i.kh, align 4, !tbaa !38, !alias.scope !113
  %strided.vec516 = shufflevector <8 x i32> %wide.vec515, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ki = getelementptr inbounds [4 x i8], ptr %i.iw, i64 %i.ka
  store <4 x i32> %strided.vec516, ptr %i.ki, align 4, !tbaa !38, !alias.scope !114, !noalias !115
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kj = icmp eq i64 %index.next, %n.vec
  br i1 %i.kj, label %scalar.ph.preheader, label %vector.body, !llvm.loop !67

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.lr.ph370
  %indvars.iv426.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph370 ], [ %n.vec, %vector.body ] ; 5 uses
  %indvars.iv424.ph = phi i64 [ %i.ix, %vector.memcheck ], [ %i.ix, %vector.scevcheck ], [ %i.ix, %.lr.ph370 ], [ %i.jz, %vector.body ] ; 4 uses
  %i.kk = sub nsw i64 %wide.trip.count431, %indvars.iv426.ph
  %xtraiter592 = and i64 %i.kk, 1
  %lcmp.mod593.not = icmp eq i64 %xtraiter592, 0
  br i1 %lcmp.mod593.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.kl = shl nuw nsw i64 %indvars.iv426.ph, 1    ; 2 uses
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.kl
  %i.km = load i32, ptr %gep.prol, align 4, !tbaa !38
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %indvars.iv424.ph
  store i32 %i.km, ptr %i.kn, align 4, !tbaa !38
  %i.ko = trunc nuw nsw i64 %i.kl to i32
  %i.kp = add i32 %i.iv, %i.ko
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds [4 x i8], ptr %.0251, i64 %i.kq
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !38
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.iw, i64 %indvars.iv424.ph
  store i32 %i.ks, ptr %i.kt, align 4, !tbaa !38
  %indvars.iv.next427.prol = add nuw nsw i64 %indvars.iv426.ph, 1
  %indvars.iv.next425.prol = add nsw i64 %indvars.iv424.ph, 1 ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next425.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next425.prol, %scalar.ph.prol ]
  %indvars.iv426.unr = phi i64 [ %indvars.iv426.ph, %scalar.ph.preheader ], [ %indvars.iv.next427.prol, %scalar.ph.prol ]
  %indvars.iv424.unr = phi i64 [ %indvars.iv424.ph, %scalar.ph.preheader ], [ %indvars.iv.next425.prol, %scalar.ph.prol ]
  %i.ku = add nsw i64 %wide.trip.count431, -1
  %i.kv = icmp eq i64 %indvars.iv426.ph, %i.ku
  br i1 %i.kv, label %.loopexit339.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv426 = phi i64 [ %indvars.iv.next427.1, %scalar.ph ], [ %indvars.iv426.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %indvars.iv424 = phi i64 [ %indvars.iv.next425.1, %scalar.ph ], [ %indvars.iv424.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.kw = shl nuw nsw i64 %indvars.iv426, 1       ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.kw
  %i.kx = load i32, ptr %gep, align 4, !tbaa !38
  %i.ky = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %indvars.iv424
  store i32 %i.kx, ptr %i.ky, align 4, !tbaa !38
  %i.kz = trunc nuw nsw i64 %i.kw to i32
  %i.la = add i32 %i.iv, %i.kz
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds [4 x i8], ptr %.0251, i64 %i.lb
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !38
  %i.le = getelementptr inbounds [4 x i8], ptr %i.iw, i64 %indvars.iv424
  store i32 %i.ld, ptr %i.le, align 4, !tbaa !38
  %indvars.iv.next425 = add nsw i64 %indvars.iv424, 1 ; 2 uses
  %indvars.iv.next427 = shl i64 %indvars.iv426, 1
  %i.lf = add i64 %indvars.iv.next427, 2          ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.lf
  %i.lg = load i32, ptr %gep.1, align 4, !tbaa !38
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %indvars.iv.next425
  store i32 %i.lg, ptr %i.lh, align 4, !tbaa !38
  %i.li = trunc nuw nsw i64 %i.lf to i32
  %i.lj = add i32 %i.iv, %i.li
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds [4 x i8], ptr %.0251, i64 %i.lk
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !38
  %i.ln = getelementptr inbounds [4 x i8], ptr %i.iw, i64 %indvars.iv.next425
  store i32 %i.lm, ptr %i.ln, align 4, !tbaa !38
  %indvars.iv.next427.1 = add nuw nsw i64 %indvars.iv426, 2 ; 2 uses
  %indvars.iv.next425.1 = add nsw i64 %indvars.iv424, 2 ; 2 uses
  %exitcond432.not.1 = icmp eq i64 %indvars.iv.next427.1, %wide.trip.count431
  br i1 %exitcond432.not.1, label %.loopexit339.loopexit, label %scalar.ph, !llvm.loop !68

.loopexit339.loopexit:                            ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  %indvars.iv.next425.lcssa = phi i64 [ %indvars.iv.next425.lcssa.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next425.1, %scalar.ph ]
  %i.lo = trunc nsw i64 %indvars.iv.next425.lcssa to i32
  br label %.loopexit339

.loopexit339:                                     ; preds = %bb.y, %.loopexit339.loopexit, %.preheader338
  %.2258 = phi i32 [ %.0256373, %.preheader338 ], [ %i.lo, %.loopexit339.loopexit ], [ %.0256373, %bb.y ]
  %i.lp = sub i32 %.0263372, %i.ir                ; 2 uses
  %i.lq = icmp sgt i32 %i.lp, 0
  br i1 %i.lq, label %bb.y, label %._crit_edge376, !llvm.loop !69

._crit_edge376:                                   ; preds = %.loopexit339, %bb.x
  br i1 %i.fu, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge376
  %i.lr = load i32, ptr %i.ft, align 4, !tbaa !103
  %i.ls = getelementptr inbounds nuw i8, ptr %i.fg, i64 32 ; 2 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !46
  br label %bb.ac

bb.aa:                                            ; preds = %._crit_edge376
  call void @free(ptr noundef %.0251) #10
  %i.lu = load i32, ptr %i.ft, align 4, !tbaa !103 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.fg, i64 32 ; 3 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !46
  %i.lx = shl nsw i32 %i.lu, 1                    ; 3 uses
  %i.ly = icmp sgt i32 %i.lu, 0
  br i1 %i.ly, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.lz = zext nneg i32 %i.lx to i64
  %i.ma = shl nuw nsw i64 %i.lz, 2
  %i.mb = call noalias ptr @malloc(i64 noundef %i.ma) #12 ; 2 uses
  %i.mc = icmp eq ptr %i.mb, null
  br i1 %i.mc, label %opal_obj_new.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.aa, %bb.ab
  %i.md = phi ptr [ %i.lv, %bb.ab ], [ %i.lv, %bb.aa ], [ %i.ls, %bb.z ]
  %.3268 = phi i32 [ %i.lx, %bb.ab ], [ %i.lx, %bb.aa ], [ %i.lr, %bb.z ] ; 4 uses
  %.1252 = phi ptr [ %i.mb, %bb.ab ], [ %i.lw, %bb.aa ], [ %i.lt, %bb.z ] ; 10 uses
  %i.me = icmp sgt i32 %.3268, 0
  br i1 %i.me, label %.lr.ph384, label %._crit_edge385

.lr.ph384:                                        ; preds = %bb.ac
  %i.mf = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.mg = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  %i.mh = zext nneg i32 %.3268 to i64
  %i.mi = shl nuw nsw i64 %i.mh, 2
  %invariant.op596 = add nsw i64 %i.mi, -4
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph384, %.loopexit
  %.3259382 = phi i32 [ 0, %.lr.ph384 ], [ %.5, %.loopexit ] ; 3 uses
  %.1264381 = phi i32 [ %.3268, %.lr.ph384 ], [ %i.pp, %.loopexit ] ; 4 uses
  %i.mj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 72), align 8, !tbaa !107
  %i.mk = sub nsw i32 %.3268, %.1264381           ; 3 uses
  %i.ml = sext i32 %i.mk to i64                   ; 2 uses
  %i.mm = getelementptr inbounds [4 x i8], ptr %.1252, i64 %i.ml
  %i.mn = zext nneg i32 %.1264381 to i64
  %i.mo = call i32 %i.mj(ptr noundef %i.mm, i64 noundef %i.mn, ptr noundef nonnull @ompi_mpi_int, i32 noundef -1, i32 noundef -51, ptr noundef %1, ptr noundef nonnull %8) #10 ; 0 uses
  %i.mp = load i64, ptr %i.mf, align 8, !tbaa !109
  %i.mq = udiv i64 %i.mp, %i.a
  %i.mr = trunc i64 %i.mq to i32                  ; 2 uses
  br i1 %i.fu, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.ad
  %i.ms = ashr i32 %i.mr, 1                       ; 3 uses
  %i.mt = icmp sgt i32 %i.ms, 0
  br i1 %i.mt, label %.lr.ph379, label %.loopexit

.lr.ph379:                                        ; preds = %.preheader
  %i.mu = load ptr, ptr %i.md, align 8, !tbaa !46 ; 6 uses
  %i.mv = add nsw i32 %i.mk, 1                    ; 6 uses
  %i.mw = load ptr, ptr %i.mg, align 8, !tbaa !47 ; 6 uses
  %i.mx = sext i32 %.3259382 to i64               ; 7 uses
  %wide.trip.count440 = zext nneg i32 %i.ms to i64 ; 8 uses
  %invariant.gep474 = getelementptr [4 x i8], ptr %.1252, i64 %i.ml ; 6 uses
  %min.iters.check551 = icmp ult i32 %i.ms, 29
  br i1 %min.iters.check551, label %scalar.ph550.preheader, label %vector.scevcheck518

vector.scevcheck518:                              ; preds = %.lr.ph379
  %i.my = add nsw i64 %wide.trip.count440, -1     ; 2 uses
  %i.mz = trunc nsw i64 %i.my to i32
  %mul.result520 = shl i32 %i.mz, 1
  %i.na = add i32 %i.mv, %mul.result520
  %i.nb = icmp sle i32 %i.na, %i.mk
  %i.nc = icmp ugt i64 %i.my, 4294967295
  %i.nd = or i1 %i.nb, %i.nc
  br i1 %i.nd, label %scalar.ph550.preheader, label %vector.memcheck552

vector.memcheck552:                               ; preds = %vector.scevcheck518
  %i.ne = shl nsw i64 %i.mx, 2                    ; 2 uses
  %i.nf = getelementptr i8, ptr %i.mu, i64 %i.ne  ; 3 uses
  %i.ng = add nsw i64 %i.mx, %wide.trip.count440
  %i.nh = shl nsw i64 %i.ng, 2                    ; 2 uses
  %i.ni = getelementptr i8, ptr %i.mu, i64 %i.nh  ; 3 uses
  %i.nj = getelementptr i8, ptr %i.mw, i64 %i.ne  ; 3 uses
  %i.nk = getelementptr i8, ptr %i.mw, i64 %i.nh  ; 3 uses
  %i.nl = sext i32 %i.mv to i64
  %i.nm = shl nsw i64 %i.nl, 2                    ; 2 uses
  %i.nn = getelementptr i8, ptr %.1252, i64 %i.nm ; 2 uses
  %i.no = shl nuw nsw i64 %wide.trip.count440, 3  ; 2 uses
  %i.np = getelementptr i8, ptr %.1252, i64 %i.no
  %i.nq = getelementptr i8, ptr %i.np, i64 %i.nm
  %i.nr = getelementptr i8, ptr %i.nq, i64 -4     ; 2 uses
  %i.ns = zext nneg i32 %.1264381 to i64
  %i.nt = shl nuw nsw i64 %i.ns, 2
  %.reass597 = add nsw i64 %i.no, %invariant.op596
  %i.nu = sub nsw i64 %.reass597, %i.nt
  %i.nv = getelementptr i8, ptr %.1252, i64 %i.nu ; 2 uses
  %bound0553 = icmp ult ptr %i.nf, %i.nk
  %bound1554 = icmp ult ptr %i.nj, %i.ni
  %found.conflict555 = and i1 %bound0553, %bound1554
  %bound0556 = icmp ult ptr %i.nf, %i.nr
  %bound1557 = icmp ult ptr %i.nn, %i.ni
  %found.conflict558 = and i1 %bound0556, %bound1557
  %conflict.rdx559 = or i1 %found.conflict555, %found.conflict558
  %bound0560 = icmp ult ptr %i.nf, %i.nv
  %bound1561 = icmp ult ptr %invariant.gep474, %i.ni
  %found.conflict562 = and i1 %bound0560, %bound1561
  %conflict.rdx563 = or i1 %conflict.rdx559, %found.conflict562
  %bound0564 = icmp ult ptr %i.nj, %i.nr
  %bound1565 = icmp ult ptr %i.nn, %i.nk
  %found.conflict566 = and i1 %bound0564, %bound1565
  %conflict.rdx567 = or i1 %conflict.rdx563, %found.conflict566
  %bound0568 = icmp ult ptr %i.nj, %i.nv
  %bound1569 = icmp ult ptr %invariant.gep474, %i.nk
  %found.conflict570 = and i1 %bound0568, %bound1569
  %conflict.rdx571 = or i1 %conflict.rdx567, %found.conflict570
  br i1 %conflict.rdx571, label %scalar.ph550.preheader, label %vector.ph572

vector.ph572:                                     ; preds = %vector.memcheck552
  %i.nw = and i64 %wide.trip.count440, 3          ; 2 uses
  %i.nx = icmp eq i64 %i.nw, 0
  %i.ny = select i1 %i.nx, i64 4, i64 %i.nw
  %n.vec573 = sub nsw i64 %wide.trip.count440, %i.ny ; 3 uses
  %i.nz = add nsw i64 %n.vec573, %i.mx
  br label %vector.body574

vector.body574:                                   ; preds = %vector.body574, %vector.ph572
  %index575 = phi i64 [ 0, %vector.ph572 ], [ %index.next580, %vector.body574 ] ; 3 uses
  %i.oa = add i64 %index575, %i.mx                ; 2 uses
  %i.ob = shl nuw nsw i64 %index575, 1            ; 2 uses
  %i.oc = getelementptr [4 x i8], ptr %invariant.gep474, i64 %i.ob
  %wide.vec576 = load <8 x i32>, ptr %i.oc, align 4, !tbaa !38, !alias.scope !118
  %strided.vec577 = shufflevector <8 x i32> %wide.vec576, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.od = getelementptr inbounds [4 x i8], ptr %i.mu, i64 %i.oa
  store <4 x i32> %strided.vec577, ptr %i.od, align 4, !tbaa !38, !alias.scope !119, !noalias !120
  %i.oe = trunc nuw nsw i64 %i.ob to i32
  %i.of = add i32 %i.mv, %i.oe
  %i.og = sext i32 %i.of to i64
  %i.oh = getelementptr inbounds [4 x i8], ptr %.1252, i64 %i.og
  %wide.vec578 = load <8 x i32>, ptr %i.oh, align 4, !tbaa !38, !alias.scope !121
  %strided.vec579 = shufflevector <8 x i32> %wide.vec578, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oi = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %i.oa
  store <4 x i32> %strided.vec579, ptr %i.oi, align 4, !tbaa !38, !alias.scope !122, !noalias !123
  %index.next580 = add nuw i64 %index575, 4       ; 2 uses
  %i.oj = icmp eq i64 %index.next580, %n.vec573
  br i1 %i.oj, label %scalar.ph550.preheader, label %vector.body574, !llvm.loop !75

scalar.ph550.preheader:                           ; preds = %vector.body574, %vector.memcheck552, %vector.scevcheck518, %.lr.ph379
  %indvars.iv435.ph = phi i64 [ 0, %vector.memcheck552 ], [ 0, %vector.scevcheck518 ], [ 0, %.lr.ph379 ], [ %n.vec573, %vector.body574 ] ; 5 uses
  %indvars.iv433.ph = phi i64 [ %i.mx, %vector.memcheck552 ], [ %i.mx, %vector.scevcheck518 ], [ %i.mx, %.lr.ph379 ], [ %i.nz, %vector.body574 ] ; 4 uses
  %i.ok = sub nsw i64 %wide.trip.count440, %indvars.iv435.ph
  %xtraiter594 = and i64 %i.ok, 1
  %lcmp.mod595.not = icmp eq i64 %xtraiter594, 0
  br i1 %lcmp.mod595.not, label %scalar.ph550.prol.loopexit, label %scalar.ph550.prol

scalar.ph550.prol:                                ; preds = %scalar.ph550.preheader
  %i.ol = shl nuw nsw i64 %indvars.iv435.ph, 1    ; 2 uses
  %gep475.prol = getelementptr [4 x i8], ptr %invariant.gep474, i64 %i.ol
  %i.om = load i32, ptr %gep475.prol, align 4, !tbaa !38
  %i.on = getelementptr inbounds [4 x i8], ptr %i.mu, i64 %indvars.iv433.ph
  store i32 %i.om, ptr %i.on, align 4, !tbaa !38
  %i.oo = trunc nuw nsw i64 %i.ol to i32
  %i.op = add i32 %i.mv, %i.oo
  %i.oq = sext i32 %i.op to i64
  %i.or = getelementptr inbounds [4 x i8], ptr %.1252, i64 %i.oq
  %i.os = load i32, ptr %i.or, align 4, !tbaa !38
  %i.ot = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %indvars.iv433.ph
  store i32 %i.os, ptr %i.ot, align 4, !tbaa !38
  %indvars.iv.next436.prol = add nuw nsw i64 %indvars.iv435.ph, 1
  %indvars.iv.next434.prol = add nsw i64 %indvars.iv433.ph, 1 ; 2 uses
  br label %scalar.ph550.prol.loopexit

scalar.ph550.prol.loopexit:                       ; preds = %scalar.ph550.prol, %scalar.ph550.preheader
  %indvars.iv.next434.lcssa.unr = phi i64 [ poison, %scalar.ph550.preheader ], [ %indvars.iv.next434.prol, %scalar.ph550.prol ]
  %indvars.iv435.unr = phi i64 [ %indvars.iv435.ph, %scalar.ph550.preheader ], [ %indvars.iv.next436.prol, %scalar.ph550.prol ]
  %indvars.iv433.unr = phi i64 [ %indvars.iv433.ph, %scalar.ph550.preheader ], [ %indvars.iv.next434.prol, %scalar.ph550.prol ]
  %i.ou = add nsw i64 %wide.trip.count440, -1
  %i.ov = icmp eq i64 %indvars.iv435.ph, %i.ou
  br i1 %i.ov, label %.loopexit.loopexit, label %scalar.ph550

scalar.ph550:                                     ; preds = %scalar.ph550.prol.loopexit, %scalar.ph550
  %indvars.iv435 = phi i64 [ %indvars.iv.next436.1, %scalar.ph550 ], [ %indvars.iv435.unr, %scalar.ph550.prol.loopexit ] ; 3 uses
  %indvars.iv433 = phi i64 [ %indvars.iv.next434.1, %scalar.ph550 ], [ %indvars.iv433.unr, %scalar.ph550.prol.loopexit ] ; 4 uses
  %i.ow = shl nuw nsw i64 %indvars.iv435, 1       ; 2 uses
  %gep475 = getelementptr [4 x i8], ptr %invariant.gep474, i64 %i.ow
  %i.ox = load i32, ptr %gep475, align 4, !tbaa !38
  %i.oy = getelementptr inbounds [4 x i8], ptr %i.mu, i64 %indvars.iv433
  store i32 %i.ox, ptr %i.oy, align 4, !tbaa !38
  %i.oz = trunc nuw nsw i64 %i.ow to i32
  %i.pa = add i32 %i.mv, %i.oz
  %i.pb = sext i32 %i.pa to i64
  %i.pc = getelementptr inbounds [4 x i8], ptr %.1252, i64 %i.pb
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !38
  %i.pe = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %indvars.iv433
  store i32 %i.pd, ptr %i.pe, align 4, !tbaa !38
  %indvars.iv.next434 = add nsw i64 %indvars.iv433, 1 ; 2 uses
  %indvars.iv.next436 = shl i64 %indvars.iv435, 1
  %i.pf = add i64 %indvars.iv.next436, 2          ; 2 uses
  %gep475.1 = getelementptr [4 x i8], ptr %invariant.gep474, i64 %i.pf
  %i.pg = load i32, ptr %gep475.1, align 4, !tbaa !38
  %i.ph = getelementptr inbounds [4 x i8], ptr %i.mu, i64 %indvars.iv.next434
  store i32 %i.pg, ptr %i.ph, align 4, !tbaa !38
  %i.pi = trunc nuw nsw i64 %i.pf to i32
  %i.pj = add i32 %i.mv, %i.pi
  %i.pk = sext i32 %i.pj to i64
  %i.pl = getelementptr inbounds [4 x i8], ptr %.1252, i64 %i.pk
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !38
  %i.pn = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %indvars.iv.next434
  store i32 %i.pm, ptr %i.pn, align 4, !tbaa !38
  %indvars.iv.next436.1 = add nuw nsw i64 %indvars.iv435, 2 ; 2 uses
  %indvars.iv.next434.1 = add nsw i64 %indvars.iv433, 2 ; 2 uses
  %exitcond441.not.1 = icmp eq i64 %indvars.iv.next436.1, %wide.trip.count440
  br i1 %exitcond441.not.1, label %.loopexit.loopexit, label %scalar.ph550, !llvm.loop !76

.loopexit.loopexit:                               ; preds = %scalar.ph550, %scalar.ph550.prol.loopexit
  %indvars.iv.next434.lcssa = phi i64 [ %indvars.iv.next434.lcssa.unr, %scalar.ph550.prol.loopexit ], [ %indvars.iv.next434.1, %scalar.ph550 ]
  %i.po = trunc nsw i64 %indvars.iv.next434.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ad, %.loopexit.loopexit, %.preheader
  %.5 = phi i32 [ %.3259382, %.preheader ], [ %i.po, %.loopexit.loopexit ], [ %.3259382, %bb.ad ]
  %i.pp = sub i32 %.1264381, %i.mr                ; 2 uses
  %i.pq = icmp sgt i32 %i.pp, 0
  br i1 %i.pq, label %bb.ad, label %._crit_edge385, !llvm.loop !77

._crit_edge385:                                   ; preds = %.loopexit, %bb.ac
  br i1 %i.fu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %._crit_edge385
  call void @free(ptr noundef %.1252) #10
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge385
  %i.pr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 48), align 8, !tbaa !125
  %i.ps = call i32 %i.pr(i64 noundef %.0260.lcssa, ptr noundef %i.gq, ptr noundef null) #10
  store ptr %i.fg, ptr %7, align 8, !tbaa !127
  br label %opal_obj_new.exit

opal_obj_new.exit:                                ; preds = %bb.ab, %bb.w, %bb.af
  %.0269 = phi i32 [ %i.ps, %bb.af ], [ -2, %bb.ab ], [ -2, %bb.w ] ; 2 uses
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
  %i.pt = getelementptr inbounds nuw i8, ptr %.0249317, i64 8 ; 4 uses
  %i.pu = load i8, ptr @opal_uses_threads, align 1, !tbaa !48, !range !49, !noundef !50
  %i.pv = trunc nuw i8 %i.pu to i1
  br i1 %i.pv, label %bb.ai, label %bb.aj, !prof !51

bb.ai:                                            ; preds = %bb.ah
  %i.pw = atomicrmw volatile add ptr %i.pt, i32 -1 monotonic, align 4
  %i.px = add i32 %i.pw, -1
  br label %opal_thread_add_fetch_32.exit

bb.aj:                                            ; preds = %bb.ah
  %i.py = load volatile i32, ptr %i.pt, align 4, !tbaa !38
  %i.pz = add nsw i32 %i.py, -1
  store volatile i32 %i.pz, ptr %i.pt, align 4, !tbaa !38
  %i.qa = load volatile i32, ptr %i.pt, align 4, !tbaa !38
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.ai, %bb.aj
  %.0.i = phi i32 [ %i.px, %bb.ai ], [ %i.qa, %bb.aj ]
  %i.qb = icmp eq i32 %.0.i, 0
  br i1 %i.qb, label %bb.ak, label %.thread333

bb.ak:                                            ; preds = %opal_thread_add_fetch_32.exit
  %i.qc = load ptr, ptr %.0249317, align 8, !tbaa !41
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 48
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !52 ; 2 uses
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !42 ; 2 uses
  %.not6.i = icmp eq ptr %i.qf, null
  br i1 %.not6.i, label %.thread333.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ak, %.lr.ph.i
  %i.qg = phi ptr [ %i.qi, %.lr.ph.i ], [ %i.qf, %bb.ak ]
  %.07.i = phi ptr [ %i.qh, %.lr.ph.i ], [ %i.qe, %bb.ak ]
  call void %i.qg(ptr noundef nonnull %.0249317) #10, !inline_history !0
  %i.qh = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !42 ; 2 uses
  %.not.i306 = icmp eq ptr %i.qi, null
  br i1 %.not.i306, label %.thread333.sink.split, label %.lr.ph.i, !llvm.loop !1

.thread333.sink.split:                            ; preds = %.lr.ph.i, %bb.ak, %._crit_edge352
end_hunk_0
