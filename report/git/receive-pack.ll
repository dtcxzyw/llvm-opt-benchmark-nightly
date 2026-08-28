Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/receive-pack?download=true
inline.NumInlined: 113
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@cmd_receive_pack:bb.a
  %i.he = call fastcc ptr @unpack(i32 noundef 0, ptr noundef nonnull readonly %22)
  br label %unpack_with_sideband.exit

bb.bt:                                            ; preds = %bb.br
  store i32 1, ptr @use_keepalive, align 4, !tbaa !12
  %i.hf = getelementptr inbounds nuw i8, ptr %15, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hf, i8 0, i64 40, i1 false)
  store ptr @copy_to_sideband, ptr %15, align 8, !tbaa !92
  %i.hg = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store i32 -1, ptr %i.hg, align 8, !tbaa !94
  %i.hh = call i32 @start_async(ptr noundef nonnull %15) #20
  %.not.i55 = icmp eq i32 %i.hh, 0
  br i1 %.not.i55, label %bb.bu, label %unpack_with_sideband.exit

bb.bu:                                            ; preds = %bb.bt
  %i.hi = load i32, ptr %i.hg, align 8, !tbaa !94
  %i.hj = call fastcc ptr @unpack(i32 noundef %i.hi, ptr noundef nonnull readonly %22)
  %i.hk = call i32 @finish_async(ptr noundef nonnull %15) #20 ; 0 uses
  br label %unpack_with_sideband.exit

