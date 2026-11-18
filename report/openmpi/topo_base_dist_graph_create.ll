Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/topo_base_dist_graph_create?download=true
inline.NumInlined: 10
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@mca_topo_base_dist_graph_distribute:bb.a
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
  %i.ij = getelementptr i8, ptr %.0251, i64 %i.ii
  %scevgep = getelementptr i8, ptr %i.ij, i64 -4
  %scevgep500 = getelementptr i8, ptr %.0251, i64 -4
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph375, %.loopexit339
  %.0256373 = phi i32 [ 0, %.lr.ph375 ], [ %.2258, %.loopexit339 ] ; 3 uses
  %.0263372 = phi i32 [ %.2267, %.lr.ph375 ], [ %i.li, %.loopexit339 ] ; 4 uses
  %i.ik = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 72), align 8, !tbaa !107
  %i.il = sub nsw i32 %.2267, %.0263372           ; 3 uses
  %i.im = sext i32 %i.il to i64                   ; 2 uses
  %i.in = getelementptr inbounds [4 x i8], ptr %.0251, i64 %i.im
  %i.io = zext nneg i32 %.0263372 to i64
  %i.ip = call i32 %i.ik(ptr noundef %i.in, i64 noundef %i.io, ptr noundef nonnull @ompi_mpi_int, i32 noundef -1, i32 noundef -50, ptr noundef %1, ptr noundef nonnull %8) #10 ; 0 uses
  %i.iq = load i64, ptr %i.if, align 8, !tbaa !109
  %i.ir = udiv i64 %i.iq, %i.a
  %i.is = trunc i64 %i.ir to i32                  ; 2 uses
  br i1 %i.fu, label %.preheader338, label %.loopexit339

.preheader338:                                    ; preds = %bb.y
  %i.it = ashr i32 %i.is, 1                       ; 3 uses
  %i.iu = icmp sgt i32 %i.it, 0
  br i1 %i.iu, label %.lr.ph370, label %.loopexit339

