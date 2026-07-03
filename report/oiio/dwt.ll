inline.NumInlined: 158
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 78
begin_hunk_0_@opj_dwt_encode_procedure:bb.a
  %i.cm = tail call ptr @opj_aligned_32_malloc(i64 noundef %i.au) #15 ; 2 uses
  store ptr %i.cm, ptr %i.cl, align 8, !tbaa !36
  %.not200 = icmp eq ptr %i.cm, null
  br i1 %.not200, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  tail call void @opj_thread_pool_wait_completion(ptr noundef %0, i32 noundef 0) #15
  tail call void @opj_free(ptr noundef nonnull %i.cl) #15
  br label %.critedge210.sink.split

.critedge:                                        ; preds = %bb.h
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i32 %i.bv, ptr %i.cn, align 8, !tbaa !39
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  store i32 %i.bs, ptr %i.co, align 4, !tbaa !40
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i32 %i.bu, ptr %i.cp, align 8, !tbaa !41
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store i32 %i.bj, ptr %i.cq, align 8, !tbaa !42
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 28
  store i32 %i.g, ptr %i.cr, align 4, !tbaa !43
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  store ptr %i.c, ptr %i.cs, align 8, !tbaa !44
  %i.ct = mul i32 %.1188217, %i.ck
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  store i32 %i.ct, ptr %i.cu, align 8, !tbaa !45
  %i.cv = add nuw i32 %.1188217, 1                ; 4 uses
  %i.cw = icmp eq i32 %i.cv, %spec.select
  %i.cx = mul i32 %i.cv, %i.ck
  %i.cy = select i1 %i.cw, i32 %i.be, i32 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cl, i64 44
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !46
  %i.da = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  store ptr %2, ptr %i.da, align 8, !tbaa !47
  %i.db = tail call i32 @opj_thread_pool_submit_job(ptr noundef %0, ptr noundef nonnull @opj_dwt_encode_v_func, ptr noundef nonnull %i.cl) #15 ; 0 uses
  %exitcond.not = icmp eq i32 %i.cv, %spec.select
  br i1 %exitcond.not, label %bb.j, label %bb.f, !llvm.loop !48

bb.j:                                             ; preds = %.critedge
  tail call void @opj_thread_pool_wait_completion(ptr noundef %0, i32 noundef 0) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge, %bb.d
  %i.dc = sub i32 %i.be, %i.bn
  %i.dd = icmp ult i32 %i.bj, 2
  %or.cond9 = select i1 %i.az, i1 true, i1 %i.dd
  br i1 %or.cond9, label %.preheader, label %bb.m

.preheader:                                       ; preds = %bb.k
  %.not228 = icmp eq i32 %i.bg, %i.bi
  br i1 %.not228, label %.loopexit, label %.lr.ph221

.lr.ph221:                                        ; preds = %.preheader
  %i.de = xor i32 %i.bt, 1
  %wide.trip.count = zext i32 %i.bj to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph221, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph221 ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.df = trunc nuw i64 %indvars.iv to i32
  %i.dg = mul i32 %i.g, %i.df
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dh
  tail call void %3(ptr noundef %i.di, ptr noundef %i.av, i32 noundef %i.be, i32 noundef %i.de) #15, !callees !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond237.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond237.not, label %.loopexit, label %bb.l, !llvm.loop !50

bb.m:                                             ; preds = %bb.k
  %spec.select205 = tail call i32 @llvm.umin.i32(i32 %i.bj, i32 %i.a) ; 3 uses
  %i.dj = udiv i32 %i.bj, %spec.select205         ; 2 uses
  %i.dk = add nsw i32 %spec.select205, -1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge208
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
  %ind.escape = add nsw i64 %n.vec, -1
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader32.us.i

.preheader32.preheader.i:                         ; preds = %.preheader32.lr.ph.i
  %wide.trip.count62.i = zext i32 %2 to i64       ; 2 uses
  %xtraiter380 = and i64 %wide.trip.count62.i, 3  ; 3 uses
  %i.o = icmp ult i32 %2, 4
  br i1 %i.o, label %.preheader32.i.epil.preheader, label %.preheader32.preheader.i.new

.preheader32.preheader.i.new:                     ; preds = %.preheader32.preheader.i
  %unroll_iter = and i64 %wide.trip.count62.i, 4294967292
  br label %.preheader32.i

.preheader32.us.i:                                ; preds = %._crit_edge.us.i, %.preheader32.us.preheader.i
  %indvars.iv50.i = phi i64 [ 0, %.preheader32.us.preheader.i ], [ %indvars.iv.next51.i, %._crit_edge.us.i ] ; 6 uses
  %i.p = trunc nuw i64 %indvars.iv50.i to i32     ; 2 uses
  %i.q = shl i32 %i.p, 3                          ; 7 uses
  %i.r = mul i32 %4, %i.p                         ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader32.us.i
  %i.s = trunc i64 %indvars.iv50.i to i32
  %i.t = mul i32 %4, %i.s
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = add i64 %i.v, %i.a
  %6 = shl i64 %indvars.iv50.i, 5
  %7 = and i64 %6, 17179869152
  %8 = add i64 %7, %i.b
  %i.x = trunc i64 %indvars.iv50.i to i32
  %i.y = mul i32 %4, %i.x
  %indvars.iv50.i.tr = trunc i64 %indvars.iv50.i to i32
  %i.z = shl i32 %indvars.iv50.i.tr, 3
  %i.aa = xor i32 %i.z, -1
  %i.ab = icmp ult i32 %i.aa, %i.l
  %i.ac = xor i32 %i.y, -1
  %i.ad = icmp ult i32 %i.ac, %i.m
  %i.ae = or i1 %i.ad, %i.n
  %i.af = or i1 %i.ab, %i.ae
  %9 = sub i64 %i.w, %8
  %diff.check = icmp ugt i64 %9, -32
  %or.cond = select i1 %i.af, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.ag = phi i32 [ %i.aq, %vector.body ], [ 3, %vector.scevcheck ] ; 2 uses
  %i.ah = trunc i64 %index to i32                 ; 2 uses
  %i.ai = add i32 %i.r, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load = load <4 x i32>, ptr %i.ak, align 4, !tbaa !3
  %wide.load373 = load <4 x i32>, ptr %i.al, align 4, !tbaa !3
  %i.am = add i32 %i.q, %i.ah
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <4 x i32> %wide.load, ptr %i.ao, align 4, !tbaa !3
  store <4 x i32> %wide.load373, ptr %i.ap, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = add i32 %i.ag, 8
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %i.as = add i32 %i.ag, 4
  br i1 %cmp.n, label %..preheader31_crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader32.us.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader32.us.i ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.at = trunc nuw i64 %indvars.iv.i.prol to i32 ; 3 uses
  %i.au = add i32 %i.r, %i.at
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = add i32 %i.q, %i.at
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.az
  store i32 %i.ax, ptr %i.ba, align 4, !tbaa !3
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !56

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.lcssa379.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.i.prol, %scalar.ph.prol ]
  %.lcssa378.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.at, %scalar.ph.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.bb = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.bc = icmp ugt i64 %i.bb, -4
  br i1 %i.bc, label %..preheader31_crit_edge.us.i, label %scalar.ph

._crit_edge.us.i:                                 ; preds = %.lr.ph37.us.i, %..preheader31_crit_edge.us.i
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1 ; 2 uses
  %exitcond54.not.i = icmp eq i64 %indvars.iv.next51.i, %wide.trip.count53.i
  br i1 %exitcond54.not.i, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.preheader32.us.i, !llvm.loop !58

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bd = trunc nuw i64 %indvars.iv.i to i32      ; 2 uses
  %i.be = add i32 %i.r, %i.bd
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.bi = add i32 %i.q, %i.bd
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bj
  store i32 %i.bh, ptr %i.bk, align 4, !tbaa !3
  %i.bl = trunc i64 %indvars.iv.i to i32
  %i.bm = add i32 %i.bl, 1                        ; 2 uses
  %i.bn = add i32 %i.r, %i.bm
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = add i32 %i.q, %i.bm
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bs
  store i32 %i.bq, ptr %i.bt, align 4, !tbaa !3
  %i.bu = trunc i64 %indvars.iv.i to i32
  %i.bv = add i32 %i.bu, 2                        ; 2 uses
  %i.bw = add i32 %i.r, %i.bv
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = add i32 %i.q, %i.bv
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cb
  store i32 %i.bz, ptr %i.cc, align 4, !tbaa !3
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.cd = trunc nuw i64 %indvars.iv.next.i.2 to i32 ; 3 uses
  %i.ce = add i32 %i.r, %i.cd
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3
  %i.ci = add i32 %i.q, %i.cd
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cj
  store i32 %i.ch, ptr %i.ck, align 4, !tbaa !3
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %..preheader31_crit_edge.us.i, label %scalar.ph, !llvm.loop !59

..preheader31_crit_edge.us.i:                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.i.lcssa = phi i64 [ %ind.escape, %middle.block ], [ %indvars.iv.i.lcssa379.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next.i.2, %scalar.ph ]
  %.lcssa371 = phi i32 [ %i.as, %middle.block ], [ %.lcssa378.unr, %scalar.ph.prol.loopexit ], [ %i.cd, %scalar.ph ]
  %i.cl = icmp samesign ult i64 %indvars.iv.i.lcssa, 7
  br i1 %i.cl, label %.lr.ph37.us.i, label %._crit_edge.us.i

.lr.ph37.us.i:                                    ; preds = %..preheader31_crit_edge.us.i
  %i.cm = or disjoint i32 %i.q, 1
  %i.cn = add nuw i32 %i.cm, %.lcssa371
  %i.co = zext i32 %i.cn to i64
  %i.cp = shl nuw nsw i64 %i.co, 2
  %scevgep.i = getelementptr i8, ptr %1, i64 %i.cp
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.j, i1 false), !tbaa !3
  br label %._crit_edge.us.i

.preheader.i:                                     ; preds = %bb.a
  br i1 %.not41.i, label %opj_dwt_fetch_cols_vertical_pass.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count67.i = zext i32 %2 to i64       ; 2 uses
  %xtraiter383 = and i64 %wide.trip.count67.i, 1
  %i.cq = icmp eq i32 %2, 1
  br i1 %i.cq, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter387 = and i64 %wide.trip.count67.i, 4294967294
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv64.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next65.i.1, %.lr.ph.i ] ; 4 uses
  %niter388 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter388.next.1, %.lr.ph.i ]
  %i.cr = trunc nuw i64 %indvars.iv64.i to i32
  %i.cs = shl i64 %indvars.iv64.i, 3
  %i.ct = and i64 %i.cs, 4294967280
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ct
  %i.cv = mul i32 %4, %i.cr
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.cu, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.cx, i64 32, i1 false)
  %indvars.iv.next65.i = or disjoint i64 %indvars.iv64.i, 1 ; 2 uses
  %i.cy = trunc nuw i64 %indvars.iv.next65.i to i32
  %i.cz = shl i64 %indvars.iv.next65.i, 3
  %i.da = and i64 %i.cz, 4294967288
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.da
  %i.dc = mul i32 %4, %i.cy
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.db, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.de, i64 32, i1 false)
  %indvars.iv.next65.i.1 = add nuw nsw i64 %indvars.iv64.i, 2 ; 2 uses
  %niter388.next.1 = add i64 %niter388, 2         ; 2 uses
  %niter388.ncmp.1 = icmp eq i64 %niter388.next.1, %unroll_iter387
  br i1 %niter388.ncmp.1, label %opj_dwt_fetch_cols_vertical_pass.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !60

.preheader32.i:                                   ; preds = %.preheader32.i, %.preheader32.preheader.i.new
  %indvars.iv59.i = phi i64 [ 0, %.preheader32.preheader.i.new ], [ %indvars.iv.next60.i.3, %.preheader32.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader32.preheader.i.new ], [ %niter.next.3, %.preheader32.i ]
  %i.df = shl i64 %indvars.iv59.i, 5
  %i.dg = and i64 %i.df, 17179869056
  %scevgep55.i = getelementptr nuw i8, ptr %1, i64 %i.dg
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i = shl i64 %indvars.iv59.i, 5
  %i.dh = and i64 %indvars.iv.next60.i, 17179869056
  %i.di = getelementptr nuw i8, ptr %1, i64 %i.dh
  %scevgep55.i.1 = getelementptr nuw i8, ptr %i.di, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i.1, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i.1 = shl i64 %indvars.iv59.i, 5
  %i.dj = and i64 %indvars.iv.next60.i.1, 17179869056
  %i.dk = getelementptr nuw i8, ptr %1, i64 %i.dj
  %scevgep55.i.2 = getelementptr nuw i8, ptr %i.dk, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i.2, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i.2 = shl i64 %indvars.iv59.i, 5
  %i.dl = and i64 %indvars.iv.next60.i.2, 17179869056
  %i.dm = getelementptr nuw i8, ptr %1, i64 %i.dl
  %scevgep55.i.3 = getelementptr nuw i8, ptr %i.dm, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i.3, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i.3 = add nuw nsw i64 %indvars.iv59.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %opj_dwt_fetch_cols_vertical_pass.exit.loopexit375.unr-lcssa, label %.preheader32.i, !llvm.loop !58

