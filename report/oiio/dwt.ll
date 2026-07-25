inline.NumInlined: 158
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 78
begin_hunk_0_@opj_dwt_encode_procedure:bb.a
  %.3190219 = phi i32 [ 0, %bb.m ], [ %i.dv, %.critedge208 ] ; 3 uses
  %i.dl = tail call ptr @opj_malloc(i64 noundef 56) #15 ; 13 uses
  %.not202 = icmp eq ptr %i.dl, null
  br i1 %.not202, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @opj_thread_pool_wait_completion(ptr noundef %0, i32 noundef 0) #15
  br label %.critedge210.sink.split

bb.p:                                             ; preds = %bb.n
  %i.dm = tail call ptr @opj_aligned_32_malloc(i64 noundef %i.au) #15 ; 2 uses
  store ptr %i.dm, ptr %i.dl, align 8, !tbaa !36
  %.not203 = icmp eq ptr %i.dm, null
  br i1 %.not203, label %bb.q, label %.critedge208

bb.q:                                             ; preds = %bb.p
  tail call void @opj_thread_pool_wait_completion(ptr noundef %0, i32 noundef 0) #15
  tail call void @opj_free(ptr noundef nonnull %i.dl) #15
  br label %.critedge210.sink.split

.critedge208:                                     ; preds = %bb.p
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i32 %i.dc, ptr %i.dn, align 8, !tbaa !39
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store i32 %i.bn, ptr %i.do, align 4, !tbaa !40
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store i32 %i.bt, ptr %i.dp, align 8, !tbaa !41
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store i32 %i.be, ptr %i.dq, align 8, !tbaa !42
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 28
  store i32 %i.g, ptr %i.dr, align 4, !tbaa !43
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  store ptr %i.c, ptr %i.ds, align 8, !tbaa !44
  %i.dt = mul i32 %.3190219, %i.dj
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  store i32 %i.dt, ptr %i.du, align 8, !tbaa !45
  %i.dv = add nuw i32 %.3190219, 1                ; 3 uses
  %i.dw = mul i32 %i.dv, %i.dj
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dl, i64 44
  %i.dy = icmp eq i32 %.3190219, %i.dk
  %spec.select206 = select i1 %i.dy, i32 %i.bj, i32 %i.dw
  store i32 %spec.select206, ptr %i.dx, align 4, !tbaa !46
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  store ptr %3, ptr %i.dz, align 8, !tbaa !47
  %i.ea = tail call i32 @opj_thread_pool_submit_job(ptr noundef %0, ptr noundef nonnull @opj_dwt_encode_h_func, ptr noundef nonnull %i.dl) #15 ; 0 uses
  %exitcond235.not = icmp eq i32 %i.dv, %spec.select205
  br i1 %exitcond235.not, label %bb.r, label %bb.n, !llvm.loop !51

bb.r:                                             ; preds = %.critedge208
  tail call void @opj_thread_pool_wait_completion(ptr noundef %0, i32 noundef 0) #15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.preheader, %bb.r
  %i.eb = add nsw i32 %i.ba, -1
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %.critedge210.sink.split, label %bb.b, !llvm.loop !52

.critedge210.sink.split:                          ; preds = %.loopexit, %.preheader214, %bb.g, %bb.i, %bb.o, %bb.q
  %.10.ph = phi i32 [ 0, %bb.q ], [ 0, %bb.o ], [ 0, %bb.g ], [ 0, %bb.i ], [ 1, %.preheader214 ], [ 1, %.loopexit ]
  tail call void @opj_aligned_free(ptr noundef %i.av) #15
  br label %.critedge210

.critedge210:                                     ; preds = %.critedge210.sink.split, %opj_dwt_max_resolution.exit
  %.10 = phi i32 [ 0, %opj_dwt_max_resolution.exit ], [ %.10.ph, %.critedge210.sink.split ]
  ret i32 %.10
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @opj_dwt_encode_and_deinterleave_v(ptr nofree noundef captures(none) %0, ptr nofree noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %.not = icmp ne i32 %3, 0                       ; 5 uses
  %i.c = zext i1 %.not to i32
  %i.d = add i32 %2, %i.c                         ; 4 uses
  %i.e = lshr i32 %i.d, 1                         ; 13 uses
  %i.f = sub i32 %2, %i.e                         ; 10 uses
  %i.g = icmp eq i32 %5, 8                        ; 2 uses
  %.not41.i = icmp eq i32 %2, 0                   ; 2 uses
  br i1 %i.g, label %.preheader.i, label %.preheader33.i

.preheader33.i:                                   ; preds = %bb.a
  br i1 %.not41.i, label %opj_dwt_fetch_cols_vertical_pass.exit.thread, label %.preheader32.lr.ph.i

.preheader32.lr.ph.i:                             ; preds = %.preheader33.i
  %.not40.i = icmp eq i32 %5, 0
  br i1 %.not40.i, label %.preheader32.preheader.i, label %.preheader32.us.preheader.i

.preheader32.us.preheader.i:                      ; preds = %.preheader32.lr.ph.i
  %i.h = tail call i32 @llvm.usub.sat.i32(i32 7, i32 %5)
  %i.i = shl nuw nsw i32 %i.h, 2
  %narrow.i = add nuw nsw i32 %i.i, 4
  %i.j = zext nneg i32 %narrow.i to i64
  %wide.trip.count53.i = zext i32 %2 to i64
  %wide.trip.count.i = zext i32 %5 to i64         ; 6 uses
  %i.k = add nsw i64 %wide.trip.count.i, -1       ; 3 uses
  %min.iters.check = icmp ult i32 %5, 20
  %i.l = trunc i64 %i.k to i32
  %i.m = trunc i64 %i.k to i32
  %i.n = icmp ugt i64 %i.k, 4294967295
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 4 uses
  %ind.escape = add nsw i64 %n.vec, -1            ; 2 uses
  %i.o = trunc i64 %ind.escape to i32
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader32.us.i

.preheader32.preheader.i:                         ; preds = %.preheader32.lr.ph.i
  %wide.trip.count62.i = zext i32 %2 to i64       ; 2 uses
  %xtraiter379 = and i64 %wide.trip.count62.i, 3  ; 3 uses
  %i.p = icmp ult i32 %2, 4
  br i1 %i.p, label %.preheader32.i.epil.preheader, label %.preheader32.preheader.i.new

.preheader32.preheader.i.new:                     ; preds = %.preheader32.preheader.i
  %unroll_iter = and i64 %wide.trip.count62.i, 4294967292
  br label %.preheader32.i

.preheader32.us.i:                                ; preds = %._crit_edge.us.i, %.preheader32.us.preheader.i
  %indvars.iv50.i = phi i64 [ 0, %.preheader32.us.preheader.i ], [ %indvars.iv.next51.i, %._crit_edge.us.i ] ; 6 uses
  %i.q = trunc nuw i64 %indvars.iv50.i to i32     ; 2 uses
  %i.r = shl i32 %i.q, 3                          ; 7 uses
  %i.s = mul i32 %4, %i.q                         ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader32.us.i
  %i.t = trunc i64 %indvars.iv50.i to i32
  %i.u = mul i32 %4, %i.t
  %i.v = zext i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = add i64 %i.w, %i.a
  %i.y = shl i64 %indvars.iv50.i, 5
  %i.z = and i64 %i.y, 17179869152
  %i.aa = add i64 %i.z, %i.b
  %i.ab = trunc i64 %indvars.iv50.i to i32
  %i.ac = mul i32 %4, %i.ab
  %indvars.iv50.i.tr = trunc i64 %indvars.iv50.i to i32
  %i.ad = shl i32 %indvars.iv50.i.tr, 3
  %i.ae = xor i32 %i.ad, -1
  %i.af = icmp ult i32 %i.ae, %i.l
  %i.ag = xor i32 %i.ac, -1
  %i.ah = icmp ult i32 %i.ag, %i.m
  %i.ai = or i1 %i.ah, %i.n
  %i.aj = or i1 %i.af, %i.ai
  %i.ak = sub i64 %i.x, %i.aa
  %diff.check = icmp ugt i64 %i.ak, -32
  %or.cond = select i1 %i.aj, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.al = trunc i64 %index to i32                 ; 2 uses
  %i.am = add i32 %i.s, %i.al
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load = load <4 x i32>, ptr %i.ao, align 4, !tbaa !3
  %wide.load373 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !3
  %i.aq = add i32 %i.r, %i.al
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <4 x i32> %wide.load, ptr %i.as, align 4, !tbaa !3
  store <4 x i32> %wide.load373, ptr %i.at, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..preheader31_crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader32.us.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader32.us.i ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.av = trunc nuw i64 %indvars.iv.i.prol to i32 ; 3 uses
  %i.aw = add i32 %i.s, %i.av
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3
  %i.ba = add i32 %i.r, %i.av
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bb
  store i32 %i.az, ptr %i.bc, align 4, !tbaa !3
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !56

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.lcssa378.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.i.prol, %scalar.ph.prol ]
  %.lcssa377.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.av, %scalar.ph.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.bd = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %..preheader31_crit_edge.us.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bf = trunc nuw i64 %indvars.iv.i to i32      ; 2 uses
  %i.bg = add i32 %i.s, %i.bf
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bk = add i32 %i.r, %i.bf
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bl
  store i32 %i.bj, ptr %i.bm, align 4, !tbaa !3
  %i.bn = trunc i64 %indvars.iv.i to i32
  %i.bo = add i32 %i.bn, 1                        ; 2 uses
  %i.bp = add i32 %i.s, %i.bo
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bt = add i32 %i.r, %i.bo
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bu
  store i32 %i.bs, ptr %i.bv, align 4, !tbaa !3
  %i.bw = trunc i64 %indvars.iv.i to i32
  %i.bx = add i32 %i.bw, 2                        ; 2 uses
  %i.by = add i32 %i.s, %i.bx
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  %i.cc = add i32 %i.r, %i.bx
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cd
  store i32 %i.cb, ptr %i.ce, align 4, !tbaa !3
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.cf = trunc nuw i64 %indvars.iv.next.i.2 to i32 ; 3 uses
  %i.cg = add i32 %i.s, %i.cf
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = add i32 %i.r, %i.cf
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cl
  store i32 %i.cj, ptr %i.cm, align 4, !tbaa !3
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %..preheader31_crit_edge.us.i, label %scalar.ph, !llvm.loop !58