.lr.ph370:                                        ; preds = %.preheader338
  %i.iv = load ptr, ptr %i.hw, align 8, !tbaa !44 ; 6 uses
  %i.iw = add nsw i32 %i.il, 1                    ; 6 uses
  %i.ix = load ptr, ptr %i.ig, align 8, !tbaa !45 ; 6 uses
  %i.iy = sext i32 %.0256373 to i64               ; 7 uses
  %wide.trip.count431 = zext nneg i32 %i.it to i64 ; 8 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.0251, i64 %i.im ; 6 uses
  %min.iters.check = icmp ult i32 %i.it, 29
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph370
  %i.iz = add nsw i64 %wide.trip.count431, -1     ; 2 uses
  %i.ja = trunc nsw i64 %i.iz to i32
  %mul.result = shl i32 %i.ja, 1
  %i.jb = add i32 %i.iw, %mul.result
  %i.jc = icmp sle i32 %i.jb, %i.il
  %i.jd = icmp ugt i64 %i.iz, 4294967295
  %i.je = or i1 %i.jc, %i.jd
  br i1 %i.je, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.jf = shl nsw i64 %i.iy, 2                    ; 2 uses
  %i.jg = getelementptr i8, ptr %i.iv, i64 %i.jf  ; 3 uses
  %i.jh = add nsw i64 %i.iy, %wide.trip.count431
  %i.ji = shl nsw i64 %i.jh, 2                    ; 2 uses
  %i.jj = getelementptr i8, ptr %i.iv, i64 %i.ji  ; 3 uses
  %i.jk = getelementptr i8, ptr %i.ix, i64 %i.jf  ; 3 uses
  %i.jl = getelementptr i8, ptr %i.ix, i64 %i.ji  ; 3 uses
  %bound0 = icmp ult ptr %i.jg, %i.jl
  %bound1 = icmp ult ptr %i.jk, %i.jj
  %found.conflict = and i1 %bound0, %bound1
  %9 = sext i32 %i.iw to i64
  %10 = shl nsw i64 %9, 2                         ; 2 uses
  %i.jm = getelementptr i8, ptr %.0251, i64 %10   ; 2 uses
  %i.jn = shl nuw nsw i64 %wide.trip.count431, 3  ; 2 uses
  %11 = getelementptr i8, ptr %scevgep500, i64 %i.jn
  %i.jo = getelementptr i8, ptr %11, i64 %10      ; 2 uses
  %bound0.a = icmp ult ptr %i.jg, %i.jo
  %bound1.a = icmp ult ptr %i.jm, %i.jj
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %conflict.rdx = or i1 %found.conflict, %found.conflict.a
  %12 = zext nneg i32 %.0263372 to i64
  %13 = shl nuw nsw i64 %12, 2
  %14 = sub nsw i64 %i.jn, %13
  %15 = getelementptr i8, ptr %scevgep, i64 %14   ; 2 uses
  %bound0504 = icmp ult ptr %i.jg, %15
  %bound1505 = icmp ult ptr %invariant.gep, %i.jj
  %found.conflict506 = and i1 %bound0504, %bound1505
  %conflict.rdx507 = or i1 %conflict.rdx, %found.conflict506
  %bound0508 = icmp ult ptr %i.jk, %i.jo
  %bound1509 = icmp ult ptr %i.jm, %i.jl
  %found.conflict510 = and i1 %bound0508, %bound1509
  %conflict.rdx511 = or i1 %conflict.rdx507, %found.conflict510
  %bound0512 = icmp ult ptr %i.jk, %15
  %bound1513 = icmp ult ptr %invariant.gep, %i.jl
  %found.conflict514 = and i1 %bound0512, %bound1513
  %conflict.rdx515 = or i1 %conflict.rdx511, %found.conflict514
  br i1 %conflict.rdx515, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.jp = and i64 %wide.trip.count431, 3          ; 2 uses
  %i.jq = icmp eq i64 %i.jp, 0
  %i.jr = select i1 %i.jq, i64 4, i64 %i.jp
  %n.vec = sub nsw i64 %wide.trip.count431, %i.jr ; 3 uses
  %i.js = add nsw i64 %n.vec, %i.iy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.jt = add i64 %index, %i.iy                   ; 2 uses
  %i.ju = shl nuw nsw i64 %index, 1               ; 2 uses
  %i.jv = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ju
  %wide.vec = load <8 x i32>, ptr %i.jv, align 4, !tbaa !38, !alias.scope !110
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.jt
  store <4 x i32> %strided.vec, ptr %i.jw, align 4, !tbaa !38, !alias.scope !111, !noalias !112
  %i.jx = trunc nuw nsw i64 %i.ju to i32
  %i.jy = add i32 %i.iw, %i.jx
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [4 x i8], ptr %.0251, i64 %i.jz
  %wide.vec516 = load <8 x i32>, ptr %i.ka, align 4, !tbaa !38, !alias.scope !113
  %strided.vec517 = shufflevector <8 x i32> %wide.vec516, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %i.jt
  store <4 x i32> %strided.vec517, ptr %i.kb, align 4, !tbaa !38, !alias.scope !114, !noalias !115
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kc = icmp eq i64 %index.next, %n.vec
  br i1 %i.kc, label %scalar.ph.preheader, label %vector.body, !llvm.loop !67

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.lr.ph370
  %indvars.iv426.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph370 ], [ %n.vec, %vector.body ] ; 5 uses
  %indvars.iv424.ph = phi i64 [ %i.iy, %vector.memcheck ], [ %i.iy, %vector.scevcheck ], [ %i.iy, %.lr.ph370 ], [ %i.js, %vector.body ] ; 4 uses
  %i.kd = sub nsw i64 %wide.trip.count431, %indvars.iv426.ph
  %xtraiter596 = and i64 %i.kd, 1
  %lcmp.mod597.not = icmp eq i64 %xtraiter596, 0
  br i1 %lcmp.mod597.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ke = shl nuw nsw i64 %indvars.iv426.ph, 1    ; 2 uses
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ke
  %i.kf = load i32, ptr %gep.prol, align 4, !tbaa !38
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %indvars.iv424.ph
  store i32 %i.kf, ptr %i.kg, align 4, !tbaa !38
  %i.kh = trunc nuw nsw i64 %i.ke to i32
  %i.ki = add i32 %i.iw, %i.kh
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [4 x i8], ptr %.0251, i64 %i.kj
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !38
  %i.km = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %indvars.iv424.ph
  store i32 %i.kl, ptr %i.km, align 4, !tbaa !38
  %indvars.iv.next427.prol = add nuw nsw i64 %indvars.iv426.ph, 1
  %indvars.iv.next425.prol = add nsw i64 %indvars.iv424.ph, 1 ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next425.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next425.prol, %scalar.ph.prol ]
  %indvars.iv426.unr = phi i64 [ %indvars.iv426.ph, %scalar.ph.preheader ], [ %indvars.iv.next427.prol, %scalar.ph.prol ]
  %indvars.iv424.unr = phi i64 [ %indvars.iv424.ph, %scalar.ph.preheader ], [ %indvars.iv.next425.prol, %scalar.ph.prol ]
  %i.kn = add nsw i64 %wide.trip.count431, -1
  %i.ko = icmp eq i64 %indvars.iv426.ph, %i.kn
  br i1 %i.ko, label %.loopexit339.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv426 = phi i64 [ %indvars.iv.next427.1, %scalar.ph ], [ %indvars.iv426.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %indvars.iv424 = phi i64 [ %indvars.iv.next425.1, %scalar.ph ], [ %indvars.iv424.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.kp = shl nuw nsw i64 %indvars.iv426, 1       ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.kp
  %i.kq = load i32, ptr %gep, align 4, !tbaa !38
  %i.kr = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %indvars.iv424
  store i32 %i.kq, ptr %i.kr, align 4, !tbaa !38
  %i.ks = trunc nuw nsw i64 %i.kp to i32
  %i.kt = add i32 %i.iw, %i.ks
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr inbounds [4 x i8], ptr %.0251, i64 %i.ku
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !38
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %indvars.iv424
  store i32 %i.kw, ptr %i.kx, align 4, !tbaa !38
  %indvars.iv.next425 = add nsw i64 %indvars.iv424, 1 ; 2 uses
  %indvars.iv.next427 = shl i64 %indvars.iv426, 1
  %i.ky = add i64 %indvars.iv.next427, 2          ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ky
  %i.kz = load i32, ptr %gep.1, align 4, !tbaa !38
  %i.la = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %indvars.iv.next425
  store i32 %i.kz, ptr %i.la, align 4, !tbaa !38
  %i.lb = trunc nuw nsw i64 %i.ky to i32
  %i.lc = add i32 %i.iw, %i.lb
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds [4 x i8], ptr %.0251, i64 %i.ld
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !38
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %indvars.iv.next425
  store i32 %i.lf, ptr %i.lg, align 4, !tbaa !38
  %indvars.iv.next427.1 = add nuw nsw i64 %indvars.iv426, 2 ; 2 uses
  %indvars.iv.next425.1 = add nsw i64 %indvars.iv424, 2 ; 2 uses
  %exitcond432.not.1 = icmp eq i64 %indvars.iv.next427.1, %wide.trip.count431
  br i1 %exitcond432.not.1, label %.loopexit339.loopexit, label %scalar.ph, !llvm.loop !68

.loopexit339.loopexit:                            ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  %indvars.iv.next425.lcssa = phi i64 [ %indvars.iv.next425.lcssa.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next425.1, %scalar.ph ]
  %i.lh = trunc nsw i64 %indvars.iv.next425.lcssa to i32
  br label %.loopexit339

.loopexit339:                                     ; preds = %bb.y, %.loopexit339.loopexit, %.preheader338
  %.2258 = phi i32 [ %.0256373, %.preheader338 ], [ %i.lh, %.loopexit339.loopexit ], [ %.0256373, %bb.y ]
  %i.li = sub i32 %.0263372, %i.is                ; 2 uses
  %i.lj = icmp sgt i32 %i.li, 0
  br i1 %i.lj, label %bb.y, label %._crit_edge376, !llvm.loop !69

._crit_edge376:                                   ; preds = %.loopexit339, %bb.x
  br i1 %i.fu, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge376
  %i.lk = load i32, ptr %i.ft, align 4, !tbaa !103
  %i.ll = getelementptr inbounds nuw i8, ptr %i.fg, i64 32 ; 2 uses
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !46
  br label %bb.ac

bb.aa:                                            ; preds = %._crit_edge376
  call void @free(ptr noundef %.0251) #10
  %i.ln = load i32, ptr %i.ft, align 4, !tbaa !103 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.fg, i64 32 ; 3 uses
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !46
  %i.lq = shl nsw i32 %i.ln, 1                    ; 3 uses
  %i.lr = icmp sgt i32 %i.ln, 0
  br i1 %i.lr, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ls = zext nneg i32 %i.lq to i64
  %i.lt = shl nuw nsw i64 %i.ls, 2
  %i.lu = call noalias ptr @malloc(i64 noundef %i.lt) #12 ; 2 uses
  %i.lv = icmp eq ptr %i.lu, null
  br i1 %i.lv, label %opal_obj_new.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.aa, %bb.ab
  %i.lw = phi ptr [ %i.lo, %bb.ab ], [ %i.lo, %bb.aa ], [ %i.ll, %bb.z ]
  %.3268 = phi i32 [ %i.lq, %bb.ab ], [ %i.lq, %bb.aa ], [ %i.lk, %bb.z ] ; 4 uses
  %.1252 = phi ptr [ %i.lu, %bb.ab ], [ %i.lp, %bb.aa ], [ %i.lm, %bb.z ] ; 10 uses
  %i.lx = icmp sgt i32 %.3268, 0
  br i1 %i.lx, label %.lr.ph384, label %._crit_edge385

.lr.ph384:                                        ; preds = %bb.ac
  %i.ly = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.lz = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  %i.ma = zext nneg i32 %.3268 to i64
  %i.mb = shl nuw nsw i64 %i.ma, 2
  %i.mc = getelementptr i8, ptr %.1252, i64 %i.mb
  %scevgep552 = getelementptr i8, ptr %i.mc, i64 -4
  %scevgep553 = getelementptr i8, ptr %.1252, i64 -4
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph384, %.loopexit
  %.3259382 = phi i32 [ 0, %.lr.ph384 ], [ %.5, %.loopexit ] ; 3 uses
  %.1264381 = phi i32 [ %.3268, %.lr.ph384 ], [ %i.pb, %.loopexit ] ; 4 uses
  %i.md = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 72), align 8, !tbaa !107
  %i.me = sub nsw i32 %.3268, %.1264381           ; 3 uses
  %i.mf = sext i32 %i.me to i64                   ; 2 uses
  %i.mg = getelementptr inbounds [4 x i8], ptr %.1252, i64 %i.mf
  %i.mh = zext nneg i32 %.1264381 to i64
  %i.mi = call i32 %i.md(ptr noundef %i.mg, i64 noundef %i.mh, ptr noundef nonnull @ompi_mpi_int, i32 noundef -1, i32 noundef -51, ptr noundef %1, ptr noundef nonnull %8) #10 ; 0 uses
  %i.mj = load i64, ptr %i.ly, align 8, !tbaa !109
  %i.mk = udiv i64 %i.mj, %i.a
  %i.ml = trunc i64 %i.mk to i32                  ; 2 uses
  br i1 %i.fu, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.ad
  %i.mm = ashr i32 %i.ml, 1                       ; 3 uses
  %i.mn = icmp sgt i32 %i.mm, 0
  br i1 %i.mn, label %.lr.ph379, label %.loopexit

.lr.ph379:                                        ; preds = %.preheader
  %i.mo = load ptr, ptr %i.lw, align 8, !tbaa !46 ; 6 uses
  %i.mp = add nsw i32 %i.me, 1                    ; 6 uses
  %i.mq = load ptr, ptr %i.lz, align 8, !tbaa !47 ; 6 uses
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
  %bound0557 = icmp ult ptr %i.mz, %i.ne
  %bound1558 = icmp ult ptr %i.nd, %i.nc
  %found.conflict559 = and i1 %bound0557, %bound1558
  %16 = sext i32 %i.mp to i64
  %17 = shl nsw i64 %16, 2                        ; 2 uses
  %i.nf = getelementptr i8, ptr %.1252, i64 %17   ; 2 uses
  %i.ng = shl nuw nsw i64 %wide.trip.count440, 3  ; 2 uses
  %18 = getelementptr i8, ptr %scevgep553, i64 %i.ng
  %i.nh = getelementptr i8, ptr %18, i64 %17      ; 2 uses
  %bound0557.a = icmp ult ptr %i.mz, %i.nh
  %bound1558.a = icmp ult ptr %i.nf, %i.nc
  %found.conflict559.a = and i1 %bound0557.a, %bound1558.a
  %conflict.rdx563 = or i1 %found.conflict559, %found.conflict559.a
  %19 = zext nneg i32 %.1264381 to i64
  %20 = shl nuw nsw i64 %19, 2
  %21 = sub nsw i64 %i.ng, %20
  %22 = getelementptr i8, ptr %scevgep552, i64 %21 ; 2 uses
  %bound0564 = icmp ult ptr %i.mz, %22
  %bound1565 = icmp ult ptr %invariant.gep474, %i.nc
  %found.conflict566 = and i1 %bound0564, %bound1565
  %conflict.rdx567 = or i1 %conflict.rdx563, %found.conflict566
  %bound0568 = icmp ult ptr %i.nd, %i.nh
  %bound1569 = icmp ult ptr %i.nf, %i.ne
  %found.conflict570 = and i1 %bound0568, %bound1569
  %conflict.rdx571 = or i1 %conflict.rdx567, %found.conflict570
  %bound0572 = icmp ult ptr %i.nd, %22
  %bound1573 = icmp ult ptr %invariant.gep474, %i.ne
  %found.conflict574 = and i1 %bound0572, %bound1573
  %conflict.rdx575 = or i1 %conflict.rdx571, %found.conflict574
  br i1 %conflict.rdx575, label %scalar.ph554.preheader, label %vector.ph576

vector.ph576:                                     ; preds = %vector.memcheck556
  %i.ni = and i64 %wide.trip.count440, 3          ; 2 uses
  %i.nj = icmp eq i64 %i.ni, 0
  %i.nk = select i1 %i.nj, i64 4, i64 %i.ni
  %n.vec577 = sub nsw i64 %wide.trip.count440, %i.nk ; 3 uses
  %i.nl = add nsw i64 %n.vec577, %i.mr
  br label %vector.body578

vector.body578:                                   ; preds = %vector.body578, %vector.ph576
  %index579 = phi i64 [ 0, %vector.ph576 ], [ %index.next584, %vector.body578 ] ; 3 uses
  %i.nm = add i64 %index579, %i.mr                ; 2 uses
  %i.nn = shl nuw nsw i64 %index579, 1            ; 2 uses
  %i.no = getelementptr [4 x i8], ptr %invariant.gep474, i64 %i.nn
  %wide.vec580 = load <8 x i32>, ptr %i.no, align 4, !tbaa !38, !alias.scope !118
  %strided.vec581 = shufflevector <8 x i32> %wide.vec580, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.np = getelementptr inbounds [4 x i8], ptr %i.mo, i64 %i.nm
  store <4 x i32> %strided.vec581, ptr %i.np, align 4, !tbaa !38, !alias.scope !119, !noalias !120
  %i.nq = trunc nuw nsw i64 %i.nn to i32
  %i.nr = add i32 %i.mp, %i.nq
  %i.ns = sext i32 %i.nr to i64
  %i.nt = getelementptr inbounds [4 x i8], ptr %.1252, i64 %i.ns
  %wide.vec582 = load <8 x i32>, ptr %i.nt, align 4, !tbaa !38, !alias.scope !121
  %strided.vec583 = shufflevector <8 x i32> %wide.vec582, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nu = getelementptr inbounds [4 x i8], ptr %i.mq, i64 %i.nm
  store <4 x i32> %strided.vec583, ptr %i.nu, align 4, !tbaa !38, !alias.scope !122, !noalias !123
  %index.next584 = add nuw i64 %index579, 4       ; 2 uses
  %i.nv = icmp eq i64 %index.next584, %n.vec577
  br i1 %i.nv, label %scalar.ph554.preheader, label %vector.body578, !llvm.loop !75

scalar.ph554.preheader:                           ; preds = %vector.body578, %vector.memcheck556, %vector.scevcheck519, %.lr.ph379
  %indvars.iv435.ph = phi i64 [ 0, %vector.memcheck556 ], [ 0, %vector.scevcheck519 ], [ 0, %.lr.ph379 ], [ %n.vec577, %vector.body578 ] ; 5 uses
  %indvars.iv433.ph = phi i64 [ %i.mr, %vector.memcheck556 ], [ %i.mr, %vector.scevcheck519 ], [ %i.mr, %.lr.ph379 ], [ %i.nl, %vector.body578 ] ; 4 uses
  %i.nw = sub nsw i64 %wide.trip.count440, %indvars.iv435.ph
  %xtraiter598 = and i64 %i.nw, 1
  %lcmp.mod599.not = icmp eq i64 %xtraiter598, 0
  br i1 %lcmp.mod599.not, label %scalar.ph554.prol.loopexit, label %scalar.ph554.prol

scalar.ph554.prol:                                ; preds = %scalar.ph554.preheader
  %i.nx = shl nuw nsw i64 %indvars.iv435.ph, 1    ; 2 uses
  %gep475.prol = getelementptr [4 x i8], ptr %invariant.gep474, i64 %i.nx
  %i.ny = load i32, ptr %gep475.prol, align 4, !tbaa !38
  %i.nz = getelementptr inbounds [4 x i8], ptr %i.mo, i64 %indvars.iv433.ph
  store i32 %i.ny, ptr %i.nz, align 4, !tbaa !38
  %i.oa = trunc nuw nsw i64 %i.nx to i32
  %i.ob = add i32 %i.mp, %i.oa
  %i.oc = sext i32 %i.ob to i64
  %i.od = getelementptr inbounds [4 x i8], ptr %.1252, i64 %i.oc
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !38
  %i.of = getelementptr inbounds [4 x i8], ptr %i.mq, i64 %indvars.iv433.ph
  store i32 %i.oe, ptr %i.of, align 4, !tbaa !38
  %indvars.iv.next436.prol = add nuw nsw i64 %indvars.iv435.ph, 1
  %indvars.iv.next434.prol = add nsw i64 %indvars.iv433.ph, 1 ; 2 uses
  br label %scalar.ph554.prol.loopexit

scalar.ph554.prol.loopexit:                       ; preds = %scalar.ph554.prol, %scalar.ph554.preheader
  %indvars.iv.next434.lcssa.unr = phi i64 [ poison, %scalar.ph554.preheader ], [ %indvars.iv.next434.prol, %scalar.ph554.prol ]
  %indvars.iv435.unr = phi i64 [ %indvars.iv435.ph, %scalar.ph554.preheader ], [ %indvars.iv.next436.prol, %scalar.ph554.prol ]
  %indvars.iv433.unr = phi i64 [ %indvars.iv433.ph, %scalar.ph554.preheader ], [ %indvars.iv.next434.prol, %scalar.ph554.prol ]
  %i.og = add nsw i64 %wide.trip.count440, -1
  %i.oh = icmp eq i64 %indvars.iv435.ph, %i.og
  br i1 %i.oh, label %.loopexit.loopexit, label %scalar.ph554

scalar.ph554:                                     ; preds = %scalar.ph554.prol.loopexit, %scalar.ph554
  %indvars.iv435 = phi i64 [ %indvars.iv.next436.1, %scalar.ph554 ], [ %indvars.iv435.unr, %scalar.ph554.prol.loopexit ] ; 3 uses
  %indvars.iv433 = phi i64 [ %indvars.iv.next434.1, %scalar.ph554 ], [ %indvars.iv433.unr, %scalar.ph554.prol.loopexit ] ; 4 uses
  %i.oi = shl nuw nsw i64 %indvars.iv435, 1       ; 2 uses
  %gep475 = getelementptr [4 x i8], ptr %invariant.gep474, i64 %i.oi
  %i.oj = load i32, ptr %gep475, align 4, !tbaa !38
  %i.ok = getelementptr inbounds [4 x i8], ptr %i.mo, i64 %indvars.iv433
  store i32 %i.oj, ptr %i.ok, align 4, !tbaa !38
  %i.ol = trunc nuw nsw i64 %i.oi to i32
  %i.om = add i32 %i.mp, %i.ol
  %i.on = sext i32 %i.om to i64
  %i.oo = getelementptr inbounds [4 x i8], ptr %.1252, i64 %i.on
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !38
  %i.oq = getelementptr inbounds [4 x i8], ptr %i.mq, i64 %indvars.iv433
  store i32 %i.op, ptr %i.oq, align 4, !tbaa !38
  %indvars.iv.next434 = add nsw i64 %indvars.iv433, 1 ; 2 uses
  %indvars.iv.next436 = shl i64 %indvars.iv435, 1
  %i.or = add i64 %indvars.iv.next436, 2          ; 2 uses
  %gep475.1 = getelementptr [4 x i8], ptr %invariant.gep474, i64 %i.or
  %i.os = load i32, ptr %gep475.1, align 4, !tbaa !38
  %i.ot = getelementptr inbounds [4 x i8], ptr %i.mo, i64 %indvars.iv.next434
  store i32 %i.os, ptr %i.ot, align 4, !tbaa !38
  %i.ou = trunc nuw nsw i64 %i.or to i32
  %i.ov = add i32 %i.mp, %i.ou
  %i.ow = sext i32 %i.ov to i64
  %i.ox = getelementptr inbounds [4 x i8], ptr %.1252, i64 %i.ow
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !38
  %i.oz = getelementptr inbounds [4 x i8], ptr %i.mq, i64 %indvars.iv.next434
  store i32 %i.oy, ptr %i.oz, align 4, !tbaa !38
  %indvars.iv.next436.1 = add nuw nsw i64 %indvars.iv435, 2 ; 2 uses
  %indvars.iv.next434.1 = add nsw i64 %indvars.iv433, 2 ; 2 uses
  %exitcond441.not.1 = icmp eq i64 %indvars.iv.next436.1, %wide.trip.count440
  br i1 %exitcond441.not.1, label %.loopexit.loopexit, label %scalar.ph554, !llvm.loop !76

.loopexit.loopexit:                               ; preds = %scalar.ph554, %scalar.ph554.prol.loopexit
  %indvars.iv.next434.lcssa = phi i64 [ %indvars.iv.next434.lcssa.unr, %scalar.ph554.prol.loopexit ], [ %indvars.iv.next434.1, %scalar.ph554 ]
  %i.pa = trunc nsw i64 %indvars.iv.next434.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ad, %.loopexit.loopexit, %.preheader
  %.5 = phi i32 [ %.3259382, %.preheader ], [ %i.pa, %.loopexit.loopexit ], [ %.3259382, %bb.ad ]
  %i.pb = sub i32 %.1264381, %i.ml                ; 2 uses
  %i.pc = icmp sgt i32 %i.pb, 0
  br i1 %i.pc, label %bb.ad, label %._crit_edge385, !llvm.loop !77

._crit_edge385:                                   ; preds = %.loopexit, %bb.ac
  br i1 %i.fu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %._crit_edge385
  call void @free(ptr noundef %.1252) #10
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge385
  %i.pd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 48), align 8, !tbaa !125
  %i.pe = call i32 %i.pd(i64 noundef %.0260.lcssa, ptr noundef %i.gq, ptr noundef null) #10
  store ptr %i.fg, ptr %7, align 8, !tbaa !127
  br label %opal_obj_new.exit