unpack_with_sideband.exit:                        ; preds = %bb.bs, %bb.bt, %bb.bu
  %.0.i = phi ptr [ %i.he, %bb.bs ], [ %i.hj, %bb.bu ], [ null, %bb.bt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @remove_nonexistent_theirs_shallow(ptr noundef nonnull %22) #20
  %i.hl = load i64, ptr %i.gq, align 8, !tbaa !83
  %.not.i56 = icmp eq i64 %i.hl, 0
  %i.hm = load i64, ptr %i.gt, align 8
  %.not26.i = icmp eq i64 %i.hm, 0
  %or.cond106 = select i1 %.not.i56, i1 %.not26.i, i1 false
  br i1 %or.cond106, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %unpack_with_sideband.exit
  store i32 0, ptr @shallow_update, align 4, !tbaa !12
  br label %delete_only.exit

bb.bw:                                            ; preds = %unpack_with_sideband.exit
  %i.hn = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bz, %bb.bw
  %.037.i = phi ptr [ %i.fv, %bb.bw ], [ %i.hz, %bb.bz ] ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.037.i, i64 76 ; 3 uses
  %i.hp = load i128, ptr %i.ho, align 1
  %i.hq = getelementptr i8, ptr %i.ho, i64 16
  %i.hr = load i128, ptr %i.hq, align 1
  %i.hs = or i128 %i.hp, %i.hr
  %i.ht = icmp ne i128 %i.hs, 0
  %i.hu = zext i1 %i.ht to i32
  %.not.i.not.i58 = icmp eq i32 %i.hu, 0
  br i1 %.not.i.not.i58, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @oid_array_append(ptr noundef nonnull %21, ptr noundef nonnull %i.ho) #20
  %i.hv = load i64, ptr %i.hn, align 8, !tbaa !95
  %i.hw = trunc i64 %i.hv to i32
  %i.hx = add i32 %i.hw, -1
  %i.hy = getelementptr inbounds nuw i8, ptr %.037.i, i64 36
  store i32 %i.hx, ptr %i.hy, align 4, !tbaa !12
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.hz = load ptr, ptr %.037.i, align 8, !tbaa !60 ; 2 uses
  %.not27.i = icmp eq ptr %i.hz, null
  br i1 %.not27.i, label %bb.ca, label %bb.bx, !llvm.loop !97

bb.ca:                                            ; preds = %bb.bz
  %i.ia = getelementptr inbounds nuw i8, ptr %22, i64 40 ; 2 uses
  store ptr %21, ptr %i.ia, align 8, !tbaa !98
  %i.ib = load i32, ptr @shallow_update, align 4, !tbaa !12
  %.not28.i = icmp eq i32 %i.ib, 0
  %i.ic = load i64, ptr %i.hn, align 8, !tbaa !95
  %.fr.i.i = freeze i64 %i.ic                     ; 4 uses
  br i1 %.not28.i, label %bb.cn, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.id = add i64 %.fr.i.i, 31
  %i.ie = lshr i64 %i.id, 5                       ; 2 uses
  %i.if = trunc i64 %i.ie to i32
  %i.ig = load ptr, ptr %22, align 8, !tbaa !99
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !95 ; 3 uses
  %mul.ov.i.i.i = icmp ugt i64 %i.ii, 2305843009213693951
  br i1 %mul.ov.i.i.i, label %bb.cc, label %st_mult.exit.i.i

bb.cc:                                            ; preds = %bb.cb
  call void (ptr, ...) @die(ptr noundef nonnull @.str.106, i64 noundef 8, i64 noundef %i.ii) #21
  unreachable

st_mult.exit.i.i:                                 ; preds = %bb.cb
  %i.ij = shl nuw i64 %i.ii, 3
  %i.ik = call ptr @xmalloc(i64 noundef %i.ij) #20 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %22, i64 48 ; 2 uses
  store ptr %i.ik, ptr %i.il, align 8, !tbaa !100
  call void @assign_shallow_commits_to_refs(ptr noundef nonnull %22, ptr noundef %i.ik, ptr noundef null) #20
  %i.im = load ptr, ptr %22, align 8, !tbaa !99
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load i64, ptr %i.in, align 8, !tbaa !95
  %i.ip = call ptr @xcalloc(i64 noundef %i.io, i64 noundef 4) #20
  %i.iq = getelementptr inbounds nuw i8, ptr %22, i64 56 ; 5 uses
  store ptr %i.ip, ptr %i.iq, align 8, !tbaa !101
  %i.ir = load ptr, ptr %22, align 8, !tbaa !99
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = load i64, ptr %i.is, align 8, !tbaa !95
  %i.iu = call ptr @xcalloc(i64 noundef %i.it, i64 noundef 4) #20
  %i.iv = getelementptr inbounds nuw i8, ptr %22, i64 64
  store ptr %i.iu, ptr %i.iv, align 8, !tbaa !102
  %i.iw = load ptr, ptr %i.ia, align 8, !tbaa !98
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !95
  %i.iz = call ptr @xcalloc(i64 noundef %i.iy, i64 noundef 4) #20 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %22, i64 72
  store ptr %i.iz, ptr %i.ja, align 8, !tbaa !103
  %i.jb = load i64, ptr %i.gq, align 8, !tbaa !83 ; 4 uses
  %.not56.i.i = icmp eq i64 %i.jb, 0
  br i1 %.not56.i.i, label %.preheader48.i.i, label %.lr.ph.i.i59

.lr.ph.i.i59:                                     ; preds = %st_mult.exit.i.i
  %i.jc = load ptr, ptr %i.iq, align 8, !tbaa !101 ; 5 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !104 ; 5 uses
  %xtraiter = and i64 %i.jb, 3                    ; 3 uses
  %i.jf = icmp ult i64 %i.jb, 4
  br i1 %i.jf, label %.epil.preheader, label %.lr.ph.i.i59.new

.lr.ph.i.i59.new:                                 ; preds = %.lr.ph.i.i59
  %unroll_iter = and i64 %i.jb, -4
  br label %bb.cl

.preheader48.i.i.loopexit.unr-lcssa:              ; preds = %bb.cl
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader48.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader48.i.i.loopexit.unr-lcssa, %.lr.ph.i.i59
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i59 ], [ %indvars.iv.next.i.i.3, %.preheader48.i.i.loopexit.unr-lcssa ]
  %lcmp.mod212 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod212)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cd, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.cd ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.cd ]
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %indvars.iv.i.i.epil
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !66
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %i.jh
  store i32 1, ptr %i.ji, align 4, !tbaa !12
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader48.i.i, label %bb.cd, !llvm.loop !105

.preheader48.i.i:                                 ; preds = %.preheader48.i.i.loopexit.unr-lcssa, %bb.cd, %st_mult.exit.i.i
  %i.jj = load ptr, ptr %22, align 8, !tbaa !99
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !95 ; 6 uses
  %.not57.i.i = icmp eq i64 %i.jl, 0
  br i1 %.not57.i.i, label %prepare_shallow_update.exit.i, label %.lr.ph54.i.i

.lr.ph54.i.i:                                     ; preds = %.preheader48.i.i
  %i.jm = load ptr, ptr %i.il, align 8, !tbaa !100 ; 4 uses
  %i.jn = icmp sgt i32 %i.if, 0
  br i1 %i.jn, label %.lr.ph54.split.us.preheader.i.i, label %.lr.ph54.split.i.i.preheader

.lr.ph54.split.i.i.preheader:                     ; preds = %.lr.ph54.i.i
  %i.jo = load ptr, ptr %i.iq, align 8            ; 3 uses
  %xtraiter213 = and i64 %i.jl, 1
  %i.jp = icmp eq i64 %i.jl, 1
  br i1 %i.jp, label %.lr.ph54.split.i.i.epil.preheader, label %.lr.ph54.split.i.i.preheader.new