._crit_edge.us.i:                                 ; preds = %.lr.ph37.us.i, %..preheader31_crit_edge.us.i
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1 ; 2 uses
  %exitcond54.not.i = icmp eq i64 %indvars.iv.next51.i, %wide.trip.count53.i
  br i1 %exitcond54.not.i, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.preheader32.us.i, !llvm.loop !59

..preheader31_crit_edge.us.i:                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.i.lcssa = phi i64 [ %ind.escape, %middle.block ], [ %indvars.iv.i.lcssa378.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next.i.2, %scalar.ph ]
  %.lcssa371 = phi i32 [ %i.o, %middle.block ], [ %.lcssa377.unr, %scalar.ph.prol.loopexit ], [ %i.cf, %scalar.ph ]
  %i.cn = icmp samesign ult i64 %indvars.iv.i.lcssa, 7
  br i1 %i.cn, label %.lr.ph37.us.i, label %._crit_edge.us.i

.lr.ph37.us.i:                                    ; preds = %..preheader31_crit_edge.us.i
  %i.co = or disjoint i32 %i.r, 1
  %i.cp = add nuw i32 %i.co, %.lcssa371
  %i.cq = zext i32 %i.cp to i64
  %i.cr = shl nuw nsw i64 %i.cq, 2
  %scevgep.i = getelementptr i8, ptr %1, i64 %i.cr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.j, i1 false), !tbaa !3
  br label %._crit_edge.us.i

.preheader.i:                                     ; preds = %bb.a
  br i1 %.not41.i, label %opj_dwt_fetch_cols_vertical_pass.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count67.i = zext i32 %2 to i64       ; 2 uses
  %xtraiter382 = and i64 %wide.trip.count67.i, 1
  %i.cs = icmp eq i32 %2, 1
  br i1 %i.cs, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter386 = and i64 %wide.trip.count67.i, 4294967294
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv64.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next65.i.1, %.lr.ph.i ] ; 4 uses
  %niter387 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter387.next.1, %.lr.ph.i ]
  %i.ct = trunc nuw i64 %indvars.iv64.i to i32
  %i.cu = shl nuw nsw i64 %indvars.iv64.i, 3
  %i.cv = and i64 %i.cu, 4294967280
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cv
  %i.cx = mul i32 %4, %i.ct
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cy
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.cw, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.cz, i64 32, i1 false)
  %indvars.iv.next65.i = or disjoint i64 %indvars.iv64.i, 1 ; 2 uses
  %i.da = trunc nuw i64 %indvars.iv.next65.i to i32
  %i.db = shl nuw nsw i64 %indvars.iv.next65.i, 3
  %i.dc = and i64 %i.db, 4294967288
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dc
  %i.de = mul i32 %4, %i.da
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.df
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.dd, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.dg, i64 32, i1 false)
  %indvars.iv.next65.i.1 = add nuw nsw i64 %indvars.iv64.i, 2 ; 2 uses
  %niter387.next.1 = add i64 %niter387, 2         ; 2 uses
  %niter387.ncmp.1 = icmp eq i64 %niter387.next.1, %unroll_iter386
  br i1 %niter387.ncmp.1, label %opj_dwt_fetch_cols_vertical_pass.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !60

.preheader32.i:                                   ; preds = %.preheader32.i, %.preheader32.preheader.i.new
  %indvars.iv59.i = phi i64 [ 0, %.preheader32.preheader.i.new ], [ %indvars.iv.next60.i.3, %.preheader32.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader32.preheader.i.new ], [ %niter.next.3, %.preheader32.i ]
  %i.dh = shl nuw nsw i64 %indvars.iv59.i, 5
  %i.di = and i64 %i.dh, 17179869056
  %scevgep55.i = getelementptr nuw i8, ptr %1, i64 %i.di
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i = shl i64 %indvars.iv59.i, 5
  %i.dj = and i64 %indvars.iv.next60.i, 17179869056
  %i.dk = getelementptr nuw i8, ptr %1, i64 %i.dj
  %scevgep55.i.1 = getelementptr nuw i8, ptr %i.dk, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i.1, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i.1 = shl i64 %indvars.iv59.i, 5
  %i.dl = and i64 %indvars.iv.next60.i.1, 17179869056
  %i.dm = getelementptr nuw i8, ptr %1, i64 %i.dl
  %scevgep55.i.2 = getelementptr nuw i8, ptr %i.dm, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i.2, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i.2 = shl i64 %indvars.iv59.i, 5
  %i.dn = and i64 %indvars.iv.next60.i.2, 17179869056
  %i.do = getelementptr nuw i8, ptr %1, i64 %i.dn
  %scevgep55.i.3 = getelementptr nuw i8, ptr %i.do, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i.3, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i.3 = add nuw nsw i64 %indvars.iv59.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %opj_dwt_fetch_cols_vertical_pass.exit.loopexit375.unr-lcssa, label %.preheader32.i, !llvm.loop !59

opj_dwt_fetch_cols_vertical_pass.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod384.not = icmp eq i64 %xtraiter382, 0
  br i1 %lcmp.mod384.not, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %opj_dwt_fetch_cols_vertical_pass.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv64.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next65.i.1, %opj_dwt_fetch_cols_vertical_pass.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod385 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod385)
  %i.dp = trunc nuw i64 %indvars.iv64.i.epil.init to i32
  %i.dq = shl nuw nsw i64 %indvars.iv64.i.epil.init, 3
  %i.dr = and i64 %i.dq, 4294967288
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dr
  %i.dt = mul i32 %4, %i.dp
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.du
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ds, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.dv, i64 32, i1 false)
  br label %opj_dwt_fetch_cols_vertical_pass.exit

opj_dwt_fetch_cols_vertical_pass.exit.loopexit375.unr-lcssa: ; preds = %.preheader32.i
  %lcmp.mod380.not = icmp eq i64 %xtraiter379, 0
  br i1 %lcmp.mod380.not, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.preheader32.i.epil.preheader

.preheader32.i.epil.preheader:                    ; preds = %opj_dwt_fetch_cols_vertical_pass.exit.loopexit375.unr-lcssa, %.preheader32.preheader.i
  %indvars.iv59.i.epil.init = phi i64 [ 0, %.preheader32.preheader.i ], [ %indvars.iv.next60.i.3, %opj_dwt_fetch_cols_vertical_pass.exit.loopexit375.unr-lcssa ]
  %lcmp.mod381 = icmp ne i64 %xtraiter379, 0
  tail call void @llvm.assume(i1 %lcmp.mod381)
  br label %.preheader32.i.epil

.preheader32.i.epil:                              ; preds = %.preheader32.i.epil, %.preheader32.i.epil.preheader
  %indvars.iv59.i.epil = phi i64 [ %indvars.iv59.i.epil.init, %.preheader32.i.epil.preheader ], [ %indvars.iv.next60.i.epil, %.preheader32.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader32.i.epil.preheader ], [ %epil.iter.next, %.preheader32.i.epil ]
  %i.dw = shl nuw nsw i64 %indvars.iv59.i.epil, 5
  %i.dx = and i64 %i.dw, 17179869152
  %scevgep55.i.epil = getelementptr nuw i8, ptr %1, i64 %i.dx
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i.epil, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i.epil = add nuw nsw i64 %indvars.iv59.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter379
  br i1 %epil.iter.cmp.not, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.preheader32.i.epil, !llvm.loop !61

opj_dwt_fetch_cols_vertical_pass.exit:            ; preds = %._crit_edge.us.i, %opj_dwt_fetch_cols_vertical_pass.exit.loopexit375.unr-lcssa, %.preheader32.i.epil, %.lr.ph.i.epil.preheader, %opj_dwt_fetch_cols_vertical_pass.exit.loopexit.unr-lcssa
  %i.dy = icmp eq i32 %2, 1
  br i1 %i.dy, label %bb.b, label %opj_dwt_fetch_cols_vertical_pass.exit.thread

bb.b:                                             ; preds = %opj_dwt_fetch_cols_vertical_pass.exit
  br i1 %.not, label %.loopexit, label %.preheader273.preheader

.preheader273.preheader:                          ; preds = %bb.b
  %i.dz = load <4 x i32>, ptr %1, align 4, !tbaa !3
  %i.ea = shl nsw <4 x i32> %i.dz, splat (i32 1)
  store <4 x i32> %i.ea, ptr %1, align 4, !tbaa !3
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ec = load <4 x i32>, ptr %i.eb, align 4, !tbaa !3
  %i.ed = shl nsw <4 x i32> %i.ec, splat (i32 1)
  store <4 x i32> %i.ed, ptr %i.eb, align 4, !tbaa !3
  br label %.loopexit