opj_dwt_fetch_cols_vertical_pass.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod385.not = icmp eq i64 %xtraiter383, 0
  br i1 %lcmp.mod385.not, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %opj_dwt_fetch_cols_vertical_pass.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv64.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next65.i.1, %opj_dwt_fetch_cols_vertical_pass.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod386 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod386)
  %i.dn = trunc nuw i64 %indvars.iv64.i.epil.init to i32
  %i.do = shl i64 %indvars.iv64.i.epil.init, 3
  %i.dp = and i64 %i.do, 4294967288
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dp
  %i.dr = mul i32 %4, %i.dn
end_hunk_0
begin_hunk_1_@opj_dwt_decode:bb.a
  %i.asb = load i32, ptr %.in315.1.i.i, align 4, !tbaa !3
  %i.asc = load <2 x i32>, ptr %i.arw, align 4, !tbaa !3
  %i.asd = load <2 x i32>, ptr %i.arz, align 4, !tbaa !3
  %i.ase = insertelement <2 x i32> poison, i32 %i.ary, i64 0
  %i.asf = insertelement <2 x i32> %i.ase, i32 %i.asb, i64 1
  %i.asg = add <2 x i32> %i.asd, %i.asf
  %i.ash = ashr <2 x i32> %i.asg, splat (i32 1)
  %i.asi = add <2 x i32> %i.ash, %i.asc
  store <2 x i32> %i.asi, ptr %i.arw, align 4, !tbaa !3
  %i.asj = getelementptr inbounds nuw i8, ptr %i.arw, i64 8 ; 2 uses
  %i.ask = load i32, ptr %i.asj, align 4, !tbaa !3
  %i.asl = or disjoint i32 %i.aqo, 6
  %.in315.v.v.2.i.i = select i1 %.not314.i.i, i32 %i.asl, i32 %i.qw
  %.in315.v.2.i.i = zext i32 %.in315.v.v.2.i.i to i64
  %.in315.2.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.2.i.i
  %i.asm = load i32, ptr %.in315.2.i.i, align 4, !tbaa !3
  %i.asn = getelementptr inbounds nuw i8, ptr %i.arz, i64 8
  %i.aso = load i32, ptr %i.asn, align 4, !tbaa !3
  %i.asp = add i32 %i.aso, %i.asm
  %i.asq = ashr i32 %i.asp, 1
  %i.asr = add i32 %i.asq, %i.ask
  store i32 %i.asr, ptr %i.asj, align 4, !tbaa !3
  %i.ass = getelementptr inbounds nuw i8, ptr %i.arw, i64 12 ; 2 uses
  %i.ast = load i32, ptr %i.ass, align 4, !tbaa !3
  %i.asu = or disjoint i32 %i.aqo, 7
  %.in315.v.v.3.i.i = select i1 %.not314.i.i, i32 %i.asu, i32 %i.qx
  %.in315.v.3.i.i = zext i32 %.in315.v.v.3.i.i to i64
  %.in315.3.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.3.i.i
  %i.asv = load i32, ptr %.in315.3.i.i, align 4, !tbaa !3
  %i.asw = getelementptr inbounds nuw i8, ptr %i.arz, i64 12
  %i.asx = load i32, ptr %i.asw, align 4, !tbaa !3
  %i.asy = add i32 %i.asx, %i.asv
  %i.asz = ashr i32 %i.asy, 1
  %i.ata = add i32 %i.asz, %i.ast
  store i32 %i.ata, ptr %i.ass, align 4, !tbaa !3
  br label %.split364.us.i.i

.preheader353.split.split.split.us.preheader.i.i: ; preds = %.preheader353.split.split.i.i
  %i.atb = zext i32 %i.aqo to i64
  %i.atc = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.atb ; 4 uses
  %i.atd = load <2 x i32>, ptr %i.atc, align 4, !tbaa !3
  %i.ate = load <2 x i32>, ptr %.in315.us370.i.i, align 4, !tbaa !3
  %i.atf = shl <2 x i32> %i.ate, splat (i32 1)
  %i.atg = ashr exact <2 x i32> %i.atf, splat (i32 1)
  %i.ath = add <2 x i32> %i.atg, %i.atd
  store <2 x i32> %i.ath, ptr %i.atc, align 4, !tbaa !3
  %i.ati = getelementptr inbounds nuw i8, ptr %i.atc, i64 8 ; 2 uses
  %i.atj = load i32, ptr %i.ati, align 4, !tbaa !3
  %i.atk = load i32, ptr %.in315.us370.2.i.i, align 4, !tbaa !3
  %i.atl = load i32, ptr %i.qz, align 4, !tbaa !3
  %i.atm = add i32 %i.atl, %i.atk
  %i.atn = ashr i32 %i.atm, 1
  %i.ato = add i32 %i.atn, %i.atj
  store i32 %i.ato, ptr %i.ati, align 4, !tbaa !3
  %i.atp = getelementptr inbounds nuw i8, ptr %i.atc, i64 12 ; 2 uses
  %i.atq = load i32, ptr %i.atp, align 4, !tbaa !3
  %i.atr = load i32, ptr %.in315.us370.3.i.i, align 4, !tbaa !3
  %i.ats = load i32, ptr %i.rb, align 4, !tbaa !3
  %i.att = add i32 %i.ats, %i.atr
  %i.atu = ashr i32 %i.att, 1
  %i.atv = add i32 %i.atu, %i.atq
  store i32 %i.atv, ptr %i.atp, align 4, !tbaa !3
  br label %.split364.us.i.i

.split364.us.i.i:                                 ; preds = %.preheader353.split.split.split.us.preheader.i.i, %.preheader353.split.split.split.preheader.i.i, %.preheader353.split.split.us.preheader.i.i, %.thread333.us.preheader.i.i
  %i.atw = add nsw i32 %.9372.i.i, 1              ; 2 uses
  %exitcond433.not.i.i = icmp eq i32 %i.atw, %i.lg
  br i1 %exitcond433.not.i.i, label %opj_dwt_decode_partial_1_parallel.exit.i, label %.preheader353.i.i, !llvm.loop !165

opj_dwt_decode_partial_1_parallel.exit.i:         ; preds = %.split364.us.i.i, %.split398.us.i.i, %.preheader354.i.i, %.preheader351.preheader.i.i, %.preheader342.i.i, %.loopexit347.i.i, %bb.bk
  %i.atx = tail call i32 @opj_sparse_array_int32_write(ptr noundef nonnull %i.fe, i32 noundef %.0181.i, i32 noundef %i.lv, i32 noundef %i.aao, i32 noundef %i.ma, ptr noundef nonnull %i.sl, i32 noundef 1, i32 noundef 4, i32 noundef 1) #15
  %.not188.not.i = icmp eq i32 %i.atx, 0
  br i1 %.not188.not.i, label %.thread288.i, label %bb.bi, !llvm.loop !166

.thread288.i:                                     ; preds = %opj_dwt_decode_partial_1_parallel.exit.i
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.fe) #15
  tail call void @opj_aligned_free(ptr noundef nonnull %i.hg) #15
  br label %opj_dwt_decode_partial_tile.exit

bb.bs:                                            ; preds = %bb.bi
  %i.aty = add nuw i32 %.0172299.i, 1             ; 2 uses
  %exitcond309.not.i = icmp eq i32 %i.aty, %2
  br i1 %exitcond309.not.i, label %._crit_edge.i18, label %bb.x, !llvm.loop !167

._crit_edge.i18:                                  ; preds = %bb.bs, %.preheader294.i
  tail call void @opj_aligned_free(ptr noundef nonnull %i.hg) #15
  %i.atz = getelementptr inbounds nuw i8, ptr %i.ed, i64 176
  %i.aua = load i32, ptr %i.atz, align 8, !tbaa !129 ; 2 uses
  %i.aub = load i32, ptr %i.ed, align 8, !tbaa !29 ; 2 uses
  %i.auc = sub i32 %i.aua, %i.aub
  %i.aud = getelementptr inbounds nuw i8, ptr %i.ed, i64 180
  %i.aue = load i32, ptr %i.aud, align 4, !tbaa !130
  %i.auf = load i32, ptr %i.ez, align 4, !tbaa !31 ; 2 uses
  %i.aug = sub i32 %i.aue, %i.auf
  %i.auh = getelementptr inbounds nuw i8, ptr %i.ed, i64 184
  %i.aui = load i32, ptr %i.auh, align 8, !tbaa !131 ; 2 uses
  %i.auj = sub i32 %i.aui, %i.aub
  %i.auk = getelementptr inbounds nuw i8, ptr %i.ed, i64 188
  %i.aul = load i32, ptr %i.auk, align 4, !tbaa !132
  %i.aum = sub i32 %i.aul, %i.auf
  %i.aun = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.auo = load ptr, ptr %i.aun, align 8, !tbaa !133
  %i.aup = sub i32 %i.aui, %i.aua
  %i.auq = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.fe, i32 noundef %i.auc, i32 noundef %i.aug, i32 noundef %i.auj, i32 noundef %i.aum, ptr noundef %i.auo, i32 noundef 1, i32 noundef %i.aup, i32 noundef 1) #15 ; 0 uses
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
  %ind.escape = add nsw i64 %n.vec, -1
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader32.us.i

.preheader32.preheader.i:                         ; preds = %.preheader32.lr.ph.i
  %wide.trip.count62.i = zext i32 %2 to i64       ; 2 uses
  %xtraiter178 = and i64 %wide.trip.count62.i, 3  ; 3 uses
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
  %6 = shl i64 %indvars.iv50.i, 5
  %7 = and i64 %6, 17179869152
  %8 = add i64 %7, %i.b
  %i.y = trunc i64 %indvars.iv50.i to i32
  %i.z = mul i32 %4, %i.y
  %indvars.iv50.i.tr = trunc i64 %indvars.iv50.i to i32
  %i.aa = shl i32 %indvars.iv50.i.tr, 3
  %i.ab = xor i32 %i.aa, -1
  %i.ac = icmp ult i32 %i.ab, %i.m
  %i.ad = xor i32 %i.z, -1
  %i.ae = icmp ult i32 %i.ad, %i.n
  %i.af = or i1 %i.ae, %i.o
  %i.ag = or i1 %i.ac, %i.af
  %9 = sub i64 %i.x, %8
  %diff.check = icmp ugt i64 %9, -32
  %or.cond = select i1 %i.ag, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.ah = phi i32 [ %i.ar, %vector.body ], [ 3, %vector.scevcheck ] ; 2 uses
  %i.ai = trunc i64 %index to i32                 ; 2 uses
  %i.aj = add i32 %i.s, %i.ai
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <4 x i32>, ptr %i.al, align 4, !tbaa !3
  %wide.load171 = load <4 x i32>, ptr %i.am, align 4, !tbaa !3
  %i.an = add i32 %i.r, %i.ai
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <4 x i32> %wide.load, ptr %i.ap, align 4, !tbaa !3
  store <4 x i32> %wide.load171, ptr %i.aq, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = add i32 %i.ah, 8
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !170

middle.block:                                     ; preds = %vector.body
  %i.at = add i32 %i.ah, 4
  br i1 %cmp.n, label %..preheader31_crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader32.us.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader32.us.i ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.au = trunc nuw i64 %indvars.iv.i.prol to i32 ; 3 uses
  %i.av = add i32 %i.s, %i.au
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = add i32 %i.r, %i.au
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ba
  store i32 %i.ay, ptr %i.bb, align 4, !tbaa !3
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !171

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.lcssa177.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.i.prol, %scalar.ph.prol ]
  %.lcssa176.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.au, %scalar.ph.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.bc = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.bd = icmp ugt i64 %i.bc, -4
  br i1 %i.bd, label %..preheader31_crit_edge.us.i, label %scalar.ph