opal_obj_new.exit:                                ; preds = %bb.ab, %bb.w, %bb.af
  %.0269 = phi i32 [ %i.pe, %bb.af ], [ -2, %bb.ab ], [ -2, %bb.w ] ; 2 uses
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
  %i.pf = getelementptr inbounds nuw i8, ptr %.0249317, i64 8 ; 4 uses
  %i.pg = load i8, ptr @opal_uses_threads, align 1, !tbaa !48, !range !49, !noundef !50
  %i.ph = trunc nuw i8 %i.pg to i1
  br i1 %i.ph, label %bb.ai, label %bb.aj, !prof !51

bb.ai:                                            ; preds = %bb.ah
  %i.pi = atomicrmw volatile add ptr %i.pf, i32 -1 monotonic, align 4
  %i.pj = add i32 %i.pi, -1
  br label %opal_thread_add_fetch_32.exit

bb.aj:                                            ; preds = %bb.ah
  %i.pk = load volatile i32, ptr %i.pf, align 4, !tbaa !38
  %i.pl = add nsw i32 %i.pk, -1
  store volatile i32 %i.pl, ptr %i.pf, align 4, !tbaa !38
  %i.pm = load volatile i32, ptr %i.pf, align 4, !tbaa !38
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.ai, %bb.aj
  %.0.i = phi i32 [ %i.pj, %bb.ai ], [ %i.pm, %bb.aj ]
  %i.pn = icmp eq i32 %.0.i, 0
  br i1 %i.pn, label %bb.ak, label %.thread333

bb.ak:                                            ; preds = %opal_thread_add_fetch_32.exit
  %i.po = load ptr, ptr %.0249317, align 8, !tbaa !41
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 48
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !52 ; 2 uses
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !42 ; 2 uses
  %.not6.i = icmp eq ptr %i.pr, null
  br i1 %.not6.i, label %.thread333.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ak, %.lr.ph.i
  %i.ps = phi ptr [ %i.pu, %.lr.ph.i ], [ %i.pr, %bb.ak ]
  %.07.i = phi ptr [ %i.pt, %.lr.ph.i ], [ %i.pq, %bb.ak ]
  call void %i.ps(ptr noundef nonnull %.0249317) #10, !inline_history !0
  %i.pt = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !42 ; 2 uses
  %.not.i306 = icmp eq ptr %i.pu, null
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