opj_dwt_fetch_cols_vertical_pass.exit.thread:     ; preds = %.preheader.i, %.preheader33.i, %opj_dwt_fetch_cols_vertical_pass.exit
  br i1 %.not, label %bb.c, label %.preheader272.preheader

.preheader272.preheader:                          ; preds = %opj_dwt_fetch_cols_vertical_pass.exit.thread
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ef = load <4 x i32>, ptr %i.ee, align 4, !tbaa !3
  %i.eg = load <4 x i32>, ptr %1, align 4, !tbaa !3
  %i.eh = sub nsw <4 x i32> %i.eg, %i.ef
  store <4 x i32> %i.eh, ptr %1, align 4, !tbaa !3
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ek = load <4 x i32>, ptr %i.ej, align 4, !tbaa !3
  %i.el = load <4 x i32>, ptr %i.ei, align 4, !tbaa !3
  %i.em = sub nsw <4 x i32> %i.el, %i.ek
  store <4 x i32> %i.em, ptr %i.ei, align 4, !tbaa !3
  %i.en = icmp ugt i32 %i.d, 3
  br i1 %i.en, label %.lr.ph.preheader, label %bb.i

bb.c:                                             ; preds = %opj_dwt_fetch_cols_vertical_pass.exit.thread
  %i.eo = icmp ugt i32 %i.d, 3
  br i1 %i.eo, label %.lr.ph291.preheader, label %bb.d

.lr.ph291.preheader:                              ; preds = %bb.c
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eq = load <2 x i64>, ptr %i.ep, align 16, !tbaa !62
  %i.er = load <2 x i64>, ptr %1, align 16, !tbaa !62
  %umax336 = tail call i32 @llvm.umax.i32(i32 %i.e, i32 2)
  %i.es = add nsw i32 %umax336, -1
  %wide.trip.count337 = zext nneg i32 %i.es to i64
  br label %.lr.ph291

.lr.ph291:                                        ; preds = %.lr.ph291.preheader, %.lr.ph291
  %indvars.iv331 = phi i64 [ 0, %.lr.ph291.preheader ], [ %indvars.iv.next332, %.lr.ph291 ] ; 2 uses
  %indvars.iv329 = phi i64 [ 1, %.lr.ph291.preheader ], [ %indvars.iv.next330, %.lr.ph291 ] ; 3 uses
  %.0215288 = phi <2 x i64> [ %i.er, %.lr.ph291.preheader ], [ %i.ew, %.lr.ph291 ]
  %.0216287 = phi <2 x i64> [ %i.eq, %.lr.ph291.preheader ], [ %i.ey, %.lr.ph291 ]
  %i.et = shl i64 %indvars.iv329, 4
  %i.eu = and i64 %i.et, 4294967280
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eu ; 2 uses
  %i.ew = load <2 x i64>, ptr %i.ev, align 16, !tbaa !62 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ey = load <2 x i64>, ptr %i.ex, align 16, !tbaa !62 ; 2 uses
  %i.ez = shl i64 %indvars.iv331, 4
  %i.fa = and i64 %i.ez, 4294967280
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fa ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 32 ; 2 uses
  %i.fd = load <4 x i32>, ptr %i.fc, align 16, !tbaa !62
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 48 ; 2 uses
  %i.ff = load <4 x i32>, ptr %i.fe, align 16, !tbaa !62
  %i.fg = bitcast <2 x i64> %.0215288 to <4 x i32>
  %i.fh = bitcast <2 x i64> %i.ew to <4 x i32>
  %i.fi = add <4 x i32> %i.fh, %i.fg
  %i.fj = ashr <4 x i32> %i.fi, splat (i32 1)
  %i.fk = sub <4 x i32> %i.fd, %i.fj
  %i.fl = bitcast <2 x i64> %.0216287 to <4 x i32>
  %i.fm = bitcast <2 x i64> %i.ey to <4 x i32>
  %i.fn = add <4 x i32> %i.fm, %i.fl
  %i.fo = ashr <4 x i32> %i.fn, splat (i32 1)
  %i.fp = sub <4 x i32> %i.ff, %i.fo
  store <4 x i32> %i.fk, ptr %i.fc, align 16, !tbaa !62
  store <4 x i32> %i.fp, ptr %i.fe, align 16, !tbaa !62
  %indvars.iv.next330 = add nuw nsw i64 %indvars.iv329, 1
  %indvars.iv.next332 = add nuw nsw i64 %indvars.iv331, 1 ; 2 uses
  %exitcond338.not = icmp eq i64 %indvars.iv.next332, %wide.trip.count337
  br i1 %exitcond338.not, label %._crit_edge292, label %.lr.ph291, !llvm.loop !63

._crit_edge292:                                   ; preds = %.lr.ph291
  %i.fq = shl i64 %indvars.iv329, 4
  %i.fr = and i64 %i.fq, 4294967280
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge292, %bb.c
  %.1213 = phi i64 [ %i.fr, %._crit_edge292 ], [ 0, %bb.c ] ; 4 uses
  %i.fs = and i32 %2, 1
  %i.ft = icmp eq i32 %i.fs, 0                    ; 2 uses
  br i1 %i.ft, label %.preheader266.preheader, label %.loopexit267

.preheader266.preheader:                          ; preds = %bb.d
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.1213
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.1213
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 32 ; 2 uses
  %i.fx = load <4 x i32>, ptr %i.fu, align 4, !tbaa !3
  %i.fy = load <4 x i32>, ptr %i.fw, align 4, !tbaa !3
  %i.fz = sub nsw <4 x i32> %i.fy, %i.fx
  store <4 x i32> %i.fz, ptr %i.fw, align 4, !tbaa !3
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.1213
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.1213
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 48 ; 2 uses
  %i.ge = load <4 x i32>, ptr %i.gb, align 4, !tbaa !3
  %i.gf = load <4 x i32>, ptr %i.gd, align 4, !tbaa !3
  %i.gg = sub nsw <4 x i32> %i.gf, %i.ge
  store <4 x i32> %i.gg, ptr %i.gd, align 4, !tbaa !3
  br label %.loopexit267

.loopexit267:                                     ; preds = %.preheader266.preheader, %bb.d
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.gi = load <4 x i32>, ptr %i.gh, align 4, !tbaa !3
  %i.gj = shl nsw <4 x i32> %i.gi, splat (i32 1)
  %i.gk = add nsw <4 x i32> %i.gj, splat (i32 2)
  %i.gl = ashr <4 x i32> %i.gk, splat (i32 2)
  %i.gm = load <4 x i32>, ptr %1, align 4, !tbaa !3
  %i.gn = add nsw <4 x i32> %i.gl, %i.gm
  store <4 x i32> %i.gn, ptr %1, align 4, !tbaa !3
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gq = load <4 x i32>, ptr %i.gp, align 4, !tbaa !3
  %i.gr = shl nsw <4 x i32> %i.gq, splat (i32 1)
  %i.gs = add nsw <4 x i32> %i.gr, splat (i32 2)
  %i.gt = ashr <4 x i32> %i.gs, splat (i32 2)
  %i.gu = load <4 x i32>, ptr %i.go, align 4, !tbaa !3
  %i.gv = add nsw <4 x i32> %i.gt, %i.gu
  store <4 x i32> %i.gv, ptr %i.go, align 4, !tbaa !3
  %i.gw = icmp ugt i32 %i.f, 1
  br i1 %i.gw, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.loopexit267
  %i.gx = load <2 x i64>, ptr %i.gh, align 16, !tbaa !62
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gz = load <2 x i64>, ptr %i.gy, align 16, !tbaa !62
  %wide.trip.count350 = zext i32 %i.f to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.f
  %indvars.iv347 = phi i64 [ 1, %bb.e ], [ %indvars.iv.next348, %bb.f ] ; 2 uses
  %.0219297 = phi <2 x i64> [ %i.gx, %bb.e ], [ %i.hf, %bb.f ]
  %.0220296 = phi <2 x i64> [ %i.gz, %bb.e ], [ %i.hh, %bb.f ]
  %i.ha = trunc nuw i64 %indvars.iv347 to i32
  %i.hb = shl i32 %i.ha, 4                        ; 2 uses
  %i.hc = or disjoint i32 %i.hb, 8
  %i.hd = zext i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hd ; 2 uses
  %i.hf = load <2 x i64>, ptr %i.he, align 16, !tbaa !62 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hh = load <2 x i64>, ptr %i.hg, align 16, !tbaa !62 ; 2 uses
  %i.hi = zext i32 %i.hb to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hi ; 3 uses
  %i.hk = load <4 x i32>, ptr %i.hj, align 16, !tbaa !62
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 16 ; 2 uses
  %i.hm = load <4 x i32>, ptr %i.hl, align 16, !tbaa !62
  %i.hn = bitcast <2 x i64> %.0219297 to <4 x i32>
  %i.ho = bitcast <2 x i64> %i.hf to <4 x i32>
end_hunk_0
begin_hunk_1_@opj_dwt_decode:bb.a
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.fe) #15
  tail call void @opj_aligned_free(ptr noundef nonnull %i.hg) #15
  br label %opj_dwt_decode_partial_tile.exit