._crit_edge.us.i:                                 ; preds = %.lr.ph37.us.i, %..preheader31_crit_edge.us.i
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1 ; 2 uses
  %exitcond54.not.i = icmp eq i64 %indvars.iv.next51.i, %wide.trip.count53.i
  br i1 %exitcond54.not.i, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.preheader32.us.i, !llvm.loop !58

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.be = trunc nuw i64 %indvars.iv.i to i32      ; 2 uses
  %i.bf = add i32 %i.s, %i.be
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bj = add i32 %i.r, %i.be
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bk
  store i32 %i.bi, ptr %i.bl, align 4, !tbaa !3
  %i.bm = trunc i64 %indvars.iv.i to i32
  %i.bn = add i32 %i.bm, 1                        ; 2 uses
  %i.bo = add i32 %i.s, %i.bn
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3
  %i.bs = add i32 %i.r, %i.bn
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bt
  store i32 %i.br, ptr %i.bu, align 4, !tbaa !3
  %i.bv = trunc i64 %indvars.iv.i to i32
  %i.bw = add i32 %i.bv, 2                        ; 2 uses
  %i.bx = add i32 %i.s, %i.bw
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.cb = add i32 %i.r, %i.bw
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cc
  store i32 %i.ca, ptr %i.cd, align 4, !tbaa !3
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.ce = trunc nuw i64 %indvars.iv.next.i.2 to i32 ; 3 uses
  %i.cf = add i32 %i.s, %i.ce
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3
  %i.cj = add i32 %i.r, %i.ce
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ck
  store i32 %i.ci, ptr %i.cl, align 4, !tbaa !3
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %..preheader31_crit_edge.us.i, label %scalar.ph, !llvm.loop !172

..preheader31_crit_edge.us.i:                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.i.lcssa = phi i64 [ %ind.escape, %middle.block ], [ %indvars.iv.i.lcssa177.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next.i.2, %scalar.ph ]
  %.lcssa = phi i32 [ %i.at, %middle.block ], [ %.lcssa176.unr, %scalar.ph.prol.loopexit ], [ %i.ce, %scalar.ph ]
  %i.cm = icmp samesign ult i64 %indvars.iv.i.lcssa, 7
  br i1 %i.cm, label %.lr.ph37.us.i, label %._crit_edge.us.i

.lr.ph37.us.i:                                    ; preds = %..preheader31_crit_edge.us.i
  %i.cn = or disjoint i32 %i.r, 1
  %i.co = add nuw i32 %i.cn, %.lcssa
  %i.cp = zext i32 %i.co to i64
  %i.cq = shl nuw nsw i64 %i.cp, 2
  %scevgep.i = getelementptr i8, ptr %1, i64 %i.cq
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.k, i1 false), !tbaa !3
  br label %._crit_edge.us.i

.preheader.i:                                     ; preds = %bb.b
  br i1 %.not41.i, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count67.i = zext i32 %2 to i64       ; 2 uses
  %xtraiter181 = and i64 %wide.trip.count67.i, 1
  %unroll_iter185 = and i64 %wide.trip.count67.i, 4294967294
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv64.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next65.i.1, %.lr.ph.i ] ; 4 uses
  %niter186 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %niter186.next.1, %.lr.ph.i ]
  %i.cr = trunc nuw i64 %indvars.iv64.i to i32
  %i.cs = shl i64 %indvars.iv64.i, 3
  %i.ct = and i64 %i.cs, 4294967280
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ct
  %i.cv = mul i32 %4, %i.cr
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.cu, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.cx, i64 32, i1 false)
  %indvars.iv.next65.i = or disjoint i64 %indvars.iv64.i, 1 ; 2 uses
  %i.cy = trunc nuw i64 %indvars.iv.next65.i to i32
  %i.cz = shl i64 %indvars.iv.next65.i, 3
  %i.da = and i64 %i.cz, 4294967288
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.da
  %i.dc = mul i32 %4, %i.cy
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.db, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.de, i64 32, i1 false)
  %indvars.iv.next65.i.1 = add nuw nsw i64 %indvars.iv64.i, 2 ; 3 uses
  %niter186.next.1 = add i64 %niter186, 2         ; 2 uses
  %niter186.ncmp.1 = icmp eq i64 %niter186.next.1, %unroll_iter185
  br i1 %niter186.ncmp.1, label %opj_dwt_fetch_cols_vertical_pass.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !60

.preheader32.i:                                   ; preds = %.preheader32.i, %.preheader32.preheader.i.new
  %indvars.iv59.i = phi i64 [ 0, %.preheader32.preheader.i.new ], [ %indvars.iv.next60.i.3, %.preheader32.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader32.preheader.i.new ], [ %niter.next.3, %.preheader32.i ]
  %i.df = shl i64 %indvars.iv59.i, 5
  %i.dg = and i64 %i.df, 17179869056
  %scevgep55.i = getelementptr nuw i8, ptr %1, i64 %i.dg
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i = shl i64 %indvars.iv59.i, 5
  %i.dh = and i64 %indvars.iv.next60.i, 17179869056
  %i.di = getelementptr nuw i8, ptr %1, i64 %i.dh
  %scevgep55.i.1 = getelementptr nuw i8, ptr %i.di, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i.1, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i.1 = shl i64 %indvars.iv59.i, 5
  %i.dj = and i64 %indvars.iv.next60.i.1, 17179869056
  %i.dk = getelementptr nuw i8, ptr %1, i64 %i.dj
  %scevgep55.i.2 = getelementptr nuw i8, ptr %i.dk, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i.2, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i.2 = shl i64 %indvars.iv59.i, 5
  %i.dl = and i64 %indvars.iv.next60.i.2, 17179869056
  %i.dm = getelementptr nuw i8, ptr %1, i64 %i.dl
  %scevgep55.i.3 = getelementptr nuw i8, ptr %i.dm, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %scevgep55.i.3, i8 0, i64 32, i1 false), !tbaa !3
  %indvars.iv.next60.i.3 = add nuw nsw i64 %indvars.iv59.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %opj_dwt_fetch_cols_vertical_pass.exit.loopexit173.unr-lcssa, label %.preheader32.i, !llvm.loop !58

opj_dwt_fetch_cols_vertical_pass.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod183.not = icmp eq i64 %xtraiter181, 0
  br i1 %lcmp.mod183.not, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %opj_dwt_fetch_cols_vertical_pass.exit.loopexit.unr-lcssa
  %lcmp.mod184 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod184)
  %i.dn = trunc nuw i64 %indvars.iv.next65.i.1 to i32
  %i.do = shl i64 %indvars.iv.next65.i.1, 3
  %i.dp = and i64 %i.do, 4294967288
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dp
  %i.dr = mul i32 %4, %i.dn
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ds
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.dq, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.dt, i64 32, i1 false)
  br label %opj_dwt_fetch_cols_vertical_pass.exit