.lr.ph54.split.i.i.preheader.new:                 ; preds = %.lr.ph54.split.i.i.preheader
  %unroll_iter217 = and i64 %i.jl, -2
  br label %.lr.ph54.split.i.i

.lr.ph54.split.us.preheader.i.i:                  ; preds = %.lr.ph54.i.i
  %wide.trip.count.i.i = and i64 %i.ie, 2147483647
  %i.jq = load ptr, ptr %i.iq, align 8
  br label %.lr.ph54.split.us.i.i

.lr.ph54.split.us.i.i:                            ; preds = %bb.ck, %.lr.ph54.split.us.preheader.i.i
  %indvars.iv74.i.i = phi i64 [ 0, %.lr.ph54.split.us.preheader.i.i ], [ %indvars.iv.next75.i.i, %bb.ck ] ; 4 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %indvars.iv74.i.i
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !107 ; 2 uses
  %.not.us.i.i = icmp eq ptr %i.js, null
  br i1 %.not.us.i.i, label %bb.ck, label %.preheader.us.i.i.preheader

.preheader.us.i.i.preheader:                      ; preds = %.lr.ph54.split.us.i.i
  %i.jt = load ptr, ptr %i.iq, align 8
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %indvars.iv74.i.i ; 2 uses
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %.preheader.us.i.i.preheader, %.loopexit.us.i.i
  %indvars.iv70.i.i = phi i64 [ %indvars.iv.next71.i.i, %.loopexit.us.i.i ], [ 0, %.preheader.us.i.i.preheader ] ; 3 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv70.i.i ; 3 uses
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !12
  %.not46.us.i.i = icmp eq i32 %i.jw, 0
  br i1 %.not46.us.i.i, label %.loopexit.us.i.i, label %bb.ce

bb.ce:                                            ; preds = %.preheader.us.i.i
  %i.jx = load i32, ptr %i.ju, align 4, !tbaa !12
  %i.jy = add nsw i32 %i.jx, 1
  store i32 %i.jy, ptr %i.ju, align 4, !tbaa !12
  %i.jz = shl i64 %indvars.iv70.i.i, 5
  %27 = and i64 %i.jz, 4294967264
  %invariant.gep.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %27 ; 2 uses
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cj, %bb.ce
  %indvars.iv66.i.i = phi i64 [ 0, %bb.ce ], [ %indvars.iv.next67.i.i.1, %bb.cj ] ; 4 uses
  %i.ka = load i32, ptr %i.jv, align 4, !tbaa !12
  %i.kb = trunc nuw nsw i64 %indvars.iv66.i.i to i32
  %i.kc = shl nuw i32 1, %i.kb
  %i.kd = and i32 %i.kc, %i.ka
  %.not47.us.i.i = icmp eq i32 %i.kd, 0
  br i1 %.not47.us.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %gep.i.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv66.i.i ; 2 uses
  %i.ke = load i32, ptr %gep.i.i, align 4, !tbaa !12
  %i.kf = add nsw i32 %i.ke, 1
  store i32 %i.kf, ptr %gep.i.i, align 4, !tbaa !12
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %indvars.iv.next67.i.i = or disjoint i64 %indvars.iv66.i.i, 1 ; 2 uses
  %i.kg = load i32, ptr %i.jv, align 4, !tbaa !12
  %i.kh = trunc nuw nsw i64 %indvars.iv.next67.i.i to i32
  %i.ki = shl nuw i32 1, %i.kh
  %i.kj = and i32 %i.ki, %i.kg
  %.not47.us.i.i.1 = icmp eq i32 %i.kj, 0
  br i1 %.not47.us.i.i.1, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %gep.i.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.next67.i.i ; 2 uses
  %i.kk = load i32, ptr %gep.i.i.1, align 4, !tbaa !12
  %i.kl = add nsw i32 %i.kk, 1
  store i32 %i.kl, ptr %gep.i.i.1, align 4, !tbaa !12
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %indvars.iv.next67.i.i.1 = add nuw nsw i64 %indvars.iv66.i.i, 2 ; 2 uses
  %exitcond69.not.i.i.1 = icmp eq i64 %indvars.iv.next67.i.i.1, 32
  br i1 %exitcond69.not.i.i.1, label %.loopexit.us.i.i, label %bb.cf, !llvm.loop !108