bb.bs:                                            ; preds = %bb.bi
  %i.ats = add nuw i32 %.0172299.i, 1             ; 2 uses
  %exitcond309.not.i = icmp eq i32 %i.ats, %2
  br i1 %exitcond309.not.i, label %._crit_edge.i18, label %bb.x, !llvm.loop !167

._crit_edge.i18:                                  ; preds = %bb.bs, %.preheader294.i
  tail call void @opj_aligned_free(ptr noundef nonnull %i.hg) #15
  %i.att = getelementptr inbounds nuw i8, ptr %i.ed, i64 176
  %i.atu = load i32, ptr %i.att, align 8, !tbaa !129 ; 2 uses
  %i.atv = load i32, ptr %i.ed, align 8, !tbaa !29 ; 2 uses
  %i.atw = sub i32 %i.atu, %i.atv
  %i.atx = getelementptr inbounds nuw i8, ptr %i.ed, i64 180
  %i.aty = load i32, ptr %i.atx, align 4, !tbaa !130
  %i.atz = load i32, ptr %i.ez, align 4, !tbaa !31 ; 2 uses
  %i.aua = sub i32 %i.aty, %i.atz
  %i.aub = getelementptr inbounds nuw i8, ptr %i.ed, i64 184
  %i.auc = load i32, ptr %i.aub, align 8, !tbaa !131 ; 2 uses
  %i.aud = sub i32 %i.auc, %i.atv
  %i.aue = getelementptr inbounds nuw i8, ptr %i.ed, i64 188
  %i.auf = load i32, ptr %i.aue, align 4, !tbaa !132
  %i.aug = sub i32 %i.auf, %i.atz
  %i.auh = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aui = load ptr, ptr %i.auh, align 8, !tbaa !133
  %i.auj = sub i32 %i.auc, %i.atu
  %i.auk = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.fe, i32 noundef %i.atw, i32 noundef %i.aua, i32 noundef %i.aud, i32 noundef %i.aug, ptr noundef %i.aui, i32 noundef 1, i32 noundef %i.auj, i32 noundef 1) #15 ; 0 uses
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.fe) #15
  br label %opj_dwt_decode_partial_tile.exit

opj_dwt_decode_partial_tile.exit:                 ; preds = %._crit_edge.i18, %.thread288.i, %bb.bg, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %opj_dwt_decode_tile.exit
  %.0 = phi i32 [ %.10.i, %opj_dwt_decode_tile.exit ], [ 1, %._crit_edge.i18 ], [ 1, %bb.r ], [ 1, %bb.v ], [ 0, %bb.w ], [ 0, %bb.t ], [ 1, %bb.s ], [ 0, %.thread288.i ], [ 0, %bb.bg ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define double @opj_dwt_getnorm(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %1, 0                        ; 2 uses
  %i.b = icmp ugt i32 %0, 9
  %or.cond = and i1 %i.b, %i.a
  %i.c = tail call i32 @llvm.umin.i32(i32 %0, i32 8)
  %spec.store.select = select i1 %i.a, i32 %0, i32 %i.c
  %i.d = zext i32 %spec.store.select to i64
  %.0 = select i1 %or.cond, i64 9, i64 %i.d
  %i.e = zext i32 %1 to i64
  %i.f = getelementptr inbounds nuw [80 x i8], ptr @opj_dwt_norms, i64 %i.e
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.0
  %i.h = load double, ptr %i.g, align 8, !tbaa !168
  ret double %i.h
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @opj_dwt_encode_real(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = tail call fastcc i32 @opj_dwt_encode_procedure(ptr noundef %i.b, ptr noundef %1, ptr noundef nonnull @opj_dwt_encode_and_deinterleave_v_real, ptr noundef nonnull @opj_dwt_encode_and_deinterleave_h_one_row_real)
  ret i32 %i.c
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @opj_dwt_encode_and_deinterleave_v_real(ptr nofree noundef captures(none) %0, ptr nofree noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %.not = icmp ne i32 %3, 0                       ; 8 uses
  %i.c = zext i1 %.not to i32
  %i.d = add i32 %2, %i.c                         ; 3 uses
  %i.e = lshr i32 %i.d, 1                         ; 16 uses
  %i.f = sub i32 %2, %i.e                         ; 12 uses
  %i.g = icmp eq i32 %2, 1
  br i1 %i.g, label %opj_dwt_deinterleave_v_cols.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %5, 8                        ; 3 uses
  %.not41.i = icmp eq i32 %2, 0                   ; 2 uses
  br i1 %i.h, label %.preheader.i, label %.preheader33.i

.preheader33.i:                                   ; preds = %bb.b
  br i1 %.not41.i, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.preheader32.lr.ph.i

.preheader32.lr.ph.i:                             ; preds = %.preheader33.i
  %.not40.i = icmp eq i32 %5, 0
  br i1 %.not40.i, label %.preheader32.preheader.i, label %.preheader32.us.preheader.i

.preheader32.us.preheader.i:                      ; preds = %.preheader32.lr.ph.i
  %i.i = tail call i32 @llvm.usub.sat.i32(i32 7, i32 %5)
  %i.j = shl nuw nsw i32 %i.i, 2
  %narrow.i = add nuw nsw i32 %i.j, 4
  %i.k = zext nneg i32 %narrow.i to i64
  %wide.trip.count53.i = zext i32 %2 to i64
  %wide.trip.count.i = zext i32 %5 to i64         ; 6 uses
  %i.l = add nsw i64 %wide.trip.count.i, -1       ; 3 uses
  %min.iters.check = icmp ult i32 %5, 20
  %i.m = trunc i64 %i.l to i32
  %i.n = trunc i64 %i.l to i32
  %i.o = icmp ugt i64 %i.l, 4294967295
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 4 uses
  %ind.escape = add nsw i64 %n.vec, -1            ; 2 uses
  %i.p = trunc i64 %ind.escape to i32
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader32.us.i

.preheader32.preheader.i:                         ; preds = %.preheader32.lr.ph.i
  %wide.trip.count62.i = zext i32 %2 to i64       ; 2 uses
  %xtraiter177 = and i64 %wide.trip.count62.i, 3  ; 3 uses
  %i.q = icmp ult i32 %2, 4
  br i1 %i.q, label %.preheader32.i.epil.preheader, label %.preheader32.preheader.i.new

.preheader32.preheader.i.new:                     ; preds = %.preheader32.preheader.i
  %unroll_iter = and i64 %wide.trip.count62.i, 4294967292
  br label %.preheader32.i

.preheader32.us.i:                                ; preds = %._crit_edge.us.i, %.preheader32.us.preheader.i
  %indvars.iv50.i = phi i64 [ 0, %.preheader32.us.preheader.i ], [ %indvars.iv.next51.i, %._crit_edge.us.i ] ; 6 uses
  %i.r = trunc nuw i64 %indvars.iv50.i to i32     ; 2 uses
  %i.s = shl i32 %i.r, 3                          ; 7 uses
  %i.t = mul i32 %4, %i.r                         ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader32.us.i
  %i.u = trunc i64 %indvars.iv50.i to i32
  %i.v = mul i32 %4, %i.u
  %i.w = zext i32 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 2
  %i.y = add i64 %i.x, %i.a
  %i.z = shl i64 %indvars.iv50.i, 5
  %i.aa = and i64 %i.z, 17179869152
  %i.ab = add i64 %i.aa, %i.b
  %i.ac = trunc i64 %indvars.iv50.i to i32
  %i.ad = mul i32 %4, %i.ac
  %indvars.iv50.i.tr = trunc i64 %indvars.iv50.i to i32
  %i.ae = shl i32 %indvars.iv50.i.tr, 3
  %i.af = xor i32 %i.ae, -1
  %i.ag = icmp ult i32 %i.af, %i.m
  %i.ah = xor i32 %i.ad, -1
  %i.ai = icmp ult i32 %i.ah, %i.n
  %i.aj = or i1 %i.ai, %i.o
  %i.ak = or i1 %i.ag, %i.aj
  %i.al = sub i64 %i.y, %i.ab
  %diff.check = icmp ugt i64 %i.al, -32
  %or.cond = select i1 %i.ak, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.am = trunc i64 %index to i32                 ; 2 uses
  %i.an = add i32 %i.t, %i.am
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load = load <4 x i32>, ptr %i.ap, align 4, !tbaa !3
  %wide.load171 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !3
  %i.ar = add i32 %i.s, %i.am
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <4 x i32> %wide.load, ptr %i.at, align 4, !tbaa !3
  store <4 x i32> %wide.load171, ptr %i.au, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !170

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..preheader31_crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader32.us.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader32.us.i ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.aw = trunc nuw i64 %indvars.iv.i.prol to i32 ; 3 uses
  %i.ax = add i32 %i.t, %i.aw
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bb = add i32 %i.s, %i.aw
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bc
  store i32 %i.ba, ptr %i.bd, align 4, !tbaa !3
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !171

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.lcssa176.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.i.prol, %scalar.ph.prol ]
  %.lcssa175.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.aw, %scalar.ph.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.be = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %..preheader31_crit_edge.us.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bg = trunc nuw i64 %indvars.iv.i to i32      ; 2 uses
  %i.bh = add i32 %i.t, %i.bg
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bl = add i32 %i.s, %i.bg
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bm
  store i32 %i.bk, ptr %i.bn, align 4, !tbaa !3
  %i.bo = trunc i64 %indvars.iv.i to i32
  %i.bp = add i32 %i.bo, 1                        ; 2 uses
  %i.bq = add i32 %i.t, %i.bp
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bu = add i32 %i.s, %i.bp
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bv
  store i32 %i.bt, ptr %i.bw, align 4, !tbaa !3
  %i.bx = trunc i64 %indvars.iv.i to i32
  %i.by = add i32 %i.bx, 2                        ; 2 uses
  %i.bz = add i32 %i.t, %i.by
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = add i32 %i.s, %i.by
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ce
  store i32 %i.cc, ptr %i.cf, align 4, !tbaa !3
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.cg = trunc nuw i64 %indvars.iv.next.i.2 to i32 ; 3 uses
  %i.ch = add i32 %i.t, %i.cg
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !3
  %i.cl = add i32 %i.s, %i.cg
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cm
  store i32 %i.ck, ptr %i.cn, align 4, !tbaa !3
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %..preheader31_crit_edge.us.i, label %scalar.ph, !llvm.loop !172

._crit_edge.us.i:                                 ; preds = %.lr.ph37.us.i, %..preheader31_crit_edge.us.i
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1 ; 2 uses
  %exitcond54.not.i = icmp eq i64 %indvars.iv.next51.i, %wide.trip.count53.i
  br i1 %exitcond54.not.i, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.preheader32.us.i, !llvm.loop !59

..preheader31_crit_edge.us.i:                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.i.lcssa = phi i64 [ %ind.escape, %middle.block ], [ %indvars.iv.i.lcssa176.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next.i.2, %scalar.ph ]
  %.lcssa = phi i32 [ %i.p, %middle.block ], [ %.lcssa175.unr, %scalar.ph.prol.loopexit ], [ %i.cg, %scalar.ph ]
  %i.co = icmp samesign ult i64 %indvars.iv.i.lcssa, 7
  br i1 %i.co, label %.lr.ph37.us.i, label %._crit_edge.us.i

.lr.ph37.us.i:                                    ; preds = %..preheader31_crit_edge.us.i
  %i.cp = or disjoint i32 %i.s, 1
  %i.cq = add nuw i32 %i.cp, %.lcssa
  %i.cr = zext i32 %i.cq to i64
  %i.cs = shl nuw nsw i64 %i.cr, 2
  %scevgep.i = getelementptr i8, ptr %1, i64 %i.cs
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.k, i1 false), !tbaa !3
  br label %._crit_edge.us.i

.preheader.i:                                     ; preds = %bb.b
  br i1 %.not41.i, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count67.i = zext i32 %2 to i64       ; 2 uses
  %xtraiter180 = and i64 %wide.trip.count67.i, 1
  %unroll_iter184 = and i64 %wide.trip.count67.i, 4294967294
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv64.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next65.i.1, %.lr.ph.i ] ; 4 uses
  %niter185 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %niter185.next.1, %.lr.ph.i ]
  %i.ct = trunc nuw i64 %indvars.iv64.i to i32
  %i.cu = shl nuw nsw i64 %indvars.iv64.i, 3
  %i.cv = and i64 %i.cu, 4294967280
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cv
  %i.cx = mul i32 %4, %i.ct
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cy
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.cw, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.cz, i64 32, i1 false)
  %indvars.iv.next65.i = or disjoint i64 %indvars.iv64.i, 1 ; 2 uses
  %i.da = trunc nuw i64 %indvars.iv.next65.i to i32
  %i.db = shl nuw nsw i64 %indvars.iv.next65.i, 3
  %i.dc = and i64 %i.db, 4294967288
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dc
  %i.de = mul i32 %4, %i.da
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.df
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.dd, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.dg, i64 32, i1 false)
  %indvars.iv.next65.i.1 = add nuw nsw i64 %indvars.iv64.i, 2 ; 3 uses
  %niter185.next.1 = add i64 %niter185, 2         ; 2 uses
  %niter185.ncmp.1 = icmp eq i64 %niter185.next.1, %unroll_iter184
  br i1 %niter185.ncmp.1, label %opj_dwt_fetch_cols_vertical_pass.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !60