end_hunk_1
begin_hunk_2_@opj_idwt53_v:bb.a
  %i.ay = bitcast <2 x i64> %.0111114.i to <4 x i32> ; 2 uses
  %i.az = bitcast <2 x i64> %i.ar to <4 x i32>
  %i.ba = add <4 x i32> %i.ay, splat (i32 2)
  %i.bb = add <4 x i32> %i.ba, %i.az
  %i.bc = ashr <4 x i32> %i.bb, splat (i32 2)
  %i.bd = sub <4 x i32> %i.an, %i.bc              ; 3 uses
  %.idx.i = shl i64 %indvars.iv.i, 5
  %i.be = getelementptr i8, ptr %i.l, i64 %.idx.i ; 4 uses
  store <4 x i32> %.0112.in113.i, ptr %i.be, align 16, !tbaa !62
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <4 x i32> %.0109.in116.i, ptr %i.bf, align 16, !tbaa !62
  %i.bg = getelementptr i8, ptr %i.be, i64 32
  %i.bh = add <4 x i32> %i.ax, %.0112.in113.i
  %i.bi = ashr <4 x i32> %i.bh, splat (i32 1)
  %i.bj = add <4 x i32> %i.bi, %i.as
  store <4 x i32> %i.bj, ptr %i.bg, align 16, !tbaa !62
  %i.bk = getelementptr i8, ptr %i.be, i64 48
  %i.bl = add <4 x i32> %i.bd, %.0109.in116.i
  %i.bm = ashr <4 x i32> %i.bl, splat (i32 1)
  %i.bn = add <4 x i32> %i.bm, %i.ay
  store <4 x i32> %i.bn, ptr %i.bk, align 16, !tbaa !62
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bo = add nuw nsw i64 %.0108117.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bo, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !345

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.bp = shl i64 %indvars.iv.next.i, 3
  %i.bq = and i64 %i.bp, 4294967280
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.c
  %.0112.in.lcssa.i = phi <4 x i32> [ %i.z, %bb.c ], [ %i.ax, %._crit_edge.loopexit.i ] ; 3 uses
  %.0111.lcssa.i = phi <2 x i64> [ %i.u, %bb.c ], [ %i.ar, %._crit_edge.loopexit.i ] ; 2 uses
  %.0110.lcssa.i = phi <2 x i64> [ %i.s, %bb.c ], [ %i.ap, %._crit_edge.loopexit.i ] ; 2 uses
  %.0109.in.lcssa.i = phi <4 x i32> [ %i.ae, %bb.c ], [ %i.bd, %._crit_edge.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.c ], [ %i.bq, %._crit_edge.loopexit.i ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.0.lcssa.i ; 2 uses
  store <4 x i32> %.0112.in.lcssa.i, ptr %i.br, align 16, !tbaa !62
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store <4 x i32> %.0109.in.lcssa.i, ptr %i.bs, align 16, !tbaa !62
  %i.bt = and i32 %i.f, 1
  %.not.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.bu = add nsw i32 %i.f, -1                    ; 2 uses
  %i.bv = lshr exact i32 %i.bu, 1
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = mul nuw nsw i64 %2, %i.bw
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bx ; 2 uses
  %i.bz = load <4 x i32>, ptr %i.by, align 1, !tbaa !62
  %i.ca = bitcast <2 x i64> %.0110.lcssa.i to <4 x i32> ; 2 uses
  %i.cb = shl <4 x i32> %i.ca, splat (i32 1)
  %i.cc = add <4 x i32> %i.cb, splat (i32 2)
  %i.cd = ashr <4 x i32> %i.cc, splat (i32 2)
  %i.ce = sub <4 x i32> %i.bz, %i.cd              ; 2 uses
  %i.cf = shl nsw i32 %i.bu, 3
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cg ; 2 uses
  store <4 x i32> %i.ce, ptr %i.ch, align 16, !tbaa !62
  %i.ci = shl i32 %i.f, 3
  %i.cj = add i32 %i.ci, -16
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ck ; 2 uses
  %i.cm = add <4 x i32> %i.ce, %.0112.in.lcssa.i
  %i.cn = ashr <4 x i32> %i.cm, splat (i32 1)
  %i.co = add <4 x i32> %i.cn, %i.ca
  store <4 x i32> %i.co, ptr %i.cl, align 16, !tbaa !62
  %i.cp = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cq = load <4 x i32>, ptr %i.cp, align 1, !tbaa !62
  %i.cr = bitcast <2 x i64> %.0111.lcssa.i to <4 x i32> ; 2 uses
  %i.cs = shl <4 x i32> %i.cr, splat (i32 1)
  %i.ct = add <4 x i32> %i.cs, splat (i32 2)
  %i.cu = ashr <4 x i32> %i.ct, splat (i32 2)
  %i.cv = sub <4 x i32> %i.cq, %i.cu              ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <4 x i32> %i.cv, ptr %i.cw, align 16, !tbaa !62
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cy = add <4 x i32> %i.cv, %.0109.in.lcssa.i
  %i.cz = ashr <4 x i32> %i.cy, splat (i32 1)
  %i.da = add <4 x i32> %i.cz, %i.cr
  store <4 x i32> %i.da, ptr %i.cx, align 16, !tbaa !62
  br label %.new341

bb.e:                                             ; preds = %._crit_edge.i
  %i.db = shl i32 %i.f, 3
  %i.dc = add i32 %i.db, -8
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.dd ; 2 uses
  %i.df = bitcast <2 x i64> %.0110.lcssa.i to <4 x i32>
  %i.dg = add <4 x i32> %.0112.in.lcssa.i, %i.df
  store <4 x i32> %i.dg, ptr %i.de, align 16, !tbaa !62
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.di = bitcast <2 x i64> %.0111.lcssa.i to <4 x i32>
  %i.dj = add <4 x i32> %.0109.in.lcssa.i, %i.di
  store <4 x i32> %i.dj, ptr %i.dh, align 16, !tbaa !62
  br label %.new341

.new341:                                          ; preds = %bb.e, %bb.d
  %wide.trip.count.i.i = zext nneg i32 %i.f to i64 ; 2 uses
  %xtraiter343 = and i64 %wide.trip.count.i.i, 1
  %unroll_iter346 = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.new341
  %indvars.iv.i.i = phi i64 [ 0, %.new341 ], [ %indvars.iv.next.i.i.1, %bb.f ] ; 4 uses
  %niter347 = phi i64 [ 0, %.new341 ], [ %niter347.next.1, %bb.f ]
  %i.dk = mul nuw nsw i64 %indvars.iv.i.i, %2
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dk ; 2 uses
  %.idx.i.i = shl nsw i64 %indvars.iv.i.i, 5
  %i.dm = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i ; 2 uses
  %i.dn = load <2 x i64>, ptr %i.dm, align 16, !tbaa !62
  store <2 x i64> %i.dn, ptr %i.dl, align 1, !tbaa !62
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dq = load <2 x i64>, ptr %i.dp, align 16, !tbaa !62
  store <2 x i64> %i.dq, ptr %i.do, align 1, !tbaa !62
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.dr = mul nuw nsw i64 %indvars.iv.next.i.i, %2
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dr ; 2 uses
  %.idx.i.i.1 = shl nsw i64 %indvars.iv.next.i.i, 5
  %i.dt = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.1 ; 2 uses
  %i.du = load <2 x i64>, ptr %i.dt, align 16, !tbaa !62
  store <2 x i64> %i.du, ptr %i.ds, align 1, !tbaa !62
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dx = load <2 x i64>, ptr %i.dw, align 16, !tbaa !62
  store <2 x i64> %i.dx, ptr %i.dv, align 1, !tbaa !62
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 3 uses
  %niter347.next.1 = add i64 %niter347, 2         ; 2 uses
  %niter347.ncmp.1 = icmp eq i64 %niter347.next.1, %unroll_iter346
  br i1 %niter347.ncmp.1, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !346

bb.g:                                             ; preds = %bb.b
  %i.dy = icmp sgt i32 %3, 0
  %or.cond144 = and i1 %i.j, %i.dy
  br i1 %or.cond144, label %.lr.ph143, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit

.lr.ph143:                                        ; preds = %bb.g
  %i.dz = load ptr, ptr %0, align 8, !tbaa !108   ; 15 uses
  %i.ea = ptrtoaddr ptr %i.dz to i64
  %i.eb = sext i32 %i.c to i64
  %i.ec = mul nsw i64 %2, %i.eb
  %i.ed = icmp samesign ugt i32 %i.f, 3
  %i.ee = add i32 %i.c, 1                         ; 5 uses
  %i.ef = add nsw i32 %i.f, -4                    ; 4 uses
  %i.eg = lshr i32 %i.ef, 1
  %i.eh = add nuw i32 %i.eg, 1
  %wide.trip.count.i82 = zext i32 %i.eh to i64    ; 3 uses
  %i.ei = and i32 %i.f, 1
  %.not.i80 = icmp eq i32 %i.ei, 0
  %i.ej = add nsw i32 %i.f, -1                    ; 2 uses
  %i.ek = lshr exact i32 %i.ej, 1
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = mul nuw nsw i64 %2, %i.el
  %i.en = zext nneg i32 %i.ej to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.en
  %i.ep = zext nneg i32 %i.f to i64               ; 6 uses
  %i.eq = getelementptr [4 x i8], ptr %i.dz, i64 %i.ep
  %i.er = sub i64 %i.a, %i.ea
  %i.es = lshr i32 %i.ef, 1
  %i.et = lshr i32 %i.ef, 1
  %i.eu = zext nneg i32 %i.et to i64              ; 2 uses
  %i.ev = shl nuw nsw i64 %i.eu, 3
  %i.ew = getelementptr i8, ptr %i.dz, i64 %i.ev
  %scevgep269 = getelementptr i8, ptr %i.ew, i64 8 ; 2 uses
  %i.ex = sext i32 %i.ee to i64
  %i.ey = shl nsw i64 %i.ex, 2                    ; 2 uses
  %scevgep270 = getelementptr i8, ptr %1, i64 %i.ey
  %i.ez = shl nuw nsw i64 %i.eu, 2                ; 2 uses
  %i.fa = add nsw i32 %3, -1
  %i.fb = zext i32 %i.fa to i64
  %i.fc = shl nuw nsw i64 %i.fb, 2                ; 2 uses
  %i.fd = getelementptr i8, ptr %1, i64 %i.ez
  %i.fe = getelementptr i8, ptr %i.fd, i64 %i.ey
  %i.ff = getelementptr i8, ptr %i.fe, i64 %i.fc
  %scevgep271 = getelementptr i8, ptr %i.ff, i64 4
  %scevgep272 = getelementptr i8, ptr %1, i64 4
  %i.fg = getelementptr i8, ptr %1, i64 %i.ez
  %i.fh = getelementptr i8, ptr %i.fg, i64 %i.fc
  %scevgep273 = getelementptr i8, ptr %i.fh, i64 8
  %min.iters.check282 = icmp ult i32 %i.ef, 10
  %ident.check267 = icmp ne i64 %2, 1
  %i.fi = add i32 %i.ee, %i.es
  %i.fj = icmp slt i32 %i.fi, %i.ee
  %i.fk = or i1 %ident.check267, %i.fj
  %bound0274 = icmp ult ptr %i.dz, %scevgep271
  %bound1275 = icmp ult ptr %scevgep270, %scevgep269
  %found.conflict276 = and i1 %bound0274, %bound1275
  %bound0277 = icmp ult ptr %i.dz, %scevgep273
  %bound1278 = icmp ult ptr %scevgep272, %scevgep269
  %found.conflict279 = and i1 %bound0277, %bound1278
  %conflict.rdx280 = or i1 %found.conflict276, %found.conflict279
  %n.vec285 = and i64 %wide.trip.count.i82, 4294967294 ; 4 uses
  %i.fl = shl nuw nsw i64 %n.vec285, 1            ; 2 uses
  %cmp.n299 = icmp eq i64 %n.vec285, %wide.trip.count.i82
  %min.iters.check254 = icmp ult i32 %i.f, 8
  %ident.check248.not = icmp ne i64 %2, 1
  %or.cond305.not311 = or i1 %min.iters.check254, %ident.check248.not
  %invariant.op363 = add i64 %i.er, -1
  %n.vec257 = and i64 %i.ep, 2147483640           ; 3 uses
  %cmp.n264 = icmp eq i64 %n.vec257, %i.ep
  %xtraiter338 = and i64 %i.ep, 3                 ; 2 uses
  %lcmp.mod339.not = icmp eq i64 %xtraiter338, 0
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph143, %opj_idwt3_v_cas0.exit
  %indvar250 = phi i64 [ 0, %.lr.ph143 ], [ %indvar.next251, %opj_idwt3_v_cas0.exit ] ; 2 uses
  %.070142 = phi ptr [ %1, %.lr.ph143 ], [ %i.ip, %opj_idwt3_v_cas0.exit ] ; 14 uses
  %.072141 = phi i32 [ 0, %.lr.ph143 ], [ %i.io, %opj_idwt3_v_cas0.exit ]
  %i.fm = shl nuw nsw i64 %indvar250, 2
  %i.fn = load i32, ptr %.070142, align 4, !tbaa !3
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.070142, i64 %i.ec
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !3  ; 6 uses
  %i.fq = add nsw i32 %i.fp, 1
  %i.fr = ashr i32 %i.fq, 1
  %i.fs = sub nsw i32 %i.fn, %i.fr                ; 5 uses
  br i1 %i.ed, label %.lr.ph.i81.preheader, label %._crit_edge.i78

.lr.ph.i81.preheader:                             ; preds = %bb.h
  br i1 %min.iters.check282, label %.lr.ph.i81.preheader315, label %vector.scevcheck266

vector.scevcheck266:                              ; preds = %.lr.ph.i81.preheader
  br i1 %i.fk, label %.lr.ph.i81.preheader315, label %vector.memcheck268

vector.memcheck268:                               ; preds = %vector.scevcheck266
  br i1 %conflict.rdx280, label %.lr.ph.i81.preheader315, label %vector.ph283

vector.ph283:                                     ; preds = %vector.memcheck268
  %vector.recur.init288 = insertelement <2 x i32> poison, i32 %i.fs, i64 1
  %vector.recur.init290 = insertelement <2 x i32> poison, i32 %i.fp, i64 1
  br label %vector.body286

vector.body286:                                   ; preds = %vector.body286, %vector.ph283
  %index287 = phi i64 [ 0, %vector.ph283 ], [ %index.next295, %vector.body286 ] ; 4 uses
  %vector.recur289 = phi <2 x i32> [ %vector.recur.init288, %vector.ph283 ], [ %i.gd, %vector.body286 ]
  %vector.recur291 = phi <2 x i32> [ %vector.recur.init290, %vector.ph283 ], [ %wide.load293, %vector.body286 ]
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.070142, i64 %index287
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %wide.load292 = load <2 x i32>, ptr %i.fu, align 4, !tbaa !3, !alias.scope !347
  %i.fv = trunc nuw nsw i64 %index287 to i32
  %i.fw = add i32 %i.ee, %i.fv
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.070142, i64 %i.fx
  %wide.load293 = load <2 x i32>, ptr %i.fy, align 4, !tbaa !3, !alias.scope !350 ; 4 uses
  %i.fz = shufflevector <2 x i32> %vector.recur291, <2 x i32> %wide.load293, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ga = add <2 x i32> %i.fz, splat (i32 2)
  %i.gb = add <2 x i32> %i.ga, %wide.load293
  %i.gc = ashr <2 x i32> %i.gb, splat (i32 2)
  %i.gd = sub <2 x i32> %wide.load292, %i.gc      ; 4 uses
  %i.ge = shufflevector <2 x i32> %vector.recur289, <2 x i32> %i.gd, <2 x i32> <i32 1, i32 2> ; 2 uses
  %.idx304 = shl i64 %index287, 3
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.idx304
  %i.gg = add <2 x i32> %i.gd, %i.ge
  %i.gh = ashr <2 x i32> %i.gg, splat (i32 1)
  %i.gi = add <2 x i32> %i.gh, %i.fz
  %interleaved.vec294 = shufflevector <2 x i32> %i.ge, <2 x i32> %i.gi, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec294, ptr %i.gf, align 4, !tbaa !3, !alias.scope !352, !noalias !354
  %index.next295 = add nuw i64 %index287, 2       ; 2 uses
  %i.gj = icmp eq i64 %index.next295, %n.vec285
  br i1 %i.gj, label %middle.block296, label %vector.body286, !llvm.loop !355

middle.block296:                                  ; preds = %vector.body286
  %vector.recur.extract297 = extractelement <2 x i32> %i.gd, i64 1 ; 2 uses
  %vector.recur.extract298 = extractelement <2 x i32> %wide.load293, i64 1 ; 2 uses
  br i1 %cmp.n299, label %._crit_edge.loopexit.i86, label %.lr.ph.i81.preheader315

.lr.ph.i81.preheader315:                          ; preds = %vector.memcheck268, %vector.scevcheck266, %.lr.ph.i81.preheader, %middle.block296
  %indvars.iv69.i.ph = phi i64 [ 0, %vector.memcheck268 ], [ 0, %vector.scevcheck266 ], [ 0, %.lr.ph.i81.preheader ], [ %n.vec285, %middle.block296 ]
  %indvars.iv.i83.ph = phi i64 [ 0, %vector.memcheck268 ], [ 0, %vector.scevcheck266 ], [ 0, %.lr.ph.i81.preheader ], [ %i.fl, %middle.block296 ]
  %.063.i.ph = phi i32 [ %i.fs, %vector.memcheck268 ], [ %i.fs, %vector.scevcheck266 ], [ %i.fs, %.lr.ph.i81.preheader ], [ %vector.recur.extract297, %middle.block296 ]
  %.05861.i.ph = phi i32 [ %i.fp, %vector.memcheck268 ], [ %i.fp, %vector.scevcheck266 ], [ %i.fp, %.lr.ph.i81.preheader ], [ %vector.recur.extract298, %middle.block296 ]
  br label %.lr.ph.i81

.lr.ph.i81:                                       ; preds = %.lr.ph.i81.preheader315, %.lr.ph.i81
  %indvars.iv69.i = phi i64 [ %indvars.iv.next70.i, %.lr.ph.i81 ], [ %indvars.iv69.i.ph, %.lr.ph.i81.preheader315 ] ; 2 uses
  %indvars.iv.i83 = phi i64 [ %indvars.iv.next.i84, %.lr.ph.i81 ], [ %indvars.iv.i83.ph, %.lr.ph.i81.preheader315 ] ; 2 uses
  %.063.i = phi i32 [ %i.gw, %.lr.ph.i81 ], [ %.063.i.ph, %.lr.ph.i81.preheader315 ] ; 2 uses
  %.05861.i = phi i32 [ %i.gs, %.lr.ph.i81 ], [ %.05861.i.ph, %.lr.ph.i81.preheader315 ] ; 2 uses
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1 ; 3 uses
  %i.gk = mul nuw nsw i64 %indvars.iv.next70.i, %2
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.070142, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !3
  %i.gn = trunc nuw nsw i64 %indvars.iv69.i to i32
  %i.go = add i32 %i.ee, %i.gn
  %i.gp = sext i32 %i.go to i64
  %i.gq = mul nsw i64 %2, %i.gp
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.070142, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !3  ; 3 uses
  %i.gt = add i32 %.05861.i, 2
  %i.gu = add i32 %i.gt, %i.gs
  %i.gv = ashr i32 %i.gu, 2
  %i.gw = sub i32 %i.gm, %i.gv                    ; 3 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.i83 ; 2 uses
  store i32 %.063.i, ptr %i.gx, align 4, !tbaa !3
  %i.gy = add i32 %i.gw, %.063.i
  %i.gz = ashr i32 %i.gy, 1
  %i.ha = add i32 %i.gz, %.05861.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !3
  %indvars.iv.next.i84 = add nuw nsw i64 %indvars.iv.i83, 2 ; 2 uses
  %exitcond.not.i85 = icmp eq i64 %indvars.iv.next70.i, %wide.trip.count.i82
  br i1 %exitcond.not.i85, label %._crit_edge.loopexit.i86, label %.lr.ph.i81, !llvm.loop !356

._crit_edge.loopexit.i86:                         ; preds = %.lr.ph.i81, %middle.block296
  %.lcssa196 = phi i32 [ %vector.recur.extract298, %middle.block296 ], [ %i.gs, %.lr.ph.i81 ]
  %.lcssa195 = phi i32 [ %vector.recur.extract297, %middle.block296 ], [ %i.gw, %.lr.ph.i81 ]
  %indvars.iv.next.i84.lcssa = phi i64 [ %i.fl, %middle.block296 ], [ %indvars.iv.next.i84, %.lr.ph.i81 ]
  %i.hc = and i64 %indvars.iv.next.i84.lcssa, 4294967294
  br label %._crit_edge.i78

._crit_edge.i78:                                  ; preds = %._crit_edge.loopexit.i86, %bb.h
  %.058.lcssa.i = phi i32 [ %i.fp, %bb.h ], [ %.lcssa196, %._crit_edge.loopexit.i86 ] ; 2 uses
  %.057.lcssa.i = phi i64 [ 0, %bb.h ], [ %i.hc, %._crit_edge.loopexit.i86 ]
  %.0.lcssa.i79 = phi i32 [ %i.fs, %bb.h ], [ %.lcssa195, %._crit_edge.loopexit.i86 ] ; 3 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.057.lcssa.i
  store i32 %.0.lcssa.i79, ptr %i.hd, align 4, !tbaa !3
  br i1 %.not.i80, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i78
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.070142, i64 %i.em
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !3
  %i.hg = add nsw i32 %.058.lcssa.i, 1
  %i.hh = ashr i32 %i.hg, 1
  %i.hi = sub nsw i32 %i.hf, %i.hh                ; 2 uses
  store i32 %i.hi, ptr %i.eo, align 4, !tbaa !3
  %i.hj = add nsw i32 %i.hi, %.0.lcssa.i79
  %i.hk = ashr i32 %i.hj, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i78
  %.0.lcssa.sink.i = phi i32 [ %i.hk, %bb.i ], [ %.0.lcssa.i79, %._crit_edge.i78 ]
  %.sink82.i = phi i64 [ -8, %bb.i ], [ -4, %._crit_edge.i78 ]
  %i.hl = add nsw i32 %.0.lcssa.sink.i, %.058.lcssa.i
  %i.hm = getelementptr i8, ptr %i.eq, i64 %.sink82.i
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !3
  %.reass364 = add i64 %i.fm, %invariant.op363
  %diff.check252 = icmp ult i64 %.reass364, 31
  %or.cond306 = select i1 %or.cond305.not311, i1 true, i1 %diff.check252
  br i1 %or.cond306, label %scalar.ph253.preheader, label %vector.body258

vector.body258:                                   ; preds = %bb.j, %vector.body258
  %index259 = phi i64 [ %index.next262, %vector.body258 ], [ 0, %bb.j ] ; 3 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %index259 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %wide.load260 = load <4 x i32>, ptr %i.hn, align 4, !tbaa !3
  %wide.load261 = load <4 x i32>, ptr %i.ho, align 4, !tbaa !3
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.070142, i64 %index259 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  store <4 x i32> %wide.load260, ptr %i.hp, align 4, !tbaa !3
  store <4 x i32> %wide.load261, ptr %i.hq, align 4, !tbaa !3
  %index.next262 = add nuw i64 %index259, 8       ; 2 uses
  %i.hr = icmp eq i64 %index.next262, %n.vec257
  br i1 %i.hr, label %middle.block263, label %vector.body258, !llvm.loop !357

middle.block263:                                  ; preds = %vector.body258
  br i1 %cmp.n264, label %opj_idwt3_v_cas0.exit, label %scalar.ph253.preheader

scalar.ph253.preheader:                           ; preds = %bb.j, %middle.block263
  %indvars.iv74.i.ph = phi i64 [ 0, %bb.j ], [ %n.vec257, %middle.block263 ] ; 3 uses
  br i1 %lcmp.mod339.not, label %scalar.ph253.prol.loopexit, label %scalar.ph253.prol

scalar.ph253.prol:                                ; preds = %scalar.ph253.preheader, %scalar.ph253.prol
  %indvars.iv74.i.prol = phi i64 [ %indvars.iv.next75.i.prol, %scalar.ph253.prol ], [ %indvars.iv74.i.ph, %scalar.ph253.preheader ] ; 3 uses
  %prol.iter340 = phi i64 [ %prol.iter340.next, %scalar.ph253.prol ], [ 0, %scalar.ph253.preheader ]
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv74.i.prol
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !3
  %i.hu = mul nuw nsw i64 %indvars.iv74.i.prol, %2
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %.070142, i64 %i.hu
  store i32 %i.ht, ptr %i.hv, align 4, !tbaa !3
  %indvars.iv.next75.i.prol = add nuw nsw i64 %indvars.iv74.i.prol, 1 ; 2 uses
  %prol.iter340.next = add i64 %prol.iter340, 1   ; 2 uses
  %prol.iter340.cmp.not = icmp eq i64 %prol.iter340.next, %xtraiter338
  br i1 %prol.iter340.cmp.not, label %scalar.ph253.prol.loopexit, label %scalar.ph253.prol, !llvm.loop !358

scalar.ph253.prol.loopexit:                       ; preds = %scalar.ph253.prol, %scalar.ph253.preheader
  %indvars.iv74.i.unr = phi i64 [ %indvars.iv74.i.ph, %scalar.ph253.preheader ], [ %indvars.iv.next75.i.prol, %scalar.ph253.prol ]
  %i.hw = sub nsw i64 %indvars.iv74.i.ph, %i.ep
  %i.hx = icmp ugt i64 %i.hw, -4
  br i1 %i.hx, label %opj_idwt3_v_cas0.exit, label %scalar.ph253

scalar.ph253:                                     ; preds = %scalar.ph253.prol.loopexit, %scalar.ph253
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i.3, %scalar.ph253 ], [ %indvars.iv74.i.unr, %scalar.ph253.prol.loopexit ] ; 6 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv74.i
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !3
  %i.ia = mul nuw nsw i64 %indvars.iv74.i, %2
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %.070142, i64 %i.ia
  store i32 %i.hz, ptr %i.ib, align 4, !tbaa !3
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1 ; 2 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.next75.i
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !3
  %i.ie = mul nuw nsw i64 %indvars.iv.next75.i, %2
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %.070142, i64 %i.ie
  store i32 %i.id, ptr %i.if, align 4, !tbaa !3
  %indvars.iv.next75.i.1 = add nuw nsw i64 %indvars.iv74.i, 2 ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.next75.i.1
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !3
  %i.ii = mul nuw nsw i64 %indvars.iv.next75.i.1, %2
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %.070142, i64 %i.ii
  store i32 %i.ih, ptr %i.ij, align 4, !tbaa !3
  %indvars.iv.next75.i.2 = add nuw nsw i64 %indvars.iv74.i, 3 ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.next75.i.2
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !3
  %i.im = mul nuw nsw i64 %indvars.iv.next75.i.2, %2
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %.070142, i64 %i.im
  store i32 %i.il, ptr %i.in, align 4, !tbaa !3
  %indvars.iv.next75.i.3 = add nuw nsw i64 %indvars.iv74.i, 4 ; 2 uses
  %exitcond78.not.i.3 = icmp eq i64 %indvars.iv.next75.i.3, %i.ep
  br i1 %exitcond78.not.i.3, label %opj_idwt3_v_cas0.exit, label %scalar.ph253, !llvm.loop !359