.loopexit.us.i.i:                                 ; preds = %bb.cj, %.preheader.us.i.i
  %indvars.iv.next71.i.i = add nuw nsw i64 %indvars.iv70.i.i, 1 ; 2 uses
  %exitcond73.not.i.i = icmp eq i64 %indvars.iv.next71.i.i, %wide.trip.count.i.i
  br i1 %exitcond73.not.i.i, label %._crit_edge.us.i.i, label %.preheader.us.i.i, !llvm.loop !109

bb.ck:                                            ; preds = %._crit_edge.us.i.i, %.lr.ph54.split.us.i.i
  %indvars.iv.next75.i.i = add nuw nsw i64 %indvars.iv74.i.i, 1 ; 2 uses
  %exitcond77.not.i.i = icmp eq i64 %indvars.iv.next75.i.i, %i.jl
  br i1 %exitcond77.not.i.i, label %prepare_shallow_update.exit.i, label %.lr.ph54.split.us.i.i, !llvm.loop !110

._crit_edge.us.i.i:                               ; preds = %.loopexit.us.i.i
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv74.i.i ; 2 uses
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !12
  %i.ko = icmp sgt i32 %i.kn, 1
  %i.kp = zext i1 %i.ko to i32
  store i32 %i.kp, ptr %i.km, align 4, !tbaa !12
  br label %bb.ck

bb.cl:                                            ; preds = %bb.cl, %.lr.ph.i.i59.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i59.new ], [ %indvars.iv.next.i.i.3, %bb.cl ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i59.new ], [ %niter.next.3, %bb.cl ]
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %indvars.iv.i.i
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !66
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %i.kr
  store i32 1, ptr %i.ks, align 4, !tbaa !12
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %indvars.iv.i.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !66
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %i.kv
  store i32 1, ptr %i.kw, align 4, !tbaa !12
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %indvars.iv.i.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !66
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %i.kz
  store i32 1, ptr %i.la, align 4, !tbaa !12
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %indvars.iv.i.i
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 24
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !66
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %i.ld
  store i32 1, ptr %i.le, align 4, !tbaa !12
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader48.i.i.loopexit.unr-lcssa, label %bb.cl, !llvm.loop !111

.lr.ph54.split.i.i:                               ; preds = %bb.cm, %.lr.ph54.split.i.i.preheader.new
  %indvars.iv62.i.i = phi i64 [ 0, %.lr.ph54.split.i.i.preheader.new ], [ %indvars.iv.next63.i.i.1, %bb.cm ] ; 4 uses
  %niter218 = phi i64 [ 0, %.lr.ph54.split.i.i.preheader.new ], [ %niter218.next.1, %bb.cm ]
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %indvars.iv62.i.i
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !107
  %.not.i33.i = icmp eq ptr %i.lg, null
  br i1 %.not.i33.i, label %.lr.ph54.split.i.i.1, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph54.split.i.i
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %indvars.iv62.i.i ; 2 uses
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !12
  %i.lj = icmp sgt i32 %i.li, 1
  %i.lk = zext i1 %i.lj to i32
  store i32 %i.lk, ptr %i.lh, align 4, !tbaa !12
  br label %.lr.ph54.split.i.i.1

.lr.ph54.split.i.i.1:                             ; preds = %.preheader.i.i, %.lr.ph54.split.i.i
  %indvars.iv.next63.i.i = or disjoint i64 %indvars.iv62.i.i, 1 ; 2 uses
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %indvars.iv.next63.i.i
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !107
  %.not.i33.i.1 = icmp eq ptr %i.lm, null
  br i1 %.not.i33.i.1, label %bb.cm, label %.preheader.i.i.1

.preheader.i.i.1:                                 ; preds = %.lr.ph54.split.i.i.1
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %indvars.iv.next63.i.i ; 2 uses
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !12
  %i.lp = icmp sgt i32 %i.lo, 1
  %i.lq = zext i1 %i.lp to i32
  store i32 %i.lq, ptr %i.ln, align 4, !tbaa !12
  br label %bb.cm

bb.cm:                                            ; preds = %.preheader.i.i.1, %.lr.ph54.split.i.i.1
  %indvars.iv.next63.i.i.1 = add nuw nsw i64 %indvars.iv62.i.i, 2 ; 2 uses
  %niter218.next.1 = add nuw i64 %niter218, 2     ; 2 uses
  %niter218.ncmp.1 = icmp eq i64 %niter218.next.1, %unroll_iter217
  br i1 %niter218.ncmp.1, label %prepare_shallow_update.exit.i.loopexit202.unr-lcssa, label %.lr.ph54.split.i.i, !llvm.loop !110

prepare_shallow_update.exit.i.loopexit202.unr-lcssa: ; preds = %bb.cm
  %lcmp.mod215.not = icmp eq i64 %xtraiter213, 0
  br i1 %lcmp.mod215.not, label %prepare_shallow_update.exit.i, label %.lr.ph54.split.i.i.epil.preheader