.preheader32.i:                                   ; preds = %.preheader32.i, %.preheader32.preheader.i.new
  %indvars.iv59.i = phi i64 [ 0, %.preheader32.preheader.i.new ], [ %indvars.iv.next60.i.3, %.preheader32.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader32.preheader.i.new ], [ %niter.next.3, %.preheader32.i ]
  %i.dh = shl nuw nsw i64 %indvars.iv59.i, 5
  %i.di = and i64 %i.dh, 17179869056
  %scevgep55.i = getelementptr nuw i8, ptr %1, i64 %i.di
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i = shl i64 %indvars.iv59.i, 5
  %i.dj = and i64 %indvars.iv.next60.i, 17179869056
  %i.dk = getelementptr nuw i8, ptr %1, i64 %i.dj
  %scevgep55.i.1 = getelementptr nuw i8, ptr %i.dk, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i.1, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i.1 = shl i64 %indvars.iv59.i, 5
  %i.dl = and i64 %indvars.iv.next60.i.1, 17179869056
  %i.dm = getelementptr nuw i8, ptr %1, i64 %i.dl
  %scevgep55.i.2 = getelementptr nuw i8, ptr %i.dm, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i.2, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i.2 = shl i64 %indvars.iv59.i, 5
  %i.dn = and i64 %indvars.iv.next60.i.2, 17179869056
  %i.do = getelementptr nuw i8, ptr %1, i64 %i.dn
  %scevgep55.i.3 = getelementptr nuw i8, ptr %i.do, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i.3, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i.3 = add nuw nsw i64 %indvars.iv59.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %opj_dwt_fetch_cols_vertical_pass.exit.loopexit173.unr-lcssa, label %.preheader32.i, !llvm.loop !59

opj_dwt_fetch_cols_vertical_pass.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod182.not = icmp eq i64 %xtraiter180, 0
  br i1 %lcmp.mod182.not, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %opj_dwt_fetch_cols_vertical_pass.exit.loopexit.unr-lcssa
  %lcmp.mod183 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod183)
  %i.dp = trunc nuw i64 %indvars.iv.next65.i.1 to i32
  %i.dq = shl nuw nsw i64 %indvars.iv.next65.i.1, 3
  %i.dr = and i64 %i.dq, 4294967288
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dr
  %i.dt = mul i32 %4, %i.dp
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.du
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ds, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.dv, i64 32, i1 false)
  br label %opj_dwt_fetch_cols_vertical_pass.exit

opj_dwt_fetch_cols_vertical_pass.exit.loopexit173.unr-lcssa: ; preds = %.preheader32.i
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
  br i1 %lcmp.mod178.not, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.preheader32.i.epil.preheader

.preheader32.i.epil.preheader:                    ; preds = %opj_dwt_fetch_cols_vertical_pass.exit.loopexit173.unr-lcssa, %.preheader32.preheader.i
  %indvars.iv59.i.epil.init = phi i64 [ 0, %.preheader32.preheader.i ], [ %indvars.iv.next60.i.3, %opj_dwt_fetch_cols_vertical_pass.exit.loopexit173.unr-lcssa ]
  %lcmp.mod179 = icmp ne i64 %xtraiter177, 0
  tail call void @llvm.assume(i1 %lcmp.mod179)
  br label %.preheader32.i.epil

.preheader32.i.epil:                              ; preds = %.preheader32.i.epil, %.preheader32.i.epil.preheader
  %indvars.iv59.i.epil = phi i64 [ %indvars.iv59.i.epil.init, %.preheader32.i.epil.preheader ], [ %indvars.iv.next60.i.epil, %.preheader32.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader32.i.epil.preheader ], [ %epil.iter.next, %.preheader32.i.epil ]
  %i.dw = shl nuw nsw i64 %indvars.iv59.i.epil, 5
  %i.dx = and i64 %i.dw, 17179869152
  %scevgep55.i.epil = getelementptr nuw i8, ptr %1, i64 %i.dx
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i.epil, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i.epil = add nuw nsw i64 %indvars.iv59.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter177
  br i1 %epil.iter.cmp.not, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.preheader32.i.epil, !llvm.loop !173