opj_idwt3_v_cas0.exit:                            ; preds = %scalar.ph253.prol.loopexit, %scalar.ph253, %middle.block263
  %i.io = add nuw nsw i32 %.072141, 1             ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.070142, i64 4
  %exitcond165.not = icmp eq i32 %i.io, %3
  %indvar.next251 = add i64 %indvar250, 1
  br i1 %exitcond165.not, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit, label %bb.h, !llvm.loop !360

bb.k:                                             ; preds = %bb.a
  switch i32 %i.f, label %bb.n [
    i32 1, label %.preheader118
    i32 2, label %bb.l
  ]

.preheader118:                                    ; preds = %bb.k
  %i.iq = icmp sgt i32 %3, 0
  br i1 %i.iq, label %.lr.ph137.preheader, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit

.lr.ph137.preheader:                              ; preds = %.preheader118
  %i.ir = zext nneg i32 %3 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %3, 8
  br i1 %min.iters.check, label %.lr.ph137.preheader332, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph137.preheader
  %n.vec = and i64 %i.ir, 2147483640              ; 4 uses
  %i.is = shl nuw nsw i64 %n.vec, 2
  %i.it = getelementptr i8, ptr %1, i64 %i.is
  %i.iu = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iv = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %1, i64 %i.iv ; 3 uses
  %i.iw = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !3
  %wide.load203 = load <4 x i32>, ptr %i.iw, align 4, !tbaa !3
  %i.ix = sdiv <4 x i32> %wide.load, splat (i32 2)
  %i.iy = sdiv <4 x i32> %wide.load203, splat (i32 2)
  store <4 x i32> %i.ix, ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> %i.iy, ptr %i.iw, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.iz = icmp eq i64 %index.next, %n.vec
  br i1 %i.iz, label %middle.block, label %vector.body, !llvm.loop !361

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ir
  br i1 %cmp.n, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit, label %.lr.ph137.preheader332

.lr.ph137.preheader332:                           ; preds = %.lr.ph137.preheader, %middle.block
  %.1136.ph = phi ptr [ %1, %.lr.ph137.preheader ], [ %i.it, %middle.block ]
  %.074135.ph = phi i32 [ 0, %.lr.ph137.preheader ], [ %i.iu, %middle.block ]
  br label %.lr.ph137

.lr.ph137:                                        ; preds = %.lr.ph137.preheader332, %.lr.ph137
  %.1136 = phi ptr [ %i.jd, %.lr.ph137 ], [ %.1136.ph, %.lr.ph137.preheader332 ] ; 3 uses
  %.074135 = phi i32 [ %i.jc, %.lr.ph137 ], [ %.074135.ph, %.lr.ph137.preheader332 ]
  %i.ja = load i32, ptr %.1136, align 4, !tbaa !3
  %i.jb = sdiv i32 %i.ja, 2
  store i32 %i.jb, ptr %.1136, align 4, !tbaa !3
  %i.jc = add nuw nsw i32 %.074135, 1             ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.1136, i64 4
  %exitcond163.not = icmp eq i32 %i.jc, %3
  br i1 %exitcond163.not, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit, label %.lr.ph137, !llvm.loop !362