.lr.ph54.split.i.i.epil.preheader:                ; preds = %prepare_shallow_update.exit.i.loopexit202.unr-lcssa, %.lr.ph54.split.i.i.preheader
  %indvars.iv62.i.i.epil.init = phi i64 [ 0, %.lr.ph54.split.i.i.preheader ], [ %indvars.iv.next63.i.i.1, %prepare_shallow_update.exit.i.loopexit202.unr-lcssa ] ; 2 uses
  %lcmp.mod216 = trunc i64 %i.jl to i1
  call void @llvm.assume(i1 %lcmp.mod216)
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %indvars.iv62.i.i.epil.init
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !107
  %.not.i33.i.epil = icmp eq ptr %i.ls, null
  br i1 %.not.i33.i.epil, label %prepare_shallow_update.exit.i, label %.preheader.i.i.epil

.preheader.i.i.epil:                              ; preds = %.lr.ph54.split.i.i.epil.preheader
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %indvars.iv62.i.i.epil.init ; 2 uses
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !12
  %i.lv = icmp sgt i32 %i.lu, 1
  %i.lw = zext i1 %i.lv to i32
  store i32 %i.lw, ptr %i.lt, align 4, !tbaa !12
  br label %prepare_shallow_update.exit.i

prepare_shallow_update.exit.i:                    ; preds = %prepare_shallow_update.exit.i.loopexit202.unr-lcssa, %.preheader.i.i.epil, %.lr.ph54.split.i.i.epil.preheader, %bb.ck, %.preheader48.i.i
  %i.lx = load ptr, ptr @alt_shallow_file, align 8, !tbaa !27
  %i.ly = call i32 @setenv(ptr noundef nonnull @.str.105, ptr noundef %i.lx, i32 noundef 1) #20 ; 0 uses
  br label %delete_only.exit

bb.cn:                                            ; preds = %bb.ca
  %mul.ov.i.i = icmp ugt i64 %.fr.i.i, 4611686018427387903
  br i1 %mul.ov.i.i, label %bb.co, label %st_mult.exit.i

bb.co:                                            ; preds = %bb.cn
  call void (ptr, ...) @die(ptr noundef nonnull @.str.106, i64 noundef 4, i64 noundef %.fr.i.i) #21
  unreachable

st_mult.exit.i:                                   ; preds = %bb.cn
  %i.lz = shl nuw i64 %.fr.i.i, 2
  %i.ma = call ptr @xmalloc(i64 noundef %i.lz) #20 ; 3 uses
  call void @assign_shallow_commits_to_refs(ptr noundef nonnull %22, ptr noundef null, ptr noundef %i.ma) #20
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cs, %st_mult.exit.i
  %.138.i = phi ptr [ %i.fv, %st_mult.exit.i ], [ %i.mr, %bb.cs ] ; 5 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.138.i, i64 76 ; 2 uses
  %i.mc = load i128, ptr %i.mb, align 1
  %i.md = getelementptr i8, ptr %i.mb, i64 16
  %i.me = load i128, ptr %i.md, align 1
  %i.mf = or i128 %i.mc, %i.me
  %i.mg = icmp ne i128 %i.mf, 0
  %i.mh = zext i1 %i.mg to i32
  %.not.i35.not.i = icmp eq i32 %i.mh, 0
  br i1 %.not.i35.not.i, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.mi = getelementptr inbounds nuw i8, ptr %.138.i, i64 36
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !12
  %i.mk = sext i32 %i.mj to i64
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.ma, i64 %i.mk
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !12
  %.not31.i = icmp eq i32 %i.mm, 0
  br i1 %.not31.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.mn = getelementptr inbounds nuw i8, ptr %.138.i, i64 8
  store ptr @.str.104, ptr %i.mn, align 8, !tbaa !27
  %i.mo = getelementptr inbounds nuw i8, ptr %.138.i, i64 32 ; 2 uses
  %i.mp = load i8, ptr %i.mo, align 8
  %i.mq = or i8 %i.mp, 1
  store i8 %i.mq, ptr %i.mo, align 8
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq, %bb.cp
  %i.mr = load ptr, ptr %.138.i, align 8, !tbaa !60 ; 2 uses
  %.not29.i = icmp eq ptr %i.mr, null
  br i1 %.not29.i, label %bb.ct, label %bb.cp, !llvm.loop !112

bb.ct:                                            ; preds = %bb.cs
  call void @free(ptr noundef %i.ma) #20
  br label %delete_only.exit

end_hunk_0