opj_dwt_fetch_cols_vertical_pass.exit:            ; preds = %._crit_edge.us.i, %opj_dwt_fetch_cols_vertical_pass.exit.loopexit173.unr-lcssa, %.preheader32.i.epil, %.lr.ph.i.epil.preheader, %opj_dwt_fetch_cols_vertical_pass.exit.loopexit.unr-lcssa, %.preheader33.i, %.preheader.i
  %not..not145 = xor i1 %.not, true
  %..neg = sext i1 %not..not145 to i32
  %.68.neg = sext i1 %.not to i32
  %i.dy = select i1 %.not, i64 0, i64 8
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dy ; 17 uses
  %i.ea = select i1 %.not, i64 8, i64 0
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ea ; 17 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32 ; 6 uses
  %i.ed = add nsw i32 %i.e, %.68.neg
  %i.ee = tail call noundef i32 @llvm.smin.i32(i32 %i.f, i32 %i.ed) ; 2 uses
  %i.ef = tail call noundef i32 @llvm.umin.i32(i32 %i.f, i32 %i.ee) ; 5 uses
  %.not.i = icmp eq i32 %i.ef, 0                  ; 2 uses
  br i1 %.not.i, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %opj_dwt_fetch_cols_vertical_pass.exit
  %i.eg = load <4 x float>, ptr %i.eb, align 16, !tbaa !62
  %i.eh = load <4 x float>, ptr %i.dz, align 16, !tbaa !62
  %i.ei = load <4 x float>, ptr %i.ec, align 16, !tbaa !62
  %i.ej = fadd <4 x float> %i.eh, %i.ei
  %i.ek = fmul <4 x float> %i.ej, splat (float f0x3FCB0673)
  %i.el = fsub <4 x float> %i.eg, %i.ek
  store <4 x float> %i.el, ptr %i.eb, align 16, !tbaa !62
  %i.em = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  %i.en = load <4 x float>, ptr %i.em, align 16, !tbaa !62
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ep = load <4 x float>, ptr %i.eo, align 16, !tbaa !62
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %i.er = load <4 x float>, ptr %i.eq, align 16, !tbaa !62
  %i.es = fadd <4 x float> %i.ep, %i.er
  %i.et = fmul <4 x float> %i.es, splat (float f0x3FCB0673)
  %i.eu = fsub <4 x float> %i.en, %i.et
  store <4 x float> %i.eu, ptr %i.em, align 16, !tbaa !62
  %.04244.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 96 ; 2 uses
  %.not48.i = icmp eq i32 %i.ef, 1
  br i1 %.not48.i, label %.loopexit.i, label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %bb.c, %.lr.ph.i69
  %.04247.i = phi ptr [ %.042.i, %.lr.ph.i69 ], [ %.04244.i, %bb.c ] ; 3 uses
  %.046.i = phi i32 [ %i.fl, %.lr.ph.i69 ], [ 1, %bb.c ]
  %.pn45.i = phi ptr [ %.04247.i, %.lr.ph.i69 ], [ %i.ec, %bb.c ] ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.pn45.i, i64 32 ; 2 uses
  %i.ew = load <4 x float>, ptr %i.ev, align 16, !tbaa !62
  %i.ex = load <4 x float>, ptr %.pn45.i, align 16, !tbaa !62
  %i.ey = load <4 x float>, ptr %.04247.i, align 16, !tbaa !62
  %i.ez = fadd <4 x float> %i.ex, %i.ey
  %i.fa = fmul <4 x float> %i.ez, splat (float f0x3FCB0673)
  %i.fb = fsub <4 x float> %i.ew, %i.fa
  store <4 x float> %i.fb, ptr %i.ev, align 16, !tbaa !62
  %i.fc = getelementptr inbounds nuw i8, ptr %.pn45.i, i64 48 ; 2 uses
  %i.fd = load <4 x float>, ptr %i.fc, align 16, !tbaa !62
  %i.fe = getelementptr inbounds nuw i8, ptr %.pn45.i, i64 16
  %i.ff = load <4 x float>, ptr %i.fe, align 16, !tbaa !62
  %i.fg = getelementptr inbounds nuw i8, ptr %.pn45.i, i64 80
  %i.fh = load <4 x float>, ptr %i.fg, align 16, !tbaa !62
  %i.fi = fadd <4 x float> %i.ff, %i.fh
  %i.fj = fmul <4 x float> %i.fi, splat (float f0x3FCB0673)
  %i.fk = fsub <4 x float> %i.fd, %i.fj
  store <4 x float> %i.fk, ptr %i.fc, align 16, !tbaa !62
  %i.fl = add nuw i32 %.046.i, 1                  ; 2 uses
  %.042.i = getelementptr inbounds nuw i8, ptr %.04247.i, i64 64 ; 2 uses
  %exitcond.not.i70 = icmp eq i32 %i.fl, %i.ef
  br i1 %exitcond.not.i70, label %.loopexit.i, label %.lr.ph.i69, !llvm.loop !174

.loopexit.i:                                      ; preds = %.lr.ph.i69, %bb.c, %opj_dwt_fetch_cols_vertical_pass.exit
  %.1.i = phi ptr [ %i.ec, %opj_dwt_fetch_cols_vertical_pass.exit ], [ %.04244.i, %bb.c ], [ %.042.i, %.lr.ph.i69 ] ; 4 uses
  %i.fm = icmp ult i32 %i.ee, %i.f                ; 2 uses
  br i1 %i.fm, label %bb.d, label %opj_v8dwt_encode_step2.exit

bb.d:                                             ; preds = %.loopexit.i
  %i.fn = getelementptr inbounds i8, ptr %.1.i, i64 -32 ; 2 uses
  %i.fo = load <4 x float>, ptr %i.fn, align 16, !tbaa !62
  %i.fp = getelementptr inbounds i8, ptr %.1.i, i64 -64
  %i.fq = load <4 x float>, ptr %i.fp, align 16, !tbaa !62
  %i.fr = fmul <4 x float> %i.fq, splat (float f0x404B0673)
  %i.fs = fsub <4 x float> %i.fo, %i.fr
  store <4 x float> %i.fs, ptr %i.fn, align 16, !tbaa !62
  %i.ft = getelementptr inbounds i8, ptr %.1.i, i64 -16 ; 2 uses
  %i.fu = load <4 x float>, ptr %i.ft, align 16, !tbaa !62
  %i.fv = getelementptr inbounds i8, ptr %.1.i, i64 -48
  %i.fw = load <4 x float>, ptr %i.fv, align 16, !tbaa !62
  %i.fx = fmul <4 x float> %i.fw, splat (float f0x404B0673)
  %i.fy = fsub <4 x float> %i.fu, %i.fx
  store <4 x float> %i.fy, ptr %i.ft, align 16, !tbaa !62
  br label %opj_v8dwt_encode_step2.exit

opj_v8dwt_encode_step2.exit:                      ; preds = %.loopexit.i, %bb.d
  %i.fz = getelementptr inbounds nuw i8, ptr %i.dz, i64 32 ; 6 uses
  %i.ga = add i32 %i.f, %..neg
  %i.gb = tail call noundef i32 @llvm.smin.i32(i32 %i.e, i32 %i.ga) ; 2 uses
  %i.gc = tail call noundef i32 @llvm.umin.i32(i32 %i.e, i32 %i.gb) ; 5 uses
  %.not.i71 = icmp eq i32 %i.gc, 0                ; 2 uses
  br i1 %.not.i71, label %.loopexit.i80, label %bb.e

bb.e:                                             ; preds = %opj_v8dwt_encode_step2.exit
  %i.gd = load <4 x float>, ptr %i.dz, align 16, !tbaa !62
  %i.ge = load <4 x float>, ptr %i.eb, align 16, !tbaa !62
  %i.gf = load <4 x float>, ptr %i.fz, align 16, !tbaa !62
  %i.gg = fadd <4 x float> %i.ge, %i.gf
  %i.gh = fmul <4 x float> %i.gg, splat (float f0x3D5901AE)
  %i.gi = fsub <4 x float> %i.gd, %i.gh
  store <4 x float> %i.gi, ptr %i.dz, align 16, !tbaa !62
  %i.gj = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  %i.gk = load <4 x float>, ptr %i.gj, align 16, !tbaa !62
  %i.gl = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.gm = load <4 x float>, ptr %i.gl, align 16, !tbaa !62
  %i.gn = getelementptr inbounds nuw i8, ptr %i.dz, i64 48
  %i.go = load <4 x float>, ptr %i.gn, align 16, !tbaa !62
  %i.gp = fadd <4 x float> %i.gm, %i.go
  %i.gq = fmul <4 x float> %i.gp, splat (float f0x3D5901AE)
  %i.gr = fsub <4 x float> %i.gk, %i.gq
  store <4 x float> %i.gr, ptr %i.gj, align 16, !tbaa !62
  %.04244.i72 = getelementptr inbounds nuw i8, ptr %i.dz, i64 96 ; 2 uses
  %.not48.i73 = icmp eq i32 %i.gc, 1
  br i1 %.not48.i73, label %.loopexit.i80, label %.lr.ph.i74

.lr.ph.i74:                                       ; preds = %bb.e, %.lr.ph.i74
  %.04247.i75 = phi ptr [ %.042.i78, %.lr.ph.i74 ], [ %.04244.i72, %bb.e ] ; 3 uses
  %.046.i76 = phi i32 [ %i.hi, %.lr.ph.i74 ], [ 1, %bb.e ]
  %.pn45.i77 = phi ptr [ %.04247.i75, %.lr.ph.i74 ], [ %i.fz, %bb.e ] ; 5 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.pn45.i77, i64 32 ; 2 uses
  %i.gt = load <4 x float>, ptr %i.gs, align 16, !tbaa !62
  %i.gu = load <4 x float>, ptr %.pn45.i77, align 16, !tbaa !62
  %i.gv = load <4 x float>, ptr %.04247.i75, align 16, !tbaa !62
  %i.gw = fadd <4 x float> %i.gu, %i.gv
  %i.gx = fmul <4 x float> %i.gw, splat (float f0x3D5901AE)
  %i.gy = fsub <4 x float> %i.gt, %i.gx
  store <4 x float> %i.gy, ptr %i.gs, align 16, !tbaa !62
  %i.gz = getelementptr inbounds nuw i8, ptr %.pn45.i77, i64 48 ; 2 uses
  %i.ha = load <4 x float>, ptr %i.gz, align 16, !tbaa !62
  %i.hb = getelementptr inbounds nuw i8, ptr %.pn45.i77, i64 16
  %i.hc = load <4 x float>, ptr %i.hb, align 16, !tbaa !62
  %i.hd = getelementptr inbounds nuw i8, ptr %.pn45.i77, i64 80
  %i.he = load <4 x float>, ptr %i.hd, align 16, !tbaa !62
  %i.hf = fadd <4 x float> %i.hc, %i.he
  %i.hg = fmul <4 x float> %i.hf, splat (float f0x3D5901AE)
  %i.hh = fsub <4 x float> %i.ha, %i.hg
  store <4 x float> %i.hh, ptr %i.gz, align 16, !tbaa !62
  %i.hi = add nuw i32 %.046.i76, 1                ; 2 uses
  %.042.i78 = getelementptr inbounds nuw i8, ptr %.04247.i75, i64 64 ; 2 uses
  %exitcond.not.i79 = icmp eq i32 %i.hi, %i.gc
  br i1 %exitcond.not.i79, label %.loopexit.i80, label %.lr.ph.i74, !llvm.loop !174