bb.l:                                             ; preds = %bb.k
  %i.je = load ptr, ptr %0, align 8, !tbaa !108   ; 2 uses
  %i.jf = icmp sgt i32 %3, 0
  br i1 %i.jf, label %.lr.ph, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit

.lr.ph:                                           ; preds = %bb.l
  %i.jg = sext i32 %i.c to i64
  %i.jh = mul nsw i64 %2, %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 4 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.m
  %.2134 = phi ptr [ %1, %.lr.ph ], [ %i.ju, %bb.m ] ; 5 uses
  %.073133 = phi i32 [ 0, %.lr.ph ], [ %i.jt, %bb.m ]
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.2134, i64 %i.jh ; 2 uses
  %i.jk = load i32, ptr %.2134, align 4, !tbaa !3
  %i.jl = load i32, ptr %i.jj, align 4, !tbaa !3
  %i.jm = add nsw i32 %i.jl, 1
  %i.jn = ashr i32 %i.jm, 1
  %i.jo = sub nsw i32 %i.jk, %i.jn                ; 2 uses
  store i32 %i.jo, ptr %i.ji, align 4, !tbaa !3
  %i.jp = load i32, ptr %i.jj, align 4, !tbaa !3
  %i.jq = add nsw i32 %i.jo, %i.jp                ; 2 uses
  store i32 %i.jq, ptr %i.je, align 4, !tbaa !3
  store i32 %i.jq, ptr %.2134, align 4, !tbaa !3
  %i.jr = load i32, ptr %i.ji, align 4, !tbaa !3
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %.2134, i64 %2
  store i32 %i.jr, ptr %i.js, align 4, !tbaa !3
  %i.jt = add nuw nsw i32 %.073133, 1             ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.2134, i64 4
  %exitcond.not = icmp eq i32 %i.jt, %3
  br i1 %exitcond.not, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit, label %bb.m, !llvm.loop !363

bb.n:                                             ; preds = %bb.k
  %i.jv = icmp sgt i32 %i.f, 2                    ; 2 uses
  %i.jw = icmp eq i32 %3, 8
  %or.cond3 = and i1 %i.jw, %i.jv
  br i1 %or.cond3, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.jx = load ptr, ptr %0, align 8, !tbaa !108   ; 11 uses
  %i.jy = sext i32 %i.c to i64
  %i.jz = mul nsw i64 %2, %i.jy
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.jz ; 4 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %2 ; 2 uses
  %i.kc = load <2 x i64>, ptr %i.kb, align 1, !tbaa !62 ; 3 uses
  %i.kd = load <4 x i32>, ptr %1, align 1, !tbaa !62
  %i.ke = load <4 x i32>, ptr %i.ka, align 1, !tbaa !62 ; 2 uses
  %i.kf = bitcast <2 x i64> %i.kc to <4 x i32>
  %i.kg = add <4 x i32> %i.kf, splat (i32 2)
  %i.kh = add <4 x i32> %i.kg, %i.ke
  %i.ki = ashr <4 x i32> %i.kh, splat (i32 2)
  %i.kj = sub <4 x i32> %i.kd, %i.ki              ; 3 uses
  %i.kk = add <4 x i32> %i.kj, %i.ke
  store <4 x i32> %i.kk, ptr %i.jx, align 16, !tbaa !62
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.km = load <2 x i64>, ptr %i.kl, align 1, !tbaa !62 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ko = load <4 x i32>, ptr %i.kn, align 1, !tbaa !62
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.kq = load <4 x i32>, ptr %i.kp, align 1, !tbaa !62 ; 2 uses
  %i.kr = bitcast <2 x i64> %i.km to <4 x i32>
  %i.ks = add <4 x i32> %i.kr, splat (i32 2)
  %i.kt = add <4 x i32> %i.ks, %i.kq
end_hunk_2
begin_hunk_3_@opj_idwt53_v:bb.a
  store <4 x i32> %.0114.in118.i, ptr %i.me, align 16, !tbaa !62
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  store <4 x i32> %.0113.in119.i, ptr %i.mf, align 16, !tbaa !62
  %i.mg = shl i64 %indvars.iv.i98, 35
  %sext.i = add i64 %i.mg, 34359738368
  %i.mh = ashr exact i64 %sext.i, 30
  %i.mi = getelementptr inbounds i8, ptr %i.jx, i64 %i.mh ; 2 uses
  %i.mj = add <4 x i32> %i.lv, %.0114.in118.i
  %i.mk = ashr <4 x i32> %i.mj, splat (i32 1)
  %i.ml = add <4 x i32> %i.mk, %i.lq
  store <4 x i32> %i.ml, ptr %i.mi, align 16, !tbaa !62
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  %i.mn = add <4 x i32> %i.md, %.0113.in119.i
  %i.mo = ashr <4 x i32> %i.mn, splat (i32 1)
  %i.mp = add <4 x i32> %i.mo, %i.ly
  store <4 x i32> %i.mp, ptr %i.mm, align 16, !tbaa !62
  %indvars.iv.next.i100 = add nuw nsw i64 %indvars.iv.i98, 2 ; 2 uses
  %exitcond.not.i101 = icmp eq i64 %i.lh, %wide.trip.count.i96
  br i1 %exitcond.not.i101, label %._crit_edge.loopexit.i102, label %.lr.ph.i97, !llvm.loop !364

._crit_edge.loopexit.i102:                        ; preds = %.lr.ph.i97
  %i.mq = shl i64 %indvars.iv.next.i100, 3
  %i.mr = and i64 %i.mq, 4294967288
  br label %._crit_edge.i87

._crit_edge.i87:                                  ; preds = %._crit_edge.loopexit.i102, %bb.o
  %.0115.lcssa.i = phi <2 x i64> [ %i.km, %bb.o ], [ %i.lm, %._crit_edge.loopexit.i102 ] ; 2 uses
  %.0114.in.lcssa.i = phi <4 x i32> [ %i.kj, %bb.o ], [ %i.lv, %._crit_edge.loopexit.i102 ] ; 3 uses
  %.0113.in.lcssa.i = phi <4 x i32> [ %i.kv, %bb.o ], [ %i.md, %._crit_edge.loopexit.i102 ] ; 3 uses
  %.0112.lcssa.i = phi <2 x i64> [ %i.kc, %bb.o ], [ %i.lk, %._crit_edge.loopexit.i102 ] ; 2 uses
  %.0.lcssa.i88 = phi i64 [ 8, %bb.o ], [ %i.mr, %._crit_edge.loopexit.i102 ]
  %.not.i89 = icmp eq i32 %i.kz, 0
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %.0.lcssa.i88 ; 2 uses
  store <4 x i32> %.0114.in.lcssa.i, ptr %i.ms, align 16, !tbaa !62
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  store <4 x i32> %.0113.in.lcssa.i, ptr %i.mt, align 16, !tbaa !62
  br i1 %.not.i89, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge.i87
  %i.mu = lshr exact i32 %i.f, 1
  %i.mv = add nsw i32 %i.mu, -1
  %i.mw = zext nneg i32 %i.mv to i64
  %i.mx = mul nuw nsw i64 %2, %i.mw
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.mx ; 2 uses
  %i.mz = load <4 x i32>, ptr %i.my, align 1, !tbaa !62
  %i.na = bitcast <2 x i64> %.0112.lcssa.i to <4 x i32> ; 2 uses
  %i.nb = shl <4 x i32> %i.na, splat (i32 1)
  %i.nc = add <4 x i32> %i.nb, splat (i32 2)
  %i.nd = ashr <4 x i32> %i.nc, splat (i32 2)
  %i.ne = sub <4 x i32> %i.mz, %i.nd              ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  %i.ng = load <4 x i32>, ptr %i.nf, align 1, !tbaa !62
  %i.nh = bitcast <2 x i64> %.0115.lcssa.i to <4 x i32> ; 2 uses
  %i.ni = shl <4 x i32> %i.nh, splat (i32 1)
  %i.nj = add <4 x i32> %i.ni, splat (i32 2)
  %i.nk = ashr <4 x i32> %i.nj, splat (i32 2)
  %i.nl = sub <4 x i32> %i.ng, %i.nk              ; 2 uses
  %i.nm = shl nsw i32 %i.ky, 3
  %i.nn = zext nneg i32 %i.nm to i64
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.nn ; 2 uses
  %i.np = add <4 x i32> %i.ne, %.0114.in.lcssa.i
  %i.nq = ashr <4 x i32> %i.np, splat (i32 1)
  %i.nr = add <4 x i32> %i.nq, %i.na
  store <4 x i32> %i.nr, ptr %i.no, align 16, !tbaa !62
  %i.ns = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.nt = add <4 x i32> %i.nl, %.0113.in.lcssa.i
  %i.nu = ashr <4 x i32> %i.nt, splat (i32 1)
  %i.nv = add <4 x i32> %i.nu, %i.nh
  store <4 x i32> %i.nv, ptr %i.ns, align 16, !tbaa !62
  %i.nw = shl i32 %i.f, 3
  %i.nx = add i32 %i.nw, -8
  %i.ny = zext nneg i32 %i.nx to i64
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.ny ; 2 uses
  store <4 x i32> %i.ne, ptr %i.nz, align 16, !tbaa !62
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  store <4 x i32> %i.nl, ptr %i.oa, align 16, !tbaa !62
  br label %.new

bb.q:                                             ; preds = %._crit_edge.i87
  %i.ob = shl i32 %i.f, 3
  %i.oc = sext i32 %i.ob to i64
  %i.od = getelementptr [4 x i8], ptr %i.jx, i64 %i.oc ; 2 uses
  %i.oe = getelementptr i8, ptr %i.od, i64 -32
  %i.of = bitcast <2 x i64> %.0112.lcssa.i to <4 x i32>
  %i.og = add <4 x i32> %.0114.in.lcssa.i, %i.of
  store <4 x i32> %i.og, ptr %i.oe, align 16, !tbaa !62
  %i.oh = getelementptr i8, ptr %i.od, i64 -16
  %i.oi = bitcast <2 x i64> %.0115.lcssa.i to <4 x i32>
  %i.oj = add <4 x i32> %.0113.in.lcssa.i, %i.oi
  store <4 x i32> %i.oj, ptr %i.oh, align 16, !tbaa !62
  br label %.new

.new:                                             ; preds = %bb.q, %bb.p
  %wide.trip.count.i.i90 = zext nneg i32 %i.f to i64 ; 2 uses
  %xtraiter335 = and i64 %wide.trip.count.i.i90, 1
  %unroll_iter = and i64 %wide.trip.count.i.i90, 2147483646
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.new
  %indvars.iv.i.i91 = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i93.1, %bb.r ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.r ]
  %i.ok = mul nuw nsw i64 %indvars.iv.i.i91, %2
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ok ; 2 uses
  %.idx.i.i92 = shl nsw i64 %indvars.iv.i.i91, 5
  %i.om = getelementptr inbounds nuw i8, ptr %i.jx, i64 %.idx.i.i92 ; 2 uses
  %i.on = load <2 x i64>, ptr %i.om, align 16, !tbaa !62
  store <2 x i64> %i.on, ptr %i.ol, align 1, !tbaa !62
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  %i.op = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %i.oq = load <2 x i64>, ptr %i.op, align 16, !tbaa !62
  store <2 x i64> %i.oq, ptr %i.oo, align 1, !tbaa !62
  %indvars.iv.next.i.i93 = or disjoint i64 %indvars.iv.i.i91, 1 ; 2 uses
  %i.or = mul nuw nsw i64 %indvars.iv.next.i.i93, %2
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.or ; 2 uses
  %.idx.i.i92.1 = shl nsw i64 %indvars.iv.next.i.i93, 5
  %i.ot = getelementptr inbounds nuw i8, ptr %i.jx, i64 %.idx.i.i92.1 ; 2 uses
  %i.ou = load <2 x i64>, ptr %i.ot, align 16, !tbaa !62
  store <2 x i64> %i.ou, ptr %i.os, align 1, !tbaa !62
  %i.ov = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.ox = load <2 x i64>, ptr %i.ow, align 16, !tbaa !62
  store <2 x i64> %i.ox, ptr %i.ov, align 1, !tbaa !62
  %indvars.iv.next.i.i93.1 = add nuw nsw i64 %indvars.iv.i.i91, 2 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit.loopexit321.unr-lcssa, label %bb.r, !llvm.loop !346

bb.s:                                             ; preds = %bb.n
  %i.oy = icmp sgt i32 %3, 0
  %or.cond145 = and i1 %i.jv, %i.oy
  br i1 %or.cond145, label %.lr.ph140, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit

.lr.ph140:                                        ; preds = %bb.s
  %i.oz = load ptr, ptr %0, align 8, !tbaa !108   ; 15 uses
  %i.pa = ptrtoaddr ptr %i.oz to i64
  %i.pb = sext i32 %i.c to i64                    ; 2 uses
  %i.pc = mul nsw i64 %2, %i.pb
  %i.pd = add nsw i32 %i.f, -2                    ; 2 uses
  %i.pe = and i32 %i.f, 1                         ; 2 uses
  %i.pf = xor i32 %i.pe, 1                        ; 2 uses
  %i.pg = sub nuw nsw i32 %i.pd, %i.pf
  %i.ph = icmp samesign ugt i32 %i.pg, 1
  %i.pi = add nsw i32 %i.f, -4
  %i.pj = sub i32 %i.pi, %i.pf                    ; 4 uses
  %i.pk = lshr i32 %i.pj, 1
  %i.pl = add nuw i32 %i.pk, 2
  %wide.trip.count.i107 = zext i32 %i.pl to i64
  %.not.i105 = icmp eq i32 %i.pe, 0
  %i.pm = lshr exact i32 %i.f, 1
  %i.pn = add nsw i32 %i.pm, -1
  %i.po = zext nneg i32 %i.pn to i64
  %i.pp = mul nuw nsw i64 %2, %i.po
  %i.pq = zext nneg i32 %i.pd to i64
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %i.pq
  %i.ps = zext nneg i32 %i.f to i64               ; 6 uses
  %i.pt = getelementptr [4 x i8], ptr %i.oz, i64 %i.ps
  %i.pu = getelementptr i8, ptr %i.pt, i64 -4
  %i.pv = sub i64 %i.a, %i.pa
  %scevgep = getelementptr i8, ptr %i.oz, i64 4   ; 2 uses
  %i.pw = lshr i32 %i.pj, 1
  %i.px = zext nneg i32 %i.pw to i64              ; 2 uses
  %i.py = shl nuw nsw i64 %i.px, 3
  %i.pz = getelementptr i8, ptr %i.oz, i64 %i.py
  %scevgep221 = getelementptr i8, ptr %i.pz, i64 12 ; 2 uses
  %scevgep222 = getelementptr i8, ptr %1, i64 4
  %i.qa = shl nuw nsw i64 %i.px, 2                ; 2 uses
  %i.qb = add nsw i32 %3, -1
  %i.qc = zext i32 %i.qb to i64
  %i.qd = shl nuw nsw i64 %i.qc, 2                ; 2 uses
  %i.qe = getelementptr i8, ptr %1, i64 %i.qa
  %i.qf = getelementptr i8, ptr %i.qe, i64 %i.qd
  %scevgep223 = getelementptr i8, ptr %i.qf, i64 8
  %i.qg = shl nsw i64 %i.pb, 2                    ; 2 uses
  %i.qh = getelementptr i8, ptr %1, i64 %i.qg
  %scevgep224 = getelementptr i8, ptr %i.qh, i64 8
  %i.qi = getelementptr i8, ptr %1, i64 %i.qa
  %i.qj = getelementptr i8, ptr %i.qi, i64 %i.qg
  %i.qk = getelementptr i8, ptr %i.qj, i64 %i.qd
  %scevgep225 = getelementptr i8, ptr %i.qk, i64 12
  %i.ql = lshr i32 %i.pj, 1
  %narrow = add nuw i32 %i.ql, 1
  %i.qm = zext i32 %narrow to i64                 ; 3 uses
  %min.iters.check230 = icmp ugt i32 %i.pj, 5
  %ident.check219.not = icmp eq i64 %2, 1
  %or.cond307 = and i1 %min.iters.check230, %ident.check219.not
  %bound0 = icmp ult ptr %scevgep, %scevgep223
  %bound1 = icmp ult ptr %scevgep222, %scevgep221
  %found.conflict = and i1 %bound0, %bound1
  %bound0226 = icmp ult ptr %scevgep, %scevgep225
  %bound1227 = icmp ult ptr %scevgep224, %scevgep221
  %found.conflict228 = and i1 %bound0226, %bound1227
  %conflict.rdx = or i1 %found.conflict, %found.conflict228
  %n.vec233 = and i64 %i.qm, 4294967294           ; 3 uses
  %i.qn = or i64 %i.qm, 1
  %i.qo = shl nuw nsw i64 %n.vec233, 1
  %i.qp = or disjoint i64 %i.qo, 1                ; 2 uses
  %cmp.n243 = icmp eq i64 %n.vec233, %i.qm
  %min.iters.check206 = icmp ult i32 %i.f, 8
  %ident.check.not = icmp ne i64 %2, 1
  %or.cond308.not310 = or i1 %min.iters.check206, %ident.check.not
  %invariant.op = add i64 %i.pv, -1
  %n.vec209 = and i64 %i.ps, 2147483640           ; 3 uses
  %cmp.n216 = icmp eq i64 %n.vec209, %i.ps
  %xtraiter = and i64 %i.ps, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph140, %opj_idwt3_v_cas1.exit
  %indvar = phi i64 [ 0, %.lr.ph140 ], [ %indvar.next, %opj_idwt3_v_cas1.exit ] ; 2 uses
  %.0139 = phi i32 [ 0, %.lr.ph140 ], [ %i.ts, %opj_idwt3_v_cas1.exit ]
  %.3138 = phi ptr [ %1, %.lr.ph140 ], [ %i.tt, %opj_idwt3_v_cas1.exit ] ; 12 uses
  %i.qq = shl nuw nsw i64 %indvar, 2
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %.3138, i64 %i.pc ; 4 uses
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %2
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !3  ; 5 uses
  %i.qu = load i32, ptr %.3138, align 4, !tbaa !3
  %i.qv = load i32, ptr %i.qr, align 4, !tbaa !3  ; 2 uses
  %i.qw = add i32 %i.qt, 2
  %i.qx = add i32 %i.qw, %i.qv
  %i.qy = ashr i32 %i.qx, 2
  %i.qz = sub nsw i32 %i.qu, %i.qy                ; 5 uses
  %i.ra = add nsw i32 %i.qz, %i.qv
  store i32 %i.ra, ptr %i.oz, align 4, !tbaa !3
  br i1 %i.ph, label %.lr.ph.i108.preheader, label %._crit_edge.i103

.lr.ph.i108.preheader:                            ; preds = %bb.t
  br i1 %or.cond307, label %vector.memcheck220, label %.lr.ph.i108.preheader326

vector.memcheck220:                               ; preds = %.lr.ph.i108.preheader
  br i1 %conflict.rdx, label %.lr.ph.i108.preheader326, label %vector.ph231

vector.ph231:                                     ; preds = %vector.memcheck220
  %vector.recur.init = insertelement <2 x i32> poison, i32 %i.qz, i64 1
  %vector.recur.init236 = insertelement <2 x i32> poison, i32 %i.qt, i64 1
  br label %vector.body234

vector.body234:                                   ; preds = %vector.body234, %vector.ph231
  %index235 = phi i64 [ 0, %vector.ph231 ], [ %index.next240, %vector.body234 ] ; 4 uses
  %vector.recur = phi <2 x i32> [ %vector.recur.init, %vector.ph231 ], [ %i.rj, %vector.body234 ]
  %vector.recur237 = phi <2 x i32> [ %vector.recur.init236, %vector.ph231 ], [ %wide.load238, %vector.body234 ]
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %index235
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %wide.load238 = load <2 x i32>, ptr %i.rc, align 4, !tbaa !3, !alias.scope !365 ; 4 uses
  %i.rd = shufflevector <2 x i32> %vector.recur237, <2 x i32> %wide.load238, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %.3138, i64 %index235
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 4
  %wide.load239 = load <2 x i32>, ptr %i.rf, align 4, !tbaa !3, !alias.scope !368
  %i.rg = add <2 x i32> %i.rd, splat (i32 2)
  %i.rh = add <2 x i32> %i.rg, %wide.load238
  %i.ri = ashr <2 x i32> %i.rh, splat (i32 2)
  %i.rj = sub nsw <2 x i32> %wide.load239, %i.ri  ; 4 uses
  %i.rk = shufflevector <2 x i32> %vector.recur, <2 x i32> %i.rj, <2 x i32> <i32 1, i32 2> ; 2 uses
  %.idx = shl i64 %index235, 3
  %i.rl = getelementptr inbounds nuw i8, ptr %i.oz, i64 %.idx
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 4
  %i.rn = add nsw <2 x i32> %i.rj, %i.rk
  %i.ro = ashr <2 x i32> %i.rn, splat (i32 1)
  %i.rp = add nsw <2 x i32> %i.ro, %i.rd
  %interleaved.vec = shufflevector <2 x i32> %i.rk, <2 x i32> %i.rp, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.rm, align 4, !tbaa !3, !alias.scope !370, !noalias !372
  %index.next240 = add nuw i64 %index235, 2       ; 2 uses
  %i.rq = icmp eq i64 %index.next240, %n.vec233
  br i1 %i.rq, label %middle.block241, label %vector.body234, !llvm.loop !373

middle.block241:                                  ; preds = %vector.body234
  %vector.recur.extract = extractelement <2 x i32> %i.rj, i64 1 ; 2 uses
  %vector.recur.extract242 = extractelement <2 x i32> %wide.load238, i64 1 ; 2 uses
  br i1 %cmp.n243, label %._crit_edge.loopexit.i112, label %.lr.ph.i108.preheader326

.lr.ph.i108.preheader326:                         ; preds = %vector.memcheck220, %.lr.ph.i108.preheader, %middle.block241
  %indvars.iv77.i.ph = phi i64 [ 1, %vector.memcheck220 ], [ 1, %.lr.ph.i108.preheader ], [ %i.qn, %middle.block241 ]
  %indvars.iv.i109.ph = phi i64 [ 1, %vector.memcheck220 ], [ 1, %.lr.ph.i108.preheader ], [ %i.qp, %middle.block241 ]
  %.06367.i.ph = phi i32 [ %i.qz, %vector.memcheck220 ], [ %i.qz, %.lr.ph.i108.preheader ], [ %vector.recur.extract, %middle.block241 ]
  %.06466.i.ph = phi i32 [ %i.qt, %vector.memcheck220 ], [ %i.qt, %.lr.ph.i108.preheader ], [ %vector.recur.extract242, %middle.block241 ]
  br label %.lr.ph.i108

.lr.ph.i108:                                      ; preds = %.lr.ph.i108.preheader326, %.lr.ph.i108
  %indvars.iv77.i = phi i64 [ %indvars.iv.next78.i, %.lr.ph.i108 ], [ %indvars.iv77.i.ph, %.lr.ph.i108.preheader326 ] ; 2 uses
  %indvars.iv.i109 = phi i64 [ %indvars.iv.next.i110, %.lr.ph.i108 ], [ %indvars.iv.i109.ph, %.lr.ph.i108.preheader326 ] ; 2 uses
  %.06367.i = phi i32 [ %i.sa, %.lr.ph.i108 ], [ %.06367.i.ph, %.lr.ph.i108.preheader326 ] ; 2 uses
  %.06466.i = phi i32 [ %i.rt, %.lr.ph.i108 ], [ %.06466.i.ph, %.lr.ph.i108.preheader326 ] ; 2 uses
  %indvars.iv.next78.i = add nuw nsw i64 %indvars.iv77.i, 1 ; 3 uses
  %i.rr = mul nuw nsw i64 %indvars.iv.next78.i, %2
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %i.rr
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !3  ; 3 uses
  %i.ru = mul nuw nsw i64 %indvars.iv77.i, %2
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %.3138, i64 %i.ru
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !3
  %i.rx = add i32 %.06466.i, 2
  %i.ry = add i32 %i.rx, %i.rt
  %i.rz = ashr i32 %i.ry, 2
  %i.sa = sub nsw i32 %i.rw, %i.rz                ; 3 uses
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %indvars.iv.i109 ; 2 uses
  store i32 %.06367.i, ptr %i.sb, align 4, !tbaa !3
  %i.sc = add nsw i32 %i.sa, %.06367.i
  %i.sd = ashr i32 %i.sc, 1
  %i.se = add nsw i32 %i.sd, %.06466.i
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sb, i64 4
  store i32 %i.se, ptr %i.sf, align 4, !tbaa !3
  %indvars.iv.next.i110 = add nuw nsw i64 %indvars.iv.i109, 2 ; 2 uses
  %exitcond.not.i111 = icmp eq i64 %indvars.iv.next78.i, %wide.trip.count.i107
  br i1 %exitcond.not.i111, label %._crit_edge.loopexit.i112, label %.lr.ph.i108, !llvm.loop !374