.loopexit.i80:                                    ; preds = %.lr.ph.i74, %bb.e, %opj_v8dwt_encode_step2.exit
  %.1.i81 = phi ptr [ %i.fz, %opj_v8dwt_encode_step2.exit ], [ %.04244.i72, %bb.e ], [ %.042.i78, %.lr.ph.i74 ] ; 4 uses
  %i.hj = icmp ult i32 %i.gb, %i.e                ; 2 uses
  br i1 %i.hj, label %bb.f, label %opj_v8dwt_encode_step2.exit82

bb.f:                                             ; preds = %.loopexit.i80
  %i.hk = getelementptr inbounds i8, ptr %.1.i81, i64 -32 ; 2 uses
  %i.hl = load <4 x float>, ptr %i.hk, align 16, !tbaa !62
  %i.hm = getelementptr inbounds i8, ptr %.1.i81, i64 -64
  %i.hn = load <4 x float>, ptr %i.hm, align 16, !tbaa !62
  %i.ho = fmul <4 x float> %i.hn, splat (float f0x3DD901AE)
  %i.hp = fsub <4 x float> %i.hl, %i.ho
  store <4 x float> %i.hp, ptr %i.hk, align 16, !tbaa !62
  %i.hq = getelementptr inbounds i8, ptr %.1.i81, i64 -16 ; 2 uses
  %i.hr = load <4 x float>, ptr %i.hq, align 16, !tbaa !62
  %i.hs = getelementptr inbounds i8, ptr %.1.i81, i64 -48
  %i.ht = load <4 x float>, ptr %i.hs, align 16, !tbaa !62
end_hunk_1
begin_hunk_2_@opj_dwt97_decode_v_func:bb.a
  %.not28 = icmp eq i32 %i.bs, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %opj_v8dwt_interleave_v.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %opj_v8dwt_interleave_v.exit ] ; 3 uses
  %i.bt = load i32, ptr %i.e, align 4, !tbaa !289
  %i.bu = zext i32 %i.bt to i64
  %i.bv = mul nuw i64 %indvars.iv, %i.bu
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.01924, i64 %i.bv
  %i.bx = load ptr, ptr %0, align 8, !tbaa !278
  %i.by = getelementptr inbounds nuw [32 x i8], ptr %i.bx, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.bw, ptr noundef nonnull align 4 dereferenceable(32) %i.by, i64 32, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bz = load i32, ptr %i.l, align 8, !tbaa !288
  %i.ca = zext i32 %i.bz to i64
  %i.cb = icmp samesign ult i64 %indvars.iv.next, %i.ca
  br i1 %i.cb, label %.lr.ph, label %._crit_edge, !llvm.loop !445

._crit_edge:                                      ; preds = %.lr.ph, %opj_v8dwt_interleave_v.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %.01924, i64 32
  %i.cd = add i32 %i.m, 8                         ; 2 uses
  %i.ce = load i32, ptr %i.a, align 8, !tbaa !291
  %.not = icmp ugt i32 %i.cd, %i.ce
  br i1 %.not, label %._crit_edge27, label %bb.b, !llvm.loop !446

._crit_edge27:                                    ; preds = %._crit_edge, %bb.a
  %i.cf = load ptr, ptr %0, align 8, !tbaa !278
  tail call void @opj_aligned_free(ptr noundef %i.cf) #15
  tail call void @opj_free(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @opj_v8dwt_interleave_partial_h(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %wide.trip.count = zext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !239  ; 2 uses
  %i.h = trunc nuw i64 %indvars.iv to i32
  %i.i = add i32 %2, %i.h                         ; 3 uses
  %i.j = load i32, ptr %i.b, align 8, !tbaa !240
  %i.k = add i32 %i.i, 1                          ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !234
  %i.m = load i32, ptr %i.c, align 8, !tbaa !238
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [32 x i8], ptr %i.l, i64 %i.n
  %i.p = shl i32 %i.g, 1
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.q
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %1, i32 noundef %i.g, i32 noundef %i.i, i32 noundef %i.j, i32 noundef %i.k, ptr noundef %i.s, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15 ; 0 uses
  %i.u = load i32, ptr %i.d, align 4, !tbaa !236  ; 2 uses
  %i.v = load i32, ptr %i.e, align 4, !tbaa !241  ; 2 uses
  %i.w = add i32 %i.v, %i.u
  %i.x = load i32, ptr %i.f, align 8, !tbaa !242
  %i.y = add i32 %i.x, %i.u
  %i.z = load ptr, ptr %0, align 8, !tbaa !234
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.c, align 8, !tbaa !238
  %i.ac = sext i32 %i.ab to i64
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds [32 x i8], ptr %i.aa, i64 %i.ad
  %i.af = shl i32 %i.v, 1
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv
  %i.aj = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %1, i32 noundef %i.w, i32 noundef %i.i, i32 noundef %i.y, i32 noundef %i.k, ptr noundef nonnull %i.ai, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !315

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !14, i64 64}
!8 = !{!"opj_tcd", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !9, i64 24, !11, i64 32, !12, i64 40, !13, i64 48, !4, i64 56, !4, i64 60, !14, i64 64, !4, i64 72, !4, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !15, i64 96}
!9 = !{!"p1 _ZTS13opj_tcd_image", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS9opj_image", !10, i64 0}
!12 = !{!"p1 _ZTS6opj_cp", !10, i64 0}
!13 = !{!"p1 _ZTS7opj_tcp", !10, i64 0}
!14 = !{!"p1 _ZTS17opj_thread_pool_t", !10, i64 0}
!15 = !{!"p1 int", !10, i64 0}
!16 = !{!17, !15, i64 48}
!17 = !{!"opj_tcd_tilecomp", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !18, i64 32, !4, i64 40, !15, i64 48, !4, i64 56, !19, i64 64, !19, i64 72, !15, i64 80, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !19, i64 104}
!18 = !{!"p1 _ZTS18opj_tcd_resolution", !10, i64 0}
!19 = !{!"long", !5, i64 0}
!20 = !{!17, !4, i64 8}
!21 = !{!17, !4, i64 0}
!22 = !{!17, !4, i64 20}
!23 = !{!17, !18, i64 32}
!24 = !{!25, !4, i64 8}
!25 = !{!"opj_tcd_resolution", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !5, i64 32, !4, i64 176, !4, i64 180, !4, i64 184, !4, i64 188}
!26 = !{!27}
!27 = distinct !{!27, !28, !"opj_dwt_max_resolution: argument 0"}
!28 = distinct !{!28, !"opj_dwt_max_resolution"}
!29 = !{!25, !4, i64 0}
!30 = !{!25, !4, i64 12}
!31 = !{!25, !4, i64 4}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{ptr @opj_dwt_encode_and_deinterleave_v, ptr @opj_dwt_encode_and_deinterleave_v_real}
!35 = distinct !{!35, !33}
!36 = !{!37, !15, i64 0}
!37 = !{!"", !38, i64 0, !4, i64 24, !4, i64 28, !15, i64 32, !4, i64 40, !4, i64 44, !10, i64 48}
!38 = !{!"dwt_local", !15, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!39 = !{!37, !4, i64 8}
!40 = !{!37, !4, i64 12}
!41 = !{!37, !4, i64 16}
!42 = !{!37, !4, i64 24}
!43 = !{!37, !4, i64 28}
!44 = !{!37, !15, i64 32}
!45 = !{!37, !4, i64 40}
!46 = !{!37, !4, i64 44}
!47 = !{!37, !10, i64 48}
!48 = distinct !{!48, !33}
!49 = !{ptr @opj_dwt_encode_and_deinterleave_h_one_row, ptr @opj_dwt_encode_and_deinterleave_h_one_row_real}
!50 = distinct !{!50, !33}
!51 = distinct !{!51, !33}
!52 = distinct !{!52, !33}
!53 = distinct !{!53, !33, !54, !55}
!54 = !{!"llvm.loop.isvectorized", i32 1}
!55 = !{!"llvm.loop.unroll.runtime.disable"}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = distinct !{!58, !33, !54}
!59 = distinct !{!59, !33}
!60 = distinct !{!60, !33}
!61 = distinct !{!61, !57}
!62 = !{!5, !5, i64 0}
!63 = distinct !{!63, !33}
!64 = distinct !{!64, !33}
!65 = distinct !{!65, !33}
!66 = distinct !{!66, !33}
!67 = !{!68, !70}
!68 = distinct !{!68, !69, !"opj_dwt_deinterleave_v_cols: argument 0"}
!69 = distinct !{!69, !"opj_dwt_deinterleave_v_cols"}
!70 = distinct !{!70, !69, !"opj_dwt_deinterleave_v_cols: argument 1"}
!71 = distinct !{!71, !57}
!72 = distinct !{!72, !33}
!73 = distinct !{!73, !57}
!74 = !{!75}
!75 = distinct !{!75, !76, !"opj_dwt_deinterleave_v_cols: argument 0"}
!76 = distinct !{!76, !"opj_dwt_deinterleave_v_cols"}
!77 = !{!78}
!78 = distinct !{!78, !76, !"opj_dwt_deinterleave_v_cols: argument 1"}
!79 = !{!80}
!80 = distinct !{!80, !81}
!81 = distinct !{!81, !"LVerDomain"}
!82 = !{!83}
!83 = distinct !{!83, !81}
!84 = distinct !{!84, !33, !54, !55}
!85 = distinct !{!85, !33, !54}
!86 = distinct !{!86, !33}
!87 = !{!88}
!88 = distinct !{!88, !89}
!89 = distinct !{!89, !"LVerDomain"}
!90 = !{!91}
!91 = distinct !{!91, !89}
!92 = distinct !{!92, !33, !54, !55}
!93 = distinct !{!93, !33, !54}
!94 = !{!95}
!95 = distinct !{!95, !96}
!96 = distinct !{!96, !"LVerDomain"}
!97 = !{!98}
!98 = distinct !{!98, !96}
!99 = !{!100}
!100 = distinct !{!100, !96}
!101 = distinct !{!101, !33, !54, !55}
!102 = distinct !{!102, !33, !54}
!103 = !{!8, !4, i64 88}
!104 = !{!17, !4, i64 24}
!105 = !{!106}
!106 = distinct !{!106, !107, !"opj_dwt_max_resolution: argument 0"}
!107 = distinct !{!107, !"opj_dwt_max_resolution"}
!108 = !{!38, !15, i64 0}
!109 = !{!38, !4, i64 12}
!110 = !{!38, !4, i64 8}
!111 = !{!38, !4, i64 16}
!112 = distinct !{!112, !33}
!113 = !{i64 0, i64 8, !114, i64 8, i64 4, !3, i64 12, i64 4, !3, i64 16, i64 4, !3}
!114 = !{!15, !15, i64 0}
!115 = !{!116, !4, i64 24}
!116 = !{!"", !38, i64 0, !4, i64 24, !4, i64 28, !15, i64 32, !4, i64 40, !4, i64 44}
!117 = !{!116, !4, i64 28}
!118 = !{!116, !15, i64 32}
!119 = !{!116, !4, i64 40}
!120 = !{!116, !4, i64 44}
!121 = !{!116, !15, i64 0}
!122 = distinct !{!122, !33}
!123 = distinct !{!123, !33}
!124 = distinct !{!124, !33}
!125 = !{!17, !4, i64 88}
!126 = !{!17, !4, i64 92}
!127 = !{!17, !4, i64 96}
!128 = !{!17, !4, i64 100}
!129 = !{!25, !4, i64 176}
!130 = !{!25, !4, i64 180}
!131 = !{!25, !4, i64 184}
!132 = !{!25, !4, i64 188}
!133 = !{!17, !15, i64 80}
!134 = !{!135}
!135 = distinct !{!135, !136, !"opj_dwt_max_resolution: argument 0"}
!136 = distinct !{!136, !"opj_dwt_max_resolution"}
!137 = !{!138, !4, i64 0}
!138 = !{!"opj_tcd_band", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !139, i64 24, !4, i64 32, !4, i64 36, !140, i64 40}
!139 = !{!"p1 _ZTS16opj_tcd_precinct", !10, i64 0}
!140 = !{!"float", !5, i64 0}
!141 = !{!138, !4, i64 4}
!142 = !{!143}
!143 = distinct !{!143, !144}
!144 = distinct !{!144, !"LVerDomain"}
!145 = !{!146}
!146 = distinct !{!146, !144}
!147 = !{!143, !148}
!148 = distinct !{!148, !144}
!149 = distinct !{!149, !33, !54, !55}
!150 = distinct !{!150, !33, !54}
!151 = distinct !{!151, !33}
!152 = distinct !{!152, !33, !54, !55}
!153 = distinct !{!153, !33, !55, !54}
!154 = distinct !{!154, !33}
!155 = distinct !{!155, !33}
!156 = distinct !{!156, !33}
!157 = distinct !{!157, !33}
!158 = distinct !{!158, !33}
!159 = distinct !{!159, !33}
!160 = distinct !{!160, !33}
!161 = distinct !{!161, !33}
!162 = distinct !{!162, !33}
!163 = distinct !{!163, !33}
!164 = distinct !{!164, !33}
!165 = distinct !{!165, !33}
!166 = distinct !{!166, !33}
!167 = distinct !{!167, !33}
!168 = !{!169, !169, i64 0}
!169 = !{!"double", !5, i64 0}
!170 = distinct !{!170, !33, !54, !55}
!171 = distinct !{!171, !57}
!172 = distinct !{!172, !33, !54}
!173 = distinct !{!173, !57}
!174 = distinct !{!174, !33}
!175 = distinct !{!175, !33}
!176 = !{!177, !179}
!177 = distinct !{!177, !178, !"opj_dwt_deinterleave_v_cols: argument 0"}
!178 = distinct !{!178, !"opj_dwt_deinterleave_v_cols"}
!179 = distinct !{!179, !178, !"opj_dwt_deinterleave_v_cols: argument 1"}
!180 = distinct !{!180, !57}
!181 = distinct !{!181, !57}
!182 = !{!183}
!183 = distinct !{!183, !184, !"opj_dwt_deinterleave_v_cols: argument 0"}
!184 = distinct !{!184, !"opj_dwt_deinterleave_v_cols"}
!185 = !{!186}
!186 = distinct !{!186, !184, !"opj_dwt_deinterleave_v_cols: argument 1"}
!187 = !{!183, !186}
!188 = !{!140, !140, i64 0}
!189 = distinct !{!189, !33, !54, !55}
!190 = distinct !{!190, !33, !54, !55}
!191 = distinct !{!191, !33, !55, !54}
!192 = distinct !{!192, !33, !55, !54}
!193 = distinct !{!193, !33, !54, !55}
!194 = distinct !{!194, !33, !54, !55}
!195 = distinct !{!195, !33, !55, !54}
!196 = distinct !{!196, !33, !55, !54}
!197 = distinct !{!197, !33, !54, !55}
!198 = distinct !{!198, !33, !54, !55}
!199 = distinct !{!199, !33, !55, !54}
!200 = distinct !{!200, !33, !55, !54}
!201 = distinct !{!201, !33, !54, !55}
!202 = distinct !{!202, !33, !54, !55}
!203 = distinct !{!203, !33, !55, !54}
!204 = distinct !{!204, !33, !55, !54}
!205 = distinct !{!205, !33, !54, !55}
!206 = distinct !{!206, !33}
!207 = distinct !{!207, !33, !55, !54}
!208 = distinct !{!208, !33, !54, !55}
!209 = distinct !{!209, !33, !55, !54}
!210 = !{!211}
!211 = distinct !{!211, !212, !"opj_dwt_deinterleave_h: argument 0"}
!212 = distinct !{!212, !"opj_dwt_deinterleave_h"}
!213 = !{!214}
!214 = distinct !{!214, !212, !"opj_dwt_deinterleave_h: argument 1"}
!215 = distinct !{!215, !33, !54, !55}
!216 = distinct !{!216, !33, !55, !54}
!217 = distinct !{!217, !33, !54, !55}
!218 = distinct !{!218, !33, !55, !54}
!219 = !{!220, !4, i64 4}
!220 = !{!"opj_tccp", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !5, i64 28, !4, i64 804, !4, i64 808, !5, i64 812, !5, i64 944, !4, i64 1076}
!221 = !{!220, !4, i64 20}
!222 = !{!220, !4, i64 24}
!223 = distinct !{!223, !33}
!224 = !{!225, !4, i64 4}
!225 = !{!"opj_stepsize", !4, i64 0, !4, i64 4}
!226 = !{!225, !4, i64 0}
!227 = distinct !{!227, !33}
!228 = !{!229}
!229 = distinct !{!229, !230, !"opj_dwt_decode_tile_97: argument 0"}
!230 = distinct !{!230, !"opj_dwt_decode_tile_97"}
!231 = !{!232}
!232 = distinct !{!232, !233, !"opj_dwt_max_resolution: argument 0"}
!233 = distinct !{!233, !"opj_dwt_max_resolution"}
!234 = !{!235, !10, i64 0}
!235 = !{!"v8dwt_local", !10, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32}
!236 = !{!235, !4, i64 12}
!237 = !{!235, !4, i64 8}
!238 = !{!235, !4, i64 16}
!239 = !{!235, !4, i64 20}
!240 = !{!235, !4, i64 24}
!241 = !{!235, !4, i64 28}
!242 = !{!235, !4, i64 32}
!243 = !{!244}
!244 = distinct !{!244, !245}
!245 = distinct !{!245, !"LVerDomain"}
!246 = !{!247}
!247 = distinct !{!247, !245}
!248 = !{!229, !249, !250, !251, !244}
!249 = distinct !{!249, !245}
!250 = distinct !{!250, !245}
!251 = distinct !{!251, !245}
!252 = !{!249}
!253 = !{!229, !250, !251, !244}
!254 = !{!250}
!255 = !{!229, !251, !244}
!256 = !{!251}
!257 = !{!229, !244}
!258 = distinct !{!258, !33, !54, !55}
!259 = !{!260}
end_hunk_2