._crit_edge.loopexit.i112:                        ; preds = %.lr.ph.i108, %middle.block241
  %.lcssa202 = phi i32 [ %vector.recur.extract242, %middle.block241 ], [ %i.rt, %.lr.ph.i108 ]
  %.lcssa201 = phi i32 [ %vector.recur.extract, %middle.block241 ], [ %i.sa, %.lr.ph.i108 ]
  %indvars.iv.next.i110.lcssa = phi i64 [ %i.qp, %middle.block241 ], [ %indvars.iv.next.i110, %.lr.ph.i108 ]
  %i.sg = and i64 %indvars.iv.next.i110.lcssa, 4294967295
  br label %._crit_edge.i103

._crit_edge.i103:                                 ; preds = %._crit_edge.loopexit.i112, %bb.t
  %.064.lcssa.i = phi i32 [ %i.qt, %bb.t ], [ %.lcssa202, %._crit_edge.loopexit.i112 ] ; 3 uses
  %.063.lcssa.i = phi i32 [ %i.qz, %bb.t ], [ %.lcssa201, %._crit_edge.loopexit.i112 ] ; 3 uses
  %.0.lcssa.i104 = phi i64 [ 1, %bb.t ], [ %i.sg, %._crit_edge.loopexit.i112 ]
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %.0.lcssa.i104
  store i32 %.063.lcssa.i, ptr %i.sh, align 4, !tbaa !3
  br i1 %.not.i105, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge.i103
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %.3138, i64 %i.pp
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !3
  %i.sk = add nsw i32 %.064.lcssa.i, 1
  %i.sl = ashr i32 %i.sk, 1
  %i.sm = sub nsw i32 %i.sj, %i.sl                ; 2 uses
  %i.sn = add nsw i32 %i.sm, %.063.lcssa.i
  %i.so = ashr i32 %i.sn, 1
  %i.sp = add nsw i32 %i.so, %.064.lcssa.i
  store i32 %i.sp, ptr %i.pr, align 4, !tbaa !3
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i103
  %i.sq = add nsw i32 %.063.lcssa.i, %.064.lcssa.i
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sink.i = phi i32 [ %i.sq, %bb.v ], [ %i.sm, %bb.u ]
  store i32 %.sink.i, ptr %i.pu, align 4, !tbaa !3
  %.reass = add i64 %i.qq, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  %or.cond309 = select i1 %or.cond308.not310, i1 true, i1 %diff.check
  br i1 %or.cond309, label %scalar.ph205.preheader, label %vector.body210

vector.body210:                                   ; preds = %bb.w, %vector.body210
  %index211 = phi i64 [ %index.next214, %vector.body210 ], [ 0, %bb.w ] ; 3 uses
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %index211 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 16
  %wide.load212 = load <4 x i32>, ptr %i.sr, align 4, !tbaa !3
  %wide.load213 = load <4 x i32>, ptr %i.ss, align 4, !tbaa !3
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %.3138, i64 %index211 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 16
  store <4 x i32> %wide.load212, ptr %i.st, align 4, !tbaa !3
  store <4 x i32> %wide.load213, ptr %i.su, align 4, !tbaa !3
  %index.next214 = add nuw i64 %index211, 8       ; 2 uses
  %i.sv = icmp eq i64 %index.next214, %n.vec209
  br i1 %i.sv, label %middle.block215, label %vector.body210, !llvm.loop !375

middle.block215:                                  ; preds = %vector.body210
  br i1 %cmp.n216, label %opj_idwt3_v_cas1.exit, label %scalar.ph205.preheader

scalar.ph205.preheader:                           ; preds = %bb.w, %middle.block215
  %indvars.iv82.i.ph = phi i64 [ 0, %bb.w ], [ %n.vec209, %middle.block215 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph205.prol.loopexit, label %scalar.ph205.prol

scalar.ph205.prol:                                ; preds = %scalar.ph205.preheader, %scalar.ph205.prol
  %indvars.iv82.i.prol = phi i64 [ %indvars.iv.next83.i.prol, %scalar.ph205.prol ], [ %indvars.iv82.i.ph, %scalar.ph205.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph205.prol ], [ 0, %scalar.ph205.preheader ]
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %indvars.iv82.i.prol
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !3
  %i.sy = mul nuw nsw i64 %indvars.iv82.i.prol, %2
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %.3138, i64 %i.sy
  store i32 %i.sx, ptr %i.sz, align 4, !tbaa !3
  %indvars.iv.next83.i.prol = add nuw nsw i64 %indvars.iv82.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph205.prol.loopexit, label %scalar.ph205.prol, !llvm.loop !376

scalar.ph205.prol.loopexit:                       ; preds = %scalar.ph205.prol, %scalar.ph205.preheader
  %indvars.iv82.i.unr = phi i64 [ %indvars.iv82.i.ph, %scalar.ph205.preheader ], [ %indvars.iv.next83.i.prol, %scalar.ph205.prol ]
  %i.ta = sub nsw i64 %indvars.iv82.i.ph, %i.ps
  %i.tb = icmp ugt i64 %i.ta, -4
  br i1 %i.tb, label %opj_idwt3_v_cas1.exit, label %scalar.ph205

scalar.ph205:                                     ; preds = %scalar.ph205.prol.loopexit, %scalar.ph205
  %indvars.iv82.i = phi i64 [ %indvars.iv.next83.i.3, %scalar.ph205 ], [ %indvars.iv82.i.unr, %scalar.ph205.prol.loopexit ] ; 6 uses
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %indvars.iv82.i
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !3
  %i.te = mul nuw nsw i64 %indvars.iv82.i, %2
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %.3138, i64 %i.te
  store i32 %i.td, ptr %i.tf, align 4, !tbaa !3
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, 1 ; 2 uses
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %indvars.iv.next83.i
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !3
  %i.ti = mul nuw nsw i64 %indvars.iv.next83.i, %2
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %.3138, i64 %i.ti
  store i32 %i.th, ptr %i.tj, align 4, !tbaa !3
  %indvars.iv.next83.i.1 = add nuw nsw i64 %indvars.iv82.i, 2 ; 2 uses
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %indvars.iv.next83.i.1
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !3
  %i.tm = mul nuw nsw i64 %indvars.iv.next83.i.1, %2
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %.3138, i64 %i.tm
  store i32 %i.tl, ptr %i.tn, align 4, !tbaa !3
  %indvars.iv.next83.i.2 = add nuw nsw i64 %indvars.iv82.i, 3 ; 2 uses
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %indvars.iv.next83.i.2
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !3
  %i.tq = mul nuw nsw i64 %indvars.iv.next83.i.2, %2
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %.3138, i64 %i.tq
  store i32 %i.tp, ptr %i.tr, align 4, !tbaa !3
  %indvars.iv.next83.i.3 = add nuw nsw i64 %indvars.iv82.i, 4 ; 2 uses
  %exitcond86.not.i.3 = icmp eq i64 %indvars.iv.next83.i.3, %i.ps
  br i1 %exitcond86.not.i.3, label %opj_idwt3_v_cas1.exit, label %scalar.ph205, !llvm.loop !377

opj_idwt3_v_cas1.exit:                            ; preds = %scalar.ph205.prol.loopexit, %scalar.ph205, %middle.block215
  %i.ts = add nuw nsw i32 %.0139, 1               ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.3138, i64 4
  %exitcond164.not = icmp eq i32 %i.ts, %3
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond164.not, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit, label %bb.t, !llvm.loop !378

opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod344.not = icmp eq i64 %xtraiter343, 0
  br i1 %lcmp.mod344.not, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit, label %.epil.preheader342

.epil.preheader342:                               ; preds = %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit.loopexit.unr-lcssa
  %lcmp.mod345 = trunc i32 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod345)
  %i.tu = mul nuw nsw i64 %indvars.iv.next.i.i.1, %2
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.tu ; 2 uses
  %.idx.i.i.epil = shl nsw i64 %indvars.iv.next.i.i.1, 5
  %i.tw = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.epil ; 2 uses
  %i.tx = load <2 x i64>, ptr %i.tw, align 16, !tbaa !62
  store <2 x i64> %i.tx, ptr %i.tv, align 1, !tbaa !62
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tw, i64 16
  %i.ua = load <2 x i64>, ptr %i.tz, align 16, !tbaa !62
  store <2 x i64> %i.ua, ptr %i.ty, align 1, !tbaa !62
  br label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit

opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit.loopexit321.unr-lcssa: ; preds = %bb.r
  %lcmp.mod336.not = icmp eq i64 %xtraiter335, 0
  br i1 %lcmp.mod336.not, label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit.loopexit321.unr-lcssa
  %lcmp.mod337 = trunc i32 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod337)
  %i.ub = mul nuw nsw i64 %indvars.iv.next.i.i93.1, %2
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ub ; 2 uses
  %.idx.i.i92.epil = shl nsw i64 %indvars.iv.next.i.i93.1, 5
  %i.ud = getelementptr inbounds nuw i8, ptr %i.jx, i64 %.idx.i.i92.epil ; 2 uses
  %i.ue = load <2 x i64>, ptr %i.ud, align 16, !tbaa !62
  store <2 x i64> %i.ue, ptr %i.uc, align 1, !tbaa !62
  %i.uf = getelementptr inbounds nuw i8, ptr %i.uc, i64 16
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ud, i64 16
  %i.uh = load <2 x i64>, ptr %i.ug, align 16, !tbaa !62
  store <2 x i64> %i.uh, ptr %i.uf, align 1, !tbaa !62
  br label %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit

opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit:        ; preds = %bb.m, %.lr.ph137, %opj_idwt3_v_cas1.exit, %.epil.preheader, %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit.loopexit321.unr-lcssa, %opj_idwt3_v_cas0.exit, %.epil.preheader342, %opj_idwt53_v_cas0_mcols_SSE2_OR_AVX2.exit.loopexit.unr-lcssa, %middle.block, %bb.l, %.preheader118, %bb.g, %bb.s
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_dwt_decode_v_func(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !119  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.d = add i32 %i.b, 8                          ; 2 uses
  %i.e = load i32, ptr %i.c, align 4, !tbaa !120  ; 2 uses
  %.not20 = icmp ugt i32 %i.d, %i.e
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.h = phi i32 [ %i.d, %.lr.ph ], [ %i.n, %bb.b ] ; 3 uses
  %.021 = phi i32 [ %i.b, %.lr.ph ], [ %i.h, %bb.b ]
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !118
  %i.j = zext i32 %.021 to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j
  %i.l = load i32, ptr %i.g, align 4, !tbaa !117
  %i.m = zext i32 %i.l to i64
  tail call fastcc void @opj_idwt53_v(ptr noundef nonnull %0, ptr noundef %i.k, i64 noundef %i.m, i32 noundef 8)
  %i.n = add i32 %i.h, 8                          ; 2 uses
  %i.o = load i32, ptr %i.c, align 4, !tbaa !120  ; 2 uses
  %.not = icmp ugt i32 %i.n, %i.o
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !379

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.h, %bb.b ] ; 3 uses
  %.lcssa = phi i32 [ %i.e, %bb.a ], [ %i.o, %bb.b ] ; 2 uses
  %i.p = icmp ult i32 %.0.lcssa, %.lcssa
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !118
  %i.s = zext i32 %.0.lcssa to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.v = load i32, ptr %i.u, align 4, !tbaa !117
  %i.w = zext i32 %i.v to i64
  %i.x = sub nuw i32 %.lcssa, %.0.lcssa
  tail call fastcc void @opj_idwt53_v(ptr noundef nonnull %0, ptr noundef %i.t, i64 noundef %i.w, i32 noundef %i.x)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.y = load ptr, ptr %0, align 8, !tbaa !121
  tail call void @opj_aligned_free(ptr noundef %i.y) #15
  tail call void @opj_free(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @opj_dwt_init_sparse_array(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [192 x i8], ptr %i.b, i64 %i.d ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !24
  %i.h = load i32, ptr %i.e, align 8, !tbaa !29
  %i.i = sub nsw i32 %i.g, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !31
  %i.n = sub nsw i32 %i.k, %i.m                   ; 2 uses
  %i.o = tail call noundef i32 @llvm.umin.i32(i32 %i.i, i32 64)
  %i.p = tail call noundef i32 @llvm.umin.i32(i32 %i.n, i32 64)
  %i.q = tail call ptr @opj_sparse_array_int32_create(i32 noundef %i.i, i32 noundef %i.n, i32 noundef %i.o, i32 noundef %i.p) #15 ; 5 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
end_hunk_3
